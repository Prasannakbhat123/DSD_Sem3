`timescale 1ns/1ns
`include "tff.v"
module tff_tb();
reg t,clk,reset;
wire q;
tff tb(t,clk,reset,q);

initial begin
clk=0;
forever #20 clk=~clk;
end

initial begin
$dumpfile("tff_tb.vcd");
$dumpvars(0,tff_tb);
end

initial begin
t=1;reset=1;#20;
t=0;reset=1;#20;
t=1;reset=1;#20;
t=1;reset=0;#20;
t=1;reset=1;#20;
t=1;reset=1;#20;
t=0;reset=0;#20;
t=1;reset=1;#20;
t=1;reset=1;
#200 
$display("DONE");
$finish;
end 
endmodule

