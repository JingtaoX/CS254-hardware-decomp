#lang rosette
(require "../netlist_ir.rkt")
(require "../sketch_gen.rkt")

(def-netlist basejump-netlists/bsg_ready_to_credit_flow_converter_credit_initial_p_1_credit_max_val_p_50.blif
(hash 0 1 1 1 2 1)
(hash 3 1 4 1)
(hash 5 6)
(6 (wc (list (bv-const 0 5) 0)))
(7 (w|| (ws 5 (list 4)) (ws 5 (list 5))))
(8 (w|| (ws 5 (list 3)) 7))
(9 (w|| (ws 5 (list 2)) 8))
(10 (w|| (ws 5 (list 1)) 9))
(11 (w|| (ws 5 (list 0)) 10))
(12 (w& 1 11))
(13 (wc (list (bv-const 0 5) 12)))
(14 (w- 5 13))
(15 (w+ (ws 14 (arange 0 6)) 6))
(16 (wx 2 (ws 15 (arange 0 6)) (bv-const 1 6)))
(5 (<<= 16))
(3 (<<= 11))
(4 (<<= 12)))

(define internal-signals (hash 6 6 7 1 8 1 9 1 10 1 11 1 12 1 13 6 14 7 15 7 16 6))

(sketch-reroll basejump-netlists/bsg_ready_to_credit_flow_converter_credit_initial_p_1_credit_max_val_p_50.blif (loops (8 1 4)))

