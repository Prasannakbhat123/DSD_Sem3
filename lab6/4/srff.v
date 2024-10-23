module srff(sr,clk,reset,q);
input [1:0]sr;
input clk,reset;
output reg q=0;
always @(negedge clk or negedge reset)
begin
if(!reset)
q<=0;
else
case(sr)
2'b00:q<=q;
2'b01:q<=0;
2'b10:q<=1;
2'b11:q<=1'bx;
default:q<=q;
endcase
end
endmodule

