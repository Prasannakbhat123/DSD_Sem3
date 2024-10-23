`timescale 1ns/1ns
`include "jkff.v"
module jkff_tb();
reg[1:0]jk;
reg clk,reset;
wire q;
jkff ab(jk,clk,reset,q);
initial begin
$dumpfile("jkff_tb.vcd");
$dumpvars(0,jkff_tb);
end
initial begin
clk=0;
forever #20 clk=~clk;
end
    initial begin
        jk = 2'b00; reset = 0; #20;
        jk = 2'b01; reset = 0; #20;
        jk = 2'b10; reset = 0; #20;
        jk = 2'b11; reset = 0; #20;
        jk = 2'b00; reset = 1; #20;
        jk = 2'b11; reset = 1; #20;
        jk = 2'b01; reset = 0; #20;
        jk = 2'b10; reset = 0; #20;
        jk = 2'b11; reset = 0; #20;
        jk = 2'b01; reset = 0; #20;
        #220;

        $display("DONE");
        $finish;
    end
endmodule
