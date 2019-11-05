module Counter_1bit(out,clk,rst);

output out;
input clk;
input rst;

wire  w1;
wire  w2;
wire  w4;
wire  w3;

assign out = w3;
assign w1 = clk;
assign w2 = rst;

PNU_DFF
     s0 (
      .clock(w1),
      .reset(w2),
      .Q(w4),
      .D(w3));

PNU_NOT
     s1 (
      .i1(w4),
      .o1(w3));

endmodule

