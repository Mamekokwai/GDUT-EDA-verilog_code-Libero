module _3always(clk, rst, ina, dataout);
    input clk, rst, ina;
    output reg dataout; // ??dataout????????
    parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b11, s3 = 2'b10;
    reg [1:0] current_state, next_state;

    // ??????
    always @(current_state or ina)
    begin
        case(current_state)
            s0: begin
                if (ina == 1)
                    next_state <= s1;
                else
                    next_state <= s0;
            end
            s1: begin
                if (ina == 1)
                    next_state <= s2;
                else
                    next_state <= s0;
            end
            s2: begin
                if (ina == 1)
                    next_state <= s3;
                else
                    next_state <= s0;
            end
            s3: begin
                if (ina == 1)
                    next_state <= s3;
                else
                    next_state <= s0;
            end
            default: next_state <= s0;
        endcase
    end

    // ??????
    always @(posedge clk or negedge rst)
    begin
        if (!rst)
            current_state <= s0;
        else
            current_state <= next_state;
    end

    // ???????
    always @(*) // ??*????????????
    begin
        dataout = (current_state == s3); // ?current_state?s3??dataout?1????0
    end
endmodule
