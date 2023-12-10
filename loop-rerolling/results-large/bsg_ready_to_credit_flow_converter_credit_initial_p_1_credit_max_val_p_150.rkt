#lang rosette
(require "../netlist_ir.rkt")
(require "../sketch_gen.rkt")

(def-netlist basejump-netlists/bsg_ready_to_credit_flow_converter_credit_initial_p_1_credit_max_val_p_150.blif
(hash 0 1 1 1 2 1 3 1)
(hash 4 1 5 1)
(hash 6 8)
(7 (wc (list (bv-const 0 7) 1)))
(8 (w|| (ws 6 (list 6)) (ws 6 (list 7))))
(9 (w|| (ws 6 (list 5)) 8))
(10 (w|| (ws 6 (list 4)) 9))
(11 (w|| (ws 6 (list 3)) 10))
(12 (w|| (ws 6 (list 2)) 11))
(13 (w|| (ws 6 (list 1)) 12))
(14 (w|| (ws 6 (list 0)) 13))
(15 (w& 2 14))
(16 (wc (list (bv-const 0 7) 15)))
(17 (w- 6 16))
(18 (w+ (ws 17 (arange 0 8)) 7))
(19 (wx 0 (ws 18 (arange 0 8)) (bv-const 1 8)))
(6 (<<= 19))
(4 (<<= 14))
(5 (<<= 15)))

(define internal-signals (hash 7 8 8 1 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 8 17 9 18 9 19 8))

(sketch-reroll basejump-netlists/bsg_ready_to_credit_flow_converter_credit_initial_p_1_credit_max_val_p_150.blif (loops (9 1 6)))

