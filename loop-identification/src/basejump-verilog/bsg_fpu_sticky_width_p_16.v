

module top
(
  i,
  shamt_i,
  sticky_o
);

  input [15:0] i;
  input [4:0] shamt_i;
  output sticky_o;
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
    .shamt_i(shamt_i),
    .sticky_o(sticky_o1) // added for decompiling
  );




endmodule



module bsg_scan_width_p16_or_p1_lo_to_hi_p1
(
  i,
  o
);

  input [15:0] i;
  output [15:0] o;
  wire [15:0] o;
  wire t_3__15_,t_3__14_,t_3__13_,t_3__12_,t_3__11_,t_3__10_,t_3__9_,t_3__8_,t_3__7_,
  t_3__6_,t_3__5_,t_3__4_,t_3__3_,t_3__2_,t_3__1_,t_3__0_,t_2__15_,t_2__14_,
  t_2__13_,t_2__12_,t_2__11_,t_2__10_,t_2__9_,t_2__8_,t_2__7_,t_2__6_,t_2__5_,t_2__4_,
  t_2__3_,t_2__2_,t_2__1_,t_2__0_,t_1__15_,t_1__14_,t_1__13_,t_1__12_,t_1__11_,
  t_1__10_,t_1__9_,t_1__8_,t_1__7_,t_1__6_,t_1__5_,t_1__4_,t_1__3_,t_1__2_,t_1__1_,
  t_1__0_;
  assign t_1__15_ = i[0] | 1'b0;
  assign t_1__14_ = i[1] | i[0];
  assign t_1__13_ = i[2] | i[1];
  assign t_1__12_ = i[3] | i[2];
  assign t_1__11_ = i[4] | i[3];
  assign t_1__10_ = i[5] | i[4];
  assign t_1__9_ = i[6] | i[5];
  assign t_1__8_ = i[7] | i[6];
  assign t_1__7_ = i[8] | i[7];
  assign t_1__6_ = i[9] | i[8];
  assign t_1__5_ = i[10] | i[9];
  assign t_1__4_ = i[11] | i[10];
  assign t_1__3_ = i[12] | i[11];
  assign t_1__2_ = i[13] | i[12];
  assign t_1__1_ = i[14] | i[13];
  assign t_1__0_ = i[15] | i[14];
  assign t_2__15_ = t_1__15_ | 1'b0;
  assign t_2__14_ = t_1__14_ | 1'b0;
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
  assign t_3__15_ = t_2__15_ | 1'b0;
  assign t_3__14_ = t_2__14_ | 1'b0;
  assign t_3__13_ = t_2__13_ | 1'b0;
  assign t_3__12_ = t_2__12_ | 1'b0;
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
  assign o[0] = t_3__15_ | 1'b0;
  assign o[1] = t_3__14_ | 1'b0;
  assign o[2] = t_3__13_ | 1'b0;
  assign o[3] = t_3__12_ | 1'b0;
  assign o[4] = t_3__11_ | 1'b0;
  assign o[5] = t_3__10_ | 1'b0;
  assign o[6] = t_3__9_ | 1'b0;
  assign o[7] = t_3__8_ | 1'b0;
  assign o[8] = t_3__7_ | t_3__15_;
  assign o[9] = t_3__6_ | t_3__14_;
  assign o[10] = t_3__5_ | t_3__13_;
  assign o[11] = t_3__4_ | t_3__12_;
  assign o[12] = t_3__3_ | t_3__11_;
  assign o[13] = t_3__2_ | t_3__10_;
  assign o[14] = t_3__1_ | t_3__9_;
  assign o[15] = t_3__0_ | t_3__8_;

endmodule



