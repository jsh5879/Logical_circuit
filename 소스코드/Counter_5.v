module Counter_5(clk,rst,Out);

input clk;
input rst;
output [2:0] Out;

wire  w13;
wire  w26;
wire  w32;
wire  w30;
wire [2:0] b21;
wire  w10;
wire  w11;
wire  w15;
wire  w17;
wire  w18;
wire  w19;
wire  w21;
wire  w22;
wire  b21_1;
wire  b21_1_w20;
wire  b21_2;
wire  b21_2_w12;
wire  b21_0;
wire  b21_0_w16;

assign w32 = clk;
assign w30 = rst;
assign Out = b21;

assign b21[2] = b21_2;
assign b21[1] = b21_1;
assign b21[0] = b21_0;

assign b21_1_w20 = {b21[1]};
assign b21_2_w12 = {b21[2]};
assign b21_0_w16 = {b21[0]};

PNU_DFF
     s1 (
      .clock(w32),
      .reset(w30),
      .D(w17),
      .Q(b21_2));

PNU_DFF
     s2 (
      .clock(w32),
      .reset(w30),
      .Q(b21_1),
      .D(w22));

PNU_AND3
     s11 (
      .i1(w13),
      .i2(b21_1_w20),
      .o1(w10),
      .i3(b21_0_w16));

PNU_NOT
     s12 (
      .o1(w13),
      .i1(b21_2_w12));

PNU_XOR2
     s15 (
      .i1(b21_1_w20),
      .i2(b21_0_w16),
      .o1(w21));

PNU_NOT
     s18 (
      .o1(w26),
      .i1(b21_0_w16));

PNU_DFF
     s3 (
      .D(w26),
      .clock(w32),
      .reset(w30),
      .Q(b21_0));

PNU_OR2
     s7 (
      .i2(w10),
      .i1(w11),
      .o1(w17));

PNU_AND2
     s8 (
      .o1(w11),
      .i2(w15),
      .i1(b21_2_w12));

PNU_NOT
     s9 (
      .o1(w15),
      .i1(b21_0_w16));

PNU_AND2
     s10 (
      .i1(b21_2_w12),
      .i2(b21_0_w16),
      .o1(w18));

PNU_NOT
     s13 (
      .i1(w18),
      .o1(w19));

PNU_AND2
     s14 (
      .i2(w19),
      .i1(w21),
      .o1(w22));

endmodule

