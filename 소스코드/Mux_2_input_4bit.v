module Mux_2_input_4bit(Input_1,Input_2,Out,S);

input [3:0] Input_1;
input [3:0] Input_2;
output [3:0] Out;
input S;

wire [3:0] b12;
wire [3:0] b10;
wire [3:0] b14;
wire  w14;
wire  b12_0_w2;
wire  b10_0_w3;
wire  b12_1_w6;
wire  b10_1_w5;
wire  b14_0;
wire  b14_1;
wire  b12_2_w11;
wire  b10_2_w12;
wire  b14_2;
wire  b12_3_w15;
wire  b10_3_w16;
wire  b14_3;

assign b12 = Input_1;
assign b10 = Input_2;
assign Out = b14;
assign w14 = S;

assign b14[3] = b14_3;
assign b14[2] = b14_2;
assign b14[1] = b14_1;
assign b14[0] = b14_0;

assign b12_0_w2 = {b12[0]};
assign b10_0_w3 = {b10[0]};
assign b12_1_w6 = {b12[1]};
assign b10_1_w5 = {b10[1]};
assign b12_2_w11 = {b12[2]};
assign b10_2_w12 = {b10[2]};
assign b12_3_w15 = {b12[3]};
assign b10_3_w16 = {b10[3]};

PNU_MUX2
     s0 (
      .i1(b12_0_w2),
      .i2(b10_0_w3),
      .o1(b14_0),
      .e1(w14));

PNU_MUX2
     s1 (
      .i1(b12_1_w6),
      .i2(b10_1_w5),
      .o1(b14_1),
      .e1(w14));

PNU_MUX2
     s2 (
      .i1(b12_2_w11),
      .i2(b10_2_w12),
      .o1(b14_2),
      .e1(w14));

PNU_MUX2
     s3 (
      .e1(w14),
      .i1(b12_3_w15),
      .i2(b10_3_w16),
      .o1(b14_3));

endmodule

