module Result(Key,Dip_1,N,W,E,S,N_Walk,W_Walk,E_Walk,S_Walk,rst,a,b,c,d,e,f,g,clk,seg0,seg1,seg2,seg3,a_s,b_s,c_s,d_s,e_s,f_s,g_s,seg4,seg5,seg6,seg7);

input [11:0] Key;
input Dip_1;
output [3:0] N;
output [3:0] W;
output [3:0] E;
output [3:0] S;
output [1:0] N_Walk;
output [1:0] W_Walk;
output [1:0] E_Walk;
output [1:0] S_Walk;
input rst;
output a;
output b;
output c;
output d;
output e;
output f;
output g;
input clk;
output seg0;
output seg1;
output seg2;
output seg3;
output a_s;
output b_s;
output c_s;
output d_s;
output e_s;
output f_s;
output g_s;
output seg4;
output seg5;
output seg6;
output seg7;

wire [3:0] b0;
wire [11:0] b6;
wire  w18;
wire [3:0] b21;
wire [3:0] b22;
wire [3:0] b23;
wire [3:0] b24;
wire [3:0] b25;
wire [3:0] b26;
wire [3:0] b27;
wire [1:0] b28;
wire [1:0] b29;
wire [1:0] b30;
wire [1:0] b31;
wire [1:0] b33;
wire [1:0] b34;
wire [1:0] b35;
wire [1:0] b36;
wire [3:0] b37;
wire [3:0] b38;
wire [3:0] b39;
wire [3:0] b40;
wire [1:0] b41;
wire [1:0] b42;
wire [1:0] b43;
wire [1:0] b44;
wire  w46;
wire  w50;
wire  w51;
wire  w65;
wire  w66;
wire  w67;
wire  w68;
wire [11:0] b50;
wire  w58;
wire  w59;
wire  w60;
wire  w61;
wire  w62;
wire  w63;
wire  w64;
wire  w70;
wire  w71;
wire  w72;
wire  w73;
wire  w74;
wire  w75;
wire  w76;
wire  w77;
wire  w78;
wire  w79;
wire  w81;
wire [10:0] b77;
wire [3:0] b9;
wire  w87;
wire  w84;
wire [10:0] b156;
wire  w90;
wire  w95;
wire  w96;
wire  w94;
wire  w97;
wire  w98;
wire  w99;
wire  w100;
wire  w101;
wire  w103;
wire  w104;
wire  w105;
wire  w106;
wire  w107;
wire  w108;
wire  w109;
wire  w110;
wire  w111;
wire  w112;
wire  w113;
wire  w114;
wire  w115;
wire  w116;
wire [3:0] b116;
wire  w137;
wire  w138;
wire  w139;
wire  w140;
wire  w141;
wire  w142;
wire  w143;
wire  w144;
wire  w145;
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
wire  w159;
wire  w160;
wire  w161;
wire [3:0] b146;
wire [2:0] b149;
wire [3:0] b151;
wire [3:0] b155;
wire [3:0] b152;
wire [3:0] b154;
wire [3:0] b153;
wire  w167;
wire  w168;
wire  w169;
wire  w170;
wire  w166;
wire  w173;
wire  w171;
wire  w172;
wire  w174;
wire  w165;
wire  w164;
wire  b0_0;
wire  b0_1;
wire  b0_2;
wire  b0_3;
wire [9:0] b6_9to0_b46;
wire  b50_9;
wire [5:0] b50_5to0;
wire  b77_2_w14;
wire  b77_3_w15;
wire  b77_4_w16;
wire  b77_5_w17;
wire  b77_0_w85;
wire  b77_1_w86;
wire  b9_3;
wire [2:0] b9_2to0;
wire  b156_0_w89;
wire  b156_3_w93;
wire  b156_1_w92;
wire  b156_2_w91;
wire  b156_4_w129;
wire  b156_5_w130;
wire  b156_6_w131;
wire  b156_7_w132;
wire  b146_3;
wire [2:0] b146_2to0;
wire  b149_2_w162;
wire [1:0] b149_1to0_b148;

