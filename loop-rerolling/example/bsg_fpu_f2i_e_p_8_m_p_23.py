import pyrtl
tmp0 = pyrtl.Input(bitwidth=1, name='t0')
tmp1 = pyrtl.Input(bitwidth=32, name='t1')
tmp2 = pyrtl.Output(bitwidth=32, name='t2')
tmp3 = pyrtl.Output(bitwidth=1, name='t3')
tmp4 = pyrtl.concat(pyrtl.Const(0, bitwidth=31), tmp1[31])
tmp5 = tmp0 & tmp1[31]
tmp6 = pyrtl.concat(tmp1[30], tmp1[29], tmp1[28], tmp1[27], tmp1[26], tmp1[25], tmp1[24], tmp1[23])
tmp7 = tmp6 > pyrtl.Const(157, bitwidth=8)
tmp8 = pyrtl.concat(tmp1[30], tmp1[29], tmp1[28], tmp1[27], tmp1[26], tmp1[25], tmp1[24], tmp1[23])
tmp9 = tmp8 > pyrtl.Const(158, bitwidth=8)
tmp10 = pyrtl.concat(tmp1[30], tmp1[29], tmp1[28], tmp1[27], tmp1[26], tmp1[25], tmp1[24], tmp1[23])
tmp11 = tmp10 < pyrtl.Const(127, bitwidth=8)
tmp12 = ~tmp0
tmp13 = tmp12 & tmp1[31]
tmp14 = ~tmp1[31]
tmp15 = ~tmp13
tmp16 = pyrtl.Const(0, bitwidth=2)[0 : 2]
tmp17 = pyrtl.concat(tmp16, tmp16)
tmp162 = tmp17
for tmp161 in range(3):
    tmp18 = pyrtl.concat(tmp4[0 : (tmp161 * 8) if (tmp161 / 1) else (4 - tmp161)], tmp162[0 : (tmp161 * 8) if (tmp161 / 1) else (4 - tmp161)])
    tmp162 = tmp18
tmp21 = pyrtl.concat(tmp1[28], tmp1[27], tmp1[26], tmp1[25], tmp1[24], tmp1[23])
tmp22 = pyrtl.Const(29, bitwidth=6) - tmp21
tmp23 = pyrtl.concat(tmp1[28], tmp1[27], tmp1[26], tmp1[25], tmp1[24], tmp1[23])
tmp24 = pyrtl.Const(30, bitwidth=6) - tmp23
tmp25 = pyrtl.corecircuits.mux(tmp0, tmp9, tmp7)
tmp26 = ~tmp25
tmp27 = pyrtl.concat(tmp1[22], tmp1[21], tmp1[20], tmp1[19], tmp1[18], tmp1[17], tmp1[16], tmp1[15], tmp1[14], tmp1[13], tmp1[12], tmp1[11], tmp1[10], tmp1[9], tmp1[8], tmp1[7], tmp1[6], tmp1[5], tmp1[4], tmp1[3], tmp1[2], tmp1[1], tmp1[0], pyrtl.Const(0, bitwidth=1))
tmp28 = pyrtl.concat(pyrtl.Const(1, bitwidth=1), tmp1[22], tmp1[21], tmp1[20], tmp1[19], tmp1[18], tmp1[17], tmp1[16], tmp1[15], tmp1[14], tmp1[13], tmp1[12], tmp1[11], tmp1[10], tmp1[9], tmp1[8], tmp1[7], tmp1[6], tmp1[5], tmp1[4], tmp1[3], tmp1[2], tmp1[1], tmp1[0])
tmp29 = pyrtl.corecircuits.mux(tmp0, tmp27, tmp28)
tmp30 = pyrtl.concat(tmp12, tmp29[23], tmp29[22], tmp29[21], tmp29[20], tmp29[19], tmp29[18], tmp29[17], tmp29[16], tmp29[15], tmp29[14], tmp29[13], tmp29[12], tmp29[11], tmp29[10], tmp29[9], tmp29[8], tmp29[7], tmp29[6], tmp29[5], tmp29[4], tmp29[3], tmp29[2], tmp29[1], tmp29[0], pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1))
tmp31 = pyrtl.concat(tmp30[0 : 31], pyrtl.Const(0, bitwidth=1))
tmp32 = pyrtl.concat(pyrtl.Const(0, bitwidth=1), tmp30[1 : 32])
tmp33 = pyrtl.corecircuits.mux(pyrtl.Const(0, bitwidth=1), tmp32, tmp31)
tmp34 = pyrtl.corecircuits.mux(tmp0, tmp24[0 : 6], tmp22[0 : 6])
tmp35 = pyrtl.corecircuits.mux(tmp34[0], tmp30, tmp33)
tmp36 = pyrtl.concat(tmp16, tmp35[2 : 32])
tmp37 = pyrtl.concat(tmp35[0 : 30], tmp16)
tmp38 = pyrtl.corecircuits.mux(pyrtl.Const(0, bitwidth=1), tmp36, tmp37)
tmp39 = pyrtl.corecircuits.mux(tmp34[1], tmp35, tmp38)
tmp40 = pyrtl.concat(tmp39[0 : 28], tmp17[0 : 4])
tmp41 = pyrtl.concat(tmp17[0 : 4], tmp39[4 : 32])
tmp42 = pyrtl.corecircuits.mux(pyrtl.Const(0, bitwidth=1), tmp41, tmp40)
tmp43 = pyrtl.corecircuits.mux(tmp34[2], tmp39, tmp42)
tmp44 = pyrtl.concat(tmp43[0 : 24], tmp162[0 : 8])
tmp45 = pyrtl.concat(tmp162[0 : 8], tmp43[8 : 32])
tmp46 = pyrtl.corecircuits.mux(pyrtl.Const(0, bitwidth=1), tmp45, tmp44)
tmp47 = pyrtl.corecircuits.mux(tmp34[3], tmp43, tmp46)
tmp48 = pyrtl.concat(tmp47[0 : 16], tmp162[0 : 16])
tmp49 = pyrtl.concat(tmp162[0 : 16], tmp47[16 : 32])
tmp50 = pyrtl.corecircuits.mux(pyrtl.Const(0, bitwidth=1), tmp49, tmp48)
tmp51 = pyrtl.corecircuits.mux(tmp34[4], tmp47, tmp50)
tmp52 = pyrtl.corecircuits.mux(tmp34[5], tmp51, tmp162[0 : 32])
tmp53 = pyrtl.corecircuits.mux(tmp1[31], tmp12, tmp0)
tmp54 = pyrtl.concat(tmp1[31], tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14)
tmp55 = pyrtl.concat(tmp53, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14)
tmp56 = pyrtl.concat(tmp12, pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1))
tmp164 = [None]*32
for tmp163 in range(32):
    tmp57 = tmp25 ^ tmp32[(31 - tmp163)]
    tmp164[tmp163] = tmp57
