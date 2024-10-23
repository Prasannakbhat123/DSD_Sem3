module decoder2to4(w,en,o);
input [1:0]w;
input en;
output reg [3:0]o;
always @(w,en)
begin
if(en==0 && w==0)
o=1;
else if(en==0 && w==1)
o=2;
else if(en==0 && w==2)
o=4;
else if(en==0 &&w ==3)
o=8;
else 
o=0;
end
endmodule

