`timescale 1ns/1ns
`include "synchronous_counter.v" // Ensure this file is in the same directory

module synchronous_counter_tb;
    reg clear, clk;
    wire [2:0] Q;

    // Instantiation
    synchronous_counter G0 (clear, clk, Q);

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clear = 0;
        clk = 1;
        #12 clear = 1; // Release clear after some time
        #150 $finish;   // Finish simulation after 150 time units
    end

    initial begin
        $dumpfile("synchronous_counter_tb.vcd");
        $dumpvars(0, synchronous_counter_tb);
        $monitor($time, " clear=%b, Q=%3b", clear, Q);
    end
endmodule

