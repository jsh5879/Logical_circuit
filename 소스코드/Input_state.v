module Input_state(N,rst,clk,W,E,S,N_walk,W_walk,E_walk,S_walk,off_sign,Key);

output [3:0] N;
input rst;
input clk;
output [3:0] W;
output [3:0] E;
output [3:0] S;
output [1:0] N_walk;
output [1:0] W_walk;
output [1:0] E_walk;
output [1:0] S_walk;
output off_sign;
input [9:0] Key;

wire  w35;
wire  w36;
wire  w37;
wire  w39;
wire  w40;
wire  w10;
wire  w69;
wire  w72;
wire  w73;
wire  w75;
wire  w21;
wire  w22;
wire  w23;
wire  w24;
wire  w25;
wire  w27;
wire  w28;
wire  w29;
wire  w30;
wire  w31;
wire  w32;
wire  w34;
wire  w38;
wire  w41;
wire  w42;
wire  w43;
wire  w44;
wire [3:0] b39;
wire [3:0] b46;
wire [3:0] b50;
wire [3:0] b51;
wire  w77;
wire  w78;
wire  w79;
wire  w80;
wire  w81;
wire  w82;
wire  w83;
wire  w84;
wire  w85;
wire  w86;
wire  w87;
wire  w88;
wire  w89;
wire  w90;
wire  w91;
wire  w92;
wire  w103;
wire  w104;
wire  w105;
wire  w106;
wire  w111;
wire  w112;
wire  w113;
wire  w114;
wire  w115;
wire  w116;
wire  w166;
wire  w97;
wire  w98;
wire  w46;
wire  w54;
wire [1:0] b92;
wire [1:0] b31;
wire [1:0] b36;
wire [1:0] b41;
wire  w121;
wire  w122;
wire  w123;
wire  w124;
wire  w125;
wire  w126;
wire  w127;
wire  w130;
wire  w131;
wire  w132;
wire  w133;
wire  w134;
wire  w136;
wire  w137;
wire  w138;
wire  w139;
wire  w140;
wire  w141;
wire  w142;
wire  w143;
wire  w144;
wire  w146;
wire  w147;
wire  w148;
wire  w149;
wire  w150;
wire  w151;
wire  w152;
wire  w153;
wire  w154;
wire  w155;
wire  w156;
wire  w157;
wire  w158;
wire  w163;
wire  w172;
wire  w145;
wire [9:0] b138;
wire  w173;
wire  w174;
wire  w175;
wire  w167;
wire  b39_2;
wire  b39_1;
wire  b39_0;
wire  b46_2;
wire  b46_1;
wire  b46_0;
wire  b50_2;
wire  b50_1;
wire  b50_0;
wire  b51_2;
wire  b51_1;
wire  b51_0;
wire  b39_3;
wire  b46_3;
wire  b50_3;
wire  b51_3;
wire  b92_1;
wire  b31_1;
wire  b36_1;
wire  b41_1;
wire  b92_0;
wire  b36_0;
wire  b41_0;
wire  b31_0;
wire  b138_0_w169;
wire  b138_1_w159;
wire  b138_2_w170;
wire  b138_3_w161;
wire  b138_4_w164;
wire  b138_5_w165;
wire  b138_6_w168;
wire  b138_7_w160;
wire  b138_8_w171;
wire  b138_9_w162;

assign N = b39;
assign w158 = rst;
assign w157 = clk;
assign W = b46;
assign E = b50;
assign S = b51;
assign N_walk = b92;
assign W_walk = b31;
assign E_walk = b36;
assign S_walk = b41;
assign off_sign = w140;
assign b138 = Key;

assign b39[3] = b39_3;
assign b39[2] = b39_2;
assign b39[1] = b39_1;
assign b39[0] = b39_0;
assign b46[3] = b46_3;
assign b46[2] = b46_2;
assign b46[1] = b46_1;
assign b46[0] = b46_0;
assign b50[3] = b50_3;
assign b50[2] = b50_2;
assign b50[1] = b50_1;
assign b50[0] = b50_0;
assign b51[3] = b51_3;
assign b51[2] = b51_2;
assign b51[1] = b51_1;
assign b51[0] = b51_0;
assign b92[1] = b92_1;
assign b92[0] = b92_0;
assign b31[1] = b31_1;
assign b31[0] = b31_0;
assign b36[1] = b36_1;
assign b36[0] = b36_0;
assign b41[1] = b41_1;
assign b41[0] = b41_0;

