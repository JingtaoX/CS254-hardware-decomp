#lang rosette
(require "../netlist_ir.rkt")
(require "../sketch_gen.rkt")

(def-netlist basejump-netlists/bsg_xor_width_p_16.blif
(hash 0 16 1 16)
(hash 2 16)
(hash)
(3 (ws 0 (list 0)))
(4 (ws 0 (list 1)))
(5 (ws 0 (list 2)))
(6 (ws 0 (list 3)))
(7 (ws 0 (list 4)))
(8 (ws 0 (list 5)))
(9 (ws 0 (list 6)))
(10 (ws 0 (list 7)))
(11 (ws 0 (list 8)))
(12 (ws 0 (list 9)))
(13 (ws 0 (list 10)))
(14 (ws 0 (list 11)))
(15 (ws 0 (list 12)))
(16 (ws 0 (list 13)))
(17 (ws 0 (list 14)))
(18 (ws 0 (list 15)))
(19 (ws 1 (list 0)))
(20 (ws 1 (list 1)))
(21 (ws 1 (list 2)))
(22 (ws 1 (list 3)))
(23 (ws 1 (list 4)))
(24 (ws 1 (list 5)))
(25 (ws 1 (list 6)))
(26 (ws 1 (list 7)))
(27 (ws 1 (list 8)))
(28 (ws 1 (list 9)))
(29 (ws 1 (list 10)))
(30 (ws 1 (list 11)))
(31 (ws 1 (list 12)))
(32 (ws 1 (list 13)))
(33 (ws 1 (list 14)))
(34 (ws 1 (list 15)))
(35 (w^ 18 34))
(36 (w^ 17 33))
(37 (w^ 16 32))
(38 (w^ 15 31))
(39 (w^ 14 30))
(40 (w^ 13 29))
(41 (w^ 12 28))
(42 (w^ 11 27))
(43 (w^ 10 26))
(44 (w^ 9 25))
(45 (w^ 8 24))
(46 (w^ 7 23))
(47 (w^ 6 22))
(48 (w^ 5 21))
(49 (w^ 4 20))
(50 (w^ 3 19))
(51 (wc (list 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50)))
(2 (<<= 51)))

(define internal-signals (hash 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 16))

(sketch-reroll basejump-netlists/bsg_xor_width_p_16.blif (loops (3 1 32) (35 1 16)))
