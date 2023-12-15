

module top
(
  gray_i,
  binary_o,
  gray_i1, // added for decompiling
  binary_o1 // added for decompiling
);

  input [31:0] gray_i;
  output [31:0] binary_o;
  input [31:0] gray_i1; // added for decompiling
  output [31:0] binary_o1; // added for decompiling


  bsg_gray_to_binary
  wrapper
  (
    .gray_i(gray_i),
    .binary_o(binary_o)
  );

  bsg_gray_to_binary
  wrapper1
  (
    .gray_i(gray_i1), // added for decompiling
    .binary_o(binary_o1) // added for decompiling
  );


endmodule



module bsg_scan_width_p32_xor_p1
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
  assign t_1__31_ = i[31] ^ 1'b0;
  assign t_1__30_ = i[30] ^ i[31];
  assign t_1__29_ = i[29] ^ i[30];
  assign t_1__28_ = i[28] ^ i[29];
  assign t_1__27_ = i[27] ^ i[28];
  assign t_1__26_ = i[26] ^ i[27];
  assign t_1__25_ = i[25] ^ i[26];
  assign t_1__24_ = i[24] ^ i[25];
  assign t_1__23_ = i[23] ^ i[24];
  assign t_1__22_ = i[22] ^ i[23];
  assign t_1__21_ = i[21] ^ i[22];
  assign t_1__20_ = i[20] ^ i[21];
  assign t_1__19_ = i[19] ^ i[20];
  assign t_1__18_ = i[18] ^ i[19];
  assign t_1__17_ = i[17] ^ i[18];
  assign t_1__16_ = i[16] ^ i[17];
  assign t_1__15_ = i[15] ^ i[16];
  assign t_1__14_ = i[14] ^ i[15];
  assign t_1__13_ = i[13] ^ i[14];
  assign t_1__12_ = i[12] ^ i[13];
  assign t_1__11_ = i[11] ^ i[12];
  assign t_1__10_ = i[10] ^ i[11];
  assign t_1__9_ = i[9] ^ i[10];
  assign t_1__8_ = i[8] ^ i[9];
  assign t_1__7_ = i[7] ^ i[8];
  assign t_1__6_ = i[6] ^ i[7];
  assign t_1__5_ = i[5] ^ i[6];
  assign t_1__4_ = i[4] ^ i[5];
  assign t_1__3_ = i[3] ^ i[4];
  assign t_1__2_ = i[2] ^ i[3];
  assign t_1__1_ = i[1] ^ i[2];
  assign t_1__0_ = i[0] ^ i[1];
  assign t_2__31_ = t_1__31_ ^ 1'b0;
  assign t_2__30_ = t_1__30_ ^ 1'b0;
  assign t_2__29_ = t_1__29_ ^ t_1__31_;
  assign t_2__28_ = t_1__28_ ^ t_1__30_;
  assign t_2__27_ = t_1__27_ ^ t_1__29_;
  assign t_2__26_ = t_1__26_ ^ t_1__28_;
  assign t_2__25_ = t_1__25_ ^ t_1__27_;
  assign t_2__24_ = t_1__24_ ^ t_1__26_;
  assign t_2__23_ = t_1__23_ ^ t_1__25_;
  assign t_2__22_ = t_1__22_ ^ t_1__24_;
  assign t_2__21_ = t_1__21_ ^ t_1__23_;
  assign t_2__20_ = t_1__20_ ^ t_1__22_;
  assign t_2__19_ = t_1__19_ ^ t_1__21_;
  assign t_2__18_ = t_1__18_ ^ t_1__20_;
  assign t_2__17_ = t_1__17_ ^ t_1__19_;
  assign t_2__16_ = t_1__16_ ^ t_1__18_;
  assign t_2__15_ = t_1__15_ ^ t_1__17_;
  assign t_2__14_ = t_1__14_ ^ t_1__16_;
  assign t_2__13_ = t_1__13_ ^ t_1__15_;
  assign t_2__12_ = t_1__12_ ^ t_1__14_;
  assign t_2__11_ = t_1__11_ ^ t_1__13_;
  assign t_2__10_ = t_1__10_ ^ t_1__12_;
  assign t_2__9_ = t_1__9_ ^ t_1__11_;
  assign t_2__8_ = t_1__8_ ^ t_1__10_;
  assign t_2__7_ = t_1__7_ ^ t_1__9_;
  assign t_2__6_ = t_1__6_ ^ t_1__8_;
  assign t_2__5_ = t_1__5_ ^ t_1__7_;
  assign t_2__4_ = t_1__4_ ^ t_1__6_;
  assign t_2__3_ = t_1__3_ ^ t_1__5_;
  assign t_2__2_ = t_1__2_ ^ t_1__4_;
  assign t_2__1_ = t_1__1_ ^ t_1__3_;
  assign t_2__0_ = t_1__0_ ^ t_1__2_;
  assign t_3__31_ = t_2__31_ ^ 1'b0;
  assign t_3__30_ = t_2__30_ ^ 1'b0;
  assign t_3__29_ = t_2__29_ ^ 1'b0;
  assign t_3__28_ = t_2__28_ ^ 1'b0;
  assign t_3__27_ = t_2__27_ ^ t_2__31_;
  assign t_3__26_ = t_2__26_ ^ t_2__30_;
  assign t_3__25_ = t_2__25_ ^ t_2__29_;
  assign t_3__24_ = t_2__24_ ^ t_2__28_;
  assign t_3__23_ = t_2__23_ ^ t_2__27_;
  assign t_3__22_ = t_2__22_ ^ t_2__26_;
  assign t_3__21_ = t_2__21_ ^ t_2__25_;
  assign t_3__20_ = t_2__20_ ^ t_2__24_;
  assign t_3__19_ = t_2__19_ ^ t_2__23_;
  assign t_3__18_ = t_2__18_ ^ t_2__22_;
  assign t_3__17_ = t_2__17_ ^ t_2__21_;
  assign t_3__16_ = t_2__16_ ^ t_2__20_;
  assign t_3__15_ = t_2__15_ ^ t_2__19_;
  assign t_3__14_ = t_2__14_ ^ t_2__18_;
  assign t_3__13_ = t_2__13_ ^ t_2__17_;
  assign t_3__12_ = t_2__12_ ^ t_2__16_;
  assign t_3__11_ = t_2__11_ ^ t_2__15_;
  assign t_3__10_ = t_2__10_ ^ t_2__14_;
  assign t_3__9_ = t_2__9_ ^ t_2__13_;
  assign t_3__8_ = t_2__8_ ^ t_2__12_;
  assign t_3__7_ = t_2__7_ ^ t_2__11_;
  assign t_3__6_ = t_2__6_ ^ t_2__10_;
  assign t_3__5_ = t_2__5_ ^ t_2__9_;
  assign t_3__4_ = t_2__4_ ^ t_2__8_;
  assign t_3__3_ = t_2__3_ ^ t_2__7_;
  assign t_3__2_ = t_2__2_ ^ t_2__6_;
  assign t_3__1_ = t_2__1_ ^ t_2__5_;
  assign t_3__0_ = t_2__0_ ^ t_2__4_;
  assign t_4__31_ = t_3__31_ ^ 1'b0;
  assign t_4__30_ = t_3__30_ ^ 1'b0;
  assign t_4__29_ = t_3__29_ ^ 1'b0;
  assign t_4__28_ = t_3__28_ ^ 1'b0;
  assign t_4__27_ = t_3__27_ ^ 1'b0;
  assign t_4__26_ = t_3__26_ ^ 1'b0;
  assign t_4__25_ = t_3__25_ ^ 1'b0;
  assign t_4__24_ = t_3__24_ ^ 1'b0;
  assign t_4__23_ = t_3__23_ ^ t_3__31_;
  assign t_4__22_ = t_3__22_ ^ t_3__30_;
  assign t_4__21_ = t_3__21_ ^ t_3__29_;
  assign t_4__20_ = t_3__20_ ^ t_3__28_;
  assign t_4__19_ = t_3__19_ ^ t_3__27_;
  assign t_4__18_ = t_3__18_ ^ t_3__26_;
  assign t_4__17_ = t_3__17_ ^ t_3__25_;
  assign t_4__16_ = t_3__16_ ^ t_3__24_;
  assign t_4__15_ = t_3__15_ ^ t_3__23_;
  assign t_4__14_ = t_3__14_ ^ t_3__22_;
  assign t_4__13_ = t_3__13_ ^ t_3__21_;
  assign t_4__12_ = t_3__12_ ^ t_3__20_;
  assign t_4__11_ = t_3__11_ ^ t_3__19_;
  assign t_4__10_ = t_3__10_ ^ t_3__18_;
  assign t_4__9_ = t_3__9_ ^ t_3__17_;
  assign t_4__8_ = t_3__8_ ^ t_3__16_;
  assign t_4__7_ = t_3__7_ ^ t_3__15_;
  assign t_4__6_ = t_3__6_ ^ t_3__14_;
  assign t_4__5_ = t_3__5_ ^ t_3__13_;
  assign t_4__4_ = t_3__4_ ^ t_3__12_;
  assign t_4__3_ = t_3__3_ ^ t_3__11_;
  assign t_4__2_ = t_3__2_ ^ t_3__10_;
  assign t_4__1_ = t_3__1_ ^ t_3__9_;
  assign t_4__0_ = t_3__0_ ^ t_3__8_;
  assign o[31] = t_4__31_ ^ 1'b0;
  assign o[30] = t_4__30_ ^ 1'b0;
  assign o[29] = t_4__29_ ^ 1'b0;
  assign o[28] = t_4__28_ ^ 1'b0;
  assign o[27] = t_4__27_ ^ 1'b0;
  assign o[26] = t_4__26_ ^ 1'b0;
  assign o[25] = t_4__25_ ^ 1'b0;
  assign o[24] = t_4__24_ ^ 1'b0;
  assign o[23] = t_4__23_ ^ 1'b0;
  assign o[22] = t_4__22_ ^ 1'b0;
  assign o[21] = t_4__21_ ^ 1'b0;
  assign o[20] = t_4__20_ ^ 1'b0;
  assign o[19] = t_4__19_ ^ 1'b0;
  assign o[18] = t_4__18_ ^ 1'b0;
  assign o[17] = t_4__17_ ^ 1'b0;
  assign o[16] = t_4__16_ ^ 1'b0;
  assign o[15] = t_4__15_ ^ t_4__31_;
  assign o[14] = t_4__14_ ^ t_4__30_;
  assign o[13] = t_4__13_ ^ t_4__29_;
  assign o[12] = t_4__12_ ^ t_4__28_;
  assign o[11] = t_4__11_ ^ t_4__27_;
  assign o[10] = t_4__10_ ^ t_4__26_;
  assign o[9] = t_4__9_ ^ t_4__25_;
  assign o[8] = t_4__8_ ^ t_4__24_;
  assign o[7] = t_4__7_ ^ t_4__23_;
  assign o[6] = t_4__6_ ^ t_4__22_;
  assign o[5] = t_4__5_ ^ t_4__21_;
  assign o[4] = t_4__4_ ^ t_4__20_;
  assign o[3] = t_4__3_ ^ t_4__19_;
  assign o[2] = t_4__2_ ^ t_4__18_;
  assign o[1] = t_4__1_ ^ t_4__17_;
  assign o[0] = t_4__0_ ^ t_4__16_;

endmodule



module bsg_gray_to_binary
(
  gray_i,
  binary_o
);

  input [31:0] gray_i;
  output [31:0] binary_o;
  wire [31:0] binary_o;

  bsg_scan_width_p32_xor_p1
  scan_xor
  (
    .i(gray_i),
    .o(binary_o)
  );


endmodule

