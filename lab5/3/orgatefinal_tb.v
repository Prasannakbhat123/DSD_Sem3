`timescale 1ns/1ns
`include "orgatefinal.v"

module orgatrfinal_tb;
  reg [3:0] in;
  wire f;

  orgatefinal ogf(in, f);

  initial begin
    $dumpfile("orgatrfinal_tb.vcd");
    $dumpvars(0, orgatrfinal_tb);
  

    in = 4'h0; #20;
    in = 4'h1; #20;
    in = 4'h2; #20;
    in = 4'h3; #20;
    in = 4'h4; #20;
    in = 4'h5; #20;
    in = 4'h6; #20;
    in = 4'h7; #20;
    in = 4'h8; #20;
    in = 4'h9; #20;
    in = 4'hA; #20;
    in = 4'hB; #20;
    in = 4'hC; #20;
    in = 4'hD; #20;
    in = 4'hE; #20;
    in = 4'hF; #20;

    $display("End");
  end
endmodule

