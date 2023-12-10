import pyrtl
tmp0 = pyrtl.Input(bitwidth=1, name='t0')
tmp1 = pyrtl.Input(bitwidth=4, name='t1')
tmp2 = pyrtl.Output(bitwidth=16, name='t2')
tmp3 = pyrtl.Const(1, bitwidth=16)[0 : 15]
tmp4 = pyrtl.concat(tmp3, pyrtl.Const(0, bitwidth=1))
tmp5 = pyrtl.Const(1, bitwidth=16)[1 : 16]
tmp6 = pyrtl.concat(pyrtl.Const(0, bitwidth=1), tmp5)
tmp7 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp6, tmp4)
tmp8 = tmp1[0]
tmp9 = pyrtl.corecircuits.mux(tmp8, pyrtl.Const(1, bitwidth=16), tmp7)
tmp10 = pyrtl.Const(0, bitwidth=2)[0 : 2]
tmp11 = tmp9[0 : 14]
tmp12 = pyrtl.concat(tmp11, tmp10)
tmp13 = tmp9[2 : 16]
tmp14 = pyrtl.concat(tmp10, tmp13)
tmp15 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp14, tmp12)
tmp16 = tmp1[1]
tmp17 = pyrtl.corecircuits.mux(tmp16, tmp9, tmp15)
tmp18 = pyrtl.concat(tmp10, tmp10)
tmp19 = tmp18[0 : 4]
tmp20 = tmp17[0 : 12]
tmp21 = pyrtl.concat(tmp20, tmp19)
tmp22 = tmp17[4 : 16]
tmp23 = pyrtl.concat(tmp19, tmp22)
tmp24 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp23, tmp21)
tmp25 = tmp1[2]
tmp26 = pyrtl.corecircuits.mux(tmp25, tmp17, tmp24)
tmp27 = pyrtl.concat(tmp19, tmp19)
tmp28 = tmp27[0 : 8]
tmp29 = tmp26[0 : 8]
tmp30 = pyrtl.concat(tmp29, tmp28)
tmp31 = tmp26[8 : 16]
tmp32 = pyrtl.concat(tmp28, tmp31)
tmp33 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp32, tmp30)
tmp34 = tmp1[3]
tmp35 = pyrtl.corecircuits.mux(tmp34, tmp26, tmp33)
tmp70 = [None]*16
for tmp69 in range(16):
    tmp36 = tmp35[tmp69]
    tmp37 = tmp0 & tmp36
    tmp70[(tmp69 + 0)] = tmp37
tmp68 = pyrtl.concat(tmp70[15], tmp70[14], tmp70[13], tmp70[12], tmp70[11], tmp70[10], tmp70[9], tmp70[8], tmp70[7], tmp70[6], tmp70[5], tmp70[4], tmp70[3], tmp70[2], tmp70[1], tmp70[0])
tmp2 <<= tmp68
