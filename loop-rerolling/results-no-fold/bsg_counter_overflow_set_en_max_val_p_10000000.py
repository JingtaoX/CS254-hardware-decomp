import pyrtl
tmp0 = pyrtl.Input(bitwidth=1, name='t0')
tmp1 = pyrtl.Input(bitwidth=24, name='t1')
tmp2 = pyrtl.Input(bitwidth=1, name='t2')
tmp3 = pyrtl.Output(bitwidth=1, name='t3')
tmp4 = pyrtl.Output(bitwidth=24, name='t4')
tmp5 = pyrtl.Register(bitwidth=24, name='t5')
tmp6 = tmp5 + pyrtl.Const(1, bitwidth=24)
tmp7 = tmp6[0 : 24]
tmp8 = ~tmp0
tmp76 = [None]*8
for tmp75 in range(8):
    tmp9 = tmp5[tmp75]
    tmp76[tmp75] = tmp9
tmp17 = ~tmp76[7]
tmp18 = tmp5[8]
tmp19 = tmp5[9]
tmp20 = ~tmp19
tmp21 = tmp5[10]
tmp22 = ~tmp21
tmp23 = tmp5[11]
tmp24 = tmp5[12]
tmp25 = ~tmp24
tmp78 = [None]*3
for tmp77 in range(3):
    tmp26 = tmp6[(tmp77 + 13)]
    tmp78[tmp77] = tmp26
tmp29 = ~tmp78[2]
tmp80 = [None]*4
for tmp79 in range(4):
    tmp30 = tmp6[(tmp79 + 16)]
    tmp80[(tmp79 + 0)] = tmp30
tmp34 = ~tmp80[3]
tmp35 = tmp5[20]
tmp36 = ~tmp35
tmp82 = [None]*3
for tmp81 in range(3):
    tmp37 = tmp6[(tmp81 + 21)]
    tmp82[tmp81] = tmp37
tmp40 = ~tmp82[2]
tmp41 = tmp82[1] | tmp40
tmp42 = tmp82[0] | tmp41
tmp43 = tmp36 | tmp42
tmp44 = tmp34 | tmp43
tmp45 = tmp80[2] | tmp44
tmp46 = tmp80[1] | tmp45
tmp47 = tmp80[0] | tmp46
tmp48 = tmp29 | tmp47
tmp49 = tmp78[1] | tmp48
tmp50 = tmp78[0] | tmp49
tmp51 = tmp25 | tmp50
tmp52 = tmp23 | tmp51
tmp53 = tmp22 | tmp52
tmp54 = tmp20 | tmp53
tmp55 = tmp18 | tmp54
tmp56 = tmp17 | tmp55
tmp57 = tmp76[6] | tmp56
tmp58 = tmp76[5] | tmp57
tmp59 = tmp76[4] | tmp58
tmp60 = tmp76[3] | tmp59
tmp61 = tmp76[2] | tmp60
tmp62 = tmp76[1] | tmp61
tmp63 = tmp76[0] | tmp62
tmp64 = tmp8 & tmp63
tmp65 = tmp2 & tmp64
tmp66 = ~tmp63
tmp67 = tmp66 & tmp8
tmp68 = pyrtl.corecircuits.mux(tmp65, pyrtl.Const(0, bitwidth=1), pyrtl.Const(1, bitwidth=1))
tmp69 = pyrtl.corecircuits.mux(tmp67, tmp68, pyrtl.Const(1, bitwidth=1))
tmp70 = pyrtl.corecircuits.mux(tmp0, tmp69, pyrtl.Const(1, bitwidth=1))
tmp71 = pyrtl.corecircuits.mux(tmp65, pyrtl.Const(0, bitwidth=24), tmp7)
tmp72 = pyrtl.corecircuits.mux(tmp67, tmp71, pyrtl.Const(0, bitwidth=24))
tmp73 = pyrtl.corecircuits.mux(tmp0, tmp72, tmp1)
tmp74 = pyrtl.corecircuits.mux(tmp70, tmp5, tmp73)
tmp5.next <<= tmp74
tmp3 <<= tmp66
tmp4 <<= tmp5
