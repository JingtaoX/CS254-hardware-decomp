import pyrtl
tmp0 = pyrtl.Input(bitwidth=16, name='t0')
tmp1 = pyrtl.Output(bitwidth=16, name='t1')
tmp66 = [None]*16
for tmp65 in range(16):
    tmp2 = tmp0[tmp65]
    tmp66[tmp65] = tmp2
tmp18 = ~tmp66[15]
tmp19 = tmp66[13] & tmp66[14]
tmp20 = tmp66[12] & tmp19
tmp21 = tmp66[11] & tmp20
tmp22 = tmp66[10] & tmp21
tmp23 = ~tmp66[9]
tmp24 = tmp66[13] | tmp66[14]
tmp25 = tmp66[12] | tmp24
tmp26 = tmp66[11] | tmp25
tmp27 = tmp66[10] | tmp26
tmp28 = ~tmp27
tmp29 = tmp66[8] | tmp66[9]
tmp30 = tmp66[7] | tmp29
tmp31 = tmp66[6] | tmp30
tmp32 = tmp66[5] | tmp31
tmp33 = tmp66[4] | tmp32
tmp34 = tmp66[3] | tmp33
tmp35 = tmp66[2] | tmp34
tmp36 = tmp66[1] | tmp35
tmp37 = tmp66[0] | tmp36
tmp38 = tmp22 & tmp37
tmp39 = ~tmp38
tmp40 = tmp38 & tmp23
tmp41 = ~tmp40
tmp42 = tmp38 & tmp41
tmp43 = tmp28 & tmp37
tmp44 = tmp66[15] & tmp43
tmp45 = tmp18 & tmp43
tmp46 = ~tmp43
tmp47 = ~tmp37
tmp48 = tmp28 & tmp47
tmp49 = tmp66[15] & tmp48
tmp50 = tmp18 & tmp48
tmp51 = ~tmp48
tmp52 = tmp22 & tmp47
tmp53 = tmp66[15] & tmp52
tmp54 = tmp18 & tmp52
tmp55 = ~tmp52
tmp56 = tmp66[15] & tmp55
tmp57 = tmp56 & tmp46
tmp58 = tmp57 & tmp39
tmp59 = tmp58 & tmp51
tmp60 = tmp18 & tmp55
tmp61 = tmp60 & tmp46
tmp62 = tmp61 & tmp39
tmp63 = tmp62 & tmp51
tmp64 = pyrtl.concat(pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), tmp42, tmp40, tmp54, tmp63, tmp45, tmp50, tmp49, tmp44, tmp59, tmp53)
tmp1 <<= tmp64
