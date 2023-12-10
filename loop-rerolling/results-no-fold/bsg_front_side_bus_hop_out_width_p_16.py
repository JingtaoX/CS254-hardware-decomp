import pyrtl
tmp0 = pyrtl.Input(bitwidth=1, name='t0')
tmp1 = pyrtl.Input(bitwidth=32, name='t1')
tmp2 = pyrtl.Input(bitwidth=2, name='t2')
tmp3 = pyrtl.Input(bitwidth=1, name='t3')
tmp4 = pyrtl.Output(bitwidth=1, name='t4')
tmp5 = pyrtl.Output(bitwidth=16, name='t5')
tmp6 = pyrtl.Output(bitwidth=1, name='t6')
tmp7 = pyrtl.Output(bitwidth=1, name='t7')
tmp8 = pyrtl.Register(bitwidth=1, name='t8')
tmp9 = pyrtl.Register(bitwidth=1, name='t9')
tmp10 = pyrtl.Register(bitwidth=1, name='t10')
tmp11 = pyrtl.Register(bitwidth=1, name='t11')
tmp12 = pyrtl.Register(bitwidth=1, name='t12')
tmp13 = pyrtl.Register(bitwidth=32, name='t13')
tmp14 = tmp2[0]
tmp15 = tmp2[1]
tmp16 = tmp1[0]
tmp17 = tmp1[1]
tmp18 = tmp1[2]
tmp19 = tmp1[3]
tmp20 = tmp1[4]
tmp21 = tmp1[5]
tmp22 = tmp1[6]
tmp23 = tmp1[7]
tmp24 = tmp1[8]
tmp25 = tmp1[9]
tmp26 = tmp1[10]
tmp27 = tmp1[11]
tmp28 = tmp1[12]
tmp29 = tmp1[13]
tmp30 = tmp1[14]
tmp31 = tmp1[15]
tmp32 = tmp1[16]
tmp33 = tmp1[17]
tmp34 = tmp1[18]
tmp35 = tmp1[19]
tmp36 = tmp1[20]
tmp37 = tmp1[21]
tmp38 = tmp1[22]
tmp39 = tmp1[23]
tmp40 = tmp1[24]
tmp41 = tmp1[25]
tmp42 = tmp1[26]
tmp43 = tmp1[27]
tmp44 = tmp1[28]
tmp45 = tmp1[29]
tmp46 = tmp1[30]
tmp47 = tmp1[31]
tmp48 = ~tmp14
tmp49 = ~tmp8
tmp50 = tmp48 | tmp8
tmp51 = ~tmp50
tmp52 = tmp15 & tmp51
tmp53 = tmp15 | tmp14
tmp54 = pyrtl.corecircuits.mux(tmp50, tmp31, tmp47)
tmp55 = pyrtl.corecircuits.mux(tmp50, tmp30, tmp46)
tmp56 = pyrtl.corecircuits.mux(tmp50, tmp29, tmp45)
tmp57 = pyrtl.corecircuits.mux(tmp50, tmp28, tmp44)
tmp58 = pyrtl.corecircuits.mux(tmp50, tmp27, tmp43)
tmp59 = pyrtl.corecircuits.mux(tmp50, tmp26, tmp42)
tmp60 = pyrtl.corecircuits.mux(tmp50, tmp25, tmp41)
tmp61 = pyrtl.corecircuits.mux(tmp50, tmp24, tmp40)
tmp62 = pyrtl.corecircuits.mux(tmp50, tmp23, tmp39)
tmp63 = pyrtl.corecircuits.mux(tmp50, tmp22, tmp38)
tmp64 = pyrtl.corecircuits.mux(tmp50, tmp21, tmp37)
tmp65 = pyrtl.corecircuits.mux(tmp50, tmp20, tmp36)
tmp66 = pyrtl.corecircuits.mux(tmp50, tmp19, tmp35)
tmp67 = pyrtl.corecircuits.mux(tmp50, tmp18, tmp34)
tmp68 = pyrtl.corecircuits.mux(tmp50, tmp17, tmp33)
tmp69 = pyrtl.corecircuits.mux(tmp50, tmp16, tmp32)
tmp70 = pyrtl.corecircuits.mux(tmp9, tmp52, tmp8)
tmp71 = pyrtl.corecircuits.mux(tmp3, tmp70, pyrtl.Const(0, bitwidth=1))
tmp72 = ~tmp9
tmp73 = tmp72 & tmp15
tmp74 = tmp73 & tmp50
tmp75 = tmp72 & tmp49
tmp76 = tmp53 & tmp72
tmp77 = ~tmp11
tmp78 = ~tmp76
tmp79 = tmp12 & tmp78
tmp80 = ~tmp12
tmp81 = tmp80 & tmp0
tmp82 = tmp72 & tmp81
tmp83 = tmp82 & tmp78
tmp84 = tmp80 & tmp76
tmp85 = ~tmp81
tmp86 = tmp84 & tmp85
tmp87 = tmp9 & tmp85
tmp88 = tmp79 | tmp83
tmp89 = tmp86 | tmp87
tmp90 = pyrtl.corecircuits.mux(tmp3, tmp76, pyrtl.Const(1, bitwidth=1))
tmp91 = pyrtl.corecircuits.mux(tmp3, tmp81, pyrtl.Const(1, bitwidth=1))
tmp92 = pyrtl.corecircuits.mux(tmp3, tmp77, pyrtl.Const(0, bitwidth=1))
tmp93 = pyrtl.corecircuits.mux(tmp91, tmp11, tmp92)
tmp94 = pyrtl.corecircuits.mux(tmp3, tmp88, pyrtl.Const(1, bitwidth=1))
tmp95 = pyrtl.corecircuits.mux(tmp3, tmp89, pyrtl.Const(0, bitwidth=1))
tmp96 = ~tmp10
tmp97 = pyrtl.corecircuits.mux(tmp3, tmp96, pyrtl.Const(0, bitwidth=1))
tmp98 = pyrtl.corecircuits.mux(tmp90, tmp10, tmp97)
tmp192 = [None]*32
for tmp191 in range(32):
    tmp99 = tmp13[tmp191]
    tmp192[(tmp191 + 0)] = tmp99
