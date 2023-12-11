module mux2_gatestack
   (input [16-1:0] i0
    , input [16-1:0] i1
    , input [16-1:0] i2
    , output [16-1:0] o
    );

   genvar j;

   for (j = 0; j < 16; j=j+1) begin
      assign o[j] = i2[j] ? i1[j] : i0[j];
   end

endmodule