module bsg_fpu_sticky
(
  i,
  shamt_i,
  sticky_o
);

  input [15:0] i;
  input [4:0] shamt_i;
  output sticky_o;
  wire sticky_o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,
  N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,
  N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,
  N60,N61,N62,N63,N64,N65,N66,N67,N68,N69;
  wire [15:0] scan_out;

  bsg_scan_width_p16_or_p1_lo_to_hi_p1
  scan0
  (
    .i(i),
    .o(scan_out)
  );

  assign N51 = shamt_i > { 1'b1, 1'b0, 1'b0, 1'b0, 1'b0 };
  assign N53 = N0 & N1 & (N2 & N3) & N4;
  assign N0 = ~shamt_i[4];
  assign N1 = ~shamt_i[3];
  assign N2 = ~shamt_i[2];
  assign N3 = ~shamt_i[0];
  assign N4 = ~shamt_i[1];
  assign N54 = N5 & N6 & (shamt_i[0] & N7);
  assign N5 = ~shamt_i[3];
  assign N6 = ~shamt_i[2];
  assign N7 = ~shamt_i[1];
  assign N55 = N8 & N9 & (N10 & shamt_i[1]);
  assign N8 = ~shamt_i[3];
  assign N9 = ~shamt_i[2];
  assign N10 = ~shamt_i[0];
  assign N56 = N11 & N12 & (shamt_i[0] & shamt_i[1]);
  assign N11 = ~shamt_i[3];
  assign N12 = ~shamt_i[2];
  assign N57 = N13 & shamt_i[2] & (N14 & N15);
  assign N13 = ~shamt_i[3];
  assign N14 = ~shamt_i[0];
  assign N15 = ~shamt_i[1];
  assign N58 = N16 & shamt_i[2] & (shamt_i[0] & N17);
  assign N16 = ~shamt_i[3];
  assign N17 = ~shamt_i[1];
  assign N59 = N18 & shamt_i[2] & (N19 & shamt_i[1]);
  assign N18 = ~shamt_i[3];
  assign N19 = ~shamt_i[0];
  assign N60 = N20 & shamt_i[2] & (shamt_i[0] & shamt_i[1]);
  assign N20 = ~shamt_i[3];
  assign N61 = shamt_i[3] & N21 & (N22 & N23);
  assign N21 = ~shamt_i[2];
  assign N22 = ~shamt_i[0];
  assign N23 = ~shamt_i[1];
  assign N62 = shamt_i[3] & N24 & (shamt_i[0] & N25);
  assign N24 = ~shamt_i[2];
  assign N25 = ~shamt_i[1];
  assign N63 = shamt_i[3] & N26 & (N27 & shamt_i[1]);
  assign N26 = ~shamt_i[2];
  assign N27 = ~shamt_i[0];
  assign N64 = shamt_i[3] & N28 & (shamt_i[0] & shamt_i[1]);
  assign N28 = ~shamt_i[2];
  assign N65 = shamt_i[3] & shamt_i[2] & (N29 & N30);
  assign N29 = ~shamt_i[0];
  assign N30 = ~shamt_i[1];
  assign N66 = shamt_i[3] & shamt_i[2] & (shamt_i[0] & N31);
  assign N31 = ~shamt_i[1];
  assign N67 = shamt_i[3] & shamt_i[2] & (N32 & shamt_i[1]);
  assign N32 = ~shamt_i[0];
  assign N68 = shamt_i[3] & shamt_i[2] & (shamt_i[0] & shamt_i[1]);
  assign sticky_o = (N33)? scan_out[15] : 
                    (N52)? N69 : 1'b0;
  assign N33 = N51;
  assign N69 = (N34)? 1'b0 : 
               (N35)? scan_out[0] : 
               (N36)? scan_out[1] : 
               (N37)? scan_out[2] : 
               (N38)? scan_out[3] : 
               (N39)? scan_out[4] : 
               (N40)? scan_out[5] : 
               (N41)? scan_out[6] : 
               (N42)? scan_out[7] : 
               (N43)? scan_out[8] : 
               (N44)? scan_out[9] : 
               (N45)? scan_out[10] : 
               (N46)? scan_out[11] : 
               (N47)? scan_out[12] : 
               (N48)? scan_out[13] : 
               (N49)? scan_out[14] : 
               (N50)? scan_out[15] : 1'b0;
  assign N34 = N53;
  assign N35 = N54;
  assign N36 = N55;
  assign N37 = N56;
  assign N38 = N57;
  assign N39 = N58;
  assign N40 = N59;
  assign N41 = N60;
  assign N42 = N61;
  assign N43 = N62;
  assign N44 = N63;
  assign N45 = N64;
  assign N46 = N65;
  assign N47 = N66;
  assign N48 = N67;
  assign N49 = N68;
  assign N50 = shamt_i[4];
  assign N52 = ~N51;

endmodule

