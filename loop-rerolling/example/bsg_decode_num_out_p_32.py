import pyrtl
tmp0 = pyrtl.Input(bitwidth=5, name='t0')
tmp1 = pyrtl.Output(bitwidth=32, name='t1')
tmp2 = pyrtl.Const(1, bitwidth=32)[0 : 31]
tmp3 = pyrtl.concat(tmp2, pyrtl.Const(0, bitwidth=1))
tmp4 = pyrtl.Const(1, bitwidth=32)[1 : 32]
tmp5 = pyrtl.concat(pyrtl.Const(0, bitwidth=1), tmp4)
tmp6 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp5, tmp3)
tmp7 = pyrtl.corecircuits.mux(tmp0[0], pyrtl.Const(1, bitwidth=32), tmp6)
tmp8 = pyrtl.Const(0, bitwidth=2)[0 : 2]
tmp9 = pyrtl.concat(tmp7[0 : 30], tmp8)
tmp10 = pyrtl.concat(tmp8, tmp7[2 : 32])
tmp11 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp10, tmp9)
tmp12 = pyrtl.corecircuits.mux(tmp0[1], tmp7, tmp11)
tmp13 = pyrtl.concat(tmp8, tmp8)
tmp14 = pyrtl.concat(tmp12[0 : 28], tmp13[0 : 4])
tmp15 = pyrtl.concat(tmp13[0 : 4], tmp12[4 : 32])
tmp16 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp15, tmp14)
tmp17 = pyrtl.corecircuits.mux(tmp0[2], tmp12, tmp16)
tmp18 = pyrtl.concat(tmp13[0 : 4], tmp13[0 : 4])
tmp19 = pyrtl.concat(tmp17[0 : 24], tmp18[0 : 8])
tmp20 = pyrtl.concat(tmp18[0 : 8], tmp17[8 : 32])
tmp21 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp20, tmp19)
tmp22 = pyrtl.corecircuits.mux(tmp0[3], tmp17, tmp21)
tmp29 = tmp22
for tmp28 in range(3):
    tmp23 = pyrtl.concat(tmp22[0 : 16 if (tmp28 * 134) else (tmp28 + 8)], tmp15[16 if (tmp28 / 2) else 0 : (tmp28 * 16) if (tmp28 / 1) else (tmp28 + 8)])
    tmp29 = tmp23
tmp26 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp29, tmp29)
tmp27 = pyrtl.corecircuits.mux(tmp0[4], tmp22, tmp26)
tmp1 <<= tmp27