tmp131 = pyrtl.concat(tmp192[31], tmp192[30], tmp192[29], tmp192[28], tmp192[27], tmp192[26], tmp192[25], tmp192[24], tmp192[23], tmp192[22], tmp192[21], tmp192[20], tmp192[19], tmp192[18], tmp192[17], tmp192[16])
tmp132 = pyrtl.concat(tmp54, tmp55, tmp56, tmp57, tmp58, tmp59, tmp60, tmp61, tmp62, tmp63, tmp64, tmp65, tmp66, tmp67, tmp68, tmp69)
tmp133 = tmp13[0 : 16]
tmp134 = pyrtl.concat(tmp54, tmp55, tmp56, tmp57, tmp58, tmp59, tmp60, tmp61, tmp62, tmp63, tmp64, tmp65, tmp66, tmp67, tmp68, tmp69)
tmp135 = pyrtl.corecircuits.mux(tmp11, tmp192[0], tmp192[16])
tmp136 = pyrtl.concat(tmp10, tmp96)
tmp137 = pyrtl.corecircuits.mux(tmp76, pyrtl.Const(0, bitwidth=2), tmp136)
tmp138 = tmp137[0]
tmp139 = pyrtl.corecircuits.mux(tmp138, tmp133, tmp134)
tmp140 = tmp139[0]
tmp141 = tmp139[1]
tmp142 = tmp139[2]
tmp143 = tmp139[3]
tmp144 = tmp139[4]
tmp145 = tmp139[5]
tmp146 = tmp139[6]
tmp147 = tmp139[7]
tmp148 = tmp139[8]
tmp149 = tmp139[9]
tmp150 = tmp139[10]
tmp151 = tmp139[11]
tmp152 = tmp139[12]
tmp153 = tmp139[13]
tmp154 = tmp139[14]
tmp155 = tmp139[15]
tmp156 = tmp137[1]
tmp157 = pyrtl.corecircuits.mux(tmp156, tmp131, tmp132)
tmp194 = [None]*16
for tmp193 in range(16):
    tmp158 = tmp157[tmp193]
    tmp194[(tmp193 + 0)] = tmp158
tmp174 = pyrtl.concat(tmp194[15], tmp194[14], tmp194[13], tmp194[12], tmp194[11], tmp194[10], tmp194[9], tmp194[8], tmp194[7], tmp194[6], tmp194[5], tmp194[4], tmp194[3], tmp194[2], tmp194[1], tmp194[0], tmp155, tmp154, tmp153, tmp152, tmp151, tmp150, tmp149, tmp148, tmp147, tmp146, tmp145, tmp144, tmp143, tmp142, tmp141, tmp140)
tmp196 = [None]*15
for tmp195 in range(15):
    tmp175 = pyrtl.corecircuits.mux(tmp11, tmp192[(15 - tmp195)], tmp192[(31 - tmp195)])
    tmp196[(tmp195 % 128)] = tmp175
tmp190 = pyrtl.concat(tmp196[0], tmp196[1], tmp196[2], tmp196[3], tmp196[4], tmp196[5], tmp196[6], tmp196[7], tmp196[8], tmp196[9], tmp196[10], tmp196[11], tmp196[12], tmp196[13], tmp196[14], tmp135)
tmp8.next <<= tmp71
tmp9.next <<= tmp95
tmp10.next <<= tmp98
tmp11.next <<= tmp93
tmp12.next <<= tmp94
tmp13.next <<= tmp174
tmp4 <<= tmp80
tmp5 <<= tmp190
tmp6 <<= tmp74
tmp7 <<= tmp75
