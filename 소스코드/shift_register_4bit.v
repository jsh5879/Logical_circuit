module shift_register_4bit(CLK,RST,Din,B0,B1,B2,B3);

input CLK;
input RST;
input Din;
output B0;
output B1;
output B2;
output B3;

wire  w0;
wire  w4;
wire  w9;
wire  w10;
wire  w8;
wire  w6;
wire  w7;

assign w7 = CLK;
assign w6 = RST;
assign w0 = Din;
assign B0 = w4;
assign B1 = w10;
assign B2 = w8;
assign B3 = w9;

PNU_DFF
     FF3 (
      .D(w0),
      .Q(w4),
      .reset(w6),
      .clock(w7));

PNU_DFF
     FF2 (
      .D(w4),
      .Q(w10),
      .reset(w6),
      .clock(w7));

PNU_DFF
     s2 (
      .D(w10),
      .Q(w8),
      .reset(w6),
      .clock(w7));

PNU_DFF
     s3 (
      .Q(w9),
      .D(w8),
      .reset(w6),
      .clock(w7));

endmodule

