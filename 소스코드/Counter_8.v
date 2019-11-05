module Counter_8(clk,rst,Out);

input clk;
input rst;
output [2:0] Out;

wire  w11;
wire  w12;
wire  w13;
wire  w15;
wire  w18;
wire  w19;
wire  w26;
wire  w28;
wire [2:0] b21;
wire  w22;
wire  w29;
wire  w14;
wire  b21_1;
wire  b21_1_w20;
wire  b21_0;
wire  b21_0_w17;
wire  b21_2;
wire  b21_2_w25;

assign w22 = clk;
assign w29 = rst;
assign Out = b21;

assign b21[2] = b21_2;
assign b21[1] = b21_1;
assign b21[0] = b21_0;

assign b21_1_w20 = {b21[1]};
assign b21_0_w17 = {b21[0]};
assign b21_2_w25 = {b21[2]};

PNU_DFF
     s1 (
      .D(w28),
      .clock(w22),
      .reset(w29),
      .Q(b21_2));

PNU_DFF
     s2 (
      .clock(w22),
      .reset(w29),
      .Q(b21_1),
      .D(w14));

PNU_AND2
     s7 (
      .i2(w11),
      .o1(w15),
      .i1(b21_2_w25));

PNU_AND2
     s8 (
      .i2(w12),
      .o1(w18),
      .i1(b21_2_w25));

PNU_NOT
     s9 (
      .o1(w11),
      .i1(b21_1_w20));

PNU_NOT
     s10 (
      .o1(w12),
      .i1(b21_0_w17));

PNU_AND3
     s11 (
      .i1(w13),
      .o1(w19),
      .i2(b21_1_w20),
      .i3(b21_0_w17));

PNU_NOT
     s12 (
      .o1(w13),
      .i1(b21_2_w25));

PNU_OR3
     s13 (
      .i1(w15),
      .i2(w18),
      .i3(w19),
      .o1(w28));

PNU_XOR2
     s15 (
      .i1(b21_1_w20),
      .i2(b21_0_w17),
      .o1(w14));

PNU_NOT
     s18 (
      .o1(w26),
      .i1(b21_0_w17));

PNU_DFF
     s3 (
      .D(w26),
      .clock(w22),
      .reset(w29),
      .Q(b21_0));

endmodule

