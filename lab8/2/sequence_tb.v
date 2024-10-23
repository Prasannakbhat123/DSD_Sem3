`timescale 1ns/1ns
`include "sequence.v"

module sequence_tb();
	reg clk;
	reg w;
	wire [1:0]state;
	wire z;
	sequence seq(clk,w,state,z);
	always #10 clk = ~clk;
	initial begin
		clk = 0; w =0;
		$dumpfile("sequence_tb.vcd");
		$dumpvars(0,sequence_tb);
		#10 w =0; #10 w = 0;
		#10 w =1; #10 w = 0;
		#10 w = 1; #10 w = 0;
		#10 w = 1; #10 w = 0;
		#10 w = 1; #10 w = 1;
		#200 $finish;		
	end
endmodule
		
