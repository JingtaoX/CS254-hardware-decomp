

module top
(
  a_i,
  b_i,
  c_i,
  o
);

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] c_i;
  output [31:0] o;
  input [31:0] a_i1; // added for decompiling
  input [31:0] b_i1; // added for decompiling
  input [31:0] c_i1; // added for decompiling
  output [31:0] o1; // added for decompiling

  bsg_nor3
  wrapper
  (
    .a_i(a_i),
    .b_i(b_i),
    .c_i(c_i),
    .o(o)
  );

  bsg_nor3
  wrapper1
  (
    .a_i(a_i1), // added for decompiling
    .b_i(b_i1), // added for decompiling
    .c_i(c_i1), // added for decompiling
    .o(o1) // added for decompiling
  );


endmodule



module bsg_nor3
(
  a_i,
  b_i,
  c_i,
  o
);

  input [31:0] a_i;
  input [31:0] b_i;
  input [31:0] c_i;
  output [31:0] o;
  wire [31:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63;
  assign o[31] = ~N1;
  assign N1 = N0 | c_i[31];
  assign N0 = a_i[31] | b_i[31];
  assign o[30] = ~N3;
  assign N3 = N2 | c_i[30];
  assign N2 = a_i[30] | b_i[30];
  assign o[29] = ~N5;
  assign N5 = N4 | c_i[29];
  assign N4 = a_i[29] | b_i[29];
  assign o[28] = ~N7;
  assign N7 = N6 | c_i[28];
  assign N6 = a_i[28] | b_i[28];
  assign o[27] = ~N9;
  assign N9 = N8 | c_i[27];
  assign N8 = a_i[27] | b_i[27];
  assign o[26] = ~N11;
  assign N11 = N10 | c_i[26];
  assign N10 = a_i[26] | b_i[26];
  assign o[25] = ~N13;
  assign N13 = N12 | c_i[25];
  assign N12 = a_i[25] | b_i[25];
  assign o[24] = ~N15;
  assign N15 = N14 | c_i[24];
  assign N14 = a_i[24] | b_i[24];
  assign o[23] = ~N17;
  assign N17 = N16 | c_i[23];
  assign N16 = a_i[23] | b_i[23];
  assign o[22] = ~N19;
  assign N19 = N18 | c_i[22];
  assign N18 = a_i[22] | b_i[22];
  assign o[21] = ~N21;
  assign N21 = N20 | c_i[21];
  assign N20 = a_i[21] | b_i[21];
  assign o[20] = ~N23;
  assign N23 = N22 | c_i[20];
  assign N22 = a_i[20] | b_i[20];
  assign o[19] = ~N25;
  assign N25 = N24 | c_i[19];
  assign N24 = a_i[19] | b_i[19];
  assign o[18] = ~N27;
  assign N27 = N26 | c_i[18];
  assign N26 = a_i[18] | b_i[18];
  assign o[17] = ~N29;
  assign N29 = N28 | c_i[17];
  assign N28 = a_i[17] | b_i[17];
  assign o[16] = ~N31;
  assign N31 = N30 | c_i[16];
  assign N30 = a_i[16] | b_i[16];
  assign o[15] = ~N33;
  assign N33 = N32 | c_i[15];
  assign N32 = a_i[15] | b_i[15];
  assign o[14] = ~N35;
  assign N35 = N34 | c_i[14];
  assign N34 = a_i[14] | b_i[14];
  assign o[13] = ~N37;
  assign N37 = N36 | c_i[13];
  assign N36 = a_i[13] | b_i[13];
  assign o[12] = ~N39;
  assign N39 = N38 | c_i[12];
  assign N38 = a_i[12] | b_i[12];
  assign o[11] = ~N41;
  assign N41 = N40 | c_i[11];
  assign N40 = a_i[11] | b_i[11];
  assign o[10] = ~N43;
  assign N43 = N42 | c_i[10];
  assign N42 = a_i[10] | b_i[10];
  assign o[9] = ~N45;
  assign N45 = N44 | c_i[9];
  assign N44 = a_i[9] | b_i[9];
  assign o[8] = ~N47;
  assign N47 = N46 | c_i[8];
  assign N46 = a_i[8] | b_i[8];
  assign o[7] = ~N49;
  assign N49 = N48 | c_i[7];
  assign N48 = a_i[7] | b_i[7];
  assign o[6] = ~N51;
  assign N51 = N50 | c_i[6];
  assign N50 = a_i[6] | b_i[6];
  assign o[5] = ~N53;
  assign N53 = N52 | c_i[5];
  assign N52 = a_i[5] | b_i[5];
  assign o[4] = ~N55;
  assign N55 = N54 | c_i[4];
  assign N54 = a_i[4] | b_i[4];
  assign o[3] = ~N57;
  assign N57 = N56 | c_i[3];
  assign N56 = a_i[3] | b_i[3];
  assign o[2] = ~N59;
  assign N59 = N58 | c_i[2];
  assign N58 = a_i[2] | b_i[2];
  assign o[1] = ~N61;
  assign N61 = N60 | c_i[1];
  assign N60 = a_i[1] | b_i[1];
  assign o[0] = ~N63;
  assign N63 = N62 | c_i[0];
  assign N62 = a_i[0] | b_i[0];

endmodule

