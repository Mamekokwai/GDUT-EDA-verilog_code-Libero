module HC153(E,S,I,Y);
input E;
input [1:0]S;
input[3:0]I;
output Y;
reg Y;
    always@(E or S or I)
    begin
        if(E)Y=0;
        else begin  
        if(I[S])Y=1;
        else Y=0;
    end
end
endmodule