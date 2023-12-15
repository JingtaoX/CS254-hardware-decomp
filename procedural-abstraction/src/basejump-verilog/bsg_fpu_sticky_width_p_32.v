

module top
(
  i,
  shamt_i,
  sticky_o,
  shamt_i1, // added for decompiling
  sticky_o1 // added for decompiling
);

  input [31:0] i;
  input [5:0] shamt_i;
  output sticky_o;
  input [5:0] shamt_i1; // added for decompiling
  output sticky_o1; // added for decompiling

  bsg_fpu_sticky
  wrapper
  (
    .i(i),
    .shamt_i(shamt_i),
    .sticky_o(sticky_o)
  );

  bsg_fpu_sticky
  wrapper1
  (
    .i(i),
    .shamt_i(shamt_i1), // added for decompiling
    .sticky_o(sticky_o1) // added for decompiling
  );


endmodule



module bsg_scan_width_p32_or_p1_lo_to_hi_p1
(
  i,
  o
);

  input [31:0] i;
  output [31:0] o;
  wire [31:0] o;
  wire t_4__31_,t_4__30_,t_4__29_,t_4__28_,t_4__27_,t_4__26_,t_4__25_,t_4__24_,
  t_4__23_,t_4__22_,t_4__21_,t_4__20_,t_4__19_,t_4__18_,t_4__17_,t_4__16_,t_4__15_,
  t_4__14_,t_4__13_,t_4__12_,t_4__11_,t_4__10_,t_4__9_,t_4__8_,t_4__7_,t_4__6_,t_4__5_,
  t_4__4_,t_4__3_,t_4__2_,t_4__1_,t_4__0_,t_3__31_,t_3__30_,t_3__29_,t_3__28_,
  t_3__27_,t_3__26_,t_3__25_,t_3__24_,t_3__23_,t_3__22_,t_3__21_,t_3__20_,t_3__19_,
  t_3__18_,t_3__17_,t_3__16_,t_3__15_,t_3__14_,t_3__13_,t_3__12_,t_3__11_,t_3__10_,
  t_3__9_,t_3__8_,t_3__7_,t_3__6_,t_3__5_,t_3__4_,t_3__3_,t_3__2_,t_3__1_,t_3__0_,
  t_2__31_,t_2__30_,t_2__29_,t_2__28_,t_2__27_,t_2__26_,t_2__25_,t_2__24_,t_2__23_,
  t_2__22_,t_2__21_,t_2__20_,t_2__19_,t_2__18_,t_2__17_,t_2__16_,t_2__15_,t_2__14_,
  t_2__13_,t_2__12_,t_2__11_,t_2__10_,t_2__9_,t_2__8_,t_2__7_,t_2__6_,t_2__5_,
  t_2__4_,t_2__3_,t_2__2_,t_2__1_,t_2__0_,t_1__31_,t_1__30_,t_1__29_,t_1__28_,t_1__27_,
  t_1__26_,t_1__25_,t_1__24_,t_1__23_,t_1__22_,t_1__21_,t_1__20_,t_1__19_,t_1__18_,
  t_1__17_,t_1__16_,t_1__15_,t_1__14_,t_1__13_,t_1__12_,t_1__11_,t_1__10_,t_1__9_,
  t_1__8_,t_1__7_,t_1__6_,t_1__5_,t_1__4_,t_1__3_,t_1__2_,t_1__1_,t_1__0_;
  assign t_1__31_ = i[0] | 1'b0;
  assign t_1__30_ = i[1] | i[0];
  assign t_1__29_ = i[2] | i[1];
  assign t_1__28_ = i[3] | i[2];
  assign t_1__27_ = i[4] | i[3];
  assign t_1__26_ = i[5] | i[4];
  assign t_1__25_ = i[6] | i[5];
  assign t_1__24_ = i[7] | i[6];
  assign t_1__23_ = i[8] | i[7];
  assign t_1__22_ = i[9] | i[8];
  assign t_1__21_ = i[10] | i[9];
  assign t_1__20_ = i[11] | i[10];
  assign t_1__19_ = i[12] | i[11];
  assign t_1__18_ = i[13] | i[12];
  assign t_1__17_ = i[14] | i[13];
  assign t_1__16_ = i[15] | i[14];
  assign t_1__15_ = i[16] | i[15];
  assign t_1__14_ = i[17] | i[16];
  assign t_1__13_ = i[18] | i[17];
  assign t_1__12_ = i[19] | i[18];
  assign t_1__11_ = i[20] | i[19];
  assign t_1__10_ = i[21] | i[20];
  assign t_1__9_ = i[22] | i[21];
  assign t_1__8_ = i[23] | i[22];
  assign t_1__7_ = i[24] | i[23];
  assign t_1__6_ = i[25] | i[24];
  assign t_1__5_ = i[26] | i[25];
  assign t_1__4_ = i[27] | i[26];
  assign t_1__3_ = i[28] | i[27];
  assign t_1__2_ = i[29] | i[28];
  assign t_1__1_ = i[30] | i[29];
  assign t_1__0_ = i[31] | i[30];
  assign t_2__31_ = t_1__31_ | 1'b0;
  assign t_2__30_ = t_1__30_ | 1'b0;
  assign t_2__29_ = t_1__29_ | t_1__31_;
  assign t_2__28_ = t_1__28_ | t_1__30_;
  assign t_2__27_ = t_1__27_ | t_1__29_;
  assign t_2__26_ = t_1__26_ | t_1__28_;
  assign t_2__25_ = t_1__25_ | t_1__27_;
  assign t_2__24_ = t_1__24_ | t_1__26_;
  assign t_2__23_ = t_1__23_ | t_1__25_;
  assign t_2__22_ = t_1__22_ | t_1__24_;
  assign t_2__21_ = t_1__21_ | t_1__23_;
  assign t_2__20_ = t_1__20_ | t_1__22_;
  assign t_2__19_ = t_1__19_ | t_1__21_;
  assign t_2__18_ = t_1__18_ | t_1__20_;
  assign t_2__17_ = t_1__17_ | t_1__19_;
  assign t_2__16_ = t_1__16_ | t_1__18_;
  assign t_2__15_ = t_1__15_ | t_1__17_;
  assign t_2__14_ = t_1__14_ | t_1__16_;
  assign t_2__13_ = t_1__13_ | t_1__15_;
  assign t_2__12_ = t_1__12_ | t_1__14_;
  assign t_2__11_ = t_1__11_ | t_1__13_;
  assign t_2__10_ = t_1__10_ | t_1__12_;
  assign t_2__9_ = t_1__9_ | t_1__11_;
  assign t_2__8_ = t_1__8_ | t_1__10_;
  assign t_2__7_ = t_1__7_ | t_1__9_;
  assign t_2__6_ = t_1__6_ | t_1__8_;
  assign t_2__5_ = t_1__5_ | t_1__7_;
  assign t_2__4_ = t_1__4_ | t_1__6_;
  assign t_2__3_ = t_1__3_ | t_1__5_;
  assign t_2__2_ = t_1__2_ | t_1__4_;
  assign t_2__1_ = t_1__1_ | t_1__3_;
  assign t_2__0_ = t_1__0_ | t_1__2_;
  assign t_3__31_ = t_2__31_ | 1'b0;
  assign t_3__30_ = t_2__30_ | 1'b0;
  assign t_3__29_ = t_2__29_ | 1'b0;
  assign t_3__28_ = t_2__28_ | 1'b0;
  assign t_3__27_ = t_2__27_ | t_2__31_;
  assign t_3__26_ = t_2__26_ | t_2__30_;
  assign t_3__25_ = t_2__25_ | t_2__29_;
  assign t_3__24_ = t_2__24_ | t_2__28_;
  assign t_3__23_ = t_2__23_ | t_2__27_;
  assign t_3__22_ = t_2__22_ | t_2__26_;
  assign t_3__21_ = t_2__21_ | t_2__25_;
  assign t_3__20_ = t_2__20_ | t_2__24_;
  assign t_3__19_ = t_2__19_ | t_2__23_;
  assign t_3__18_ = t_2__18_ | t_2__22_;
  assign t_3__17_ = t_2__17_ | t_2__21_;
  assign t_3__16_ = t_2__16_ | t_2__20_;
  assign t_3__15_ = t_2__15_ | t_2__19_;
  assign t_3__14_ = t_2__14_ | t_2__18_;
  assign t_3__13_ = t_2__13_ | t_2__17_;
  assign t_3__12_ = t_2__12_ | t_2__16_;
  assign t_3__11_ = t_2__11_ | t_2__15_;
  assign t_3__10_ = t_2__10_ | t_2__14_;
  assign t_3__9_ = t_2__9_ | t_2__13_;
  assign t_3__8_ = t_2__8_ | t_2__12_;
  assign t_3__7_ = t_2__7_ | t_2__11_;
  assign t_3__6_ = t_2__6_ | t_2__10_;
  assign t_3__5_ = t_2__5_ | t_2__9_;
  assign t_3__4_ = t_2__4_ | t_2__8_;
  assign t_3__3_ = t_2__3_ | t_2__7_;
  assign t_3__2_ = t_2__2_ | t_2__6_;
  assign t_3__1_ = t_2__1_ | t_2__5_;
  assign t_3__0_ = t_2__0_ | t_2__4_;
  assign t_4__31_ = t_3__31_ | 1'b0;
  assign t_4__30_ = t_3__30_ | 1'b0;
  assign t_4__29_ = t_3__29_ | 1'b0;
  assign t_4__28_ = t_3__28_ | 1'b0;
  assign t_4__27_ = t_3__27_ | 1'b0;
  assign t_4__26_ = t_3__26_ | 1'b0;
  assign t_4__25_ = t_3__25_ | 1'b0;
  assign t_4__24_ = t_3__24_ | 1'b0;
  assign t_4__23_ = t_3__23_ | t_3__31_;
  assign t_4__22_ = t_3__22_ | t_3__30_;
  assign t_4__21_ = t_3__21_ | t_3__29_;
  assign t_4__20_ = t_3__20_ | t_3__28_;
  assign t_4__19_ = t_3__19_ | t_3__27_;
  assign t_4__18_ = t_3__18_ | t_3__26_;
  assign t_4__17_ = t_3__17_ | t_3__25_;
  assign t_4__16_ = t_3__16_ | t_3__24_;
  assign t_4__15_ = t_3__15_ | t_3__23_;
  assign t_4__14_ = t_3__14_ | t_3__22_;
  assign t_4__13_ = t_3__13_ | t_3__21_;
  assign t_4__12_ = t_3__12_ | t_3__20_;
  assign t_4__11_ = t_3__11_ | t_3__19_;
  assign t_4__10_ = t_3__10_ | t_3__18_;
  assign t_4__9_ = t_3__9_ | t_3__17_;
  assign t_4__8_ = t_3__8_ | t_3__16_;
  assign t_4__7_ = t_3__7_ | t_3__15_;
  assign t_4__6_ = t_3__6_ | t_3__14_;
  assign t_4__5_ = t_3__5_ | t_3__13_;
  assign t_4__4_ = t_3__4_ | t_3__12_;
  assign t_4__3_ = t_3__3_ | t_3__11_;
  assign t_4__2_ = t_3__2_ | t_3__10_;
  assign t_4__1_ = t_3__1_ | t_3__9_;
  assign t_4__0_ = t_3__0_ | t_3__8_;
  assign o[0] = t_4__31_ | 1'b0;
  assign o[1] = t_4__30_ | 1'b0;
  assign o[2] = t_4__29_ | 1'b0;
  assign o[3] = t_4__28_ | 1'b0;
  assign o[4] = t_4__27_ | 1'b0;
  assign o[5] = t_4__26_ | 1'b0;
  assign o[6] = t_4__25_ | 1'b0;
  assign o[7] = t_4__24_ | 1'b0;
  assign o[8] = t_4__23_ | 1'b0;
  assign o[9] = t_4__22_ | 1'b0;
  assign o[10] = t_4__21_ | 1'b0;
  assign o[11] = t_4__20_ | 1'b0;
  assign o[12] = t_4__19_ | 1'b0;
  assign o[13] = t_4__18_ | 1'b0;
  assign o[14] = t_4__17_ | 1'b0;
  assign o[15] = t_4__16_ | 1'b0;
  assign o[16] = t_4__15_ | t_4__31_;
  assign o[17] = t_4__14_ | t_4__30_;
  assign o[18] = t_4__13_ | t_4__29_;
  assign o[19] = t_4__12_ | t_4__28_;
  assign o[20] = t_4__11_ | t_4__27_;
  assign o[21] = t_4__10_ | t_4__26_;
  assign o[22] = t_4__9_ | t_4__25_;
  assign o[23] = t_4__8_ | t_4__24_;
  assign o[24] = t_4__7_ | t_4__23_;
  assign o[25] = t_4__6_ | t_4__22_;
  assign o[26] = t_4__5_ | t_4__21_;
  assign o[27] = t_4__4_ | t_4__20_;
  assign o[28] = t_4__3_ | t_4__19_;
  assign o[29] = t_4__2_ | t_4__18_;
  assign o[30] = t_4__1_ | t_4__17_;
  assign o[31] = t_4__0_ | t_4__16_;

