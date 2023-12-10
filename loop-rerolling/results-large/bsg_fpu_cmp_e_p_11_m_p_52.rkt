#lang rosette
(require "../netlist_ir.rkt")
(require "../sketch_gen.rkt")

(def-netlist basejump-netlists/bsg_fpu_cmp_e_p_11_m_p_52.blif
(hash 0 64 1 64)
(hash 2 1 3 64 4 1 5 1 6 1 7 1 8 64 9 1)
(hash)
(10 (w& (ws 0 (list 63)) (ws 1 (list 63))))
(11 (w= 0 1))
(12 (w~ (ws 0 (list 63))))
(13 (w~ (ws 1 (list 63))))
(14 (w& 12 13))
(15 (w~ 11))
(16 (w|| (ws 0 (list 63)) 13))
(17 (w|| 12 (ws 1 (list 63))))
(18 (w|| (ws 0 (list 63)) (ws 1 (list 63))))
(19 (wc (list 18 (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1))))
(20 (wc (list 10 (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1) (bv-const 0 1))))
(21 (w& (ws 0 (list 61)) (ws 0 (list 62))))
(22 (w& (ws 0 (list 60)) 21))
(23 (w& (ws 0 (list 59)) 22))
(24 (w& (ws 0 (list 58)) 23))
(25 (w& (ws 0 (list 57)) 24))
(26 (w& (ws 0 (list 56)) 25))
(27 (w& (ws 0 (list 55)) 26))
(28 (w& (ws 0 (list 54)) 27))
(29 (w& (ws 0 (list 53)) 28))
(30 (w& (ws 0 (list 52)) 29))
(31 (w~ (ws 0 (list 51))))
(32 (w|| (ws 0 (list 61)) (ws 0 (list 62))))
(33 (w|| (ws 0 (list 60)) 32))
(34 (w|| (ws 0 (list 59)) 33))
(35 (w|| (ws 0 (list 58)) 34))
(36 (w|| (ws 0 (list 57)) 35))
(37 (w|| (ws 0 (list 56)) 36))
(38 (w|| (ws 0 (list 55)) 37))
(39 (w|| (ws 0 (list 54)) 38))
(40 (w|| (ws 0 (list 53)) 39))
(41 (w|| (ws 0 (list 52)) 40))
(42 (w~ 41))
(43 (w|| (ws 0 (list 50)) (ws 0 (list 51))))
(44 (w|| (ws 0 (list 49)) 43))
(45 (w|| (ws 0 (list 48)) 44))
(46 (w|| (ws 0 (list 47)) 45))
(47 (w|| (ws 0 (list 46)) 46))
(48 (w|| (ws 0 (list 45)) 47))
(49 (w|| (ws 0 (list 44)) 48))
(50 (w|| (ws 0 (list 43)) 49))
(51 (w|| (ws 0 (list 42)) 50))
(52 (w|| (ws 0 (list 41)) 51))
(53 (w|| (ws 0 (list 40)) 52))
(54 (w|| (ws 0 (list 39)) 53))
(55 (w|| (ws 0 (list 38)) 54))
(56 (w|| (ws 0 (list 37)) 55))
(57 (w|| (ws 0 (list 36)) 56))
(58 (w|| (ws 0 (list 35)) 57))
(59 (w|| (ws 0 (list 34)) 58))
(60 (w|| (ws 0 (list 33)) 59))
(61 (w|| (ws 0 (list 32)) 60))
(62 (w|| (ws 0 (list 31)) 61))
(63 (w|| (ws 0 (list 30)) 62))
(64 (w|| (ws 0 (list 29)) 63))
(65 (w|| (ws 0 (list 28)) 64))
(66 (w|| (ws 0 (list 27)) 65))
(67 (w|| (ws 0 (list 26)) 66))
(68 (w|| (ws 0 (list 25)) 67))
(69 (w|| (ws 0 (list 24)) 68))
(70 (w|| (ws 0 (list 23)) 69))
(71 (w|| (ws 0 (list 22)) 70))
(72 (w|| (ws 0 (list 21)) 71))
(73 (w|| (ws 0 (list 20)) 72))
(74 (w|| (ws 0 (list 19)) 73))
(75 (w|| (ws 0 (list 18)) 74))
(76 (w|| (ws 0 (list 17)) 75))
(77 (w|| (ws 0 (list 16)) 76))
(78 (w|| (ws 0 (list 15)) 77))
(79 (w|| (ws 0 (list 14)) 78))
(80 (w|| (ws 0 (list 13)) 79))
(81 (w|| (ws 0 (list 12)) 80))
(82 (w|| (ws 0 (list 11)) 81))
(83 (w|| (ws 0 (list 10)) 82))
(84 (w|| (ws 0 (list 9)) 83))
(85 (w|| (ws 0 (list 8)) 84))
(86 (w|| (ws 0 (list 7)) 85))
(87 (w|| (ws 0 (list 6)) 86))
(88 (w|| (ws 0 (list 5)) 87))
(89 (w|| (ws 0 (list 4)) 88))
(90 (w|| (ws 0 (list 3)) 89))
(91 (w|| (ws 0 (list 2)) 90))
(92 (w|| (ws 0 (list 1)) 91))
(93 (w|| (ws 0 (list 0)) 92))
(94 (w& 30 93))
(95 (w~ 94))
(96 (w& 94 31))
(97 (w~ 93))
(98 (w& 42 97))
(99 (w& (ws 1 (list 61)) (ws 1 (list 62))))
(100 (w& (ws 1 (list 60)) 99))
(101 (w& (ws 1 (list 59)) 100))
(102 (w& (ws 1 (list 58)) 101))
(103 (w& (ws 1 (list 57)) 102))
(104 (w& (ws 1 (list 56)) 103))
(105 (w& (ws 1 (list 55)) 104))
(106 (w& (ws 1 (list 54)) 105))
(107 (w& (ws 1 (list 53)) 106))
(108 (w& (ws 1 (list 52)) 107))
(109 (w~ (ws 1 (list 51))))
(110 (w|| (ws 1 (list 61)) (ws 1 (list 62))))
(111 (w|| (ws 1 (list 60)) 110))
(112 (w|| (ws 1 (list 59)) 111))
(113 (w|| (ws 1 (list 58)) 112))
(114 (w|| (ws 1 (list 57)) 113))
(115 (w|| (ws 1 (list 56)) 114))
(116 (w|| (ws 1 (list 55)) 115))
(117 (w|| (ws 1 (list 54)) 116))
(118 (w|| (ws 1 (list 53)) 117))
(119 (w|| (ws 1 (list 52)) 118))
(120 (w~ 119))
(121 (w|| (ws 1 (list 50)) (ws 1 (list 51))))
(122 (w|| (ws 1 (list 49)) 121))
(123 (w|| (ws 1 (list 48)) 122))
(124 (w|| (ws 1 (list 47)) 123))
(125 (w|| (ws 1 (list 46)) 124))
(126 (w|| (ws 1 (list 45)) 125))
(127 (w|| (ws 1 (list 44)) 126))
(128 (w|| (ws 1 (list 43)) 127))
(129 (w|| (ws 1 (list 42)) 128))
(130 (w|| (ws 1 (list 41)) 129))
(131 (w|| (ws 1 (list 40)) 130))
(132 (w|| (ws 1 (list 39)) 131))
(133 (w|| (ws 1 (list 38)) 132))
(134 (w|| (ws 1 (list 37)) 133))
(135 (w|| (ws 1 (list 36)) 134))
(136 (w|| (ws 1 (list 35)) 135))
(137 (w|| (ws 1 (list 34)) 136))
(138 (w|| (ws 1 (list 33)) 137))
(139 (w|| (ws 1 (list 32)) 138))
(140 (w|| (ws 1 (list 31)) 139))
(141 (w|| (ws 1 (list 30)) 140))
(142 (w|| (ws 1 (list 29)) 141))
(143 (w|| (ws 1 (list 28)) 142))
(144 (w|| (ws 1 (list 27)) 143))
(145 (w|| (ws 1 (list 26)) 144))
(146 (w|| (ws 1 (list 25)) 145))
(147 (w|| (ws 1 (list 24)) 146))
(148 (w|| (ws 1 (list 23)) 147))
(149 (w|| (ws 1 (list 22)) 148))
(150 (w|| (ws 1 (list 21)) 149))
(151 (w|| (ws 1 (list 20)) 150))
(152 (w|| (ws 1 (list 19)) 151))
(153 (w|| (ws 1 (list 18)) 152))
(154 (w|| (ws 1 (list 17)) 153))
(155 (w|| (ws 1 (list 16)) 154))
(156 (w|| (ws 1 (list 15)) 155))
(157 (w|| (ws 1 (list 14)) 156))
(158 (w|| (ws 1 (list 13)) 157))
(159 (w|| (ws 1 (list 12)) 158))
(160 (w|| (ws 1 (list 11)) 159))
(161 (w|| (ws 1 (list 10)) 160))
(162 (w|| (ws 1 (list 9)) 161))
(163 (w|| (ws 1 (list 8)) 162))
(164 (w|| (ws 1 (list 7)) 163))
(165 (w|| (ws 1 (list 6)) 164))
(166 (w|| (ws 1 (list 5)) 165))
(167 (w|| (ws 1 (list 4)) 166))
(168 (w|| (ws 1 (list 3)) 167))
(169 (w|| (ws 1 (list 2)) 168))
(170 (w|| (ws 1 (list 1)) 169))
(171 (w|| (ws 1 (list 0)) 170))
(172 (w& 108 171))
(173 (w& 94 172))
(174 (w~ 172))
(175 (w& 94 174))
(176 (w|| 175 173))
(177 (w& 95 172))
(178 (w|| 177 176))
(179 (w|| 94 172))
(180 (wx 179 (bv-const 0 1) (bv-const 1 1)))
(181 (w~ 179))
(182 (w& 172 109))
(183 (wx 177 (bv-const 0 1) 182))
(184 (wx 175 183 96))
(185 (w|| 96 182))
(186 (wx 179 (bv-const 0 1) 185))
(187 (wx 173 184 185))
(188 (w~ 171))
(189 (w& 120 188))
(190 (w& 98 189))
(191 (w~ 190))
(192 (w|| 190 179))
(193 (wx 192 11 (bv-const 0 1)))
(194 (w& 190 181))
(195 (wx 194 193 (bv-const 1 1)))
(196 (wx 179 195 (bv-const 0 1)))
(197 (w< (ws 0 (arange 0 63)) (ws 1 (arange 0 63))))
(198 (w~ 197))
(199 (w& 198 15))
(200 (wx 10 (bv-const 0 1) 199))
(201 (wx 17 (bv-const 1 1) 200))
(202 (wx 16 (bv-const 0 1) 201))
(203 (w|| 198 11))
(204 (wx 10 (bv-const 0 1) 203))
(205 (wx 17 (bv-const 1 1) 204))
(206 (wx 16 (bv-const 0 1) 205))
(207 (w|| 197 11))
(208 (wx 14 206 207))
(209 (wx 192 208 (bv-const 0 1)))
(210 (wx 194 209 (bv-const 1 1)))
(211 (wx 179 210 (bv-const 0 1)))
(212 (wx 14 202 197))
(213 (wx 192 212 (bv-const 0 1)))
(214 (wx 194 213 (bv-const 0 1)))
(215 (wx 179 214 (bv-const 0 1)))
(216 (w& 215 191))
(217 (w|| 215 190))
(218 (wx 217 1 (bv-const 0 64)))
(219 (wx 216 218 0))
(220 (wx 190 219 19))
(221 (wx 178 220 (bv-const 0 64)))
(222 (wx 177 221 0))
(223 (wx 175 222 1))
(224 (wx 173 223 (bv-const 9221120237041090560 64)))
(225 (wx 217 0 (bv-const 0 64)))
(226 (wx 216 225 1))
(227 (wx 190 226 20))
(228 (wx 178 227 (bv-const 0 64)))
(229 (wx 177 228 0))
(230 (wx 175 229 1))
(231 (wx 173 230 (bv-const 9221120237041090560 64)))
(2 (<<= 180))
(3 (<<= 231))
(4 (<<= 215))
(5 (<<= 196))
(6 (<<= 211))
(7 (<<= 186))
(8 (<<= 224))
(9 (<<= 187)))

