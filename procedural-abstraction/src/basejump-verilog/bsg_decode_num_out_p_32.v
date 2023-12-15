

module top
(
  i,
  o,
  o1, // added for decompiling
);

  input [4:0] i;
  output [31:0] o;
  output [31:0] o1; // added for decompiling

  bsg_decode
  wrapper
  (
    .i(i),
    .o(o)
  );

  bsg_decode
  wrapper1
  (
    .i(i),
    .o(o1) // added for decompiling
  );


endmodule



module bsg_decode
(
  i,
  o
);

  input [4:0] i;
  output [31:0] o;
  wire [31:0] o;
  assign o = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << i;

endmodule

