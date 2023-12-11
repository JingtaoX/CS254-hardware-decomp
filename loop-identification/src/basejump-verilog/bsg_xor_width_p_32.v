

module top
(
  a_i,
  b_i,
  o
);

  input [31:0] a_i;
  input [31:0] b_i;
  output [31:0] o;
  input a_i1; // added for decompiling
  output [31:0] o1; // added for decompiling


  bsg_xor
  wrapper
  (
    .a_i(a_i),
    .b_i(b_i),
    .o(o)
  );

  bsg_xor
  wrapper1
  (
    .a_i(a_i1), // added for decompiling
    .b_i(b_i), 
    .o(o1) // added for decompiling
  );


endmodule



module bsg_xor
(
  a_i,
  b_i,
  o
);

  input [31:0] a_i;
  input [31:0] b_i;
  output [31:0] o;
  wire [31:0] o;
  assign o[31] = a_i[31] ^ b_i[31];
  assign o[30] = a_i[30] ^ b_i[30];
  assign o[29] = a_i[29] ^ b_i[29];
  assign o[28] = a_i[28] ^ b_i[28];
  assign o[27] = a_i[27] ^ b_i[27];
  assign o[26] = a_i[26] ^ b_i[26];
  assign o[25] = a_i[25] ^ b_i[25];
  assign o[24] = a_i[24] ^ b_i[24];
  assign o[23] = a_i[23] ^ b_i[23];
  assign o[22] = a_i[22] ^ b_i[22];
  assign o[21] = a_i[21] ^ b_i[21];
  assign o[20] = a_i[20] ^ b_i[20];
  assign o[19] = a_i[19] ^ b_i[19];
  assign o[18] = a_i[18] ^ b_i[18];
  assign o[17] = a_i[17] ^ b_i[17];
  assign o[16] = a_i[16] ^ b_i[16];
  assign o[15] = a_i[15] ^ b_i[15];
  assign o[14] = a_i[14] ^ b_i[14];
  assign o[13] = a_i[13] ^ b_i[13];
  assign o[12] = a_i[12] ^ b_i[12];
  assign o[11] = a_i[11] ^ b_i[11];
  assign o[10] = a_i[10] ^ b_i[10];
  assign o[9] = a_i[9] ^ b_i[9];
  assign o[8] = a_i[8] ^ b_i[8];
  assign o[7] = a_i[7] ^ b_i[7];
  assign o[6] = a_i[6] ^ b_i[6];
  assign o[5] = a_i[5] ^ b_i[5];
  assign o[4] = a_i[4] ^ b_i[4];
  assign o[3] = a_i[3] ^ b_i[3];
  assign o[2] = a_i[2] ^ b_i[2];
  assign o[1] = a_i[1] ^ b_i[1];
  assign o[0] = a_i[0] ^ b_i[0];

endmodule

