

module top
(
  a_i,
  class_o,
  a_i1, // added for decompiling
  class_o1 // added for decompiling
);

  input [31:0] a_i;
  input [31:0] a_i1; // added for decompiling
  output [31:0] class_o;
  output [31:0] class_o1; // added for decompiling

  bsg_fpu_classify
  wrapper
  (
    .a_i(a_i),
    .class_o(class_o)
  );

  bsg_fpu_classify
  wrapper1
  (
    .a_i(a_i1), // added for decompiling
    .class_o(class_o1) // added for decompiling
  );

  
endmodule



module bsg_fpu_preprocess_e_p8_m_p23
(
  a_i,
  zero_o,
  nan_o,
  sig_nan_o,
  infty_o,
  exp_zero_o,
  man_zero_o,
  denormal_o,
  sign_o,
  exp_o,
  man_o
);

  input [31:0] a_i;
  output [7:0] exp_o;
  output [22:0] man_o;
  output zero_o;
  output nan_o;
  output sig_nan_o;
  output infty_o;
  output exp_zero_o;
  output man_zero_o;
  output denormal_o;
  output sign_o;
  wire [7:0] exp_o;
  wire [22:0] man_o;
  wire zero_o,nan_o,sig_nan_o,infty_o,exp_zero_o,man_zero_o,denormal_o,sign_o,a_i_31_,
  N0,N1,N2,N3,N4,N5,N6,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,
  N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N38;
  assign a_i_31_ = a_i[31];
  assign sign_o = a_i_31_;
  assign exp_o[7] = a_i[30];
  assign exp_o[6] = a_i[29];
  assign exp_o[5] = a_i[28];
  assign exp_o[4] = a_i[27];
  assign exp_o[3] = a_i[26];
  assign exp_o[2] = a_i[25];
  assign exp_o[1] = a_i[24];
  assign exp_o[0] = a_i[23];
  assign man_o[22] = a_i[22];
  assign man_o[21] = a_i[21];
  assign man_o[20] = a_i[20];
  assign man_o[19] = a_i[19];
  assign man_o[18] = a_i[18];
  assign man_o[17] = a_i[17];
  assign man_o[16] = a_i[16];
  assign man_o[15] = a_i[15];
  assign man_o[14] = a_i[14];
  assign man_o[13] = a_i[13];
  assign man_o[12] = a_i[12];
  assign man_o[11] = a_i[11];
  assign man_o[10] = a_i[10];
  assign man_o[9] = a_i[9];
  assign man_o[8] = a_i[8];
  assign man_o[7] = a_i[7];
  assign man_o[6] = a_i[6];
  assign man_o[5] = a_i[5];
  assign man_o[4] = a_i[4];
  assign man_o[3] = a_i[3];
  assign man_o[2] = a_i[2];
  assign man_o[1] = a_i[1];
  assign man_o[0] = a_i[0];
  assign N0 = exp_o[6] | exp_o[7];
  assign N1 = exp_o[5] | N0;
  assign N2 = exp_o[4] | N1;
  assign N3 = exp_o[3] | N2;
  assign N4 = exp_o[2] | N3;
  assign N5 = exp_o[1] | N4;
  assign N6 = exp_o[0] | N5;
  assign exp_zero_o = ~N6;
  assign N8 = exp_o[6] & exp_o[7];
  assign N9 = exp_o[5] & N8;
  assign N10 = exp_o[4] & N9;
  assign N11 = exp_o[3] & N10;
  assign N12 = exp_o[2] & N11;
  assign N13 = exp_o[1] & N12;
  assign N14 = exp_o[0] & N13;
  assign N15 = man_o[21] | man_o[22];
  assign N16 = man_o[20] | N15;
  assign N17 = man_o[19] | N16;
  assign N18 = man_o[18] | N17;
  assign N19 = man_o[17] | N18;
  assign N20 = man_o[16] | N19;
  assign N21 = man_o[15] | N20;
  assign N22 = man_o[14] | N21;
  assign N23 = man_o[13] | N22;
  assign N24 = man_o[12] | N23;
  assign N25 = man_o[11] | N24;
  assign N26 = man_o[10] | N25;
  assign N27 = man_o[9] | N26;
  assign N28 = man_o[8] | N27;
  assign N29 = man_o[7] | N28;
  assign N30 = man_o[6] | N29;
  assign N31 = man_o[5] | N30;
  assign N32 = man_o[4] | N31;
  assign N33 = man_o[3] | N32;
  assign N34 = man_o[2] | N33;
  assign N35 = man_o[1] | N34;
  assign N36 = man_o[0] | N35;
  assign man_zero_o = ~N36;
  assign zero_o = exp_zero_o & man_zero_o;
  assign nan_o = N14 & N36;
  assign sig_nan_o = nan_o & N38;
  assign N38 = ~man_o[22];
  assign infty_o = N14 & man_zero_o;
  assign denormal_o = exp_zero_o & N36;

