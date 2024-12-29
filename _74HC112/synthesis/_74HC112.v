`timescale 1 ns/100 ps
// Version: v11.9 SP1 11.9.1.0


module _74HC112(
       S,
       R,
       Clk,
       J,
       K,
       Q,
       Q_N
    );
input  S;
input  R;
input  Clk;
input  J;
input  K;
output Q;
output Q_N;

    wire N_19_mux, GND, VCC, S_c, R_c, Clk_c, J_c, K_c, Q_c, 
        Q_c_i_net_1;
    
    OUTBUF Q_pad (.D(Q_c), .PAD(Q));
    OUTBUF Q_N_pad (.D(Q_c_i_net_1), .PAD(Q_N));
    DFN1P1C1 Q_inst_1 (.D(N_19_mux), .CLK(Clk_c), .PRE(S_c), .CLR(R_c), 
        .Q(Q_c));
    MX2B Q_0 (.A(J_c), .B(K_c), .S(Q_c), .Y(N_19_mux));
    INBUF J_pad (.PAD(J), .Y(J_c));
    INV Q_c_i (.A(Q_c), .Y(Q_c_i_net_1));
    VCC VCC_i (.Y(VCC));
    INBUF R_pad (.PAD(R), .Y(R_c));
    INBUF K_pad (.PAD(K), .Y(K_c));
    GND GND_i (.Y(GND));
    INBUF S_pad (.PAD(S), .Y(S_c));
    INBUF Clk_pad (.PAD(Clk), .Y(Clk_c));
    
endmodule
