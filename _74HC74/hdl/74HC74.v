module _74HC74(Set, Reset, Clk, D, Q, Qn);
  input Set, Reset, Clk, D;
  output reg Q, Qn;  // Declare Q and Qn as registers for sequential logic

  // Asynchronous reset and set, synchronous data transfer logic
  always @(posedge Clk or posedge Reset) begin
    if (Reset) begin
      Q <= 0;  // Reset Q to 0
      Qn <= 1; // Reset Qn to 1 (opposite of Q)
    end else if (Set) begin
      Q <= 1;  // Set Q to 1
      Qn <= 0; // Set Qn to 0 (opposite of Q)
    end else begin
      Q <= D;  // Set Q to D (normal flip-flop behavior)
      Qn <= ~D; // Set Qn to the inverse of D
    end
  end
endmodule
