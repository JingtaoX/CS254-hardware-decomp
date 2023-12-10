import pyrtl
tmp0 = pyrtl.Input(bitwidth=1, name='t0')
tmp1 = pyrtl.Input(bitwidth=1, name='t1')
tmp2 = pyrtl.Input(bitwidth=31, name='t2')
tmp3 = pyrtl.Output(bitwidth=1, name='t3')
tmp4 = pyrtl.Output(bitwidth=31, name='t4')
tmp5 = pyrtl.Register(bitwidth=31, name='t5')
tmp6 = tmp5 + pyrtl.Const(1, bitwidth=31)
tmp7 = tmp6[0 : 31]
tmp8 = ~tmp0
tmp93 = [None]*12
for tmp92 in range(12):
    tmp9 = tmp5[tmp92]
    tmp93[(tmp92 - 0)] = tmp9
tmp21 = ~tmp93[11]
tmp22 = tmp5[12]
tmp23 = tmp5[13]
tmp95 = [None]*3
tmp96 = tmp23
for tmp94 in range(3):
    tmp24 = ~tmp96
    tmp95[(2 - tmp94)] = tmp24
    tmp25 = tmp6[(tmp94 + 14)]
    tmp96 = tmp25
tmp30 = tmp5[17]
tmp31 = ~tmp30
tmp32 = tmp5[18]
tmp33 = ~tmp32
tmp34 = tmp5[19]
tmp98 = [None]*3
for tmp97 in range(3):
    tmp35 = tmp6[(tmp97 + 20)]
    tmp36 = ~tmp35
    tmp98[tmp97] = tmp36
tmp100 = [None]*5
for tmp99 in range(5):
    tmp41 = tmp5[(tmp99 + 23)]
    tmp100[tmp99] = tmp41
tmp46 = ~tmp100[4]
tmp102 = [None]*3
for tmp101 in range(3):
    tmp47 = tmp6[(tmp101 + 28)]
    tmp102[tmp101] = tmp47
tmp50 = ~tmp102[2]
tmp51 = tmp102[1] | tmp50
tmp52 = tmp102[0] | tmp51
tmp53 = tmp46 | tmp52
tmp54 = tmp100[3] | tmp53
tmp55 = tmp100[2] | tmp54
tmp56 = tmp100[1] | tmp55
tmp57 = tmp100[0] | tmp56
tmp58 = tmp98[2] | tmp57
tmp59 = tmp98[1] | tmp58
tmp60 = tmp98[0] | tmp59
tmp61 = tmp34 | tmp60
tmp62 = tmp33 | tmp61
tmp63 = tmp31 | tmp62
tmp64 = tmp96 | tmp63
tmp65 = tmp95[2] | tmp64
tmp66 = tmp95[1] | tmp65
tmp67 = tmp95[0] | tmp66
tmp68 = tmp22 | tmp67
tmp69 = tmp21 | tmp68
tmp70 = tmp93[10] | tmp69
tmp71 = tmp93[9] | tmp70
tmp72 = tmp93[8] | tmp71
tmp73 = tmp93[7] | tmp72
tmp74 = tmp93[6] | tmp73
tmp75 = tmp93[5] | tmp74
tmp76 = tmp93[4] | tmp75
tmp77 = tmp93[3] | tmp76
tmp78 = tmp93[2] | tmp77
tmp79 = tmp93[1] | tmp78
tmp80 = tmp93[0] | tmp79
tmp81 = tmp8 & tmp80
tmp82 = tmp1 & tmp81
tmp83 = ~tmp80
tmp84 = tmp83 & tmp8
tmp85 = pyrtl.corecircuits.mux(tmp82, pyrtl.Const(0, bitwidth=1), pyrtl.Const(1, bitwidth=1))
tmp86 = pyrtl.corecircuits.mux(tmp84, tmp85, pyrtl.Const(1, bitwidth=1))
tmp87 = pyrtl.corecircuits.mux(tmp0, tmp86, pyrtl.Const(1, bitwidth=1))
tmp88 = pyrtl.corecircuits.mux(tmp82, pyrtl.Const(0, bitwidth=31), tmp7)
tmp89 = pyrtl.corecircuits.mux(tmp84, tmp88, pyrtl.Const(0, bitwidth=31))
tmp90 = pyrtl.corecircuits.mux(tmp0, tmp89, tmp2)
tmp91 = pyrtl.corecircuits.mux(tmp87, tmp5, tmp90)
tmp5.next <<= tmp91
tmp3 <<= tmp83
tmp4 <<= tmp5
