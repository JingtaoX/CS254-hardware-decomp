

module top
(
  ready_i,
  reqs_i,
  grants_o
);

  input [31:0] reqs_i;
  output [31:0] grants_o;
  output [31:0] grants_o1; // added for decompling
  input ready_i;
  input ready_i1; // added for decompling

  bsg_arb_fixed
  wrapper
  (
    .reqs_i(reqs_i),
    .grants_o(grants_o),
    .ready_i(ready_i)
  );

  bsg_arb_fixed
  wrapper1
  (
    .reqs_i(reqs_i),
    .grants_o(grants_o1), // added for decompling
    .ready_i(ready_i1) // added for decompling
  );


endmodule



module bsg_scan_width_p32_or_p1_lo_to_hi_p0
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
  assign t_1__31_ = i[31] | 1'b0;
  assign t_1__30_ = i[30] | i[31];
  assign t_1__29_ = i[29] | i[30];
  assign t_1__28_ = i[28] | i[29];
  assign t_1__27_ = i[27] | i[28];
  assign t_1__26_ = i[26] | i[27];
  assign t_1__25_ = i[25] | i[26];
  assign t_1__24_ = i[24] | i[25];
  assign t_1__23_ = i[23] | i[24];
  assign t_1__22_ = i[22] | i[23];
  assign t_1__21_ = i[21] | i[22];
  assign t_1__20_ = i[20] | i[21];
  assign t_1__19_ = i[19] | i[20];
  assign t_1__18_ = i[18] | i[19];
  assign t_1__17_ = i[17] | i[18];
  assign t_1__16_ = i[16] | i[17];
  assign t_1__15_ = i[15] | i[16];
  assign t_1__14_ = i[14] | i[15];
  assign t_1__13_ = i[13] | i[14];
  assign t_1__12_ = i[12] | i[13];
  assign t_1__11_ = i[11] | i[12];
  assign t_1__10_ = i[10] | i[11];
  assign t_1__9_ = i[9] | i[10];
  assign t_1__8_ = i[8] | i[9];
  assign t_1__7_ = i[7] | i[8];
  assign t_1__6_ = i[6] | i[7];
  assign t_1__5_ = i[5] | i[6];
  assign t_1__4_ = i[4] | i[5];
  assign t_1__3_ = i[3] | i[4];
  assign t_1__2_ = i[2] | i[3];
  assign t_1__1_ = i[1] | i[2];
  assign t_1__0_ = i[0] | i[1];
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
  assign o[31] = t_4__31_ | 1'b0;
  assign o[30] = t_4__30_ | 1'b0;
  assign o[29] = t_4__29_ | 1'b0;
  assign o[28] = t_4__28_ | 1'b0;
  assign o[27] = t_4__27_ | 1'b0;
  assign o[26] = t_4__26_ | 1'b0;
  assign o[25] = t_4__25_ | 1'b0;
  assign o[24] = t_4__24_ | 1'b0;
  assign o[23] = t_4__23_ | 1'b0;
  assign o[22] = t_4__22_ | 1'b0;
  assign o[21] = t_4__21_ | 1'b0;
  assign o[20] = t_4__20_ | 1'b0;
  assign o[19] = t_4__19_ | 1'b0;
  assign o[18] = t_4__18_ | 1'b0;
  assign o[17] = t_4__17_ | 1'b0;
  assign o[16] = t_4__16_ | 1'b0;
  assign o[15] = t_4__15_ | t_4__31_;
  assign o[14] = t_4__14_ | t_4__30_;
  assign o[13] = t_4__13_ | t_4__29_;
  assign o[12] = t_4__12_ | t_4__28_;
  assign o[11] = t_4__11_ | t_4__27_;
  assign o[10] = t_4__10_ | t_4__26_;
  assign o[9] = t_4__9_ | t_4__25_;
  assign o[8] = t_4__8_ | t_4__24_;
  assign o[7] = t_4__7_ | t_4__23_;
  assign o[6] = t_4__6_ | t_4__22_;
  assign o[5] = t_4__5_ | t_4__21_;
  assign o[4] = t_4__4_ | t_4__20_;
  assign o[3] = t_4__3_ | t_4__19_;
  assign o[2] = t_4__2_ | t_4__18_;
  assign o[1] = t_4__1_ | t_4__17_;
  assign o[0] = t_4__0_ | t_4__16_;

endmodule



