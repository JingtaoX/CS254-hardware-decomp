import pyrtl
tmp0 = pyrtl.Input(bitwidth=1, name='t0')
tmp1 = pyrtl.Input(bitwidth=16, name='t1')
tmp2 = pyrtl.Output(bitwidth=1, name='t2')
tmp3 = pyrtl.Output(bitwidth=16, name='t3')
tmp184 = [None]*16
tmp185 = [None]*16
tmp186 = [None]*16
for tmp183 in range(16):
    tmp4 = tmp1[tmp183]
    tmp186[tmp183] = tmp4
tmp20 = pyrtl.concat(pyrtl.Const(0, bitwidth=15), tmp186[15])
tmp21 = tmp0 & tmp186[15]
tmp22 = pyrtl.concat(tmp186[14], tmp186[13], tmp186[12], tmp186[11], tmp186[10])
tmp23 = tmp22 > pyrtl.Const(29, bitwidth=5)
tmp24 = pyrtl.concat(tmp186[14], tmp186[13], tmp186[12], tmp186[11], tmp186[10])
tmp25 = tmp24 > pyrtl.Const(30, bitwidth=5)
tmp26 = pyrtl.concat(tmp186[14], tmp186[13], tmp186[12], tmp186[11], tmp186[10])
tmp27 = tmp26 < pyrtl.Const(15, bitwidth=5)
tmp28 = ~tmp0
tmp29 = tmp28 & tmp186[15]
tmp30 = ~tmp186[15]
tmp31 = ~tmp29
tmp32 = pyrtl.Const(0, bitwidth=2)[0 : 2]
tmp33 = pyrtl.concat(tmp32, tmp32)
tmp34 = tmp33[0 : 4]
tmp35 = pyrtl.concat(tmp34, tmp34)
tmp36 = tmp35[0 : 8]
tmp37 = pyrtl.concat(tmp36, tmp36)
tmp38 = tmp37[0 : 16]
tmp39 = pyrtl.concat(tmp186[14], tmp186[13], tmp186[12], tmp186[11], tmp186[10])
tmp40 = pyrtl.Const(29, bitwidth=5) - tmp39
tmp41 = tmp40[0 : 5]
tmp42 = pyrtl.concat(tmp186[14], tmp186[13], tmp186[12], tmp186[11], tmp186[10])
tmp43 = pyrtl.Const(30, bitwidth=5) - tmp42
tmp44 = tmp43[0 : 5]
tmp45 = pyrtl.corecircuits.mux(tmp0, tmp25, tmp23)
tmp46 = ~tmp45
tmp47 = pyrtl.concat(tmp186[9], tmp186[8], tmp186[7], tmp186[6], tmp186[5], tmp186[4], tmp186[3], tmp186[2], tmp186[1], tmp186[0], pyrtl.Const(0, bitwidth=1))
tmp48 = pyrtl.concat(pyrtl.Const(1, bitwidth=1), tmp186[9], tmp186[8], tmp186[7], tmp186[6], tmp186[5], tmp186[4], tmp186[3], tmp186[2], tmp186[1], tmp186[0])
tmp49 = pyrtl.corecircuits.mux(tmp0, tmp47, tmp48)
tmp188 = [None]*11
for tmp187 in range(11):
    tmp50 = tmp49[tmp187]
    tmp188[tmp187] = tmp50
tmp61 = pyrtl.concat(tmp28, tmp188[10], tmp188[9], tmp188[8], tmp188[7], tmp188[6], tmp188[5], tmp188[4], tmp188[3], tmp188[2], tmp188[1], tmp188[0], pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1))
tmp62 = tmp61[0 : 15]
tmp63 = pyrtl.concat(tmp62, pyrtl.Const(0, bitwidth=1))
tmp64 = tmp61[1 : 16]
tmp65 = pyrtl.concat(pyrtl.Const(0, bitwidth=1), tmp64)
tmp66 = pyrtl.corecircuits.mux(pyrtl.Const(0, bitwidth=1), tmp65, tmp63)
tmp67 = pyrtl.corecircuits.mux(tmp0, tmp44, tmp41)
tmp68 = tmp67[0]
tmp69 = pyrtl.corecircuits.mux(tmp68, tmp61, tmp66)
tmp70 = tmp69[0 : 14]
tmp71 = pyrtl.concat(tmp70, tmp32)
tmp72 = tmp69[2 : 16]
tmp73 = pyrtl.concat(tmp32, tmp72)
tmp74 = pyrtl.corecircuits.mux(pyrtl.Const(0, bitwidth=1), tmp73, tmp71)
tmp75 = tmp67[1]
tmp76 = pyrtl.corecircuits.mux(tmp75, tmp69, tmp74)
tmp77 = tmp76[0 : 12]
tmp78 = pyrtl.concat(tmp77, tmp34)
tmp79 = tmp76[4 : 16]
tmp80 = pyrtl.concat(tmp34, tmp79)
tmp81 = pyrtl.corecircuits.mux(pyrtl.Const(0, bitwidth=1), tmp80, tmp78)
tmp82 = tmp67[2]
tmp83 = pyrtl.corecircuits.mux(tmp82, tmp76, tmp81)
tmp84 = tmp83[0 : 8]
tmp85 = pyrtl.concat(tmp84, tmp36)
tmp86 = tmp83[8 : 16]
tmp87 = pyrtl.concat(tmp36, tmp86)
tmp88 = pyrtl.corecircuits.mux(pyrtl.Const(0, bitwidth=1), tmp87, tmp85)
tmp89 = tmp67[3]
tmp90 = pyrtl.corecircuits.mux(tmp89, tmp83, tmp88)
tmp91 = tmp67[4]
tmp92 = pyrtl.corecircuits.mux(tmp91, tmp90, tmp38)
tmp190 = [None]*16
for tmp189 in range(16):
    tmp93 = tmp65[tmp189]
    tmp190[(tmp189 + 0)] = tmp93
