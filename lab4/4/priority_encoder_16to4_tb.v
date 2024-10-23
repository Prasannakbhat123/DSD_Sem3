`timescale 1ns/1ns
`include "priority_encoder_16to4.v"
module priority_encoder_16to4_tb ;
reg[15:0]in;
reg en;
wire [3:0]out;
priority_encoder_16to4 pr16to4(in,en,out);
initial
begin
$dumpfile("priority_encoder_16to4_tb.vcd");
$dumpvars(0,priority_encoder_16to4_tb);
en=1'b0;in=16'b0000001000000001;
en=1'b1;in=16'b0011111000000001;
en=1'b1;in=16'b1001000000100110;
en=1'b1;in=16'b0000000000000001;
en=1'b1;in=16'b0100000000000000;
en=1'b1;in=16'b0000000001100011;
$display("Test Complete");
end
endmodule
