#lang rosette
(require "../netlist_ir.rkt")
(require "../sketch_gen.rkt")

(def-netlist basejump-netlists/bsg_mux2_gatestack_width_p_16.blif
(hash 0 16 1 16 2 16)
(hash 3 16)
(hash)
(4 (wx (ws 0 (list 0)) (ws 1 (list 0)) (ws 2 (list 0))))
(5 (wx (ws 0 (list 1)) (ws 1 (list 1)) (ws 2 (list 1))))
(6 (wx (ws 0 (list 2)) (ws 1 (list 2)) (ws 2 (list 2))))
(7 (wx (ws 0 (list 3)) (ws 1 (list 3)) (ws 2 (list 3))))
(8 (wx (ws 0 (list 4)) (ws 1 (list 4)) (ws 2 (list 4))))
(9 (wx (ws 0 (list 5)) (ws 1 (list 5)) (ws 2 (list 5))))
(10 (wx (ws 0 (list 6)) (ws 1 (list 6)) (ws 2 (list 6))))
(11 (wx (ws 0 (list 7)) (ws 1 (list 7)) (ws 2 (list 7))))
(12 (wx (ws 0 (list 8)) (ws 1 (list 8)) (ws 2 (list 8))))
(13 (wx (ws 0 (list 9)) (ws 1 (list 9)) (ws 2 (list 9))))
(14 (wx (ws 0 (list 10)) (ws 1 (list 10)) (ws 2 (list 10))))
(15 (wx (ws 0 (list 11)) (ws 1 (list 11)) (ws 2 (list 11))))
(16 (wx (ws 0 (list 12)) (ws 1 (list 12)) (ws 2 (list 12))))
(17 (wx (ws 0 (list 13)) (ws 1 (list 13)) (ws 2 (list 13))))
(18 (wx (ws 0 (list 14)) (ws 1 (list 14)) (ws 2 (list 14))))
(19 (wx (ws 0 (list 15)) (ws 1 (list 15)) (ws 2 (list 15))))
(20 (wc (list 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4)))
(3 (<<= 20)))

(define internal-signals (hash 4 1 5 1 6 1 7 1 8 1 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 16))

(sketch-reroll basejump-netlists/bsg_mux2_gatestack_width_p_16.blif (loops (4 1 16)))

