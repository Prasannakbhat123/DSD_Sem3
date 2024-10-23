`timescale 1ns/1ns
`include "majorityfnc.v"
module majorityfnc_tb;
reg [2:0]in;
wire y;
majorityfnc mfn(in,y);
initial
begin
$dumpfile("majorityfnc_tb.vcd");
$dumpvars(0,majorityfnc_tb);
in=3'd0;#20;
in=3'd1;#20;
in=3'd2;#20;
in=3'd3;#20;
in=3'd4;#20;
in=3'd5;#20;
in=3'd6;#20;
in=3'd7;#20;
$display("Done");
end
endmodule
