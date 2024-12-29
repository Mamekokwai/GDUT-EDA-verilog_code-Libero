`timescale 1 ns/100 ps
// Version: v11.9 SP1 11.9.1.0


module _74HC194(
       CLK,
       CLR,
       S,
       D,
       SER,
       Q
    );
input  CLK;
input  CLR;
input  [1:0] S;
input  [3:0] D;
input  SER;
output [3:0] Q;

    wire Q14_net_1, \Q_5[0]_net_1 , \Q_5[1]_net_1 , \Q_5[2]_net_1 , 
        \Q_5[3]_net_1 , GND, VCC, N_7, N_8, N_10, N_9, CLK_c, CLR_c, 
        \S_c[0] , \S_c[1] , \D_c[0] , \D_c[1] , \D_c[2] , \D_c[3] , 
        SER_c, \Q_c[0] , \Q_c[1] , \Q_c[2] , \Q_c[3] ;
    
    OUTBUF \Q_pad[1]  (.D(\Q_c[1] ), .PAD(Q[1]));
    MX2 \Q_5[3]  (.A(N_10), .B(\Q_c[2] ), .S(\S_c[1] ), .Y(
        \Q_5[3]_net_1 ));
    CLKBUF CLK_pad (.PAD(CLK), .Y(CLK_c));
    MX2 \Q_5_0[0]  (.A(\D_c[0] ), .B(\Q_c[1] ), .S(\S_c[0] ), .Y(N_7));
    MX2 \Q_5[2]  (.A(N_9), .B(\Q_c[1] ), .S(\S_c[1] ), .Y(
        \Q_5[2]_net_1 ));
    OUTBUF \Q_pad[2]  (.D(\Q_c[2] ), .PAD(Q[2]));
    MX2 \Q_5[0]  (.A(N_7), .B(SER_c), .S(\S_c[1] ), .Y(\Q_5[0]_net_1 ));
    DFN1E0C1 \Q[2]  (.D(\Q_5[2]_net_1 ), .CLK(CLK_c), .CLR(CLR_c), .E(
        Q14_net_1), .Q(\Q_c[2] ));
    INBUF \D_pad[1]  (.PAD(D[1]), .Y(\D_c[1] ));
    VCC VCC_i (.Y(VCC));
    INBUF \S_pad[1]  (.PAD(S[1]), .Y(\S_c[1] ));
    INBUF \D_pad[0]  (.PAD(D[0]), .Y(\D_c[0] ));
    NOR2B Q14 (.A(\S_c[1] ), .B(\S_c[0] ), .Y(Q14_net_1));
    GND GND_i (.Y(GND));
    INBUF \S_pad[0]  (.PAD(S[0]), .Y(\S_c[0] ));
    MX2 \Q_5_0[3]  (.A(\D_c[3] ), .B(SER_c), .S(\S_c[0] ), .Y(N_10));
    MX2 \Q_5[1]  (.A(N_8), .B(\Q_c[0] ), .S(\S_c[1] ), .Y(
        \Q_5[1]_net_1 ));
    INBUF CLR_pad (.PAD(CLR), .Y(CLR_c));
    OUTBUF \Q_pad[3]  (.D(\Q_c[3] ), .PAD(Q[3]));
    INBUF \D_pad[2]  (.PAD(D[2]), .Y(\D_c[2] ));
    INBUF SER_pad (.PAD(SER), .Y(SER_c));
    DFN1E0C1 \Q[3]  (.D(\Q_5[3]_net_1 ), .CLK(CLK_c), .CLR(CLR_c), .E(
        Q14_net_1), .Q(\Q_c[3] ));
    INBUF \D_pad[3]  (.PAD(D[3]), .Y(\D_c[3] ));
    OUTBUF \Q_pad[0]  (.D(\Q_c[0] ), .PAD(Q[0]));
    MX2 \Q_5_0[2]  (.A(\D_c[2] ), .B(\Q_c[3] ), .S(\S_c[0] ), .Y(N_9));
    DFN1E0C1 \Q[1]  (.D(\Q_5[1]_net_1 ), .CLK(CLK_c), .CLR(CLR_c), .E(
        Q14_net_1), .Q(\Q_c[1] ));
    DFN1E0C1 \Q[0]  (.D(\Q_5[0]_net_1 ), .CLK(CLK_c), .CLR(CLR_c), .E(
        Q14_net_1), .Q(\Q_c[0] ));
    MX2 \Q_5_0[1]  (.A(\D_c[1] ), .B(\Q_c[2] ), .S(\S_c[0] ), .Y(N_8));
    
endmodule
