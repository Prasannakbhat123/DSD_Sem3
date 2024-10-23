`timescale 1ns/1ns
`include "bitcomparator3.v"
module bitcomparator3_tb;
reg [2:0] a,b;
wire equal,greater,lower;
bitcomparator3 comp(a,b,equal,greater,lower);
initial
begin
$dumpfile("bitcomparator3.vcd");
$dumpvars(0,bitcomparator3_tb);

a = 3'b000; b =3'b000; #10;
a = 3'b000; b = 3'b001; #10;
a = 3'b100; b = 3'b010; #10;
a = 3'b101; b = 3'b111; #10;
a = 3'b110; b = 3'b010; #10;
a = 3'b111; b = 3'b111; #10;
$display("Test Complete");
end
endmodule