assign b6 = Key;
assign w101 = Dip_1;
assign N = b37;
assign W = b38;
assign E = b39;
assign S = b40;
assign N_Walk = b41;
assign W_Walk = b42;
assign E_Walk = b43;
assign S_Walk = b44;
assign w165 = rst;
assign a = w72;
assign b = w73;
assign c = w74;
assign d = w75;
assign e = w76;
assign f = w77;
assign g = w71;
assign w164 = clk;
assign seg0 = w97;
assign seg1 = w98;
assign seg2 = w99;
assign seg3 = w100;
assign a_s = w142;
assign b_s = w143;
assign c_s = w145;
assign d_s = w147;
assign e_s = w149;
assign f_s = w151;
assign g_s = w153;
assign seg4 = w137;
assign seg5 = w138;
assign seg6 = w139;
assign seg7 = w140;

assign b0[3] = b0_3;
assign b0[2] = b0_2;
assign b0[1] = b0_1;
assign b0[0] = b0_0;
assign b50[11] = b50_9;
assign b50[10] = b50_9;
assign b50[9] = b50_9;
assign b50[8] = b50_9;
assign b50[7] = b50_9;
assign b50[6] = b50_9;
assign b50[5:0] = b50_5to0[5:0];
assign b9[3] = b9_3;
assign b9[2:0] = b9_2to0[2:0];
assign b146[3] = b146_3;
assign b146[2:0] = b146_2to0[2:0];

assign b6_9to0_b46[9:0] = {b6[9:0]};
assign b77_2_w14 = {b77[2]};
assign b77_3_w15 = {b77[3]};
assign b77_4_w16 = {b77[4]};
assign b77_5_w17 = {b77[5]};
assign b77_0_w85 = {b77[0]};
assign b77_1_w86 = {b77[1]};
assign b156_0_w89 = {b156[0]};
assign b156_3_w93 = {b156[3]};
assign b156_1_w92 = {b156[1]};
assign b156_2_w91 = {b156[2]};
assign b156_4_w129 = {b156[4]};
assign b156_5_w130 = {b156[5]};
assign b156_6_w131 = {b156[6]};
assign b156_7_w132 = {b156[7]};
assign b149_2_w162 = {b149[2]};
assign b149_1to0_b148[1:0] = {b149[1:0]};

Input_state
     s0 (
      .N(b21),
      .W(b23),
      .E(b25),
      .S(b26),
      .N_walk(b29),
      .W_walk(b31),
      .E_walk(b33),
      .S_walk(b36),
      .Key(b6_9to0_b46),
      .rst(w46),
      .off_sign(w79),
      .clk(w172));

decimal_cnt
     s1 (
      .b0(b0_0),
      .b1(b0_1),
      .b2(b0_2),
      .b3(b0_3),
      .Key(b6),
      .sharp(w174),
      .chk(),
      .star());

Check_PW
     s2 (
      .Key_B(b0),
      .Dip_1(w101),
      .I_B0(b155),
      .I_B3(b152),
      .I_B1(b154),
      .I_B2(b153),
      .C_pw(w171),
      .sharp(w174),
      .rst(w165),
      .clk(w164));

Counter_5
     s3 (
      .rst(w51),
      .Out(b9_2to0),
      .clk(w84));

PNU_CLK_DIV
     #(
      .cnt_num(7500))
     s6 (
      .en(w18),
      .div_clk(w84),
      .rst(w165),
      .clk(w164));

PNU_ONE
     s7 (
      .o1(w18));

Mux_2_input_2bit
     s12 (
      .Input_1(b28),
      .Input_2(b29),
      .Out(b41),
      .S(w171));

Mux_2_input_2bit
     s13 (
      .Input_1(b30),
      .Input_2(b31),
      .Out(b42),
      .S(w171));

Mux_2_input_2bit
     s14 (
      .Input_2(b33),
      .Input_1(b34),
      .Out(b43),
      .S(w171));

Mux_2_input_2bit
     s15 (
      .Input_1(b35),
      .Input_2(b36),
      .Out(b44),
      .S(w171));

Mux_2_input_4bit
     s16 (
      .Input_2(b21),
      .Out(b37),
      .Input_1(b116),
      .S(w171));

Mux_2_input_4bit
     s17 (
      .Input_1(b22),
      .Input_2(b23),
      .Out(b38),
      .S(w171));

