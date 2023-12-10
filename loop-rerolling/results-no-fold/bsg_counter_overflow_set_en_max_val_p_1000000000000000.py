import pyrtl
tmp0 = pyrtl.Input(bitwidth=1, name='t0')
tmp1 = pyrtl.Input(bitwidth=1, name='t1')
tmp2 = pyrtl.Input(bitwidth=32, name='t2')
tmp3 = pyrtl.Output(bitwidth=32, name='t3')
tmp4 = pyrtl.Output(bitwidth=1, name='t4')
tmp5 = pyrtl.Register(bitwidth=32, name='t5')
tmp6 = tmp5 + pyrtl.Const(1, bitwidth=32)
tmp7 = tmp6[0 : 32]
tmp8 = ~tmp1
tmp92 = [None]*16
for tmp91 in range(16):
    tmp9 = tmp5[tmp91]
    tmp92[tmp91] = tmp9
tmp25 = ~tmp92[15]
tmp26 = tmp5[16]
tmp27 = tmp5[17]
tmp28 = ~tmp27
tmp29 = tmp5[18]
tmp30 = ~tmp29
tmp94 = [None]*4
for tmp93 in range(4):
    tmp31 = tmp5[(tmp93 + 19)]
    tmp94[tmp93] = tmp31
tmp35 = ~tmp94[3]
tmp96 = [None]*3
tmp97 = [None]*3
tmp98 = [None]*3
for tmp95 in range(3):
    tmp36 = tmp6[((tmp95 * 3) + 23)]
    tmp37 = ~tmp36
    tmp96[tmp95] = tmp37
    tmp38 = tmp5[((tmp95 * 3) + 24)]
    tmp97[(tmp95 + 0)] = tmp38
    tmp39 = tmp5[((tmp95 * 3) + 25)]
    tmp98[(tmp95 - 0)] = tmp39
tmp48 = ~tmp98[2]
tmp49 = tmp97[2] | tmp48
tmp50 = tmp96[2] | tmp49
tmp51 = tmp98[1] | tmp50
tmp52 = tmp97[1] | tmp51
tmp53 = tmp96[1] | tmp52
tmp54 = tmp98[0] | tmp53
tmp55 = tmp97[0] | tmp54
tmp56 = tmp96[0] | tmp55
tmp57 = tmp35 | tmp56
tmp58 = tmp94[2] | tmp57
tmp59 = tmp94[1] | tmp58
tmp60 = tmp94[0] | tmp59
tmp61 = tmp30 | tmp60
tmp62 = tmp28 | tmp61
tmp63 = tmp26 | tmp62
tmp64 = tmp25 | tmp63
tmp65 = tmp92[14] | tmp64
tmp66 = tmp92[13] | tmp65
tmp67 = tmp92[12] | tmp66
tmp68 = tmp92[11] | tmp67
tmp69 = tmp92[10] | tmp68
tmp70 = tmp92[9] | tmp69
tmp71 = tmp92[8] | tmp70
tmp72 = tmp92[7] | tmp71
tmp73 = tmp92[6] | tmp72
tmp74 = tmp92[5] | tmp73
tmp75 = tmp92[4] | tmp74
tmp76 = tmp92[3] | tmp75
tmp77 = tmp92[2] | tmp76
tmp78 = tmp92[1] | tmp77
tmp79 = tmp92[0] | tmp78
tmp80 = tmp8 & tmp79
tmp81 = tmp0 & tmp80
tmp82 = ~tmp79
tmp83 = tmp82 & tmp8
tmp84 = pyrtl.corecircuits.mux(tmp81, pyrtl.Const(0, bitwidth=1), pyrtl.Const(1, bitwidth=1))
tmp85 = pyrtl.corecircuits.mux(tmp83, tmp84, pyrtl.Const(1, bitwidth=1))
tmp86 = pyrtl.corecircuits.mux(tmp1, tmp85, pyrtl.Const(1, bitwidth=1))
tmp87 = pyrtl.corecircuits.mux(tmp81, pyrtl.Const(0, bitwidth=32), tmp7)
tmp88 = pyrtl.corecircuits.mux(tmp83, tmp87, pyrtl.Const(0, bitwidth=32))
tmp89 = pyrtl.corecircuits.mux(tmp1, tmp88, tmp2)
tmp90 = pyrtl.corecircuits.mux(tmp86, tmp5, tmp89)
tmp5.next <<= tmp90
tmp3 <<= tmp5
tmp4 <<= tmp82
