

module top
(
  a_i,
  signed_i,
  z_o,
  invalid_o,
  signed_i1, // added for decompiling
  z_o1, // added for decompiling
  invalid_o1 // added for decompiling
);

  input [31:0] a_i;
  output [31:0] z_o;
  input signed_i;
  output invalid_o;
  input signed_i1; // added for decompiling
  output [31:0] z_o1; // added for decompiling
  output invalid_o1; // added for decompiling


  bsg_fpu_f2i
  wrapper
  (
    .a_i(a_i),
    .z_o(z_o),
    .signed_i(signed_i),
    .invalid_o(invalid_o)
  );

  bsg_fpu_f2i
  wrapper1
  (
    .a_i(a_i),
    .z_o(z_o1), // added for decom piling
    .signed_i(signed_i1), // added for decompiling
    .invalid_o(invalid_o1) // added for decompiling
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



module bsg_fpu_f2i
(
  a_i,
  signed_i,
  z_o,
  invalid_o
);

  input [31:0] a_i;
  output [31:0] z_o;
  input signed_i;
  output invalid_o;
  wire [31:0] z_o,shifted,inverted,post_round;
  wire invalid_o,N0,N1,N2,N3,N4,zero,nan,infty,sign,N5,exp_too_big,N6,exp_too_small,N7,
  N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,
  N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,
  N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,
  N68,N69,N70,N71,N72,N73,N74;
  wire [7:0] exp;
  wire [22:0] mantissa;
  wire [31:7] preshift;
  wire [5:0] shamt;

  bsg_fpu_preprocess_e_p8_m_p23
  preprocess
  (
    .a_i(a_i),
    .zero_o(zero),
    .nan_o(nan),
    .infty_o(infty),
    .sign_o(sign),
    .exp_o(exp),
    .man_o(mantissa)
  );

  assign N5 = exp > { 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1 };
  assign N6 = exp > { 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0 };
  assign exp_too_small = exp < { 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 };
  assign shifted = { preshift, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } >> shamt;
  assign { N12, N11, N10, N9, N8, N7 } = { 1'b1, 1'b1, 1'b1, 1'b0, 1'b1 } - exp[5:0];
  assign { N18, N17, N16, N15, N14, N13 } = { 1'b1, 1'b1, 1'b1, 1'b1, 1'b0 } - exp[5:0];
  assign post_round = inverted + sign;
  assign exp_too_big = (N0)? N5 : 
                       (N1)? N6 : 1'b0;
  assign N0 = signed_i;
  assign N1 = preshift[31];
  assign preshift[30:7] = (N0)? { 1'b1, mantissa } : 
                          (N1)? { mantissa, 1'b0 } : 1'b0;
  assign shamt = (N0)? { N12, N11, N10, N9, N8, N7 } : 
                 (N1)? { N18, N17, N16, N15, N14, N13 } : 1'b0;
  assign N27 = (N2)? signed_i : 
               (N3)? N74 : 1'b0;
  assign N2 = sign;
  assign N3 = N26;
  assign z_o = (N4)? { preshift[31:31], 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1 } : 
               (N29)? { N27, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26 } : 
               (N32)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N35)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N38)? { sign, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26, N26 } : 
               (N41)? { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 } : 
               (N25)? post_round : 1'b0;
  assign N4 = nan;
  assign invalid_o = (N4)? 1'b1 : 
                     (N29)? 1'b1 : 
                     (N32)? 1'b1 : 
                     (N35)? 1'b0 : 
                     (N38)? 1'b1 : 
                     (N41)? 1'b0 : 
                     (N25)? 1'b0 : 1'b0;
  assign inverted[31] = N42 ^ shifted[31];
  assign N42 = signed_i & sign;
  assign inverted[30] = N43 ^ shifted[30];
  assign N43 = signed_i & sign;
  assign inverted[29] = N44 ^ shifted[29];
  assign N44 = signed_i & sign;
  assign inverted[28] = N45 ^ shifted[28];
  assign N45 = signed_i & sign;
  assign inverted[27] = N46 ^ shifted[27];
  assign N46 = signed_i & sign;
  assign inverted[26] = N47 ^ shifted[26];
  assign N47 = signed_i & sign;
  assign inverted[25] = N48 ^ shifted[25];
  assign N48 = signed_i & sign;
  assign inverted[24] = N49 ^ shifted[24];
  assign N49 = signed_i & sign;
  assign inverted[23] = N50 ^ shifted[23];
  assign N50 = signed_i & sign;
  assign inverted[22] = N51 ^ shifted[22];
  assign N51 = signed_i & sign;
  assign inverted[21] = N52 ^ shifted[21];
  assign N52 = signed_i & sign;
  assign inverted[20] = N53 ^ shifted[20];
  assign N53 = signed_i & sign;
  assign inverted[19] = N54 ^ shifted[19];
  assign N54 = signed_i & sign;
  assign inverted[18] = N55 ^ shifted[18];
  assign N55 = signed_i & sign;
  assign inverted[17] = N56 ^ shifted[17];
  assign N56 = signed_i & sign;
  assign inverted[16] = N57 ^ shifted[16];
  assign N57 = signed_i & sign;
  assign inverted[15] = N58 ^ shifted[15];
  assign N58 = signed_i & sign;
  assign inverted[14] = N59 ^ shifted[14];
  assign N59 = signed_i & sign;
  assign inverted[13] = N60 ^ shifted[13];
  assign N60 = signed_i & sign;
  assign inverted[12] = N61 ^ shifted[12];
  assign N61 = signed_i & sign;
  assign inverted[11] = N62 ^ shifted[11];
  assign N62 = signed_i & sign;
  assign inverted[10] = N63 ^ shifted[10];
  assign N63 = signed_i & sign;
  assign inverted[9] = N64 ^ shifted[9];
  assign N64 = signed_i & sign;
  assign inverted[8] = N65 ^ shifted[8];
  assign N65 = signed_i & sign;
  assign inverted[7] = N66 ^ shifted[7];
  assign N66 = signed_i & sign;
  assign inverted[6] = N67 ^ shifted[6];
  assign N67 = signed_i & sign;
  assign inverted[5] = N68 ^ shifted[5];
  assign N68 = signed_i & sign;
  assign inverted[4] = N69 ^ shifted[4];
  assign N69 = signed_i & sign;
  assign inverted[3] = N70 ^ shifted[3];
  assign N70 = signed_i & sign;
  assign inverted[2] = N71 ^ shifted[2];
  assign N71 = signed_i & sign;
  assign inverted[1] = N72 ^ shifted[1];
  assign N72 = signed_i & sign;
  assign inverted[0] = N73 ^ shifted[0];
  assign N73 = signed_i & sign;
  assign N19 = N74 & sign;
  assign N74 = ~signed_i;
  assign N20 = infty | nan;
  assign N21 = N19 | N20;
  assign N22 = zero | N21;
  assign N23 = exp_too_big | N22;
  assign N24 = exp_too_small | N23;
  assign N25 = ~N24;
  assign preshift[31] = N74;
  assign N26 = ~sign;
  assign N28 = ~nan;
  assign N29 = infty & N28;
  assign N30 = ~infty;
  assign N31 = N28 & N30;
  assign N32 = N19 & N31;
  assign N33 = ~N19;
  assign N34 = N31 & N33;
  assign N35 = zero & N34;
  assign N36 = ~zero;
  assign N37 = N34 & N36;
  assign N38 = exp_too_big & N37;
  assign N39 = ~exp_too_big;
  assign N40 = N37 & N39;
  assign N41 = exp_too_small & N40;

endmodule

