module HC85 (A, B, O);

input [3:0]A,B;
output [2:0]O;
reg [2:0]O;

always@(A or B) 
begin
if (A>B) O=3'b100;
else if (A==B) O=3'b010;
else if (A<B) O=3'b001;
end
endmodule

