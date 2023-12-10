import pyrtl
tmp0 = pyrtl.Input(bitwidth=32, name='t0')
tmp1 = pyrtl.Input(bitwidth=1, name='t1')
tmp2 = pyrtl.Input(bitwidth=1, name='t2')
tmp3 = pyrtl.Input(bitwidth=5, name='t3')
tmp4 = pyrtl.Output(bitwidth=1, name='t4')
tmp5 = pyrtl.Output(bitwidth=32, name='t5')
tmp6 = tmp3[0]
tmp7 = tmp3[1]
tmp8 = tmp3[2]
tmp9 = tmp3[3]
tmp10 = tmp3[4]
tmp11 = tmp0[0]
tmp12 = tmp0[1]
tmp13 = tmp0[2]
tmp14 = tmp0[3]
tmp15 = tmp0[4]
tmp16 = tmp0[5]
tmp17 = tmp0[6]
tmp18 = tmp0[7]
tmp19 = tmp0[8]
tmp20 = tmp0[9]
tmp21 = tmp0[10]
tmp22 = tmp0[11]
tmp23 = tmp0[12]
tmp24 = tmp0[13]
tmp25 = tmp0[14]
tmp26 = tmp0[15]
tmp27 = tmp0[16]
tmp28 = tmp0[17]
tmp29 = tmp0[18]
tmp30 = tmp0[19]
tmp31 = tmp0[20]
tmp32 = tmp0[21]
tmp33 = tmp0[22]
tmp34 = tmp0[23]
tmp35 = tmp0[24]
tmp36 = tmp0[25]
tmp37 = tmp0[26]
tmp38 = tmp0[27]
tmp39 = tmp0[28]
tmp40 = tmp0[29]
tmp41 = tmp0[30]
tmp42 = tmp0[31]
tmp249 = tmp7
for tmp248 in range(4):
    tmp43 = tmp249 & tmp249
    tmp249 = tmp43
tmp47 = ~tmp6
tmp251 = tmp47
for tmp250 in range(4):
    tmp48 = tmp251 & tmp47
    tmp251 = tmp48
