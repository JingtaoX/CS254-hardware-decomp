#lang rosette
(require "../netlist_ir.rkt")
(require "../sketch_gen.rkt")

(def-netlist basejump-netlists/bsg_wait_cycles_cycles_p_16.blif
(hash 0 1 1 1)
(hash 2 1)
(hash 3 1 4 5)
(5 (w+ 4 (bv-const 1 5)))
(6 (ws 5 (arange 0 5)))
(7 (w~ 0))
(8 (w& 1 7))
(9 (w~ 1))
(10 (w& 7 9))
(11 (w|| 1 0))
(12 (ws 4 (list 0)))
(13 (ws 4 (list 1)))
(14 (ws 4 (list 2)))
(15 (ws 4 (list 3)))
(16 (ws 4 (list 4)))
(17 (w~ 16))
(18 (w|| 15 17))
(19 (w|| 14 18))
(20 (w|| 13 19))
(21 (w|| 12 20))
(22 (w& 21 10))
(23 (w|| 21 11))
(24 (wx 23 4 (bv-const 0 5)))
(25 (wx 22 24 6))
(26 (wx 8 25 (bv-const 0 5)))
(27 (wx 0 26 (bv-const 16 5)))
(28 (ws 27 (list 0)))
(29 (ws 27 (list 1)))
(30 (ws 27 (list 2)))
(31 (ws 27 (list 3)))
(32 (ws 27 (list 4)))
(33 (w~ 32))
(34 (w|| 31 33))
(35 (w|| 30 34))
(36 (w|| 29 35))
(37 (w|| 28 36))
(38 (w~ 37))
(3 (<<= 38))
(4 (<<= 27))
(2 (<<= 3)))

(define internal-signals (hash 5 6 6 5 7 1 8 1 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 5 25 5 26 5 27 5 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1))

(sketch-reroll basejump-netlists/bsg_wait_cycles_cycles_p_16.blif (loops (12 1 5) (18 1 4) (28 1 5) (34 1 4)))
