module priority_encoder_16to4(in,en,out);
input [15:0]in;
input en;
output reg [3:0]out;
integer i;
always @(in,en)
begin
if(en==1) begin
for(i=15;i>=0;i=i-1) begin
if(in[i]==1) begin
out=i;
break;
end
end
end
else
begin
out=4'b0000;
end
endmodule
