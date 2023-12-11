

module top
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
  input [31:0] i01; // added for decompiling
  input [31:0] i11; // added for decompiling
  output [31:0] o1; // added for decompiling


  bsg_muxi2_gatestack
  wrapper
  (
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .o(o)
  );

  bsg_muxi2_gatestack
  wrapper1
  (
    .i0(i01), // added for decompiling
    .i1(i11), // added for decompiling
    .i2(i2),
    .o(o1) // added for decompiling
  );


endmodule



module bsg_muxi2_gatestack
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
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95;
  assign N33 = (N0)? i1[0] : 
               (N32)? i0[0] : 1'b0;
  assign N0 = i2[0];
  assign N35 = (N1)? i1[1] : 
               (N34)? i0[1] : 1'b0;
  assign N1 = i2[1];
  assign N37 = (N2)? i1[2] : 
               (N36)? i0[2] : 1'b0;
  assign N2 = i2[2];
  assign N39 = (N3)? i1[3] : 
               (N38)? i0[3] : 1'b0;
  assign N3 = i2[3];
  assign N41 = (N4)? i1[4] : 
               (N40)? i0[4] : 1'b0;
  assign N4 = i2[4];
  assign N43 = (N5)? i1[5] : 
               (N42)? i0[5] : 1'b0;
  assign N5 = i2[5];
  assign N45 = (N6)? i1[6] : 
               (N44)? i0[6] : 1'b0;
  assign N6 = i2[6];
  assign N47 = (N7)? i1[7] : 
               (N46)? i0[7] : 1'b0;
  assign N7 = i2[7];
  assign N49 = (N8)? i1[8] : 
               (N48)? i0[8] : 1'b0;
  assign N8 = i2[8];
  assign N51 = (N9)? i1[9] : 
               (N50)? i0[9] : 1'b0;
  assign N9 = i2[9];
  assign N53 = (N10)? i1[10] : 
               (N52)? i0[10] : 1'b0;
  assign N10 = i2[10];
  assign N55 = (N11)? i1[11] : 
               (N54)? i0[11] : 1'b0;
  assign N11 = i2[11];
  assign N57 = (N12)? i1[12] : 
               (N56)? i0[12] : 1'b0;
  assign N12 = i2[12];
  assign N59 = (N13)? i1[13] : 
               (N58)? i0[13] : 1'b0;
  assign N13 = i2[13];
  assign N61 = (N14)? i1[14] : 
               (N60)? i0[14] : 1'b0;
  assign N14 = i2[14];
  assign N63 = (N15)? i1[15] : 
               (N62)? i0[15] : 1'b0;
  assign N15 = i2[15];
  assign N65 = (N16)? i1[16] : 
               (N64)? i0[16] : 1'b0;
  assign N16 = i2[16];
  assign N67 = (N17)? i1[17] : 
               (N66)? i0[17] : 1'b0;
  assign N17 = i2[17];
  assign N69 = (N18)? i1[18] : 
               (N68)? i0[18] : 1'b0;
  assign N18 = i2[18];
  assign N71 = (N19)? i1[19] : 
               (N70)? i0[19] : 1'b0;
  assign N19 = i2[19];
  assign N73 = (N20)? i1[20] : 
               (N72)? i0[20] : 1'b0;
  assign N20 = i2[20];
  assign N75 = (N21)? i1[21] : 
               (N74)? i0[21] : 1'b0;
  assign N21 = i2[21];
  assign N77 = (N22)? i1[22] : 
               (N76)? i0[22] : 1'b0;
  assign N22 = i2[22];
  assign N79 = (N23)? i1[23] : 
               (N78)? i0[23] : 1'b0;
  assign N23 = i2[23];
  assign N81 = (N24)? i1[24] : 
               (N80)? i0[24] : 1'b0;
  assign N24 = i2[24];
  assign N83 = (N25)? i1[25] : 
               (N82)? i0[25] : 1'b0;
  assign N25 = i2[25];
  assign N85 = (N26)? i1[26] : 
               (N84)? i0[26] : 1'b0;
  assign N26 = i2[26];
  assign N87 = (N27)? i1[27] : 
               (N86)? i0[27] : 1'b0;
  assign N27 = i2[27];
  assign N89 = (N28)? i1[28] : 
               (N88)? i0[28] : 1'b0;
  assign N28 = i2[28];
  assign N91 = (N29)? i1[29] : 
               (N90)? i0[29] : 1'b0;
  assign N29 = i2[29];
  assign N93 = (N30)? i1[30] : 
               (N92)? i0[30] : 1'b0;
  assign N30 = i2[30];
  assign N95 = (N31)? i1[31] : 
               (N94)? i0[31] : 1'b0;
  assign N31 = i2[31];
  assign N32 = ~i2[0];
  assign o[0] = ~N33;
  assign N34 = ~i2[1];
  assign o[1] = ~N35;
  assign N36 = ~i2[2];
  assign o[2] = ~N37;
  assign N38 = ~i2[3];
  assign o[3] = ~N39;
  assign N40 = ~i2[4];
  assign o[4] = ~N41;
  assign N42 = ~i2[5];
  assign o[5] = ~N43;
  assign N44 = ~i2[6];
  assign o[6] = ~N45;
  assign N46 = ~i2[7];
  assign o[7] = ~N47;
  assign N48 = ~i2[8];
  assign o[8] = ~N49;
  assign N50 = ~i2[9];
  assign o[9] = ~N51;
  assign N52 = ~i2[10];
  assign o[10] = ~N53;
  assign N54 = ~i2[11];
  assign o[11] = ~N55;
  assign N56 = ~i2[12];
  assign o[12] = ~N57;
  assign N58 = ~i2[13];
  assign o[13] = ~N59;
  assign N60 = ~i2[14];
  assign o[14] = ~N61;
  assign N62 = ~i2[15];
  assign o[15] = ~N63;
  assign N64 = ~i2[16];
  assign o[16] = ~N65;
  assign N66 = ~i2[17];
  assign o[17] = ~N67;
  assign N68 = ~i2[18];
  assign o[18] = ~N69;
  assign N70 = ~i2[19];
  assign o[19] = ~N71;
  assign N72 = ~i2[20];
  assign o[20] = ~N73;
  assign N74 = ~i2[21];
  assign o[21] = ~N75;
  assign N76 = ~i2[22];
  assign o[22] = ~N77;
  assign N78 = ~i2[23];
  assign o[23] = ~N79;
  assign N80 = ~i2[24];
  assign o[24] = ~N81;
  assign N82 = ~i2[25];
  assign o[25] = ~N83;
  assign N84 = ~i2[26];
  assign o[26] = ~N85;
  assign N86 = ~i2[27];
  assign o[27] = ~N87;
  assign N88 = ~i2[28];
  assign o[28] = ~N89;
  assign N90 = ~i2[29];
  assign o[29] = ~N91;
  assign N92 = ~i2[30];
  assign o[30] = ~N93;
  assign N94 = ~i2[31];
  assign o[31] = ~N95;

endmodule

