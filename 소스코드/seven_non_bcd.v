module seven_non_bcd(Key,a,b,c,d,e,f,g);

input [3:0] Key;
output a;
output b;
output c;
output d;
output e;
output f;
output g;

wire  w33;
wire  w34;
wire  w35;
wire  w36;
wire  w37;
wire  w44;
wire  w45;
wire  w46;
wire  w47;
wire  w50;
wire  w51;
wire  w52;
wire  w53;
wire  w54;
wire  w64;
wire  w65;
wire  w57;
wire  w42;
wire  w41;
wire  w43;
wire  w56;
wire [3:0] b34;
wire  w59;
wire  w61;
wire  w60;
wire  w62;
wire  w67;
wire  w66;
wire  w68;
wire  b34_0_w32;
wire  b34_1_w38;
wire  b34_2_w39;
wire  b34_3_w40;

assign b34 = Key;
assign a = w59;
assign b = w60;
assign c = w61;
assign d = w62;
assign e = w67;
assign f = w66;
assign g = w68;

assign b34_0_w32 = {b34[0]};
assign b34_1_w38 = {b34[1]};
assign b34_2_w39 = {b34[2]};
assign b34_3_w40 = {b34[3]};

PNU_OR2
     s5 (
      .i1(w50),
      .i2(w51),
      .o1(w67));

PNU_NOT
     s10 (
      .o1(w65),
      .i1(b34_2_w39));

PNU_NOT
     s11 (
      .o1(w64),
      .i1(b34_3_w40));

PNU_AND2
     s12 (
      .o1(w33),
      .i1(w65),
      .i2(w42));

PNU_AND2
     s13 (
      .o1(w34),
      .i2(b34_0_w32),
      .i1(b34_2_w39));

PNU_AND2
     s14 (
      .o1(w35),
      .i1(w65),
      .i2(b34_1_w38));

PNU_AND2
     s16 (
      .o1(w36),
      .i1(w57),
      .i2(w42));

PNU_AND2
     s17 (
      .o1(w37),
      .i2(b34_0_w32),
      .i1(b34_1_w38));

PNU_OR4
     s15 (
      .i1(w33),
      .i2(w34),
      .i3(w35),
      .o1(w59),
      .i4(b34_3_w40));

PNU_OR3
     s19 (
      .i1(w36),
      .i2(w37),
      .i3(w65),
      .o1(w60));

PNU_OR3
     s20 (
      .i1(w57),
      .o1(w61),
      .i2(b34_0_w32),
      .i3(b34_2_w39));

PNU_NOT
     s21 (
      .o1(w42),
      .i1(b34_0_w32));

PNU_OR4
     s22 (
      .i1(w44),
      .i2(w45),
      .i3(w46),
      .i4(w47),
      .o1(w62));

PNU_AND3
     s23 (
      .o1(w44),
      .i2(w57),
      .i3(b34_0_w32),
      .i1(b34_2_w39));

PNU_AND2
     s24 (
      .o1(w45),
      .i1(w65),
      .i2(w42));

PNU_AND2
     s25 (
      .o1(w46),
      .i1(w65),
      .i2(b34_1_w38));

PNU_AND2
     s26 (
      .o1(w47),
      .i2(w42),
      .i1(b34_1_w38));

PNU_AND2
     s27 (
      .o1(w50),
      .i1(w65),
      .i2(w42));

PNU_AND2
     s28 (
      .o1(w51),
      .i2(w42),
      .i1(b34_1_w38));

PNU_OR4
     s29 (
      .i1(w52),
      .i2(w53),
      .i3(w54),
      .o1(w66),
      .i4(b34_3_w40));

PNU_AND2
     s30 (
      .o1(w52),
      .i1(w57),
      .i2(w42));

PNU_AND2
     s31 (
      .o1(w53),
      .i2(w57),
      .i1(b34_2_w39));

PNU_AND2
     s32 (
      .o1(w54),
      .i2(w42),
      .i1(b34_2_w39));

PNU_OR4
     s33 (
      .i1(w41),
      .i2(w43),
      .i4(w56),
      .o1(w68),
      .i3(b34_3_w40));

PNU_AND2
     s34 (
      .i1(w65),
      .o1(w41),
      .i2(b34_1_w38));

PNU_AND2
     s35 (
      .i2(w57),
      .o1(w43),
      .i1(b34_2_w39));

PNU_AND2
     s36 (
      .i2(w42),
      .o1(w56),
      .i1(b34_2_w39));

PNU_NOT
     s38 (
      .o1(w57),
      .i1(b34_1_w38));

endmodule

