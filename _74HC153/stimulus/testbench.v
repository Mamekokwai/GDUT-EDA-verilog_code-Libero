`timescale 1ns/1ns
module testbench;
    reg E;
    reg [1:0]S;
    reg [3:0]I;
    wire Y;
HC153 ul(E,S,I,Y);
    initial begin
    E=0;
    S=0;
    #5 E=1;
    #5 E=0;S[1]=0;S[0]=0;I=4'b0xxx;
    #5 E=0;S[1]=0;S[0]=0;I=4'b1xxx;
    #5 E=0;S[1]=0;S[0]=1;I=4'bx0xx;
    #5 E=0;S[1]=0;S[0]=1;I=4'bx1xx;
    #5 E=0;S[1]=1;S[0]=0;I=4'bxx0x;
    #5 E=0;S[1]=1;S[0]=0;I=4'b0xx1x;
    #5 E=0;S[1]=1;S[0]=1;I=4'bxxx0;
    #5 E=0;S[1]=1;S[0]=1;I=4'bxxx1;
    end 
    initial
        $monitor("time=%t,E=%b,S=%b,I=%b,Y=%b",$time,E,S,I,Y);
endmodule