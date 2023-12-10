#lang rosette
(require "../netlist_ir.rkt")
(require "../sketch_gen.rkt")

(def-netlist basejump-netlists/bsg_level_shift_up_down_sink_width_p_32.blif
(hash 0 32 1 1)
(hash 2 32)
(hash)
(3 (w& (ws 0 (list 31)) 1))
(4 (w& (ws 0 (list 30)) 1))
(5 (w& (ws 0 (list 29)) 1))
(6 (w& (ws 0 (list 28)) 1))
(7 (w& (ws 0 (list 27)) 1))
(8 (w& (ws 0 (list 26)) 1))
(9 (w& (ws 0 (list 25)) 1))
(10 (w& (ws 0 (list 24)) 1))
(11 (w& (ws 0 (list 23)) 1))
(12 (w& (ws 0 (list 22)) 1))
(13 (w& (ws 0 (list 21)) 1))
(14 (w& (ws 0 (list 20)) 1))
(15 (w& (ws 0 (list 19)) 1))
(16 (w& (ws 0 (list 18)) 1))
(17 (w& (ws 0 (list 17)) 1))
(18 (w& (ws 0 (list 16)) 1))
(19 (w& (ws 0 (list 15)) 1))
(20 (w& (ws 0 (list 14)) 1))
(21 (w& (ws 0 (list 13)) 1))
(22 (w& (ws 0 (list 12)) 1))
(23 (w& (ws 0 (list 11)) 1))
(24 (w& (ws 0 (list 10)) 1))
(25 (w& (ws 0 (list 9)) 1))
(26 (w& (ws 0 (list 8)) 1))
(27 (w& (ws 0 (list 7)) 1))
(28 (w& (ws 0 (list 6)) 1))
(29 (w& (ws 0 (list 5)) 1))
(30 (w& (ws 0 (list 4)) 1))
(31 (w& (ws 0 (list 3)) 1))
(32 (w& (ws 0 (list 2)) 1))
(33 (w& (ws 0 (list 1)) 1))
(34 (w& (ws 0 (list 0)) 1))
(35 (wc (list 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34)))
(2 (<<= 35)))

(define internal-signals (hash 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 32))

(sketch-reroll basejump-netlists/bsg_level_shift_up_down_sink_width_p_32.blif (loops (3 1 32)))
