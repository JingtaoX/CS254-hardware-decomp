#lang rosette
(require "../netlist_ir.rkt")
(require "../sketch_gen.rkt")

(def-netlist basejump-netlists/bsg_ready_to_credit_flow_converter_credit_initial_p_0_credit_max_val_p_100.blif
(hash 0 1 1 1 2 1)
(hash 3 1 4 1)
(hash 5 7)
(6 (wc (list (bv-const 0 6) 0)))
(7 (w|| (ws 5 (list 5)) (ws 5 (list 6))))
(8 (w|| (ws 5 (list 4)) 7))
(9 (w|| (ws 5 (list 3)) 8))
(10 (w|| (ws 5 (list 2)) 9))
(11 (w|| (ws 5 (list 1)) 10))
(12 (w|| (ws 5 (list 0)) 11))
(13 (w& 2 12))
(14 (wc (list (bv-const 0 6) 13)))
(15 (w- 5 14))
(16 (w+ (ws 15 (arange 0 7)) 6))
(17 (wx 1 (ws 16 (arange 0 7)) (bv-const 0 7)))
(5 (<<= 17))
(3 (<<= 12))
(4 (<<= 13)))

(define internal-signals (hash 6 7 7 1 8 1 9 1 10 1 11 1 12 1 13 1 14 7 15 8 16 8 17 7))

(sketch-reroll basejump-netlists/bsg_ready_to_credit_flow_converter_credit_initial_p_0_credit_max_val_p_100.blif (loops (8 1 5)))

