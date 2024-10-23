module decoder2to4(w,en,o);
input [1:0]w;
input en;
output reg [3:0]o;
always @(w,en)
begin
if(en==1)
begin
case(w)
0:o=1;
1:o=2;
2:o=4;
3:o=8;
endcase
end
else
begin
o=1'b0;
end
end
endmodule
module majorityfnc(in,y);
input [2:0]in;
output y;
wire [7:0]o;
decoder2to4 d1(in[1:0],~in[2],o[3:0]);
decoder2to4 d2(in[1:0],in[2],o[7:4]);
assign y=o[3]|o[5]|o[6]|o[7];
endmodule
