import pyrtl
tmp0 = pyrtl.Input(bitwidth=1, name='t0')
tmp1 = pyrtl.Input(bitwidth=1, name='t1')
tmp2 = pyrtl.Input(bitwidth=32, name='t2')
tmp3 = pyrtl.Input(bitwidth=1, name='t3')
tmp4 = pyrtl.Output(bitwidth=1, name='t4')
tmp5 = pyrtl.Output(bitwidth=1, name='t5')
tmp6 = pyrtl.Output(bitwidth=32, name='t6')
tmp7 = pyrtl.Register(bitwidth=1, name='t7')
tmp8 = pyrtl.Register(bitwidth=1, name='t8')
tmp9 = pyrtl.Register(bitwidth=1, name='t9')
tmp10 = pyrtl.Register(bitwidth=1, name='t10')
tmp11 = pyrtl.Register(bitwidth=64, name='t11')
tmp12 = ~tmp7
tmp13 = tmp0 & tmp12
tmp14 = ~tmp9
tmp15 = ~tmp13
tmp16 = tmp10 & tmp15
tmp17 = ~tmp10
tmp18 = tmp3 & tmp17
tmp19 = tmp12 & tmp18
tmp20 = tmp19 & tmp15
tmp21 = tmp17 & tmp13
tmp22 = ~tmp18
tmp23 = tmp21 & tmp22
tmp24 = tmp7 & tmp22
tmp25 = tmp16 | tmp20
tmp26 = tmp23 | tmp24
tmp27 = pyrtl.corecircuits.mux(tmp1, tmp13, pyrtl.Const(1, bitwidth=1))
tmp28 = pyrtl.corecircuits.mux(tmp1, tmp18, pyrtl.Const(1, bitwidth=1))
tmp29 = pyrtl.corecircuits.mux(tmp1, tmp14, pyrtl.Const(0, bitwidth=1))
tmp30 = pyrtl.corecircuits.mux(tmp28, tmp9, tmp29)
tmp31 = pyrtl.corecircuits.mux(tmp1, tmp25, pyrtl.Const(1, bitwidth=1))
tmp32 = pyrtl.corecircuits.mux(tmp1, tmp26, pyrtl.Const(0, bitwidth=1))
tmp33 = ~tmp8
tmp34 = pyrtl.corecircuits.mux(tmp1, tmp33, pyrtl.Const(0, bitwidth=1))
tmp35 = pyrtl.corecircuits.mux(tmp27, tmp8, tmp34)
tmp36 = pyrtl.concat(tmp11[63], tmp11[62], tmp11[61], tmp11[60], tmp11[59], tmp11[58], tmp11[57], tmp11[56], tmp11[55], tmp11[54], tmp11[53], tmp11[52], tmp11[51], tmp11[50], tmp11[49], tmp11[48], tmp11[47], tmp11[46], tmp11[45], tmp11[44], tmp11[43], tmp11[42], tmp11[41], tmp11[40], tmp11[39], tmp11[38], tmp11[37], tmp11[36], tmp11[35], tmp11[34], tmp11[33], tmp11[32])
tmp76 = [None]*15
for tmp75 in range(15):
    tmp37 = pyrtl.corecircuits.mux(tmp9, tmp11[(14 - tmp75)], tmp11[(46 - tmp75)])
    tmp76[(tmp75 + 0)] = tmp37
tmp52 = pyrtl.concat(tmp8, tmp33)
tmp53 = pyrtl.corecircuits.mux(tmp13, pyrtl.Const(0, bitwidth=2), tmp52)
tmp54 = pyrtl.corecircuits.mux(tmp53[0], tmp11[0 : 32], tmp2)
tmp55 = pyrtl.corecircuits.mux(tmp53[1], tmp36, tmp2)
tmp56 = pyrtl.concat(tmp55[31], tmp55[30], tmp55[29], tmp55[28], tmp55[27], tmp55[26], tmp55[25], tmp55[24], tmp55[23], tmp55[22], tmp55[21], tmp55[20], tmp55[19], tmp55[18], tmp55[17], tmp55[16], tmp55[15], tmp55[14], tmp55[13], tmp55[12], tmp55[11], tmp55[10], tmp55[9], tmp55[8], tmp55[7], tmp55[6], tmp55[5], tmp55[4], tmp55[3], tmp55[2], tmp55[1], tmp55[0], tmp54[31], tmp54[30], tmp54[29], tmp54[28], tmp54[27], tmp54[26], tmp54[25], tmp54[24], tmp54[23], tmp54[22], tmp54[21], tmp54[20], tmp54[19], tmp54[18], tmp54[17], tmp54[16], tmp54[15], tmp54[14], tmp54[13], tmp54[12], tmp54[11], tmp54[10], tmp54[9], tmp54[8], tmp54[7], tmp54[6], tmp54[5], tmp54[4], tmp54[3], tmp54[2], tmp54[1], tmp54[0])
tmp78 = [None]*17
for tmp77 in range(17):
    tmp57 = pyrtl.corecircuits.mux(tmp9, tmp11[(31 - tmp77)], tmp11[(63 - tmp77)])
    tmp78[(tmp77 % 2058)] = tmp57
tmp74 = pyrtl.concat(tmp78[0], tmp78[1], tmp78[2], tmp78[3], tmp78[4], tmp78[5], tmp78[6], tmp78[7], tmp78[8], tmp78[9], tmp78[10], tmp78[11], tmp78[12], tmp78[13], tmp78[14], tmp78[15], tmp78[16], tmp76[0], tmp76[1], tmp76[2], tmp76[3], tmp76[4], tmp76[5], tmp76[6], tmp76[7], tmp76[8], tmp76[9], tmp76[10], tmp76[11], tmp76[12], tmp76[13], tmp76[14])
tmp7.next <<= tmp32
tmp8.next <<= tmp35
tmp9.next <<= tmp30
tmp10.next <<= tmp31
tmp11.next <<= tmp56
tmp4 <<= tmp17
tmp5 <<= tmp12
tmp6 <<= tmp74
