/ Module for positive edge triggered JK FF
// Module for positive edge triggered JK FF
module jkff (Q, J, K, clear, clk);
input J,K,clear, clk;
output reg Q;
always @ (posedge clk or negedge clear)
begin
if ( clear==0 )
Q<=0;
else if (J==0 && K==1)
Q<=0;
else if(J==1 && K==0)
Q<=1;
else if ( J==1 && K==1)
Q<=~Q;
else Q<=Q;
end
endmodule
module synchronous_counter (clear, clk, Q);
input clear, clk;
output [2:0] Q;
jkff FF0 (Q[0],~Q[1], 1'b1, clear, clk);
jkff FF1 (Q[1], Q[0], 1'b1, clear, clk);
jkff FF2 (Q[2], Q[1],Q[1],clear, clk);
endmodule