tmp89 = pyrtl.concat(tmp164[0], tmp164[1], tmp164[2], tmp164[3], tmp164[4], tmp164[5], tmp164[6], tmp164[7], tmp164[8], tmp164[9], tmp164[10], tmp164[11], tmp164[12], tmp164[13], tmp164[14], tmp164[15], tmp164[16], tmp164[17], tmp164[18], tmp164[19], tmp164[20], tmp164[21], tmp164[22], tmp164[23], tmp164[24], tmp164[25], tmp164[26], tmp164[27], tmp164[28], tmp164[29], tmp164[30], tmp164[31])
tmp90 = tmp89 + tmp4
tmp91 = tmp1[29] & tmp1[30]
tmp166 = tmp91
for tmp165 in range(6):
    tmp92 = tmp1[(28 - tmp165)] & tmp166
    tmp166 = tmp92
tmp98 = tmp1[21] | tmp1[22]
tmp168 = tmp98
for tmp167 in range(21):
    tmp99 = tmp28[(20 - tmp167)] | tmp168
    tmp168 = tmp99
tmp120 = tmp166 & tmp168
tmp121 = ~tmp120
tmp122 = ~tmp168
tmp123 = tmp166 & tmp122
tmp124 = tmp123 & tmp121
tmp125 = ~tmp123
tmp126 = tmp121 & tmp125
tmp127 = tmp13 & tmp126
tmp128 = tmp126 & tmp15
tmp129 = tmp123 | tmp120
tmp130 = tmp13 | tmp129
tmp131 = tmp1[29] | tmp1[30]
tmp170 = tmp131
for tmp169 in range(6):
    tmp132 = tmp1[(28 - tmp169)] | tmp170
    tmp170 = tmp132
tmp138 = ~tmp170
tmp139 = tmp138 & tmp122
tmp140 = tmp139 & tmp128
tmp141 = ~tmp139
tmp142 = tmp128 & tmp141
tmp143 = tmp25 & tmp142
tmp144 = pyrtl.corecircuits.mux(tmp143, pyrtl.Const(0, bitwidth=1), pyrtl.Const(1, bitwidth=1))
tmp172 = tmp144
for tmp171 in range(4):
    tmp145 = pyrtl.corecircuits.mux(tmp130, tmp172, pyrtl.Const(1 if (tmp171 / 1) else (tmp171 / 56), bitwidth=1))
    tmp172 = tmp145
tmp149 = tmp142 & tmp26
tmp150 = tmp11 & tmp149
tmp174 = tmp16
for tmp173 in range(3):
    tmp151 = tmp174 | tmp174
    tmp174 = tmp151
tmp154 = pyrtl.corecircuits.mux(tmp174, tmp90[0 : 32], pyrtl.Const(0, bitwidth=32))
tmp155 = pyrtl.corecircuits.mux(tmp150, tmp154, pyrtl.Const(0, bitwidth=32))
tmp156 = pyrtl.corecircuits.mux(tmp143, tmp155, tmp54)
tmp157 = pyrtl.corecircuits.mux(tmp140, tmp156, pyrtl.Const(0, bitwidth=32))
tmp158 = pyrtl.corecircuits.mux(tmp127, tmp157, pyrtl.Const(0, bitwidth=32))
tmp159 = pyrtl.corecircuits.mux(tmp124, tmp158, tmp55)
tmp160 = pyrtl.corecircuits.mux(tmp120, tmp159, tmp56)
tmp2 <<= tmp160
tmp3 <<= tmp172
