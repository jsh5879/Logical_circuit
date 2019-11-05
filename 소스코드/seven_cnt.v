module seven_cnt(Key,a,b,c,d,e,f,g,star,sharp,chk);

input [11:0] Key;
output a;
output b;
output c;
output d;
output e;
output f;
output g;
output star;
output sharp;
output chk;

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
wire [11:0] b34;
wire  w38;
wire  w39;
wire  w48;
wire  w40;
wire  w55;
wire  w49;
wire  w59;
wire  w61;
wire  w60;
wire  w62;
wire  w67;
wire  w66;
wire  w68;
wire  w58;

assign b34 = Key;
assign a = w59;
assign b = w60;
assign c = w61;
assign d = w62;
assign e = w67;
assign f = w66;
assign g = w68;
assign star = w49;
assign sharp = w55;
assign chk = w58;

PNU_OR2
     s5 (
      .i1(w50),
      .i2(w51),
      .o1(w67));

PNU_NOT
     s10 (
      .o1(w65),
      .i1(w40));

PNU_NOT
     s11 (
      .o1(w64),
      .i1(w48));

PNU_AND2
     s12 (
      .o1(w33),
      .i1(w65),
      .i2(w42));

PNU_AND2
     s13 (
      .o1(w34),
      .i2(w38),
      .i1(w40));

PNU_AND2
     s14 (
      .o1(w35),
      .i1(w65),
      .i2(w39));

PNU_AND2
     s16 (
      .o1(w36),
      .i1(w57),
      .i2(w42));

PNU_AND2
     s17 (
      .o1(w37),
      .i2(w38),
      .i1(w39));

PNU_OR4
     s15 (
      .i1(w33),
      .i2(w34),
      .i3(w35),
      .i4(w48),
      .o1(w59));

PNU_OR3
     s19 (
      .i1(w36),
      .i2(w37),
      .i3(w65),
      .o1(w60));

PNU_OR3
     s20 (
      .i1(w57),
      .i2(w38),
      .i3(w40),
      .o1(w61));

PNU_NOT
     s21 (
      .o1(w42),
      .i1(w38));

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
      .i3(w38),
      .i1(w40));

PNU_AND2
     s24 (
      .o1(w45),
      .i1(w65),
      .i2(w42));

PNU_AND2
     s25 (
      .o1(w46),
      .i1(w65),
      .i2(w39));

PNU_AND2
     s26 (
      .o1(w47),
      .i2(w42),
      .i1(w39));

PNU_AND2
     s27 (
      .o1(w50),
      .i1(w65),
      .i2(w42));

PNU_AND2
     s28 (
      .o1(w51),
      .i2(w42),
      .i1(w39));

PNU_OR4
     s29 (
      .i1(w52),
      .i2(w53),
      .i3(w54),
      .i4(w48),
      .o1(w66));

PNU_AND2
     s30 (
      .o1(w52),
      .i1(w57),
      .i2(w42));

PNU_AND2
     s31 (
      .o1(w53),
      .i2(w57),
      .i1(w40));

PNU_AND2
     s32 (
      .o1(w54),
      .i2(w42),
      .i1(w40));

PNU_OR4
     s33 (
      .i1(w41),
      .i2(w43),
      .i4(w56),
      .i3(w48),
      .o1(w68));

PNU_AND2
     s34 (
      .i1(w65),
      .o1(w41),
      .i2(w39));

PNU_AND2
     s35 (
      .i2(w57),
      .o1(w43),
      .i1(w40));

PNU_AND2
     s36 (
      .i2(w42),
      .o1(w56),
      .i1(w40));

PNU_NOT
     s38 (
      .o1(w57),
      .i1(w39));

decimal_cnt
     s37 (
      .Key(b34),
      .b0(w38),
      .b1(w39),
      .b3(w48),
      .b2(w40),
      .star(w55),
      .sharp(w49),
      .chk(w58));

endmodule

