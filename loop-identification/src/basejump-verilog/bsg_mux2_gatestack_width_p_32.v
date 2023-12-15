

module top
(
  i0,
  i1,
  i2,
  o,
  i01, // added for decompiling
  o1 // added for decompiling
);

  input [31:0] i0;
  input [31:0] i1;
  input [31:0] i2;
  input [31:0] i01; // added for decompiling
  output [31:0] o;
  output [31:0] o1; // added for decompiling

  bsg_mux2_gatestack
  wrapper
  (
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .o(o)
  );

  bsg_mux2_gatestack
  wrapper1
  (
    .i0(i01), // added for decompiling
    .i1(i1),
    .i2(i2),
    .o(o1) // added for decompiling
  );


endmodule



module bsg_mux2_gatestack
(
  i0,
  i1,
  i2,
  o
);

  input [31:0] i0;
  input [31:0] i1;
  input [31:0] i2;
  output [31:0] o;
  wire [31:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63;
  assign o[0] = (N0)? i1[0] : 
                (N32)? i0[0] : 1'b0;
  assign N0 = i2[0];
  assign o[1] = (N1)? i1[1] : 
                (N33)? i0[1] : 1'b0;
  assign N1 = i2[1];
  assign o[2] = (N2)? i1[2] : 
                (N34)? i0[2] : 1'b0;
  assign N2 = i2[2];
  assign o[3] = (N3)? i1[3] : 
                (N35)? i0[3] : 1'b0;
  assign N3 = i2[3];
  assign o[4] = (N4)? i1[4] : 
                (N36)? i0[4] : 1'b0;
  assign N4 = i2[4];
  assign o[5] = (N5)? i1[5] : 
                (N37)? i0[5] : 1'b0;
  assign N5 = i2[5];
  assign o[6] = (N6)? i1[6] : 
                (N38)? i0[6] : 1'b0;
  assign N6 = i2[6];
  assign o[7] = (N7)? i1[7] : 
                (N39)? i0[7] : 1'b0;
  assign N7 = i2[7];
  assign o[8] = (N8)? i1[8] : 
                (N40)? i0[8] : 1'b0;
  assign N8 = i2[8];
  assign o[9] = (N9)? i1[9] : 
                (N41)? i0[9] : 1'b0;
  assign N9 = i2[9];
  assign o[10] = (N10)? i1[10] : 
                 (N42)? i0[10] : 1'b0;
  assign N10 = i2[10];
  assign o[11] = (N11)? i1[11] : 
                 (N43)? i0[11] : 1'b0;
  assign N11 = i2[11];
  assign o[12] = (N12)? i1[12] : 
                 (N44)? i0[12] : 1'b0;
  assign N12 = i2[12];
  assign o[13] = (N13)? i1[13] : 
                 (N45)? i0[13] : 1'b0;
  assign N13 = i2[13];
  assign o[14] = (N14)? i1[14] : 
                 (N46)? i0[14] : 1'b0;
  assign N14 = i2[14];
  assign o[15] = (N15)? i1[15] : 
                 (N47)? i0[15] : 1'b0;
  assign N15 = i2[15];
  assign o[16] = (N16)? i1[16] : 
                 (N48)? i0[16] : 1'b0;
  assign N16 = i2[16];
  assign o[17] = (N17)? i1[17] : 
                 (N49)? i0[17] : 1'b0;
  assign N17 = i2[17];
  assign o[18] = (N18)? i1[18] : 
                 (N50)? i0[18] : 1'b0;
  assign N18 = i2[18];
  assign o[19] = (N19)? i1[19] : 
                 (N51)? i0[19] : 1'b0;
  assign N19 = i2[19];
  assign o[20] = (N20)? i1[20] : 
                 (N52)? i0[20] : 1'b0;
  assign N20 = i2[20];
  assign o[21] = (N21)? i1[21] : 
                 (N53)? i0[21] : 1'b0;
  assign N21 = i2[21];
  assign o[22] = (N22)? i1[22] : 
                 (N54)? i0[22] : 1'b0;
  assign N22 = i2[22];
  assign o[23] = (N23)? i1[23] : 
                 (N55)? i0[23] : 1'b0;
  assign N23 = i2[23];
  assign o[24] = (N24)? i1[24] : 
                 (N56)? i0[24] : 1'b0;
  assign N24 = i2[24];
  assign o[25] = (N25)? i1[25] : 
                 (N57)? i0[25] : 1'b0;
  assign N25 = i2[25];
  assign o[26] = (N26)? i1[26] : 
                 (N58)? i0[26] : 1'b0;
  assign N26 = i2[26];
  assign o[27] = (N27)? i1[27] : 
                 (N59)? i0[27] : 1'b0;
  assign N27 = i2[27];
  assign o[28] = (N28)? i1[28] : 
                 (N60)? i0[28] : 1'b0;
  assign N28 = i2[28];
  assign o[29] = (N29)? i1[29] : 
                 (N61)? i0[29] : 1'b0;
  assign N29 = i2[29];
  assign o[30] = (N30)? i1[30] : 
                 (N62)? i0[30] : 1'b0;
  assign N30 = i2[30];
  assign o[31] = (N31)? i1[31] : 
                 (N63)? i0[31] : 1'b0;
  assign N31 = i2[31];
  assign N32 = ~i2[0];
  assign N33 = ~i2[1];
  assign N34 = ~i2[2];
  assign N35 = ~i2[3];
  assign N36 = ~i2[4];
  assign N37 = ~i2[5];
  assign N38 = ~i2[6];
  assign N39 = ~i2[7];
  assign N40 = ~i2[8];
  assign N41 = ~i2[9];
  assign N42 = ~i2[10];
  assign N43 = ~i2[11];
  assign N44 = ~i2[12];
  assign N45 = ~i2[13];
  assign N46 = ~i2[14];
  assign N47 = ~i2[15];
  assign N48 = ~i2[16];
  assign N49 = ~i2[17];
  assign N50 = ~i2[18];
  assign N51 = ~i2[19];
  assign N52 = ~i2[20];
  assign N53 = ~i2[21];
  assign N54 = ~i2[22];
  assign N55 = ~i2[23];
  assign N56 = ~i2[24];
  assign N57 = ~i2[25];
  assign N58 = ~i2[26];
  assign N59 = ~i2[27];
  assign N60 = ~i2[28];
  assign N61 = ~i2[29];
  assign N62 = ~i2[30];
  assign N63 = ~i2[31];

endmodule

