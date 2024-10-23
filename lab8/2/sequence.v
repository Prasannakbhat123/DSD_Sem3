module DFF(d,clk,q);
	input d;
	input clk;
	output reg q;
	always @(posedge clk)
			q<= d;
endmodule


module sequence(clk,w,state,z);
	input clk;
	input w;
	output [1:0]state;
	output z;
	wire d1,d0;
	assign d1 = ~w&state[0] | state[1]&state[0];
	assign d0 = w;
	assign z = ~w & state[1]&state[0];
	DFF ff1(d1,clk,state[1]);
	DFF ff2(d0,clk,state[0]);
endmodule

