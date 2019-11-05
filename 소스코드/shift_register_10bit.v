module shift_register_10bit(CLK,RST,Din,B0,B1,B9,B8,Input_D);

input CLK;
input RST;
input Din;
output B0;
output B1;
output B9;
output B8;
output [5:0] Input_D;

wire  w15;
wire  w16;
wire  w52;
wire  w28;
wire  w29;
wire  w30;
wire  w31;
wire [5:0] b23;
wire  w25;
wire  w37;
wire  w40;
wire  w33;
wire  w27;
wire  w41;
wire  w42;
wire  w43;
wire  w26;
wire  w24;
wire  w44;
wire  b23_0;
wire  b23_5;
wire  b23_4;
wire  b23_3;
wire  b23_2;
wire  b23_1;

assign w16 = CLK;
assign w15 = RST;
assign w37 = Din;
assign B0 = w25;
assign B1 = w40;
assign B9 = w24;
assign B8 = w44;
assign Input_D = b23;

assign b23[5] = b23_5;
assign b23[4] = b23_4;
assign b23[3] = b23_3;
assign b23[2] = b23_2;
assign b23[1] = b23_1;
assign b23[0] = b23_0;

PNU_DFF
     FF3 (
      .reset(w15),
      .clock(w16),
      .Q(w25),
      .D(w37));

PNU_DFF
     FF2 (
      .reset(w15),
      .clock(w16),
      .D(w25),
      .Q(w40));

PNU_DFF
     s2 (
      .reset(w15),
      .clock(w16),
      .D(w40),
      .Q(w33));

PNU_DFF
     s4 (
      .reset(w15),
      .clock(w16),
      .D(w27),
      .Q(w41));

PNU_DFF
     s5 (
      .reset(w15),
      .clock(w16),
      .D(w41),
      .Q(w42));

PNU_DFF
     s8 (
      .reset(w15),
      .clock(w16),
      .D(w26),
      .Q(w44));

PNU_DFF
     s9 (
      .reset(w15),
      .clock(w16),
      .Q(w24),
      .D(w44));

PNU_DFF
     s6 (
      .reset(w15),
      .clock(w16),
      .D(w42),
      .Q(w43));

PNU_DFF
     s7 (
      .reset(w15),
      .clock(w16),
      .D(w43),
      .Q(w26));

PNU_AND2
     s12 (
      .i2(w28),
      .o1(b23_4),
      .i1(w40));

PNU_AND2
     s14 (
      .i2(w29),
      .o1(b23_3),
      .i1(w27));

PNU_AND2
     s16 (
      .i2(w30),
      .o1(b23_2),
      .i1(w42));

PNU_AND2
     s18 (
      .i2(w31),
      .o1(b23_1),
      .i1(w26));

PNU_AND2
     s10 (
      .i2(w52),
      .o1(b23_5),
      .i1(w37));

PNU_NOT
     s32 (
      .o1(w52),
      .i1(w25));

PNU_NOT
     s17 (
      .o1(w28),
      .i1(w33));

PNU_NOT
     s19 (
      .o1(w29),
      .i1(w41));

PNU_NOT
     s20 (
      .o1(w30),
      .i1(w43));

PNU_NOT
     s21 (
      .o1(w31),
      .i1(w44));

PNU_ZERO
     s22 (
      .o1(b23_0));

PNU_DFF
     s23 (
      .reset(w15),
      .clock(w16),
      .D(w33),
      .Q(w27));

endmodule

