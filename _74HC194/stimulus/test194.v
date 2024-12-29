`timescale 1ns / 1ps

module test194;
    reg CLK, CLR;
    reg [1:0] S;      
    reg [3:0] D;      
    reg SER;          
    wire [3:0] Q;    
    _74HC194 u194 (
        .CLK(CLK),
        .CLR(CLR),
        .S(S),
        .D(D),
        .SER(SER),
        .Q(Q)
    );
    always begin
        #5 CLK = ~CLK; 
    end
    initial begin
        CLK = 0; CLR = 0; S = 2'b00; D = 4'b1010; SER = 0;
        
        #10 CLR = 1; 
        #10 CLR = 0; S = 2'b00; D = 4'b1100; 
        #10 S = 2'b01; SER = 1; 
        #10 S = 2'b10; SER = 0; 
        #10 S = 2'b01; SER = 1; 
        #10 S = 2'b11; 
        #20 CLR = 1; // ???
        #10 CLR = 0; D = 4'b0011; SER = 0; // ??? D ?SER
        #10 S = 2'b00; // ???
        #10 S = 2'b01; SER = 1; // ???????SER
        #10 S = 2'b10; SER = 0; // ???
        #10 S = 2'b01; SER = 1; // ???????SER
        #10 S = 2'b11; // ?????? D
        #20 CLR = 1; // ???
        #10 CLR = 0; S = 2'b01; SER = 1; // ???????SER
        #10 S = 2'b00; // ???
        #10 S = 2'b01; SER = 1; // ???????SER
        #10 S = 2'b10; SER = 0; // ???
        #10 S = 2'b01; SER = 1; // ???????SER
        #10 S = 2'b11; // ?????? D
        #20 CLR = 1; // ???
        #10 CLR = 0; S = 2'b10; SER = 0; // ???
        #10 S = 2'b00; // ???
        #10 S = 2'b01; SER = 1; // ???????SER
        #10 S = 2'b10; SER = 0; // ???
        #10 S = 2'b01; SER = 1; // ???????SER
        #10 S = 2'b11; // ?????? D
        #20 $finish;
    end
    
    initial begin
        $monitor("Time = %0t : CLR = %b, S = %b, D = %b, SER = %b, Q = %b", 
                 $time, CLR, S, D, SER, Q);
    end

endmodule