Mux_2_input_4bit
     s18 (
      .Input_1(b24),
      .Input_2(b25),
      .Out(b39),
      .S(w171));

Mux_2_input_4bit
     s19 (
      .Input_2(b26),
      .Input_1(b27),
      .Out(b40),
      .S(w171));

PNU_OR2
     s21 (
      .o1(w87),
      .i2(w171),
      .i1(w165));

PNU_OR2
     s22 (
      .o1(w46),
      .i2(w50),
      .i1(w165));

PNU_NOT
     s23 (
      .o1(w50),
      .i1(w171));

PNU_OR2
     s24 (
      .o1(w51),
      .i2(w171),
      .i1(w165));

seven_cnt
     s25 (
      .Key(b50),
      .a(w58),
      .b(w59),
      .c(w60),
      .d(w61),
      .e(w62),
      .f(w63),
      .g(w64),
      .chk(),
      .sharp(),
      .star());

PNU_AND4
     s26 (
      .o1(w67),
      .i1(w58),
      .i2(w59),
      .i3(w60),
      .i4(w61));

PNU_AND3
     s27 (
      .i3(w65),
      .o1(w66),
      .i1(w62),
      .i2(w63));

PNU_NOT
     s28 (
      .o1(w65),
      .i1(w64));

PNU_AND2
     s29 (
      .i2(w66),
      .i1(w67),
      .o1(w68));

PNU_ZERO
     s30 (
      .o1(b50_9));

PNU_NOT
     s31 (
      .i1(w68),
      .o1(w70));

PNU_AND2
     s32 (
      .i2(w58),
      .i1(w70),
      .o1(w72));

PNU_AND2
     s33 (
      .i2(w59),
      .i1(w70),
      .o1(w73));

PNU_AND2
     s34 (
      .i2(w60),
      .i1(w70),
      .o1(w74));

PNU_AND2
     s35 (
      .i2(w61),
      .i1(w70),
      .o1(w75));

PNU_AND2
     s36 (
      .i2(w62),
      .i1(w70),
      .o1(w76));

PNU_AND2
     s37 (
      .i2(w63),
      .i1(w70),
      .o1(w77));

PNU_AND2
     s38 (
      .i2(w64),
      .i1(w70),
      .o1(w71));

shift_register_10bit
     s39 (
      .Din(w81),
      .Input_D(b50_5to0),
      .CLK(w172),
      .RST(w165),
      .B0(),
      .B1(),
      .B8(),
      .B9());

PNU_MUX2
     s40 (
      .i1(w78),
      .i2(w79),
      .o1(w81),
      .e1(w171));

Auto_Light
     s4 (
      .W(b22),
      .E(b24),
      .S(b27),
      .N_walk(b28),
      .W_walk(b30),
      .E_walk(b34),
      .S_walk(b35),
      .off_sign(w78),
      .L_3(b77_2_w14),
      .L_4(b77_3_w15),
      .L_5(b77_4_w16),
      .L_6(b77_5_w17),
      .L_1(b77_0_w85),
      .L_2(b77_1_w86),
      .rst(w87),
      .clk_div(w84),
      .N(b116),
      .clk(w172));

PNU_ZERO
     s20 (
      .o1(b9_3));

BCD
     s5 (
      .D(b77),
      .B(b9));

print_OPEN
     s41 (
      .a(w104),
      .b(w106),
      .c(w108),
      .d(w110),
      .e(w112),
      .f(w114),
      .g(w116),
      .S(b149_1to0_b148));

BCD
     s43 (
      .B(b146),
      .D(b156));

PNU_NOT
     s45 (
      .i1(b156_0_w89),
      .o1(w90));

PNU_NOT
     s46 (
      .o1(w95),
      .i1(b156_1_w92));

PNU_NOT
     s48 (
      .i1(b156_3_w93),
      .o1(w96));

PNU_OR2
     s49 (
      .i2(w90),
      .o1(w97),
      .i1(w166));

PNU_OR2
     s47 (
      .i2(w95),
      .o1(w98),
      .i1(w166));

PNU_NOT
     s50 (
      .i1(b156_2_w91),
      .o1(w94));

