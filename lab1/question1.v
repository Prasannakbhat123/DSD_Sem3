module question1(A,B,C,D,f);
input A,B,C,D;
output f;
assign f =  (~A &~B)|(~B&~C)|(~C&~D);
endmodule



