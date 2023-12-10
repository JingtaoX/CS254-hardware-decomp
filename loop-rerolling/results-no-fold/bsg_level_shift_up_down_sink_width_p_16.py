import pyrtl
tmp0 = pyrtl.Input(bitwidth=1, name='t0')
tmp1 = pyrtl.Input(bitwidth=16, name='t1')
tmp2 = pyrtl.Output(bitwidth=16, name='t2')
tmp37 = [None]*16
for tmp36 in range(16):
    tmp3 = tmp1[tmp36]
    tmp37[tmp36] = tmp3
tmp39 = [None]*16
for tmp38 in range(16):
    tmp19 = tmp37[(15 - tmp38)] & tmp0
    tmp39[tmp38] = tmp19
tmp35 = pyrtl.concat(tmp39[0], tmp39[1], tmp39[2], tmp39[3], tmp39[4], tmp39[5], tmp39[6], tmp39[7], tmp39[8], tmp39[9], tmp39[10], tmp39[11], tmp39[12], tmp39[13], tmp39[14], tmp39[15])
tmp2 <<= tmp35
