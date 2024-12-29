module HC138(E,A,Y);
    input [1:3]E;
    input [2:0]A;
    output [7:0]Y;
    reg [7:0]Y;

always@(A or E)
    begin
        Y=8'b11111111;
        if(E[1] || E[2] || !E[3])Y=8'b11111111;
        else Y[A]=0;
    end
endmodule
