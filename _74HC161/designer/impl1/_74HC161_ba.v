`timescale 1 ns/100 ps
// Version: v11.9 SP1 11.9.1.0
// File used only for Simulation


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

    wire I_15, I_18, I_16, Q_1_sqmuxa, \Q_5[0] , \Q_5[1] , \Q_5[2] , 
        \Q_5[3] , Q_5_sn_N_4_mux, N_27, N_28, N_29, 
        \un1_Q_1.DWACT_ADD_CI_0_TMP[0] , 
        \un1_Q_1.DWACT_ADD_CI_0_partial_sum[0] , 
        \un1_Q_1.DWACT_ADD_CI_0_g_array_1[0] , CLK_c, CLR_c, ENP_c, 
        ENT_c, \PRE_c[0] , \PRE_c[1] , \PRE_c[2] , \PRE_c[3] , 
        \Q_c[0] , \Q_c[1] , \Q_c[2] , \Q_c[3] , Q_5_3_N_3_mux, 
        d_N_3_mux, Q12_0, Q12_1, Q_5_sn_m2_0, \ENP_pad/U0/NET1 , 
        \CLR_pad/U0/NET1 , \PRE_pad[1]/U0/NET1 , \Q_pad[2]/U0/NET1 , 
        \Q_pad[2]/U0/NET2 , \ENT_pad/U0/NET1 , \Q_pad[3]/U0/NET1 , 
        \Q_pad[3]/U0/NET2 , \Q_pad[1]/U0/NET1 , \Q_pad[1]/U0/NET2 , 
        \PRE_pad[2]/U0/NET1 , \Q_pad[0]/U0/NET1 , \Q_pad[0]/U0/NET2 , 
        VCC, \PRE_pad[0]/U0/NET1 , \PRE_pad[3]/U0/NET1 , 
        \CLK_pad/U0/NET1 , AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    NOR2B \Q_RNIL8QN[3]  (.A(\Q_c[3] ), .B(\Q_c[0] ), .Y(Q12_0));
    XOR2 un1_Q_1_I_18 (.A(\Q_c[2] ), .B(
        \un1_Q_1.DWACT_ADD_CI_0_g_array_1[0] ), .Y(I_18));
    NOR2A \Q_RNO_1[3]  (.A(ENT_c), .B(Q_5_sn_N_4_mux), .Y(
        Q_5_3_N_3_mux));
    MX2 \Q_RNO_0[0]  (.A(\PRE_c[0] ), .B(
        \un1_Q_1.DWACT_ADD_CI_0_partial_sum[0] ), .S(ENT_c), .Y(N_27));
    IOIN_IB \PRE_pad[2]/U0/U1  (.YIN(\PRE_pad[2]/U0/NET1 ), .Y(
        \PRE_c[2] ));
    IOPAD_IN \PRE_pad[3]/U0/U0  (.PAD(PRE[3]), .Y(\PRE_pad[3]/U0/NET1 )
        );
    IOIN_IB \CLR_pad/U0/U1  (.YIN(\CLR_pad/U0/NET1 ), .Y(CLR_c));
    IOTRI_OB_EB \Q_pad[0]/U0/U1  (.D(\Q_c[0] ), .E(VCC), .DOUT(
        \Q_pad[0]/U0/NET1 ), .EOUT(\Q_pad[0]/U0/NET2 ));
    MX2 \Q_RNO[3]  (.A(d_N_3_mux), .B(I_16), .S(Q_5_3_N_3_mux), .Y(
        \Q_5[3] ));
    DFN1C1 \Q[1]  (.D(\Q_5[1] ), .CLK(CLK_c), .CLR(CLR_c), .Q(\Q_c[1] )
        );
    NOR2A \Q_RNO[1]  (.A(N_28), .B(Q_5_sn_N_4_mux), .Y(\Q_5[1] ));
    NOR3C ENP_pad_RNISC2Q1 (.A(Q12_0), .B(Q12_1), .C(Q_5_sn_m2_0), .Y(
        Q_5_sn_N_4_mux));
    IOTRI_OB_EB \Q_pad[1]/U0/U1  (.D(\Q_c[1] ), .E(VCC), .DOUT(
        \Q_pad[1]/U0/NET1 ), .EOUT(\Q_pad[1]/U0/NET2 ));
    NOR2A \Q_RNO_0[3]  (.A(\PRE_c[3] ), .B(Q_5_sn_N_4_mux), .Y(
        d_N_3_mux));
    IOPAD_IN \PRE_pad[2]/U0/U0  (.PAD(PRE[2]), .Y(\PRE_pad[2]/U0/NET1 )
        );
    XOR2 un1_Q_1_I_13 (.A(\Q_c[0] ), .B(Q_1_sqmuxa), .Y(
        \un1_Q_1.DWACT_ADD_CI_0_partial_sum[0] ));
    IOPAD_TRI \Q_pad[3]/U0/U0  (.D(\Q_pad[3]/U0/NET1 ), .E(
        \Q_pad[3]/U0/NET2 ), .PAD(Q[3]));
    IOTRI_OB_EB \Q_pad[2]/U0/U1  (.D(\Q_c[2] ), .E(VCC), .DOUT(
        \Q_pad[2]/U0/NET1 ), .EOUT(\Q_pad[2]/U0/NET2 ));
    MX2 \Q_RNO_0[1]  (.A(\PRE_c[1] ), .B(I_15), .S(ENT_c), .Y(N_28));
    DFN1C1 \Q[0]  (.D(\Q_5[0] ), .CLK(CLK_c), .CLR(CLR_c), .Q(\Q_c[0] )
        );
    XOR2 un1_Q_1_I_15 (.A(\Q_c[1] ), .B(
        \un1_Q_1.DWACT_ADD_CI_0_TMP[0] ), .Y(I_15));
    AND2 un1_Q_1_I_1 (.A(\Q_c[0] ), .B(Q_1_sqmuxa), .Y(
        \un1_Q_1.DWACT_ADD_CI_0_TMP[0] ));
    IOPAD_TRI \Q_pad[0]/U0/U0  (.D(\Q_pad[0]/U0/NET1 ), .E(
        \Q_pad[0]/U0/NET2 ), .PAD(Q[0]));
    AX1C un1_Q_1_I_16 (.A(\un1_Q_1.DWACT_ADD_CI_0_g_array_1[0] ), .B(
        \Q_c[2] ), .C(\Q_c[3] ), .Y(I_16));
    DFN1C1 \Q[3]  (.D(\Q_5[3] ), .CLK(CLK_c), .CLR(CLR_c), .Q(\Q_c[3] )
        );
    IOPAD_IN \CLR_pad/U0/U0  (.PAD(CLR), .Y(\CLR_pad/U0/NET1 ));
    CLKIO \CLK_pad/U0/U1  (.A(\CLK_pad/U0/NET1 ), .Y(CLK_c));
    NOR2A \Q_RNO[2]  (.A(N_29), .B(Q_5_sn_N_4_mux), .Y(\Q_5[2] ));
    IOIN_IB \PRE_pad[0]/U0/U1  (.YIN(\PRE_pad[0]/U0/NET1 ), .Y(
        \PRE_c[0] ));
    IOPAD_TRI \Q_pad[1]/U0/U0  (.D(\Q_pad[1]/U0/NET1 ), .E(
        \Q_pad[1]/U0/NET2 ), .PAD(Q[1]));
    IOIN_IB \PRE_pad[1]/U0/U1  (.YIN(\PRE_pad[1]/U0/NET1 ), .Y(
        \PRE_c[1] ));
    IOPAD_IN \ENT_pad/U0/U0  (.PAD(ENT), .Y(\ENT_pad/U0/NET1 ));
    NOR2B ENP_pad_RNIIRDA (.A(ENT_c), .B(ENP_c), .Y(Q_5_sn_m2_0));
    IOPAD_TRI \Q_pad[2]/U0/U0  (.D(\Q_pad[2]/U0/NET1 ), .E(
        \Q_pad[2]/U0/NET2 ), .PAD(Q[2]));
    MX2 \Q_RNO_0[2]  (.A(\PRE_c[2] ), .B(I_18), .S(ENT_c), .Y(N_29));
    DFN1C1 \Q[2]  (.D(\Q_5[2] ), .CLK(CLK_c), .CLR(CLR_c), .Q(\Q_c[2] )
        );
    IOPAD_IN \PRE_pad[0]/U0/U0  (.PAD(PRE[0]), .Y(\PRE_pad[0]/U0/NET1 )
        );
    IOPAD_IN \CLK_pad/U0/U0  (.PAD(CLK), .Y(\CLK_pad/U0/NET1 ));
    IOPAD_IN \PRE_pad[1]/U0/U0  (.PAD(PRE[1]), .Y(\PRE_pad[1]/U0/NET1 )
        );
    IOIN_IB \ENP_pad/U0/U1  (.YIN(\ENP_pad/U0/NET1 ), .Y(ENP_c));
    IOPAD_IN \ENP_pad/U0/U0  (.PAD(ENP), .Y(\ENP_pad/U0/NET1 ));
    AOI1B ENP_pad_RNISC2Q1_0 (.A(Q12_1), .B(Q12_0), .C(Q_5_sn_m2_0), 
        .Y(Q_1_sqmuxa));
    NOR2 \Q_RNIL8QN[1]  (.A(\Q_c[1] ), .B(\Q_c[2] ), .Y(Q12_1));
    IOTRI_OB_EB \Q_pad[3]/U0/U1  (.D(\Q_c[3] ), .E(VCC), .DOUT(
        \Q_pad[3]/U0/NET1 ), .EOUT(\Q_pad[3]/U0/NET2 ));
    NOR2A \Q_RNO[0]  (.A(N_27), .B(Q_5_sn_N_4_mux), .Y(\Q_5[0] ));
    NOR2B un1_Q_1_I_20 (.A(\un1_Q_1.DWACT_ADD_CI_0_TMP[0] ), .B(
        \Q_c[1] ), .Y(\un1_Q_1.DWACT_ADD_CI_0_g_array_1[0] ));
    IOIN_IB \PRE_pad[3]/U0/U1  (.YIN(\PRE_pad[3]/U0/NET1 ), .Y(
        \PRE_c[3] ));
    IOIN_IB \ENT_pad/U0/U1  (.YIN(\ENT_pad/U0/NET1 ), .Y(ENT_c));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
