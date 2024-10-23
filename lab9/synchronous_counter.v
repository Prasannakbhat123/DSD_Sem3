// Module for positive edge triggered T FF
module tff (Q, T, clear, clk);
    input T, clear, clk;
    output reg Q;

    always @(posedge clk or negedge clear) begin
        if (!clear)
            Q <= 0;
        else if (T)
            Q <= ~Q; // Toggle if T is high
    end
endmodule

// Synchronous 3-Bit Up Counter using T FF
module synchronous_counter (clear, clk, Q);
    input clear, clk;
    output [2:0] Q;

    wire w1, w2;

    // T Flip-Flops connections for up counting
    tff FF0 (Q[0], 1'b1, clear, clk);        // LSB toggles always
    tff FF1 (Q[1], Q[0], clear, clk);        // Toggles when Q[0] is 1
    tff FF2 (Q[2], Q[1], clear, clk);        // Toggles when Q[1] is 1

endmodule