assign b138_0_w169 = {b138[0]};
assign b138_1_w159 = {b138[1]};
assign b138_2_w170 = {b138[2]};
assign b138_3_w161 = {b138[3]};
assign b138_4_w164 = {b138[4]};
assign b138_5_w165 = {b138[5]};
assign b138_6_w168 = {b138[6]};
assign b138_7_w160 = {b138[7]};
assign b138_8_w171 = {b138[8]};
assign b138_9_w162 = {b138[9]};

shift_register_10bit
     s4 (
      .Din(w39),
      .B0(w69),
      .B1(w72),
      .B8(w73),
      .B9(w75),
      .CLK(w157),
      .RST(w158),
      .Input_D());

shift_register_10bit
     s7 (
      .Din(w28),
      .B0(w41),
      .B1(w42),
      .B8(w43),
      .B9(w44),
      .CLK(w157),
      .RST(w158),
      .Input_D());

PNU_DFF
     s12 (
      .Q(w39),
      .reset(w158),
      .D(w172),
      .clock(w167));

PNU_DFF
     s13 (
      .D(w35),
      .Q(w40),
      .reset(w158),
      .clock(w167));

PNU_DFF
     s14 (
      .D(w36),
      .Q(w27),
      .reset(w158),
      .clock(w167));

PNU_DFF
     s15 (
      .D(w37),
      .Q(w28),
      .reset(w158),
      .clock(w167));

shift_register_10bit
     s5 (
      .Din(w40),
      .B0(w22),
      .B1(w23),
      .B8(w24),
      .B9(w25),
      .CLK(w157),
      .RST(w158),
      .Input_D());

PNU_AND4
     s2 (
      .i1(w69),
      .i2(w72),
      .i3(w73),
      .i4(w75),
      .o1(b39_2));

PNU_AND2
     s3 (
      .i2(w10),
      .i1(w75),
      .o1(b39_1));

PNU_NOT
     s16 (
      .o1(w10),
      .i1(w69));

PNU_NOT
     s17 (
      .i1(w75),
      .o1(b39_0));

PNU_AND4
     s18 (
      .i1(w22),
      .i2(w23),
      .i3(w24),
      .i4(w25),
      .o1(b46_2));

PNU_AND2
     s19 (
      .i2(w21),
      .i1(w25),
      .o1(b46_1));

PNU_NOT
     s20 (
      .o1(w21),
      .i1(w22));

PNU_NOT
     s21 (
      .i1(w25),
      .o1(b46_0));

shift_register_10bit
     s6 (
      .Din(w27),
      .B0(w30),
      .B1(w31),
      .B8(w32),
      .B9(w34),
      .CLK(w157),
      .RST(w158),
      .Input_D());

PNU_AND4
     s22 (
      .i1(w30),
      .i2(w31),
      .i3(w32),
      .i4(w34),
      .o1(b50_2));

PNU_AND2
     s23 (
      .i2(w29),
      .i1(w34),
      .o1(b50_1));

PNU_NOT
     s24 (
      .o1(w29),
      .i1(w30));

PNU_NOT
     s25 (
      .i1(w34),
      .o1(b50_0));

PNU_AND4
     s26 (
      .i1(w41),
      .i2(w42),
      .i3(w43),
      .i4(w44),
      .o1(b51_2));

PNU_AND2
     s27 (
      .i2(w38),
      .i1(w44),
      .o1(b51_1));

PNU_NOT
     s28 (
      .o1(w38),
      .i1(w41));

PNU_NOT
     s29 (
      .i1(w44),
      .o1(b51_0));

shift_register_10bit
     s33 (
      .B0(w77),
      .B1(w78),
      .B8(w79),
      .B9(w80),
      .Din(w103),
      .CLK(w157),
      .RST(w158),
      .Input_D());

shift_register_10bit
     s34 (
      .B0(w81),
      .B1(w82),
      .B8(w83),
      .B9(w84),
      .Din(w104),
      .CLK(w157),
      .RST(w158),
      .Input_D());

