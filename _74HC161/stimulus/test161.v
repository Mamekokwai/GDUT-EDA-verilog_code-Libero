`timescale 1ns / 1ps
module test161;
    // Testbench 信号
    reg CLK, CLR, ENP, ENT;
    reg [3:0] PRE;
    wire [3:0] Q; // 计数输出
    // 实例化 74HC161
    _74HC161 u161 (
        .CLK(CLK),
        .CLR(CLR),
        .ENP(ENP),
        .ENT(ENT),
        .PRE(PRE),
        .Q(Q)
    );

    // 生成时钟信号
    always begin
        #5 CLK = ~CLK; // 10ns 周期时钟
    end
    // 测试信号序列
 initial begin
        CLK = 0; CLR = 0; ENP = 0; ENT = 0; PRE = 4'b0000;
        #10 CLR = 1;
        #10 CLR = 0;
        #10 PRE = 4'b1010;
        #10 CLR = 1;
        #10 CLR = 0;
        ENP = 1; ENT = 1;
        #100;#10 ENT = 0;
        #100;#10 ENP = 0;
        #100;#10 CLR = 1; ENT = 1;
        #10 CLR = 0;
        #10 PRE = 4'b0011;
        #10 CLR = 1;
        #10 CLR = 0;
        ENP = 1; ENT = 1;
        #100;#10 CLR = 1; PRE = 4'b1010;
        #10 CLR = 0;
        ENP = 1; ENT = 1;
        #100;
    end
    // 监控信号变化
    initial begin
        $monitor("Time = %0t : CLR = %b, ENP = %b, ENT = %b, PRE = %b, Q = %b", 
                 $time, CLR, ENP, ENT, PRE, Q);
    end
endmodule
