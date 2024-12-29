`timescale 1 ns/100 ps
// Version: v11.9 SP1 11.9.1.0


module _3always(
       clk,
       rst,
       ina,
       dataout
    );
input  clk;
input  rst;
input  ina;
output dataout;

    wire \current_state[1]_net_1 , \current_state_ns_i[1]_net_1 , 
        \current_state_ns[0] , GND, VCC, clk_c, rst_c, ina_c, 
        dataout_d_c, \current_state_i_0[0] ;
    
    INBUF rst_pad (.PAD(rst), .Y(rst_c));
    OA1A \current_state_ns_i[1]  (.A(\current_state_i_0[0] ), .B(
        \current_state[1]_net_1 ), .C(ina_c), .Y(
        \current_state_ns_i[1]_net_1 ));
    VCC VCC_i (.Y(VCC));
    INBUF ina_pad (.PAD(ina), .Y(ina_c));
    NOR2B current_state_s2_0_a2 (.A(\current_state[1]_net_1 ), .B(
        \current_state_i_0[0] ), .Y(dataout_d_c));
    DFN1P0 \current_state[0]  (.D(\current_state_ns[0] ), .CLK(clk_c), 
        .PRE(rst_c), .Q(\current_state_i_0[0] ));
    GND GND_i (.Y(GND));
    OR2A \current_state_ns_0_a3[0]  (.A(ina_c), .B(
        \current_state[1]_net_1 ), .Y(\current_state_ns[0] ));
    DFN1C0 \current_state[1]  (.D(\current_state_ns_i[1]_net_1 ), .CLK(
        clk_c), .CLR(rst_c), .Q(\current_state[1]_net_1 ));
    OUTBUF dataout_pad (.D(dataout_d_c), .PAD(dataout));
    CLKBUF clk_pad (.PAD(clk), .Y(clk_c));
    
endmodule
