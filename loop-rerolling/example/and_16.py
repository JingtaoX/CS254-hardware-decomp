import pyrtl
tmp0 = pyrtl.Input(bitwidth=16, name='t0')
tmp1 = pyrtl.Input(bitwidth=16, name='t1')
tmp2 = pyrtl.Output(bitwidth=16, name='t2')
tmp21 = [None]*16
for tmp20 in range(16):
    tmp3 = tmp1[(15 - tmp20)] & tmp0[(15 - tmp20)]
    tmp21[tmp20] = tmp3
tmp19 = pyrtl.concat(tmp21[0], tmp21[1], tmp21[2], tmp21[3], tmp21[4], tmp21[5], tmp21[6], tmp21[7], tmp21[8], tmp21[9], tmp21[10], tmp21[11], tmp21[12], tmp21[13], tmp21[14], tmp21[15])
tmp2 <<= tmp19