tmp52 = ~tmp7
tmp53 = tmp47 & tmp52
tmp54 = tmp53 & tmp8
tmp55 = tmp54 & tmp9
tmp56 = tmp55 & tmp10
tmp57 = tmp6 & tmp52
tmp58 = tmp57 & tmp8
tmp59 = tmp58 & tmp9
tmp60 = tmp59 & tmp10
tmp61 = ~tmp8
tmp62 = tmp53 & tmp61
tmp63 = tmp62 & tmp9
tmp64 = tmp63 & tmp10
tmp65 = tmp57 & tmp61
tmp66 = tmp65 & tmp9
tmp67 = tmp66 & tmp10
tmp68 = tmp251 & tmp61
tmp69 = tmp68 & tmp9
tmp70 = tmp69 & tmp10
tmp71 = tmp249 & tmp61
tmp72 = tmp71 & tmp9
tmp73 = tmp72 & tmp10
tmp74 = ~tmp9
tmp75 = tmp62 & tmp74
tmp76 = tmp75 & tmp10
tmp77 = tmp54 & tmp74
tmp78 = tmp77 & tmp10
tmp79 = tmp65 & tmp74
tmp80 = tmp79 & tmp10
tmp81 = tmp68 & tmp74
tmp82 = tmp81 & tmp10
tmp83 = tmp71 & tmp74
tmp84 = tmp83 & tmp10
tmp85 = tmp58 & tmp74
tmp86 = tmp85 & tmp10
tmp87 = tmp251 & tmp74
tmp88 = tmp87 & tmp10
tmp89 = tmp249 & tmp74
tmp90 = tmp89 & tmp10
tmp91 = ~tmp10
tmp92 = tmp55 & tmp91
tmp93 = tmp63 & tmp91
tmp94 = tmp66 & tmp91
tmp95 = tmp69 & tmp91
tmp96 = tmp72 & tmp91
tmp97 = tmp75 & tmp91
tmp98 = tmp77 & tmp91
tmp99 = tmp79 & tmp91
tmp100 = tmp81 & tmp91
tmp101 = tmp83 & tmp91
tmp102 = tmp85 & tmp91
tmp103 = tmp87 & tmp91
tmp104 = tmp89 & tmp91
tmp105 = tmp59 & tmp91
tmp106 = tmp251 & tmp91
tmp107 = tmp249 & tmp91
tmp108 = pyrtl.corecircuits.mux(tmp249, pyrtl.Const(0, bitwidth=1), tmp42)
tmp109 = pyrtl.corecircuits.mux(tmp251, tmp108, tmp41)
tmp110 = pyrtl.corecircuits.mux(tmp60, tmp109, tmp40)
tmp111 = pyrtl.corecircuits.mux(tmp56, tmp110, tmp39)
tmp112 = pyrtl.corecircuits.mux(tmp73, tmp111, tmp38)
tmp113 = pyrtl.corecircuits.mux(tmp70, tmp112, tmp37)
tmp114 = pyrtl.corecircuits.mux(tmp67, tmp113, tmp36)
tmp115 = pyrtl.corecircuits.mux(tmp64, tmp114, tmp35)
tmp116 = pyrtl.corecircuits.mux(tmp90, tmp115, tmp34)
tmp117 = pyrtl.corecircuits.mux(tmp88, tmp116, tmp33)
tmp118 = pyrtl.corecircuits.mux(tmp86, tmp117, tmp32)
tmp119 = pyrtl.corecircuits.mux(tmp78, tmp118, tmp31)
tmp120 = pyrtl.corecircuits.mux(tmp84, tmp119, tmp30)
tmp121 = pyrtl.corecircuits.mux(tmp82, tmp120, tmp29)
tmp122 = pyrtl.corecircuits.mux(tmp80, tmp121, tmp28)
tmp123 = pyrtl.corecircuits.mux(tmp76, tmp122, tmp27)
tmp124 = pyrtl.corecircuits.mux(tmp107, tmp123, tmp26)
tmp125 = pyrtl.corecircuits.mux(tmp106, tmp124, tmp25)
tmp126 = pyrtl.corecircuits.mux(tmp105, tmp125, tmp24)
tmp127 = pyrtl.corecircuits.mux(tmp92, tmp126, tmp23)
tmp128 = pyrtl.corecircuits.mux(tmp96, tmp127, tmp22)
tmp129 = pyrtl.corecircuits.mux(tmp95, tmp128, tmp21)
tmp130 = pyrtl.corecircuits.mux(tmp94, tmp129, tmp20)
tmp131 = pyrtl.corecircuits.mux(tmp93, tmp130, tmp19)
tmp132 = pyrtl.corecircuits.mux(tmp104, tmp131, tmp18)
tmp133 = pyrtl.corecircuits.mux(tmp103, tmp132, tmp17)
tmp134 = pyrtl.corecircuits.mux(tmp102, tmp133, tmp16)
tmp135 = pyrtl.corecircuits.mux(tmp98, tmp134, tmp15)
tmp136 = pyrtl.corecircuits.mux(tmp101, tmp135, tmp14)
tmp137 = pyrtl.corecircuits.mux(tmp100, tmp136, tmp13)
tmp138 = pyrtl.corecircuits.mux(tmp99, tmp137, tmp12)
tmp139 = pyrtl.corecircuits.mux(tmp97, tmp138, tmp11)
tmp140 = tmp139 & tmp2
tmp141 = pyrtl.Const(1, bitwidth=32)[0 : 31]
tmp142 = pyrtl.concat(tmp141, pyrtl.Const(0, bitwidth=1))
tmp143 = pyrtl.Const(1, bitwidth=32)[1 : 32]
tmp144 = pyrtl.concat(pyrtl.Const(0, bitwidth=1), tmp143)
tmp145 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp144, tmp142)
tmp146 = tmp3[0]
tmp147 = pyrtl.corecircuits.mux(tmp146, pyrtl.Const(1, bitwidth=32), tmp145)
tmp148 = pyrtl.Const(0, bitwidth=2)[0 : 2]
tmp149 = tmp147[0 : 30]
tmp150 = pyrtl.concat(tmp149, tmp148)
tmp151 = tmp147[2 : 32]
tmp152 = pyrtl.concat(tmp148, tmp151)
tmp153 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp152, tmp150)
tmp154 = tmp3[1]
tmp155 = pyrtl.corecircuits.mux(tmp154, tmp147, tmp153)
tmp156 = pyrtl.concat(tmp148, tmp148)
tmp157 = tmp156[0 : 4]
tmp158 = tmp155[0 : 28]
tmp159 = pyrtl.concat(tmp158, tmp157)
tmp160 = tmp155[4 : 32]
tmp161 = pyrtl.concat(tmp157, tmp160)
tmp162 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp161, tmp159)
tmp163 = tmp3[2]
tmp164 = pyrtl.corecircuits.mux(tmp163, tmp155, tmp162)
tmp165 = pyrtl.concat(tmp157, tmp157)
tmp166 = tmp165[0 : 8]
tmp167 = tmp164[0 : 24]
tmp168 = pyrtl.concat(tmp167, tmp166)
tmp169 = tmp164[8 : 32]
tmp170 = pyrtl.concat(tmp166, tmp169)
tmp171 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp170, tmp168)
tmp172 = tmp3[3]
tmp173 = pyrtl.corecircuits.mux(tmp172, tmp164, tmp171)
tmp174 = pyrtl.concat(tmp166, tmp166)
tmp175 = tmp174[0 : 16]
tmp176 = tmp173[0 : 16]
tmp177 = pyrtl.concat(tmp176, tmp175)
tmp178 = tmp173[16 : 32]
tmp179 = pyrtl.concat(tmp175, tmp178)
tmp180 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp179, tmp177)
tmp181 = tmp3[4]
tmp182 = pyrtl.corecircuits.mux(tmp181, tmp173, tmp180)
tmp253 = [None]*32
for tmp252 in range(32):
    tmp183 = tmp182[tmp252]
    tmp184 = tmp2 & tmp183
    tmp253[(tmp252 - 0)] = tmp184
tmp247 = pyrtl.concat(tmp253[31], tmp253[30], tmp253[29], tmp253[28], tmp253[27], tmp253[26], tmp253[25], tmp253[24], tmp253[23], tmp253[22], tmp253[21], tmp253[20], tmp253[19], tmp253[18], tmp253[17], tmp253[16], tmp253[15], tmp253[14], tmp253[13], tmp253[12], tmp253[11], tmp253[10], tmp253[9], tmp253[8], tmp253[7], tmp253[6], tmp253[5], tmp253[4], tmp253[3], tmp253[2], tmp253[1], tmp253[0])
tmp4 <<= tmp140
tmp5 <<= tmp247
