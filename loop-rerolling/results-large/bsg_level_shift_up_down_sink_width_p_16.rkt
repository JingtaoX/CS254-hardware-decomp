#lang rosette
(require "../netlist_ir.rkt")
(require "../sketch_gen.rkt")

(def-netlist basejump-netlists/bsg_level_shift_up_down_sink_width_p_16.blif
(hash 0 1 1 16)
(hash 2 16)
(hash)
(3 (w& (ws 1 (list 15)) 0))
(4 (w& (ws 1 (list 14)) 0))
(5 (w& (ws 1 (list 13)) 0))
(6 (w& (ws 1 (list 12)) 0))
(7 (w& (ws 1 (list 11)) 0))
(8 (w& (ws 1 (list 10)) 0))
(9 (w& (ws 1 (list 9)) 0))
(10 (w& (ws 1 (list 8)) 0))
(11 (w& (ws 1 (list 7)) 0))
(12 (w& (ws 1 (list 6)) 0))
(13 (w& (ws 1 (list 5)) 0))
(14 (w& (ws 1 (list 4)) 0))
(15 (w& (ws 1 (list 3)) 0))
(16 (w& (ws 1 (list 2)) 0))
(17 (w& (ws 1 (list 1)) 0))
(18 (w& (ws 1 (list 0)) 0))
(19 (wc (list 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18)))
(2 (<<= 19)))

(define internal-signals (hash 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 16))

(sketch-reroll basejump-netlists/bsg_level_shift_up_down_sink_width_p_16.blif (loops (3 1 16)))

