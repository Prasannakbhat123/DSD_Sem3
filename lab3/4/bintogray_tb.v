`timescale 1ns/1ns
`include "bintogray.v"
module bintogray_tb;
reg [3:0]bin;
wire [3:0]gray;
	bintogray btg(bin,gray);
initial
begin
$dumpfile("bintogray_tb.vcd");
$dumpvars(0,bintogray_tb);
bin = 4'b0010; #10;
bin = 4'b0110; #10;
bin = 4'b0011; #10;
bin = 4'b1010; #10;
bin = 4'b1111; #10;
bin = 4'b0010; #10;
$display("Test Complete");
end
endmodule
