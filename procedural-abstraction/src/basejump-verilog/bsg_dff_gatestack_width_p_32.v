

module top
(
  i0,
  i1,
  o,
  o1 // added for decompiling
);

  input [31:0] i0;
  input [31:0] i1;
  output [31:0] o;
  output [31:0] o1; // added for decompiling

  bsg_dff_gatestack
  wrapper
  (
    .i0(i0),
    .i1(i1),
    .o(o)
  );

  bsg_dff_gatestack
  wrapper1
  (
    .i0(i0),
    .i1(i1),
    .o(o1) // added for decompiling
  );


endmodule



module bsg_dff_gatestack
(
  i0,
  i1,
  o
);

  input [31:0] i0;
  input [31:0] i1;
  output [31:0] o;
  wire [31:0] o;
  reg o_0_sv2v_reg,o_1_sv2v_reg,o_2_sv2v_reg,o_3_sv2v_reg,o_4_sv2v_reg,o_5_sv2v_reg,
  o_6_sv2v_reg,o_7_sv2v_reg,o_8_sv2v_reg,o_9_sv2v_reg,o_10_sv2v_reg,o_11_sv2v_reg,
  o_12_sv2v_reg,o_13_sv2v_reg,o_14_sv2v_reg,o_15_sv2v_reg,o_16_sv2v_reg,
  o_17_sv2v_reg,o_18_sv2v_reg,o_19_sv2v_reg,o_20_sv2v_reg,o_21_sv2v_reg,o_22_sv2v_reg,
  o_23_sv2v_reg,o_24_sv2v_reg,o_25_sv2v_reg,o_26_sv2v_reg,o_27_sv2v_reg,o_28_sv2v_reg,
  o_29_sv2v_reg,o_30_sv2v_reg,o_31_sv2v_reg;
  assign o[0] = o_0_sv2v_reg;
  assign o[1] = o_1_sv2v_reg;
  assign o[2] = o_2_sv2v_reg;
  assign o[3] = o_3_sv2v_reg;
  assign o[4] = o_4_sv2v_reg;
  assign o[5] = o_5_sv2v_reg;
  assign o[6] = o_6_sv2v_reg;
  assign o[7] = o_7_sv2v_reg;
  assign o[8] = o_8_sv2v_reg;
  assign o[9] = o_9_sv2v_reg;
  assign o[10] = o_10_sv2v_reg;
  assign o[11] = o_11_sv2v_reg;
  assign o[12] = o_12_sv2v_reg;
  assign o[13] = o_13_sv2v_reg;
  assign o[14] = o_14_sv2v_reg;
  assign o[15] = o_15_sv2v_reg;
  assign o[16] = o_16_sv2v_reg;
  assign o[17] = o_17_sv2v_reg;
  assign o[18] = o_18_sv2v_reg;
  assign o[19] = o_19_sv2v_reg;
  assign o[20] = o_20_sv2v_reg;
  assign o[21] = o_21_sv2v_reg;
  assign o[22] = o_22_sv2v_reg;
  assign o[23] = o_23_sv2v_reg;
  assign o[24] = o_24_sv2v_reg;
  assign o[25] = o_25_sv2v_reg;
  assign o[26] = o_26_sv2v_reg;
  assign o[27] = o_27_sv2v_reg;
  assign o[28] = o_28_sv2v_reg;
  assign o[29] = o_29_sv2v_reg;
  assign o[30] = o_30_sv2v_reg;
  assign o[31] = o_31_sv2v_reg;

  always @(posedge i1[0]) begin
    if(1'b1) begin
      o_0_sv2v_reg <= i0[0];
    end 
  end


  always @(posedge i1[1]) begin
    if(1'b1) begin
      o_1_sv2v_reg <= i0[1];
    end 
  end


  always @(posedge i1[2]) begin
    if(1'b1) begin
      o_2_sv2v_reg <= i0[2];
    end 
  end


  always @(posedge i1[3]) begin
    if(1'b1) begin
      o_3_sv2v_reg <= i0[3];
    end 
  end


  always @(posedge i1[4]) begin
    if(1'b1) begin
      o_4_sv2v_reg <= i0[4];
    end 
  end


  always @(posedge i1[5]) begin
    if(1'b1) begin
      o_5_sv2v_reg <= i0[5];
    end 
  end


  always @(posedge i1[6]) begin
    if(1'b1) begin
      o_6_sv2v_reg <= i0[6];
    end 
  end


  always @(posedge i1[7]) begin
    if(1'b1) begin
      o_7_sv2v_reg <= i0[7];
    end 
  end


  always @(posedge i1[8]) begin
    if(1'b1) begin
      o_8_sv2v_reg <= i0[8];
    end 
  end


  always @(posedge i1[9]) begin
    if(1'b1) begin
      o_9_sv2v_reg <= i0[9];
    end 
  end


  always @(posedge i1[10]) begin
    if(1'b1) begin
      o_10_sv2v_reg <= i0[10];
    end 
  end


  always @(posedge i1[11]) begin
    if(1'b1) begin
      o_11_sv2v_reg <= i0[11];
    end 
  end


  always @(posedge i1[12]) begin
    if(1'b1) begin
      o_12_sv2v_reg <= i0[12];
    end 
  end


  always @(posedge i1[13]) begin
    if(1'b1) begin
      o_13_sv2v_reg <= i0[13];
    end 
  end


  always @(posedge i1[14]) begin
    if(1'b1) begin
      o_14_sv2v_reg <= i0[14];
    end 
  end


  always @(posedge i1[15]) begin
    if(1'b1) begin
      o_15_sv2v_reg <= i0[15];
    end 
  end


  always @(posedge i1[16]) begin
    if(1'b1) begin
      o_16_sv2v_reg <= i0[16];
    end 
  end


  always @(posedge i1[17]) begin
    if(1'b1) begin
      o_17_sv2v_reg <= i0[17];
    end 
  end


  always @(posedge i1[18]) begin
    if(1'b1) begin
      o_18_sv2v_reg <= i0[18];
    end 
  end


  always @(posedge i1[19]) begin
    if(1'b1) begin
      o_19_sv2v_reg <= i0[19];
    end 
  end


  always @(posedge i1[20]) begin
    if(1'b1) begin
      o_20_sv2v_reg <= i0[20];
    end 
  end


  always @(posedge i1[21]) begin
    if(1'b1) begin
      o_21_sv2v_reg <= i0[21];
    end 
  end


  always @(posedge i1[22]) begin
    if(1'b1) begin
      o_22_sv2v_reg <= i0[22];
    end 
  end


  always @(posedge i1[23]) begin
    if(1'b1) begin
      o_23_sv2v_reg <= i0[23];
    end 
  end


  always @(posedge i1[24]) begin
    if(1'b1) begin
      o_24_sv2v_reg <= i0[24];
    end 
  end


  always @(posedge i1[25]) begin
    if(1'b1) begin
      o_25_sv2v_reg <= i0[25];
    end 
  end


  always @(posedge i1[26]) begin
    if(1'b1) begin
      o_26_sv2v_reg <= i0[26];
    end 
  end


  always @(posedge i1[27]) begin
    if(1'b1) begin
      o_27_sv2v_reg <= i0[27];
    end 
  end


  always @(posedge i1[28]) begin
    if(1'b1) begin
      o_28_sv2v_reg <= i0[28];
    end 
  end


  always @(posedge i1[29]) begin
    if(1'b1) begin
      o_29_sv2v_reg <= i0[29];
    end 
  end


  always @(posedge i1[30]) begin
    if(1'b1) begin
      o_30_sv2v_reg <= i0[30];
    end 
  end


  always @(posedge i1[31]) begin
    if(1'b1) begin
      o_31_sv2v_reg <= i0[31];
    end 
  end


endmodule

