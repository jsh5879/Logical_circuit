module BCD(B,D);

input [3:0] B;
output [10:0] D;

wire [3:0] b0;
wire  w12;
wire  w14;
wire  w10;
wire  w16;
wire [10:0] b9;
wire  b0_2_w13;
wire  b0_0_w9;
wire  b0_3_w11;
wire  b0_1_w15;
wire  b9_0;
wire  b9_1;
wire  b9_2;
wire  b9_3;
wire  b9_4;
wire  b9_5;
wire  b9_6;
wire  b9_7;
wire  b9_8;
wire  b9_9;
wire  b9_10;

assign b0 = B;
assign D = b9;

assign b9[10] = b9_10;
assign b9[9] = b9_9;
assign b9[8] = b9_8;
assign b9[7] = b9_7;
assign b9[6] = b9_6;
assign b9[5] = b9_5;
assign b9[4] = b9_4;
assign b9[3] = b9_3;
assign b9[2] = b9_2;
assign b9[1] = b9_1;
assign b9[0] = b9_0;

assign b0_2_w13 = {b0[2]};
assign b0_0_w9 = {b0[0]};
assign b0_3_w11 = {b0[3]};
assign b0_1_w15 = {b0[1]};

PNU_NOT
     s0 (
      .i1(b0_0_w9),
      .o1(w16));

PNU_NOT
     s1 (
      .o1(w14),
      .i1(b0_1_w15));

PNU_NOT
     s2 (
      .i1(b0_2_w13),
      .o1(w10));

PNU_NOT
     s3 (
      .o1(w12),
      .i1(b0_3_w11));

PNU_AND4
     s4 (
      .i4(w12),
      .i2(w14),
      .i3(w10),
      .i1(w16),
      .o1(b9_0));

PNU_AND4
     s5 (
      .i4(w12),
      .i2(w14),
      .i1(b0_0_w9),
      .i3(w10),
      .o1(b9_1));

PNU_AND4
     s6 (
      .i4(w12),
      .i3(w10),
      .i2(b0_1_w15),
      .i1(w16),
      .o1(b9_2));

PNU_AND4
     s7 (
      .i4(w12),
      .i1(b0_0_w9),
      .i3(w10),
      .i2(b0_1_w15),
      .o1(b9_3));

PNU_AND4
     s8 (
      .i3(b0_2_w13),
      .i4(w12),
      .i2(w14),
      .i1(w16),
      .o1(b9_4));

PNU_AND4
     s9 (
      .i3(b0_2_w13),
      .i4(w12),
      .i2(w14),
      .i1(b0_0_w9),
      .o1(b9_5));

PNU_AND4
     s10 (
      .i3(b0_2_w13),
      .i4(w12),
      .i2(b0_1_w15),
      .i1(w16),
      .o1(b9_6));

PNU_AND4
     s11 (
      .i3(b0_2_w13),
      .i4(w12),
      .i1(b0_0_w9),
      .i2(b0_1_w15),
      .o1(b9_7));

PNU_AND4
     s12 (
      .i2(w14),
      .i4(b0_3_w11),
      .i3(w10),
      .i1(w16),
      .o1(b9_8));

PNU_AND4
     s13 (
      .i2(w14),
      .i1(b0_0_w9),
      .i4(b0_3_w11),
      .i3(w10),
      .o1(b9_9));

PNU_AND4
     s14 (
      .i4(b0_3_w11),
      .i3(w10),
      .i2(b0_1_w15),
      .i1(w16),
      .o1(b9_10));

endmodule

