import pyrtl
tmp0 = pyrtl.Input(bitwidth=16, name='t0')
tmp1 = pyrtl.Output(bitwidth=4, name='t1')
tmp2 = pyrtl.Output(bitwidth=1, name='t2')
tmp126 = [None]*16
for tmp125 in range(16):
    tmp3 = tmp0[tmp125]
    tmp126[tmp125] = tmp3
tmp19 = ~tmp126[15]
tmp20 = tmp126[14] | tmp126[15]
tmp21 = tmp20 & tmp19
tmp22 = ~tmp20
tmp23 = tmp126[13] | tmp126[14]
tmp24 = tmp126[12] | tmp126[13]
tmp25 = tmp126[11] | tmp126[12]
tmp26 = tmp126[10] | tmp126[11]
tmp27 = tmp126[9] | tmp126[10]
tmp28 = tmp126[8] | tmp126[9]
tmp29 = tmp126[7] | tmp126[8]
tmp30 = tmp126[6] | tmp126[7]
tmp31 = tmp126[5] | tmp126[6]
tmp32 = tmp126[4] | tmp126[5]
tmp33 = tmp126[3] | tmp126[4]
tmp34 = tmp126[2] | tmp126[3]
tmp35 = tmp126[1] | tmp126[2]
tmp36 = tmp126[0] | tmp126[1]
tmp37 = tmp23 | tmp126[15]
tmp38 = ~tmp37
tmp39 = tmp37 & tmp22
tmp40 = tmp24 | tmp20
tmp41 = tmp40 & tmp38
tmp42 = ~tmp40
tmp43 = tmp25 | tmp23
tmp44 = tmp26 | tmp24
tmp45 = tmp27 | tmp25
tmp46 = tmp28 | tmp26
tmp47 = tmp29 | tmp27
tmp48 = tmp30 | tmp28
tmp49 = tmp31 | tmp29
tmp50 = tmp32 | tmp30
tmp51 = tmp33 | tmp31
tmp52 = tmp34 | tmp32
tmp53 = tmp35 | tmp33
tmp54 = tmp36 | tmp34
tmp55 = tmp43 | tmp126[15]
tmp56 = tmp55 & tmp42
tmp57 = ~tmp55
tmp58 = tmp44 | tmp20
tmp59 = tmp58 & tmp57
tmp60 = ~tmp58
tmp61 = tmp45 | tmp37
tmp62 = tmp61 & tmp60
tmp63 = ~tmp61
tmp64 = tmp46 | tmp40
tmp65 = tmp64 & tmp63
tmp66 = ~tmp64
tmp67 = tmp47 | tmp43
tmp68 = tmp48 | tmp44
tmp69 = tmp49 | tmp45
tmp70 = tmp69 | tmp37
tmp71 = ~tmp70
tmp72 = tmp50 | tmp46
tmp73 = tmp72 | tmp40
tmp74 = tmp73 & tmp71
tmp75 = ~tmp73
tmp76 = tmp51 | tmp47
tmp77 = tmp76 | tmp55
tmp78 = tmp77 & tmp75
tmp79 = ~tmp77
tmp80 = tmp52 | tmp48
tmp81 = tmp80 | tmp58
tmp82 = tmp81 & tmp79
tmp83 = ~tmp81
tmp84 = tmp53 | tmp49
tmp85 = tmp84 | tmp61
tmp86 = tmp85 & tmp83
tmp87 = ~tmp85
tmp88 = tmp54 | tmp50
tmp89 = tmp88 | tmp64
tmp90 = tmp89 & tmp87
tmp91 = tmp67 | tmp126[15]
tmp92 = tmp91 & tmp66
tmp93 = ~tmp91
tmp94 = tmp68 | tmp20
tmp95 = tmp94 & tmp93
tmp96 = ~tmp94
tmp97 = tmp70 & tmp96
tmp98 = tmp86 | tmp78
tmp99 = tmp86 | tmp90
tmp100 = tmp78 | tmp82
tmp101 = tmp100 | tmp99
tmp102 = tmp97 | tmp92
tmp103 = tmp98 | tmp102
tmp104 = tmp97 | tmp74
tmp105 = tmp92 | tmp95
tmp106 = tmp100 | tmp105
tmp107 = tmp105 | tmp104
tmp108 = tmp107 | tmp101
tmp109 = tmp62 | tmp56
tmp110 = tmp62 | tmp65
tmp111 = tmp56 | tmp59
tmp112 = tmp111 | tmp110
tmp113 = tmp39 | tmp126[15]
tmp114 = tmp109 | tmp113
tmp115 = tmp103 | tmp114
tmp116 = tmp39 | tmp41
tmp117 = tmp126[15] | tmp21
tmp118 = tmp111 | tmp117
tmp119 = tmp106 | tmp118
tmp120 = tmp117 | tmp116
tmp121 = tmp107 | tmp120
tmp122 = pyrtl.concat(tmp108, tmp121, tmp119, tmp115)
tmp123 = tmp120 | tmp112
tmp124 = tmp123 | tmp108
tmp1 <<= tmp122
tmp2 <<= tmp124