import pyrtl
tmp0 = pyrtl.Input(bitwidth=1, name='t0')
tmp1 = pyrtl.Input(bitwidth=1, name='t1')
tmp2 = pyrtl.Input(bitwidth=1, name='t2')
tmp3 = pyrtl.Input(bitwidth=16, name='t3')
tmp4 = pyrtl.Output(bitwidth=1, name='t4')
tmp5 = pyrtl.Output(bitwidth=1, name='t5')
tmp6 = pyrtl.Output(bitwidth=16, name='t6')
tmp7 = pyrtl.Register(bitwidth=1, name='t7')
tmp8 = pyrtl.Register(bitwidth=1, name='t8')
tmp9 = pyrtl.Register(bitwidth=1, name='t9')
tmp10 = pyrtl.Register(bitwidth=1, name='t10')
tmp11 = pyrtl.Register(bitwidth=32, name='t11')
tmp12 = ~tmp7
tmp13 = tmp0 & tmp12
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
tmp36 = pyrtl.concat(tmp11[31], tmp11[30], tmp11[29], tmp11[28], tmp11[27], tmp11[26], tmp11[25], tmp11[24], tmp11[23], tmp11[22], tmp11[21], tmp11[20], tmp11[19], tmp11[18], tmp11[17], tmp11[16])
tmp37 = pyrtl.concat(tmp8, tmp33)
tmp38 = pyrtl.corecircuits.mux(tmp13, pyrtl.Const(0, bitwidth=2), tmp37)
tmp39 = pyrtl.corecircuits.mux(tmp38[0], tmp11[0 : 16], tmp3)
tmp40 = pyrtl.corecircuits.mux(tmp38[1], tmp36, tmp3)
tmp41 = pyrtl.concat(tmp40[15], tmp40[14], tmp40[13], tmp40[12], tmp40[11], tmp40[10], tmp40[9], tmp40[8], tmp40[7], tmp40[6], tmp40[5], tmp40[4], tmp40[3], tmp40[2], tmp40[1], tmp40[0], tmp39[15], tmp39[14], tmp39[13], tmp39[12], tmp39[11], tmp39[10], tmp39[9], tmp39[8], tmp39[7], tmp39[6], tmp39[5], tmp39[4], tmp39[3], tmp39[2], tmp39[1], tmp39[0])
tmp60 = [None]*16
for tmp59 in range(16):
    tmp42 = pyrtl.corecircuits.mux(tmp9, tmp11[(15 - tmp59)], tmp11[(31 - tmp59)])
    tmp60[(tmp59 + 0)] = tmp42
tmp58 = pyrtl.concat(tmp60[0], tmp60[1], tmp60[2], tmp60[3], tmp60[4], tmp60[5], tmp60[6], tmp60[7], tmp60[8], tmp60[9], tmp60[10], tmp60[11], tmp60[12], tmp60[13], tmp60[14], tmp60[15])
tmp7.next <<= tmp32
tmp8.next <<= tmp35
tmp9.next <<= tmp30
tmp10.next <<= tmp31
tmp11.next <<= tmp41
tmp4 <<= tmp12
tmp5 <<= tmp17
tmp6 <<= tmp58
