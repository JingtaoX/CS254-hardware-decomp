import pyrtl
tmp0 = pyrtl.Input(bitwidth=1, name='t0')
tmp1 = pyrtl.Input(bitwidth=1, name='t1')
tmp2 = pyrtl.Input(bitwidth=1, name='t2')
tmp3 = pyrtl.Input(bitwidth=1, name='t3')
tmp4 = pyrtl.Input(bitwidth=1, name='t4')
tmp5 = pyrtl.Input(bitwidth=16, name='t5')
tmp6 = pyrtl.Output(bitwidth=1, name='t6')
tmp7 = pyrtl.Output(bitwidth=16, name='t7')
tmp8 = pyrtl.Output(bitwidth=1, name='t8')
tmp9 = pyrtl.Register(bitwidth=1, name='t9')
tmp10 = pyrtl.Register(bitwidth=1, name='t10')
tmp11 = pyrtl.Register(bitwidth=1, name='t11')
tmp12 = pyrtl.Register(bitwidth=15, name='t12')
tmp13 = pyrtl.Register(bitwidth=4, name='t13')
tmp270 = [None]*16
for tmp269 in range(16):
    tmp14 = tmp5[tmp269]
    tmp270[tmp269] = tmp14
tmp30 = ~tmp1
tmp31 = tmp9 & tmp30
tmp32 = ~tmp31
tmp33 = tmp32 & tmp2
tmp34 = ~tmp4
tmp35 = tmp33 & tmp34
tmp36 = tmp12[0 : 14]
tmp37 = pyrtl.concat(tmp36, pyrtl.Const(0, bitwidth=1))
tmp38 = tmp12[1 : 15]
tmp39 = pyrtl.concat(pyrtl.Const(0, bitwidth=1), tmp38)
tmp40 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp39, tmp37)
tmp41 = tmp13[0]
tmp42 = pyrtl.corecircuits.mux(tmp41, tmp12, tmp40)
tmp43 = pyrtl.Const(0, bitwidth=2)[0 : 2]
tmp44 = tmp42[0 : 13]
tmp45 = pyrtl.concat(tmp44, tmp43)
tmp46 = tmp42[2 : 15]
tmp47 = pyrtl.concat(tmp43, tmp46)
tmp48 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp47, tmp45)
tmp49 = tmp13[1]
tmp50 = pyrtl.corecircuits.mux(tmp49, tmp42, tmp48)
tmp51 = pyrtl.concat(tmp43, tmp43)
tmp52 = tmp51[0 : 4]
tmp53 = tmp50[0 : 11]
tmp54 = pyrtl.concat(tmp53, tmp52)
tmp55 = tmp50[4 : 15]
tmp56 = pyrtl.concat(tmp52, tmp55)
tmp57 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp56, tmp54)
tmp58 = tmp13[2]
tmp59 = pyrtl.corecircuits.mux(tmp58, tmp50, tmp57)
tmp60 = pyrtl.concat(tmp52, tmp52)
tmp61 = tmp60[0 : 8]
tmp62 = tmp59[0 : 7]
tmp63 = pyrtl.concat(tmp62, tmp61)
tmp64 = tmp59[8 : 15]
tmp65 = pyrtl.concat(tmp61, tmp64)
tmp66 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp65, tmp63)
tmp67 = tmp13[3]
tmp68 = pyrtl.corecircuits.mux(tmp67, tmp59, tmp66)
tmp272 = [None]*4
for tmp271 in range(4):
    tmp69 = tmp59[tmp271]
    tmp272[(3 - tmp271)] = tmp69
tmp73 = tmp272[3] | tmp272[2]
tmp74 = tmp73 | tmp272[1]
tmp75 = tmp74 | tmp272[0]
tmp76 = tmp68[4]
tmp77 = tmp68[5]
tmp78 = tmp77 | tmp75
tmp79 = tmp76 & tmp78
tmp80 = pyrtl.concat(pyrtl.Const(0, bitwidth=14), tmp79)
tmp274 = [None]*9
for tmp273 in range(9):
    tmp81 = tmp68[(tmp273 + 6)]
    tmp274[tmp273] = tmp81
