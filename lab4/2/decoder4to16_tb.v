`timescale 1ns/1ns
`include "decoder4to16.v"
module decoder4to16_tb();
reg [3:0]w;
reg EN;
wire [15:0]o;
decoder4to16 d4to16(w,EN,o);
initial 
begin
$dumpfile("decoder4to16_tb.vcd");
$dumpvars(0,decoder4to16_tb);
EN=1'b0;w=4'b0000;#20;
EN=1'b1;w=4'b0010;#20;
EN=1'b1;w=4'b0111;#20;
EN=1'b1;w=4'b1100;#20;
EN=1'b1;w=4'b0101;#20;
EN=1'b1;w=4'b1111;#20;
EN=1'b1;w=4'b0001;#20;
EN=1'b1;w=4'b1110;#20;
$display("Test complete");
end
endmodule

