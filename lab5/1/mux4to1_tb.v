`timescale 1ns/1ns
`include "mux4to1.v"
module mux4to1_tb();
reg [1:0]ab;
reg c,d;
wire f;
mux4to1 m4to1(ab,c,d,f);
initial
begin
$dumpfile("mux4to1_tb.vcd");
$dumpvars(0,mux4to1_tb);
ab=2'b00;c=1'b0;d=1'b0;#10;
ab=2'b00;c=1'b0;d=1'b1;#10;
ab=2'b00;c=1'b1;d=1'b0;#10;
ab=2'b00;c=1'b1;d=1'b1;#10;
ab=2'b01;c=1'b0;d=1'b0;#10;
ab=2'b01;c=1'b0;d=1'b1;#10;
ab=2'b01;c=1'b1;d=1'b0;#10;
ab=2'b01;c=1'b1;d=1'b1;#10;
ab=2'b10;c=1'b0;d=1'b0;#10;
ab=2'b10;c=1'b0;d=1'b1;#10;
ab=2'b10;c=1'b1;d=1'b0;#10;
ab=2'b10;c=1'b1;d=1'b1;#10;
ab=2'b11;c=1'b0;d=1'b0;#10;
ab=2'b11;c=1'b0;d=1'b1;#10;
ab=2'b11;c=1'b1;d=1'b0;#10;
ab=2'b11;c=1'b1;d=1'b1;#10;
$display("Done");
end
endmodule

