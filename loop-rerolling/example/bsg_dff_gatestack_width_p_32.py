import pyrtl
tmp0 = pyrtl.Input(bitwidth=32, name='t0')
tmp1 = pyrtl.Input(bitwidth=32, name='t1')
tmp2 = pyrtl.Output(bitwidth=32, name='t2')
tmp16 = pyrtl.Register(bitwidth=1, name='t16')
tmp32 = pyrtl.Register(bitwidth=1, name='t32')
tmp17 = pyrtl.Register(bitwidth=1, name='t17')
tmp33 = pyrtl.Register(bitwidth=1, name='t33')
tmp18 = pyrtl.Register(bitwidth=1, name='t18')
tmp34 = pyrtl.Register(bitwidth=1, name='t34')
tmp3 = pyrtl.Register(bitwidth=1, name='t3')
tmp19 = pyrtl.Register(bitwidth=1, name='t19')
tmp4 = pyrtl.Register(bitwidth=1, name='t4')
tmp20 = pyrtl.Register(bitwidth=1, name='t20')
tmp5 = pyrtl.Register(bitwidth=1, name='t5')
tmp21 = pyrtl.Register(bitwidth=1, name='t21')
tmp6 = pyrtl.Register(bitwidth=1, name='t6')
tmp22 = pyrtl.Register(bitwidth=1, name='t22')
tmp7 = pyrtl.Register(bitwidth=1, name='t7')
tmp23 = pyrtl.Register(bitwidth=1, name='t23')
tmp8 = pyrtl.Register(bitwidth=1, name='t8')
tmp24 = pyrtl.Register(bitwidth=1, name='t24')
tmp9 = pyrtl.Register(bitwidth=1, name='t9')
tmp25 = pyrtl.Register(bitwidth=1, name='t25')
tmp10 = pyrtl.Register(bitwidth=1, name='t10')
tmp26 = pyrtl.Register(bitwidth=1, name='t26')
tmp11 = pyrtl.Register(bitwidth=1, name='t11')
tmp27 = pyrtl.Register(bitwidth=1, name='t27')
tmp12 = pyrtl.Register(bitwidth=1, name='t12')
tmp28 = pyrtl.Register(bitwidth=1, name='t28')
tmp13 = pyrtl.Register(bitwidth=1, name='t13')
tmp29 = pyrtl.Register(bitwidth=1, name='t29')
tmp14 = pyrtl.Register(bitwidth=1, name='t14')
tmp30 = pyrtl.Register(bitwidth=1, name='t30')
tmp15 = pyrtl.Register(bitwidth=1, name='t15')
tmp31 = pyrtl.Register(bitwidth=1, name='t31')
tmp69 = [None]*32
for tmp68 in range(32):
    tmp35 = tmp0[tmp68]
    tmp69[tmp68] = tmp35
tmp67 = pyrtl.concat(tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, tmp16, tmp17, tmp18, tmp19, tmp20, tmp21, tmp22, tmp23, tmp24, tmp25, tmp26, tmp27, tmp28, tmp29, tmp30, tmp31, tmp32, tmp33, tmp34)
tmp3.next <<= tmp69[31]
tmp4.next <<= tmp69[30]
tmp5.next <<= tmp69[29]
tmp6.next <<= tmp69[28]
tmp7.next <<= tmp69[27]
tmp8.next <<= tmp69[26]
tmp9.next <<= tmp69[25]
tmp10.next <<= tmp69[24]
tmp11.next <<= tmp69[23]
tmp12.next <<= tmp69[22]
tmp13.next <<= tmp69[21]
tmp14.next <<= tmp69[20]
tmp15.next <<= tmp69[19]
tmp16.next <<= tmp69[18]
tmp17.next <<= tmp69[17]
tmp18.next <<= tmp69[16]
tmp19.next <<= tmp69[15]
tmp20.next <<= tmp69[14]
tmp21.next <<= tmp69[13]
tmp22.next <<= tmp69[12]
tmp23.next <<= tmp69[11]
tmp24.next <<= tmp69[10]
tmp25.next <<= tmp69[9]
tmp26.next <<= tmp69[8]
tmp27.next <<= tmp69[7]
tmp28.next <<= tmp69[6]
tmp29.next <<= tmp69[5]
tmp30.next <<= tmp69[4]
tmp31.next <<= tmp69[3]
tmp32.next <<= tmp69[2]
tmp33.next <<= tmp69[1]
tmp34.next <<= tmp69[0]
tmp2 <<= tmp67