shift_register_10bit
     s35 (
      .B0(w85),
      .B1(w86),
      .B8(w87),
      .B9(w88),
      .Din(w105),
      .CLK(w157),
      .RST(w158),
      .Input_D());

shift_register_10bit
     s36 (
      .B0(w89),
      .B1(w90),
      .B8(w91),
      .B9(w92),
      .Din(w106),
      .CLK(w157),
      .RST(w158),
      .Input_D());

PNU_AND4
     s37 (
      .i1(w77),
      .i2(w78),
      .i3(w79),
      .i4(w80),
      .o1(b39_3));

PNU_AND4
     s38 (
      .i1(w81),
      .i2(w82),
      .i3(w83),
      .i4(w84),
      .o1(b46_3));

PNU_AND4
     s39 (
      .i1(w85),
      .i2(w86),
      .i3(w87),
      .i4(w88),
      .o1(b50_3));

PNU_AND4
     s40 (
      .i1(w89),
      .i2(w90),
      .i3(w91),
      .i4(w92),
      .o1(b51_3));

PNU_DFF
     s41 (
      .Q(w103),
      .reset(w158),
      .D(b138_1_w159),
      .clock(w167));

PNU_DFF
     s42 (
      .Q(w104),
      .reset(w158),
      .D(b138_7_w160),
      .clock(w167));

PNU_DFF
     s43 (
      .Q(w105),
      .reset(w158),
      .D(b138_3_w161),
      .clock(w167));

PNU_DFF
     s44 (
      .Q(w106),
      .reset(w158),
      .D(b138_9_w162),
      .clock(w167));

PNU_DFF
     s53 (
      .Q(w166),
      .reset(w158),
      .D(w163),
      .clock(w167));

PNU_DFF
     s54 (
      .D(w111),
      .Q(w116),
      .reset(w158),
      .clock(w167));

PNU_DFF
     s55 (
      .D(w112),
      .Q(w115),
      .reset(w158),
      .clock(w167));

PNU_DFF
     s56 (
      .D(w113),
      .Q(w114),
      .reset(w158),
      .clock(w167));

shift_register_10bit
     s57 (
      .Din(w166),
      .B0(w141),
      .B1(w142),
      .B8(w143),
      .B9(w144),
      .CLK(w157),
      .RST(w158),
      .Input_D());

shift_register_10bit
     s58 (
      .Din(w116),
      .B1(w146),
      .B8(w147),
      .B9(w148),
      .CLK(w157),
      .RST(w158),
      .B0(w145),
      .Input_D());

shift_register_10bit
     s59 (
      .Din(w115),
      .B0(w149),
      .B1(w150),
      .B8(w151),
      .B9(w152),
      .CLK(w157),
      .RST(w158),
      .Input_D());

shift_register_10bit
     s60 (
      .Din(w114),
      .B0(w153),
      .B1(w154),
      .B8(w155),
      .B9(w156),
      .CLK(w157),
      .RST(w158),
      .Input_D());

PNU_AND4
     s61 (
      .o1(w127),
      .i1(w141),
      .i2(w142),
      .i3(w143),
      .i4(w144));

PNU_AND2
     s62 (
      .i2(w97),
      .o1(w136),
      .i1(w144));

PNU_NOT
     s63 (
      .o1(w97),
      .i1(w141));

PNU_NOT
     s64 (
      .o1(b92_0),
      .i1(w144));

PNU_AND4
     s65 (
      .o1(w126),
      .i2(w146),
      .i3(w147),
      .i4(w148),
      .i1(w145));

PNU_NOT
     s66 (
      .o1(w98),
      .i1(w145));

PNU_NOT
     s67 (
      .o1(b31_0),
      .i1(w148));

PNU_AND4
     s68 (
      .o1(w125),
      .i1(w149),
      .i2(w150),
      .i3(w151),
      .i4(w152));

PNU_AND2
     s69 (
      .i2(w46),
      .o1(w138),
      .i1(w152));

PNU_NOT
     s70 (
      .o1(w46),
      .i1(w149));