tmp109 = pyrtl.corecircuits.mux(tmp186[15], tmp28, tmp0)
tmp110 = pyrtl.concat(tmp186[15], tmp30, tmp30, tmp30, tmp30, tmp30, tmp30, tmp30, tmp30, tmp30, tmp30, tmp30, tmp30, tmp30, tmp30, tmp30)
tmp111 = pyrtl.concat(tmp109, tmp30, tmp30, tmp30, tmp30, tmp30, tmp30, tmp30, tmp30, tmp30, tmp30, tmp30, tmp30, tmp30, tmp30, tmp30)
tmp112 = pyrtl.concat(tmp28, pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1))
tmp192 = [None]*16
for tmp191 in range(16):
    tmp113 = tmp109 ^ tmp186[(15 - tmp191)]
    tmp192[(tmp191 % 1709)] = tmp113
tmp129 = pyrtl.concat(tmp192[0], tmp192[1], tmp192[2], tmp192[3], tmp192[4], tmp192[5], tmp192[6], tmp192[7], tmp192[8], tmp192[9], tmp192[10], tmp192[11], tmp192[12], tmp192[13], tmp192[14], tmp192[15])
tmp130 = tmp129 + tmp20
tmp131 = tmp130[0 : 16]
tmp132 = tmp186[13] & tmp186[14]
tmp133 = tmp186[12] & tmp132
tmp134 = tmp186[11] & tmp133
tmp135 = tmp186[10] & tmp134
tmp136 = tmp186[13] | tmp186[14]
tmp137 = tmp186[12] | tmp136
tmp138 = tmp186[11] | tmp137
tmp139 = tmp186[10] | tmp138
tmp140 = ~tmp139
tmp141 = tmp186[8] | tmp186[9]
tmp142 = tmp186[7] | tmp141
tmp143 = tmp186[6] | tmp142
tmp144 = tmp186[5] | tmp143
tmp145 = tmp186[4] | tmp144
tmp146 = tmp186[3] | tmp145
tmp147 = tmp186[2] | tmp146
tmp148 = tmp186[1] | tmp147
tmp149 = tmp186[0] | tmp148
tmp150 = tmp135 & tmp149
tmp151 = ~tmp150
tmp152 = ~tmp149
tmp153 = tmp140 & tmp152
tmp154 = ~tmp153
tmp155 = tmp135 & tmp152
tmp156 = tmp155 & tmp151
tmp157 = ~tmp155
tmp158 = tmp151 & tmp157
tmp159 = tmp29 & tmp158
tmp160 = tmp158 & tmp31
tmp161 = tmp153 & tmp160
tmp162 = tmp160 & tmp154
tmp163 = tmp45 & tmp162
tmp164 = pyrtl.corecircuits.mux(tmp163, pyrtl.Const(0, bitwidth=1), pyrtl.Const(1, bitwidth=1))
tmp165 = pyrtl.corecircuits.mux(tmp161, tmp164, pyrtl.Const(0, bitwidth=1))
tmp166 = pyrtl.corecircuits.mux(tmp159, tmp165, pyrtl.Const(1, bitwidth=1))
tmp167 = pyrtl.corecircuits.mux(tmp156, tmp166, pyrtl.Const(1, bitwidth=1))
tmp168 = pyrtl.corecircuits.mux(tmp150, tmp167, pyrtl.Const(1, bitwidth=1))
tmp169 = tmp162 & tmp46
tmp170 = tmp27 & tmp169
tmp194 = tmp72
for tmp193 in range(5):
    tmp171 = tmp194 | tmp70
    tmp194 = tmp171
tmp176 = pyrtl.corecircuits.mux(tmp194, tmp131, pyrtl.Const(0, bitwidth=16))
tmp177 = pyrtl.corecircuits.mux(tmp170, tmp176, pyrtl.Const(0, bitwidth=16))
tmp178 = pyrtl.corecircuits.mux(tmp163, tmp177, tmp110)
tmp179 = pyrtl.corecircuits.mux(tmp161, tmp178, pyrtl.Const(0, bitwidth=16))
tmp180 = pyrtl.corecircuits.mux(tmp159, tmp179, pyrtl.Const(0, bitwidth=16))
tmp181 = pyrtl.corecircuits.mux(tmp156, tmp180, tmp111)
tmp182 = pyrtl.corecircuits.mux(tmp150, tmp181, tmp112)
tmp2 <<= tmp168
tmp3 <<= tmp182
