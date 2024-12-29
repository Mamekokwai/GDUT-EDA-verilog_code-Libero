module _74HC112(
    input S, R, Clk, J, K,   // Inputs: Set (S), Reset (R), Clock (Clk), J, K
    output reg Q,             // Output: Q
    output Q_N                // Output: Q_N (complement of Q)
);

  // Always block to handle the reset and set conditions
  always @(posedge Clk or posedge R or posedge S) begin
    if (R) begin
      Q <= 0;        // Reset Q when R is active
    end else if (S) begin
      Q <= 1;        // Set Q when S is active
    end else begin
      case ({J, K})
        2'b00: Q <= Q;         // No change
        2'b01: Q <= 0;         // Reset Q
        2'b10: Q <= 1;         // Set Q
        2'b11: Q <= ~Q;        // Toggle Q
      endcase
    end
  end

  // Ensuring Q_N is always the complement of Q
  assign Q_N = ~Q;

endmodule
