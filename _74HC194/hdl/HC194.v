module _74HC194 (
    input wire CLK,         
    input wire CLR,         
    input wire [1:0] S,     
    input wire [3:0] D,     
    input wire SER,         
    output reg [3:0] Q      
);

    always @(posedge CLK or posedge CLR) begin
        if (CLR) begin
            Q <= 4'b0000; 
        end else begin
            case (S)
                2'b00: Q <= D;             
                2'b01: Q <= {SER, Q[3:1]}; 
                2'b10: Q <= {Q[2:0], SER}; 
                2'b11: Q <= Q;             
                default: Q <= Q;
            endcase
        end
    end

endmodule
