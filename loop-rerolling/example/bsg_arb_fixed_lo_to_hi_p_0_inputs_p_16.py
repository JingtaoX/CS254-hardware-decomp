import pyrtl
tmp0 = pyrtl.Input(bitwidth=16, name='t0')
tmp1 = pyrtl.Input(bitwidth=1, name='t1')
tmp2 = pyrtl.Output(bitwidth=16, name='t2')
tmp3 = tmp0[15] & tmp1
tmp4 = ~tmp0[15]
tmp5 = tmp0[14] | tmp0[15]
tmp6 = tmp5 & tmp4
tmp7 = tmp6 & tmp1
tmp8 = ~tmp5
tmp100 = [None]*14
tmp101 = [None]*14
for tmp99 in range(14):
    tmp9 = tmp0[(13 - tmp99)] | tmp0[(14 - tmp99)]
    tmp101[tmp99] = tmp9
tmp23 = tmp101[0] | tmp0[15]
tmp24 = ~tmp23
tmp25 = tmp23 & tmp8
tmp26 = tmp25 & tmp1
tmp27 = tmp101[1] | tmp5
tmp28 = tmp27 & tmp24
tmp29 = tmp28 & tmp1
tmp30 = ~tmp27
tmp103 = [None]*12
tmp104 = [None]*12
for tmp102 in range(12):
    tmp31 = tmp101[(tmp102 + 2)] | tmp101[tmp102]
    tmp104[tmp102] = tmp31
tmp43 = tmp104[0] | tmp0[15]
tmp44 = tmp43 & tmp30
tmp45 = tmp44 & tmp1
tmp46 = ~tmp43
tmp106 = [None]*3
tmp107 = [None]*3
tmp108 = tmp46
for tmp105 in range(3):
    tmp47 = tmp104[(tmp105 + 1)] | tmp27
    tmp106[(tmp105 + 0)] = tmp47
    tmp48 = tmp47 & tmp108
    tmp49 = tmp48 & tmp1
    tmp107[(tmp105 + 0)] = tmp49
    tmp50 = ~tmp47
    tmp108 = tmp50
tmp59 = tmp104[4] | tmp104[0]
tmp60 = tmp104[5] | tmp104[1]
tmp61 = tmp104[6] | tmp104[2]
tmp62 = tmp61 | tmp23
tmp110 = tmp62
tmp111 = [None]*5
for tmp109 in range(5):
    tmp63 = ~tmp110
    tmp64 = tmp104[(tmp109 + 7)] | tmp104[(tmp109 + 3)]
    tmp65 = tmp64 | tmp62
    tmp110 = tmp65
    tmp66 = tmp65 & tmp63
    tmp67 = tmp66 & tmp1
    tmp111[(tmp109 + 0)] = tmp67
tmp88 = tmp59 | tmp0[15]
tmp89 = tmp88 & tmp108
tmp90 = tmp89 & tmp1
tmp91 = ~tmp88
tmp92 = tmp60 | tmp5
tmp93 = tmp92 & tmp91
tmp94 = tmp93 & tmp1
tmp95 = ~tmp92
tmp96 = tmp62 & tmp95
tmp97 = tmp96 & tmp1
tmp98 = pyrtl.concat(tmp3, tmp7, tmp26, tmp29, tmp45, tmp107[0], tmp107[1], tmp107[2], tmp90, tmp94, tmp97, tmp111[0], tmp111[1], tmp111[2], tmp111[3], tmp111[4])
tmp2 <<= tmp98
