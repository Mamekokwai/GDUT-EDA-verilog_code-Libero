`timescale 1 ns/100 ps
// Version: v11.9 SP1 11.9.1.0


module HC138(
       E,
       A,
       Y
    );
input  [1:3] E;
input  [2:0] A;
output [7:0] Y;

    wire GND, VCC, Y26_net_1, \Y_1[0]_net_1 , \Y_1[1]_net_1 , 
        \Y_1[2]_net_1 , \Y_1[3]_net_1 , \E_c[3] , \E_c[2] , \E_c[1] , 
        \A_c[0] , \A_c[1] , \A_c[2] , \Y_c[0] , \Y_c[1] , \Y_c[2] , 
        \Y_c[3] , \Y_c[4] , \Y_c[5] , \Y_c[6] , \Y_c[7] ;
    
    OR3A \Y[5]  (.A(\A_c[2] ), .B(Y26_net_1), .C(\Y_1[1]_net_1 ), .Y(
        \Y_c[5] ));
    OR3A \Y[6]  (.A(\A_c[2] ), .B(Y26_net_1), .C(\Y_1[2]_net_1 ), .Y(
        \Y_c[6] ));
    OR2A \Y_1[2]  (.A(\A_c[1] ), .B(\A_c[0] ), .Y(\Y_1[2]_net_1 ));
    OR3A \Y[4]  (.A(\A_c[2] ), .B(Y26_net_1), .C(\Y_1[0]_net_1 ), .Y(
        \Y_c[4] ));
    OR2B \Y_1[3]  (.A(\A_c[1] ), .B(\A_c[0] ), .Y(\Y_1[3]_net_1 ));
    INBUF \A_pad[0]  (.PAD(A[0]), .Y(\A_c[0] ));
    OUTBUF \Y_pad[6]  (.D(\Y_c[6] ), .PAD(Y[6]));
    VCC VCC_i (.Y(VCC));
    OR3 \Y[0]  (.A(\A_c[2] ), .B(Y26_net_1), .C(\Y_1[0]_net_1 ), .Y(
        \Y_c[0] ));
    OUTBUF \Y_pad[7]  (.D(\Y_c[7] ), .PAD(Y[7]));
    INBUF \A_pad[2]  (.PAD(A[2]), .Y(\A_c[2] ));
    GND GND_i (.Y(GND));
    INBUF \E_pad[1]  (.PAD(E[1]), .Y(\E_c[1] ));
    OR3A \Y[7]  (.A(\A_c[2] ), .B(Y26_net_1), .C(\Y_1[3]_net_1 ), .Y(
        \Y_c[7] ));
    OUTBUF \Y_pad[4]  (.D(\Y_c[4] ), .PAD(Y[4]));
    OUTBUF \Y_pad[0]  (.D(\Y_c[0] ), .PAD(Y[0]));
    INBUF \E_pad[2]  (.PAD(E[2]), .Y(\E_c[2] ));
    OR3 \Y[1]  (.A(\A_c[2] ), .B(Y26_net_1), .C(\Y_1[1]_net_1 ), .Y(
        \Y_c[1] ));
    OR2 \Y_1[0]  (.A(\A_c[1] ), .B(\A_c[0] ), .Y(\Y_1[0]_net_1 ));
    OUTBUF \Y_pad[5]  (.D(\Y_c[5] ), .PAD(Y[5]));
    OR2A \Y_1[1]  (.A(\A_c[0] ), .B(\A_c[1] ), .Y(\Y_1[1]_net_1 ));
    OR3 \Y[3]  (.A(\A_c[2] ), .B(Y26_net_1), .C(\Y_1[3]_net_1 ), .Y(
        \Y_c[3] ));
    INBUF \A_pad[1]  (.PAD(A[1]), .Y(\A_c[1] ));
    OUTBUF \Y_pad[1]  (.D(\Y_c[1] ), .PAD(Y[1]));
    OR3 \Y[2]  (.A(\A_c[2] ), .B(Y26_net_1), .C(\Y_1[2]_net_1 ), .Y(
        \Y_c[2] ));
    OUTBUF \Y_pad[2]  (.D(\Y_c[2] ), .PAD(Y[2]));
    OR3A Y26 (.A(\E_c[3] ), .B(\E_c[2] ), .C(\E_c[1] ), .Y(Y26_net_1));
    INBUF \E_pad[3]  (.PAD(E[3]), .Y(\E_c[3] ));
    OUTBUF \Y_pad[3]  (.D(\Y_c[3] ), .PAD(Y[3]));
    
endmodule
