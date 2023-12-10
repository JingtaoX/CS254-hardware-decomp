import pyrtl
tmp0 = pyrtl.Input(bitwidth=4, name='t0')
tmp1 = pyrtl.Output(bitwidth=16, name='t1')
tmp2 = pyrtl.Const(1, bitwidth=16)[0 : 15]
tmp3 = pyrtl.concat(tmp2, pyrtl.Const(0, bitwidth=1))
tmp4 = pyrtl.Const(1, bitwidth=16)[1 : 16]
tmp5 = pyrtl.concat(pyrtl.Const(0, bitwidth=1), tmp4)
tmp6 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp5, tmp3)
tmp7 = pyrtl.corecircuits.mux(tmp0[0], pyrtl.Const(1, bitwidth=16), tmp6)
tmp8 = pyrtl.Const(0, bitwidth=2)[0 : 2]
tmp9 = pyrtl.concat(tmp7[0 : 14], tmp8)
tmp10 = pyrtl.concat(tmp8, tmp7[2 : 16])
tmp11 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp10, tmp9)
tmp12 = pyrtl.corecircuits.mux(tmp0[1], tmp7, tmp11)
tmp13 = pyrtl.concat(tmp8, tmp8)
tmp14 = pyrtl.concat(tmp12[0 : 12], tmp13[0 : 4])
tmp15 = pyrtl.concat(tmp13[0 : 4], tmp12[4 : 16])
tmp16 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp15, tmp14)
tmp17 = pyrtl.corecircuits.mux(tmp0[2], tmp12, tmp16)
tmp24 = tmp8
for tmp23 in range(3):
    tmp18 = pyrtl.concat(tmp17[0 : 8 if (tmp23 * 876) else 4], tmp5[(tmp23 / 4095) if (2 - tmp23) else (10 - tmp23) : (tmp23 * 8) if (tmp23 / 1) else (4 - tmp23)])
    tmp24 = tmp18
tmp21 = pyrtl.corecircuits.mux(pyrtl.Const(1, bitwidth=1), tmp24, tmp24)
tmp22 = pyrtl.corecircuits.mux(tmp0[3], tmp17, tmp21)
tmp1 <<= tmp22
