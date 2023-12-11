

module top
(
  i,
  v_i,
  o
);

  input [4:0] i;
  output [31:0] o;
  output [31:0] o1; // added for decompiling
  input v_i;
  input v_i1; // added for decompiling

  bsg_decode_with_v
  wrapper
  (
    .i(i),
    .o(o),
    .v_i(v_i)
  );

  bsg_decode_with_v
  wrapper1
  (
    .i(i),
    .o(o1), // added for decompiling
    .v_i(v_i1) // added for decompiling
  );

endmodule



module bsg_decode_num_out_p32
(
  i,
  o
);

  input [4:0] i;
  output [31:0] o;
  wire [31:0] o;
  assign o = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << i;

endmodule



module bsg_decode_with_v
(
  i,
  v_i,
  o
);

  input [4:0] i;
  output [31:0] o;
  input v_i;
  wire [31:0] o,lo;

  bsg_decode_num_out_p32
  bd
  (
    .i(i),
    .o(lo)
  );

  assign o[31] = v_i & lo[31];
  assign o[30] = v_i & lo[30];
  assign o[29] = v_i & lo[29];
  assign o[28] = v_i & lo[28];
  assign o[27] = v_i & lo[27];
  assign o[26] = v_i & lo[26];
  assign o[25] = v_i & lo[25];
  assign o[24] = v_i & lo[24];
  assign o[23] = v_i & lo[23];
  assign o[22] = v_i & lo[22];
  assign o[21] = v_i & lo[21];
  assign o[20] = v_i & lo[20];
  assign o[19] = v_i & lo[19];
  assign o[18] = v_i & lo[18];
  assign o[17] = v_i & lo[17];
  assign o[16] = v_i & lo[16];
  assign o[15] = v_i & lo[15];
  assign o[14] = v_i & lo[14];
  assign o[13] = v_i & lo[13];
  assign o[12] = v_i & lo[12];
  assign o[11] = v_i & lo[11];
  assign o[10] = v_i & lo[10];
  assign o[9] = v_i & lo[9];
  assign o[8] = v_i & lo[8];
  assign o[7] = v_i & lo[7];
  assign o[6] = v_i & lo[6];
  assign o[5] = v_i & lo[5];
  assign o[4] = v_i & lo[4];
  assign o[3] = v_i & lo[3];
  assign o[2] = v_i & lo[2];
  assign o[1] = v_i & lo[1];
  assign o[0] = v_i & lo[0];

endmodule

