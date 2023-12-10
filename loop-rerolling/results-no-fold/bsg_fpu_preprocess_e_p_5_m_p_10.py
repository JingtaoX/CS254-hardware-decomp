import pyrtl
tmp0 = pyrtl.Input(bitwidth=16, name='t0')
tmp1 = pyrtl.Output(bitwidth=1, name='t1')
tmp2 = pyrtl.Output(bitwidth=1, name='t2')
tmp3 = pyrtl.Output(bitwidth=1, name='t3')
tmp4 = pyrtl.Output(bitwidth=10, name='t4')
tmp5 = pyrtl.Output(bitwidth=1, name='t5')
tmp6 = pyrtl.Output(bitwidth=1, name='t6')
tmp7 = pyrtl.Output(bitwidth=1, name='t7')
tmp8 = pyrtl.Output(bitwidth=1, name='t8')
tmp9 = pyrtl.Output(bitwidth=5, name='t9')
tmp10 = pyrtl.Output(bitwidth=1, name='t10')
tmp55 = [None]*16
for tmp54 in range(16):
    tmp11 = tmp0[tmp54]
    tmp55[tmp54] = tmp11
tmp27 = pyrtl.concat(tmp55[14], tmp55[13], tmp55[12], tmp55[11], tmp55[10])
tmp28 = tmp0[0 : 10]
tmp29 = tmp55[13] & tmp55[14]
tmp30 = tmp55[12] & tmp29
tmp31 = tmp55[11] & tmp30
tmp32 = tmp55[10] & tmp31
tmp33 = ~tmp55[9]
tmp34 = tmp55[8] | tmp55[9]
tmp35 = tmp55[7] | tmp34
tmp36 = tmp55[6] | tmp35
tmp37 = tmp55[5] | tmp36
tmp38 = tmp55[4] | tmp37
tmp39 = tmp55[3] | tmp38
tmp40 = tmp55[2] | tmp39
tmp41 = tmp55[1] | tmp40
tmp42 = tmp55[0] | tmp41
tmp43 = tmp32 & tmp42
tmp44 = tmp43 & tmp33
tmp45 = ~tmp42
tmp46 = tmp32 & tmp45
tmp47 = tmp55[13] | tmp55[14]
tmp48 = tmp55[12] | tmp47
tmp49 = tmp55[11] | tmp48
tmp50 = tmp55[10] | tmp49
tmp51 = ~tmp50
tmp52 = tmp51 & tmp45
tmp53 = tmp51 & tmp42
tmp1 <<= tmp44
tmp2 <<= tmp46
tmp3 <<= tmp43
tmp4 <<= tmp28
tmp5 <<= tmp52
tmp6 <<= tmp55[15]
tmp7 <<= tmp53
tmp8 <<= tmp45
tmp9 <<= tmp27
tmp10 <<= tmp51
