`timescale 1ns/1ns
module testbench;
    reg [1:3]E;
    reg [2:0]A;
    wire [7:0]Y;
    integer I;

HC138 ul(E,A,Y);
    initial 
    begin
     E=0;
     A=0;
     #5 E=3'b100;
     #5 E=3'b111;
     #5 E=3'b000;
    for(I=1;I<=7;I=I+1)#5 A=I;
     #5 E=3'b001;
    for(I=1;I<=7;I=I+1)#5 A=I;
    end
    initial
        $monitor("tiem=%t,E=%b,A=%b,Y=%b",$time,E,A,Y);
endmodule

