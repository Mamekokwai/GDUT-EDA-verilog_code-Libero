`timescale 1 ns/100 ps
// Version: v11.9 SP1 11.9.1.0
// File used only for Simulation


module HC138(
       E,
       A,
       Y
    );
input  [1:3] E;
input  [2:0] A;
output [7:0] Y;

    wire Y26_net_1, \Y_1[0]_net_1 , \Y_1[1]_net_1 , \Y_1[2]_net_1 , 
        \Y_1[3]_net_1 , \E_c[3] , \E_c[2] , \E_c[1] , \A_c[0] , 
        \A_c[1] , \A_c[2] , \Y_c[0] , \Y_c[1] , \Y_c[2] , \Y_c[3] , 
        \Y_c[4] , \Y_c[5] , \Y_c[6] , \Y_c[7] , \A_pad[0]/U0/NET1 , 
        \Y_pad[6]/U0/NET1 , \Y_pad[6]/U0/NET2 , \Y_pad[7]/U0/NET1 , 
        \Y_pad[7]/U0/NET2 , \A_pad[2]/U0/NET1 , \E_pad[1]/U0/NET1 , 
        \Y_pad[4]/U0/NET1 , \Y_pad[4]/U0/NET2 , \Y_pad[0]/U0/NET1 , 
        \Y_pad[0]/U0/NET2 , \E_pad[2]/U0/NET1 , \Y_pad[5]/U0/NET1 , 
        \Y_pad[5]/U0/NET2 , \A_pad[1]/U0/NET1 , \Y_pad[1]/U0/NET1 , 
        \Y_pad[1]/U0/NET2 , \Y_pad[2]/U0/NET1 , \Y_pad[2]/U0/NET2 , 
        \E_pad[3]/U0/NET1 , \Y_pad[3]/U0/NET1 , \Y_pad[3]/U0/NET2 , 
        VCC, GND, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOPAD_IN \A_pad[2]/U0/U0  (.PAD(A[2]), .Y(\A_pad[2]/U0/NET1 ));
    IOPAD_IN \A_pad[1]/U0/U0  (.PAD(A[1]), .Y(\A_pad[1]/U0/NET1 ));
    IOTRI_OB_EB \Y_pad[0]/U0/U1  (.D(\Y_c[0] ), .E(VCC), .DOUT(
        \Y_pad[0]/U0/NET1 ), .EOUT(\Y_pad[0]/U0/NET2 ));
    OR3A \Y[6]  (.A(\A_c[2] ), .B(Y26_net_1), .C(\Y_1[2]_net_1 ), .Y(
        \Y_c[6] ));
    IOPAD_TRI \Y_pad[7]/U0/U0  (.D(\Y_pad[7]/U0/NET1 ), .E(
        \Y_pad[7]/U0/NET2 ), .PAD(Y[7]));
    IOTRI_OB_EB \Y_pad[5]/U0/U1  (.D(\Y_c[5] ), .E(VCC), .DOUT(
        \Y_pad[5]/U0/NET1 ), .EOUT(\Y_pad[5]/U0/NET2 ));
    OR2A \Y_1[2]  (.A(\A_c[1] ), .B(\A_c[0] ), .Y(\Y_1[2]_net_1 ));
    IOTRI_OB_EB \Y_pad[4]/U0/U1  (.D(\Y_c[4] ), .E(VCC), .DOUT(
        \Y_pad[4]/U0/NET1 ), .EOUT(\Y_pad[4]/U0/NET2 ));
    IOPAD_TRI \Y_pad[2]/U0/U0  (.D(\Y_pad[2]/U0/NET1 ), .E(
        \Y_pad[2]/U0/NET2 ), .PAD(Y[2]));
    OR2A \Y_1[1]  (.A(\A_c[0] ), .B(\A_c[1] ), .Y(\Y_1[1]_net_1 ));
    IOTRI_OB_EB \Y_pad[1]/U0/U1  (.D(\Y_c[1] ), .E(VCC), .DOUT(
        \Y_pad[1]/U0/NET1 ), .EOUT(\Y_pad[1]/U0/NET2 ));
    OR3A \Y[7]  (.A(\A_c[2] ), .B(Y26_net_1), .C(\Y_1[3]_net_1 ), .Y(
        \Y_c[7] ));
    IOTRI_OB_EB \Y_pad[6]/U0/U1  (.D(\Y_c[6] ), .E(VCC), .DOUT(
        \Y_pad[6]/U0/NET1 ), .EOUT(\Y_pad[6]/U0/NET2 ));
    OR2B \Y_1[3]  (.A(\A_c[1] ), .B(\A_c[0] ), .Y(\Y_1[3]_net_1 ));
    IOIN_IB \A_pad[0]/U0/U1  (.YIN(\A_pad[0]/U0/NET1 ), .Y(\A_c[0] ));
    IOTRI_OB_EB \Y_pad[3]/U0/U1  (.D(\Y_c[3] ), .E(VCC), .DOUT(
        \Y_pad[3]/U0/NET1 ), .EOUT(\Y_pad[3]/U0/NET2 ));
    IOIN_IB \E_pad[2]/U0/U1  (.YIN(\E_pad[2]/U0/NET1 ), .Y(\E_c[2] ));
    IOPAD_IN \E_pad[3]/U0/U0  (.PAD(E[3]), .Y(\E_pad[3]/U0/NET1 ));
    OR3 \Y[0]  (.A(\A_c[2] ), .B(Y26_net_1), .C(\Y_1[0]_net_1 ), .Y(
        \Y_c[0] ));
    IOPAD_TRI \Y_pad[0]/U0/U0  (.D(\Y_pad[0]/U0/NET1 ), .E(
        \Y_pad[0]/U0/NET2 ), .PAD(Y[0]));
    IOPAD_TRI \Y_pad[5]/U0/U0  (.D(\Y_pad[5]/U0/NET1 ), .E(
        \Y_pad[5]/U0/NET2 ), .PAD(Y[5]));
    IOPAD_TRI \Y_pad[4]/U0/U0  (.D(\Y_pad[4]/U0/NET1 ), .E(
        \Y_pad[4]/U0/NET2 ), .PAD(Y[4]));
    IOIN_IB \E_pad[1]/U0/U1  (.YIN(\E_pad[1]/U0/NET1 ), .Y(\E_c[1] ));
    IOPAD_TRI \Y_pad[1]/U0/U0  (.D(\Y_pad[1]/U0/NET1 ), .E(
        \Y_pad[1]/U0/NET2 ), .PAD(Y[1]));
    IOPAD_TRI \Y_pad[6]/U0/U0  (.D(\Y_pad[6]/U0/NET1 ), .E(
        \Y_pad[6]/U0/NET2 ), .PAD(Y[6]));
    OR3A \Y[5]  (.A(\A_c[2] ), .B(Y26_net_1), .C(\Y_1[1]_net_1 ), .Y(
        \Y_c[5] ));
    IOPAD_IN \A_pad[0]/U0/U0  (.PAD(A[0]), .Y(\A_pad[0]/U0/NET1 ));
    IOPAD_TRI \Y_pad[3]/U0/U0  (.D(\Y_pad[3]/U0/NET1 ), .E(
        \Y_pad[3]/U0/NET2 ), .PAD(Y[3]));
    OR3 \Y[1]  (.A(\A_c[2] ), .B(Y26_net_1), .C(\Y_1[1]_net_1 ), .Y(
        \Y_c[1] ));
    OR3A Y26 (.A(\E_c[3] ), .B(\E_c[2] ), .C(\E_c[1] ), .Y(Y26_net_1));
    IOIN_IB \A_pad[2]/U0/U1  (.YIN(\A_pad[2]/U0/NET1 ), .Y(\A_c[2] ));
    IOIN_IB \A_pad[1]/U0/U1  (.YIN(\A_pad[1]/U0/NET1 ), .Y(\A_c[1] ));
    IOTRI_OB_EB \Y_pad[7]/U0/U1  (.D(\Y_c[7] ), .E(VCC), .DOUT(
        \Y_pad[7]/U0/NET1 ), .EOUT(\Y_pad[7]/U0/NET2 ));
    IOTRI_OB_EB \Y_pad[2]/U0/U1  (.D(\Y_c[2] ), .E(VCC), .DOUT(
        \Y_pad[2]/U0/NET1 ), .EOUT(\Y_pad[2]/U0/NET2 ));
    IOPAD_IN \E_pad[2]/U0/U0  (.PAD(E[2]), .Y(\E_pad[2]/U0/NET1 ));
    OR3A \Y[4]  (.A(\A_c[2] ), .B(Y26_net_1), .C(\Y_1[0]_net_1 ), .Y(
        \Y_c[4] ));
    OR2 \Y_1[0]  (.A(\A_c[1] ), .B(\A_c[0] ), .Y(\Y_1[0]_net_1 ));
    OR3 \Y[3]  (.A(\A_c[2] ), .B(Y26_net_1), .C(\Y_1[3]_net_1 ), .Y(
        \Y_c[3] ));
    IOPAD_IN \E_pad[1]/U0/U0  (.PAD(E[1]), .Y(\E_pad[1]/U0/NET1 ));
    OR3 \Y[2]  (.A(\A_c[2] ), .B(Y26_net_1), .C(\Y_1[2]_net_1 ), .Y(
        \Y_c[2] ));
    IOIN_IB \E_pad[3]/U0/U1  (.YIN(\E_pad[3]/U0/NET1 ), .Y(\E_c[3] ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
