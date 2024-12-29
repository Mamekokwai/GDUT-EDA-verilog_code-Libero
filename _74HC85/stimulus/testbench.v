`timescale 1ns/1ns
module testbench;
    reg [3:0]A;
    reg [3:0]B;
    wire [2:0]O;
    integer I;

HC85 ul(A, B, O);

initial
    begin
    A=0;
    B=0;
    #5 A=4'b1001;
    for (I=1; I<=15; I=I+1)
        begin
        #5 B=I;
        end
        #5 A = 4'b1011;
        for (I=1;I<=15;I=I+1)

        begin
        #5 B=I;
        end
    end
initial
    $monitor ("time=%t, A=%b, B=%b, O=%b", $time, A, B, O);
endmodule
