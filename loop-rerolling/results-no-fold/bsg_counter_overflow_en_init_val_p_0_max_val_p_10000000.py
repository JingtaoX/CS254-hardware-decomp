import pyrtl
tmp0 = pyrtl.Input(bitwidth=1, name='t0')
tmp1 = pyrtl.Input(bitwidth=1, name='t1')
tmp2 = pyrtl.Output(bitwidth=1, name='t2')
tmp3 = pyrtl.Output(bitwidth=24, name='t3')
tmp4 = pyrtl.Register(bitwidth=24, name='t4')
tmp5 = tmp4 + pyrtl.Const(1, bitwidth=24)
tmp6 = tmp5[0 : 24]
tmp72 = [None]*8
for tmp71 in range(8):
    tmp7 = tmp4[tmp71]
    tmp72[tmp71] = tmp7
tmp15 = ~tmp72[7]
tmp16 = tmp4[8]
tmp17 = tmp4[9]
tmp18 = ~tmp17
tmp19 = tmp4[10]
tmp20 = ~tmp19
tmp21 = tmp4[11]
tmp22 = tmp4[12]
tmp23 = ~tmp22
tmp74 = [None]*3
for tmp73 in range(3):
    tmp24 = tmp5[(tmp73 + 13)]
    tmp74[tmp73] = tmp24
tmp27 = ~tmp74[2]
tmp76 = [None]*4
for tmp75 in range(4):
    tmp28 = tmp5[(tmp75 + 16)]
    tmp76[(tmp75 + 0)] = tmp28
tmp32 = ~tmp76[3]
tmp33 = tmp4[20]
tmp34 = ~tmp33
tmp78 = [None]*3
for tmp77 in range(3):
    tmp35 = tmp5[(tmp77 + 21)]
    tmp78[tmp77] = tmp35
tmp38 = ~tmp78[2]
tmp39 = tmp78[1] | tmp38
tmp40 = tmp78[0] | tmp39
tmp41 = tmp34 | tmp40
tmp42 = tmp32 | tmp41
tmp43 = tmp76[2] | tmp42
tmp44 = tmp76[1] | tmp43
tmp45 = tmp76[0] | tmp44
tmp46 = tmp27 | tmp45
tmp47 = tmp74[1] | tmp46
tmp48 = tmp74[0] | tmp47
tmp49 = tmp23 | tmp48
tmp50 = tmp21 | tmp49
tmp51 = tmp20 | tmp50
tmp52 = tmp18 | tmp51
tmp53 = tmp16 | tmp52
tmp54 = tmp15 | tmp53
tmp55 = tmp72[6] | tmp54
tmp56 = tmp72[5] | tmp55
tmp57 = tmp72[4] | tmp56
tmp58 = tmp72[3] | tmp57
tmp59 = tmp72[2] | tmp58
tmp60 = tmp72[1] | tmp59
tmp61 = tmp72[0] | tmp60
tmp62 = ~tmp61
tmp63 = tmp0 | tmp62
tmp64 = ~tmp63
tmp65 = tmp1 & tmp64
tmp66 = pyrtl.corecircuits.mux(tmp65, pyrtl.Const(0, bitwidth=1), pyrtl.Const(1, bitwidth=1))
tmp67 = pyrtl.corecircuits.mux(tmp63, tmp66, pyrtl.Const(1, bitwidth=1))
tmp68 = pyrtl.corecircuits.mux(tmp65, pyrtl.Const(0, bitwidth=24), tmp6)
tmp69 = pyrtl.corecircuits.mux(tmp63, tmp68, pyrtl.Const(0, bitwidth=24))
tmp70 = pyrtl.corecircuits.mux(tmp67, tmp4, tmp69)
tmp4.next <<= tmp70
tmp2 <<= tmp62
tmp3 <<= tmp4
