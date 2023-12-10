#lang rosette
(require "../netlist_ir.rkt")
(require "../sketch_gen.rkt")

(def-netlist basejump-netlists/bsg_inv_width_p_16.blif
(hash 0 16)
(hash 1 16)
(hash)
(2 (w~ (ws 0 (list 15))))
(3 (w~ (ws 0 (list 14))))
(4 (w~ (ws 0 (list 13))))
(5 (w~ (ws 0 (list 12))))
(6 (w~ (ws 0 (list 11))))
(7 (w~ (ws 0 (list 10))))
(8 (w~ (ws 0 (list 9))))
(9 (w~ (ws 0 (list 8))))
(10 (w~ (ws 0 (list 7))))
(11 (w~ (ws 0 (list 6))))
(12 (w~ (ws 0 (list 5))))
(13 (w~ (ws 0 (list 4))))
(14 (w~ (ws 0 (list 3))))
(15 (w~ (ws 0 (list 2))))
(16 (w~ (ws 0 (list 1))))
(17 (w~ (ws 0 (list 0))))
(18 (wc (list 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17)))
(1 (<<= 18)))

(define internal-signals (hash 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 16))

(sketch-reroll basejump-netlists/bsg_inv_width_p_16.blif (loops (2 1 16)))

