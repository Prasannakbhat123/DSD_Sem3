module question3(A,B,C,D,f);
input A,B,C,D;
output f;
assign f =  (C|~D)&(~A|~B|~C|~D)&(B|C);
endmodule
