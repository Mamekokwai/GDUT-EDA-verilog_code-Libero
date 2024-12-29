`timescale 1 ns/100 ps
// Version: v11.9 SP1 11.9.1.0
// File used only for Simulation


module HC85(
       A,
       B,
       O
    );
input  [3:0] A;
input  [3:0] B;
output [2:0] O;

    wire O9_NE, O9_0, O9_2, O9_3, 
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] , 
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] , 
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] , 
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] , 
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] , 
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] , 
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] , 
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] , 
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] , 
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] , 
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] , 
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] , 
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] , 
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] , 
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] , 
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] , 
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] , 
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] , \A_c[0] , 
        \A_c[1] , \A_c[2] , \A_c[3] , \B_c[0] , \B_c[1] , \B_c[2] , 
        \B_c[3] , \O_c[0] , \O_c[2] , O9_NE_0, \B_pad[3]/U0/NET1 , 
        \B_pad[2]/U0/NET1 , \A_pad[3]/U0/NET1 , \B_pad[1]/U0/NET1 , 
        \O_pad[0]/U0/NET1 , \O_pad[0]/U0/NET2 , \A_pad[0]/U0/NET1 , 
        \O_pad[1]/U0/NET1 , \O_pad[1]/U0/NET2 , \B_pad[0]/U0/NET1 , 
        \A_pad[2]/U0/NET1 , \O_pad[2]/U0/NET1 , \O_pad[2]/U0/NET2 , 
        VCC, \A_pad[1]/U0/NET1 , GND, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    NOR2A O8_0_I_8 (.A(\B_c[2] ), .B(\A_c[2] ), .Y(
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] ));
    IOPAD_IN \A_pad[2]/U0/U0  (.PAD(A[2]), .Y(\A_pad[2]/U0/NET1 ));
    IOPAD_IN \A_pad[1]/U0/U0  (.PAD(A[1]), .Y(\A_pad[1]/U0/NET1 ));
    XOR2 \O_pad_RNO_1[1]  (.A(\A_c[3] ), .B(\B_c[3] ), .Y(O9_3));
    OR2A O8_0_I_2 (.A(\A_c[1] ), .B(\B_c[1] ), .Y(
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] ));
    IOIN_IB \A_pad[3]/U0/U1  (.YIN(\A_pad[3]/U0/NET1 ), .Y(\A_c[3] ));
    AOI1A O8_0_I_7 (.A(\B_c[2] ), .B(\A_c[2] ), .C(
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ), .Y(
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] ));
    IOIN_IB \B_pad[1]/U0/U1  (.YIN(\B_pad[1]/U0/NET1 ), .Y(\B_c[1] ));
    AOI1A O8_0_I_11 (.A(
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] ), .B(
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] ), .C(
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] ), .Y(
        \O_c[2] ));
    AOI1A O8_0_I_4 (.A(
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] ), .B(
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] ), .C(
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] ), .Y(
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] ));
    AOI1A O10_0_I_11 (.A(
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] ), .B(
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] ), .C(
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] ), .Y(
        \O_c[0] ));
    IOIN_IB \B_pad[3]/U0/U1  (.YIN(\B_pad[3]/U0/NET1 ), .Y(\B_c[3] ));
    AOI1A O10_0_I_10 (.A(
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] ), .B(
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] ), .C(
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ), .Y(
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] ));
    IOIN_IB \A_pad[0]/U0/U1  (.YIN(\A_pad[0]/U0/NET1 ), .Y(\A_c[0] ));
    NOR2A O10_0_I_1 (.A(\B_c[0] ), .B(\A_c[0] ), .Y(
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] ));
    XOR2 \O_pad_RNO_0[1]  (.A(\A_c[2] ), .B(\B_c[2] ), .Y(O9_2));
    AOI1A O8_0_I_10 (.A(
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] ), .B(
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] ), .C(
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ), .Y(
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] ));
    NOR2A O10_0_I_8 (.A(\A_c[2] ), .B(\B_c[2] ), .Y(
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] ));
    IOPAD_IN \B_pad[0]/U0/U0  (.PAD(B[0]), .Y(\B_pad[0]/U0/NET1 ));
    IOTRI_OB_EB \O_pad[0]/U0/U1  (.D(\O_c[0] ), .E(VCC), .DOUT(
        \O_pad[0]/U0/NET1 ), .EOUT(\O_pad[0]/U0/NET2 ));
    XOR2 \O_pad_RNO_3[1]  (.A(\A_c[0] ), .B(\B_c[0] ), .Y(O9_0));
    NOR2A O8_0_I_6 (.A(\A_c[3] ), .B(\B_c[3] ), .Y(
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ));
    IOTRI_OB_EB \O_pad[1]/U0/U1  (.D(O9_NE), .E(VCC), .DOUT(
        \O_pad[1]/U0/NET1 ), .EOUT(\O_pad[1]/U0/NET2 ));
    IOPAD_IN \A_pad[3]/U0/U0  (.PAD(A[3]), .Y(\A_pad[3]/U0/NET1 ));
    IOIN_IB \B_pad[2]/U0/U1  (.YIN(\B_pad[2]/U0/NET1 ), .Y(\B_c[2] ));
    IOPAD_IN \B_pad[1]/U0/U0  (.PAD(B[1]), .Y(\B_pad[1]/U0/NET1 ));
    IOPAD_IN \B_pad[3]/U0/U0  (.PAD(B[3]), .Y(\B_pad[3]/U0/NET1 ));
    OR2A O10_0_I_2 (.A(\B_c[1] ), .B(\A_c[1] ), .Y(
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] ));
    IOTRI_OB_EB \O_pad[2]/U0/U1  (.D(\O_c[2] ), .E(VCC), .DOUT(
        \O_pad[2]/U0/NET1 ), .EOUT(\O_pad[2]/U0/NET2 ));
    OR2A O10_0_I_9 (.A(\A_c[3] ), .B(\B_c[3] ), .Y(
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] ));
    IOPAD_IN \A_pad[0]/U0/U0  (.PAD(A[0]), .Y(\A_pad[0]/U0/NET1 ));
    IOIN_IB \A_pad[2]/U0/U1  (.YIN(\A_pad[2]/U0/NET1 ), .Y(\A_c[2] ));
    IOIN_IB \A_pad[1]/U0/U1  (.YIN(\A_pad[1]/U0/NET1 ), .Y(\A_c[1] ));
    NOR2A O8_0_I_1 (.A(\A_c[0] ), .B(\B_c[0] ), .Y(
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] ));
    IOPAD_TRI \O_pad[0]/U0/U0  (.D(\O_pad[0]/U0/NET1 ), .E(
        \O_pad[0]/U0/NET2 ), .PAD(O[0]));
    AOI1A O10_0_I_7 (.A(\A_c[2] ), .B(\B_c[2] ), .C(
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ), .Y(
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] ));
    NOR2A O10_0_I_6 (.A(\B_c[3] ), .B(\A_c[3] ), .Y(
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ));
    NOR3 \O_pad_RNO[1]  (.A(O9_2), .B(O9_3), .C(O9_NE_0), .Y(O9_NE));
    IOPAD_TRI \O_pad[1]/U0/U0  (.D(\O_pad[1]/U0/NET1 ), .E(
        \O_pad[1]/U0/NET2 ), .PAD(O[1]));
    XO1 \O_pad_RNO_2[1]  (.A(\B_c[1] ), .B(\A_c[1] ), .C(O9_0), .Y(
        O9_NE_0));
    IOPAD_IN \B_pad[2]/U0/U0  (.PAD(B[2]), .Y(\B_pad[2]/U0/NET1 ));
    OR2A O8_0_I_9 (.A(\B_c[3] ), .B(\A_c[3] ), .Y(
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] ));
    AOI1A O10_0_I_4 (.A(
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] ), .B(
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] ), .C(
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] ), .Y(
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] ));
    AND2A O10_0_I_3 (.A(\B_c[1] ), .B(\A_c[1] ), .Y(
        \O10_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] ));
    AND2A O8_0_I_3 (.A(\A_c[1] ), .B(\B_c[1] ), .Y(
        \O8_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] ));
    IOPAD_TRI \O_pad[2]/U0/U0  (.D(\O_pad[2]/U0/NET1 ), .E(
        \O_pad[2]/U0/NET2 ), .PAD(O[2]));
    IOIN_IB \B_pad[0]/U0/U1  (.YIN(\B_pad[0]/U0/NET1 ), .Y(\B_c[0] ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
