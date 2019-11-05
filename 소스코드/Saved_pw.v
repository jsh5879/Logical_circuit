module Saved_pw(B0,clk,rst,B1,B2,B3);

output [3:0] B0;
input clk;
input rst;
output [3:0] B1;
output [3:0] B2;
output [3:0] B3;

wire [3:0] b29;
wire [3:0] b27;
wire [3:0] b14;
wire [3:0] b21;
wire  w27;
wire  w26;
wire  w28;
wire  w29;
wire  b29_0;
wire  b29_1;
wire  b29_2;
wire  b29_3;
wire  b27_0;
wire  b27_1;
wire  b27_2;
wire  b27_3;
wire  b14_0;
wire  b14_1;
wire  b14_2;
wire  b14_3;
wire  b21_0;
wire  b21_1;
wire  b21_2;
wire  b21_3;

assign B0 = b29;
assign w26 = clk;
assign w27 = rst;
assign B1 = b27;
assign B2 = b14;
assign B3 = b21;

assign b29[3] = b29_3;
assign b29[2] = b29_2;
assign b29[1] = b29_1;
assign b29[0] = b29_0;
assign b27[3] = b27_3;
assign b27[2] = b27_2;
assign b27[1] = b27_1;
assign b27[0] = b27_0;
assign b14[3] = b14_3;
assign b14[2] = b14_2;
assign b14[1] = b14_1;
assign b14[0] = b14_0;
assign b21[3] = b21_3;
assign b21[2] = b21_2;
assign b21[1] = b21_1;
assign b21[0] = b21_0;

PNU_DFF
     s0 (
      .Q(b29_3),
      .reset(w27),
      .clock(w26),
      .D(w28));

PNU_DFF
     s1 (
      .Q(b29_2),
      .reset(w27),
      .clock(w26),
      .D(w29));

PNU_DFF
     s2 (
      .Q(b29_1),
      .reset(w27),
      .clock(w26),
      .D(w29));

PNU_DFF
     s3 (
      .Q(b29_0),
      .reset(w27),
      .clock(w26),
      .D(w29));

PNU_DFF
     s4 (
      .Q(b27_3),
      .reset(w27),
      .clock(w26),
      .D(w28));

PNU_DFF
     s5 (
      .Q(b27_2),
      .reset(w27),
      .clock(w26),
      .D(w29));

PNU_DFF
     s6 (
      .Q(b27_1),
      .reset(w27),
      .clock(w26),
      .D(w29));

PNU_DFF
     s7 (
      .Q(b27_0),
      .reset(w27),
      .clock(w26),
      .D(w29));

PNU_DFF
     s8 (
      .Q(b14_3),
      .reset(w27),
      .clock(w26),
      .D(w28));

PNU_DFF
     s9 (
      .Q(b14_2),
      .reset(w27),
      .clock(w26),
      .D(w29));

PNU_DFF
     s10 (
      .Q(b14_1),
      .reset(w27),
      .clock(w26),
      .D(w29));

PNU_DFF
     s11 (
      .Q(b14_0),
      .reset(w27),
      .clock(w26),
      .D(w29));

PNU_DFF
     s12 (
      .Q(b21_3),
      .reset(w27),
      .clock(w26),
      .D(w28));

PNU_DFF
     s13 (
      .Q(b21_2),
      .reset(w27),
      .clock(w26),
      .D(w29));

PNU_DFF
     s14 (
      .Q(b21_1),
      .reset(w27),
      .clock(w26),
      .D(w29));

PNU_DFF
     s15 (
      .Q(b21_0),
      .reset(w27),
      .clock(w26),
      .D(w29));

PNU_ZERO
     s16 (
      .o1(w29));

PNU_ONE
     s17 (
      .o1(w28));

endmodule

