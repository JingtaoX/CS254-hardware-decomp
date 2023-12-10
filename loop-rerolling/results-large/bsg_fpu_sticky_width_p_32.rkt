#lang rosette
(require "../netlist_ir.rkt")
(require "../sketch_gen.rkt")

(def-netlist basejump-netlists/bsg_fpu_sticky_width_p_32.blif
(hash 0 6 1 32)
(hash 2 1)
(hash)
(3 (w& (ws 0 (list 4)) (ws 0 (list 3))))
(4 (w& (ws 0 (list 2)) (ws 0 (list 0))))
(5 (w& 3 4))
(6 (w& 5 (ws 0 (list 1))))
(7 (w> 0 (bv-const 32 6)))
(8 (w~ (ws 0 (list 5))))
(9 (w~ (ws 0 (list 4))))
(10 (w& 8 9))
(11 (w& 9 (ws 0 (list 3))))
(12 (w& 11 4))
(13 (w& 12 (ws 0 (list 1))))
(14 (w~ (ws 0 (list 3))))
(15 (w& 10 14))
(16 (w& 9 14))
(17 (w& 16 4))
(18 (w& 17 (ws 0 (list 1))))
(19 (w& (ws 0 (list 4)) 14))
(20 (w& 19 4))
(21 (w& 20 (ws 0 (list 1))))
(22 (w~ (ws 0 (list 2))))
(23 (w& 15 22))
(24 (w& 22 (ws 0 (list 0))))
(25 (w& 3 24))
(26 (w& 25 (ws 0 (list 1))))
(27 (w& 11 24))
(28 (w& 27 (ws 0 (list 1))))
(29 (w& 16 24))
(30 (w& 29 (ws 0 (list 1))))
(31 (w& 19 24))
(32 (w& 31 (ws 0 (list 1))))
(33 (w~ (ws 0 (list 1))))
(34 (w& 5 33))
(35 (w& 17 33))
(36 (w& 25 33))
(37 (w& 27 33))
(38 (w& 29 33))
(39 (w& 12 33))
(40 (w& 20 33))
(41 (w& 31 33))
(42 (w~ (ws 0 (list 0))))
(43 (w& 23 42))
(44 (w& 43 33))
(45 (w& 22 42))
(46 (w& 16 45))
(47 (w& 46 (ws 0 (list 1))))
(48 (w& 3 45))
(49 (w& 48 (ws 0 (list 1))))
(50 (w& 48 33))
(51 (w& 19 45))
(52 (w& 51 33))
(53 (w& 51 (ws 0 (list 1))))
(54 (w& 11 45))
(55 (w& 54 33))
(56 (w& 54 (ws 0 (list 1))))
(57 (w& (ws 0 (list 2)) 42))
(58 (w& 16 57))
(59 (w& 58 (ws 0 (list 1))))
(60 (w& 58 33))
(61 (w& 3 57))
(62 (w& 61 33))
(63 (w& 61 (ws 0 (list 1))))
(64 (w& 11 57))
(65 (w& 64 (ws 0 (list 1))))
(66 (w& 64 33))
(67 (w& 19 57))
(68 (w& 67 33))
(69 (w& 67 (ws 0 (list 1))))
(70 (w|| (ws 1 (list 1)) (ws 1 (list 0))))
(71 (w|| (ws 1 (list 2)) (ws 1 (list 1))))
(72 (w|| (ws 1 (list 3)) (ws 1 (list 2))))
(73 (w|| (ws 1 (list 4)) (ws 1 (list 3))))
(74 (w|| (ws 1 (list 5)) (ws 1 (list 4))))
(75 (w|| (ws 1 (list 6)) (ws 1 (list 5))))
(76 (w|| (ws 1 (list 7)) (ws 1 (list 6))))
(77 (w|| (ws 1 (list 8)) (ws 1 (list 7))))
(78 (w|| (ws 1 (list 9)) (ws 1 (list 8))))
(79 (w|| (ws 1 (list 10)) (ws 1 (list 9))))
(80 (w|| (ws 1 (list 11)) (ws 1 (list 10))))
(81 (w|| (ws 1 (list 12)) (ws 1 (list 11))))
(82 (w|| (ws 1 (list 13)) (ws 1 (list 12))))
(83 (w|| (ws 1 (list 14)) (ws 1 (list 13))))
(84 (w|| (ws 1 (list 15)) (ws 1 (list 14))))
(85 (w|| (ws 1 (list 16)) (ws 1 (list 15))))
(86 (w|| (ws 1 (list 17)) (ws 1 (list 16))))
(87 (w|| (ws 1 (list 18)) (ws 1 (list 17))))
(88 (w|| 87 85))
(89 (w|| (ws 1 (list 19)) (ws 1 (list 18))))
(90 (w|| 89 86))
(91 (w|| (ws 1 (list 20)) (ws 1 (list 19))))
(92 (w|| 91 87))
(93 (w|| (ws 1 (list 21)) (ws 1 (list 20))))
(94 (w|| 93 89))
(95 (w|| (ws 1 (list 22)) (ws 1 (list 21))))
(96 (w|| 95 91))
(97 (w|| 96 88))
(98 (w|| (ws 1 (list 23)) (ws 1 (list 22))))
(99 (w|| 98 93))
(100 (w|| 99 90))
(101 (w|| (ws 1 (list 24)) (ws 1 (list 23))))
(102 (w|| 101 95))
(103 (w|| 102 92))
(104 (w|| (ws 1 (list 25)) (ws 1 (list 24))))
(105 (w|| 104 98))
(106 (w|| 105 94))
(107 (w|| (ws 1 (list 26)) (ws 1 (list 25))))
(108 (w|| 107 101))
(109 (w|| 108 96))
(110 (w|| (ws 1 (list 27)) (ws 1 (list 26))))
(111 (w|| 110 104))
(112 (w|| 111 99))
(113 (w|| (ws 1 (list 28)) (ws 1 (list 27))))
(114 (w|| 113 107))
(115 (w|| 114 102))
(116 (w|| (ws 1 (list 29)) (ws 1 (list 28))))
(117 (w|| 116 110))
(118 (w|| 117 105))
(119 (w|| (ws 1 (list 30)) (ws 1 (list 29))))
(120 (w|| 119 113))
(121 (w|| 120 108))
(122 (w|| 121 97))
(123 (w|| (ws 1 (list 31)) (ws 1 (list 30))))
(124 (w|| 123 116))
(125 (w|| 124 111))
(126 (w|| 125 100))
(127 (w|| 71 (ws 1 (list 0))))
(128 (w|| 72 70))
(129 (w|| 73 71))
(130 (w|| 129 (ws 1 (list 0))))
(131 (w|| 74 72))
(132 (w|| 131 70))
(133 (w|| 75 73))
(134 (w|| 133 127))
(135 (w|| 76 74))
(136 (w|| 135 128))
(137 (w|| 77 75))
(138 (w|| 137 129))
(139 (w|| 138 (ws 1 (list 0))))
(140 (w|| 78 76))
(141 (w|| 140 131))
(142 (w|| 141 70))
(143 (w|| 79 77))
(144 (w|| 143 133))
(145 (w|| 144 127))
(146 (w|| 80 78))
(147 (w|| 146 135))
(148 (w|| 147 128))
(149 (w|| 81 79))
(150 (w|| 149 137))
(151 (w|| 150 130))
(152 (w|| 82 80))
(153 (w|| 152 140))
(154 (w|| 153 132))
(155 (w|| 83 81))
(156 (w|| 155 143))
(157 (w|| 156 134))
(158 (w|| 122 157))
(159 (w|| 97 156))
(160 (w|| 159 134))
(161 (w|| 88 155))
(162 (w|| 161 144))
(163 (w|| 162 127))
(164 (w|| 109 161))
(165 (w|| 164 145))
(166 (w|| 84 82))
(167 (w|| 166 146))
(168 (w|| 167 136))
(169 (w|| 126 168))
(170 (wx (ws 0 (list 5)) (bv-const 0 1) 169))
(171 (wx 6 170 158))
(172 (w|| 100 167))
(173 (w|| 172 136))
(174 (w|| 90 166))
(175 (w|| 174 147))
(176 (w|| 175 128))
(177 (w|| 112 174))
(178 (w|| 177 148))
(179 (w|| 85 83))
(180 (w|| 179 149))
(181 (w|| 180 138))
(182 (w|| 181 (ws 1 (list 0))))
(183 (w|| 103 180))
(184 (w|| 183 139))
(185 (w|| 92 179))
(186 (w|| 185 150))
(187 (w|| 186 130))
(188 (w|| 115 185))
(189 (w|| 188 151))
(190 (w|| 86 84))
(191 (w|| 190 152))
(192 (w|| 191 141))
(193 (w|| 192 70))
(194 (w|| 106 191))
(195 (w|| 194 142))
(196 (w|| 94 190))
(197 (w|| 196 153))
(198 (w|| 197 132))
(199 (w|| 118 196))
(200 (w|| 199 154))
(201 (wx 63 171 200))
(202 (wx 34 201 189))
(203 (wx 62 202 178))
(204 (wx 26 203 165))
(205 (wx 49 204 195))
(206 (wx 36 205 184))
(207 (wx 50 206 173))
(208 (wx 21 207 160))
(209 (wx 69 208 198))
(210 (wx 40 209 187))
(211 (wx 68 210 176))
(212 (wx 32 211 163))
(213 (wx 53 212 193))
(214 (wx 41 213 182))
(215 (wx 52 214 168))
(216 (wx 13 215 157))
(217 (wx 65 216 154))
(218 (wx 39 217 151))
(219 (wx 66 218 148))
(220 (wx 28 219 145))
(221 (wx 56 220 142))
(222 (wx 37 221 139))
(223 (wx 55 222 136))
(224 (wx 18 223 134))
(225 (wx 59 224 132))
(226 (wx 35 225 130))
(227 (wx 60 226 128))
(228 (wx 30 227 127))
(229 (wx 47 228 70))
(230 (wx 38 229 (ws 1 (list 0))))
(231 (wx 44 230 (bv-const 0 1)))
(232 (wx 7 231 169))
(2 (<<= 232)))

