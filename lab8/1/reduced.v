module jkff(j,k,clk,q);
	input j,k;
	input clk;
	output reg q =0;
	always @ (posedge clk)
	begin case({j,k})
		2'b00 : q<=q;
		2'b01: q<=0;
		2'b10: q <= 1;
		2'b11: q<= ~q;
	endcase
	end
endmodule

module reduced(x,state,clk,out);
	input clk;
	input x;
	output [2:0]state;
	output reg out;
	wire j2,k2,j1,k1,j0,k0;
	assign j2 = ~x & state[1]&state[0];
	assign k2 = x;
	assign j1 = ~x;
	assign k1 = x & ~state[2];
	assign j0 = x;
	assign k0 = x/state[1];
	assign z = (~x&~state[2]&state[1])|(x&state[1]&state[0]);
	jkff ff2 (j2,k2,clk,state[2]);
	jkff ff1 (j1,k1,clk,state[1]);
	jkff ff0 (j0,k0,clk,state[0]);
endmodule	
