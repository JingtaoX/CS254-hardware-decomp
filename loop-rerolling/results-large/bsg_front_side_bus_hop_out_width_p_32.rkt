#lang rosette
(require "../netlist_ir.rkt")
(require "../sketch_gen.rkt")

(def-netlist basejump-netlists/bsg_front_side_bus_hop_out_width_p_32.blif
(hash 0 1 1 1 2 2 3 64)
(hash 4 1 5 32 6 1 7 1)
(hash 8 1 9 1 10 1 11 1 12 1 13 64)
(14 (w~ (ws 2 (list 0))))
(15 (w~ 8))
(16 (w|| 14 8))
(17 (w~ 16))
(18 (w& (ws 2 (list 1)) 17))
(19 (w|| (ws 2 (list 1)) (ws 2 (list 0))))
(20 (wx 16 (ws 3 (list 31)) (ws 3 (list 63))))
(21 (wx 16 (ws 3 (list 30)) (ws 3 (list 62))))
(22 (wx 16 (ws 3 (list 29)) (ws 3 (list 61))))
(23 (wx 16 (ws 3 (list 28)) (ws 3 (list 60))))
(24 (wx 16 (ws 3 (list 27)) (ws 3 (list 59))))
(25 (wx 16 (ws 3 (list 26)) (ws 3 (list 58))))
(26 (wx 16 (ws 3 (list 25)) (ws 3 (list 57))))
(27 (wx 16 (ws 3 (list 24)) (ws 3 (list 56))))
(28 (wx 16 (ws 3 (list 23)) (ws 3 (list 55))))
(29 (wx 16 (ws 3 (list 22)) (ws 3 (list 54))))
(30 (wx 16 (ws 3 (list 21)) (ws 3 (list 53))))
(31 (wx 16 (ws 3 (list 20)) (ws 3 (list 52))))
(32 (wx 16 (ws 3 (list 19)) (ws 3 (list 51))))
(33 (wx 16 (ws 3 (list 18)) (ws 3 (list 50))))
(34 (wx 16 (ws 3 (list 17)) (ws 3 (list 49))))
(35 (wx 16 (ws 3 (list 16)) (ws 3 (list 48))))
(36 (wx 16 (ws 3 (list 15)) (ws 3 (list 47))))
(37 (wx 16 (ws 3 (list 14)) (ws 3 (list 46))))
(38 (wx 16 (ws 3 (list 13)) (ws 3 (list 45))))
(39 (wx 16 (ws 3 (list 12)) (ws 3 (list 44))))
(40 (wx 16 (ws 3 (list 11)) (ws 3 (list 43))))
(41 (wx 16 (ws 3 (list 10)) (ws 3 (list 42))))
(42 (wx 16 (ws 3 (list 9)) (ws 3 (list 41))))
(43 (wx 16 (ws 3 (list 8)) (ws 3 (list 40))))
(44 (wx 16 (ws 3 (list 7)) (ws 3 (list 39))))
(45 (wx 16 (ws 3 (list 6)) (ws 3 (list 38))))
(46 (wx 16 (ws 3 (list 5)) (ws 3 (list 37))))
(47 (wx 16 (ws 3 (list 4)) (ws 3 (list 36))))
(48 (wx 16 (ws 3 (list 3)) (ws 3 (list 35))))
(49 (wx 16 (ws 3 (list 2)) (ws 3 (list 34))))
(50 (wx 16 (ws 3 (list 1)) (ws 3 (list 33))))
(51 (wx 16 (ws 3 (list 0)) (ws 3 (list 32))))
(52 (wx 9 18 8))
(53 (wx 1 52 (bv-const 0 1)))
(54 (w~ 9))
(55 (w& 54 (ws 2 (list 1))))
(56 (w& 55 16))
(57 (w& 54 15))
(58 (w& 19 54))
(59 (w~ 11))
(60 (w~ 58))
(61 (w& 12 60))
(62 (w~ 12))
(63 (w& 62 0))
(64 (w& 54 63))
(65 (w& 64 60))
(66 (w& 62 58))
(67 (w~ 63))
(68 (w& 66 67))
(69 (w& 9 67))
(70 (w|| 61 65))
(71 (w|| 68 69))
(72 (wx 1 58 (bv-const 1 1)))
(73 (wx 1 63 (bv-const 1 1)))
(74 (wx 1 59 (bv-const 0 1)))
(75 (wx 73 11 74))
(76 (wx 1 70 (bv-const 1 1)))
(77 (wx 1 71 (bv-const 0 1)))
(78 (w~ 10))
(79 (wx 1 78 (bv-const 0 1)))
(80 (wx 72 10 79))
(81 (wc (list (ws 13 (list 63)) (ws 13 (list 62)) (ws 13 (list 61)) (ws 13 (list 60)) (ws 13 (list 59)) (ws 13 (list 58)) (ws 13 (list 57)) (ws 13 (list 56)) (ws 13 (list 55)) (ws 13 (list 54)) (ws 13 (list 53)) (ws 13 (list 52)) (ws 13 (list 51)) (ws 13 (list 50)) (ws 13 (list 49)) (ws 13 (list 48)) (ws 13 (list 47)) (ws 13 (list 46)) (ws 13 (list 45)) (ws 13 (list 44)) (ws 13 (list 43)) (ws 13 (list 42)) (ws 13 (list 41)) (ws 13 (list 40)) (ws 13 (list 39)) (ws 13 (list 38)) (ws 13 (list 37)) (ws 13 (list 36)) (ws 13 (list 35)) (ws 13 (list 34)) (ws 13 (list 33)) (ws 13 (list 32)))))
(82 (wc (list 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51)))
(83 (wc (list 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51)))
(84 (wx 11 (ws 13 (list 16)) (ws 13 (list 48))))
(85 (wx 11 (ws 13 (list 15)) (ws 13 (list 47))))
(86 (wx 11 (ws 13 (list 14)) (ws 13 (list 46))))
(87 (wx 11 (ws 13 (list 13)) (ws 13 (list 45))))
(88 (wx 11 (ws 13 (list 12)) (ws 13 (list 44))))
(89 (wx 11 (ws 13 (list 11)) (ws 13 (list 43))))
(90 (wx 11 (ws 13 (list 10)) (ws 13 (list 42))))
(91 (wx 11 (ws 13 (list 9)) (ws 13 (list 41))))
(92 (wx 11 (ws 13 (list 8)) (ws 13 (list 40))))
(93 (wx 11 (ws 13 (list 7)) (ws 13 (list 39))))
(94 (wx 11 (ws 13 (list 6)) (ws 13 (list 38))))
(95 (wx 11 (ws 13 (list 5)) (ws 13 (list 37))))
(96 (wx 11 (ws 13 (list 4)) (ws 13 (list 36))))
(97 (wx 11 (ws 13 (list 3)) (ws 13 (list 35))))
(98 (wx 11 (ws 13 (list 2)) (ws 13 (list 34))))
(99 (wx 11 (ws 13 (list 1)) (ws 13 (list 33))))
(100 (wx 11 (ws 13 (list 0)) (ws 13 (list 32))))
(101 (wc (list 10 78)))
(102 (wx 58 (bv-const 0 2) 101))
(103 (wx (ws 102 (list 0)) (ws 13 (arange 0 32)) 83))
(104 (wx (ws 102 (list 1)) 81 82))
(105 (wc (list (ws 104 (list 31)) (ws 104 (list 30)) (ws 104 (list 29)) (ws 104 (list 28)) (ws 104 (list 27)) (ws 104 (list 26)) (ws 104 (list 25)) (ws 104 (list 24)) (ws 104 (list 23)) (ws 104 (list 22)) (ws 104 (list 21)) (ws 104 (list 20)) (ws 104 (list 19)) (ws 104 (list 18)) (ws 104 (list 17)) (ws 104 (list 16)) (ws 104 (list 15)) (ws 104 (list 14)) (ws 104 (list 13)) (ws 104 (list 12)) (ws 104 (list 11)) (ws 104 (list 10)) (ws 104 (list 9)) (ws 104 (list 8)) (ws 104 (list 7)) (ws 104 (list 6)) (ws 104 (list 5)) (ws 104 (list 4)) (ws 104 (list 3)) (ws 104 (list 2)) (ws 104 (list 1)) (ws 104 (list 0)) (ws 103 (list 31)) (ws 103 (list 30)) (ws 103 (list 29)) (ws 103 (list 28)) (ws 103 (list 27)) (ws 103 (list 26)) (ws 103 (list 25)) (ws 103 (list 24)) (ws 103 (list 23)) (ws 103 (list 22)) (ws 103 (list 21)) (ws 103 (list 20)) (ws 103 (list 19)) (ws 103 (list 18)) (ws 103 (list 17)) (ws 103 (list 16)) (ws 103 (list 15)) (ws 103 (list 14)) (ws 103 (list 13)) (ws 103 (list 12)) (ws 103 (list 11)) (ws 103 (list 10)) (ws 103 (list 9)) (ws 103 (list 8)) (ws 103 (list 7)) (ws 103 (list 6)) (ws 103 (list 5)) (ws 103 (list 4)) (ws 103 (list 3)) (ws 103 (list 2)) (ws 103 (list 1)) (ws 103 (list 0)))))
(106 (wx 11 (ws 13 (list 31)) (ws 13 (list 63))))
(107 (wx 11 (ws 13 (list 30)) (ws 13 (list 62))))
(108 (wx 11 (ws 13 (list 29)) (ws 13 (list 61))))
(109 (wx 11 (ws 13 (list 28)) (ws 13 (list 60))))
(110 (wx 11 (ws 13 (list 27)) (ws 13 (list 59))))
(111 (wx 11 (ws 13 (list 26)) (ws 13 (list 58))))
(112 (wx 11 (ws 13 (list 25)) (ws 13 (list 57))))
(113 (wx 11 (ws 13 (list 24)) (ws 13 (list 56))))
(114 (wx 11 (ws 13 (list 23)) (ws 13 (list 55))))
(115 (wx 11 (ws 13 (list 22)) (ws 13 (list 54))))
(116 (wx 11 (ws 13 (list 21)) (ws 13 (list 53))))
(117 (wx 11 (ws 13 (list 20)) (ws 13 (list 52))))
(118 (wx 11 (ws 13 (list 19)) (ws 13 (list 51))))
(119 (wx 11 (ws 13 (list 18)) (ws 13 (list 50))))
(120 (wx 11 (ws 13 (list 17)) (ws 13 (list 49))))
(121 (wc (list 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100)))
(8 (<<= 53))
(9 (<<= 77))
(10 (<<= 80))
(11 (<<= 75))
(12 (<<= 76))
(13 (<<= 105))
(4 (<<= 57))
(5 (<<= 121))
(6 (<<= 56))
(7 (<<= 62)))

(define internal-signals (hash 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 32 82 32 83 32 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 2 102 2 103 32 104 32 105 64 106 1 107 1 108 1 109 1 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 32))

(sketch-reroll basejump-netlists/bsg_front_side_bus_hop_out_width_p_32.blif (loops (20 1 32) (56 1 3) (63 1 4) (72 1 3) (84 1 17) (106 1 15)))