tmp90 = pyrtl.concat(pyrtl.Const(0, bitwidth=1), tmp13)
tmp91 = pyrtl.Const(30, bitwidth=5) - tmp90
tmp92 = tmp91[0 : 5]
tmp276 = [None]*5
for tmp275 in range(5):
    tmp93 = tmp91[tmp275]
    tmp276[(4 - tmp275)] = tmp93
tmp98 = pyrtl.concat(tmp276[4], tmp276[3], tmp276[2], tmp276[1], tmp276[0], tmp274[8], tmp274[7], tmp274[6], tmp274[5], tmp274[4], tmp274[3], tmp274[2], tmp274[1], tmp274[0], tmp77)
tmp99 = tmp98 + tmp80
tmp100 = tmp99[0 : 15]
tmp278 = [None]*15
for tmp277 in range(15):
    tmp101 = tmp100[tmp277]
    tmp278[(tmp277 + 0)] = tmp101
tmp116 = pyrtl.corecircuits.mux(tmp0, pyrtl.Const(0, bitwidth=1), tmp270[15])
tmp117 = pyrtl.corecircuits.mux(tmp35, pyrtl.Const(0, bitwidth=1), pyrtl.Const(1, bitwidth=1))
tmp118 = pyrtl.corecircuits.mux(tmp4, tmp117, pyrtl.Const(1, bitwidth=1))
tmp119 = pyrtl.corecircuits.mux(tmp35, pyrtl.Const(0, bitwidth=1), tmp3)
tmp120 = pyrtl.corecircuits.mux(tmp4, tmp119, pyrtl.Const(0, bitwidth=1))
tmp121 = pyrtl.corecircuits.mux(tmp120, tmp10, tmp116)
tmp122 = pyrtl.corecircuits.mux(tmp118, tmp9, tmp120)
tmp123 = pyrtl.concat(tmp10, tmp278[14], tmp278[13], tmp278[12], tmp278[11], tmp278[10], tmp278[9], tmp278[8], tmp278[7], tmp278[6], tmp278[5], tmp278[4], tmp278[3], tmp278[2], tmp278[1], tmp278[0])
tmp124 = pyrtl.corecircuits.mux(tmp11, tmp123, pyrtl.Const(0, bitwidth=16))
tmp125 = pyrtl.Const(65535, bitwidth=16) - tmp5
tmp126 = tmp125[0 : 16]
tmp127 = tmp126 + pyrtl.Const(1, bitwidth=16)
tmp128 = tmp127[0 : 16]
tmp129 = pyrtl.concat(pyrtl.Const(0, bitwidth=1), tmp270[14], tmp270[13], tmp270[12], tmp270[11], tmp270[10], tmp270[9], tmp270[8], tmp270[7], tmp270[6], tmp270[5], tmp270[4], tmp270[3], tmp270[2], tmp270[1], tmp270[0])
tmp130 = pyrtl.corecircuits.mux(tmp270[15], tmp129, tmp128)
tmp131 = pyrtl.corecircuits.mux(tmp0, tmp5, tmp130)
tmp132 = tmp131[0 : 15]
tmp133 = pyrtl.corecircuits.mux(tmp120, tmp12, tmp132)
tmp280 = [None]*16
tmp281 = [None]*16
for tmp279 in range(16):
    tmp134 = tmp128[tmp279]
    tmp281[(tmp279 + 0)] = tmp134
tmp150 = ~tmp281[15]
tmp283 = [None]*16
for tmp282 in range(16):
    tmp151 = tmp270[((585 - tmp282) % 15)] | tmp281[(15 - tmp282)]
    tmp283[(tmp282 + 0)] = tmp151
