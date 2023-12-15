

module top
(
  a_i,
  b_i,
  eq_o,
  lt_o,
  le_o,
  lt_le_invalid_o,
  eq_invalid_o,
  min_o,
  max_o,
  min_max_invalid_o,
  a_i1, // added for decompiling
  b_i1, // added for decompiling
  min_o1, // added for decompiling
  max_o1, // added for decompiling
  eq_o1, // added for decompiling
  lt_o1, // added for decompiling
  le_o1, // added for decompiling
  lt_le_invalid_o1, // added for decompiling
  eq_invalid_o1, // added for decompiling
  min_max_invalid_o1 // added for decompiling
);

  input [31:0] a_i;
  input [31:0] b_i;
  output [31:0] min_o;
  output [31:0] max_o;
  output eq_o;
  output lt_o;
  output le_o;
  output lt_le_invalid_o;
  output eq_invalid_o;
  output min_max_invalid_o;
  input [31:0] a_i1; // added for decompiling
  input [31:0] b_i1; // added for decompiling
  output [31:0] min_o1; // added for decompiling
  output [31:0] max_o1; // added for decompiling
  output eq_o1; // added for decompiling
  output lt_o1; // added for decompiling
  output le_o1; // added for decompiling
  output lt_le_invalid_o1; // added for decompiling
  output eq_invalid_o1; // added for decompiling
  output min_max_invalid_o1; // added for decompiling

  bsg_fpu_cmp
  wrapper
  (
    .a_i(a_i),
    .b_i(b_i),
    .min_o(min_o),
    .max_o(max_o),
    .eq_o(eq_o),
    .lt_o(lt_o),
    .le_o(le_o),
    .lt_le_invalid_o(lt_le_invalid_o),
    .eq_invalid_o(eq_invalid_o),
    .min_max_invalid_o(min_max_invalid_o)
  );

  bsg_fpu_cmp
  wrapper1
  (
    .a_i(a_i1), // added for decompiling
    .b_i(b_i1), // added for decompiling
    .min_o(min_o1), // added for decompiling
    .max_o(max_o1), // added for decompiling
    .eq_o(eq_o1), // added for decompiling
    .lt_o(lt_o1), // added for decompiling
    .le_o(le_o1), // added for decompiling
    .lt_le_invalid_o(lt_le_invalid_o1), // added for decompiling
    .eq_invalid_o(eq_invalid_o1), // added for decompiling
    .min_max_invalid_o(min_max_invalid_o1) // added for decompiling
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



module bsg_less_than_width_p31
(
  a_i,
  b_i,
  o
);

  input [30:0] a_i;
  input [30:0] b_i;
  output o;
  wire o;
  assign o = a_i < b_i;

endmodule



module bsg_fpu_cmp
(
  a_i,
  b_i,
  eq_o,
  lt_o,
  le_o,
  lt_le_invalid_o,
  eq_invalid_o,
  min_o,
  max_o,
  min_max_invalid_o
);

  input [31:0] a_i;
  input [31:0] b_i;
  output [31:0] min_o;
  output [31:0] max_o;
  output eq_o;
  output lt_o;
  output le_o;
  output lt_le_invalid_o;
  output eq_invalid_o;
  output min_max_invalid_o;
  wire [31:0] min_o,max_o;
  wire eq_o,lt_o,le_o,lt_le_invalid_o,eq_invalid_o,min_max_invalid_o,N0,N1,N2,N3,N4,N5,
  N6,N7,N8,a_zero,a_nan,a_sig_nan,a_infty,a_sign,b_zero,b_nan,b_sig_nan,b_infty,
  b_sign,mag_a_lt,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,
  N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,
  N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,
  N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,
  N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,
  N104,N105,N106,N107,N108,N109,N110,N111,sv2v_dc_1,sv2v_dc_2,sv2v_dc_3,sv2v_dc_4,
  sv2v_dc_5,sv2v_dc_6,sv2v_dc_7,sv2v_dc_8,sv2v_dc_9,sv2v_dc_10,sv2v_dc_11,sv2v_dc_12,
  sv2v_dc_13,sv2v_dc_14,sv2v_dc_15,sv2v_dc_16,sv2v_dc_17,sv2v_dc_18,sv2v_dc_19,
  sv2v_dc_20,sv2v_dc_21,sv2v_dc_22,sv2v_dc_23,sv2v_dc_24,sv2v_dc_25,sv2v_dc_26,
  sv2v_dc_27,sv2v_dc_28,sv2v_dc_29,sv2v_dc_30,sv2v_dc_31,sv2v_dc_32,sv2v_dc_33,
  sv2v_dc_34,sv2v_dc_35,sv2v_dc_36,sv2v_dc_37,sv2v_dc_38,sv2v_dc_39,sv2v_dc_40,sv2v_dc_41,
  sv2v_dc_42,sv2v_dc_43,sv2v_dc_44,sv2v_dc_45,sv2v_dc_46,sv2v_dc_47,sv2v_dc_48,
  sv2v_dc_49,sv2v_dc_50,sv2v_dc_51,sv2v_dc_52,sv2v_dc_53,sv2v_dc_54,sv2v_dc_55,
  sv2v_dc_56,sv2v_dc_57,sv2v_dc_58,sv2v_dc_59,sv2v_dc_60,sv2v_dc_61,sv2v_dc_62;

  bsg_fpu_preprocess_e_p8_m_p23
  a_preprocess
  (
    .a_i(a_i),
    .zero_o(a_zero),
    .nan_o(a_nan),
    .sig_nan_o(a_sig_nan),
    .infty_o(a_infty),
    .sign_o(a_sign),
    .exp_o({ sv2v_dc_1, sv2v_dc_2, sv2v_dc_3, sv2v_dc_4, sv2v_dc_5, sv2v_dc_6, sv2v_dc_7, sv2v_dc_8 }),
    .man_o({ sv2v_dc_9, sv2v_dc_10, sv2v_dc_11, sv2v_dc_12, sv2v_dc_13, sv2v_dc_14, sv2v_dc_15, sv2v_dc_16, sv2v_dc_17, sv2v_dc_18, sv2v_dc_19, sv2v_dc_20, sv2v_dc_21, sv2v_dc_22, sv2v_dc_23, sv2v_dc_24, sv2v_dc_25, sv2v_dc_26, sv2v_dc_27, sv2v_dc_28, sv2v_dc_29, sv2v_dc_30, sv2v_dc_31 })
  );


  bsg_fpu_preprocess_e_p8_m_p23
  b_preprocess
  (
    .a_i(b_i),
    .zero_o(b_zero),
    .nan_o(b_nan),
    .sig_nan_o(b_sig_nan),
    .infty_o(b_infty),
    .sign_o(b_sign),
    .exp_o({ sv2v_dc_32, sv2v_dc_33, sv2v_dc_34, sv2v_dc_35, sv2v_dc_36, sv2v_dc_37, sv2v_dc_38, sv2v_dc_39 }),
    .man_o({ sv2v_dc_40, sv2v_dc_41, sv2v_dc_42, sv2v_dc_43, sv2v_dc_44, sv2v_dc_45, sv2v_dc_46, sv2v_dc_47, sv2v_dc_48, sv2v_dc_49, sv2v_dc_50, sv2v_dc_51, sv2v_dc_52, sv2v_dc_53, sv2v_dc_54, sv2v_dc_55, sv2v_dc_56, sv2v_dc_57, sv2v_dc_58, sv2v_dc_59, sv2v_dc_60, sv2v_dc_61, sv2v_dc_62 })
  );


  bsg_less_than_width_p31
  lt_mag
  (
    .a_i(a_i[30:0]),
    .b_i(b_i[30:0]),
    .o(mag_a_lt)
  );

  assign N14 = a_i == b_i;
  assign N17 = N15 & N16;
  assign N18 = a_sign | N16;
  assign N20 = N15 | b_sign;
  assign N22 = a_sign & b_sign;
  assign N26 = (N0)? mag_a_lt : 
               (N1)? 1'b0 : 
               (N2)? 1'b1 : 
               (N3)? N24 : 1'b0;
  assign N0 = N17;
  assign N1 = N19;
  assign N2 = N21;
  assign N3 = N22;
  assign N27 = (N0)? N23 : 
               (N1)? 1'b0 : 
               (N2)? 1'b1 : 
               (N3)? N25 : 1'b0;
  assign eq_o = (N4)? 1'b0 : 
                (N29)? 1'b1 : 
                (N12)? N14 : 1'b0;
  assign N4 = N9;
  assign lt_o = (N4)? 1'b0 : 
                (N29)? 1'b0 : 
                (N12)? N26 : 1'b0;
  assign le_o = (N4)? 1'b0 : 
                (N29)? 1'b1 : 
                (N12)? N27 : 1'b0;
  assign lt_le_invalid_o = (N4)? 1'b1 : 
                           (N29)? 1'b0 : 
                           (N12)? 1'b0 : 1'b0;
  assign eq_invalid_o = (N4)? N13 : 
                        (N29)? 1'b0 : 
                        (N12)? 1'b0 : 1'b0;
  assign { N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42 } = (N5)? { N40, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                              (N107)? a_i : 
                                                                                                                                                                              (N39)? b_i : 1'b0;
  assign N5 = N37;
  assign { N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74 } = (N5)? { N41, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                                                                                                                                                                                    (N107)? b_i : 
                                                                                                                                                                                    (N39)? a_i : 1'b0;
  assign min_o = (N6)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                 (N7)? b_i : 
                 (N8)? a_i : 
                 (N35)? { N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42 } : 1'b0;
  assign N6 = N30;
  assign N7 = N31;
  assign N8 = N32;
  assign max_o = (N6)? { 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
                 (N7)? b_i : 
                 (N8)? a_i : 
                 (N35)? { N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74 } : 1'b0;
  assign min_max_invalid_o = (N6)? N36 : 
                             (N7)? a_sig_nan : 
                             (N8)? b_sig_nan : 
                             (N35)? 1'b0 : 1'b0;
  assign N9 = a_nan | b_nan;
  assign N10 = a_zero & b_zero;
  assign N11 = N10 | N9;
  assign N12 = ~N11;
  assign N13 = a_sig_nan | b_sig_nan;
  assign N15 = ~a_sign;
  assign N16 = ~b_sign;
  assign N19 = ~N18;
  assign N21 = ~N20;
  assign N23 = mag_a_lt | N14;
  assign N24 = N108 & N109;
  assign N108 = ~mag_a_lt;
  assign N109 = ~N14;
  assign N25 = N108 | N14;
  assign N28 = ~N9;
  assign N29 = N10 & N28;
  assign N30 = a_nan & b_nan;
  assign N31 = a_nan & N110;
  assign N110 = ~b_nan;
  assign N32 = N111 & b_nan;
  assign N111 = ~a_nan;
  assign N33 = N31 | N30;
  assign N34 = N32 | N33;
  assign N35 = ~N34;
  assign N36 = a_sig_nan | b_sig_nan;
  assign N37 = a_zero & b_zero;
  assign N38 = lt_o | N37;
  assign N39 = ~N38;
  assign N40 = a_sign | b_sign;
  assign N41 = a_sign & b_sign;
  assign N106 = ~N37;
  assign N107 = lt_o & N106;

endmodule

