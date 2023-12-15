;; This file implements the Maki IR,
;; its interpreter and symbolic evaluator (via Rosette),
;; as well as functions for generating holes in the IR,
;; and translating to PyRTL and SystemVerilog output.

#lang rosette

(provide ?? (all-defined-out))

(require racket/struct)
(require rosette/lib/match)

(define (new-sym w)
    (define-symbolic* id (bitvector w))
    id)

;; A Maki IR netlist consists of declared inputs, outputs, registers,
;; and a sequence of instructions.
(struct netlist (inputs outputs registers instructions)
  #:transparent
  #:methods gen:custom-write
  [(define write-proc
     (make-constructor-style-printer
      (lambda (obj) 'netlist)
      (lambda (obj) (list (netlist-inputs obj)
                          (netlist-outputs obj)
                          (netlist-registers obj)
                          (netlist-instructions obj)))))])

;; Constructs for wire expression components in the IR grammar.
(struct w& (w0 w1) #:transparent)
(struct w|| (w0 w1) #:transparent)
(struct w^ (w0 w1) #:transparent)
(struct wn (w0 w1) #:transparent)
(struct w~ (w0) #:transparent)
(struct w+ (w0 w1) #:transparent)
(struct w- (w0 w1) #:transparent)
(struct w* (w0 w1) #:transparent)
(struct w= (w0 w1) #:transparent)
(struct w< (w0 w1) #:transparent)
(struct w> (w0 w1) #:transparent)
(struct wx (sel w0 w1) #:transparent)
(struct wc (wires) #:transparent)
(struct ws (w0 sel) #:transparent)
(struct wm (id addr) #:transparent)         ; read address addr of mem-block (w/ id)
(struct w@ (addr data we) #:transparent)    ; write data to mem-block at address addr; req. write enable (we)
(struct mem-block-create (bitwidth addrwidth) #:transparent)
(struct rom-block-create (bitwidth addrwidth data) #:transparent)

(struct mem-block (bitwidth addrwidth data)
  #:transparent
  #:methods gen:custom-write
  [(define write-proc
     (make-constructor-style-printer
      (lambda (obj) 'mem-block)
      (lambda (obj) (list (mem-block-bitwidth obj)
                          (mem-block-addrwidth obj)
                          (mem-block-data obj)))))])

(struct bv-const (val width) #:transparent)
(struct <a= (exp) #:transparent)
(struct <w= (w) #:transparent)
(struct <<= (w) #:transparent)
(struct <*= (w) #:transparent)
;; Constructs for expressing higher-level functionality in Maki
;; (for-range loops, and arrays).
(struct for-range (index range body) #:transparent)
(struct wif (c t f) #:transparent)
(struct array-create (n) #:transparent)
(struct array-store (i v) #:transparent)
(struct array-ref (a i) #:transparent)
(struct & (n) #:transparent)
(struct a+ (a b) #:transparent)
(struct a- (a b) #:transparent)
(struct a* (a b) #:transparent)
(struct a/ (a b) #:transparent)
(struct a% (a b) #:transparent)
(struct a** (a b) #:transparent)
(struct arange (l h) #:transparent)
(struct aif (c t f) #:transparent)
(struct ?a () #:transparent)

(define (srange l h r)
  (drop-right (drop (range r) l) (- r h)))

;; Evaluate arithmetic expressions.
(define (aeval exp env)
  (match exp
    [(& a)              (aeval (vector-ref env (aeval a env)) env)]
    [(? integer?)       exp]
    [(a+ a b)           (+ (aeval a env) (aeval b env))]
    [(a- a b)           (- (aeval a env) (aeval b env))]
    [(a* a b)           (* (aeval a env) (aeval b env))]
    [(a/ a b)           (quotient (aeval a env) (aeval b env))]
    [(a% a b)           (modulo (aeval a env) (aeval b env))]
    [(a** a b)          (expt (aeval a env) (aeval b env))]
    [(arange a b)       (srange (aeval a env) (aeval b env) (aeval b env))]
    [(aif c t f)        (if (= (aeval c env) 0) (aeval f env) (aeval t env))]
))

(define-syntax-rule (def-netlist name wins wouts wregs (out op) ...)
  (define name
    (netlist wins wouts wregs `((,out ,op) ...))))

(define-syntax-rule (loop-body (out op) ...)
  `((,out ,op) ...))

;; Go through instructions and gather all output variable names.
;; The max number + 1 is what we allocate in the interpreter.
(define (allocate-env net)
  (define (get-outs inst)
    (if (empty? inst)
      (list)
      (match (car inst)
        [(list out op)
         (let ([o (if (exact-nonnegative-integer? out) out 0)])
            (match op
              [(for-range i r b) (let ([body-outs (get-outs b)])
                                    (cons o (cons i (append body-outs (get-outs (cdr inst))))))]
              [_ (cons o (get-outs (cdr inst)))]))
        ])))
  (apply max (append (get-outs (netlist-instructions net))
                     (hash-keys (netlist-inputs net))
                     (hash-keys (netlist-outputs net))
                     (hash-keys (netlist-registers net)))))

;; Interpets a Maki program with optional set of input signals.
(define (interpret! net inputs)
  (define env (make-vector (add1 (allocate-env net)) #f))
  (define (store i v) (vector-set! env i v))
  (define (load i) (vector-ref env i))

  ; initialize environment with inputs
  (for ([(i v) inputs])
      (store i v))

  ;; Implements the big-step operational semantics as specified in the paper
  ;; (Figure 4).
  (define (net-eval inst)
    (match inst
      [(? integer?)      (load inst)]
      [(array-ref a i)   (vector-ref (load a) (aeval i env))]
      [(wif c t f)       (if (= (aeval c env) 0) (net-eval f) (net-eval t))]
      [(bv-const v w)    (bv (aeval v env) (aeval w env))]
      [(ws a sel)        (let extractor ([indices sel])
                           (match indices
                             [(arange _ _) (extractor (aeval indices env))]
                             [(aif _ _ _)  (extractor (aeval indices env))]
                             [_
                              (let ([i (aeval (car indices) env)])
                                (if (= (length indices) 1)
                                    (bit i (net-eval a))
                                    (concat (bit i (net-eval a))
                                            (extractor (cdr indices)))))]))]
      [(list out op)
        (store out
          (match op
            [(<a= e)      (aeval e env)]
            [(<w= w)      (net-eval w)]
            [(<<= (array-store i v)) (begin (vector-set! (load out) (aeval i env) (net-eval v)) (load out))]
            [(<<= w)      (net-eval w)]
            [(<*= w)      (load (net-eval w))]
            [(w& a b)     (bvand (net-eval a) (net-eval b))]
            [(w|| a b)    (bvor (net-eval a) (net-eval b))]
            [(w^ a b)     (bvxor (net-eval a) (net-eval b))]
            [(wn a b)     (bvnot (bvand (net-eval a) (net-eval b)))]
            [(w~ a)       (bvnot (net-eval a))]
            [(w+ a b)     (let* ([a_ (net-eval a)]
                                 [b_ (net-eval b)]
                                 [max-width (max (length (bitvector->bits a_))
                                                 (length (bitvector->bits b_)))]
                                 [ext-a (zero-extend a_ (bitvector max-width))]
                                 [ext-b (zero-extend b_ (bitvector max-width))])
                            (bvadd ext-a ext-b))]
            [(w- a b)     (bvsub (net-eval a) (net-eval b))]
            [(w* a b)     (bvmul (net-eval a) (net-eval b))]
            [(w= a b)     (bool->bitvector (bveq (net-eval a) (net-eval b)))]
            [(w< a b)     (bool->bitvector (bvslt (net-eval a) (net-eval b)))]
            [(w> a b)     (bool->bitvector (bvsgt (net-eval a) (net-eval b)))]
            [(wc wires)   ; recurse through wires and concat them
                          (let concatter ([wl wires])
                          (if (= (length wl) 1)
                              (net-eval (car wl))
                              (concat (net-eval (car wl)) (concatter (cdr wl)))))]
            [(ws a sel)   ; recurse through indices in sel and concat their extracts together
                          (let extractor ([indices sel])
                            (match indices [(arange _ _) (extractor (aeval indices env))]
                                           [(aif _ _ _)    (extractor (aeval indices env))]
                            [_
                            (let ([i (aeval (car indices) env)])
                            (if (= (length indices) 1)
                              (bit i (net-eval a))
                              (concat (bit i (net-eval a))
                                      (extractor (cdr indices)))))]))]
            [(wx sel a b)      (if (bvzero? (net-eval sel)) (net-eval a) (net-eval b))]
            [(bv-const v w)    (bv (aeval v env) w)]
            [(array-create n)  (make-vector n)]
            [(array-store i v) (begin (vector-set! (load out) (aeval i env) (net-eval v)) (load out))]
            [(mem-block-create bw aw)  (mem-block bw aw (make-vector (expt 2 aw) (bv 0 bw)))]
            [(rom-block-create bw aw data)  (mem-block bw aw (list->vector data))]
            [(wm id addr)      (begin (assert (= (length (bitvector->bits (net-eval addr)))
                                                 (mem-block-addrwidth (net-eval id))))
                                      (vector-ref (mem-block-data (net-eval id)) (bitvector->natural (net-eval addr))))]
            [(w@ addr data we) (if (bveq (bv 1 1) (net-eval we))
                                      (begin
                                        (vector-set! (mem-block-data (net-eval out))
                                                     (bitvector->natural (net-eval addr))
                                                     (net-eval data))
                                        (net-eval out))
                                      (net-eval out))]
            [(for-range i r b) (begin (store i 0)
                                      (let looper ([idx (load i)])
                                        (if (= idx r)
                                            (load i)
                                            (begin (for ([inst b]) (net-eval inst))
                                                   (store i (add1 idx))
                                                   (looper (load i))))))]
      ))]
    ))

  ; run it!
  (for ([inst (netlist-instructions net)])
    (net-eval inst))

  ; return final environment values of outputs and registers
  (map load (sort (append (hash-keys (netlist-registers net))
                    (hash-keys (netlist-outputs net))) <))
)

;; Symbolically evaluate a Maki program with inputs initialized as symbolic values.
(define (sym-run net)
  (define x (make-hash))
  (for ([(i w) (netlist-inputs net)]) (hash-set! x i (new-sym w)))
  (for ([(i w) (netlist-registers net)]) (hash-set! x i (new-sym w)))
  (interpret! net x))

;; Run program synthesis over a Maki program with reference spec
;; and sketch implementation (impl).
(define (syn! impl spec)
  (define sym-inputs (make-hash))
  (for ([(i w) (netlist-inputs impl)]) (hash-set! sym-inputs i (new-sym w)))
  (for ([(i w) (netlist-registers impl)]) (hash-set! sym-inputs i (new-sym w)))
  (define sol
    (synthesize
     #:forall (hash-values sym-inputs)
     #:guarantee (assert (equal? (interpret! impl sym-inputs) (interpret! spec sym-inputs)))))
  (if (sat? sol) (begin
		   (evaluate impl sol)) #f))

;; Program synthesis optimization: assumes spec is already symbolically evaluated.
(define (syn-with-ref! impl spec)
  (define sym-inputs (make-hash))
  (for ([(i w) (netlist-inputs impl)]) (hash-set! sym-inputs i (new-sym w)))
  (for ([(i w) (netlist-registers impl)]) (hash-set! sym-inputs i (new-sym w)))
  (define sol
    (synthesize
     #:forall (hash-values sym-inputs)
     #:guarantee (assert (equal? (interpret! impl sym-inputs) spec))))
  (if (sat? sol) (begin
		   (evaluate impl sol)) #f))

(require rosette/lib/angelic rosette/lib/synthax)

;; Hole expressions for Maki sketches
(define (??wexp terminals)
  (define a (apply choose* terminals))
  (define b (apply choose* terminals))
  (choose* (w& a b)
           (w|| a b)
           (w^ a b)
           ))

(define (??const vals widths)
  (define a (apply choose* vals))
  (define b (apply choose* widths))
  (bv-const a b))

(define (??w)
  (define-symbolic* w integer?)
  (assert (>= w 0))
  w)

(define (??init defs vals widths)
  (define w (if (empty? defs) (??w)
                (apply choose* defs)))
  (if (and (not (empty? vals)) (not (empty? widths)))
      (choose* w
               (??const vals widths))
      w))

(define (??aexp terminals)
  (define a (apply choose* terminals))
  (define-symbolic* b integer?)
  (assert (>= b 0))
  (define-symbolic* c integer?)
  (assert (> c 1))
  (choose* (& a)
           b
           ;(& b)
           (a+ (& a) b)
           (a- (& a) b)
           (a- b (& a))
           (a* (& a) c)
           (a/ (& a) c)
           (a% (& a) c)
           (array-ref a b)
           ))

(define (??aref terminals index)
  (define a (apply choose* terminals))
  (define-symbolic* b integer?)
  (assert (>= b 0))
  (choose* b
           (array-ref a index)
           (array-ref a b)
           ))

(define (??slice0 terminals)
  (define a (apply choose* terminals))
  (& a))

(define (??slice1 terminals)
  (define a (apply choose* terminals))
  (define-symbolic* b integer?)
  (assert (> b 0))
  (choose*
           (a+ (& a) b)
           (a- b (& a))
           (a* (& a) b)
           (a/ (& a) b)))

(define (??slice2 terminals)
  (define a (apply choose* terminals))
  (define-symbolic* b integer?)
  (assert (> b 0))
  (define-symbolic* c integer?)
  (assert (> c 1))
  (define-symbolic* d integer?)
  (assert (> d 0))
  (choose*
           (a% (a+ (& a) b) c)
           (a% (a- b (& a)) c)
           (a+ (a* (& a) c) b)
           (a- b (a* (& a) c))
           ))

(define (??slice3 terminals)
  (define a (apply choose* terminals))
  (define-symbolic* b integer?)
  (assert (> b 0))
  (choose*
           (aif (a+ (& a) b) (??aexp terminals) (??aexp terminals))
           (aif (a- b (& a)) (??aexp terminals) (??aexp terminals))
           (aif (a* (& a) b) (??aexp terminals) (??aexp terminals))
           (aif (a/ (& a) b) (??aexp terminals) (??aexp terminals))
           ))

(define (??slice terminals)
  (define a (apply choose* terminals))
  (define-symbolic* b integer?)
  (assert (> b 0))
  (define-symbolic* c integer?)
  (assert (> c 1))
  (choose* 0
           b
           (& a)
           (a+ (& a) b)
           (a- b (& a))
           (a* (& a) b)
           (a% (a+ (& a) b) c)
           (a% (a- b (& a)) c)
           ))

(define (??aexp2 terminals)
  (define a (apply choose* terminals))
  (define-symbolic* b integer?)
  (assert (> b 0))
  (choose* (& a)
           (??slice1 terminals)
           (a+ (??aexp terminals) b)
           ))

(require racket/string)

;; Output Maki program to PyRTL
(define (ir->pyrtl net)
  (define pyrtl-prog "import pyrtl\n")

  (define (declare-wire id width type)
    (format "tmp~a = pyrtl.~a(bitwidth=~a, name='t~a')~n" id type width id))

  (for ([(i w) (netlist-inputs net)])
    (set! pyrtl-prog (string-append pyrtl-prog (declare-wire i w "Input"))))
  (for ([(i w) (netlist-outputs net)])
    (set! pyrtl-prog (string-append pyrtl-prog (declare-wire i w "Output"))))
  (for ([(i w) (netlist-registers net)])
    (set! pyrtl-prog (string-append pyrtl-prog (declare-wire i w "Register"))))

  (define (aexp->pyrtl e)
    (match e
      [(a+ a b)          (format "(~a + ~a)" (aexp->pyrtl a) (aexp->pyrtl b))]
      [(a- a b)          (format "(~a - ~a)" (aexp->pyrtl a) (aexp->pyrtl b))]
      [(a* a b)          (format "(~a * ~a)" (aexp->pyrtl a) (aexp->pyrtl b))]
      [(a/ a b)          (format "(~a / ~a)" (aexp->pyrtl a) (aexp->pyrtl b))]
      [(a% a b)          (format "(~a % ~a)" (aexp->pyrtl a) (aexp->pyrtl b))]
      [(a** a b)         (format "(~a**~a)" (aexp->pyrtl a) (aexp->pyrtl b))]
      [(arange a b)      (format "~a : ~a" (aexp->pyrtl a) (aexp->pyrtl b))]
      [(aif c t f)       (format "~a if ~a else ~a" (aexp->pyrtl t) (aexp->pyrtl c) (aexp->pyrtl f))]
      [(& a)             (format "tmp~a" (aexp->pyrtl a))]
      [(? integer?)      (format "~a" e)]
      ))

  (define (inst->pyrtl inst tab)
    (match inst
      [(list out op)
          (match op
            [(<a= e)      (format "~atmp~a = ~a" tab out (aexp->pyrtl e))]
            [(<w= w)      (format "~atmp~a = ~a" tab out (inst->pyrtl w tab))]
            [(<*= w)      (format "~atmp~a = eval('tmp' + str(~a))" tab out (inst->pyrtl w tab))]
            [(<<= (array-store i v))
                          (if (and (not (empty? (netlist-registers net)))
                                   (equal? out (car (list-ref (netlist-instructions net) 0))))
                          (format "~atmp~a[~a].next <<= ~a" tab out (aexp->pyrtl i) (inst->pyrtl v tab))
                          (format "~atmp~a[~a] <<= ~a" tab out (aexp->pyrtl i) (inst->pyrtl v tab)))]
            [(<<= w)      (if (not (member out (hash-keys (netlist-registers net))))
                              (format "~atmp~a <<= ~a" tab out (inst->pyrtl w tab))
                              (format "~atmp~a.next <<= ~a" tab out (inst->pyrtl w tab)))]
            [(w& a b)     (format "~atmp~a = ~a & ~a" tab out (inst->pyrtl a tab) (inst->pyrtl b tab))]
            [(w|| a b)    (format "~atmp~a = ~a | ~a" tab out (inst->pyrtl a tab) (inst->pyrtl b tab))]
            [(w^ a b)     (format "~atmp~a = ~a ^ ~a" tab out (inst->pyrtl a tab) (inst->pyrtl b tab))]
            [(wn a b)     (format "~atmp~a = ~a.nand(~a)" tab out (inst->pyrtl a tab) (inst->pyrtl b tab))]
            [(w~ a)       (format "~atmp~a = ~~~~~a" tab out (inst->pyrtl a tab))]
            [(w+ a b)     (format "~atmp~a = ~a + ~a" tab out (inst->pyrtl a tab) (inst->pyrtl b tab))]
            [(w- a b)     (format "~atmp~a = ~a - ~a" tab out (inst->pyrtl a tab) (inst->pyrtl b tab))]
            [(w* a b)     (format "~atmp~a = ~a * ~a" tab out (inst->pyrtl a tab) (inst->pyrtl b tab))]
            [(w= a b)     (format "~atmp~a = ~a == ~a" tab out (inst->pyrtl a tab) (inst->pyrtl b tab))]
            [(w< a b)     (format "~atmp~a = ~a < ~a" tab out (inst->pyrtl a tab) (inst->pyrtl b tab))]
            [(w> a b)     (format "~atmp~a = ~a > ~a" tab out (inst->pyrtl a tab) (inst->pyrtl b tab))]
            [(wc wires)   (format "~atmp~a = pyrtl.concat(~a)" tab out
                          (let concatter ([wl wires])
                          (if (= (length wl) 1)
                              (format "~a" (inst->pyrtl (car wl) tab))
                              (format "~a, ~a" (inst->pyrtl (car wl) tab) (concatter (cdr wl))))))]
            [(ws a sel)   (format "~atmp~a = ~a" tab out
                          (match sel [(arange _ _)  (format "~a[~a]" (inst->pyrtl a tab) (aexp->pyrtl sel))]
                                     [(aif _ _ _)     (format "~a[~a]" (inst->pyrtl a tab) (aexp->pyrtl sel))]
                            [_
                            (let extractor ([indices sel])
                            (let ([i (aexp->pyrtl (car indices))])
                            (cond
                              [(= (length indices) 1) (format "~a[~a]" (inst->pyrtl a tab) i)]
                              [(equal? (make-list (length indices) (car indices)) indices)
                               (format "pyrtl.concat_list([~a[0]]*~a)"
                                       (inst->pyrtl a tab)
                                       (length indices))]
                              [else (format "~a[~a : ~a + 1]" (inst->pyrtl a tab) i
                                      (aexp->pyrtl (last indices))
                                      )])))]))]
            [(wx sel a b)      (format "~atmp~a = pyrtl.corecircuits.mux(~a, ~a, ~a)"
                                       tab out
                                       (inst->pyrtl sel tab)
                                       (inst->pyrtl a tab)
                                       (inst->pyrtl b tab))]
            [(bv-const v w)    (format "~atmp~a = pyrtl.Const(~a, bitwidth=~a)" tab out (aexp->pyrtl v) (aexp->pyrtl w))]
            [(array-create n)  (format "~atmp~a = [None]*~a" tab out n)]
            [(array-store i v) (format "~atmp~a[~a] = ~a" tab out (aexp->pyrtl i) (inst->pyrtl v tab))]
            [(mem-block-create bw aw)  (format "~atmp~a = pyrtl.MemBlock(bitwidth=~a, addrwidth=~a)" tab out bw aw)]
            [(rom-block-create bw aw data)  (format "~atmp~a = pyrtl.RomBlock(bitwidth=~a, addrwidth=~a, romdata=[~a])"
                                                    tab out bw aw (string-join data ","))]
            [(wm id addr)
                               (format "~atmp~a = ~a[~a]" tab out (inst->pyrtl id tab) (inst->pyrtl addr tab))]
            [(w@ addr data we) (format "~atmp~a[~a] = pyrtl.MemBlock.EnabledWrite(tmp~a, tmp~a)"
                                       tab out
                                       (inst->pyrtl addr tab)
                                       (inst->pyrtl data tab)
                                       (inst->pyrtl we tab))]
            [(for-range i r b) (begin (define body "")
                                      (for ([bi b])
                                           (begin
                                           (set! body (string-append body "~n" (inst->pyrtl bi (string-append "    " tab))))))
                                      (format "~afor tmp~a in range(~a):~a" tab i r body))]
      )]
      [(? integer?)       (format "tmp~a" inst)]
      [(array-ref a i)    (format "tmp~a[~a]" a (aexp->pyrtl i))]
      [(wif c t f)        (format "~a if ~a else ~a" (inst->pyrtl t tab) (aexp->pyrtl c) (inst->pyrtl f tab))]
      [(bv-const v w)    (format "pyrtl.Const(~a, bitwidth=~a)" (aexp->pyrtl v) (aexp->pyrtl w))]
      [(ws a sel)   (format "~a"
                          (match sel [(arange _ _)  (format "~a[~a]" (inst->pyrtl a tab) (aexp->pyrtl sel))]
                                     [(aif _ _ _)     (format "~a[~a]" (inst->pyrtl a tab) (aexp->pyrtl sel))]
                            [_
                            (let extractor ([indices sel])
                            (let ([i (aexp->pyrtl (car indices))])
                            (cond
                              [(= (length indices) 1) (format "~a[~a]" (inst->pyrtl a tab) i)]
                              [(equal? (make-list (length indices) (car indices)) indices)
                               (format "pyrtl.concat_list([~a[0]]*~a)"
                                       (inst->pyrtl a tab)
                                       (length indices))]
                              [else (format "~a[~a : ~a]" (inst->pyrtl a tab) i
                                      (aexp->pyrtl (add1 (last indices))))])))]))]
      [_ ""]
  ))

  (for ([inst (netlist-instructions net)])
    (set! pyrtl-prog (string-append pyrtl-prog (inst->pyrtl inst "") "~n")))

  pyrtl-prog)

;; Output Maki program to SystemVerilog.
(define (ir->sv net internal-signals)
  (define sv-prog "module top(\n")

  (define reg-array (car (list-ref (netlist-instructions net) 0)))
  (define regs? (not (hash-empty? (netlist-registers net))))

  (define (declare-wire id width type)
    (format "~a ~a tmp~a"
	    type
	    (if (= width 1) (format "") (format "[~a:0]" (sub1 width)))
	    id))

  (set! sv-prog (string-append sv-prog (string-join
   (filter (lambda (x) (not (equal? x ""))) (append
    (if regs? (list (format "       input clk")) (list))
    (for/list ([(i w) (netlist-inputs net)])
      (declare-wire i w "       input"))
    (for/list ([(i w) (netlist-outputs net)])
      (declare-wire i w "       output"))
    (for/list ([(i w) (netlist-registers net)])
      (declare-wire i w "       reg"))
    (for/list ([inst (netlist-instructions net)])
      (match inst [(list out op)
       (match op
        [(mem-block-create bw aw)  (format "       reg ~a mem~a ~a"
					   (format "[~a:0]" (sub1 bw))
					   out
					   (format "[~a:0]" (sub1 (expt 2 aw))))]
	[_ (format "")])]
       [_ (format "")]))))
   ",\n")))
  (set! sv-prog (string-append sv-prog (format ");~n")))

  (define (aexp->sv e)
    (match e
      [(a+ a b)          (format "(~a + ~a)" (aexp->sv a) (aexp->sv b))]
      [(a- a b)          (format "(~a - ~a)" (aexp->sv a) (aexp->sv b))]
      [(a* a b)          (format "(~a * ~a)" (aexp->sv a) (aexp->sv b))]
      [(a/ a b)          (format "(~a / ~a)" (aexp->sv a) (aexp->sv b))]
      [(a% a b)          (format "(~a % ~a)" (aexp->sv a) (aexp->sv b))]
      [(a** a b)         (format "(~a**~a)" (aexp->sv a) (aexp->sv b))]
      [(arange a b)      (format "~a:~a" (sub1 (aexp->sv b)) (aexp->sv a))]
      [(aif c t f)       (format "~a ? ~a : ~a" (aexp->sv c) (aexp->sv t) (aexp->sv f))]
      [(& a)             (format "tmp~a" (aexp->sv a))]
      [(? integer?)      e]
      ))

  (define (inst->sv inst tab)
    (match inst
      [(list out op)
          (match op
            [(<a= e)      (format "~a int tmp~a = ~a;" tab out (aexp->sv e))]
            [(<w= w)      (format "~a tmp~a = ~a;" tab out (inst->sv w tab))]
            [(<*= w)      (format "")]
            [(<<= (array-store i v))
                          (if (and regs?
                                   (= out reg-array))
                          (format "~a always_ff @(posedge clk) begin~n ~a  tmp~a <= ~a;~n ~aend" tab tab (- reg-array i) (inst->sv v tab) tab)
                          (format "~a assign tmp~a[~a] = ~a;" tab out (aexp->sv i) (inst->sv v tab)))]
            [(<<= w)      (if (not (member out (hash-keys (netlist-registers net))))
                              (format "~a assign tmp~a = ~a;" tab out (inst->sv w tab))
                              (format "~a always_ff @(posedge clk) begin~n ~a  tmp~a <= ~a;~n ~aend" tab tab out (inst->sv w tab) tab))]
            [(w& a b)     (format "~a tmp~a = ~a & ~a;" tab out (inst->sv a tab) (inst->sv b tab))]
            [(w|| a b)    (format "~a tmp~a = ~a | ~a;" tab out (inst->sv a tab) (inst->sv b tab))]
            [(w^ a b)     (format "~a tmp~a = ~a ^ ~a;" tab out (inst->sv a tab) (inst->sv b tab))]
            [(wn a b)     (format "~a tmp~a = ~~~~(~a & ~a);" tab out (inst->sv a tab) (inst->sv b tab))]
            [(w~ a)       (format "~a tmp~a = ~~~~~a;" tab out (inst->sv a tab))]
            [(w+ a b)     (format "~a tmp~a = ~a + ~a;" tab out (inst->sv a tab) (inst->sv b tab))]
            [(w- a b)     (format "~a tmp~a = ~a - ~a;" tab out (inst->sv a tab) (inst->sv b tab))]
            [(w* a b)     (format "~a tmp~a = ~a * ~a;" tab out (inst->sv a tab) (inst->sv b tab))]
            [(w= a b)     (format "~a tmp~a = ~a == ~a;" tab out (inst->sv a tab) (inst->sv b tab))]
            [(w< a b)     (format "~a tmp~a = ~a < ~a;" tab out (inst->sv a tab) (inst->sv b tab))]
            [(w> a b)     (format "~a tmp~a = ~a > ~a;" tab out (inst->sv a tab) (inst->sv b tab))]
            [(wc wires)   (format "~a tmp~a = {~a};" tab out
                          (let concatter ([wl wires])
                          (if (= (length wl) 1)
                              (format "~a" (inst->sv (car wl) tab))
                              (format "~a, ~a" (inst->sv (car wl) tab) (concatter (cdr wl))))))]
            [(ws a sel)   (format "~a tmp~a = ~a;" tab out
                          (match sel [(arange _ _)  (format "~a[~a]" (inst->sv a tab) (aexp->sv sel))]
                                     [(aif _ _ _)     (format "~a[~a]" (inst->sv a tab) (aexp->sv sel))]
                            [_
                            (let extractor ([indices sel])
                            (let ([i (aexp->sv (car indices))])
                            (cond
                              [(= (length indices) 1) (format "~a[~a]" (inst->sv a tab) i)]
                              [(equal? (make-list (length indices) (car indices)) indices)
                               (format "sv.concat_list([~a[0]]*~a)"
                                       (inst->sv a tab)
                                       (length indices))]
                              [else (format "~a[~a : ~a + 1]" (inst->sv a tab) i
                                      (aexp->sv (last indices))
                                      )])))]))]
            [(wx sel a b)      (format "~a tmp~a = ~a ? ~a : ~a;"
                                       tab out
                                       (inst->sv sel tab)
                                       (inst->sv a tab)
                                       (inst->sv b tab))]
            [(bv-const v w)    (format "~a parameter tmp~a = ~a'd~a;" tab out (aexp->sv w) (aexp->sv v))]
            [(array-create n)  (format "")]
            [(array-store i v) (format "~a tmp~a[~a] = ~a;" tab out (aexp->sv i) (inst->sv v tab))]
            [(mem-block-create bw aw)  (format "")]
            [(rom-block-create bw aw data)  (format "")]
            [(wm id addr)
                               (format "~a assign tmp~a = mem~a[~a];" tab out id (inst->sv addr tab))]
            [(w@ addr data we) (format "~a always_ff @(posedge clk) begin~n~a  if (tmp~a)~n~a    mem~a[~a] <= ~a;~n ~aend"
                                       tab tab (inst->sv we tab) tab out
                                       (inst->sv addr tab)
                                       (inst->sv data tab)
                                       tab)]
            [(for-range i r b) (begin (define body "")
                                      (for ([bi b])
                                           (begin
                                           (set! body (string-append body "~n" (inst->sv bi (string-append "  " tab))))))
                                      (format "~a for (int tmp~a=0; tmp~a < ~a; tmp~a++) begin~a~a~n ~aend" tab i i r i body tab tab))]
      )]
      [(? integer?)       (format "tmp~a" inst)]
      [(array-ref a i)    (cond
			    [(and regs? (= a reg-array)) (format "tmp~a" (- reg-array i))]
			    [else (format "tmp~a[~a]" a (aexp->sv i))])]
      [(bv-const v w)    (format "~a'd~a" (aexp->sv w) (aexp->sv v))]
      [(ws a sel)   (format "~a"
                          (match sel [(arange _ _)  (format "~a[~a]" (inst->sv a tab) (aexp->sv sel))]
                                     [(aif _ _ _)     (format "~a[~a]" (inst->sv a tab) (aexp->sv sel))]
                            [_
                            (let extractor ([indices sel])
                            (let ([i (aexp->sv (car indices))])
                            (cond
                              [(= (length indices) 1) (format "~a[~a]" (inst->sv a tab) i)]
                              [(equal? (make-list (length indices) (car indices)) indices)
                               (format "sv.concat_list([~a[0]]*~a)"
                                       (inst->sv a tab)
                                       (length indices))]
                              [else (format "~a[~a : ~a]" (inst->sv a tab) i
                                      (aexp->sv (add1 (last indices))))])))]))]
      [_ ""]
  ))

  (define insts
		(netlist-instructions net))

  (define (build-logic-declares insts internal-signals)
    (define (compute-width id)
      (filter positive? (flatten (for/list ([inst insts])
       (let def-walk ([i inst])
        (match i
	 [(list out op)
	  (cond
	    [(= out id) =>
	    (match op
              [(array-store _ v) (cond [(hash-has-key? internal-signals v)
			               => (hash-ref internal-signals v)]
		                       [else => 0])]
	      [(bv-const _ w) w]
	      [(<w= w) (cond [(hash-has-key? internal-signals w)
		             => (hash-ref internal-signals w)]
		             [else => 0])]
	      [_ (cond [(hash-has-key? internal-signals id)
			=> (hash-ref internal-signals id)]
		       [else => 0])])]
            [else =>
	      (match op
	        [(for-range _ _ body) (for/list ([bi body]) (def-walk bi))]
		[_ 0])])]))))))

    (define decls (make-hash))
    (for ([inst insts])
      (let def-walk ([i inst])
      (match i
      [(list out op)
        (match op
	  [(for-range _ _ body) (for ([bi body]) (def-walk bi))]
	  [(w@ _ _ _) (set! decls decls)]
	  [(<<= _) (set! decls decls)]
	  [(array-create n) (let ([width (compute-width out)])
			      (cond [(empty? width) => (set! decls decls)]
				    [else =>
			             (hash-set! decls out (* n (first width)))]))]
	  [(array-store _ _) (set! decls decls)]
	  [(<w= (bv-const _ w)) (cond [(hash-has-key? decls out) =>
			         (set! decls decls)]
			        [else => (hash-set! decls out w)])]
	  [_ (cond [(hash-has-key? internal-signals out) =>
		    (let ([w (hash-ref internal-signals out)])
		      (cond [(hash-has-key? decls out) =>
			     (set! decls decls)]
			    [else => (hash-set! decls out w)]))]
		   [else =>
		    (let ([w (first (compute-width out))])
		      (cond [(hash-has-key? decls out) =>
			     (set! decls decls)]
			    [else => (hash-set! decls out w)]))])])])))
    decls)

  (set! sv-prog (string-append sv-prog (string-join
    (for/list ([(i w) (build-logic-declares insts internal-signals)])
      (declare-wire i w " logic"))
    ";\n") ";\n"))

  ; split between `wm`, `w@`, `<<=`, and all others
  (define wm-insts (list))
  (define w@-insts (list))
  (define seq-insts (list))
  (define comb-insts (list))
  (for ([inst insts])
    (match inst
      [(list out op)
        (match op
	  [(wm _ _) (set! wm-insts (append wm-insts (list inst)))]
	  [(w@ _ _ _) (set! w@-insts (append w@-insts (list inst)))]
	  [(<<= _) (set! seq-insts (append seq-insts (list inst)))]
	  [_ (set! comb-insts (append comb-insts (list inst)))])]))
  (for ([i wm-insts])
    (set! sv-prog (string-append sv-prog (inst->sv i "") "~n")))
  (set! sv-prog (string-append sv-prog " always_comb begin~n"))
  (for ([i comb-insts])
    (set! sv-prog (string-append sv-prog (inst->sv i "  ") "~n")))
  (set! sv-prog (string-append sv-prog " end~n"))
  (for ([i w@-insts])
    (set! sv-prog (string-append sv-prog (inst->sv i "") "~n")))
  (for ([i seq-insts])
    (set! sv-prog (string-append sv-prog (inst->sv i "") "~n")))
  (string-append sv-prog "endmodule\n"))
