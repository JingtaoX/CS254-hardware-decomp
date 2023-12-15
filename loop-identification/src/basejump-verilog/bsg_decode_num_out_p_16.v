

module top
(
  i,
  o,
  i1, // added for decompiling
  o1 // added for decompiling
);

  input [3:0] i;
  output [15:0] o;
  input [3:0] i1; // added for decompiling
  output [15:0] o1; // added for decompiling

  bsg_decode
  wrapper
  (
    .i(i),
    .o(o)
  );

  bsg_decode
  wrapper1
  (
    .i(i1), // added for decompiling
    .o(o1) // added for decompiling
  );
  

endmodule



module bsg_decode
(
  i,
  o
);

  input [3:0] i;
  output [15:0] o;
  wire [15:0] o;
  assign o = { 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1 } << i;

endmodule

