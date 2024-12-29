module _74HC161 (
    input wire CLK,       // 时钟输入
    input wire CLR,       // 异步清零输入
    input wire ENP,       // 正沿计数使能输入
    input wire ENT,       // 计数使能输入
    input wire [3:0] PRE, // 预置输入
    output reg [3:0] Q    // 计数输出
);

    // 计数器逻辑
    always @(posedge CLK or posedge CLR) begin
        if (CLR) begin
            Q <= 4'b0000;   // 异步清零时，Q清零
        end else if (ENP && ENT) begin
            if (Q == 4'b1001) begin
                Q <= 4'b0000; // 计数到9后，清零
            end else begin
                Q <= Q + 1;     // 正沿计数时，Q加1
            end
        end else if (ENT == 1'b0) begin
            Q <= PRE;       // 当ENT为低电平时，加载PRE的值
        end
    end

endmodule
