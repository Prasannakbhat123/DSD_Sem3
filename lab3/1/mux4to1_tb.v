`timescale 1ns/1ns
`include "mux4to1.v"

module mux4to1_tb();
    reg w0, w1, w2, w3;
    reg [1:0] S;
    wire f;
    mux4to1 mx4t1(w0,w1,w2,w3,S,f);
    initial 
    begin
        $dumpfile("mux4to1_tb.vcd");
        $dumpvars(0, mux4to1_tb);
        w0 = 0; w1 = 0; w2 = 0; w3 = 0; S = 2'b00;
        #10;

        w0 = 0; w1 = 1; w2 = 0; w3 = 0; S = 2'b01;
        #10;

        w0 = 0; w1 = 0; w2 = 1; w3 = 0; S = 2'b10;
        #10;

        w0 = 0; w1 = 0; w2 = 0; w3 = 1; S = 2'b11;
        #10;

        w0 = 1; w1 = 0; w2 = 0; w3 = 0; S = 2'b00;
        #10;

        w0 = 0; w1 = 1; w2 = 0; w3 = 0; S = 2'b01;
        #10;

        w0 = 0; w1 = 0; w2 = 1; w3 = 0; S = 2'b10;
        #10;

        w0 = 0; w1 = 0; w2 = 0; w3 = 1; S = 2'b11;
        #10;

        $display("Test Complete");
    end
endmodule

