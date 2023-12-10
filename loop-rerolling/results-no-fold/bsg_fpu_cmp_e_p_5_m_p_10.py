import pyrtl
tmp0 = pyrtl.Input(bitwidth=16, name='t0')
tmp1 = pyrtl.Input(bitwidth=16, name='t1')
tmp2 = pyrtl.Output(bitwidth=16, name='t2')
tmp3 = pyrtl.Output(bitwidth=1, name='t3')
tmp4 = pyrtl.Output(bitwidth=1, name='t4')
tmp5 = pyrtl.Output(bitwidth=1, name='t5')
tmp6 = pyrtl.Output(bitwidth=1, name='t6')
tmp7 = pyrtl.Output(bitwidth=1, name='t7')
tmp8 = pyrtl.Output(bitwidth=1, name='t8')
tmp9 = pyrtl.Output(bitwidth=16, name='t9')
tmp10 = tmp0[0]
tmp11 = tmp0[1]
tmp12 = tmp0[2]
tmp13 = tmp0[3]
tmp14 = tmp0[4]
tmp15 = tmp0[5]
tmp16 = tmp0[6]
tmp17 = tmp0[7]
tmp18 = tmp0[8]
tmp19 = tmp0[9]
tmp20 = tmp0[10]
tmp21 = tmp0[11]
tmp22 = tmp0[12]
tmp23 = tmp0[13]
tmp24 = tmp0[14]
tmp25 = tmp0[15]
tmp26 = tmp1[0]
tmp27 = tmp1[1]
tmp28 = tmp1[2]
tmp29 = tmp1[3]
tmp30 = tmp1[4]
tmp31 = tmp1[5]
tmp32 = tmp1[6]
tmp33 = tmp1[7]
tmp34 = tmp1[8]
tmp35 = tmp1[9]
tmp36 = tmp1[10]
tmp37 = tmp1[11]
tmp38 = tmp1[12]
tmp39 = tmp1[13]
tmp40 = tmp1[14]
tmp41 = tmp1[15]
tmp42 = tmp25 & tmp41
tmp43 = tmp0 == tmp1
tmp44 = ~tmp25
tmp45 = ~tmp41
tmp46 = tmp44 & tmp45
tmp47 = ~tmp43
tmp48 = tmp25 | tmp45
tmp49 = tmp44 | tmp41
tmp50 = tmp25 | tmp41
tmp51 = pyrtl.concat(tmp50, pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1))
tmp52 = pyrtl.concat(tmp42, pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1))
tmp53 = tmp23 & tmp24
tmp54 = tmp22 & tmp53
tmp55 = tmp21 & tmp54
tmp56 = tmp20 & tmp55
tmp57 = ~tmp19
tmp58 = tmp18 | tmp19
tmp59 = tmp17 | tmp58
tmp60 = tmp16 | tmp59
tmp61 = tmp15 | tmp60
tmp62 = tmp14 | tmp61
tmp63 = tmp13 | tmp62
tmp64 = tmp12 | tmp63
tmp65 = tmp11 | tmp64
tmp66 = tmp10 | tmp65
tmp67 = tmp56 & tmp66
tmp68 = ~tmp67
tmp69 = tmp67 & tmp57
tmp70 = ~tmp66
tmp71 = tmp23 | tmp24
tmp72 = tmp22 | tmp71
tmp73 = tmp21 | tmp72
tmp74 = tmp20 | tmp73
tmp75 = ~tmp74
tmp76 = tmp75 & tmp70
tmp77 = tmp39 & tmp40
tmp78 = tmp38 & tmp77
tmp79 = tmp37 & tmp78
tmp80 = tmp36 & tmp79
tmp81 = ~tmp35
tmp82 = tmp34 | tmp35
tmp83 = tmp33 | tmp82
tmp84 = tmp32 | tmp83
tmp85 = tmp31 | tmp84
tmp86 = tmp30 | tmp85
tmp87 = tmp29 | tmp86
tmp88 = tmp28 | tmp87
tmp89 = tmp27 | tmp88
tmp90 = tmp26 | tmp89
tmp91 = tmp80 & tmp90
tmp92 = tmp67 & tmp91
tmp93 = ~tmp91
tmp94 = tmp67 & tmp93
tmp95 = tmp94 | tmp92
tmp96 = tmp68 & tmp91
tmp97 = tmp96 | tmp95
tmp98 = tmp67 | tmp91
tmp99 = pyrtl.corecircuits.mux(tmp98, pyrtl.Const(0, bitwidth=1), pyrtl.Const(1, bitwidth=1))
tmp100 = ~tmp98
tmp101 = tmp91 & tmp81
tmp102 = pyrtl.corecircuits.mux(tmp96, pyrtl.Const(0, bitwidth=1), tmp101)
tmp103 = pyrtl.corecircuits.mux(tmp94, tmp102, tmp69)
tmp104 = tmp69 | tmp101
tmp105 = pyrtl.corecircuits.mux(tmp98, pyrtl.Const(0, bitwidth=1), tmp104)
tmp106 = pyrtl.corecircuits.mux(tmp92, tmp103, tmp104)
tmp107 = ~tmp90
tmp108 = tmp39 | tmp40
tmp109 = tmp38 | tmp108
tmp110 = tmp37 | tmp109
tmp111 = tmp36 | tmp110
tmp112 = ~tmp111
tmp113 = tmp112 & tmp107
tmp114 = tmp76 & tmp113
tmp115 = ~tmp114
tmp116 = tmp114 | tmp98
tmp117 = pyrtl.corecircuits.mux(tmp116, tmp43, pyrtl.Const(0, bitwidth=1))
tmp118 = tmp114 & tmp100
tmp119 = pyrtl.corecircuits.mux(tmp118, tmp117, pyrtl.Const(1, bitwidth=1))
tmp120 = pyrtl.corecircuits.mux(tmp98, tmp119, pyrtl.Const(0, bitwidth=1))
tmp121 = tmp0[0 : 15]
tmp122 = tmp1[0 : 15]
tmp123 = tmp121 < tmp122
tmp124 = ~tmp123
tmp125 = tmp124 & tmp47
tmp126 = pyrtl.corecircuits.mux(tmp42, pyrtl.Const(0, bitwidth=1), tmp125)
tmp127 = pyrtl.corecircuits.mux(tmp49, pyrtl.Const(1, bitwidth=1), tmp126)
tmp128 = pyrtl.corecircuits.mux(tmp48, pyrtl.Const(0, bitwidth=1), tmp127)
tmp129 = tmp124 | tmp43
tmp130 = pyrtl.corecircuits.mux(tmp42, pyrtl.Const(0, bitwidth=1), tmp129)
tmp131 = pyrtl.corecircuits.mux(tmp49, pyrtl.Const(1, bitwidth=1), tmp130)
tmp132 = pyrtl.corecircuits.mux(tmp48, pyrtl.Const(0, bitwidth=1), tmp131)
tmp133 = tmp123 | tmp43
tmp134 = pyrtl.corecircuits.mux(tmp46, tmp132, tmp133)
tmp135 = pyrtl.corecircuits.mux(tmp116, tmp134, pyrtl.Const(0, bitwidth=1))
tmp136 = pyrtl.corecircuits.mux(tmp118, tmp135, pyrtl.Const(1, bitwidth=1))
tmp137 = pyrtl.corecircuits.mux(tmp98, tmp136, pyrtl.Const(0, bitwidth=1))
tmp138 = pyrtl.corecircuits.mux(tmp46, tmp128, tmp123)
tmp159 = tmp130
for tmp158 in range(3):
    tmp139 = pyrtl.corecircuits.mux(tmp119, tmp136, pyrtl.Const(0, bitwidth=1))
    tmp159 = tmp139
