`timescale 1 ns/100 ps
// Version: v11.9 SP1 11.9.1.0


module _74HC161(
       CLK,
       CLR,
       ENP,
       ENT,
       PRE,
       Q
    );
input  CLK;
input  CLR;
input  ENP;
input  ENT;
input  [3:0] PRE;
output [3:0] Q;

    wire I_15, I_18, I_16, GND, Q_1_sqmuxa, \Q_5[0] , \Q_5[1] , 
        \Q_5[2] , \Q_5[3] , VCC, Q_5_sn_N_4_mux, N_27, N_28, N_29, 
        \un1_Q_1.DWACT_ADD_CI_0_TMP[0] , 
        \un1_Q_1.DWACT_ADD_CI_0_partial_sum[0] , 
        \un1_Q_1.DWACT_ADD_CI_0_g_array_12[0] , 
        \un1_Q_1.DWACT_ADD_CI_0_g_array_1[0] , CLK_c, CLR_c, ENP_c, 
        ENT_c, \PRE_c[0] , \PRE_c[1] , \PRE_c[2] , \PRE_c[3] , 
        \Q_c[0] , \Q_c[1] , \Q_c[2] , \Q_c[3] , Q_5_3_N_3_mux, 
        d_N_3_mux, Q12_0, Q12_1, Q_5_sn_m2_0;
    
    NOR2B \Q_RNIL8QN[3]  (.A(\Q_c[3] ), .B(\Q_c[0] ), .Y(Q12_0));
    XOR2 un1_Q_1_I_18 (.A(\Q_c[2] ), .B(
        \un1_Q_1.DWACT_ADD_CI_0_g_array_1[0] ), .Y(I_18));
    NOR2A \Q_RNO_1[3]  (.A(ENT_c), .B(Q_5_sn_N_4_mux), .Y(
        Q_5_3_N_3_mux));
    MX2 \Q_RNO_0[0]  (.A(\PRE_c[0] ), .B(
        \un1_Q_1.DWACT_ADD_CI_0_partial_sum[0] ), .S(ENT_c), .Y(N_27));
    INBUF ENP_pad (.PAD(ENP), .Y(ENP_c));
    MX2 \Q_RNO[3]  (.A(d_N_3_mux), .B(I_16), .S(Q_5_3_N_3_mux), .Y(
        \Q_5[3] ));
    DFN1C1 \Q[1]  (.D(\Q_5[1] ), .CLK(CLK_c), .CLR(CLR_c), .Q(\Q_c[1] )
        );
    NOR2A \Q_RNO[1]  (.A(N_28), .B(Q_5_sn_N_4_mux), .Y(\Q_5[1] ));
    NOR3C ENP_pad_RNISC2Q1 (.A(Q12_0), .B(Q12_1), .C(Q_5_sn_m2_0), .Y(
        Q_5_sn_N_4_mux));
    NOR2A \Q_RNO_0[3]  (.A(\PRE_c[3] ), .B(Q_5_sn_N_4_mux), .Y(
        d_N_3_mux));
    VCC VCC_i (.Y(VCC));
    XOR2 un1_Q_1_I_13 (.A(\Q_c[0] ), .B(Q_1_sqmuxa), .Y(
        \un1_Q_1.DWACT_ADD_CI_0_partial_sum[0] ));
    INBUF CLR_pad (.PAD(CLR), .Y(CLR_c));
    MX2 \Q_RNO_0[1]  (.A(\PRE_c[1] ), .B(I_15), .S(ENT_c), .Y(N_28));
    INBUF \PRE_pad[1]  (.PAD(PRE[1]), .Y(\PRE_c[1] ));
    DFN1C1 \Q[0]  (.D(\Q_5[0] ), .CLK(CLK_c), .CLR(CLR_c), .Q(\Q_c[0] )
        );
    XOR2 un1_Q_1_I_15 (.A(\Q_c[1] ), .B(
        \un1_Q_1.DWACT_ADD_CI_0_TMP[0] ), .Y(I_15));
    OUTBUF \Q_pad[2]  (.D(\Q_c[2] ), .PAD(Q[2]));
    AND2 un1_Q_1_I_1 (.A(\Q_c[0] ), .B(Q_1_sqmuxa), .Y(
        \un1_Q_1.DWACT_ADD_CI_0_TMP[0] ));
    XOR2 un1_Q_1_I_16 (.A(\Q_c[3] ), .B(
        \un1_Q_1.DWACT_ADD_CI_0_g_array_12[0] ), .Y(I_16));
    DFN1C1 \Q[3]  (.D(\Q_5[3] ), .CLK(CLK_c), .CLR(CLR_c), .Q(\Q_c[3] )
        );
    NOR2A \Q_RNO[2]  (.A(N_29), .B(Q_5_sn_N_4_mux), .Y(\Q_5[2] ));
    GND GND_i (.Y(GND));
    NOR2B ENP_pad_RNIIRDA (.A(ENT_c), .B(ENP_c), .Y(Q_5_sn_m2_0));
    MX2 \Q_RNO_0[2]  (.A(\PRE_c[2] ), .B(I_18), .S(ENT_c), .Y(N_29));
    INBUF ENT_pad (.PAD(ENT), .Y(ENT_c));
    OUTBUF \Q_pad[3]  (.D(\Q_c[3] ), .PAD(Q[3]));
    DFN1C1 \Q[2]  (.D(\Q_5[2] ), .CLK(CLK_c), .CLR(CLR_c), .Q(\Q_c[2] )
        );
    OUTBUF \Q_pad[1]  (.D(\Q_c[1] ), .PAD(Q[1]));
    INBUF \PRE_pad[2]  (.PAD(PRE[2]), .Y(\PRE_c[2] ));
    OUTBUF \Q_pad[0]  (.D(\Q_c[0] ), .PAD(Q[0]));
    AOI1B ENP_pad_RNISC2Q1_0 (.A(Q12_1), .B(Q12_0), .C(Q_5_sn_m2_0), 
        .Y(Q_1_sqmuxa));
    NOR2 \Q_RNIL8QN[1]  (.A(\Q_c[1] ), .B(\Q_c[2] ), .Y(Q12_1));
    INBUF \PRE_pad[0]  (.PAD(PRE[0]), .Y(\PRE_c[0] ));
    NOR2A \Q_RNO[0]  (.A(N_27), .B(Q_5_sn_N_4_mux), .Y(\Q_5[0] ));
    NOR2B un1_Q_1_I_22 (.A(\un1_Q_1.DWACT_ADD_CI_0_g_array_1[0] ), .B(
        \Q_c[2] ), .Y(\un1_Q_1.DWACT_ADD_CI_0_g_array_12[0] ));
    NOR2B un1_Q_1_I_20 (.A(\un1_Q_1.DWACT_ADD_CI_0_TMP[0] ), .B(
        \Q_c[1] ), .Y(\un1_Q_1.DWACT_ADD_CI_0_g_array_1[0] ));
    INBUF \PRE_pad[3]  (.PAD(PRE[3]), .Y(\PRE_c[3] ));
    CLKBUF CLK_pad (.PAD(CLK), .Y(CLK_c));
    
endmodule
