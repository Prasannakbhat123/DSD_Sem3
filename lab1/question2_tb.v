`timescale 1ns/1ns
`include "question2.v" //Name of the Verilog file
module question2_tb();
reg A,B,C,D;
wire f;
question2 q2(A,B,C,D,f); //Instantiation of the module
initial
begin
	$dumpfile("question2_tb.vcd");
	$dumpvars(0, question2_tb);
	A =1'b0;B = 1'b0;C =1'b0;D= 1'b0;
	#20;
	A =1'b0;B = 1'b0;C =1'b0;D= 1'b1;
	#20;
	A =1'b0;B = 1'b0;C =1'b1;D= 1'b0;
	#20;
	A =1'b0;B = 1'b0;C =1'b1;D= 1'b1;
	#20;
	A =1'b0;B = 1'b1;C =1'b0;D= 1'b0;
	#20;
	A =1'b0;B = 1'b1;C =1'b0;D= 1'b1;
	#20;
	A =1'b0;B = 1'b1;C =1'b1;D= 1'b0;
	#20;
	A =1'b0;B = 1'b1;C =1'b1;D= 1'b1;
	#20;
	A =1'b1;B = 1'b0;C =1'b0;D= 1'b0;
	#20;
	A =1'b1;B = 1'b0;C =1'b0;D= 1'b1;
	#20;
	A =1'b1;B = 1'b0;C =1'b1;D= 1'b0;
	#20;
	A =1'b1;B = 1'b0;C =1'b1;D= 1'b1;
	#20;
	A =1'b1;B = 1'b1;C =1'b0;D= 1'b0;
	#20;
	A =1'b1;B = 1'b1;C =1'b0;D= 1'b1;
	#20;
	A =1'b1;B = 1'b1;C =1'b1;D= 1'b0;
	#20;
	A =1'b1;B = 1'b1;C =1'b1;D= 1'b1;
	#20;
	$display("Test complete");
end
endmodule
