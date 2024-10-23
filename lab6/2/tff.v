module tff(t,clk,reset,q);
input t,clk,reset;
output reg q=0;
always @(negedge clk)
begin
if(!reset)
q<=0;
else if(t)
q<=~q;
else 
q<=q;
end
endmodule
