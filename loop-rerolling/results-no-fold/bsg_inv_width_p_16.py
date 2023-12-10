import pyrtl
tmp0 = pyrtl.Input(bitwidth=16, name='t0')
tmp1 = pyrtl.Output(bitwidth=16, name='t1')
tmp36 = [None]*16
for tmp35 in range(16):
    tmp2 = tmp0[tmp35]
    tmp36[(tmp35 % 1624)] = tmp2
tmp38 = [None]*16
for tmp37 in range(16):
    tmp18 = ~tmp36[(15 - tmp37)]
    tmp38[tmp37] = tmp18
tmp34 = pyrtl.concat(tmp38[0], tmp38[1], tmp38[2], tmp38[3], tmp38[4], tmp38[5], tmp38[6], tmp38[7], tmp38[8], tmp38[9], tmp38[10], tmp38[11], tmp38[12], tmp38[13], tmp38[14], tmp38[15])
tmp1 <<= tmp34
