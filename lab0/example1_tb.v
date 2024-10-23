`timescale 1ns/1ns
`include "example1.v"   //Name of the Verilog file
module example1_tb();
reg x1, x2, x3;
//Input
wire f;
//Output
example1 ex1(x1, x2, x3, f);  //Instantiation of the module
initial
begin
	$dumpfile("example1_tb.vcd");
	$dumpvars(0, example1_tb);
	x1=1'b0; x2=1'b0; x3=1'b0;
	#20;
	x1=1'b0; x2=1'b0; x3=1'b1;
	#20;
	x1=1'b0; x2=1'b1; x3=1'b0;
	#20;
	x1=1'b0; x2=1'b1; x3=1'b1;
	#20;
	x1=1'b1; x2=1'b0; x3=1'b0;
	#20;
	x1=1'b1; x2=1'b0; x3=1'b1;
	#20;
	x1=1'b1; x2=1'b1; x3=1'b0;
	#20;
	x1=1'b1; x2=1'b1; x3=1'b1;
	#20;
	$display("Test complete");
end
endmodule
