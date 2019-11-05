module Input_PW(Key,rst,IB0,IB1,IB2,IB3);

input [3:0] Key;
input rst;
output [3:0] IB0;
output [3:0] IB1;
output [3:0] IB2;
output [3:0] IB3;

wire  w9;
wire [3:0] b7;
wire [3:0] b8;
wire [3:0] b9;
wire [3:0] b10;
wire [3:0] b26;
wire  w35;
wire  b7_0;
wire  b7_1;
wire  b7_2;
wire  b7_3;
wire  b8_0;
wire  b8_1;
wire  b8_2;
wire  b8_3;
wire  b9_0;
wire  b9_1;
wire  b9_2;
wire  b9_3;
wire  b10_0;
wire  b10_1;
wire  b10_2;
wire  b10_3;
wire  b26_3_w28;
wire  b26_2_w30;
wire  b26_1_w32;
wire  b26_0_w34;
wire  b26_3_w33;
wire  b26_2_w31;
wire  b26_1_w36;
wire  b26_0_w37;

assign b26 = Key;
assign w9 = rst;
assign IB0 = b7;
assign IB1 = b8;
assign IB2 = b9;
assign IB3 = b10;

assign b7[3] = b7_3;
assign b7[2] = b7_2;
assign b7[1] = b7_1;
assign b7[0] = b7_0;
assign b8[3] = b8_3;
assign b8[2] = b8_2;
assign b8[1] = b8_1;
assign b8[0] = b8_0;
assign b9[3] = b9_3;
assign b9[2] = b9_2;
assign b9[1] = b9_1;
assign b9[0] = b9_0;
assign b10[3] = b10_3;
assign b10[2] = b10_2;
assign b10[1] = b10_1;
assign b10[0] = b10_0;

assign b26_3_w28 = {b26[3]};
assign b26_2_w30 = {b26[2]};
assign b26_1_w32 = {b26[1]};
assign b26_0_w34 = {b26[0]};
assign b26_3_w33 = {b26[3]};
assign b26_2_w31 = {b26[2]};
assign b26_1_w36 = {b26[1]};
assign b26_0_w37 = {b26[0]};

shift_register_4bit
     s0 (
      .RST(w9),
      .B0(b7_0),
      .B1(b8_0),
      .B2(b9_0),
      .B3(b10_0),
      .Din(b26_0_w34),
      .CLK(w35));

shift_register_4bit
     s1 (
      .RST(w9),
      .B0(b7_1),
      .B1(b8_1),
      .B2(b9_1),
      .B3(b10_1),
      .Din(b26_1_w32),
      .CLK(w35));

shift_register_4bit
     s2 (
      .RST(w9),
      .B0(b7_2),
      .B1(b8_2),
      .B2(b9_2),
      .B3(b10_2),
      .Din(b26_2_w30),
      .CLK(w35));

shift_register_4bit
     s3 (
      .RST(w9),
      .B0(b7_3),
      .B1(b8_3),
      .B2(b9_3),
      .B3(b10_3),
      .Din(b26_3_w28),
      .CLK(w35));

PNU_OR4
     s4 (
      .o1(w35),
      .i4(b26_3_w33),
      .i3(b26_2_w31),
      .i2(b26_1_w36),
      .i1(b26_0_w37));

endmodule

