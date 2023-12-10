import pyrtl
tmp0 = pyrtl.Input(bitwidth=16, name='t0')
tmp1 = pyrtl.Output(bitwidth=1, name='t1')
tmp34 = [None]*16
for tmp33 in range(16):
    tmp2 = tmp0[tmp33]
    tmp34[tmp33] = tmp2
tmp18 = tmp34[15] ^ tmp34[14]
tmp19 = tmp18 ^ tmp34[13]
tmp20 = tmp19 ^ tmp34[12]
tmp21 = tmp20 ^ tmp34[11]
tmp22 = tmp21 ^ tmp34[10]
tmp23 = tmp22 ^ tmp34[9]
tmp24 = tmp23 ^ tmp34[8]
tmp25 = tmp24 ^ tmp34[7]
tmp26 = tmp25 ^ tmp34[6]
tmp27 = tmp26 ^ tmp34[5]
tmp28 = tmp27 ^ tmp34[4]
tmp29 = tmp28 ^ tmp34[3]
tmp30 = tmp29 ^ tmp34[2]
tmp31 = tmp30 ^ tmp34[1]
tmp32 = tmp31 ^ tmp34[0]
tmp1 <<= tmp32
