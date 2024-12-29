`timescale 1ns / 1ps
module test74();
  reg Set, Reset, Clk, D;
  wire Q, Qn;

  // Instantiate the HC74 module
  _74HC74 u74 (.Set(Set), .Reset(Reset), .Clk(Clk), .D(D), .Q(Q), .Qn(Qn));

  // Generate clock signal
  always begin
    #5 Clk = ~Clk; // Clock with 10 time unit period
  end

  // Stimulus for testing
initial begin
    Clk = 0;
    Set = 0;
    Reset = 0;
    D = 0;
    #10 Reset = 1;
    #10 Reset = 0;
    #10 Set = 1;
    #10 Set = 0;
    #10 D = 1;
    #10 D = 0;
    #10 Reset = 1;
    #10 Reset = 0;
    #10 Set = 1;
    #10 Set = 0;
    #10 D = 1;
    #10 D = 0;
    #10 Reset = 1;
    #10 Reset = 0;
    #10 Set = 1;
    #10 Set = 0;
    #10 D = 1;
    #10 D = 0;
    #10 $finish;
end
  // Monitor output signals
  initial begin
    $monitor("Time = %0d, Set = %b, Reset = %b, D = %b, Q = %b, Qn = %b", $time, Set, Reset, D, Q, Qn);
  end

endmodule