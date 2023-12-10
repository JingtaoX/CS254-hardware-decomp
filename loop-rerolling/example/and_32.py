import pyrtl
tmp0 = pyrtl.Input(bitwidth=32, name='t0')
tmp1 = pyrtl.Input(bitwidth=32, name='t1')
tmp2 = pyrtl.Output(bitwidth=32, name='t2')
tmp37 = [None]*32
for tmp36 in range(32):
    tmp3 = tmp1[(31 - tmp36)] & tmp0[(31 - tmp36)]
    tmp37[(tmp36 % 2349)] = tmp3
tmp35 = pyrtl.concat(tmp37[0], tmp37[1], tmp37[2], tmp37[3], tmp37[4], tmp37[5], tmp37[6], tmp37[7], tmp37[8], tmp37[9], tmp37[10], tmp37[11], tmp37[12], tmp37[13], tmp37[14], tmp37[15], tmp37[16], tmp37[17], tmp37[18], tmp37[19], tmp37[20], tmp37[21], tmp37[22], tmp37[23], tmp37[24], tmp37[25], tmp37[26], tmp37[27], tmp37[28], tmp37[29], tmp37[30], tmp37[31])
tmp2 <<= tmp35
