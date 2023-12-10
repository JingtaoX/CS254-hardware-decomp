#lang rosette
(require "../netlist_ir.rkt")
(require "../sketch_gen.rkt")

(def-netlist basejump-netlists/bsg_wait_after_reset_lg_wait_cycles_p_5.blif
(hash 0 1)
(hash 1 1)
(hash 2 1 3 5)
(4 (w+ 3 (bv-const 1 5)))
(5 (w~ 0))
(6 (w|| (ws 3 (list 3)) (ws 3 (list 4))))
(7 (w|| (ws 3 (list 2)) 6))
(8 (w|| (ws 3 (list 1)) 7))
(9 (w|| (ws 3 (list 0)) 8))
(10 (w~ 9))
(11 (w& 10 5))
(12 (w|| 10 0))
(13 (wx 12 (bv-const 1 1) (bv-const 0 1)))
(14 (wx 11 13 (bv-const 0 1)))
(15 (wx 0 14 (bv-const 1 1)))
(16 (wx 12 (ws 4 (arange 0 5)) (bv-const 0 5)))
(17 (wx 0 16 (bv-const 1 5)))
(18 (wx 15 3 17))
(19 (wx 11 (bv-const 0 1) (bv-const 1 1)))
(20 (wx 0 19 (bv-const 1 1)))
(21 (wx 20 2 11))
(2 (<<= 21))
(3 (<<= 18))
(1 (<<= 2)))

(define internal-signals (hash 4 6 5 1 6 1 7 1 8 1 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 5 17 5 18 5 19 1 20 1 21 1))

(sketch-reroll basejump-netlists/bsg_wait_after_reset_lg_wait_cycles_p_5.blif (loops (7 1 3)))

