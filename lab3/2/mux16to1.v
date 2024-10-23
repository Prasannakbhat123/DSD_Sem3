 module mux2to1(a,b,sel,out);
 input a,b,sel;
 output reg out;
 always @ (a,b,sel)  begin
 case(sel)
	 0: out =a;
	 1: out =b;
	 default: out = 1'b0;
	 endcase
 end 
 endmodule  
 
 module mux8to1(in,sel,out);
 input [7:0]in;
 output [2:0]sel;
 output reg out;
 
 always @ (in,sel) begin
  case (sel)
  	0 : out = in[0];
  	1 : out = in[1];
  	2: out = in[2];
  	3: out = in[3];
  	4: out = in[4];
  	5: out = in[5];
  	6: out = in[6];
  	7: out = in[7];
  	default: out = 1'b0;
  	endcase
end
endmodule

module mux16to1(in,sel,out);
input [15:0]in;
input [3:0]sel;
output  out;
wire mux1_out,mux2_out;
mux8to1 mux1(in[7:0],sel[2:0],mux1_out);
mux8to1 mux2(in[15:8],sel[2:0],mux2_out);
mux2to1 mux3(mux1_out,mux2_out,sel[3],out);
endmodule	
