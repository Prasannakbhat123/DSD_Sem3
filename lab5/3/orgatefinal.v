module decodergate(i, o);
  input [3:0] i;
  output reg [15:0] o;

  always @(*)
  begin
    case(i)
      4'b0000: o = 16'd1;
      4'b0001: o = 16'd2;
      4'b0010: o = 16'd4;
      4'b0011: o = 16'd8;
      4'b0100: o = 16'd16;
      4'b0101: o = 16'd32;
      4'b0110: o = 16'd64;
      4'b0111: o = 16'd128;
      4'b1000: o = 16'd256;
      4'b1001: o = 16'd512;
      4'b1010: o = 16'd1024;
      4'b1011: o = 16'd2048;
      4'b1100: o = 16'd4096;
      4'b1101: o = 16'd8192;
      4'b1110: o = 16'd16384;
      4'b1111: o = 16'd32768;
      default: o = 16'd0;
    endcase
  end
endmodule

module orgatefinal(in, f);
  input [3:0] in;
  output f;
  wire [15:0] o;

  decodergate dg(in, o);

  assign f = o[2] | o[3] | o[4] | o[5] | o[6] | o[7] | o[10] | o[11] | o[12] | o[15];
endmodule

