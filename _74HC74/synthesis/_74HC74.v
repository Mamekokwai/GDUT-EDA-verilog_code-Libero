`timescale 1 ns/100 ps
// Version: v11.9 SP1 11.9.1.0


module _74HC74(
       Set,
       Reset,
       Clk,
       D,
       Q,
       Qn
    );
input  Set;
input  Reset;
input  Clk;
input  D;
output Q;
output Qn;

    wire GND, VCC, Q_3_net_1, Set_c, Reset_c, Clk_c, D_c, Q_c, Qn_c, 
        Q_3_i_net_1;
    
    OUTBUF Q_pad (.D(Q_c), .PAD(Q));
    DFN1C1 Q_inst_1 (.D(Q_3_net_1), .CLK(Clk_c), .CLR(Reset_c), .Q(Q_c)
        );
    INBUF D_pad (.PAD(D), .Y(D_c));
    OUTBUF Qn_pad (.D(Qn_c), .PAD(Qn));
    INBUF Reset_pad (.PAD(Reset), .Y(Reset_c));
    OR2 Q_3 (.A(Set_c), .B(D_c), .Y(Q_3_net_1));
    VCC VCC_i (.Y(VCC));
    INBUF Set_pad (.PAD(Set), .Y(Set_c));
    DFN1P1 Qn_inst_1 (.D(Q_3_i_net_1), .CLK(Clk_c), .PRE(Reset_c), .Q(
        Qn_c));
    GND GND_i (.Y(GND));
    INV Q_3_i (.A(Q_3_net_1), .Y(Q_3_i_net_1));
    CLKBUF Clk_pad (.PAD(Clk), .Y(Clk_c));
    
endmodule
