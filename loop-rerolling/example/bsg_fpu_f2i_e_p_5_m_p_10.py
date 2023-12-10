import pyrtl
tmp0 = pyrtl.Input(bitwidth=16, name='t0')
tmp1 = pyrtl.Input(bitwidth=1, name='t1')
tmp2 = pyrtl.Output(bitwidth=1, name='t2')
tmp3 = pyrtl.Output(bitwidth=16, name='t3')
tmp4 = pyrtl.concat(pyrtl.Const(0, bitwidth=15), tmp0[15])
tmp5 = tmp1 & tmp0[15]
tmp6 = pyrtl.concat(tmp0[14], tmp0[13], tmp0[12], tmp0[11], tmp0[10])
tmp7 = tmp6 > pyrtl.Const(29, bitwidth=5)
tmp8 = pyrtl.concat(tmp0[14], tmp0[13], tmp0[12], tmp0[11], tmp0[10])
tmp9 = tmp8 > pyrtl.Const(30, bitwidth=5)
tmp10 = pyrtl.concat(tmp0[14], tmp0[13], tmp0[12], tmp0[11], tmp0[10])
tmp11 = tmp10 < pyrtl.Const(15, bitwidth=5)
tmp12 = ~tmp1
tmp13 = tmp12 & tmp0[15]
tmp14 = ~tmp0[15]
tmp15 = ~tmp13
tmp16 = pyrtl.Const(0, bitwidth=2)[0 : 2]
tmp17 = pyrtl.concat(tmp16, tmp16)
tmp18 = pyrtl.concat(tmp17[0 : 4], tmp17[0 : 4])
tmp19 = pyrtl.concat(tmp18[0 : 8], tmp18[0 : 8])
tmp20 = pyrtl.concat(tmp0[14], tmp0[13], tmp0[12], tmp0[11], tmp0[10])
tmp21 = pyrtl.Const(29, bitwidth=5) - tmp20
tmp22 = pyrtl.concat(tmp0[14], tmp0[13], tmp0[12], tmp0[11], tmp0[10])
tmp23 = pyrtl.Const(30, bitwidth=5) - tmp22
tmp24 = pyrtl.corecircuits.mux(tmp1, tmp9, tmp7)
tmp25 = ~tmp24
tmp26 = pyrtl.concat(tmp0[9], tmp0[8], tmp0[7], tmp0[6], tmp0[5], tmp0[4], tmp0[3], tmp0[2], tmp0[1], tmp0[0], pyrtl.Const(0, bitwidth=1))
tmp27 = pyrtl.concat(pyrtl.Const(1, bitwidth=1), tmp0[9], tmp0[8], tmp0[7], tmp0[6], tmp0[5], tmp0[4], tmp0[3], tmp0[2], tmp0[1], tmp0[0])
tmp28 = pyrtl.corecircuits.mux(tmp1, tmp26, tmp27)
tmp29 = pyrtl.concat(tmp12, tmp28[10], tmp28[9], tmp28[8], tmp28[7], tmp28[6], tmp28[5], tmp28[4], tmp28[3], tmp28[2], tmp28[1], tmp28[0], pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1))
tmp30 = pyrtl.concat(tmp29[0 : 15], pyrtl.Const(0, bitwidth=1))
tmp31 = pyrtl.concat(pyrtl.Const(0, bitwidth=1), tmp29[1 : 16])
tmp32 = pyrtl.corecircuits.mux(pyrtl.Const(0, bitwidth=1), tmp31, tmp30)
tmp33 = pyrtl.corecircuits.mux(tmp1, tmp23[0 : 5], tmp21[0 : 5])
tmp34 = pyrtl.corecircuits.mux(tmp33[0], tmp29, tmp32)
tmp35 = pyrtl.concat(tmp34[0 : 14], tmp16)
tmp36 = pyrtl.concat(tmp16, tmp34[2 : 16])
tmp37 = pyrtl.corecircuits.mux(pyrtl.Const(0, bitwidth=1), tmp36, tmp35)
tmp38 = pyrtl.corecircuits.mux(tmp33[1], tmp34, tmp37)
tmp39 = pyrtl.concat(tmp38[0 : 12], tmp17[0 : 4])
tmp40 = pyrtl.concat(tmp17[0 : 4], tmp38[4 : 16])
tmp41 = pyrtl.corecircuits.mux(pyrtl.Const(0, bitwidth=1), tmp40, tmp39)
tmp42 = pyrtl.corecircuits.mux(tmp33[2], tmp38, tmp41)
tmp43 = pyrtl.concat(tmp42[0 : 8], tmp18[0 : 8])
tmp44 = pyrtl.concat(tmp18[0 : 8], tmp42[8 : 16])
tmp45 = pyrtl.corecircuits.mux(pyrtl.Const(0, bitwidth=1), tmp44, tmp43)
tmp46 = pyrtl.corecircuits.mux(tmp33[3], tmp42, tmp45)
tmp47 = pyrtl.corecircuits.mux(tmp33[4], tmp46, tmp19[0 : 16])
tmp48 = pyrtl.corecircuits.mux(tmp0[15], tmp12, tmp1)
tmp49 = pyrtl.concat(tmp0[15], tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14)
tmp50 = pyrtl.concat(tmp48, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14, tmp14)
tmp51 = pyrtl.concat(tmp12, pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1), pyrtl.Const(1, bitwidth=1))
tmp122 = [None]*16
for tmp121 in range(16):
    tmp52 = tmp12 ^ tmp40[(15 - tmp121)]
    tmp122[tmp121] = tmp52
