module Mux_2_input_2bit(Input_1,Input_2,S,Out);

input [1:0] Input_1;
input [1:0] Input_2;
input S;
output [1:0] Out;

wire [1:0] b0;
wire [1:0] b1;
wire  w7;
wire [1:0] b7;
wire  b0_0_w2;
wire  b1_0_w3;
wire  b0_1_w6;
wire  b1_1_w5;
wire  b7_0;
wire  b7_1;

assign b0 = Input_1;
assign b1 = Input_2;
assign w7 = S;
assign Out = b7;

assign b7[1] = b7_1;
assign b7[0] = b7_0;

assign b0_0_w2 = {b0[0]};
assign b1_0_w3 = {b1[0]};
assign b0_1_w6 = {b0[1]};
assign b1_1_w5 = {b1[1]};

PNU_MUX2
     s0 (
      .i1(b0_0_w2),
      .i2(b1_0_w3),
      .e1(w7),
      .o1(b7_0));

PNU_MUX2
     s1 (
      .i1(b0_1_w6),
      .i2(b1_1_w5),
      .e1(w7),
      .o1(b7_1));

endmodule

