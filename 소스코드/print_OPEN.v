module print_OPEN(S,a,b,c,d,e,f,g);

input [1:0] S;
output a;
output b;
output c;
output d;
output e;
output f;
output g;

wire  w2;
wire  w1;
wire [1:0] b2;
wire  w6;
wire  w7;
wire  w8;
wire  w9;
wire  w10;
wire  w11;
wire  w12;
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
      .i1(w2),
      .i2(w2),
      .i4(w2),
      .i3(w1),
      .e1(b2_1_w4),
      .e2(b2_0_w5),
      .o1(w6));

PNU_MUX4
     s1 (
      .i1(w2),
      .i4(w2),
      .i3(w1),
      .i2(w1),
      .e1(b2_1_w4),
      .e2(b2_0_w5),
      .o1(w8));

PNU_MUX4
     s2 (
      .i1(w2),
      .i3(w2),
      .i4(w1),
      .i2(w1),
      .e1(b2_1_w4),
      .e2(b2_0_w5),
      .o1(w9));

PNU_MUX4
     s3 (
      .i1(w2),
      .i2(w2),
      .i3(w2),
      .i4(w2),
      .e1(b2_1_w4),
      .e2(b2_0_w5),
      .o1(w10));

PNU_MUX4
     s4 (
      .i1(w2),
      .i2(w2),
      .i3(w2),
      .i4(w2),
      .e1(b2_1_w4),
      .e2(b2_0_w5),
      .o1(w11));

PNU_MUX4
     s5 (
      .i2(w2),
      .i3(w2),
      .i1(w1),
      .i4(w1),
      .e1(b2_1_w4),
      .e2(b2_0_w5),
      .o1(w12));

PNU_MUX4
     s6 (
      .i1(w2),
      .i2(w2),
      .i3(w2),
      .i4(w2),
      .e1(b2_1_w4),
      .e2(b2_0_w5),
      .o1(w7));

PNU_ONE
     s7 (
      .o1(w2));

PNU_ZERO
     s8 (
      .o1(w1));

endmodule

