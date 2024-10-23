`timescale 1ns/1ns
`include "synchronous_counter.v" //Name of the Verilog file
module synchronous_counter_tb ;
reg clear, clk;
wire [2:0] Q;
// Instanstiation
synchronous_counter G0 (clear, clk, Q);
always #5 clk=~clk;
initial
begin
clear=0;
clk=1;
#150 $finish;
end
initial
begin
$dumpfile("synchronous_counter_tb.vcd");
$dumpvars(0,synchronous_counter_tb);
$monitor($time, " clear=%b, Q=%3b", clear, Q );
#12 clear =1;
end
endmodule