tmp167 = ~tmp283[15]
tmp168 = pyrtl.corecircuits.mux(tmp120, tmp11, tmp167)
tmp169 = ~tmp283[1]
tmp170 = tmp283[1] & tmp150
tmp171 = tmp281[13] | tmp281[14]
tmp172 = tmp171 | tmp281[15]
tmp173 = tmp172 & tmp169
tmp174 = ~tmp172
tmp175 = tmp281[12] | tmp281[13]
tmp176 = tmp175 | tmp283[1]
tmp285 = [None]*5
tmp286 = [None]*5
tmp287 = tmp174
tmp288 = tmp176
for tmp284 in range(5):
    tmp177 = tmp288 & tmp287
    tmp286[(tmp284 % 8)] = tmp177
    tmp178 = ~tmp288
    tmp287 = tmp178
    tmp179 = tmp281[(11 - tmp284)] | tmp270[(12 - tmp284)]
    tmp180 = tmp179 | tmp288
    tmp181 = tmp180 | tmp270[(13 - tmp284)]
    tmp288 = tmp181
tmp202 = tmp288 | tmp281[15]
tmp203 = tmp202 & tmp287
tmp204 = ~tmp202
tmp290 = tmp128
for tmp289 in range(4):
    tmp205 = tmp283[(tmp289 * 3)] | tmp286[1]
    tmp290 = tmp205
tmp209 = tmp290 & tmp204
tmp210 = ~tmp290
tmp292 = tmp270
for tmp291 in range(4):
    tmp211 = tmp283[(tmp291 + 6)] | tmp283[(tmp291 + 7)]
    tmp292 = tmp211
tmp215 = ~tmp292
tmp216 = tmp292 & tmp210
tmp294 = tmp270
for tmp293 in range(4):
    tmp217 = tmp283[(14 - tmp293)] | tmp283[tmp293]
    tmp294 = tmp217
tmp221 = ~tmp294
tmp222 = tmp294 & tmp215
tmp296 = tmp14
for tmp295 in range(4):
    tmp223 = tmp283[(tmp295 + 9)] | tmp286[4]
    tmp296 = tmp223
tmp227 = tmp296 & tmp221
tmp228 = ~tmp296
tmp298 = tmp270
for tmp297 in range(4):
    tmp229 = tmp281[12] | tmp283[(tmp297 + 10)]
    tmp298 = tmp229
tmp233 = ~tmp298
tmp234 = tmp298 & tmp228
tmp235 = tmp283[0] | tmp298
tmp236 = tmp235 | tmp294
tmp237 = tmp236 | tmp288
tmp238 = tmp281[1] | tmp281[2]
tmp239 = tmp238 | tmp296
tmp240 = tmp239 | tmp292
tmp241 = tmp240 | tmp288
tmp242 = tmp241 & tmp233
tmp243 = ~tmp241
tmp244 = tmp237 & tmp243
tmp245 = tmp170 | tmp286[0]
tmp246 = tmp286[0] | tmp173
tmp247 = tmp286[2] | tmp286[4]
tmp248 = tmp245 | tmp247
tmp249 = tmp286[2] | tmp286[1]
tmp250 = tmp286[4] | tmp286[3]
tmp251 = tmp246 | tmp250
tmp252 = tmp250 | tmp249
tmp253 = tmp209 | tmp222
tmp254 = tmp209 | tmp203
tmp255 = tmp222 | tmp216
tmp256 = tmp255 | tmp254
tmp257 = tmp234 | tmp244
tmp258 = tmp253 | tmp257
tmp259 = tmp248 | tmp258
tmp260 = tmp234 | tmp227
tmp261 = tmp244 | tmp242
tmp262 = tmp255 | tmp261
tmp263 = tmp251 | tmp262
tmp264 = tmp261 | tmp260
tmp265 = tmp252 | tmp264
tmp266 = tmp264 | tmp256
tmp267 = pyrtl.concat(tmp266, tmp265, tmp263, tmp259)
tmp268 = pyrtl.corecircuits.mux(tmp120, tmp13, tmp267)
tmp9.next <<= tmp122
tmp10.next <<= tmp121
tmp11.next <<= tmp168
tmp12.next <<= tmp133
tmp13.next <<= tmp268
tmp6 <<= tmp9
tmp7 <<= tmp124
tmp8 <<= tmp33
