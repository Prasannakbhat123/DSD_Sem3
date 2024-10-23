module question2(A,B,C,D,f);
input A,B,C,D;
output f;
assign f =  (C&~D)|(~A&~D)|(B&~D)|(~A&B&C);
endmodule
