module mux4to1(w0,w1,w2,w3,S,f);
	input w0,w1,w2,w3;
	input [1:0]S;
	output reg f;
	
	
	always @(w0 or w1 or w2 or w3 or S) begin
        if (S == 2'b00)
            f = w0;
        else if (S == 2'b01)
            f = w1;
        else if (S == 2'b10)
            f = w2;
        else if (S == 2'b11)
            f = w3;
        else
            f = 1'b0;
           
	end
     endmodule
	
	
	 