(define internal-signals (hash 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1 137 1 138 1 139 1 140 1 141 1 142 1 143 1 144 1 145 1 146 1 147 1 148 1 149 1 150 1 151 1 152 1 153 1 154 1 155 1 156 1 157 1 158 1 159 1 160 1 161 1 162 1 163 1 164 1 165 1 166 1 167 1 168 1 169 1 170 1 171 1 172 1 173 1 174 1 175 1 176 1 177 1 178 1 179 1 180 1 181 1 182 1 183 1 184 1 185 1 186 1 187 1 188 1 189 1 190 1 191 1 192 1 193 1 194 1 195 1 196 1 197 1 198 1 199 1 200 1 201 1 202 1 203 1 204 1 205 1 206 1 207 1 208 1 209 1 210 1 211 1 212 1 213 1 214 1 215 1 216 1 217 1 218 1 219 1 220 1 221 1 222 1 223 1 224 1 225 1 226 1 227 1 228 1 229 1 230 1 231 1 232 1))

(sketch-reroll basejump-netlists/bsg_fpu_sticky_width_p_32.blif (loops (15 1 3) (23 2 5) (34 1 8) (43 1 4) (50 1 3) (60 1 3) (66 1 3) (70 1 18) (89 2 3) (95 3 9) (124 1 3) (131 1 8) (140 1 30) (172 1 10) (183 1 18) (201 1 29)))
