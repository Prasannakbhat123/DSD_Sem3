`timescale 1ns/1ns
`include "decoder2to4.v"
module decoder2to4_tb();
reg [1:0]w;
reg en;
wire [3:0]op;
decoder2to4 d2t4(w,en,op);
initial
begin
$dumpfile("decoder2to4_tb.vcd");
$dumpvars(0,decoder2to4_tb);
en=1'b0;w=2'b00;#20;
en=1'b0;w=2'b01;#20;
en=1'b0;w=2'b10;#20;
en=1'b0;w=2'b11;#20;
en=1'b1;w=2'b00;#20;
en=1'b1;w=2'b01;#20;
en=1'b1;w=2'b10;#20;
en=1'b1;w=2'b11;#20;
$display("Test complete");
end
endmodule


