module dff(D,clk,reset,Q);
input D,clk,reset;
output reg Q=0;
always @(posedge clk)
begin
if(reset)
Q<=0;
else
Q<=D;
end
endmodule
