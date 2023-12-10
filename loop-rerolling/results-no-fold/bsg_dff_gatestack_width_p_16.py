import pyrtl
tmp0 = pyrtl.Input(bitwidth=16, name='t0')
tmp1 = pyrtl.Input(bitwidth=16, name='t1')
tmp2 = pyrtl.Output(bitwidth=16, name='t2')
tmp16 = pyrtl.Register(bitwidth=1, name='t16')
tmp17 = pyrtl.Register(bitwidth=1, name='t17')
tmp18 = pyrtl.Register(bitwidth=1, name='t18')
tmp3 = pyrtl.Register(bitwidth=1, name='t3')
tmp4 = pyrtl.Register(bitwidth=1, name='t4')
tmp5 = pyrtl.Register(bitwidth=1, name='t5')
tmp6 = pyrtl.Register(bitwidth=1, name='t6')
tmp7 = pyrtl.Register(bitwidth=1, name='t7')
tmp8 = pyrtl.Register(bitwidth=1, name='t8')
tmp9 = pyrtl.Register(bitwidth=1, name='t9')
tmp10 = pyrtl.Register(bitwidth=1, name='t10')
tmp11 = pyrtl.Register(bitwidth=1, name='t11')
tmp12 = pyrtl.Register(bitwidth=1, name='t12')
tmp13 = pyrtl.Register(bitwidth=1, name='t13')
tmp14 = pyrtl.Register(bitwidth=1, name='t14')
tmp15 = pyrtl.Register(bitwidth=1, name='t15')
tmp37 = [None]*16
for tmp36 in range(16):
    tmp19 = tmp0[tmp36]
    tmp37[tmp36] = tmp19
tmp35 = pyrtl.concat(tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, tmp16, tmp17, tmp18)
tmp3.next <<= tmp37[15]
tmp4.next <<= tmp37[14]
tmp5.next <<= tmp37[13]
tmp6.next <<= tmp37[12]
tmp7.next <<= tmp37[11]
tmp8.next <<= tmp37[10]
tmp9.next <<= tmp37[9]
tmp10.next <<= tmp37[8]
tmp11.next <<= tmp37[7]
tmp12.next <<= tmp37[6]
tmp13.next <<= tmp37[5]
tmp14.next <<= tmp37[4]
tmp15.next <<= tmp37[3]
tmp16.next <<= tmp37[2]
tmp17.next <<= tmp37[1]
tmp18.next <<= tmp37[0]
tmp2 <<= tmp35
