

module top
(
  data0_i,
  data1_i,
  sel_i,
  data_o
);

  input [31:0] data0_i;
  input [31:0] data1_i;
  input [31:0] sel_i;
  output [31:0] data_o;
  input [31:0] data0_i1; // added for decompiling
  input [31:0] data1_i1; // added for decompiling
  output [31:0] data_o1; // added for decompiling

  bsg_mux_bitwise
  wrapper
  (
    .data0_i(data0_i),
    .data1_i(data1_i),
    .sel_i(sel_i),
    .data_o(data_o)
  );

  bsg_mux_bitwise
  wrapper1
  (
    .data0_i(data0_i1), // added for decompiling
    .data1_i(data1_i1), // added for decompiling
    .sel_i(sel_i),
    .data_o(data_o1) // added for decompiling
  );


endmodule



module bsg_mux_segmented_segments_p32_segment_width_p1
(
  data0_i,
  data1_i,
  sel_i,
  data_o
);

  input [31:0] data0_i;
  input [31:0] data1_i;
  input [31:0] sel_i;
  output [31:0] data_o;
  wire [31:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63;
  assign data_o[0] = (N0)? data1_i[0] : 
                     (N32)? data0_i[0] : 1'b0;
  assign N0 = sel_i[0];
  assign data_o[1] = (N1)? data1_i[1] : 
                     (N33)? data0_i[1] : 1'b0;
  assign N1 = sel_i[1];
  assign data_o[2] = (N2)? data1_i[2] : 
                     (N34)? data0_i[2] : 1'b0;
  assign N2 = sel_i[2];
  assign data_o[3] = (N3)? data1_i[3] : 
                     (N35)? data0_i[3] : 1'b0;
  assign N3 = sel_i[3];
  assign data_o[4] = (N4)? data1_i[4] : 
                     (N36)? data0_i[4] : 1'b0;
  assign N4 = sel_i[4];
  assign data_o[5] = (N5)? data1_i[5] : 
                     (N37)? data0_i[5] : 1'b0;
  assign N5 = sel_i[5];
  assign data_o[6] = (N6)? data1_i[6] : 
                     (N38)? data0_i[6] : 1'b0;
  assign N6 = sel_i[6];
  assign data_o[7] = (N7)? data1_i[7] : 
                     (N39)? data0_i[7] : 1'b0;
  assign N7 = sel_i[7];
  assign data_o[8] = (N8)? data1_i[8] : 
                     (N40)? data0_i[8] : 1'b0;
  assign N8 = sel_i[8];
  assign data_o[9] = (N9)? data1_i[9] : 
                     (N41)? data0_i[9] : 1'b0;
  assign N9 = sel_i[9];
  assign data_o[10] = (N10)? data1_i[10] : 
                      (N42)? data0_i[10] : 1'b0;
  assign N10 = sel_i[10];
  assign data_o[11] = (N11)? data1_i[11] : 
                      (N43)? data0_i[11] : 1'b0;
  assign N11 = sel_i[11];
  assign data_o[12] = (N12)? data1_i[12] : 
                      (N44)? data0_i[12] : 1'b0;
  assign N12 = sel_i[12];
  assign data_o[13] = (N13)? data1_i[13] : 
                      (N45)? data0_i[13] : 1'b0;
  assign N13 = sel_i[13];
  assign data_o[14] = (N14)? data1_i[14] : 
                      (N46)? data0_i[14] : 1'b0;
  assign N14 = sel_i[14];
  assign data_o[15] = (N15)? data1_i[15] : 
                      (N47)? data0_i[15] : 1'b0;
  assign N15 = sel_i[15];
  assign data_o[16] = (N16)? data1_i[16] : 
                      (N48)? data0_i[16] : 1'b0;
  assign N16 = sel_i[16];
  assign data_o[17] = (N17)? data1_i[17] : 
                      (N49)? data0_i[17] : 1'b0;
  assign N17 = sel_i[17];
  assign data_o[18] = (N18)? data1_i[18] : 
                      (N50)? data0_i[18] : 1'b0;
  assign N18 = sel_i[18];
  assign data_o[19] = (N19)? data1_i[19] : 
                      (N51)? data0_i[19] : 1'b0;
  assign N19 = sel_i[19];
  assign data_o[20] = (N20)? data1_i[20] : 
                      (N52)? data0_i[20] : 1'b0;
  assign N20 = sel_i[20];
  assign data_o[21] = (N21)? data1_i[21] : 
                      (N53)? data0_i[21] : 1'b0;
  assign N21 = sel_i[21];
  assign data_o[22] = (N22)? data1_i[22] : 
                      (N54)? data0_i[22] : 1'b0;
  assign N22 = sel_i[22];
  assign data_o[23] = (N23)? data1_i[23] : 
                      (N55)? data0_i[23] : 1'b0;
  assign N23 = sel_i[23];
  assign data_o[24] = (N24)? data1_i[24] : 
                      (N56)? data0_i[24] : 1'b0;
  assign N24 = sel_i[24];
  assign data_o[25] = (N25)? data1_i[25] : 
                      (N57)? data0_i[25] : 1'b0;
  assign N25 = sel_i[25];
  assign data_o[26] = (N26)? data1_i[26] : 
                      (N58)? data0_i[26] : 1'b0;
  assign N26 = sel_i[26];
  assign data_o[27] = (N27)? data1_i[27] : 
                      (N59)? data0_i[27] : 1'b0;
  assign N27 = sel_i[27];
  assign data_o[28] = (N28)? data1_i[28] : 
                      (N60)? data0_i[28] : 1'b0;
  assign N28 = sel_i[28];
  assign data_o[29] = (N29)? data1_i[29] : 
                      (N61)? data0_i[29] : 1'b0;
  assign N29 = sel_i[29];
  assign data_o[30] = (N30)? data1_i[30] : 
                      (N62)? data0_i[30] : 1'b0;
  assign N30 = sel_i[30];
  assign data_o[31] = (N31)? data1_i[31] : 
                      (N63)? data0_i[31] : 1'b0;
  assign N31 = sel_i[31];
  assign N32 = ~sel_i[0];
  assign N33 = ~sel_i[1];
  assign N34 = ~sel_i[2];
  assign N35 = ~sel_i[3];
  assign N36 = ~sel_i[4];
  assign N37 = ~sel_i[5];
  assign N38 = ~sel_i[6];
  assign N39 = ~sel_i[7];
  assign N40 = ~sel_i[8];
  assign N41 = ~sel_i[9];
  assign N42 = ~sel_i[10];
  assign N43 = ~sel_i[11];
  assign N44 = ~sel_i[12];
  assign N45 = ~sel_i[13];
  assign N46 = ~sel_i[14];
  assign N47 = ~sel_i[15];
  assign N48 = ~sel_i[16];
  assign N49 = ~sel_i[17];
  assign N50 = ~sel_i[18];
  assign N51 = ~sel_i[19];
  assign N52 = ~sel_i[20];
  assign N53 = ~sel_i[21];
  assign N54 = ~sel_i[22];
  assign N55 = ~sel_i[23];
  assign N56 = ~sel_i[24];
  assign N57 = ~sel_i[25];
  assign N58 = ~sel_i[26];
  assign N59 = ~sel_i[27];
  assign N60 = ~sel_i[28];
  assign N61 = ~sel_i[29];
  assign N62 = ~sel_i[30];
  assign N63 = ~sel_i[31];

endmodule



module bsg_mux_bitwise
(
  data0_i,
  data1_i,
  sel_i,
  data_o
);

  input [31:0] data0_i;
  input [31:0] data1_i;
  input [31:0] sel_i;
  output [31:0] data_o;
  wire [31:0] data_o;

  bsg_mux_segmented_segments_p32_segment_width_p1
  mux_segmented
  (
    .data0_i(data0_i),
    .data1_i(data1_i),
    .sel_i(sel_i),
    .data_o(data_o)
  );


endmodule