tmp142 = tmp159 & tmp115
tmp143 = tmp159 | tmp114
tmp144 = pyrtl.corecircuits.mux(tmp143, tmp1, pyrtl.Const(0, bitwidth=16))
tmp145 = pyrtl.corecircuits.mux(tmp142, tmp144, tmp0)
tmp146 = pyrtl.corecircuits.mux(tmp114, tmp145, tmp51)
tmp147 = pyrtl.corecircuits.mux(tmp97, tmp146, pyrtl.Const(0, bitwidth=16))
tmp148 = pyrtl.corecircuits.mux(tmp96, tmp147, tmp0)
tmp149 = pyrtl.corecircuits.mux(tmp94, tmp148, tmp1)
tmp150 = pyrtl.corecircuits.mux(tmp92, tmp149, pyrtl.Const(32256, bitwidth=16))
tmp151 = pyrtl.corecircuits.mux(tmp143, tmp0, pyrtl.Const(0, bitwidth=16))
tmp152 = pyrtl.corecircuits.mux(tmp142, tmp151, tmp1)
tmp153 = pyrtl.corecircuits.mux(tmp114, tmp152, tmp52)
tmp154 = pyrtl.corecircuits.mux(tmp97, tmp153, pyrtl.Const(0, bitwidth=16))
tmp155 = pyrtl.corecircuits.mux(tmp96, tmp154, tmp0)
tmp156 = pyrtl.corecircuits.mux(tmp94, tmp155, tmp1)
tmp157 = pyrtl.corecircuits.mux(tmp92, tmp156, pyrtl.Const(32256, bitwidth=16))
tmp2 <<= tmp157
tmp3 <<= tmp137
tmp4 <<= tmp105
tmp5 <<= tmp99
tmp6 <<= tmp159
tmp7 <<= tmp120
tmp8 <<= tmp106
tmp9 <<= tmp150
