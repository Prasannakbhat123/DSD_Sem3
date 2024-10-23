// Module for positive edge triggered JK FF
module jkff (Q, J, K, clear, clk);
    input J, K, clear, clk;
    output reg Q;

    always @(posedge clk or negedge clear) begin
        if (!clear)
            Q <= 0;
        else if (J == 0 && K == 1)
            Q <= 0; // Reset state
        else if (J == 1 && K == 0)
            Q <= 1; // Set state
        else if (J == 1 && K == 1)
            Q <= ~Q; // Toggle state
    end
endmodule

// Synchronous 3-Bit Up Counter using JK FF
module synchronous_counter (clear, clk, Q);
    input clear, clk;
    output [2:0] Q;

    // JK flip-flops connections
    jkff FF0 (Q[0], ~Q[1], 1'b1, clear, clk);            // LSB toggles always (J=K=1)
    jkff FF1 (Q[1], Q[0], ~Q[0], clear, clk);           // Toggles when Q[0] is 1
    jkff FF2 (Q[2], Q[1], Q[1]&(~Q[0]), clear, clk);            // Toggles when Q[1] is 1

endmodule