endmodule



module bsg_fpu_sticky
(
  i,
  shamt_i,
  sticky_o
);

  input [31:0] i;
  input [5:0] shamt_i;
  output sticky_o;
  wire sticky_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,
  N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,
  N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,
  N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,
  N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,
  N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,
  N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,
  N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,
  N148,N149,N150,N151,N152,N153;
  wire [31:0] scan_out;

  bsg_scan_width_p32_or_p1_lo_to_hi_p1
  scan0
  (
    .i(i),
    .o(scan_out)
  );

  assign N119 = shamt_i > { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0 };
  assign N0 = N4 & N5;
  assign N1 = N0 & N6;
  assign N2 = N1 & N7;
  assign N3 = N2 & N8;
  assign N121 = N3 & N9;
  assign N4 = ~shamt_i[5];
  assign N5 = ~shamt_i[4];
  assign N6 = ~shamt_i[3];
  assign N7 = ~shamt_i[2];
  assign N8 = ~shamt_i[0];
  assign N9 = ~shamt_i[1];
  assign N122 = N10 & N11 & (N12 & shamt_i[0]) & N13;
  assign N10 = ~shamt_i[4];
  assign N11 = ~shamt_i[3];
  assign N12 = ~shamt_i[2];
  assign N13 = ~shamt_i[1];
  assign N123 = N14 & N15 & (N16 & N17) & shamt_i[1];
  assign N14 = ~shamt_i[4];
  assign N15 = ~shamt_i[3];
  assign N16 = ~shamt_i[2];
  assign N17 = ~shamt_i[0];
  assign N124 = N18 & N19 & (N20 & shamt_i[0]) & shamt_i[1];
  assign N18 = ~shamt_i[4];
  assign N19 = ~shamt_i[3];
  assign N20 = ~shamt_i[2];
  assign N125 = N21 & N22 & (shamt_i[2] & N23) & N24;
  assign N21 = ~shamt_i[4];
  assign N22 = ~shamt_i[3];
  assign N23 = ~shamt_i[0];
  assign N24 = ~shamt_i[1];
  assign N126 = N25 & N26 & (shamt_i[2] & shamt_i[0]) & N27;
  assign N25 = ~shamt_i[4];
  assign N26 = ~shamt_i[3];
  assign N27 = ~shamt_i[1];
  assign N127 = N28 & N29 & (shamt_i[2] & N30) & shamt_i[1];
  assign N28 = ~shamt_i[4];
  assign N29 = ~shamt_i[3];
  assign N30 = ~shamt_i[0];
  assign N128 = N31 & N32 & (shamt_i[2] & shamt_i[0]) & shamt_i[1];
  assign N31 = ~shamt_i[4];
  assign N32 = ~shamt_i[3];
  assign N129 = N33 & shamt_i[3] & (N34 & N35) & N36;
  assign N33 = ~shamt_i[4];
  assign N34 = ~shamt_i[2];
  assign N35 = ~shamt_i[0];
  assign N36 = ~shamt_i[1];
  assign N130 = N37 & shamt_i[3] & (N38 & shamt_i[0]) & N39;
  assign N37 = ~shamt_i[4];
  assign N38 = ~shamt_i[2];
  assign N39 = ~shamt_i[1];
  assign N131 = N40 & shamt_i[3] & (N41 & N42) & shamt_i[1];
  assign N40 = ~shamt_i[4];
  assign N41 = ~shamt_i[2];
  assign N42 = ~shamt_i[0];
  assign N132 = N43 & shamt_i[3] & (N44 & shamt_i[0]) & shamt_i[1];
  assign N43 = ~shamt_i[4];
  assign N44 = ~shamt_i[2];
  assign N133 = N45 & shamt_i[3] & (shamt_i[2] & N46) & N47;
  assign N45 = ~shamt_i[4];
  assign N46 = ~shamt_i[0];
  assign N47 = ~shamt_i[1];
  assign N134 = N48 & shamt_i[3] & (shamt_i[2] & shamt_i[0]) & N49;
  assign N48 = ~shamt_i[4];
  assign N49 = ~shamt_i[1];
  assign N135 = N50 & shamt_i[3] & (shamt_i[2] & N51) & shamt_i[1];
  assign N50 = ~shamt_i[4];
  assign N51 = ~shamt_i[0];
  assign N136 = N52 & shamt_i[3] & (shamt_i[2] & shamt_i[0]) & shamt_i[1];
  assign N52 = ~shamt_i[4];
  assign N137 = shamt_i[4] & N53 & (N54 & N55) & N56;
  assign N53 = ~shamt_i[3];
  assign N54 = ~shamt_i[2];
  assign N55 = ~shamt_i[0];
  assign N56 = ~shamt_i[1];
  assign N138 = shamt_i[4] & N57 & (N58 & shamt_i[0]) & N59;
  assign N57 = ~shamt_i[3];
  assign N58 = ~shamt_i[2];
  assign N59 = ~shamt_i[1];
  assign N139 = shamt_i[4] & N60 & (N61 & N62) & shamt_i[1];
  assign N60 = ~shamt_i[3];
  assign N61 = ~shamt_i[2];
  assign N62 = ~shamt_i[0];
  assign N140 = shamt_i[4] & N63 & (N64 & shamt_i[0]) & shamt_i[1];
  assign N63 = ~shamt_i[3];
  assign N64 = ~shamt_i[2];
  assign N141 = shamt_i[4] & N65 & (shamt_i[2] & N66) & N67;
  assign N65 = ~shamt_i[3];
  assign N66 = ~shamt_i[0];
  assign N67 = ~shamt_i[1];
  assign N142 = shamt_i[4] & N68 & (shamt_i[2] & shamt_i[0]) & N69;
  assign N68 = ~shamt_i[3];
  assign N69 = ~shamt_i[1];
  assign N143 = shamt_i[4] & N70 & (shamt_i[2] & N71) & shamt_i[1];
  assign N70 = ~shamt_i[3];
  assign N71 = ~shamt_i[0];
  assign N144 = shamt_i[4] & N72 & (shamt_i[2] & shamt_i[0]) & shamt_i[1];
  assign N72 = ~shamt_i[3];
  assign N145 = shamt_i[4] & shamt_i[3] & (N73 & N74) & N75;
  assign N73 = ~shamt_i[2];
  assign N74 = ~shamt_i[0];
  assign N75 = ~shamt_i[1];
  assign N146 = shamt_i[4] & shamt_i[3] & (N76 & shamt_i[0]) & N77;
  assign N76 = ~shamt_i[2];
  assign N77 = ~shamt_i[1];
  assign N147 = shamt_i[4] & shamt_i[3] & (N78 & N79) & shamt_i[1];
  assign N78 = ~shamt_i[2];
  assign N79 = ~shamt_i[0];
  assign N148 = shamt_i[4] & shamt_i[3] & (N80 & shamt_i[0]) & shamt_i[1];
  assign N80 = ~shamt_i[2];
  assign N149 = shamt_i[4] & shamt_i[3] & (shamt_i[2] & N81) & N82;
  assign N81 = ~shamt_i[0];
  assign N82 = ~shamt_i[1];
  assign N150 = shamt_i[4] & shamt_i[3] & (shamt_i[2] & shamt_i[0]) & N83;
  assign N83 = ~shamt_i[1];
  assign N151 = shamt_i[4] & shamt_i[3] & (shamt_i[2] & N84) & shamt_i[1];
  assign N84 = ~shamt_i[0];
  assign N152 = shamt_i[4] & shamt_i[3] & (shamt_i[2] & shamt_i[0]) & shamt_i[1];
  assign sticky_o = (N85)? scan_out[31] : 
                    (N120)? N153 : 1'b0;
  assign N85 = N119;
  assign N153 = (N86)? 1'b0 : 
                (N87)? scan_out[0] : 
                (N88)? scan_out[1] : 
                (N89)? scan_out[2] : 
                (N90)? scan_out[3] : 
                (N91)? scan_out[4] : 
                (N92)? scan_out[5] : 
                (N93)? scan_out[6] : 
                (N94)? scan_out[7] : 
                (N95)? scan_out[8] : 
                (N96)? scan_out[9] : 
                (N97)? scan_out[10] : 
                (N98)? scan_out[11] : 
                (N99)? scan_out[12] : 
                (N100)? scan_out[13] : 
                (N101)? scan_out[14] : 
                (N102)? scan_out[15] : 
                (N103)? scan_out[16] : 
                (N104)? scan_out[17] : 
                (N105)? scan_out[18] : 
                (N106)? scan_out[19] : 
                (N107)? scan_out[20] : 
                (N108)? scan_out[21] : 
                (N109)? scan_out[22] : 
                (N110)? scan_out[23] : 
                (N111)? scan_out[24] : 
                (N112)? scan_out[25] : 
                (N113)? scan_out[26] : 
                (N114)? scan_out[27] : 
                (N115)? scan_out[28] : 
                (N116)? scan_out[29] : 
                (N117)? scan_out[30] : 
                (N118)? scan_out[31] : 1'b0;
  assign N86 = N121;
  assign N87 = N122;
  assign N88 = N123;
  assign N89 = N124;
  assign N90 = N125;
  assign N91 = N126;
  assign N92 = N127;
  assign N93 = N128;
  assign N94 = N129;
  assign N95 = N130;
  assign N96 = N131;
  assign N97 = N132;
  assign N98 = N133;
  assign N99 = N134;
  assign N100 = N135;
  assign N101 = N136;
  assign N102 = N137;
  assign N103 = N138;
  assign N104 = N139;
  assign N105 = N140;
  assign N106 = N141;
  assign N107 = N142;
  assign N108 = N143;
  assign N109 = N144;
  assign N110 = N145;
  assign N111 = N146;
  assign N112 = N147;
  assign N113 = N148;
  assign N114 = N149;
  assign N115 = N150;
  assign N116 = N151;
  assign N117 = N152;
  assign N118 = shamt_i[5];
  assign N120 = ~N119;

endmodule

