module print_LOCK(S,a,b,c,d,e,f,g);

input [1:0] S;
output a;
output b;
output c;
output d;
output e;
output f;
output g;

wire [1:0] b2;
wire  w6;
wire  w7;
wire  w8;
wire  w9;
wire  w10;
wire  w11;
wire  w12;
wire  w14;
wire  w13;
wire  b2_1_w4;
wire  b2_0_w5;

assign b2 = S;
assign a = w7;
assign b = w6;
assign c = w8;
assign d = w9;
assign e = w10;
assign f = w11;
assign g = w12;

assign b2_1_w4 = {b2[1]};
assign b2_0_w5 = {b2[0]};

PNU_MUX4
     s0 (
      .e1(b2_1_w4),
      .e2(b2_0_w5),
      .o1(w6),
      .i1(w14),
      .i3(w14),
      .i4(w14),
      .i2(w13));

PNU_MUX4
     s1 (
      .e1(b2_1_w4),
      .e2(b2_0_w5),
      .o1(w8),
      .i1(w14),
      .i3(w14),
      .i4(w13),
      .i2(w13));

PNU_MUX4
     s2 (
      .e1(b2_1_w4),
      .e2(b2_0_w5),
      .o1(w9),
      .i4(w14),
      .i1(w13),
      .i2(w13),
      .i3(w13));

PNU_MUX4
     s3 (
      .e1(b2_1_w4),
      .e2(b2_0_w5),
      .o1(w10),
      .i1(w13),
      .i2(w13),
      .i3(w13),
      .i4(w13));

PNU_MUX4
     s4 (
      .e1(b2_1_w4),
      .e2(b2_0_w5),
      .o1(w11),
      .i1(w13),
      .i2(w13),
      .i3(w13),
      .i4(w13));

PNU_MUX4
     s5 (
      .e1(b2_1_w4),
      .e2(b2_0_w5),
      .o1(w12),
      .i1(w14),
      .i2(w14),
      .i3(w14),
      .i4(w13));

PNU_MUX4
     s6 (
      .e1(b2_1_w4),
      .e2(b2_0_w5),
      .o1(w7),
      .i1(w14),
      .i4(w13),
      .i3(w13),
      .i2(w13));

PNU_ONE
     s7 (
      .o1(w13));

PNU_ZERO
     s8 (
      .o1(w14));

endmodule

