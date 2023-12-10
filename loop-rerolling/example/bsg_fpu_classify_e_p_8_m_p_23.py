import pyrtl
tmp0 = pyrtl.Input(bitwidth=32, name='t0')
tmp1 = pyrtl.Output(bitwidth=32, name='t1')
tmp2 = ~tmp0[31]
tmp3 = tmp0[29] & tmp0[30]
tmp69 = tmp3
for tmp68 in range(6):
    tmp4 = tmp0[(28 - tmp68)] & tmp69
    tmp69 = tmp4
tmp10 = ~tmp0[22]
tmp11 = tmp0[21] | tmp0[22]
tmp71 = tmp11
for tmp70 in range(21):
    tmp12 = tmp0[(20 - tmp70)] | tmp71
    tmp71 = tmp12
tmp33 = tmp69 & tmp71
tmp34 = ~tmp33
tmp35 = tmp33 & tmp10
tmp36 = ~tmp35
tmp37 = tmp33 & tmp36
tmp38 = ~tmp71
tmp39 = tmp69 & tmp38
tmp40 = tmp0[31] & tmp39
tmp41 = tmp2 & tmp39
tmp42 = ~tmp39
tmp43 = tmp0[31] & tmp42
tmp44 = tmp2 & tmp42
tmp45 = tmp0[29] | tmp0[30]
tmp73 = tmp45
for tmp72 in range(6):
    tmp46 = tmp0[(28 - tmp72)] | tmp73
    tmp73 = tmp46
tmp52 = ~tmp73
tmp53 = tmp52 & tmp38
tmp54 = tmp0[31] & tmp53
tmp55 = tmp2 & tmp53
tmp56 = ~tmp53
tmp57 = tmp52 & tmp71
tmp58 = tmp0[31] & tmp57
tmp59 = tmp2 & tmp57
tmp60 = ~tmp57
tmp61 = tmp43 & tmp60
tmp62 = tmp61 & tmp34
tmp63 = tmp62 & tmp56
tmp64 = tmp44 & tmp60
tmp65 = tmp64 & tmp34
tmp66 = tmp65 & tmp56
tmp67 = pyrtl.concat(pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), pyrtl.Const(0, bitwidth=1), tmp37, tmp35, tmp41, tmp66, tmp59, tmp55, tmp54, tmp58, tmp63, tmp40)
tmp1 <<= tmp67
