import pyrtl
tmp0 = pyrtl.Input(bitwidth=4, name='t0')
tmp1 = pyrtl.Output(bitwidth=16, name='t1')
tmp2 = pyrtl.Const(1, bitwidth=16)[0 : 15]
tmp3 = pyrtl.concat(tmp2, pyrtl.Const(0, bitwidth=1))
tmp4 = pyrtl.Const(1, bitwidth=16)[1 : 16]
tmp5 = pyrtl.concat(pyrtl.Const(0, bitwidth=1), tmp4)
tmp6 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp5, tmp3)
tmp7 = tmp0[0]
tmp8 = pyrtl.corecircuits.mux(tmp7, pyrtl.Const(1, bitwidth=16), tmp6)
tmp9 = pyrtl.Const(0, bitwidth=2)[0 : 2]
tmp10 = tmp8[0 : 14]
tmp11 = pyrtl.concat(tmp10, tmp9)
tmp12 = tmp8[2 : 16]
tmp13 = pyrtl.concat(tmp9, tmp12)
tmp14 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp13, tmp11)
tmp15 = tmp0[1]
tmp16 = pyrtl.corecircuits.mux(tmp15, tmp8, tmp14)
tmp17 = pyrtl.concat(tmp9, tmp9)
tmp18 = tmp17[0 : 4]
tmp19 = tmp16[0 : 12]
tmp20 = pyrtl.concat(tmp19, tmp18)
tmp21 = tmp16[4 : 16]
tmp22 = pyrtl.concat(tmp18, tmp21)
tmp23 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp22, tmp20)
tmp24 = tmp0[2]
tmp25 = pyrtl.corecircuits.mux(tmp24, tmp16, tmp23)
tmp26 = pyrtl.concat(tmp18, tmp18)
tmp27 = tmp26[0 : 8]
tmp28 = tmp25[0 : 8]
tmp29 = pyrtl.concat(tmp28, tmp27)
tmp30 = tmp25[8 : 16]
tmp31 = pyrtl.concat(tmp27, tmp30)
tmp32 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp31, tmp29)
tmp33 = tmp0[3]
tmp34 = pyrtl.corecircuits.mux(tmp33, tmp25, tmp32)
tmp1 <<= tmp34
