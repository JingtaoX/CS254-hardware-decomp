;; Sketch generation for hardware loop rerolling.
;; Given a netlist in Maki IR and set of loop candidates,
;; this code implements the sketch generation technique outlined in Section 4.

#lang rosette
(provide loops sketch-reroll sketch-reroll-sv)
(require "netlist_ir.rkt")
(require rosette/lib/angelic)
(require rosette/lib/synthax)

(require rosette/solver/smt/z3)
(current-solver (z3 #:options (hash
  ':parallel.enable 'true
  ':parallel.threads.max 32)))

;; If CVC4 is installed, can also use as an alternate solver.
;; (require rosette/solver/smt/cvc4)
;; (current-solver (cvc4))

;; If program synthesis takes too long or returns unsat,
;; bitwidth sensitivity may need to be adjusted.
(current-bitwidth 13)

(define-syntax-rule (loops (s l r) ...)
  `((,s ,l ,r) ...))

(define (insert-at lst pos x)
  (define-values (before after) (split-at lst pos))
  (append before (cons x after)))

;; Compute program slice of Maki block given a particular statement (stmt).
(define (getSlices stmt)
  (match stmt
    [(ws a sel) (list (getSlices a)
                      (for/list ([s (match sel
                                      [(arange l h) (list l h)]
                                      [(aif c t f) (list c t f)]
                                      [_ sel])])
                        (match s [(? integer?) s]
                          [_ (getSlices s)])))]
    [(wc wires) (for/list ([s wires]) (getSlices s))]
    [(bv-const v w) (list v w)]
    [(array-ref a i) (list (getSlices a) i)]
    [(array-store i v) (list i (getSlices v))]
    [(<<= w)        (list (getSlices w))]
    [(w^ a b)       (list (getSlices a) (getSlices b))]
    [(w& a b)       (list (getSlices a) (getSlices b))]
    [(w|| a b)      (list (getSlices a) (getSlices b))]
    [(w^ a b)       (list (getSlices a) (getSlices b))]
    [(wn a b)       (list (getSlices a) (getSlices b))]
    [(w~ a)         (list (getSlices a))]
    [(w+ a b)       (list (getSlices a) (getSlices b))]
    [(w- a b)       (list (getSlices a) (getSlices b))]
    [(w* a b)       (list (getSlices a) (getSlices b))]
    [(w= a b)       (list (getSlices a) (getSlices b))]
    [(w< a b)       (list (getSlices a) (getSlices b))]
    [(w> a b)       (list (getSlices a) (getSlices b))]
    [(wx sel a b)   (list (getSlices sel) (getSlices a) (getSlices b))]
    [(wm id addr)   (list (getSlices id) (getSlices addr))]
    [_ (list)]))

;; Insert holes for wire slice indexing arithmetic in a given program slice.
(define (sliceHole slice)
  (define (evalExp exp)
    (define (checkWire w)
      (if (integer? w) w (evalExp w)))
    (match exp
      [(? integer?)        (?a)]
      [(bv-const v w)      (bv-const (evalExp v) (evalExp w))]
      [(array-ref a i)     (array-ref (checkWire a) (evalExp i))]
      [(array-store i v)   (array-store (evalExp i) (checkWire v))]
      [(ws w (arange l h)) (ws (checkWire w) (arange (?a) (?a)))]
      [(ws w sel)          (ws (checkWire w) (for/list ([s sel]) (evalExp s)))]
      [(<w= w)             (<w= (checkWire w))]
      [(<<= w)             (<<= (checkWire w))]
      [(w& a b)            (w& (checkWire a) (checkWire b))]
      [(w|| a b)           (w|| (checkWire a) (checkWire b))]
      [(w^ a b)            (w^ (checkWire a) (checkWire b))]
      [(wn a b)            (wn (checkWire a) (checkWire b))]
      [(w~ a)              (w~ (checkWire a))]
      [(w+ a b)            (w+ (checkWire a) (checkWire b))]
      [(w- a b)            (w- (checkWire a) (checkWire b))]
      [(w* a b)            (w* (checkWire a) (checkWire b))]
      [(w= a b)            (w= (checkWire a) (checkWire b))]
      [(w< a b)            (w< (checkWire a) (checkWire b))]
      [(w> a b)            (w> (checkWire a) (checkWire b))]
      [(wc wires)          (wc (for/list ([w wires]) (checkWire w)))]
      [(wx sel a b)        (wx (checkWire sel) (checkWire a) (checkWire b))]
      [(wm id addr)        (wm (checkWire id) (checkWire addr))]
      [(w@ addr data we)   (w@ (checkWire addr) (checkWire data) (checkWire we))]
      [_ exp]
      ))
  (evalExp slice))

;; Generate sketches for and attempt to solve wire slice indexing arithmetic.
(define (reroll! slice unrolled loopvar reps)
  ;; list of progressively complex holes to try iterative sketching
  (define holes (list (??w)
                      (apply ??slice0 (list (list loopvar)))
                      (apply ??slice1 (list (list loopvar)))
                      (apply ??slice2 (list (list loopvar)))
                      (apply ??slice3 (list (list loopvar)))))
  (define hole 0)
  (define (evalExp exp)
    (define (evalHole w)
      (match w
        [(?a) (let rerollSolve ([soln #f] [sketch holes])
                (cond [(and (not soln) (empty? sketch)) (let ([default (list-ref (car unrolled) hole)])
                                                          (begin (set! hole (add1 hole))
                                                                 (?a)))]
                      [(not soln) (begin
                                   (rerollSolve
                                    (slice-synth! (car sketch)
                                                  (map (lambda (x) (cond
                                                                     [(empty? x) x]
                                                                     [(<= (length x) hole) (list)]
                                                                     [else (list-ref x hole)]))
                                                       unrolled)
                                                  loopvar
                                                  reps)
                                    (cdr sketch)))]
                      [else (begin
                              (set! hole (add1 hole))
                              soln)]))]
        [_ w])
      )
    (match exp
      [(? integer?)        exp]
      [(bv-const v w)      (bv-const (evalHole v) (evalHole w))]
      [(array-ref a i)     (array-ref (evalExp a) (evalHole i))]
      [(array-store i v)   (array-store (evalHole i) (evalExp v))]
      [(ws w (arange l h)) (ws (evalExp w) (arange (evalHole l) (evalHole h)))]
      [(ws w (aif c t f))  (ws (evalExp w) (aif (evalHole c) (evalHole t) (evalHole f)))]
      [(ws w sel)          (ws (evalExp w) (for/list ([s sel]) (evalHole s)))]
      [(<w= w)             (<w= (evalExp w))]
      [(<<= w)             (<<= (evalExp w))]
      [(w& a b)            (w& (evalExp a) (evalExp b))]
      [(w|| a b)           (w|| (evalExp a) (evalExp b))]
      [(w^ a b)            (w^ (evalExp a) (evalExp b))]
      [(wn a b)            (wn (evalExp a) (evalExp b))]
      [(w~ a)              (w~ (evalExp a))]
      [(w+ a b)            (w+ (evalExp a) (evalExp b))]
      [(w- a b)            (w- (evalExp a) (evalExp b))]
      [(w* a b)            (w* (evalExp a) (evalExp b))]
      [(w= a b)            (w= (evalExp a) (evalExp b))]
      [(w< a b)            (w< (evalExp a) (evalHole b))]
      [(w> a b)            (w> (evalExp a) (evalExp b))]
      [(wc wires)          (wc (for/list ([w wires]) (evalExp w)))]
      [(wx sel a b)        (wx (evalExp sel) (evalExp a) (evalExp b))]
      [(wm id addr)        (wm (evalExp id) (evalExp addr))]
      [(w@ addr data we)   (w@ (evalExp addr) (evalExp data) (evalExp we))]
      [_ exp]
      ))
  (evalExp slice))

;; Intermediate synthesis procedure for solving wire select indexing arithmetic.
(define (slice-synth! sketch unrolled loopvar reps)
  (define env (make-vector (add1 loopvar) #f))
  (define (store i v) (vector-set! env i v))
  (define (load i) (vector-ref env i))
  (define sol
    (synthesize
     #:forall (filter identity (vector->list env))
     #:guarantee (assert (equal?
                          (for/list ([idx (range reps)])
                            (store loopvar idx)
                            (aeval sketch env))
                          unrolled))))
  (if (sat? sol) (begin
		   (evaluate sketch sol)) #f))

;; Collect all definitions in Maki block.
(define (getDefs block)
  (remove-duplicates (flatten (for/list ([c block])
    (match c
      [(list def op)
       (match op
         [(for-range i r b) (list def (getDefs b))]
         [_ def])]
      [_ (list)])))))

;; Use-def analysis over Maki block.
(define (getUses block)
  (define (checkUses d u wires)
    (if (not (empty? (filter (lambda (x) (equal? x d)) wires)))
        u
        (list)))
  (define (getUsesForDef def)
    (define (evalUses exp)
      (match exp
        [(? integer?)        exp]
        [(bv-const v w)      (list)]
        [(array-ref a i)     (list (evalUses a))]
        [(array-store i v)   (list (evalUses v))]
        [(ws w _)            (list (evalUses w))]
        [(<w= w)             (list (evalUses w))]
        [(<<= w)             (list (evalUses w))]
        [(w& a b)            (list (evalUses a) (evalUses b))]
        [(w|| a b)           (list (evalUses a) (evalUses b))]
        [(w^ a b)            (list (evalUses a) (evalUses b))]
        [(wn a b)            (list (evalUses a) (evalUses b))]
        [(w~ a)              (list (evalUses a))]
        [(w+ a b)            (list (evalUses a) (evalUses b))]
        [(w- a b)            (list (evalUses a) (evalUses b))]
        [(w* a b)            (list (evalUses a) (evalUses b))]
        [(w= a b)            (list (evalUses a) (evalUses b))]
        [(w< a b)            (list (evalUses a) (evalUses b))]
        [(w> a b)            (list (evalUses a) (evalUses b))]
        [(wc wires)          (list (for/list ([w wires]) (evalUses w)))]
        [(wx sel a b)        (list (evalUses sel) (evalUses a) (evalUses b))]
        [(wm id addr)        (list (evalUses id) (evalUses addr))]
        [(w@ addr data we)   (list (evalUses addr) (evalUses data) (evalUses we))]
        [(for-range i _ body) (list i (for/list ([b body]) (evalUses b)))]
        [_ (list)]))
    (flatten (for/list ([c block])
               (match c
                 [(list use-def rhs) (checkUses def use-def (flatten (evalUses rhs)))]
                 [_ (list)]))))
  (for/hash ([def (getDefs block)])
    (values def (getUsesForDef def))))

;; Helper function to collect const values in Maki program.
(define (getConsts block)
  (define (getValWidths a)
    (match a
      [(bv-const v w) (list v w)]
      [_ (list)]))
  (let ([vws (filter (lambda (x) (not (empty? x))) (for/list ([c block])
    (match c
      [(list _ op)
       (match op
         [(bv-const v w) (list v w)]
         [(<w= w)      (getValWidths w)]
         [(<<= w)      (getValWidths w)]
         [(w& a b)     (append (getValWidths a) (getValWidths b))]
         [(w|| a b)    (append (getValWidths a) (getValWidths b))]
         [(w^ a b)     (append (getValWidths a) (getValWidths b))]
         [(wn a b)     (append (getValWidths a) (getValWidths b))]
         [(w~ a)       (getValWidths a)]
         [(w+ a b)     (append (getValWidths a) (getValWidths b))]
         [(w- a b)     (append (getValWidths a) (getValWidths b))]
         [(w* a b)     (append (getValWidths a) (getValWidths b))]
         [(w= a b)     (append (getValWidths a) (getValWidths b))]
         [(w< a b)     (append (getValWidths a) (getValWidths b))]
         [(w> a b)     (append (getValWidths a) (getValWidths b))]
         [(wc wires)   (for/list ([w wires]) (getValWidths w))]
         [(ws a _)     (getValWidths a)]
         [(wx sel a b) (append (getValWidths sel) (getValWidths a) (getValWidths b))]
         [(wm id addr) (append (getValWidths id) (getValWidths addr))]
         [(w@ addr data we) (append (getValWidths addr) (getValWidths data) (getValWidths we))]
         [_ (list)])])))])
    ; (displayln vws)
    ; (displayln (map first vws))
    ; (displayln (map second vws))
    ; (displayln "why")
    ; (exit)
    (values (flatten (remove-duplicates (map first vws))) (flatten (remove-duplicates (map second vws))))))

;; Attempts to reroll a single loop candidate (slr) in sketch (synth-net)
;; according to the original netlists (reference).
;; This function calls out to the program synthesis function (`syn!`)
;; for Maki programs defined in `netlist_ir.rkt`.
(define (reroll-loop synth-net reference const-vals const-widths slr)
  (let* ([s (first slr)]
         [l (second slr)]
         [r (third slr)]
         [stmts (netlist-instructions synth-net)]
         [startId (index-of (map (lambda (x) (first x)) stmts) s)])
    (if (not (integer? startId)) #f
        (let ([loop (take
                     (member
                      (list-ref stmts startId)
                      stmts)
                     l)]
              [i 0]
              [maxId (add1 (car (argmax car stmts)))])
          (for ([stmt loop])
            (let ([slice (second stmt)])
              (begin
                ;; CROSS-ITERATION ANALYSIS
                (let ([unrolled (map (lambda (x) (flatten (getSlices (car x))))
                                     (for/list ([rep (range r)])
                                       (list (second (list-ref stmts (+ startId i (* l rep)))))))]
                      [sketch (sliceHole slice)])
                  (set! loop (list-set loop i (list (first stmt) (reroll! sketch unrolled maxId r)))))))
            (set! i (add1 i)))
          ;; data-dependency holes
          (let* ([pre (take stmts startId)]
                 [post (drop (member (list-ref stmts startId) stmts) (* l r))]
                 [preDefs (getDefs pre)]
                 [postDefs (getDefs post)]
                 [loopDefs (list)]
                 [uses (getUses (append pre loop post))]
                 [loopIndex maxId]
                 [newStmts (make-hash)]
                 [memReads (for/list ([c pre]) (match c [(list out (wm _ _)) out] [_ (list)]))]
                 [j 0]
                 [k 0])

            (define (loop-hole x defs)
              (cond
                [(and (integer? x) (not (member x defs)))
                 (??w)]
                [else x]))

            (define (post-hole x defs)
              (cond
                [(and (integer? x)
                      (not (member x defs))
                      (not (empty? (hash-values newStmts))))
                 (let* ([xId (index-of (map car stmts) x)]
                        [aref-index (quotient (- xId startId) l)]
                        [aref (modulo (- xId startId) l)]
                        [accs (map car (hash-values newStmts))])
                   (if (hash-has-key? newStmts aref)
                       (begin (let ([acc (hash-ref newStmts aref)])
                                (match (second acc)
                                  [(<w= _) (car acc)]
                                  [_  (array-ref (car acc) aref-index)])))
                       (??aref accs aref-index)))]
                [(and (integer? x)
                      (not (member x defs))) (??w)]
                [else x]))

            (define (add-hole!! op_ defs_ hole!)
              (define (add-hole! op defs)
                (match op
                  [(? integer?) (hole! op defs)]
                  [(?a)         (??w)]
                  [(bv-const (?a) (?a)) (??init (list) const-vals const-widths)]
                  [(bv-const v w) (bv-const (match v [(?a) (??aexp (list loopIndex))] [_ v])
                                            (match w [(?a) (??aexp (list loopIndex))] [_ w]))]
                  [(array-ref a (?a)) (array-ref (add-hole! a defs) (??aexp (list loopIndex)))]
                  [(array-ref a i) (array-ref (add-hole! a defs) i)]
                  [(<w= w)      (<w= (add-hole! w defs))]
                  [(<<= (array-store i v)) (<<= (array-store i (add-hole! v defs)))]
                  [(<<= w)      (<<= (add-hole! w defs))]
                  [(w& a b)     (w& (add-hole! a defs) (add-hole! b defs))]
                  [(w|| a b)    (w|| (add-hole! a defs) (add-hole! b defs))]
                  [(w^ a b)     (w^ (add-hole! a defs) (add-hole! b defs))]
                  [(wn a b)     (wn (add-hole! a defs) (add-hole! b defs))]
                  [(w~ a)       (w~ (add-hole! a defs))]
                  [(w+ a b)     (w+ (add-hole! a defs) (add-hole! b defs))]
                  [(w- a b)     (w- (add-hole! a defs) (add-hole! b defs))]
                  [(w* a b)     (w* (add-hole! a defs) (add-hole! b defs))]
                  [(w= a b)     (w= (add-hole! a defs) (add-hole! b defs))]
                  [(w< a b)     (w< (add-hole! a defs) (add-hole! b defs))]
                  [(w> a b)     (w> (add-hole! a defs) (add-hole! b defs))]
                  [(wc wires)   (wc (for/list ([w wires]) (add-hole! w defs)))]
                  [(ws a sel)   (ws (add-hole! a defs)
                                    (match sel
                                      [(arange l h) (arange (match l [(?a) (??aexp (list loopIndex))] [_ l])
                                                            (match h [(?a) (??aexp (list loopIndex))] [_ h]))]
                                      [(aif c t f) (aif c t f)]
                                      [_ (for/list ([s sel])
                                           (match s [(?a) (??aexp (list loopIndex))] [_ s]))]))]
                  [(wx sel a b) (wx (add-hole! sel defs) (add-hole! a defs) (add-hole! b defs))]
                  [(wm id addr) (wm (add-hole! id defs) (add-hole! addr defs))]
                  [(w@ addr data we) (w@ (add-hole! addr defs) (add-hole! data defs) (add-hole! we defs))]
                  [(array-store i v) (array-store i (add-hole! v defs))]
                  [_ op]))
              (add-hole! op_ defs_))

            (for ([stmt loop])
              (match stmt
                [(list def op)
                 (begin
                   (set! loopDefs (cons def loopDefs))
                   (if (or (and (hash-has-key? uses def)
                                (empty? (hash-ref uses def)))
                           (not (empty? (hash-ref (getUses (append
                                                            (list stmt)
                                                            (take (member
                                                                   (list-ref stmts (+ l startId)) stmts) l)))
                                                  def)))) ; OR use in next iteration
                       (begin
                         (set! maxId (add1 maxId))
                         (hash-set! newStmts j
                                    (list maxId (<w= def)))
                         (set! pre
                               (append pre
                                       (list (list maxId
                                                   (<w= (??init (append preDefs loopDefs
                                                                        (hash-keys
                                                                         (netlist-inputs synth-net)))
                                                                const-vals const-widths)))))))
                       (begin
                         (for ([use (hash-ref uses def)])
                           (if (member use postDefs)
                               (begin (set! maxId (add1 maxId))
                                      (hash-set! newStmts j
                                                 (list maxId (array-store (??aexp (list loopIndex)) def)))
                                      (set! pre (append pre (list (list maxId (array-create r))))))
                               (set! maxId maxId)))))
                   (set! loop (list-set loop j
                                        (list def (add-hole!! op (append
                                                                  memReads
                                                                  loopDefs) loop-hole)))))])
              (set! j (add1 j)))

            (for ([stmt post])
              (match stmt
                [(list def op) (set! post
                                     (list-set post k
                                               (list def
                                                     (add-hole!! op
                                                                 (append (hash-keys
                                                                          (netlist-inputs synth-net))
                                                                         preDefs postDefs) post-hole))))])
              (set! k (add1 k)))

            (let ([newIndexOffset 1])
              (for ([(stmtIndex newStmt) newStmts])
                (let ([I (+ stmtIndex newIndexOffset)])
                  (if (< I (length loop))
                      (set! loop (insert-at loop I newStmt))
                      (set! loop (append loop (list newStmt)))))
                (set! newIndexOffset (add1 newIndexOffset))))

            (set! synth-net (netlist (netlist-inputs synth-net)
                                     (netlist-outputs synth-net)
                                     (netlist-registers synth-net)
                                     (append pre
                                             (list (list loopIndex (for-range loopIndex r loop)))
                                             post))))))
    ;; Synthesize it!
    (let ([synth-result (syn! synth-net reference)])
      (if synth-result
          (begin ;(printf (ir->pyrtl synth-result))
                 synth-result)
          (begin ;(printf "Unsynthesizable! ~a~n" slr)
                 #f)))))

;; Performs hardware loop rerolling over all loop candidates for given Maki program (net)
;; Defaults to output PyRTL code.
(define (sketch-reroll net loops-info)
  (define reference net)
  (define sketch net)
  (define-values (const-vals const-widths) (getConsts (netlist-instructions net)))
  ; (displayln const-vals)
  ; (displayln const-widths)
  ; (exit)
  (for ([loop loops-info])
    (let ([new-sketch (reroll-loop sketch reference const-vals const-widths loop)])
      (cond
        [new-sketch (set! sketch new-sketch)]
        [else (set! sketch sketch)])))
  (printf (ir->pyrtl sketch)))

;; Performs hardware loop rerolling over all loop candidates for given Maki program (net)
;; Outputs SystemVerilog code.
(define (sketch-reroll-sv net loops-info internal-signals)
  (define reference net)
  (define sketch net)
  (define-values (const-vals const-widths) (getConsts (netlist-instructions net)))
  (for ([loop loops-info])
    (let ([new-sketch (reroll-loop sketch reference const-vals const-widths loop)])
      (cond
        [new-sketch (set! sketch new-sketch)]
        [else (set! sketch sketch)])))
  (printf (ir->sv sketch internal-signals)))
