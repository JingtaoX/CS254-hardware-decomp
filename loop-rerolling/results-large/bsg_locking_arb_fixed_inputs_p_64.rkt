#lang rosette
(require "../netlist_ir.rkt")
(require "../sketch_gen.rkt")

(def-netlist basejump-netlists/bsg_locking_arb_fixed_inputs_p_64.blif
(hash 0 1 1 1 2 64)
(hash 3 64)
(hash 4 64)
(5 (w~ 1))
(6 (w~ (ws 4 (list 0))))
(7 (w& (ws 2 (list 0)) 6))
(8 (w~ (ws 4 (list 1))))
(9 (w& (ws 2 (list 1)) 8))
(10 (w|| 7 9))
(11 (w~ (ws 4 (list 2))))
(12 (w& (ws 2 (list 2)) 11))
(13 (w|| 9 12))
(14 (w~ (ws 4 (list 3))))
(15 (w& (ws 2 (list 3)) 14))
(16 (w|| 12 15))
(17 (w|| 10 16))
(18 (w~ (ws 4 (list 4))))
(19 (w& (ws 2 (list 4)) 18))
(20 (w|| 15 19))
(21 (w|| 13 20))
(22 (w~ (ws 4 (list 5))))
(23 (w& (ws 2 (list 5)) 22))
(24 (w|| 19 23))
(25 (w|| 16 24))
(26 (w~ (ws 4 (list 6))))
(27 (w& (ws 2 (list 6)) 26))
(28 (w|| 23 27))
(29 (w|| 20 28))
(30 (w~ (ws 4 (list 7))))
(31 (w& (ws 2 (list 7)) 30))
(32 (w|| 27 31))
(33 (w|| 24 32))
(34 (w|| 17 33))
(35 (w~ (ws 4 (list 8))))
(36 (w& (ws 2 (list 8)) 35))
(37 (w|| 31 36))
(38 (w|| 28 37))
(39 (w|| 21 38))
(40 (w~ (ws 4 (list 9))))
(41 (w& (ws 2 (list 9)) 40))
(42 (w|| 36 41))
(43 (w|| 32 42))
(44 (w|| 25 43))
(45 (w~ (ws 4 (list 10))))
(46 (w& (ws 2 (list 10)) 45))
(47 (w|| 41 46))
(48 (w|| 37 47))
(49 (w|| 29 48))
(50 (w~ (ws 4 (list 11))))
(51 (w& (ws 2 (list 11)) 50))
(52 (w|| 46 51))
(53 (w|| 42 52))
(54 (w|| 33 53))
(55 (w~ (ws 4 (list 12))))
(56 (w& (ws 2 (list 12)) 55))
(57 (w|| 51 56))
(58 (w|| 47 57))
(59 (w|| 38 58))
(60 (w~ (ws 4 (list 13))))
(61 (w& (ws 2 (list 13)) 60))
(62 (w|| 56 61))
(63 (w|| 52 62))
(64 (w|| 43 63))
(65 (w~ (ws 4 (list 14))))
(66 (w& (ws 2 (list 14)) 65))
(67 (w|| 61 66))
(68 (w|| 57 67))
(69 (w|| 48 68))
(70 (w~ (ws 4 (list 15))))
(71 (w& (ws 2 (list 15)) 70))
(72 (w|| 66 71))
(73 (w|| 62 72))
(74 (w|| 53 73))
(75 (w|| 34 74))
(76 (w~ (ws 4 (list 16))))
(77 (w& (ws 2 (list 16)) 76))
(78 (w|| 71 77))
(79 (w|| 67 78))
(80 (w|| 58 79))
(81 (w|| 39 80))
(82 (w~ (ws 4 (list 17))))
(83 (w& (ws 2 (list 17)) 82))
(84 (w|| 77 83))
(85 (w|| 72 84))
(86 (w|| 63 85))
(87 (w|| 44 86))
(88 (w~ (ws 4 (list 18))))
(89 (w& (ws 2 (list 18)) 88))
(90 (w|| 83 89))
(91 (w|| 78 90))
(92 (w|| 68 91))
(93 (w|| 49 92))
(94 (w~ (ws 4 (list 19))))
(95 (w& (ws 2 (list 19)) 94))
(96 (w|| 89 95))
(97 (w|| 84 96))
(98 (w|| 73 97))
(99 (w|| 54 98))
(100 (w~ (ws 4 (list 20))))
(101 (w& (ws 2 (list 20)) 100))
(102 (w|| 95 101))
(103 (w|| 90 102))
(104 (w|| 79 103))
(105 (w|| 59 104))
(106 (w~ (ws 4 (list 21))))
(107 (w& (ws 2 (list 21)) 106))
(108 (w|| 101 107))
(109 (w|| 96 108))
(110 (w|| 85 109))
(111 (w|| 64 110))
(112 (w~ (ws 4 (list 22))))
(113 (w& (ws 2 (list 22)) 112))
(114 (w|| 107 113))
(115 (w|| 102 114))
(116 (w|| 91 115))
(117 (w|| 69 116))
(118 (w~ (ws 4 (list 23))))
(119 (w& (ws 2 (list 23)) 118))
(120 (w|| 113 119))
(121 (w|| 108 120))
(122 (w|| 97 121))
(123 (w|| 74 122))
(124 (w~ (ws 4 (list 24))))
(125 (w& (ws 2 (list 24)) 124))
(126 (w|| 119 125))
(127 (w|| 114 126))
(128 (w|| 103 127))
(129 (w|| 80 128))
(130 (w~ (ws 4 (list 25))))
(131 (w& (ws 2 (list 25)) 130))
(132 (w|| 125 131))
(133 (w|| 120 132))
(134 (w|| 109 133))
(135 (w|| 86 134))
(136 (w~ (ws 4 (list 26))))
(137 (w& (ws 2 (list 26)) 136))
(138 (w|| 131 137))
(139 (w|| 126 138))
(140 (w|| 115 139))
(141 (w|| 92 140))
(142 (w~ (ws 4 (list 27))))
(143 (w& (ws 2 (list 27)) 142))
(144 (w|| 137 143))
(145 (w|| 132 144))
(146 (w|| 121 145))
(147 (w|| 98 146))
(148 (w~ (ws 4 (list 28))))
(149 (w& (ws 2 (list 28)) 148))
(150 (w|| 143 149))
(151 (w|| 138 150))
(152 (w|| 127 151))
(153 (w|| 104 152))
(154 (w~ (ws 4 (list 29))))
(155 (w& (ws 2 (list 29)) 154))
(156 (w|| 149 155))
(157 (w|| 144 156))
(158 (w|| 133 157))
(159 (w|| 110 158))
(160 (w~ (ws 4 (list 30))))
(161 (w& (ws 2 (list 30)) 160))
(162 (w|| 155 161))
(163 (w|| 150 162))
(164 (w|| 139 163))
(165 (w|| 116 164))
(166 (w~ (ws 4 (list 31))))
(167 (w& (ws 2 (list 31)) 166))
(168 (w|| 161 167))
(169 (w|| 156 168))
(170 (w|| 145 169))
(171 (w|| 122 170))
(172 (w|| 75 171))
(173 (w~ (ws 4 (list 32))))
(174 (w& (ws 2 (list 32)) 173))
(175 (w|| 167 174))
(176 (w|| 162 175))
(177 (w|| 151 176))
(178 (w|| 128 177))
(179 (w|| 81 178))
(180 (w~ (ws 4 (list 33))))
(181 (w& (ws 2 (list 33)) 180))
(182 (w|| 174 181))
(183 (w|| 168 182))
(184 (w|| 157 183))
(185 (w|| 134 184))
(186 (w|| 87 185))
(187 (w~ (ws 4 (list 34))))
(188 (w& (ws 2 (list 34)) 187))
(189 (w|| 181 188))
(190 (w|| 175 189))
(191 (w|| 163 190))
(192 (w|| 140 191))
(193 (w|| 93 192))
(194 (w~ (ws 4 (list 35))))
(195 (w& (ws 2 (list 35)) 194))
(196 (w|| 188 195))
(197 (w|| 182 196))
(198 (w|| 169 197))
(199 (w|| 146 198))
(200 (w|| 99 199))
(201 (w~ (ws 4 (list 36))))
(202 (w& (ws 2 (list 36)) 201))
(203 (w|| 195 202))
(204 (w|| 189 203))
(205 (w|| 176 204))
(206 (w|| 152 205))
(207 (w|| 105 206))
(208 (w~ (ws 4 (list 37))))
(209 (w& (ws 2 (list 37)) 208))
(210 (w|| 202 209))
(211 (w|| 196 210))
(212 (w|| 183 211))
(213 (w|| 158 212))
(214 (w|| 111 213))
(215 (w~ (ws 4 (list 38))))
(216 (w& (ws 2 (list 38)) 215))
(217 (w|| 209 216))
(218 (w|| 203 217))
(219 (w|| 190 218))
(220 (w|| 164 219))
(221 (w|| 117 220))
(222 (w~ (ws 4 (list 39))))
(223 (w& (ws 2 (list 39)) 222))
(224 (w|| 216 223))
(225 (w|| 210 224))
(226 (w|| 197 225))
(227 (w|| 170 226))
(228 (w|| 123 227))
(229 (w~ (ws 4 (list 40))))
(230 (w& (ws 2 (list 40)) 229))
(231 (w|| 223 230))
(232 (w|| 217 231))
(233 (w|| 204 232))
(234 (w|| 177 233))
(235 (w|| 129 234))
(236 (w~ (ws 4 (list 41))))
(237 (w& (ws 2 (list 41)) 236))
(238 (w|| 230 237))
(239 (w|| 224 238))
(240 (w|| 211 239))
(241 (w|| 184 240))
(242 (w|| 135 241))
(243 (w~ (ws 4 (list 42))))
(244 (w& (ws 2 (list 42)) 243))
(245 (w|| 237 244))
(246 (w|| 231 245))
(247 (w|| 218 246))
(248 (w|| 191 247))
(249 (w|| 141 248))
(250 (w~ (ws 4 (list 43))))
(251 (w& (ws 2 (list 43)) 250))
(252 (w|| 244 251))
(253 (w|| 238 252))
(254 (w|| 225 253))
(255 (w|| 198 254))
(256 (w|| 147 255))
(257 (w~ (ws 4 (list 44))))
(258 (w& (ws 2 (list 44)) 257))
(259 (w|| 251 258))
(260 (w|| 245 259))
(261 (w|| 232 260))
(262 (w|| 205 261))
(263 (w|| 153 262))
(264 (w~ (ws 4 (list 45))))
(265 (w& (ws 2 (list 45)) 264))
(266 (w|| 258 265))
(267 (w|| 252 266))
(268 (w|| 239 267))
(269 (w|| 212 268))
(270 (w|| 159 269))
(271 (w~ (ws 4 (list 46))))
(272 (w& (ws 2 (list 46)) 271))
(273 (w|| 265 272))
(274 (w|| 259 273))
(275 (w|| 246 274))
(276 (w|| 219 275))
(277 (w|| 165 276))
(278 (w~ (ws 4 (list 47))))
(279 (w& (ws 2 (list 47)) 278))
(280 (w|| 272 279))
(281 (w|| 266 280))
(282 (w|| 253 281))
(283 (w|| 226 282))
(284 (w|| 171 283))
(285 (w~ (ws 4 (list 48))))
(286 (w& (ws 2 (list 48)) 285))
(287 (w|| 279 286))
(288 (w|| 273 287))
(289 (w|| 260 288))
(290 (w|| 233 289))
(291 (w|| 178 290))
(292 (w~ (ws 4 (list 49))))
(293 (w& (ws 2 (list 49)) 292))
(294 (w|| 286 293))
(295 (w|| 280 294))
(296 (w|| 267 295))
(297 (w|| 240 296))
(298 (w|| 185 297))
(299 (w~ (ws 4 (list 50))))
(300 (w& (ws 2 (list 50)) 299))
(301 (w|| 293 300))
(302 (w|| 287 301))
(303 (w|| 274 302))
(304 (w|| 247 303))
(305 (w|| 192 304))
(306 (w~ (ws 4 (list 51))))
(307 (w& (ws 2 (list 51)) 306))
(308 (w|| 300 307))
(309 (w|| 294 308))
(310 (w|| 281 309))
(311 (w|| 254 310))
(312 (w|| 199 311))
(313 (w~ (ws 4 (list 52))))
(314 (w& (ws 2 (list 52)) 313))
(315 (w|| 307 314))
(316 (w|| 301 315))
(317 (w|| 288 316))
(318 (w|| 261 317))
(319 (w|| 206 318))
(320 (w~ (ws 4 (list 53))))
(321 (w& (ws 2 (list 53)) 320))
(322 (w|| 314 321))
(323 (w|| 308 322))
(324 (w|| 295 323))
(325 (w|| 268 324))
(326 (w|| 213 325))
(327 (w~ (ws 4 (list 54))))
(328 (w& (ws 2 (list 54)) 327))
(329 (w|| 321 328))
(330 (w|| 315 329))
(331 (w|| 302 330))
(332 (w|| 275 331))
(333 (w|| 220 332))
(334 (w~ (ws 4 (list 55))))
(335 (w& (ws 2 (list 55)) 334))
(336 (w|| 328 335))
(337 (w|| 322 336))
(338 (w|| 309 337))
(339 (w|| 282 338))
(340 (w|| 227 339))
(341 (w~ (ws 4 (list 56))))
(342 (w& (ws 2 (list 56)) 341))
(343 (w|| 335 342))
(344 (w|| 329 343))
(345 (w|| 316 344))
(346 (w|| 289 345))
(347 (w|| 234 346))
(348 (w~ (ws 4 (list 57))))
(349 (w& (ws 2 (list 57)) 348))
(350 (w|| 342 349))
(351 (w|| 336 350))
(352 (w|| 323 351))
(353 (w|| 296 352))
(354 (w|| 241 353))
(355 (w~ (ws 4 (list 58))))
(356 (w& (ws 2 (list 58)) 355))
(357 (w|| 349 356))
(358 (w|| 343 357))
(359 (w|| 330 358))
(360 (w|| 303 359))
(361 (w|| 248 360))
(362 (w~ (ws 4 (list 59))))
(363 (w& (ws 2 (list 59)) 362))
(364 (w|| 356 363))
(365 (w|| 350 364))
(366 (w|| 337 365))
(367 (w|| 310 366))
(368 (w|| 255 367))
(369 (w~ (ws 4 (list 60))))
(370 (w& (ws 2 (list 60)) 369))
(371 (w|| 363 370))
(372 (w|| 357 371))
(373 (w|| 344 372))
(374 (w|| 317 373))
(375 (w|| 262 374))
(376 (w~ (ws 4 (list 61))))
(377 (w& (ws 2 (list 61)) 376))
(378 (w|| 370 377))
(379 (w|| 364 378))
(380 (w|| 351 379))
(381 (w|| 324 380))
(382 (w|| 269 381))
(383 (w~ (ws 4 (list 62))))
(384 (w& (ws 2 (list 62)) 383))
(385 (w|| 377 384))
(386 (w|| 371 385))
(387 (w|| 358 386))
(388 (w|| 331 387))
(389 (w|| 276 388))
(390 (w~ (ws 4 (list 63))))
(391 (w& (ws 2 (list 63)) 390))
(392 (w& 391 0))
(393 (w~ 392))
(394 (w~ 391))
(395 (w|| 388 391))
(396 (w~ 395))
(397 (w|| 277 395))
(398 (w~ 397))
(399 (w|| 387 391))
(400 (w~ 399))
(401 (w|| 332 399))
(402 (w~ 401))
(403 (w|| 221 401))
(404 (w~ 403))
(405 (w|| 333 399))
(406 (w~ 405))
(407 (w|| 386 391))
(408 (w~ 407))
(409 (w|| 360 407))
(410 (w~ 409))
(411 (w|| 249 409))
(412 (w~ 411))
(413 (w|| 359 407))
(414 (w~ 413))
(415 (w|| 304 413))
(416 (w~ 415))
(417 (w|| 193 415))
(418 (w~ 417))
(419 (w|| 305 413))
(420 (w~ 419))
(421 (w|| 361 407))
(422 (w~ 421))
(423 (w|| 385 391))
(424 (w~ 423))
(425 (w|| 374 423))
(426 (w~ 425))
(427 (w|| 263 425))
(428 (w~ 427))
(429 (w|| 373 423))
(430 (w~ 429))
(431 (w|| 318 429))
(432 (w~ 431))
(433 (w|| 207 431))
(434 (w~ 433))
(435 (w|| 319 429))
(436 (w~ 435))
(437 (w|| 372 423))
(438 (w~ 437))
(439 (w|| 346 437))
(440 (w~ 439))
(441 (w|| 235 439))
(442 (w~ 441))
(443 (w|| 345 437))
(444 (w~ 443))
(445 (w|| 290 443))
(446 (w~ 445))
(447 (w|| 179 445))
(448 (w~ 447))
(449 (w|| 291 443))
(450 (w~ 449))
(451 (w|| 347 437))
(452 (w~ 451))
(453 (w|| 375 423))
(454 (w~ 453))
(455 (w|| 384 391))
(456 (w& 455 394))
(457 (w& 456 0))
(458 (w~ 457))
(459 (w|| 392 457))
(460 (w~ 455))
(461 (w& 423 460))
(462 (w& 461 0))
(463 (w~ 462))
(464 (w|| 459 462))
(465 (w|| 381 455))
(466 (w& 465 396))
(467 (w& 466 0))
(468 (w~ 467))
(469 (w~ 465))
(470 (w& 425 469))
(471 (w& 470 0))
(472 (w~ 471))
(473 (w|| 270 465))
(474 (w& 473 398))
(475 (w& 474 0))
(476 (w~ 475))
(477 (w~ 473))
(478 (w& 427 477))
(479 (w& 478 0))
(480 (w~ 479))
(481 (w|| 380 455))
(482 (w& 481 400))
(483 (w& 482 0))
(484 (w~ 483))
(485 (w~ 481))
(486 (w& 429 485))
(487 (w& 486 0))
(488 (w~ 487))
(489 (w|| 325 481))
(490 (w& 489 402))
(491 (w& 490 0))
(492 (w~ 491))
(493 (w~ 489))
(494 (w& 431 493))
(495 (w& 494 0))
(496 (w~ 495))
(497 (w|| 214 489))
(498 (w~ 497))
(499 (w& 433 498))
(500 (w& 499 0))
(501 (w~ 500))
(502 (w& 497 404))
(503 (w& 502 0))
(504 (w~ 503))
(505 (w|| 326 481))
(506 (w& 505 406))
(507 (w& 506 0))
(508 (w~ 507))
(509 (w~ 505))
(510 (w& 435 509))
(511 (w& 510 0))
(512 (w~ 511))
(513 (w|| 379 455))
(514 (w& 513 408))
(515 (w& 514 0))
(516 (w~ 515))
(517 (w~ 513))
(518 (w& 437 517))
(519 (w& 518 0))
(520 (w~ 519))
(521 (w|| 353 513))
(522 (w& 521 410))
(523 (w& 522 0))
(524 (w~ 523))
(525 (w~ 521))
(526 (w& 439 525))
(527 (w& 526 0))
(528 (w~ 527))
(529 (w|| 242 521))
(530 (w& 529 412))
(531 (w& 530 0))
(532 (w~ 531))
(533 (w~ 529))
(534 (w& 441 533))
(535 (w& 534 0))
(536 (w~ 535))
(537 (w|| 352 513))
(538 (w& 537 414))
(539 (w& 538 0))
(540 (w~ 539))
(541 (w~ 537))
(542 (w& 443 541))
(543 (w& 542 0))
(544 (w~ 543))
(545 (w|| 297 537))
(546 (w& 545 416))
(547 (w& 546 0))
(548 (w~ 547))
(549 (w~ 545))
(550 (w& 445 549))
(551 (w& 550 0))
(552 (w~ 551))
(553 (w|| 186 545))
(554 (w~ 553))
(555 (w& 447 554))
(556 (w& 555 0))
(557 (w~ 556))
(558 (w& 553 418))
(559 (w& 558 0))
(560 (w~ 559))
(561 (w|| 298 537))
(562 (w& 561 420))
(563 (w& 562 0))
(564 (w~ 563))
(565 (w~ 561))
(566 (w& 449 565))
(567 (w& 566 0))
(568 (w~ 567))
(569 (w|| 354 513))
(570 (w& 569 422))
(571 (w& 570 0))
(572 (w~ 571))
(573 (w~ 569))
(574 (w& 451 573))
(575 (w& 574 0))
(576 (w~ 575))
(577 (w|| 378 455))
(578 (w& 577 424))
(579 (w& 578 0))
(580 (w~ 579))
(581 (w|| 464 579))
(582 (w~ 577))
(583 (w& 407 582))
(584 (w& 583 0))
(585 (w~ 584))
(586 (w|| 581 584))
(587 (w|| 586 515))
(588 (w|| 587 519))
(589 (w|| 367 577))
(590 (w& 589 426))
(591 (w& 590 0))
(592 (w~ 591))
(593 (w~ 589))
(594 (w& 409 593))
(595 (w& 594 0))
(596 (w~ 595))
(597 (w|| 256 589))
(598 (w& 597 428))
(599 (w& 598 0))
(600 (w~ 599))
(601 (w~ 597))
(602 (w& 411 601))
(603 (w& 602 0))
(604 (w~ 603))
(605 (w|| 366 577))
(606 (w& 605 430))
(607 (w& 606 0))
(608 (w~ 607))
(609 (w~ 605))
(610 (w& 413 609))
(611 (w& 610 0))
(612 (w~ 611))
(613 (w|| 311 605))
(614 (w& 613 432))
(615 (w& 614 0))
(616 (w~ 615))
(617 (w~ 613))
(618 (w& 415 617))
(619 (w& 618 0))
(620 (w~ 619))
(621 (w|| 200 613))
(622 (w~ 621))
(623 (w& 417 622))
(624 (w& 623 0))
(625 (w~ 624))
(626 (w& 621 434))
(627 (w& 626 0))
(628 (w~ 627))
(629 (w|| 312 605))
(630 (w& 629 436))
(631 (w& 630 0))
(632 (w~ 631))
(633 (w~ 629))
(634 (w& 419 633))
(635 (w& 634 0))
(636 (w~ 635))
(637 (w|| 365 577))
(638 (w& 637 438))
(639 (w& 638 0))
(640 (w~ 639))
(641 (w|| 588 639))
(642 (w~ 637))
(643 (w& 399 642))
(644 (w& 643 0))
(645 (w~ 644))
(646 (w|| 641 644))
(647 (w|| 646 483))
(648 (w|| 647 487))
(649 (w|| 648 607))
(650 (w|| 649 611))
(651 (w|| 650 539))
(652 (w|| 651 543))
(653 (w|| 339 637))
(654 (w& 653 440))
(655 (w& 654 0))
(656 (w~ 655))
(657 (w~ 653))
(658 (w& 401 657))
(659 (w& 658 0))
(660 (w~ 659))
(661 (w|| 228 653))
(662 (w& 661 442))
(663 (w& 662 0))
(664 (w~ 663))
(665 (w~ 661))
(666 (w& 403 665))
(667 (w& 666 0))
(668 (w~ 667))
(669 (w|| 338 637))
(670 (w& 669 444))
(671 (w& 670 0))
(672 (w~ 671))
(673 (w|| 652 671))
(674 (w~ 669))
(675 (w& 395 674))
(676 (w& 675 0))
(677 (w~ 676))
(678 (w|| 673 676))
(679 (w|| 678 467))
(680 (w|| 679 471))
(681 (w|| 680 591))
(682 (w|| 681 595))
(683 (w|| 682 523))
(684 (w|| 683 527))
(685 (w|| 684 655))
(686 (w|| 685 659))
(687 (w|| 686 491))
(688 (w|| 687 495))
(689 (w|| 688 615))
(690 (w|| 689 619))
(691 (w|| 690 547))
(692 (w|| 691 551))
(693 (w|| 283 669))
(694 (w& 693 446))
(695 (w& 694 0))
(696 (w~ 695))
(697 (w|| 692 695))
(698 (w~ 693))
(699 (w|| 172 693))
(700 (w& 699 448))
(701 (w& 700 0))
(702 (w~ 701))
(703 (w|| 284 669))
(704 (w& 703 450))
(705 (w& 704 0))
(706 (w~ 705))
(707 (w~ 703))
(708 (w& 397 707))
(709 (w& 708 0))
(710 (w~ 709))
(711 (w|| 340 637))
(712 (w& 711 452))
(713 (w& 712 0))
(714 (w~ 713))
(715 (w~ 711))
(716 (w& 405 715))
(717 (w& 716 0))
(718 (w~ 717))
(719 (w|| 368 577))
(720 (w& 719 454))
(721 (w& 720 0))
(722 (w~ 721))
(723 (w~ 719))
(724 (w& 421 723))
(725 (w& 724 0))
(726 (w~ 725))
(727 (w|| 382 455))
(728 (w~ 727))
(729 (w& 453 728))
(730 (w& 729 0))
(731 (w~ 730))
(732 (w|| 389 391))
(733 (w& 732 698))
(734 (w& 733 0))
(735 (w~ 734))
(736 (w|| 697 734))
(737 (w~ 732))
(738 (w& 727 737))
(739 (w& 738 0))
(740 (w~ 739))
(741 (w|| 736 739))
(742 (w|| 741 730))
(743 (w|| 742 721))
(744 (w|| 743 725))
(745 (w|| 744 571))
(746 (w|| 745 575))
(747 (w|| 746 713))
(748 (w|| 747 717))
(749 (w|| 748 507))
(750 (w|| 749 511))
(751 (w|| 750 631))
(752 (w|| 751 635))
(753 (w|| 752 563))
(754 (w|| 753 567))
(755 (w|| 754 705))
(756 (w|| 755 709))
(757 (w|| 756 475))
(758 (w|| 757 479))
(759 (w|| 758 599))
(760 (w|| 759 603))
(761 (w|| 760 531))
(762 (w|| 761 535))
(763 (w|| 762 663))
(764 (w|| 763 667))
(765 (w|| 764 503))
(766 (w|| 765 500))
(767 (w|| 766 627))
(768 (w|| 767 624))
(769 (w|| 768 559))
(770 (w|| 769 556))
(771 (w|| 770 701))
(772 (wc (list 392 457 462 579 584 515 519 639 644 483 487 607 611 539 543 671 676 467 471 591 595 523 527 655 659 491 495 615 619 547 551 695 734 739 730 721 725 571 575 713 717 507 511 631 635 563 567 705 709 475 479 599 603 531 535 663 667 503 500 627 624 559 556 701)))
(773 (w& 390 383))
(774 (w& 773 376))
(775 (w& 774 369))
(776 (w& 775 362))
(777 (w& 776 355))
(778 (w& 777 348))
(779 (w& 778 341))
(780 (w& 779 334))
(781 (w& 780 327))
(782 (w& 781 320))
(783 (w& 782 313))
(784 (w& 783 306))
(785 (w& 784 299))
(786 (w& 785 292))
(787 (w& 786 285))
(788 (w& 787 278))
(789 (w& 788 271))
(790 (w& 789 264))
(791 (w& 790 257))
(792 (w& 791 250))
(793 (w& 792 243))
(794 (w& 793 236))
(795 (w& 794 229))
(796 (w& 795 222))
(797 (w& 796 215))
(798 (w& 797 208))
(799 (w& 798 201))
(800 (w& 799 194))
(801 (w& 800 187))
(802 (w& 801 180))
(803 (w& 802 173))
(804 (w& 803 166))
(805 (w& 804 160))
(806 (w& 805 154))
(807 (w& 806 148))
(808 (w& 807 142))
(809 (w& 808 136))
(810 (w& 809 130))
(811 (w& 810 124))
(812 (w& 811 118))
(813 (w& 812 112))
(814 (w& 813 106))
(815 (w& 814 100))
(816 (w& 815 94))
(817 (w& 816 88))
(818 (w& 817 82))
(819 (w& 818 76))
(820 (w& 819 70))
(821 (w& 820 65))
(822 (w& 821 60))
(823 (w& 822 55))
(824 (w& 823 50))
(825 (w& 824 45))
(826 (w& 825 40))
(827 (w& 826 35))
(828 (w& 827 30))
(829 (w& 828 26))
(830 (w& 829 22))
(831 (w& 830 18))
(832 (w& 831 14))
(833 (w& 832 11))
(834 (w& 833 8))
(835 (w& 834 6))
(836 (w& 835 771))
(837 (w& 836 5))
(838 (wx 837 (bv-const 0 1) (bv-const 1 1)))
(839 (wx 1 838 (bv-const 1 1)))
(840 (wc (list 393 458 463 580 585 516 520 640 645 484 488 608 612 540 544 672 677 468 472 592 596 524 528 656 660 492 496 616 620 548 552 696 735 740 731 722 726 572 576 714 718 508 512 632 636 564 568 706 710 476 480 600 604 532 536 664 668 504 501 628 625 560 557 702)))
(841 (wx 837 (bv-const 0 64) 840))
(842 (wx 1 841 (bv-const 0 64)))
(843 (wx 839 4 842))
(4 (<<= 843))
(3 (<<= 772)))