PNU_OR2
     s51 (
      .i2(w94),
      .o1(w99),
      .i1(w166));

PNU_OR2
     s52 (
      .i2(w96),
      .o1(w100),
      .i1(w166));

PNU_NOT
     s53 (
      .i1(w101),
      .o1(w166));

print_LOCK
     s54 (
      .a(w103),
      .b(w105),
      .c(w107),
      .d(w109),
      .e(w111),
      .f(w113),
      .g(w115),
      .S(b149_1to0_b148));

PNU_MUX2
     s55 (
      .i1(w103),
      .i2(w104),
      .o1(w141),
      .e1(w171));

PNU_MUX2
     s56 (
      .i1(w105),
      .i2(w106),
      .o1(w144),
      .e1(w171));

PNU_MUX2
     s57 (
      .i1(w107),
      .i2(w108),
      .o1(w146),
      .e1(w171));

PNU_MUX2
     s58 (
      .i1(w109),
      .i2(w110),
      .o1(w148),
      .e1(w171));

PNU_MUX2
     s59 (
      .i1(w111),
      .i2(w112),
      .o1(w150),
      .e1(w171));

PNU_MUX2
     s60 (
      .i1(w113),
      .i2(w114),
      .o1(w152),
      .e1(w171));

PNU_MUX2
     s61 (
      .i1(w115),
      .i2(w116),
      .o1(w154),
      .e1(w171));

Counter_8
     s63 (
      .Out(b149),
      .rst(w165),
      .clk(w164));

PNU_NOT
     s68 (
      .i1(b156_4_w129),
      .o1(w169));

PNU_NOT
     s69 (
      .i1(b156_5_w130),
      .o1(w168));

PNU_NOT
     s70 (
      .i1(b156_6_w131),
      .o1(w170));

PNU_NOT
     s71 (
      .i1(b156_7_w132),
      .o1(w167));

seven_non_bcd
     s72 (
      .a(w155),
      .b(w156),
      .c(w157),
      .d(w158),
      .e(w159),
      .f(w160),
      .g(w161),
      .Key(b151));

PNU_MUX2
     s73 (
      .i1(w141),
      .o1(w142),
      .i2(w155),
      .e1(b149_2_w162));

PNU_MUX2
     s74 (
      .o1(w143),
      .i1(w144),
      .i2(w156),
      .e1(b149_2_w162));

PNU_MUX2
     s75 (
      .o1(w145),
      .i1(w146),
      .i2(w157),
      .e1(b149_2_w162));

PNU_MUX2
     s76 (
      .o1(w147),
      .i1(w148),
      .i2(w158),
      .e1(b149_2_w162));

PNU_MUX2
     s77 (
      .o1(w149),
      .i1(w150),
      .i2(w159),
      .e1(b149_2_w162));

PNU_MUX2
     s78 (
      .o1(w151),
      .i1(w152),
      .i2(w160),
      .e1(b149_2_w162));

PNU_MUX2
     s79 (
      .o1(w153),
      .i1(w154),
      .i2(w161),
      .e1(b149_2_w162));

PNU_ZERO
     s80 (
      .o1(b146_3));

Counter_8
     s81 (
      .Out(b146_2to0),
      .rst(w165),
      .clk(w164));

Mux_4_input_4bit
     s62 (
      .In_B(b151),
      .S(b149_1to0_b148),
      .B3(b155),
      .B0(b152),
      .B2(b154),
      .B1(b153));

PNU_OR3
     s82 (
      .o1(w137),
      .i1(w169),
      .i2(w166),
      .i3(w171));

PNU_OR3
     s84 (
      .o1(w138),
      .i1(w168),
      .i2(w166),
      .i3(w171));

PNU_OR3
     s85 (
      .o1(w139),
      .i1(w170),
      .i2(w166),
      .i3(w171));

PNU_OR3
     s86 (
      .o1(w140),
      .i1(w167),
      .i2(w166),
      .i3(w171));

PNU_CLK_DIV
     #(
      .cnt_num(250))
     s83 (
      .en(w173),
      .div_clk(w172),
      .rst(w165),
      .clk(w164));

PNU_ONE
     s87 (
      .o1(w173));

endmodule

