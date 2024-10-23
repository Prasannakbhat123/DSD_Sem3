module jkff(jk,clk,reset,q);
input [1:0]jk;
input clk,reset;
output reg q=0;
always @(posedge clk or posedge reset)
begin
if(reset)
q<=0;
else
case(jk)
2'b00:q<=q;
2'b01:q<=0;
2'b10:q<=1;
2'b11:q<=~q;
default:q<=q;
endcase
end
endmodule

