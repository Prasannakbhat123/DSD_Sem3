`timescale 1ns/1ns
`include "dff.v"

module dff_tb();
    reg D, clk, reset;
    wire Q;

    dff ab (D,clk,reset,Q);

    initial begin
        clk = 0;
        forever #20 clk = ~clk;  
    end
    initial begin
        $dumpfile("dff_tb.vcd");
        $dumpvars(0, dff_tb);
    end

    initial begin
        D = 0; reset = 0;
        #20;
        D = 1; reset = 0;
        #20;
        D = 0; reset = 0;
        #20;
        D = 1; reset = 0;
        #20;
        D = 0; reset = 0;
        #20;
        D = 1; reset = 1; 
        #20;
        D = 1; reset = 0; 
        #20;
        D = 1; reset = 0;
        #160;

        $display("DONE");
        $finish;
    end
endmodule