module bsg_priority_encode_one_hot_out_width_p32_lo_to_hi_p0
(
  i,
  o,
  v_o
);

  input [31:0] i;
  output [31:0] o;
  output v_o;
  wire [31:0] o;
  wire v_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,
  N21,N22,N23,N24,N25,N26,N27,N28,N29,N30;
  wire [30:1] scan_lo;

  bsg_scan_width_p32_or_p1_lo_to_hi_p0
  \nw1.scan 
  (
    .i(i),
    .o({ o[31:31], scan_lo, v_o })
  );

  assign o[30] = scan_lo[30] & N0;
  assign N0 = ~o[31];
  assign o[29] = scan_lo[29] & N1;
  assign N1 = ~scan_lo[30];
  assign o[28] = scan_lo[28] & N2;
  assign N2 = ~scan_lo[29];
  assign o[27] = scan_lo[27] & N3;
  assign N3 = ~scan_lo[28];
  assign o[26] = scan_lo[26] & N4;
  assign N4 = ~scan_lo[27];
  assign o[25] = scan_lo[25] & N5;
  assign N5 = ~scan_lo[26];
  assign o[24] = scan_lo[24] & N6;
  assign N6 = ~scan_lo[25];
  assign o[23] = scan_lo[23] & N7;
  assign N7 = ~scan_lo[24];
  assign o[22] = scan_lo[22] & N8;
  assign N8 = ~scan_lo[23];
  assign o[21] = scan_lo[21] & N9;
  assign N9 = ~scan_lo[22];
  assign o[20] = scan_lo[20] & N10;
  assign N10 = ~scan_lo[21];
  assign o[19] = scan_lo[19] & N11;
  assign N11 = ~scan_lo[20];
  assign o[18] = scan_lo[18] & N12;
  assign N12 = ~scan_lo[19];
  assign o[17] = scan_lo[17] & N13;
  assign N13 = ~scan_lo[18];
  assign o[16] = scan_lo[16] & N14;
  assign N14 = ~scan_lo[17];
  assign o[15] = scan_lo[15] & N15;
  assign N15 = ~scan_lo[16];
  assign o[14] = scan_lo[14] & N16;
  assign N16 = ~scan_lo[15];
  assign o[13] = scan_lo[13] & N17;
  assign N17 = ~scan_lo[14];
  assign o[12] = scan_lo[12] & N18;
  assign N18 = ~scan_lo[13];
  assign o[11] = scan_lo[11] & N19;
  assign N19 = ~scan_lo[12];
  assign o[10] = scan_lo[10] & N20;
  assign N20 = ~scan_lo[11];
  assign o[9] = scan_lo[9] & N21;
  assign N21 = ~scan_lo[10];
  assign o[8] = scan_lo[8] & N22;
  assign N22 = ~scan_lo[9];
  assign o[7] = scan_lo[7] & N23;
  assign N23 = ~scan_lo[8];
  assign o[6] = scan_lo[6] & N24;
  assign N24 = ~scan_lo[7];
  assign o[5] = scan_lo[5] & N25;
  assign N25 = ~scan_lo[6];
  assign o[4] = scan_lo[4] & N26;
  assign N26 = ~scan_lo[5];
  assign o[3] = scan_lo[3] & N27;
  assign N27 = ~scan_lo[4];
  assign o[2] = scan_lo[2] & N28;
  assign N28 = ~scan_lo[3];
  assign o[1] = scan_lo[1] & N29;
  assign N29 = ~scan_lo[2];
  assign o[0] = v_o & N30;
  assign N30 = ~scan_lo[1];

endmodule



module bsg_arb_fixed
(
  ready_i,
  reqs_i,
  grants_o
);

  input [31:0] reqs_i;
  output [31:0] grants_o;
  input ready_i;
  wire [31:0] grants_o,grants_unmasked_lo;

  bsg_priority_encode_one_hot_out_width_p32_lo_to_hi_p0
  enc
  (
    .i(reqs_i),
    .o(grants_unmasked_lo)
  );

  assign grants_o[31] = grants_unmasked_lo[31] & ready_i;
  assign grants_o[30] = grants_unmasked_lo[30] & ready_i;
  assign grants_o[29] = grants_unmasked_lo[29] & ready_i;
  assign grants_o[28] = grants_unmasked_lo[28] & ready_i;
  assign grants_o[27] = grants_unmasked_lo[27] & ready_i;
  assign grants_o[26] = grants_unmasked_lo[26] & ready_i;
  assign grants_o[25] = grants_unmasked_lo[25] & ready_i;
  assign grants_o[24] = grants_unmasked_lo[24] & ready_i;
  assign grants_o[23] = grants_unmasked_lo[23] & ready_i;
  assign grants_o[22] = grants_unmasked_lo[22] & ready_i;
  assign grants_o[21] = grants_unmasked_lo[21] & ready_i;
  assign grants_o[20] = grants_unmasked_lo[20] & ready_i;
  assign grants_o[19] = grants_unmasked_lo[19] & ready_i;
  assign grants_o[18] = grants_unmasked_lo[18] & ready_i;
  assign grants_o[17] = grants_unmasked_lo[17] & ready_i;
  assign grants_o[16] = grants_unmasked_lo[16] & ready_i;
  assign grants_o[15] = grants_unmasked_lo[15] & ready_i;
  assign grants_o[14] = grants_unmasked_lo[14] & ready_i;
  assign grants_o[13] = grants_unmasked_lo[13] & ready_i;
  assign grants_o[12] = grants_unmasked_lo[12] & ready_i;
  assign grants_o[11] = grants_unmasked_lo[11] & ready_i;
  assign grants_o[10] = grants_unmasked_lo[10] & ready_i;
  assign grants_o[9] = grants_unmasked_lo[9] & ready_i;
  assign grants_o[8] = grants_unmasked_lo[8] & ready_i;
  assign grants_o[7] = grants_unmasked_lo[7] & ready_i;
  assign grants_o[6] = grants_unmasked_lo[6] & ready_i;
  assign grants_o[5] = grants_unmasked_lo[5] & ready_i;
  assign grants_o[4] = grants_unmasked_lo[4] & ready_i;
  assign grants_o[3] = grants_unmasked_lo[3] & ready_i;
  assign grants_o[2] = grants_unmasked_lo[2] & ready_i;
  assign grants_o[1] = grants_unmasked_lo[1] & ready_i;
  assign grants_o[0] = grants_unmasked_lo[0] & ready_i;

endmodule

