module decoder2to4(w,EN,o);
input [1:0]w;
input EN;
output reg [3:0]o;
always @(w,EN)
begin
if(EN==0 && w==0)
o=1;
else if(EN==0 && w==1)
o=2;
else if(EN==0 && w==2)
o=4;
else if(EN==0 &&w ==3)
o=8;
else 
o=0;
end
endmodule


module decoder4to16(w,EN,o);
input [3:0]w;
input EN;
output [15:0]o;
wire [3:0]en;
decoder2to4 d1(w[3:2],EN,en[3:0]);
decoder2to4 d2(w[1:0],en[0],o[3:0]);
decoder2to4 d3(w[1:0],en[1],o[7:4]);
decoder2to4 d4(w[1:0],en[2],o[11:8]);
decoder2to4 d5(w[1:0],en[3],o[15:12]);
endmodule


