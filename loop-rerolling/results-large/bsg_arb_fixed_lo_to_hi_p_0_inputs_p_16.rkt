#lang rosette
(require "../netlist_ir.rkt")
(require "../sketch_gen.rkt")

(def-netlist basejump-netlists/bsg_arb_fixed_lo_to_hi_p_0_inputs_p_16.blif
(hash 0 16 1 1)
(hash 2 16)
(hash)
(3 (w& (ws 0 (list 15)) 1))
(4 (w~ (ws 0 (list 15))))
(5 (w|| (ws 0 (list 14)) (ws 0 (list 15))))
(6 (w& 5 4))
(7 (w& 6 1))
(8 (w~ 5))
(9 (w|| (ws 0 (list 13)) (ws 0 (list 14))))
(10 (w|| (ws 0 (list 12)) (ws 0 (list 13))))
(11 (w|| (ws 0 (list 11)) (ws 0 (list 12))))
(12 (w|| (ws 0 (list 10)) (ws 0 (list 11))))
(13 (w|| (ws 0 (list 9)) (ws 0 (list 10))))
(14 (w|| (ws 0 (list 8)) (ws 0 (list 9))))
(15 (w|| (ws 0 (list 7)) (ws 0 (list 8))))
(16 (w|| (ws 0 (list 6)) (ws 0 (list 7))))
(17 (w|| (ws 0 (list 5)) (ws 0 (list 6))))
(18 (w|| (ws 0 (list 4)) (ws 0 (list 5))))
(19 (w|| (ws 0 (list 3)) (ws 0 (list 4))))
(20 (w|| (ws 0 (list 2)) (ws 0 (list 3))))
(21 (w|| (ws 0 (list 1)) (ws 0 (list 2))))
(22 (w|| (ws 0 (list 0)) (ws 0 (list 1))))
(23 (w|| 9 (ws 0 (list 15))))
(24 (w~ 23))
(25 (w& 23 8))
(26 (w& 25 1))
(27 (w|| 10 5))
(28 (w& 27 24))
(29 (w& 28 1))
(30 (w~ 27))
(31 (w|| 11 9))
(32 (w|| 12 10))
(33 (w|| 13 11))
(34 (w|| 14 12))
(35 (w|| 15 13))
(36 (w|| 16 14))
(37 (w|| 17 15))
(38 (w|| 18 16))
(39 (w|| 19 17))
(40 (w|| 20 18))
(41 (w|| 21 19))
(42 (w|| 22 20))
(43 (w|| 31 (ws 0 (list 15))))
(44 (w& 43 30))
(45 (w& 44 1))
(46 (w~ 43))
(47 (w|| 32 5))
(48 (w& 47 46))
(49 (w& 48 1))
(50 (w~ 47))
(51 (w|| 33 23))
(52 (w& 51 50))
(53 (w& 52 1))
(54 (w~ 51))
(55 (w|| 34 27))
(56 (w& 55 54))
(57 (w& 56 1))
(58 (w~ 55))
(59 (w|| 35 31))
(60 (w|| 36 32))
(61 (w|| 37 33))
(62 (w|| 61 23))
(63 (w~ 62))
(64 (w|| 38 34))
(65 (w|| 64 27))
(66 (w& 65 63))
(67 (w& 66 1))
(68 (w~ 65))
(69 (w|| 39 35))
(70 (w|| 69 43))
(71 (w& 70 68))
(72 (w& 71 1))
(73 (w~ 70))
(74 (w|| 40 36))
(75 (w|| 74 47))
(76 (w& 75 73))
(77 (w& 76 1))
(78 (w~ 75))
(79 (w|| 41 37))
(80 (w|| 79 51))
(81 (w& 80 78))
(82 (w& 81 1))
(83 (w~ 80))
(84 (w|| 42 38))
(85 (w|| 84 55))
(86 (w& 85 83))
(87 (w& 86 1))
(88 (w|| 59 (ws 0 (list 15))))
(89 (w& 88 58))
(90 (w& 89 1))
(91 (w~ 88))
(92 (w|| 60 5))
(93 (w& 92 91))
(94 (w& 93 1))
(95 (w~ 92))
(96 (w& 62 95))
(97 (w& 96 1))
(98 (wc (list 3 7 26 29 45 49 53 57 90 94 97 67 72 77 82 87)))
(2 (<<= 98)))

(define internal-signals (hash 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 16))

(sketch-reroll basejump-netlists/bsg_arb_fixed_lo_to_hi_p_0_inputs_p_16.blif (loops (9 1 14) (31 1 12) (47 4 3) (59 1 4) (63 5 5)))
