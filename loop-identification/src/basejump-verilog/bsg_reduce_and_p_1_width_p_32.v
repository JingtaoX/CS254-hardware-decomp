

module top
(
  i,
  o
);

  input [31:0] i;
  output o;
  output o1; // added for decompiling

  bsg_reduce
  wrapper
  (
    .i(i),
    .o(o)
  );

  bsg_reduce
  wrapper1
  (
    .i(i),
    .o(o1) // added for decompiling
  );


endmodule



module bsg_reduce
(
  i,
  o
);

  input [31:0] i;
  output o;
  wire o,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29;
  assign o = N29 & i[0];
  assign N29 = N28 & i[1];
  assign N28 = N27 & i[2];
  assign N27 = N26 & i[3];
  assign N26 = N25 & i[4];
  assign N25 = N24 & i[5];
  assign N24 = N23 & i[6];
  assign N23 = N22 & i[7];
  assign N22 = N21 & i[8];
  assign N21 = N20 & i[9];
  assign N20 = N19 & i[10];
  assign N19 = N18 & i[11];
  assign N18 = N17 & i[12];
  assign N17 = N16 & i[13];
  assign N16 = N15 & i[14];
  assign N15 = N14 & i[15];
  assign N14 = N13 & i[16];
  assign N13 = N12 & i[17];
  assign N12 = N11 & i[18];
  assign N11 = N10 & i[19];
  assign N10 = N9 & i[20];
  assign N9 = N8 & i[21];
  assign N8 = N7 & i[22];
  assign N7 = N6 & i[23];
  assign N6 = N5 & i[24];
  assign N5 = N4 & i[25];
  assign N4 = N3 & i[26];
  assign N3 = N2 & i[27];
  assign N2 = N1 & i[28];
  assign N1 = N0 & i[29];
  assign N0 = i[31] & i[30];

endmodule

