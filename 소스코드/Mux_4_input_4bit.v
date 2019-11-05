module Mux_4_input_4bit(B0,B1,B2,B3,S,In_B);

input [3:0] B0;
input [3:0] B1;
input [3:0] B2;
input [3:0] B3;
input [1:0] S;
output [3:0] In_B;

wire [3:0] b0;
wire [3:0] b1;
wire [3:0] b2;
wire [3:0] b3;
wire [1:0] b20;
wire [3:0] b23;
wire  b0_0_w4;
wire  b1_0_w5;
wire  b2_0_w6;
wire  b3_0_w7;
wire  b0_1_w8;
wire  b1_1_w9;
wire  b2_1_w10;
wire  b3_1_w11;
wire  b0_2_w12;
wire  b1_2_w13;
wire  b2_2_w14;
wire  b3_2_w15;
wire  b0_3_w16;
wire  b1_3_w17;
wire  b2_3_w18;
wire  b3_3_w19;
wire  b20_0_w23;
wire  b20_1_w22;
wire  b23_0;
wire  b23_1;
wire  b23_2;
wire  b23_3;

assign b0 = B0;
assign b1 = B1;
assign b2 = B2;
assign b3 = B3;
assign b20 = S;
assign In_B = b23;

assign b23[3] = b23_3;
assign b23[2] = b23_2;
assign b23[1] = b23_1;
assign b23[0] = b23_0;

assign b0_0_w4 = {b0[0]};
assign b1_0_w5 = {b1[0]};
assign b2_0_w6 = {b2[0]};
assign b3_0_w7 = {b3[0]};
assign b0_1_w8 = {b0[1]};
assign b1_1_w9 = {b1[1]};
assign b2_1_w10 = {b2[1]};
assign b3_1_w11 = {b3[1]};
assign b0_2_w12 = {b0[2]};
assign b1_2_w13 = {b1[2]};
assign b2_2_w14 = {b2[2]};
assign b3_2_w15 = {b3[2]};
assign b0_3_w16 = {b0[3]};
assign b1_3_w17 = {b1[3]};
assign b2_3_w18 = {b2[3]};
assign b3_3_w19 = {b3[3]};
assign b20_0_w23 = {b20[0]};
assign b20_1_w22 = {b20[1]};

PNU_MUX4
     s0 (
      .i1(b0_0_w4),
      .i2(b1_0_w5),
      .i3(b2_0_w6),
      .i4(b3_0_w7),
      .e2(b20_0_w23),
      .e1(b20_1_w22),
      .o1(b23_0));

PNU_MUX4
     s1 (
      .i1(b0_1_w8),
      .i2(b1_1_w9),
      .i3(b2_1_w10),
      .i4(b3_1_w11),
      .e2(b20_0_w23),
      .e1(b20_1_w22),
      .o1(b23_1));

PNU_MUX4
     s2 (
      .i1(b0_2_w12),
      .i2(b1_2_w13),
      .i3(b2_2_w14),
      .i4(b3_2_w15),
      .e2(b20_0_w23),
      .e1(b20_1_w22),
      .o1(b23_2));

PNU_MUX4
     s3 (
      .i1(b0_3_w16),
      .i2(b1_3_w17),
      .i3(b2_3_w18),
      .i4(b3_3_w19),
      .e2(b20_0_w23),
      .e1(b20_1_w22),
      .o1(b23_3));

endmodule

