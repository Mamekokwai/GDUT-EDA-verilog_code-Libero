`timescale 1ns/1ns
module test3;
reg ina,rst,clk;
wire out_single, out_double, out_tri;
parameter clock_period=20; 
always#(clock_period/2)clk=~clk;
initial 
  begin
   clk=0;
   rst=1;
   #25 rst=0;
   #75 rst=1;
   #200 $finish;
  end
initial
  begin
   ina=0;
   #5;
   repeat(10)
     #30 ina=$random;
  end
 _3always u3(.clk(clk),.rst(rst),.ina(ina),
 .dataout(out_tri));
endmodule