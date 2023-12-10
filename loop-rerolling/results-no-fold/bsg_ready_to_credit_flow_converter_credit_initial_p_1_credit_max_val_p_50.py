import pyrtl
tmp0 = pyrtl.Input(bitwidth=1, name='t0')
tmp1 = pyrtl.Input(bitwidth=1, name='t1')
tmp2 = pyrtl.Input(bitwidth=1, name='t2')
tmp3 = pyrtl.Output(bitwidth=1, name='t3')
tmp4 = pyrtl.Output(bitwidth=1, name='t4')
tmp5 = pyrtl.Register(bitwidth=6, name='t5')
tmp6 = pyrtl.concat(pyrtl.Const(0, bitwidth=5), tmp0)
tmp26 = [None]*6
for tmp25 in range(6):
    tmp7 = tmp5[tmp25]
    tmp26[tmp25] = tmp7
tmp13 = tmp26[4] | tmp26[5]
tmp14 = tmp26[3] | tmp13
tmp15 = tmp26[2] | tmp14
tmp16 = tmp26[1] | tmp15
tmp17 = tmp26[0] | tmp16
tmp18 = tmp2 & tmp17
tmp19 = pyrtl.concat(pyrtl.Const(0, bitwidth=5), tmp18)
tmp20 = tmp5 - tmp19
tmp21 = tmp20[0 : 6]
tmp22 = tmp21 + tmp6
tmp23 = tmp22[0 : 6]
tmp24 = pyrtl.corecircuits.mux(tmp1, tmp23, pyrtl.Const(1, bitwidth=6))
tmp5.next <<= tmp24
tmp3 <<= tmp17
tmp4 <<= tmp18