(define internal-signals (hash 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 64 20 64 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1 137 1 138 1 139 1 140 1 141 1 142 1 143 1 144 1 145 1 146 1 147 1 148 1 149 1 150 1 151 1 152 1 153 1 154 1 155 1 156 1 157 1 158 1 159 1 160 1 161 1 162 1 163 1 164 1 165 1 166 1 167 1 168 1 169 1 170 1 171 1 172 1 173 1 174 1 175 1 176 1 177 1 178 1 179 1 180 1 181 1 182 1 183 1 184 1 185 1 186 1 187 1 188 1 189 1 190 1 191 1 192 1 193 1 194 1 195 1 196 1 197 1 198 1 199 1 200 1 201 1 202 1 203 1 204 1 205 1 206 1 207 1 208 1 209 1 210 1 211 1 212 1 213 1 214 1 215 1 216 1 217 1 218 64 219 64 220 64 221 64 222 64 223 64 224 64 225 64 226 64 227 64 228 64 229 64 230 64 231 64))

(sketch-reroll basejump-netlists/bsg_fpu_cmp_e_p_11_m_p_52.blif (loops (22 1 9) (33 1 9) (44 1 50) (100 1 9) (111 1 9) (122 1 50) (200 1 3) (204 1 3) (209 1 3) (213 1 3)))
