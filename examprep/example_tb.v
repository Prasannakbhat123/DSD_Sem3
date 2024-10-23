`timescale 1ns/1ns
`include "example.v"


module example_tb();
	reg x1,x2,x3,x4;
	wire f;
	example ex(x1,x2,x3,x4,f);
	initial
	begin
			$dumpfile("example_tb.vcd");
			$dumpvars(0,example_tb);
			
			x1=1'b0; x2=1'b0; x3=1'b0;x4 = 1'b0;
			#20;
			x1=1'b0; x2=1'b0; x3=1'b1;x4 = 1'b1;
			#20;
			x1=1'b0; x2=1'b1; x3=1'b0;x4 = 1'b0;
			#20;
			x1=1'b0; x2=1'b1; x3=1'b1;x4 = 1'b1;
			#20;
			x1=1'b1; x2=1'b0; x3=1'b0;x4 = 1'b0;
			#20;
			x1=1'b1; x2=1'b0; x3=1'b1;x4 = 1'b1;
			#20;
			x1=1'b1; x2=1'b1; x3=1'b0;x4 = 1'b0;
			#20;
			x1=1'b1; x2=1'b1; x3=1'b1;x4 = 1'b1;
			#20;
			
			$display("Test complete");
end 
endmodule


