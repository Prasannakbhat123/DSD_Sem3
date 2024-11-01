module priority_encoder_16to4(in, en, out);
    input [15:0] in;
    input en;
    output reg [3:0] out;
    integer i;

    always @(in, en) begin
        if (en == 1) begin
            out = 4'b0000; // Initialize out to 0 in case no inputs are high
            for (i = 15; i >= 0; i = i - 1) begin
                if (in[i] == 1) begin
                    out = i;
                    disable for; // Exit the for loop once the highest priority bit is found
                end
            end
        end else begin
            out = 4'b0000; // Output default value when enable is low
        end
    end
endmodule
