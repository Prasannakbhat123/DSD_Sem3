module priority_encoder_4to2(in,en,out);
input [3:0]in;
input en;
output reg[1:0]out;
always @(in,en)
begin
if(en==1)
begin
casex(in)
4'b1xx:out=2'b11;
4'b01xx:out=2'b10;
4'b001x:out=2'b00;
4'b0000:out=2'b00;
endcase
end
else
begin
out=2'b00;
end
end
endmodule
