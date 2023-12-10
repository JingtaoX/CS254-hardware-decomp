import pyrtl
tmp0 = pyrtl.Input(bitwidth=1, name='t0')
tmp1 = pyrtl.Input(bitwidth=1, name='t1')
tmp2 = pyrtl.Output(bitwidth=1, name='t2')
tmp3 = pyrtl.Register(bitwidth=1, name='t3')
tmp4 = pyrtl.Register(bitwidth=5, name='t4')
tmp5 = tmp4 + pyrtl.Const(1, bitwidth=5)
tmp6 = tmp5[0 : 5]
tmp7 = ~tmp0
tmp8 = tmp1 & tmp7
tmp9 = ~tmp1
tmp10 = tmp7 & tmp9
tmp11 = tmp1 | tmp0
tmp40 = [None]*5
for tmp39 in range(5):
    tmp12 = tmp4[tmp39]
    tmp40[tmp39] = tmp12
tmp17 = ~tmp40[4]
tmp42 = tmp17
for tmp41 in range(4):
    tmp18 = tmp40[(3 - tmp41)] | tmp42
    tmp42 = tmp18
tmp22 = tmp42 & tmp10
tmp23 = tmp42 | tmp11
tmp24 = pyrtl.corecircuits.mux(tmp23, tmp4, pyrtl.Const(0, bitwidth=5))
tmp25 = pyrtl.corecircuits.mux(tmp22, tmp24, tmp6)
tmp26 = pyrtl.corecircuits.mux(tmp8, tmp25, pyrtl.Const(0, bitwidth=5))
tmp27 = pyrtl.corecircuits.mux(tmp0, tmp26, pyrtl.Const(16, bitwidth=5))
tmp44 = [None]*5
for tmp43 in range(5):
    tmp28 = tmp27[tmp43]
    tmp44[tmp43] = tmp28
tmp33 = ~tmp44[4]
tmp46 = tmp33
for tmp45 in range(4):
    tmp34 = tmp44[(3 - tmp45)] | tmp46
    tmp46 = tmp34
tmp38 = ~tmp46
tmp3.next <<= tmp38
tmp4.next <<= tmp27
tmp2 <<= tmp3
