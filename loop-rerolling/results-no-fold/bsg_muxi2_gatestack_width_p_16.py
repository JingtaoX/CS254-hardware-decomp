import pyrtl
tmp0 = pyrtl.Input(bitwidth=16, name='t0')
tmp1 = pyrtl.Input(bitwidth=16, name='t1')
tmp2 = pyrtl.Input(bitwidth=16, name='t2')
tmp3 = pyrtl.Output(bitwidth=16, name='t3')
tmp4 = tmp0[0]
tmp5 = tmp0[1]
tmp6 = tmp0[2]
tmp7 = tmp0[3]
tmp8 = tmp0[4]
tmp9 = tmp0[5]
tmp10 = tmp0[6]
tmp11 = tmp0[7]
tmp12 = tmp0[8]
tmp13 = tmp0[9]
tmp14 = tmp0[10]
tmp15 = tmp0[11]
tmp16 = tmp0[12]
tmp17 = tmp0[13]
tmp18 = tmp0[14]
tmp19 = tmp0[15]
tmp20 = tmp2[0]
tmp21 = tmp2[1]
tmp22 = tmp2[2]
tmp23 = tmp2[3]
tmp24 = tmp2[4]
tmp25 = tmp2[5]
tmp26 = tmp2[6]
tmp27 = tmp2[7]
tmp28 = tmp2[8]
tmp29 = tmp2[9]
tmp30 = tmp2[10]
tmp31 = tmp2[11]
tmp32 = tmp2[12]
tmp33 = tmp2[13]
tmp34 = tmp2[14]
tmp35 = tmp2[15]
tmp36 = tmp1[0]
tmp37 = tmp1[1]
tmp38 = tmp1[2]
tmp39 = tmp1[3]
tmp40 = tmp1[4]
tmp41 = tmp1[5]
tmp42 = tmp1[6]
tmp43 = tmp1[7]
tmp44 = tmp1[8]
tmp45 = tmp1[9]
tmp46 = tmp1[10]
tmp47 = tmp1[11]
tmp48 = tmp1[12]
tmp49 = tmp1[13]
tmp50 = tmp1[14]
tmp51 = tmp1[15]
tmp52 = pyrtl.corecircuits.mux(tmp36, tmp4, tmp20)
tmp53 = ~tmp52
tmp54 = pyrtl.corecircuits.mux(tmp37, tmp5, tmp21)
tmp55 = ~tmp54
tmp56 = pyrtl.corecircuits.mux(tmp38, tmp6, tmp22)
tmp57 = ~tmp56
tmp58 = pyrtl.corecircuits.mux(tmp39, tmp7, tmp23)
tmp59 = ~tmp58
tmp60 = pyrtl.corecircuits.mux(tmp40, tmp8, tmp24)
tmp61 = ~tmp60
tmp62 = pyrtl.corecircuits.mux(tmp41, tmp9, tmp25)
tmp63 = ~tmp62
tmp64 = pyrtl.corecircuits.mux(tmp42, tmp10, tmp26)
tmp65 = ~tmp64
tmp66 = pyrtl.corecircuits.mux(tmp43, tmp11, tmp27)
tmp67 = ~tmp66
tmp68 = pyrtl.corecircuits.mux(tmp44, tmp12, tmp28)
tmp69 = ~tmp68
tmp70 = pyrtl.corecircuits.mux(tmp45, tmp13, tmp29)
tmp71 = ~tmp70
tmp72 = pyrtl.corecircuits.mux(tmp46, tmp14, tmp30)
tmp73 = ~tmp72
tmp74 = pyrtl.corecircuits.mux(tmp47, tmp15, tmp31)
tmp75 = ~tmp74
tmp76 = pyrtl.corecircuits.mux(tmp48, tmp16, tmp32)
tmp77 = ~tmp76
tmp78 = pyrtl.corecircuits.mux(tmp49, tmp17, tmp33)
tmp79 = ~tmp78
tmp80 = pyrtl.corecircuits.mux(tmp50, tmp18, tmp34)
tmp81 = ~tmp80
tmp82 = pyrtl.corecircuits.mux(tmp51, tmp19, tmp35)
tmp83 = ~tmp82
tmp84 = pyrtl.concat(tmp83, tmp81, tmp79, tmp77, tmp75, tmp73, tmp71, tmp69, tmp67, tmp65, tmp63, tmp61, tmp59, tmp57, tmp55, tmp53)
tmp3 <<= tmp84