endmodule



module bsg_fpu_classify
(
  a_i,
  class_o
);

  input [31:0] a_i;
  output [31:0] class_o;
  wire [31:0] class_o;
  wire zero,nan,infty,denormal,sign,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,sv2v_dc_1,
  sv2v_dc_2,sv2v_dc_3,sv2v_dc_4,sv2v_dc_5,sv2v_dc_6,sv2v_dc_7,sv2v_dc_8,sv2v_dc_9,
  sv2v_dc_10,sv2v_dc_11,sv2v_dc_12,sv2v_dc_13,sv2v_dc_14,sv2v_dc_15,sv2v_dc_16,
  sv2v_dc_17,sv2v_dc_18,sv2v_dc_19,sv2v_dc_20,sv2v_dc_21,sv2v_dc_22,sv2v_dc_23,
  sv2v_dc_24,sv2v_dc_25,sv2v_dc_26,sv2v_dc_27,sv2v_dc_28,sv2v_dc_29,sv2v_dc_30,sv2v_dc_31;
  assign class_o[10] = 1'b0;
  assign class_o[11] = 1'b0;
  assign class_o[12] = 1'b0;
  assign class_o[13] = 1'b0;
  assign class_o[14] = 1'b0;
  assign class_o[15] = 1'b0;
  assign class_o[16] = 1'b0;
  assign class_o[17] = 1'b0;
  assign class_o[18] = 1'b0;
  assign class_o[19] = 1'b0;
  assign class_o[20] = 1'b0;
  assign class_o[21] = 1'b0;
  assign class_o[22] = 1'b0;
  assign class_o[23] = 1'b0;
  assign class_o[24] = 1'b0;
  assign class_o[25] = 1'b0;
  assign class_o[26] = 1'b0;
  assign class_o[27] = 1'b0;
  assign class_o[28] = 1'b0;
  assign class_o[29] = 1'b0;
  assign class_o[30] = 1'b0;
  assign class_o[31] = 1'b0;

  bsg_fpu_preprocess_e_p8_m_p23
  prep
  (
    .a_i(a_i),
    .zero_o(zero),
    .nan_o(nan),
    .sig_nan_o(class_o[8]),
    .infty_o(infty),
    .denormal_o(denormal),
    .sign_o(sign),
    .exp_o({ sv2v_dc_1, sv2v_dc_2, sv2v_dc_3, sv2v_dc_4, sv2v_dc_5, sv2v_dc_6, sv2v_dc_7, sv2v_dc_8 }),
    .man_o({ sv2v_dc_9, sv2v_dc_10, sv2v_dc_11, sv2v_dc_12, sv2v_dc_13, sv2v_dc_14, sv2v_dc_15, sv2v_dc_16, sv2v_dc_17, sv2v_dc_18, sv2v_dc_19, sv2v_dc_20, sv2v_dc_21, sv2v_dc_22, sv2v_dc_23, sv2v_dc_24, sv2v_dc_25, sv2v_dc_26, sv2v_dc_27, sv2v_dc_28, sv2v_dc_29, sv2v_dc_30, sv2v_dc_31 })
  );

  assign class_o[0] = sign & infty;
  assign class_o[1] = N5 & N6;
  assign N5 = N3 & N4;
  assign N3 = N1 & N2;
  assign N1 = sign & N0;
  assign N0 = ~infty;
  assign N2 = ~denormal;
  assign N4 = ~nan;
  assign N6 = ~zero;
  assign class_o[2] = sign & denormal;
  assign class_o[3] = sign & zero;
  assign class_o[4] = N7 & zero;
  assign N7 = ~sign;
  assign class_o[5] = N7 & denormal;
  assign class_o[6] = N10 & N6;
  assign N10 = N9 & N4;
  assign N9 = N8 & N2;
  assign N8 = N7 & N0;
  assign class_o[7] = N7 & infty;
  assign class_o[9] = nan & N11;
  assign N11 = ~class_o[8];

endmodule

