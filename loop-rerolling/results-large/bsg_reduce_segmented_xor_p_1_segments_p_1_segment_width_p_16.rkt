#lang rosette
(require "../netlist_ir.rkt")
(require "../sketch_gen.rkt")

(def-netlist basejump-netlists/bsg_reduce_segmented_xor_p_1_segments_p_1_segment_width_p_16.blif
(hash 0 16)
(hash 1 1)
(hash)
(2 (w^ (ws 0 (list 15)) (ws 0 (list 14))))
(3 (w^ 2 (ws 0 (list 13))))
(4 (w^ 3 (ws 0 (list 12))))
(5 (w^ 4 (ws 0 (list 11))))
(6 (w^ 5 (ws 0 (list 10))))
(7 (w^ 6 (ws 0 (list 9))))
(8 (w^ 7 (ws 0 (list 8))))
(9 (w^ 8 (ws 0 (list 7))))
(10 (w^ 9 (ws 0 (list 6))))
(11 (w^ 10 (ws 0 (list 5))))
(12 (w^ 11 (ws 0 (list 4))))
(13 (w^ 12 (ws 0 (list 3))))
(14 (w^ 13 (ws 0 (list 2))))
(15 (w^ 14 (ws 0 (list 1))))
(16 (w^ 15 (ws 0 (list 0))))
(1 (<<= 16)))

(define internal-signals (hash 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1))

(sketch-reroll basejump-netlists/bsg_reduce_segmented_xor_p_1_segments_p_1_segment_width_p_16.blif (loops (3 1 14)))

