module mux8to1(s,in0,in1,in2,in3,in4,in5,in6,in7,op);
input [2:0]s;
input in0,in1,in2,in3,in4,in5,in6,in7;
output reg op;
always @(*)begin
case(s)
0:op=in0;
1:op=in1;
2:op=in2;
3:op=in2;
4:op=in4;
5:op=in5;
6:op=in6;
7:op=in7;
default:op=in0;
endcase
end
endmodule

module graytobin(g,b);
input [3:0]g;
output [3:0]b;
//wire i0,i1,i2,i3,i4,i5,i6,i7;
mux8to1 m3(g[3:1],1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,b[3]);
mux8to1 m2(g[3:1],1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,b[2]);
mux8to1 m1(g[3:1],1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b1,b[1]);
mux8to1 m0(g[3:1],g[0],~g[0],~g[0],g[0],~g[0],g[0],g[0],~g[0],b[0]);
endmodule
