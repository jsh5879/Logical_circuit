module decimal_cnt(b0,b1,b2,b3,star,sharp,Key,chk);

output b0;
output b1;
output b2;
output b3;
output star;
output sharp;
input [11:0] Key;
output chk;

wire  w22;
wire  w24;
wire  w18;
wire  w25;
wire  w21;
wire  w30;
wire  w31;
wire [11:0] b27;
wire  w43;
wire  w44;
wire  w45;
wire  w27;
wire  w28;
wire  w29;
wire  w46;
wire  w47;
wire  b27_0_w34;
wire  b27_1_w35;
wire  b27_2_w36;
wire  b27_3_w37;
wire  b27_4_w23;
wire  b27_5_w38;
wire  b27_6_w39;
wire  b27_7_w40;
wire  b27_8_w41;
wire  b27_9_w42;

assign b0 = w47;
assign b1 = w29;
assign b2 = w28;
assign b3 = w27;
assign star = b27[10];
assign sharp = b27[11];
assign b27 = Key;
assign chk = w46;

assign b27_0_w34 = {b27[0]};
assign b27_1_w35 = {b27[1]};
assign b27_2_w36 = {b27[2]};
assign b27_3_w37 = {b27[3]};
assign b27_4_w23 = {b27[4]};
assign b27_5_w38 = {b27[5]};
assign b27_6_w39 = {b27[6]};
assign b27_7_w40 = {b27[7]};
assign b27_8_w41 = {b27[8]};
assign b27_9_w42 = {b27[9]};

PNU_OR2
     s0 (
      .o1(w18),
      .i1(b27_8_w41),
      .i2(b27_9_w42));

PNU_OR4
     s4 (
      .o1(w24),
      .i1(b27_4_w23),
      .i2(b27_5_w38),
      .i3(b27_6_w39),
      .i4(b27_7_w40));

PNU_OR4
     s5 (
      .o1(w22),
      .i1(b27_2_w36),
      .i2(b27_3_w37),
      .i3(b27_6_w39),
      .i4(b27_7_w40));

PNU_NOT
     s6 (
      .o1(w25),
      .i1(b27_0_w34));

PNU_AND2
     s8 (
      .i1(w18),
      .i2(w25),
      .o1(w27));

PNU_AND2
     s10 (
      .i1(w24),
      .i2(w25),
      .o1(w28));

PNU_AND2
     s11 (
      .i1(w22),
      .i2(w25),
      .o1(w29));

PNU_AND2
     s12 (
      .i2(w25),
      .i1(w31),
      .o1(w47));

PNU_OR3
     s9 (
      .o1(w21),
      .i1(b27_1_w35),
      .i2(b27_3_w37),
      .i3(b27_5_w38));

PNU_OR2
     s13 (
      .o1(w30),
      .i1(b27_7_w40),
      .i2(b27_9_w42));

PNU_OR2
     s14 (
      .i1(w21),
      .i2(w30),
      .o1(w31));

PNU_OR3
     s16 (
      .i1(b27_3_w37),
      .i2(b27_4_w23),
      .i3(b27_5_w38),
      .o1(w44));

PNU_OR4
     s17 (
      .i1(b27_6_w39),
      .i2(b27_7_w40),
      .i3(b27_8_w41),
      .i4(b27_9_w42),
      .o1(w43));

PNU_OR3
     s15 (
      .i1(b27_0_w34),
      .i2(b27_1_w35),
      .i3(b27_2_w36),
      .o1(w45));

PNU_OR3
     s18 (
      .i3(w43),
      .i2(w44),
      .i1(w45),
      .o1(w46));

endmodule

