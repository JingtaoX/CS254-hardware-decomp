#lang rosette
(require "../netlist_ir.rkt")
(require "../sketch_gen.rkt")

(def-netlist basejump-netlists/bsg_nand_width_p_64.blif
(hash 0 64 1 64)
(hash 2 64)
(hash)
(3 (w& (ws 0 (list 34)) (ws 1 (list 34))))
(4 (w& (ws 0 (list 33)) (ws 1 (list 33))))
(5 (w& (ws 0 (list 32)) (ws 1 (list 32))))
(6 (w& (ws 0 (list 31)) (ws 1 (list 31))))
(7 (w& (ws 0 (list 30)) (ws 1 (list 30))))
(8 (w& (ws 0 (list 29)) (ws 1 (list 29))))
(9 (w& (ws 0 (list 28)) (ws 1 (list 28))))
(10 (w& (ws 0 (list 27)) (ws 1 (list 27))))
(11 (w& (ws 0 (list 26)) (ws 1 (list 26))))
(12 (w& (ws 0 (list 25)) (ws 1 (list 25))))
(13 (w& (ws 0 (list 24)) (ws 1 (list 24))))
(14 (w& (ws 0 (list 23)) (ws 1 (list 23))))
(15 (w& (ws 0 (list 22)) (ws 1 (list 22))))
(16 (w& (ws 0 (list 21)) (ws 1 (list 21))))
(17 (w& (ws 0 (list 20)) (ws 1 (list 20))))
(18 (w& (ws 0 (list 19)) (ws 1 (list 19))))
(19 (w& (ws 0 (list 18)) (ws 1 (list 18))))
(20 (w& (ws 0 (list 17)) (ws 1 (list 17))))
(21 (w& (ws 0 (list 16)) (ws 1 (list 16))))
(22 (w& (ws 0 (list 15)) (ws 1 (list 15))))
(23 (w& (ws 0 (list 14)) (ws 1 (list 14))))
(24 (w& (ws 0 (list 13)) (ws 1 (list 13))))
(25 (w& (ws 0 (list 12)) (ws 1 (list 12))))
(26 (w& (ws 0 (list 11)) (ws 1 (list 11))))
(27 (w& (ws 0 (list 10)) (ws 1 (list 10))))
(28 (w& (ws 0 (list 9)) (ws 1 (list 9))))
(29 (w& (ws 0 (list 8)) (ws 1 (list 8))))
(30 (w& (ws 0 (list 7)) (ws 1 (list 7))))
(31 (w& (ws 0 (list 6)) (ws 1 (list 6))))
(32 (w& (ws 0 (list 5)) (ws 1 (list 5))))
(33 (w& (ws 0 (list 4)) (ws 1 (list 4))))
(34 (w& (ws 0 (list 3)) (ws 1 (list 3))))
(35 (w& (ws 0 (list 2)) (ws 1 (list 2))))
(36 (w& (ws 0 (list 1)) (ws 1 (list 1))))
(37 (w& (ws 0 (list 0)) (ws 1 (list 0))))
(38 (w& (ws 0 (list 63)) (ws 1 (list 63))))
(39 (w& (ws 0 (list 62)) (ws 1 (list 62))))
(40 (w& (ws 0 (list 61)) (ws 1 (list 61))))
(41 (w& (ws 0 (list 60)) (ws 1 (list 60))))
(42 (w& (ws 0 (list 59)) (ws 1 (list 59))))
(43 (w& (ws 0 (list 58)) (ws 1 (list 58))))
(44 (w& (ws 0 (list 57)) (ws 1 (list 57))))
(45 (w& (ws 0 (list 56)) (ws 1 (list 56))))
(46 (w& (ws 0 (list 55)) (ws 1 (list 55))))
(47 (w& (ws 0 (list 54)) (ws 1 (list 54))))
(48 (w& (ws 0 (list 53)) (ws 1 (list 53))))
(49 (w& (ws 0 (list 52)) (ws 1 (list 52))))
(50 (w& (ws 0 (list 51)) (ws 1 (list 51))))
(51 (w& (ws 0 (list 50)) (ws 1 (list 50))))
(52 (w& (ws 0 (list 49)) (ws 1 (list 49))))
(53 (w& (ws 0 (list 48)) (ws 1 (list 48))))
(54 (w& (ws 0 (list 47)) (ws 1 (list 47))))
(55 (w& (ws 0 (list 46)) (ws 1 (list 46))))
(56 (w& (ws 0 (list 45)) (ws 1 (list 45))))
(57 (w& (ws 0 (list 44)) (ws 1 (list 44))))
(58 (w& (ws 0 (list 43)) (ws 1 (list 43))))
(59 (w& (ws 0 (list 42)) (ws 1 (list 42))))
(60 (w& (ws 0 (list 41)) (ws 1 (list 41))))
(61 (w& (ws 0 (list 40)) (ws 1 (list 40))))
(62 (w& (ws 0 (list 39)) (ws 1 (list 39))))
(63 (w& (ws 0 (list 38)) (ws 1 (list 38))))
(64 (w& (ws 0 (list 37)) (ws 1 (list 37))))
(65 (w& (ws 0 (list 36)) (ws 1 (list 36))))
(66 (w& (ws 0 (list 35)) (ws 1 (list 35))))
(67 (w~ 3))
(68 (w~ 4))
(69 (w~ 5))
(70 (w~ 6))
(71 (w~ 7))
(72 (w~ 8))
(73 (w~ 9))
(74 (w~ 10))
(75 (w~ 11))
(76 (w~ 12))
(77 (w~ 13))
(78 (w~ 14))
(79 (w~ 15))
(80 (w~ 16))
(81 (w~ 17))
(82 (w~ 18))
(83 (w~ 19))
(84 (w~ 20))
(85 (w~ 21))
(86 (w~ 22))
(87 (w~ 23))
(88 (w~ 24))
(89 (w~ 25))
(90 (w~ 26))
(91 (w~ 27))
(92 (w~ 28))
(93 (w~ 29))
(94 (w~ 30))
(95 (w~ 31))
(96 (w~ 32))
(97 (w~ 33))
(98 (w~ 34))
(99 (w~ 35))
(100 (w~ 36))
(101 (w~ 37))
(102 (w~ 38))
(103 (w~ 39))
(104 (w~ 40))
(105 (w~ 41))
(106 (w~ 42))
(107 (w~ 43))
(108 (w~ 44))
(109 (w~ 45))
(110 (w~ 46))
(111 (w~ 47))
(112 (w~ 48))
(113 (w~ 49))
(114 (w~ 50))
(115 (w~ 51))
(116 (w~ 52))
(117 (w~ 53))
(118 (w~ 54))
(119 (w~ 55))
(120 (w~ 56))
(121 (w~ 57))
(122 (w~ 58))
(123 (w~ 59))
(124 (w~ 60))
(125 (w~ 61))
(126 (w~ 62))
(127 (w~ 63))
(128 (w~ 64))
(129 (w~ 65))
(130 (w~ 66))
(131 (wc (list 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101)))
(2 (<<= 131)))

(define internal-signals (hash 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 64))

(sketch-reroll basejump-netlists/bsg_nand_width_p_64.blif (loops (3 1 64) (67 1 64)))
