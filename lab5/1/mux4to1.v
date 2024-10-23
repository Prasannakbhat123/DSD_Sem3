module mux4to1(ab,c,d,f);
input [1:0]ab;
input c,d;
output reg f;
always @(*)begin
case (ab)
2'b00:f=~c|~d;
2'b01:f=~d;
2'b10:f=~c&~d;
2'b11:f=~d;
default:f=1'b0;
endcase
end
endmodule
