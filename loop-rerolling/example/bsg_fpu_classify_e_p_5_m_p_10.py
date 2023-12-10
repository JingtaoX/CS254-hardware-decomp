import pyrtl
tmp0 = pyrtl.Input(bitwidth=16, name='t0')
tmp1 = pyrtl.Output(bitwidth=16, name='t1')
tmp2 = ~tmp0[15]
tmp3 = tmp0[13] & tmp0[14]
tmp50 = tmp3
for tmp49 in range(3):
    tmp4 = tmp0[(12 - tmp49)] & tmp50
    tmp50 = tmp4
tmp7 = ~tmp0[9]
tmp8 = tmp0[13] | tmp0[14]
tmp52 = tmp8
for tmp51 in range(3):
    tmp9 = tmp0[(12 - tmp51)] | tmp52
    tmp52 = tmp9
tmp12 = ~tmp52
tmp13 = tmp0[8] | tmp0[9]
tmp54 = tmp13
for tmp53 in range(8):
    tmp14 = tmp0[(7 - tmp53)] | tmp54
    tmp54 = tmp14
tmp22 = tmp50 & tmp54
tmp23 = ~tmp22
tmp24 = tmp22 & tmp7
tmp25 = ~tmp24
tmp26 = tmp22 & tmp25
tmp27 = tmp12 & tmp54
tmp28 = tmp0[15] & tmp27
tmp29 = tmp2 & tmp27
tmp30 = ~tmp27
tmp31 = ~tmp54
tmp32 = tmp12 & tmp31
tmp33 = tmp0[15] & tmp32
tmp34 = tmp2 & tmp32
tmp35 = ~tmp32
tmp36 = tmp50 & tmp31
tmp37 = tmp0[15] & tmp36
tmp38 = tmp2 & tmp36
tmp39 = ~tmp36
tmp40 = tmp0[15] & tmp39
tmp41 = tmp40 & tmp30
tmp42 = tmp41 & tmp23
tmp43 = tmp42 & tmp35
tmp44 = tmp2 & tmp39
tmp45 = tmp44 & tmp30
tmp46 = tmp45 & tmp23
tmp47 = tmp46 & tmp35
tmp48 = pyrtl.concat(pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), tmp26, tmp24, tmp38, tmp47, tmp29, tmp34, tmp33, tmp28, tmp43, tmp37)
tmp1 <<= tmp48
