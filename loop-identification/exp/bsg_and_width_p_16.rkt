#lang rosette
(require "../netlist_ir.rkt")
(require "../sketch_gen.rkt")

(def-netlist exp/bsg_and_width_p_16.blif
(hash 0 16 1 16)
(hash 2 16)
(hash)
(3 (w& (ws 1 (list 15)) (ws 0 (list 15))))
(4 (w& (ws 1 (list 14)) (ws 0 (list 14))))
(5 (w& (ws 1 (list 13)) (ws 0 (list 13))))
(6 (w& (ws 1 (list 12)) (ws 0 (list 12))))
(7 (w& (ws 1 (list 11)) (ws 0 (list 11))))
(8 (w& (ws 1 (list 10)) (ws 0 (list 10))))
(9 (w& (ws 1 (list 9)) (ws 0 (list 9))))
(10 (w& (ws 1 (list 8)) (ws 0 (list 8))))
(11 (w& (ws 1 (list 7)) (ws 0 (list 7))))
(12 (w& (ws 1 (list 6)) (ws 0 (list 6))))
(13 (w& (ws 1 (list 5)) (ws 0 (list 5))))
(14 (w& (ws 1 (list 4)) (ws 0 (list 4))))
(15 (w& (ws 1 (list 3)) (ws 0 (list 3))))
(16 (w& (ws 1 (list 2)) (ws 0 (list 2))))
(17 (w& (ws 1 (list 1)) (ws 0 (list 1))))
(18 (w& (ws 1 (list 0)) (ws 0 (list 0))))
(19 (wc (list 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18)))
(2 (<<= 19)))

(define internal-signals (hash 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 16))

(sketch-reroll exp/bsg_and_width_p_16.blif (loops (3 1 16)))

