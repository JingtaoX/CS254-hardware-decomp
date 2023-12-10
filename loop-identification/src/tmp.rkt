#lang rosette
(require "netlist_ir.rkt")
(require "sketch_gen.rkt")
(def-netlist func_0
(hash 0 2 1 2)
(hash 2 1 3 3)
(hash)
(4 (w^ 0 1))
(2 (ws 4 (list 0)))
(5 (ws 4 (list 1)))
(6 (w& 0 1))
(7 (ws 6 (list 0)))
(8 (ws 6 (list 1)))
(9 (w& 5 7))
(10 (w|| 8 9))
(11 (wc (list 10 7 (bv-const 0 1))))
(12 (wc (list (bv-const 0 1) 4)))
(3 (w^ 11 12)))

(define internal-signals (hash 4 2 5 1 6 2 7 1 8 1 9 1 10 1 11 3 12 3))

(def-netlist func_1
(hash 0 2 1 2)
(hash 2 1 3 3)
(hash)
(4 (w^ 0 1))
(2 (ws 4 (list 0)))
(5 (ws 4 (list 1)))
(6 (w& 0 1))
(7 (ws 6 (list 0)))
(8 (ws 6 (list 1)))
(9 (w& 5 7))
(10 (w|| 8 9))
(11 (wc (list 10 7 (bv-const 0 1))))
(12 (wc (list (bv-const 0 1) 4)))
(3 (w^ 11 12)))

(define internal-signals (hash 4 2 5 1 6 2 7 1 8 1 9 1 10 1 11 3 12 3))


