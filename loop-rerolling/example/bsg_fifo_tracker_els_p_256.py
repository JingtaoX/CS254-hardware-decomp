import pyrtl
tmp0 = pyrtl.Input(bitwidth=1, name='t0')
tmp1 = pyrtl.Input(bitwidth=1, name='t1')
tmp2 = pyrtl.Input(bitwidth=1, name='t2')
tmp3 = pyrtl.Output(bitwidth=8, name='t3')
tmp4 = pyrtl.Output(bitwidth=1, name='t4')
tmp5 = pyrtl.Output(bitwidth=1, name='t5')
tmp6 = pyrtl.Output(bitwidth=8, name='t6')
tmp7 = pyrtl.Output(bitwidth=8, name='t7')
tmp8 = pyrtl.Register(bitwidth=1, name='t8')
tmp9 = pyrtl.Register(bitwidth=1, name='t9')
tmp10 = pyrtl.Register(bitwidth=8, name='t10')
tmp11 = pyrtl.Register(bitwidth=8, name='t11')
tmp12 = tmp10 == tmp11
tmp13 = tmp12 & tmp8
tmp14 = tmp12 & tmp9
tmp15 = ~tmp1
tmp16 = tmp2 | tmp0
tmp17 = tmp16 & tmp15
tmp18 = pyrtl.corecircuits.mux(tmp17, pyrtl.Const(0, bitwidth=1), pyrtl.Const(1, bitwidth=1))
tmp19 = pyrtl.corecircuits.mux(tmp1, tmp18, pyrtl.Const(1, bitwidth=1))
tmp20 = pyrtl.corecircuits.mux(tmp17, pyrtl.Const(0, bitwidth=1), tmp2)
tmp21 = pyrtl.corecircuits.mux(tmp1, tmp20, pyrtl.Const(0, bitwidth=1))
tmp22 = pyrtl.corecircuits.mux(tmp19, tmp9, tmp21)
tmp23 = pyrtl.corecircuits.mux(tmp17, pyrtl.Const(0, bitwidth=1), tmp0)
tmp24 = pyrtl.corecircuits.mux(tmp1, tmp23, pyrtl.Const(1, bitwidth=1))
tmp25 = pyrtl.corecircuits.mux(tmp19, tmp8, tmp24)
tmp26 = tmp10 + pyrtl.Const(1, bitwidth=8)
tmp27 = pyrtl.corecircuits.mux(tmp0, tmp10, tmp26[0 : 8])
tmp28 = pyrtl.corecircuits.mux(tmp1, tmp27, pyrtl.Const(0, bitwidth=8))
tmp29 = tmp11 + pyrtl.Const(1, bitwidth=8)
tmp30 = pyrtl.corecircuits.mux(tmp2, tmp11, tmp29[0 : 8])
tmp31 = pyrtl.corecircuits.mux(tmp1, tmp30, pyrtl.Const(0, bitwidth=8))
tmp8.next <<= tmp25
tmp9.next <<= tmp22
tmp10.next <<= tmp28
tmp11.next <<= tmp31
tmp3 <<= tmp27
tmp4 <<= tmp14
tmp5 <<= tmp13
tmp6 <<= tmp10
tmp7 <<= tmp11
