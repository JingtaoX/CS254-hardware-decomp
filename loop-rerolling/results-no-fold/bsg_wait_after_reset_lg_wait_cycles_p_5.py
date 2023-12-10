import pyrtl
tmp0 = pyrtl.Input(bitwidth=1, name='t0')
tmp1 = pyrtl.Output(bitwidth=1, name='t1')
tmp2 = pyrtl.Register(bitwidth=1, name='t2')
tmp3 = pyrtl.Register(bitwidth=5, name='t3')
tmp4 = tmp3 + pyrtl.Const(1, bitwidth=5)
tmp5 = tmp4[0 : 5]
tmp6 = ~tmp0
tmp29 = [None]*5
for tmp28 in range(5):
    tmp7 = tmp3[tmp28]
    tmp29[tmp28] = tmp7
tmp12 = tmp29[3] | tmp29[4]
tmp13 = tmp29[2] | tmp12
tmp14 = tmp29[1] | tmp13
tmp15 = tmp29[0] | tmp14
tmp16 = ~tmp15
tmp17 = tmp16 & tmp6
tmp18 = tmp16 | tmp0
tmp19 = pyrtl.corecircuits.mux(tmp18, pyrtl.Const(1, bitwidth=1), pyrtl.Const(0, bitwidth=1))
tmp20 = pyrtl.corecircuits.mux(tmp17, tmp19, pyrtl.Const(0, bitwidth=1))
tmp21 = pyrtl.corecircuits.mux(tmp0, tmp20, pyrtl.Const(1, bitwidth=1))
tmp22 = pyrtl.corecircuits.mux(tmp18, tmp5, pyrtl.Const(0, bitwidth=5))
tmp23 = pyrtl.corecircuits.mux(tmp0, tmp22, pyrtl.Const(1, bitwidth=5))
tmp24 = pyrtl.corecircuits.mux(tmp21, tmp3, tmp23)
tmp25 = pyrtl.corecircuits.mux(tmp17, pyrtl.Const(0, bitwidth=1), pyrtl.Const(1, bitwidth=1))
tmp26 = pyrtl.corecircuits.mux(tmp0, tmp25, pyrtl.Const(1, bitwidth=1))
tmp27 = pyrtl.corecircuits.mux(tmp26, tmp2, tmp17)
tmp2.next <<= tmp27
tmp3.next <<= tmp24
tmp1 <<= tmp2
