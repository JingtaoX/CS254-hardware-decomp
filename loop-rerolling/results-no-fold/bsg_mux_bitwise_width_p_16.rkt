#lang rosette
(require "../netlist_ir.rkt")
(require "../sketch_gen.rkt")

(def-netlist basejump-netlists/bsg_mux_bitwise_width_p_16.blif
(hash 0 16 1 16 2 16)
(hash 3 16)
(hash)
(4 (ws 0 (list 0)))
(5 (ws 0 (list 1)))
(6 (ws 0 (list 2)))
(7 (ws 0 (list 3)))
(8 (ws 0 (list 4)))
(9 (ws 0 (list 5)))
(10 (ws 0 (list 6)))
(11 (ws 0 (list 7)))
(12 (ws 0 (list 8)))
(13 (ws 0 (list 9)))
(14 (ws 0 (list 10)))
(15 (ws 0 (list 11)))
(16 (ws 0 (list 12)))
(17 (ws 0 (list 13)))
(18 (ws 0 (list 14)))
(19 (ws 0 (list 15)))
(20 (ws 1 (list 0)))
(21 (ws 1 (list 1)))
(22 (ws 1 (list 2)))
(23 (ws 1 (list 3)))
(24 (ws 1 (list 4)))
(25 (ws 1 (list 5)))
(26 (ws 1 (list 6)))
(27 (ws 1 (list 7)))
(28 (ws 1 (list 8)))
(29 (ws 1 (list 9)))
(30 (ws 1 (list 10)))
(31 (ws 1 (list 11)))
(32 (ws 1 (list 12)))
(33 (ws 1 (list 13)))
(34 (ws 1 (list 14)))
(35 (ws 1 (list 15)))
(36 (ws 2 (list 0)))
(37 (ws 2 (list 1)))
(38 (ws 2 (list 2)))
(39 (ws 2 (list 3)))
(40 (ws 2 (list 4)))
(41 (ws 2 (list 5)))
(42 (ws 2 (list 6)))
(43 (ws 2 (list 7)))
(44 (ws 2 (list 8)))
(45 (ws 2 (list 9)))
(46 (ws 2 (list 10)))
(47 (ws 2 (list 11)))
(48 (ws 2 (list 12)))
(49 (ws 2 (list 13)))
(50 (ws 2 (list 14)))
(51 (ws 2 (list 15)))
(52 (wx 36 4 20))
(53 (wx 37 5 21))
(54 (wx 38 6 22))
(55 (wx 39 7 23))
(56 (wx 40 8 24))
(57 (wx 41 9 25))
(58 (wx 42 10 26))
(59 (wx 43 11 27))
(60 (wx 44 12 28))
(61 (wx 45 13 29))
(62 (wx 46 14 30))
(63 (wx 47 15 31))
(64 (wx 48 16 32))
(65 (wx 49 17 33))
(66 (wx 50 18 34))
(67 (wx 51 19 35))
(68 (wc (list 67 66 65 64 63 62 61 60 59 58 57 56 55 54 53 52)))
(3 (<<= 68)))

(define internal-signals (hash 4 1 5 1 6 1 7 1 8 1 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 16))

(sketch-reroll basejump-netlists/bsg_mux_bitwise_width_p_16.blif (loops (4 1 48) (52 1 16)))