PNU_NOT
     s71 (
      .o1(b36_0),
      .i1(w152));

PNU_AND4
     s72 (
      .o1(w133),
      .i1(w153),
      .i2(w154),
      .i3(w155),
      .i4(w156));

PNU_AND2
     s73 (
      .i2(w54),
      .o1(w139),
      .i1(w156));

PNU_NOT
     s74 (
      .o1(w54),
      .i1(w153));

PNU_NOT
     s75 (
      .o1(b41_0),
      .i1(w156));

PNU_AND2
     s76 (
      .i2(w98),
      .o1(w137),
      .i1(w148));

Counter_1bit
     s77 (
      .clk(w121),
      .out(w131),
      .rst(w158));

PNU_MUX2
     s78 (
      .o1(b92_1),
      .i1(w127),
      .i2(w131),
      .e1(w136));

Counter_1bit
     s79 (
      .clk(w122),
      .out(w130),
      .rst(w158));

PNU_MUX2
     s80 (
      .o1(b31_1),
      .i1(w126),
      .i2(w130),
      .e1(w137));

Counter_1bit
     s81 (
      .clk(w123),
      .out(w132),
      .rst(w158));

Counter_1bit
     s82 (
      .clk(w124),
      .out(w134),
      .rst(w158));

PNU_MUX2
     s83 (
      .o1(b41_1),
      .i1(w133),
      .i2(w134),
      .e1(w139));

PNU_AND2
     s84 (
      .o1(w121),
      .i2(w136),
      .i1(w157));

PNU_AND2
     s85 (
      .o1(w122),
      .i2(w137),
      .i1(w157));

PNU_AND2
     s86 (
      .o1(w123),
      .i2(w138),
      .i1(w157));

PNU_AND2
     s87 (
      .o1(w124),
      .i2(w139),
      .i1(w157));

PNU_MUX2
     s88 (
      .o1(b36_1),
      .i1(w125),
      .i2(w132),
      .e1(w138));

PNU_OR4
     s89 (
      .i1(w136),
      .i2(w137),
      .i3(w138),
      .i4(w139),
      .o1(w140));

PNU_OR3
     s90 (
      .o1(w172),
      .i1(b138_0_w169),
      .i2(b138_1_w159),
      .i3(b138_2_w170));

PNU_OR3
     s91 (
      .o1(w35),
      .i1(b138_4_w164),
      .i2(b138_5_w165),
      .i3(b138_7_w160));

PNU_OR3
     s92 (
      .o1(w36),
      .i1(b138_3_w161),
      .i2(b138_5_w165),
      .i3(b138_6_w168));

PNU_OR3
     s93 (
      .o1(w37),
      .i1(b138_0_w169),
      .i2(b138_8_w171),
      .i3(b138_9_w162));

PNU_OR4
     s94 (
      .o1(w163),
      .i1(b138_4_w164),
      .i2(b138_5_w165),
      .i3(b138_6_w168),
      .i4(b138_7_w160));

PNU_OR4
     s95 (
      .o1(w111),
      .i1(b138_0_w169),
      .i2(b138_2_w170),
      .i3(b138_8_w171),
      .i4(b138_9_w162));

PNU_OR4
     s96 (
      .o1(w112),
      .i1(b138_0_w169),
      .i2(b138_1_w159),
      .i3(b138_2_w170),
      .i4(b138_8_w171));

PNU_OR4
     s97 (
      .o1(w113),
      .i1(b138_3_w161),
      .i2(b138_4_w164),
      .i3(b138_5_w165),
      .i4(b138_6_w168));

PNU_OR3
     s98 (
      .i1(b138_0_w169),
      .i2(b138_1_w159),
      .i3(b138_2_w170),
      .o1(w174));

PNU_OR4
     s99 (
      .i1(b138_3_w161),
      .i2(b138_4_w164),
      .i3(b138_5_w165),
      .i4(b138_6_w168),
      .o1(w173));

PNU_OR3
     s100 (
      .i1(b138_7_w160),
      .i2(b138_8_w171),
      .i3(b138_9_w162),
      .o1(w175));

PNU_OR3
     s101 (
      .i2(w173),
      .i1(w174),
      .i3(w175),
      .o1(w167));

endmodule

