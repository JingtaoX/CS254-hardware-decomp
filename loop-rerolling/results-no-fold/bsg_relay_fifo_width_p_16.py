import pyrtl
tmp0 = pyrtl.Input(bitwidth=16, name='t0')
tmp1 = pyrtl.Input(bitwidth=1, name='t1')
tmp2 = pyrtl.Input(bitwidth=1, name='t2')
tmp3 = pyrtl.Input(bitwidth=1, name='t3')
tmp4 = pyrtl.Output(bitwidth=1, name='t4')
tmp5 = pyrtl.Output(bitwidth=1, name='t5')
tmp6 = pyrtl.Output(bitwidth=16, name='t6')
tmp7 = pyrtl.Register(bitwidth=1, name='t7')
tmp8 = pyrtl.Register(bitwidth=1, name='t8')
tmp9 = pyrtl.Register(bitwidth=1, name='t9')
tmp10 = pyrtl.Register(bitwidth=1, name='t10')
tmp11 = pyrtl.Register(bitwidth=32, name='t11')
tmp12 = ~tmp7
tmp13 = tmp3 & tmp12
tmp14 = ~tmp9
tmp15 = ~tmp13
tmp16 = tmp10 & tmp15
tmp17 = ~tmp10
tmp18 = tmp1 & tmp17
tmp19 = tmp12 & tmp18
tmp20 = tmp19 & tmp15
tmp21 = tmp17 & tmp13
tmp22 = ~tmp18
tmp23 = tmp21 & tmp22
tmp24 = tmp7 & tmp22
tmp25 = tmp16 | tmp20
tmp26 = tmp23 | tmp24
tmp27 = pyrtl.corecircuits.mux(tmp2, tmp13, pyrtl.Const(1, bitwidth=1))
tmp28 = pyrtl.corecircuits.mux(tmp2, tmp18, pyrtl.Const(1, bitwidth=1))
tmp29 = pyrtl.corecircuits.mux(tmp2, tmp14, pyrtl.Const(0, bitwidth=1))
tmp30 = pyrtl.corecircuits.mux(tmp28, tmp9, tmp29)
tmp31 = pyrtl.corecircuits.mux(tmp2, tmp25, pyrtl.Const(1, bitwidth=1))
tmp32 = pyrtl.corecircuits.mux(tmp2, tmp26, pyrtl.Const(0, bitwidth=1))
tmp33 = ~tmp8
tmp34 = pyrtl.corecircuits.mux(tmp2, tmp33, pyrtl.Const(0, bitwidth=1))
tmp35 = pyrtl.corecircuits.mux(tmp27, tmp8, tmp34)
tmp127 = [None]*32
for tmp126 in range(32):
    tmp36 = tmp11[tmp126]
    tmp127[tmp126] = tmp36
tmp68 = pyrtl.concat(tmp127[31], tmp127[30], tmp127[29], tmp127[28], tmp127[27], tmp127[26], tmp127[25], tmp127[24], tmp127[23], tmp127[22], tmp127[21], tmp127[20], tmp127[19], tmp127[18], tmp127[17], tmp127[16])
tmp69 = tmp11[0 : 16]
tmp70 = pyrtl.concat(tmp8, tmp33)
tmp71 = pyrtl.corecircuits.mux(tmp13, pyrtl.Const(0, bitwidth=2), tmp70)
tmp72 = tmp71[0]
tmp73 = pyrtl.corecircuits.mux(tmp72, tmp69, tmp0)
tmp74 = tmp73[0]
tmp75 = tmp73[1]
tmp76 = tmp73[2]
tmp77 = tmp73[3]
tmp78 = tmp73[4]
tmp79 = tmp73[5]
tmp80 = tmp73[6]
tmp81 = tmp73[7]
tmp82 = tmp73[8]
tmp83 = tmp73[9]
tmp84 = tmp73[10]
tmp85 = tmp73[11]
tmp86 = tmp73[12]
tmp87 = tmp73[13]
tmp88 = tmp73[14]
tmp89 = tmp73[15]
tmp90 = tmp71[1]
tmp91 = pyrtl.corecircuits.mux(tmp90, tmp68, tmp0)
tmp129 = [None]*16
for tmp128 in range(16):
    tmp92 = tmp91[tmp128]
    tmp129[(tmp128 % 224)] = tmp92
tmp108 = pyrtl.concat(tmp129[15], tmp129[14], tmp129[13], tmp129[12], tmp129[11], tmp129[10], tmp129[9], tmp129[8], tmp129[7], tmp129[6], tmp129[5], tmp129[4], tmp129[3], tmp129[2], tmp129[1], tmp129[0], tmp89, tmp88, tmp87, tmp86, tmp85, tmp84, tmp83, tmp82, tmp81, tmp80, tmp79, tmp78, tmp77, tmp76, tmp75, tmp74)
tmp131 = [None]*16
for tmp130 in range(16):
    tmp109 = pyrtl.corecircuits.mux(tmp9, tmp127[(15 - tmp130)], tmp127[(31 - tmp130)])
    tmp131[(tmp130 + 0)] = tmp109
tmp125 = pyrtl.concat(tmp131[0], tmp131[1], tmp131[2], tmp131[3], tmp131[4], tmp131[5], tmp131[6], tmp131[7], tmp131[8], tmp131[9], tmp131[10], tmp131[11], tmp131[12], tmp131[13], tmp131[14], tmp131[15])
tmp7.next <<= tmp32
tmp8.next <<= tmp35
tmp9.next <<= tmp30
tmp10.next <<= tmp31
tmp11.next <<= tmp108
tmp4 <<= tmp12
tmp5 <<= tmp17
tmp6 <<= tmp125
