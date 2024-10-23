module bintogray(bin,gray);
input [3:0]bin;
output reg eq[3:0] gray;
parameter N =4;
integer i;
always @(bin) begin
	gray[N-1] = bin[N-1];
	for(i =0;i<N-1;i=i+1)begin
		gray[i] = bin[i]^bin[i+1];
	end
end
endmodule
