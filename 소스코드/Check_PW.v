module Check_PW(C_pw,rst,Key_B,sharp,Dip_1,I_B0,I_B1,I_B2,I_B3,clk);

output C_pw;
input rst;
input [3:0] Key_B;
input sharp;
input Dip_1;
output [3:0] I_B0;
output [3:0] I_B1;
output [3:0] I_B2;
output [3:0] I_B3;
input clk;

wire [3:0] b8;
wire [3:0] b70;
wire [3:0] b19;
wire [3:0] b21;
wire [3:0] b69;
wire [3:0] b67;
wire [3:0] b71;
wire [3:0] b68;
wire  w42;
wire  w43;
wire  w44;
wire  w45;
wire  w46;
wire  w47;
wire  w48;
wire  w49;
wire  w50;
wire  w51;
wire  w52;
wire  w53;
wire  w54;
wire  w55;
wire  w56;
wire  w57;
wire  w58;
wire  w59;
wire  w60;
wire  w61;
wire [3:0] b62;
wire  w64;
wire  w65;
wire  w66;
wire  w70;
wire  w71;
wire  w67;
wire  w68;
wire  w69;
wire  b8_0_w8;
wire  b70_0_w9;
wire  b8_1_w10;
wire  b70_1_w11;
wire  b8_2_w12;
wire  b70_2_w13;
wire  b8_3_w14;
wire  b70_3_w15;
wire  b19_0_w18;
wire  b69_0_w19;
wire  b19_1_w20;
wire  b69_1_w21;
wire  b19_2_w22;
wire  b69_2_w23;
wire  b19_3_w24;
wire  b69_3_w25;
wire  b21_0_w26;
wire  b67_0_w27;
wire  b21_1_w28;
wire  b67_1_w29;
wire  b21_2_w30;
wire  b67_2_w31;
wire  b21_3_w32;
wire  b67_3_w33;
wire  b71_0_w34;
wire  b68_0_w35;
wire  b71_1_w36;
wire  b68_1_w37;
wire  b71_2_w38;
wire  b68_2_w39;
wire  b71_3_w40;
wire  b68_3_w41;

assign C_pw = w64;
assign w68 = rst;
assign b62 = Key_B;
assign w65 = sharp;
assign w71 = Dip_1;
assign I_B0 = b70;
assign I_B1 = b69;
assign I_B2 = b67;
assign I_B3 = b68;
assign w69 = clk;

assign b8_0_w8 = {b8[0]};
assign b70_0_w9 = {b70[0]};
assign b8_1_w10 = {b8[1]};
assign b70_1_w11 = {b70[1]};
assign b8_2_w12 = {b8[2]};
assign b70_2_w13 = {b70[2]};
assign b8_3_w14 = {b8[3]};
assign b70_3_w15 = {b70[3]};
assign b19_0_w18 = {b19[0]};
assign b69_0_w19 = {b69[0]};
assign b19_1_w20 = {b19[1]};
assign b69_1_w21 = {b69[1]};
assign b19_2_w22 = {b19[2]};
assign b69_2_w23 = {b69[2]};
assign b19_3_w24 = {b19[3]};
assign b69_3_w25 = {b69[3]};
assign b21_0_w26 = {b21[0]};
assign b67_0_w27 = {b67[0]};
assign b21_1_w28 = {b21[1]};
assign b67_1_w29 = {b67[1]};
assign b21_2_w30 = {b21[2]};
assign b67_2_w31 = {b67[2]};
assign b21_3_w32 = {b21[3]};
assign b67_3_w33 = {b67[3]};
assign b71_0_w34 = {b71[0]};
assign b68_0_w35 = {b68[0]};
assign b71_1_w36 = {b71[1]};
assign b68_1_w37 = {b68[1]};
assign b71_2_w38 = {b71[2]};
assign b68_2_w39 = {b68[2]};
assign b71_3_w40 = {b71[3]};
assign b68_3_w41 = {b68[3]};

Saved_pw
     s0 (
      .B0(b8),
      .B1(b19),
      .B2(b21),
      .B3(b71),
      .rst(w68),
      .clk(w69));

Input_PW
     s1 (
      .Key(b62),
      .rst(w67),
      .IB3(b68),
      .IB1(b69),
      .IB2(b67),
      .IB0(b70));

PNU_XNOR2
     s2 (
      .i1(b8_0_w8),
      .i2(b70_0_w9),
      .o1(w42));

PNU_XNOR2
     s3 (
      .i1(b8_1_w10),
      .i2(b70_1_w11),
      .o1(w43));

PNU_XNOR2
     s4 (
      .i1(b8_2_w12),
      .i2(b70_2_w13),
      .o1(w44));

PNU_XNOR2
     s5 (
      .i1(b8_3_w14),
      .i2(b70_3_w15),
      .o1(w45));

PNU_XNOR2
     s6 (
      .i1(b19_0_w18),
      .i2(b69_0_w19),
      .o1(w46));

PNU_XNOR2
     s7 (
      .i1(b19_1_w20),
      .i2(b69_1_w21),
      .o1(w47));

PNU_XNOR2
     s8 (
      .i1(b19_2_w22),
      .i2(b69_2_w23),
      .o1(w48));

PNU_XNOR2
     s9 (
      .i1(b19_3_w24),
      .i2(b69_3_w25),
      .o1(w49));

PNU_XNOR2
     s10 (
      .i1(b21_0_w26),
      .i2(b67_0_w27),
      .o1(w50));

PNU_XNOR2
     s11 (
      .i1(b21_1_w28),
      .i2(b67_1_w29),
      .o1(w51));

PNU_XNOR2
     s12 (
      .i1(b21_2_w30),
      .i2(b67_2_w31),
      .o1(w52));

PNU_XNOR2
     s13 (
      .i1(b21_3_w32),
      .i2(b67_3_w33),
      .o1(w53));

PNU_XNOR2
     s14 (
      .i1(b71_0_w34),
      .i2(b68_0_w35),
      .o1(w54));

PNU_XNOR2
     s15 (
      .i1(b71_1_w36),
      .i2(b68_1_w37),
      .o1(w55));

PNU_XNOR2
     s16 (
      .i1(b71_2_w38),
      .i2(b68_2_w39),
      .o1(w56));

PNU_XNOR2
     s17 (
      .i1(b71_3_w40),
      .i2(b68_3_w41),
      .o1(w57));

PNU_AND4
     s18 (
      .i1(w42),
      .i2(w43),
      .i3(w44),
      .i4(w45),
      .o1(w58));

PNU_AND4
     s19 (
      .i1(w46),
      .i2(w47),
      .i3(w48),
      .i4(w49),
      .o1(w59));

PNU_AND4
     s20 (
      .i1(w50),
      .i2(w51),
      .i3(w52),
      .i4(w53),
      .o1(w60));

PNU_AND4
     s21 (
      .i1(w54),
      .i2(w55),
      .i3(w56),
      .i4(w57),
      .o1(w61));

PNU_AND4
     s22 (
      .i1(w58),
      .i2(w59),
      .i3(w60),
      .i4(w61),
      .o1(w66));

PNU_DFF_Ce
     s23 (
      .Q(w64),
      .clock(w65),
      .Ce(w66),
      .D(w66),
      .reset(w67));

PNU_OR2
     s24 (
      .i2(w70),
      .o1(w67),
      .i1(w68));

PNU_NOT
     s25 (
      .o1(w70),
      .i1(w71));

endmodule