tmp68 = pyrtl.concat(tmp122[0], tmp122[1], tmp122[2], tmp122[3], tmp122[4], tmp122[5], tmp122[6], tmp122[7], tmp122[8], tmp122[9], tmp122[10], tmp122[11], tmp122[12], tmp122[13], tmp122[14], tmp122[15])
tmp69 = tmp68 + tmp4
tmp70 = tmp0[13] & tmp0[14]
tmp124 = tmp70
for tmp123 in range(3):
    tmp71 = tmp0[(12 - tmp123)] & tmp124
    tmp124 = tmp71
tmp74 = tmp0[13] | tmp0[14]
tmp126 = tmp74
for tmp125 in range(3):
    tmp75 = tmp0[(12 - tmp125)] | tmp126
    tmp126 = tmp75
tmp78 = ~tmp126
tmp79 = tmp0[8] | tmp0[9]
tmp128 = tmp79
for tmp127 in range(8):
    tmp80 = tmp0[(7 - tmp127)] | tmp128
    tmp128 = tmp80
tmp88 = tmp124 & tmp128
tmp89 = ~tmp88
tmp90 = ~tmp128
tmp91 = tmp78 & tmp90
tmp92 = ~tmp91
tmp93 = tmp124 & tmp90
tmp94 = tmp93 & tmp89
tmp95 = ~tmp93
tmp96 = tmp89 & tmp95
tmp97 = tmp13 & tmp96
tmp98 = tmp96 & tmp15
tmp99 = tmp91 & tmp98
tmp100 = tmp98 & tmp92
tmp101 = tmp24 & tmp100
tmp102 = pyrtl.corecircuits.mux(tmp101, pyrtl.Const(0, bitwidth=1), pyrtl.Const(1, bitwidth=1))
tmp103 = pyrtl.corecircuits.mux(tmp99, tmp102, pyrtl.Const(0, bitwidth=1))
tmp104 = pyrtl.corecircuits.mux(tmp97, tmp103, pyrtl.Const(1, bitwidth=1))
tmp105 = pyrtl.corecircuits.mux(tmp94, tmp104, pyrtl.Const(1, bitwidth=1))
tmp106 = pyrtl.corecircuits.mux(tmp88, tmp105, pyrtl.Const(1, bitwidth=1))
tmp107 = tmp100 & tmp25
tmp108 = tmp11 & tmp107
tmp130 = tmp28
for tmp129 in range(5):
    tmp109 = tmp130 | tmp130
    tmp130 = tmp109
tmp114 = pyrtl.corecircuits.mux(tmp130, tmp69[0 : 16], pyrtl.Const(0, bitwidth=16))
tmp115 = pyrtl.corecircuits.mux(tmp108, tmp114, pyrtl.Const(0, bitwidth=16))
tmp116 = pyrtl.corecircuits.mux(tmp101, tmp115, tmp49)
tmp117 = pyrtl.corecircuits.mux(tmp99, tmp116, pyrtl.Const(0, bitwidth=16))
tmp118 = pyrtl.corecircuits.mux(tmp97, tmp117, pyrtl.Const(0, bitwidth=16))
tmp119 = pyrtl.corecircuits.mux(tmp94, tmp118, tmp50)
tmp120 = pyrtl.corecircuits.mux(tmp88, tmp119, tmp51)
tmp2 <<= tmp106
tmp3 <<= tmp120
