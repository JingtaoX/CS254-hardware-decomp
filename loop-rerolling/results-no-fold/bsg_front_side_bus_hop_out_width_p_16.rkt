#lang rosette
(require "../netlist_ir.rkt")
(require "../sketch_gen.rkt")

(def-netlist basejump-netlists/bsg_front_side_bus_hop_out_width_p_16.blif
(hash 0 1 1 32 2 2 3 1)
(hash 4 1 5 16 6 1 7 1)
(hash 8 1 9 1 10 1 11 1 12 1 13 32)
(14 (ws 2 (list 0)))
(15 (ws 2 (list 1)))
(16 (ws 1 (list 0)))
(17 (ws 1 (list 1)))
(18 (ws 1 (list 2)))
(19 (ws 1 (list 3)))
(20 (ws 1 (list 4)))
(21 (ws 1 (list 5)))
(22 (ws 1 (list 6)))
(23 (ws 1 (list 7)))
(24 (ws 1 (list 8)))
(25 (ws 1 (list 9)))
(26 (ws 1 (list 10)))
(27 (ws 1 (list 11)))
(28 (ws 1 (list 12)))
(29 (ws 1 (list 13)))
(30 (ws 1 (list 14)))
(31 (ws 1 (list 15)))
(32 (ws 1 (list 16)))
(33 (ws 1 (list 17)))
(34 (ws 1 (list 18)))
(35 (ws 1 (list 19)))
(36 (ws 1 (list 20)))
(37 (ws 1 (list 21)))
(38 (ws 1 (list 22)))
(39 (ws 1 (list 23)))
(40 (ws 1 (list 24)))
(41 (ws 1 (list 25)))
(42 (ws 1 (list 26)))
(43 (ws 1 (list 27)))
(44 (ws 1 (list 28)))
(45 (ws 1 (list 29)))
(46 (ws 1 (list 30)))
(47 (ws 1 (list 31)))
(48 (w~ 14))
(49 (w~ 8))
(50 (w|| 48 8))
(51 (w~ 50))
(52 (w& 15 51))
(53 (w|| 15 14))
(54 (wx 50 31 47))
(55 (wx 50 30 46))
(56 (wx 50 29 45))
(57 (wx 50 28 44))
(58 (wx 50 27 43))
(59 (wx 50 26 42))
(60 (wx 50 25 41))
(61 (wx 50 24 40))
(62 (wx 50 23 39))
(63 (wx 50 22 38))
(64 (wx 50 21 37))
(65 (wx 50 20 36))
(66 (wx 50 19 35))
(67 (wx 50 18 34))
(68 (wx 50 17 33))
(69 (wx 50 16 32))
(70 (wx 9 52 8))
(71 (wx 3 70 (bv-const 0 1)))
(72 (w~ 9))
(73 (w& 72 15))
(74 (w& 73 50))
(75 (w& 72 49))
(76 (w& 53 72))
(77 (w~ 11))
(78 (w~ 76))
(79 (w& 12 78))
(80 (w~ 12))
(81 (w& 80 0))
(82 (w& 72 81))
(83 (w& 82 78))
(84 (w& 80 76))
(85 (w~ 81))
(86 (w& 84 85))
(87 (w& 9 85))
(88 (w|| 79 83))
(89 (w|| 86 87))
(90 (wx 3 76 (bv-const 1 1)))
(91 (wx 3 81 (bv-const 1 1)))
(92 (wx 3 77 (bv-const 0 1)))
(93 (wx 91 11 92))
(94 (wx 3 88 (bv-const 1 1)))
(95 (wx 3 89 (bv-const 0 1)))
(96 (w~ 10))
(97 (wx 3 96 (bv-const 0 1)))
(98 (wx 90 10 97))
(99 (ws 13 (list 0)))
(100 (ws 13 (list 1)))
(101 (ws 13 (list 2)))
(102 (ws 13 (list 3)))
(103 (ws 13 (list 4)))
(104 (ws 13 (list 5)))
(105 (ws 13 (list 6)))
(106 (ws 13 (list 7)))
(107 (ws 13 (list 8)))
(108 (ws 13 (list 9)))
(109 (ws 13 (list 10)))
(110 (ws 13 (list 11)))
(111 (ws 13 (list 12)))
(112 (ws 13 (list 13)))
(113 (ws 13 (list 14)))
(114 (ws 13 (list 15)))
(115 (ws 13 (list 16)))
(116 (ws 13 (list 17)))
(117 (ws 13 (list 18)))
(118 (ws 13 (list 19)))
(119 (ws 13 (list 20)))
(120 (ws 13 (list 21)))
(121 (ws 13 (list 22)))
(122 (ws 13 (list 23)))
(123 (ws 13 (list 24)))
(124 (ws 13 (list 25)))
(125 (ws 13 (list 26)))
(126 (ws 13 (list 27)))
(127 (ws 13 (list 28)))
(128 (ws 13 (list 29)))
(129 (ws 13 (list 30)))
(130 (ws 13 (list 31)))
(131 (wc (list 130 129 128 127 126 125 124 123 122 121 120 119 118 117 116 115)))
(132 (wc (list 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69)))
(133 (ws 13 (arange 0 16)))
(134 (wc (list 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69)))
(135 (wx 11 99 115))
(136 (wc (list 10 96)))
(137 (wx 76 (bv-const 0 2) 136))
(138 (ws 137 (list 0)))
(139 (wx 138 133 134))
(140 (ws 139 (list 0)))
(141 (ws 139 (list 1)))
(142 (ws 139 (list 2)))
(143 (ws 139 (list 3)))
(144 (ws 139 (list 4)))
(145 (ws 139 (list 5)))
(146 (ws 139 (list 6)))
(147 (ws 139 (list 7)))
(148 (ws 139 (list 8)))
(149 (ws 139 (list 9)))
(150 (ws 139 (list 10)))
(151 (ws 139 (list 11)))
(152 (ws 139 (list 12)))
(153 (ws 139 (list 13)))
(154 (ws 139 (list 14)))
(155 (ws 139 (list 15)))
(156 (ws 137 (list 1)))
(157 (wx 156 131 132))
(158 (ws 157 (list 0)))
(159 (ws 157 (list 1)))
(160 (ws 157 (list 2)))
(161 (ws 157 (list 3)))
(162 (ws 157 (list 4)))
(163 (ws 157 (list 5)))
(164 (ws 157 (list 6)))
(165 (ws 157 (list 7)))
(166 (ws 157 (list 8)))
(167 (ws 157 (list 9)))
(168 (ws 157 (list 10)))
(169 (ws 157 (list 11)))
(170 (ws 157 (list 12)))
(171 (ws 157 (list 13)))
(172 (ws 157 (list 14)))
(173 (ws 157 (list 15)))
(174 (wc (list 173 172 171 170 169 168 167 166 165 164 163 162 161 160 159 158 155 154 153 152 151 150 149 148 147 146 145 144 143 142 141 140)))
(175 (wx 11 114 130))
(176 (wx 11 113 129))
(177 (wx 11 112 128))
(178 (wx 11 111 127))
(179 (wx 11 110 126))
(180 (wx 11 109 125))
(181 (wx 11 108 124))
(182 (wx 11 107 123))
(183 (wx 11 106 122))
(184 (wx 11 105 121))
(185 (wx 11 104 120))
(186 (wx 11 103 119))
(187 (wx 11 102 118))
(188 (wx 11 101 117))
(189 (wx 11 100 116))
(190 (wc (list 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 135)))
(8 (<<= 71))
(9 (<<= 95))
(10 (<<= 98))
(11 (<<= 93))
(12 (<<= 94))
(13 (<<= 174))
(4 (<<= 80))
(5 (<<= 190))
(6 (<<= 74))
(7 (<<= 75)))

(define internal-signals (hash 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 16 132 16 133 16 134 16 135 1 136 2 137 2 138 1 139 16 140 1 141 1 142 1 143 1 144 1 145 1 146 1 147 1 148 1 149 1 150 1 151 1 152 1 153 1 154 1 155 1 156 1 157 16 158 1 159 1 160 1 161 1 162 1 163 1 164 1 165 1 166 1 167 1 168 1 169 1 170 1 171 1 172 1 173 1 174 32 175 1 176 1 177 1 178 1 179 1 180 1 181 1 182 1 183 1 184 1 185 1 186 1 187 1 188 1 189 1 190 16))

(sketch-reroll basejump-netlists/bsg_front_side_bus_hop_out_width_p_16.blif (loops (14 1 34) (54 1 17) (73 1 4) (81 1 4) (90 1 3) (99 1 32) (140 1 17) (158 1 16) (175 1 15)))