(define internal-signals (hash 5 1 6 1 7 1 8 1 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1 137 1 138 1 139 1 140 1 141 1 142 1 143 1 144 1 145 1 146 1 147 1 148 1 149 1 150 1 151 1 152 1 153 1 154 1 155 1 156 1 157 1 158 1 159 1 160 1 161 1 162 1 163 1 164 1 165 1 166 1 167 1 168 1 169 1 170 1 171 1 172 1 173 1 174 1 175 1 176 1 177 1 178 1 179 1 180 1 181 1 182 1 183 1 184 1 185 1 186 1 187 1 188 1 189 1 190 1 191 1 192 1 193 1 194 1 195 1 196 1 197 1 198 1 199 1 200 1 201 1 202 1 203 1 204 1 205 1 206 1 207 1 208 1 209 1 210 1 211 1 212 1 213 1 214 1 215 1 216 1 217 1 218 1 219 1 220 1 221 1 222 1 223 1 224 1 225 1 226 1 227 1 228 1 229 1 230 1 231 1 232 1 233 1 234 1 235 1 236 1 237 1 238 1 239 1 240 1 241 1 242 1 243 1 244 1 245 1 246 1 247 1 248 1 249 1 250 1 251 1 252 1 253 1 254 1 255 1 256 1 257 1 258 1 259 1 260 1 261 1 262 1 263 1 264 1 265 1 266 1 267 1 268 1 269 1 270 1 271 1 272 1 273 1 274 1 275 1 276 1 277 1 278 1 279 1 280 1 281 1 282 1 283 1 284 1 285 1 286 1 287 1 288 1 289 1 290 1 291 1 292 1 293 1 294 1 295 1 296 1 297 1 298 1 299 1 300 1 301 1 302 1 303 1 304 1 305 1 306 1 307 1 308 1 309 1 310 1 311 1 312 1 313 1 314 1 315 1 316 1 317 1 318 1 319 1 320 1 321 1 322 1 323 1 324 1 325 1 326 1 327 1 328 1 329 1 330 1 331 1 332 1 333 1 334 1 335 1 336 1 337 1 338 1 339 1 340 1 341 1 342 1 343 1 344 1 345 1 346 1 347 1 348 1 349 1 350 1 351 1 352 1 353 1 354 1 355 1 356 1 357 1 358 1 359 1 360 1 361 1 362 1 363 1 364 1 365 1 366 1 367 1 368 1 369 1 370 1 371 1 372 1 373 1 374 1 375 1 376 1 377 1 378 1 379 1 380 1 381 1 382 1 383 1 384 1 385 1 386 1 387 1 388 1 389 1 390 1 391 1 392 1 393 1 394 1 395 1 396 1 397 1 398 1 399 1 400 1 401 1 402 1 403 1 404 1 405 1 406 1 407 1 408 1 409 1 410 1 411 1 412 1 413 1 414 1 415 1 416 1 417 1 418 1 419 1 420 1 421 1 422 1 423 1 424 1 425 1 426 1 427 1 428 1 429 1 430 1 431 1 432 1 433 1 434 1 435 1 436 1 437 1 438 1 439 1 440 1 441 1 442 1 443 1 444 1 445 1 446 1 447 1 448 1 449 1 450 1 451 1 452 1 453 1 454 1 455 1 456 1 457 1 458 1 459 1 460 1 461 1 462 1 463 1 464 1 465 1 466 1 467 1 468 1 469 1 470 1 471 1 472 1 473 1 474 1 475 1 476 1 477 1 478 1 479 1 480 1 481 1 482 1 483 1 484 1 485 1 486 1 487 1 488 1 489 1 490 1 491 1 492 1 493 1 494 1 495 1 496 1 497 1 498 1 499 1 500 1 501 1 502 1 503 1 504 1 505 1 506 1 507 1 508 1 509 1 510 1 511 1 512 1 513 1 514 1 515 1 516 1 517 1 518 1 519 1 520 1 521 1 522 1 523 1 524 1 525 1 526 1 527 1 528 1 529 1 530 1 531 1 532 1 533 1 534 1 535 1 536 1 537 1 538 1 539 1 540 1 541 1 542 1 543 1 544 1 545 1 546 1 547 1 548 1 549 1 550 1 551 1 552 1 553 1 554 1 555 1 556 1 557 1 558 1 559 1 560 1 561 1 562 1 563 1 564 1 565 1 566 1 567 1 568 1 569 1 570 1 571 1 572 1 573 1 574 1 575 1 576 1 577 1 578 1 579 1 580 1 581 1 582 1 583 1 584 1 585 1 586 1 587 1 588 1 589 1 590 1 591 1 592 1 593 1 594 1 595 1 596 1 597 1 598 1 599 1 600 1 601 1 602 1 603 1 604 1 605 1 606 1 607 1 608 1 609 1 610 1 611 1 612 1 613 1 614 1 615 1 616 1 617 1 618 1 619 1 620 1 621 1 622 1 623 1 624 1 625 1 626 1 627 1 628 1 629 1 630 1 631 1 632 1 633 1 634 1 635 1 636 1 637 1 638 1 639 1 640 1 641 1 642 1 643 1 644 1 645 1 646 1 647 1 648 1 649 1 650 1 651 1 652 1 653 1 654 1 655 1 656 1 657 1 658 1 659 1 660 1 661 1 662 1 663 1 664 1 665 1 666 1 667 1 668 1 669 1 670 1 671 1 672 1 673 1 674 1 675 1 676 1 677 1 678 1 679 1 680 1 681 1 682 1 683 1 684 1 685 1 686 1 687 1 688 1 689 1 690 1 691 1 692 1 693 1 694 1 695 1 696 1 697 1 698 1 699 1 700 1 701 1 702 1 703 1 704 1 705 1 706 1 707 1 708 1 709 1 710 1 711 1 712 1 713 1 714 1 715 1 716 1 717 1 718 1 719 1 720 1 721 1 722 1 723 1 724 1 725 1 726 1 727 1 728 1 729 1 730 1 731 1 732 1 733 1 734 1 735 1 736 1 737 1 738 1 739 1 740 1 741 1 742 1 743 1 744 1 745 1 746 1 747 1 748 1 749 1 750 1 751 1 752 1 753 1 754 1 755 1 756 1 757 1 758 1 759 1 760 1 761 1 762 1 763 1 764 1 765 1 766 1 767 1 768 1 769 1 770 1 771 1 772 64 773 1 774 1 775 1 776 1 777 1 778 1 779 1 780 1 781 1 782 1 783 1 784 1 785 1 786 1 787 1 788 1 789 1 790 1 791 1 792 1 793 1 794 1 795 1 796 1 797 1 798 1 799 1 800 1 801 1 802 1 803 1 804 1 805 1 806 1 807 1 808 1 809 1 810 1 811 1 812 1 813 1 814 1 815 1 816 1 817 1 818 1 819 1 820 1 821 1 822 1 823 1 824 1 825 1 826 1 827 1 828 1 829 1 830 1 831 1 832 1 833 1 834 1 835 1 836 1 837 1 838 1 839 1 840 64 841 64 842 64 843 64))

(sketch-reroll basejump-netlists/bsg_locking_arb_fixed_inputs_p_64.blif (loops (16 4 4) (32 5 8) (72 6 16) (168 7 32) (394 2 31) (466 8 4) (506 8 6) (557 8 3) (586 1 4) (590 8 4) (646 1 8) (678 1 16) (704 8 3) (741 1 31) (773 1 65)))
