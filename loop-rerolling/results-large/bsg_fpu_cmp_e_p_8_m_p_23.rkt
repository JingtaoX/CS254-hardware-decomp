#lang rosette
(require "../netlist_ir.rkt")
(require "../sketch_gen.rkt")

(def-netlist basejump-netlists/bsg_fpu_cmp_e_p_8_m_p_23.blif
(hash 0 32 1 32)
(hash 2 1 3 1 4 1 5 1 6 1 7 32 8 1 9 32)
(hash)
(10 (w& (ws 0 (list 31)) (ws 1 (list 31))))
(11 (w= 0 1))
(12 (w~ (ws 0 (list 31))))
(13 (w~ (ws 1 (list 31))))
(14 (w& 12 13))
(15 (w~ 11))
(16 (w|| (ws 0 (list 31)) 13))
(17 (w|| 12 (ws 1 (list 31))))
(18 (w|| (ws 0 (list 31)) (ws 1 (list 31))))
(19 (wc (list 18 (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1))))
(20 (wc (list 10 (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1))))
(21 (w& (ws 0 (list 29)) (ws 0 (list 30))))
(22 (w& (ws 0 (list 28)) 21))
(23 (w& (ws 0 (list 27)) 22))
(24 (w& (ws 0 (list 26)) 23))
(25 (w& (ws 0 (list 25)) 24))
(26 (w& (ws 0 (list 24)) 25))
(27 (w& (ws 0 (list 23)) 26))
(28 (w~ (ws 0 (list 22))))
(29 (w|| (ws 0 (list 29)) (ws 0 (list 30))))
(30 (w|| (ws 0 (list 28)) 29))
(31 (w|| (ws 0 (list 27)) 30))
(32 (w|| (ws 0 (list 26)) 31))
(33 (w|| (ws 0 (list 25)) 32))
(34 (w|| (ws 0 (list 24)) 33))
(35 (w|| (ws 0 (list 23)) 34))
(36 (w~ 35))
(37 (w|| (ws 0 (list 21)) (ws 0 (list 22))))
(38 (w|| (ws 0 (list 20)) 37))
(39 (w|| (ws 0 (list 19)) 38))
(40 (w|| (ws 0 (list 18)) 39))
(41 (w|| (ws 0 (list 17)) 40))
(42 (w|| (ws 0 (list 16)) 41))
(43 (w|| (ws 0 (list 15)) 42))
(44 (w|| (ws 0 (list 14)) 43))
(45 (w|| (ws 0 (list 13)) 44))
(46 (w|| (ws 0 (list 12)) 45))
(47 (w|| (ws 0 (list 11)) 46))
(48 (w|| (ws 0 (list 10)) 47))
(49 (w|| (ws 0 (list 9)) 48))
(50 (w|| (ws 0 (list 8)) 49))
(51 (w|| (ws 0 (list 7)) 50))
(52 (w|| (ws 0 (list 6)) 51))
(53 (w|| (ws 0 (list 5)) 52))
(54 (w|| (ws 0 (list 4)) 53))
(55 (w|| (ws 0 (list 3)) 54))
(56 (w|| (ws 0 (list 2)) 55))
(57 (w|| (ws 0 (list 1)) 56))
(58 (w|| (ws 0 (list 0)) 57))
(59 (w& 27 58))
(60 (w~ 59))
(61 (w& 59 28))
(62 (w~ 58))
(63 (w& 36 62))
(64 (w& (ws 1 (list 29)) (ws 1 (list 30))))
(65 (w& (ws 1 (list 28)) 64))
(66 (w& (ws 1 (list 27)) 65))
(67 (w& (ws 1 (list 26)) 66))
(68 (w& (ws 1 (list 25)) 67))
(69 (w& (ws 1 (list 24)) 68))
(70 (w& (ws 1 (list 23)) 69))
(71 (w~ (ws 1 (list 22))))
(72 (w|| (ws 1 (list 29)) (ws 1 (list 30))))
(73 (w|| (ws 1 (list 28)) 72))
(74 (w|| (ws 1 (list 27)) 73))
(75 (w|| (ws 1 (list 26)) 74))
(76 (w|| (ws 1 (list 25)) 75))
(77 (w|| (ws 1 (list 24)) 76))
(78 (w|| (ws 1 (list 23)) 77))
(79 (w~ 78))
(80 (w|| (ws 1 (list 21)) (ws 1 (list 22))))
(81 (w|| (ws 1 (list 20)) 80))
(82 (w|| (ws 1 (list 19)) 81))
(83 (w|| (ws 1 (list 18)) 82))
(84 (w|| (ws 1 (list 17)) 83))
(85 (w|| (ws 1 (list 16)) 84))
(86 (w|| (ws 1 (list 15)) 85))
(87 (w|| (ws 1 (list 14)) 86))
(88 (w|| (ws 1 (list 13)) 87))
(89 (w|| (ws 1 (list 12)) 88))
(90 (w|| (ws 1 (list 11)) 89))
(91 (w|| (ws 1 (list 10)) 90))
(92 (w|| (ws 1 (list 9)) 91))
(93 (w|| (ws 1 (list 8)) 92))
(94 (w|| (ws 1 (list 7)) 93))
(95 (w|| (ws 1 (list 6)) 94))
(96 (w|| (ws 1 (list 5)) 95))
(97 (w|| (ws 1 (list 4)) 96))
(98 (w|| (ws 1 (list 3)) 97))
(99 (w|| (ws 1 (list 2)) 98))
(100 (w|| (ws 1 (list 1)) 99))
(101 (w|| (ws 1 (list 0)) 100))
(102 (w& 70 101))
(103 (w& 59 102))
(104 (w~ 102))
(105 (w& 59 104))
(106 (w|| 105 103))
(107 (w& 60 102))
(108 (w|| 107 106))
(109 (w|| 59 102))
(110 (wx 109 (bv-const 0 1) (bv-const 1 1)))
(111 (w~ 109))
(112 (w& 102 71))
(113 (wx 107 (bv-const 0 1) 112))
(114 (wx 105 113 61))
(115 (w|| 61 112))
(116 (wx 109 (bv-const 0 1) 115))
(117 (wx 103 114 115))
(118 (w~ 101))
(119 (w& 79 118))
(120 (w& 63 119))
(121 (w~ 120))
(122 (w|| 120 109))
(123 (wx 122 11 (bv-const 0 1)))
(124 (w& 120 111))
(125 (wx 124 123 (bv-const 1 1)))
(126 (wx 109 125 (bv-const 0 1)))
(127 (w< (ws 0 (arange 0 31)) (ws 1 (arange 0 31))))
(128 (w~ 127))
(129 (w& 128 15))
(130 (wx 10 (bv-const 0 1) 129))
(131 (wx 17 (bv-const 1 1) 130))
(132 (wx 16 (bv-const 0 1) 131))
(133 (w|| 128 11))
(134 (wx 10 (bv-const 0 1) 133))
(135 (wx 17 (bv-const 1 1) 134))
(136 (wx 16 (bv-const 0 1) 135))
(137 (w|| 127 11))
(138 (wx 14 136 137))
(139 (wx 122 138 (bv-const 0 1)))
(140 (wx 124 139 (bv-const 1 1)))
(141 (wx 109 140 (bv-const 0 1)))
(142 (wx 14 132 127))
(143 (wx 122 142 (bv-const 0 1)))
(144 (wx 124 143 (bv-const 0 1)))
(145 (wx 109 144 (bv-const 0 1)))
(146 (w& 145 121))
(147 (w|| 145 120))
(148 (wx 147 1 (bv-const 0 32)))
(149 (wx 146 148 0))
(150 (wx 120 149 19))
(151 (wx 108 150 (bv-const 0 32)))
(152 (wx 107 151 0))
(153 (wx 105 152 1))
(154 (wx 103 153 (bv-const 2143289344 32)))
(155 (wx 147 0 (bv-const 0 32)))
(156 (wx 146 155 1))
(157 (wx 120 156 20))
(158 (wx 108 157 (bv-const 0 32)))
(159 (wx 107 158 0))
(160 (wx 105 159 1))
(161 (wx 103 160 (bv-const 2143289344 32)))
(2 (<<= 116))
(3 (<<= 126))
(4 (<<= 145))
(5 (<<= 141))
(6 (<<= 110))
(7 (<<= 154))
(8 (<<= 117))
(9 (<<= 161)))

(define internal-signals (hash 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 32 20 32 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1 137 1 138 1 139 1 140 1 141 1 142 1 143 1 144 1 145 1 146 1 147 1 148 32 149 32 150 32 151 32 152 32 153 32 154 32 155 32 156 32 157 32 158 32 159 32 160 32 161 32))

(sketch-reroll basejump-netlists/bsg_fpu_cmp_e_p_8_m_p_23.blif (loops (22 1 6) (30 1 6) (38 1 21) (65 1 6) (73 1 6) (81 1 21) (130 1 3) (134 1 3) (139 1 3) (143 1 3)))
