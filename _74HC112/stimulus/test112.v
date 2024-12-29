`timescale 1ns / 1ps
module test112();
  reg S, R, Clk, J, K;
  wire Q, Q_N;

  // Instantiate the 74HC112 module
  _74HC112 u112(.S(S), .R(R), .Clk(Clk), .J(J), .K(K), .Q(Q), .Q_N(Q_N));

  // Clock generation
  always begin
    #5 Clk = ~Clk;  // Clock with a 10-time unit period
  end

  // Stimulus for testing
initial begin
  Clk = 0;
  S = 0;
  R = 0;
  J = 0;
  K = 0;
  #10 R = 1;   // Assert reset
  #10 R = 0;   // Deassert reset
  #10 S = 1;   // Assert set
  #10 S = 0;   // Deassert set
  #10 J = 1; K = 0;  // Set Q to 1
  #10 J = 0; K = 1;  // Reset Q to 0
  #10 J = 1; K = 1;  // Toggle Q
  #10 J = 0; K = 0;  // No change
  #10 J = 1; K = 0;  // Set Q to 1
  #10 J = 0; K = 1;  // Reset Q to 0
  #10 J = 1; K = 1;  // Toggle Q
  #10 J = 0; K = 0;  // No change
  #10 R = 1; S = 1;  // Invalid state, typically ignored or handled by design
  #10 R = 0; S = 0;  // Return to normal state
  #10 $finish;
end


  // Monitor output signals
  initial begin
    $monitor("Time = %0d, S = %b, R = %b, J = %b, K = %b, Q = %b, Q_N = %b", $time, S, R, J, K, Q, Q_N);
  end
endmodule