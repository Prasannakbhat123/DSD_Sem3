`timescale 1ns/1ns
`include "priority_encoder_4to2.v"
module priority_encoder_4to2_tb;
reg [3:0]in;
reg en;
wire [1:0]out;
priority_encoder_4to2 pe4to2(in,en,out);
initial
begin
$dumpfile("priority_encoder_4to2_tb.vcd");
$dumpvars(0,priority_encoder_4to2_tb);
en=1'b0;in=4'b0001;#20;
en=1'b0;in=4'b0011;#20;
en=1'b1;in=4'b0010;#20;
en=1'b1;in=4'b1101;#20;
en=1'b1;in=4'b0100;#20;
en=1'b1;in=4'b1110;#20;
en=1'b1;in=4'b0000;#20;
en=1'b1;in=4'b1111;#20;
$display("Test Complete");
end
endmodule	
