// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.2.115
// Netlist written on Sat May 26 22:58:38 2018
//
// Verilog Description of module counter
//

module counter (LED, clk_12, clk_sma, SW2, DIP_SW1_4) /* synthesis syn_module_defined=1 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(20[8:15])
    output [7:0]LED;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(22[19:22])
    input clk_12;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(23[8:14])
    input clk_sma;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(24[8:15])
    input SW2;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(25[8:11])
    input DIP_SW1_4;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(26[8:17])
    
    wire clk /* synthesis is_clock=1, SET_AS_NETWORK=clk */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(30[5:8])
    
    wire GND_net, VCC_net, LED_c_7, LED_c_6, LED_c_5, LED_c_4, LED_c_3, 
        LED_c_2, LED_c_1, LED_c_0, clk_12_c, clk_sma_c, SW2_c, DIP_SW1_4_c;
    wire [31:0]led;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(29[13:16])
    wire [7:0]LED_7__N_1;
    
    VHI i2 (.Z(VCC_net));
    count32 count32_inst (.clk(clk), .VCC_net(VCC_net), .GND_net(GND_net), 
            .\led[20] (led[20]), .\led[21] (led[21]), .\led[22] (led[22]), 
            .\led[23] (led[23]), .\led[24] (led[24]), .\led[25] (led[25]), 
            .\led[26] (led[26]), .\led[27] (led[27]), .\led[28] (led[28]), 
            .\led[29] (led[29])) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(33[9] 39[4])
    OB LED_pad_0 (.I(LED_c_0), .O(LED[0]));   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(22[19:22])
    OB LED_pad_6 (.I(LED_c_6), .O(LED[6]));   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(22[19:22])
    LUT4 LED_7__I_0_i8_3_lut (.A(led[27]), .B(led[29]), .C(SW2_c), .Z(LED_7__N_1[7])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(64[3] 73[6])
    defparam LED_7__I_0_i8_3_lut.init = 16'h3535;
    LUT4 clk_sma_I_0_3_lut (.A(clk_sma_c), .B(clk_12_c), .C(DIP_SW1_4_c), 
         .Z(clk)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(47[3] 49[6])
    defparam clk_sma_I_0_3_lut.init = 16'hcaca;
    LUT4 LED_7__I_0_i1_3_lut (.A(led[20]), .B(led[22]), .C(SW2_c), .Z(LED_7__N_1[0])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(64[3] 73[6])
    defparam LED_7__I_0_i1_3_lut.init = 16'h3535;
    LUT4 LED_7__I_0_i2_3_lut (.A(led[21]), .B(led[23]), .C(SW2_c), .Z(LED_7__N_1[1])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(64[3] 73[6])
    defparam LED_7__I_0_i2_3_lut.init = 16'h3535;
    FD1S3AX LED_i1 (.D(LED_7__N_1[0]), .CK(clk), .Q(LED_c_0));   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(51[9] 73[6])
    defparam LED_i1.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3AX LED_i2 (.D(LED_7__N_1[1]), .CK(clk), .Q(LED_c_1));   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(51[9] 73[6])
    defparam LED_i2.GSR = "ENABLED";
    OB LED_pad_7 (.I(LED_c_7), .O(LED[7]));   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(22[19:22])
    OB LED_pad_3 (.I(LED_c_3), .O(LED[3]));   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(22[19:22])
    OB LED_pad_4 (.I(LED_c_4), .O(LED[4]));   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(22[19:22])
    OB LED_pad_1 (.I(LED_c_1), .O(LED[1]));   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(22[19:22])
    OB LED_pad_2 (.I(LED_c_2), .O(LED[2]));   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(22[19:22])
    OB LED_pad_5 (.I(LED_c_5), .O(LED[5]));   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(22[19:22])
    IB clk_12_pad (.I(clk_12), .O(clk_12_c));   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(23[8:14])
    IB clk_sma_pad (.I(clk_sma), .O(clk_sma_c));   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(24[8:15])
    IB SW2_pad (.I(SW2), .O(SW2_c));   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(25[8:11])
    IB DIP_SW1_4_pad (.I(DIP_SW1_4), .O(DIP_SW1_4_c));   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(26[8:17])
    FD1S3AX LED_i3 (.D(LED_7__N_1[2]), .CK(clk), .Q(LED_c_2));   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(51[9] 73[6])
    defparam LED_i3.GSR = "ENABLED";
    FD1S3AX LED_i4 (.D(LED_7__N_1[3]), .CK(clk), .Q(LED_c_3));   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(51[9] 73[6])
    defparam LED_i4.GSR = "ENABLED";
    FD1S3AX LED_i5 (.D(LED_7__N_1[4]), .CK(clk), .Q(LED_c_4));   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(51[9] 73[6])
    defparam LED_i5.GSR = "ENABLED";
    FD1S3AX LED_i6 (.D(LED_7__N_1[5]), .CK(clk), .Q(LED_c_5));   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(51[9] 73[6])
    defparam LED_i6.GSR = "ENABLED";
    FD1S3AX LED_i7 (.D(LED_7__N_1[6]), .CK(clk), .Q(LED_c_6));   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(51[9] 73[6])
    defparam LED_i7.GSR = "ENABLED";
    FD1S3AX LED_i8 (.D(LED_7__N_1[7]), .CK(clk), .Q(LED_c_7));   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(51[9] 73[6])
    defparam LED_i8.GSR = "ENABLED";
    LUT4 LED_7__I_0_i3_3_lut (.A(led[22]), .B(led[24]), .C(SW2_c), .Z(LED_7__N_1[2])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(64[3] 73[6])
    defparam LED_7__I_0_i3_3_lut.init = 16'h3535;
    LUT4 LED_7__I_0_i4_3_lut (.A(led[23]), .B(led[25]), .C(SW2_c), .Z(LED_7__N_1[3])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(64[3] 73[6])
    defparam LED_7__I_0_i4_3_lut.init = 16'h3535;
    LUT4 LED_7__I_0_i5_3_lut (.A(led[24]), .B(led[26]), .C(SW2_c), .Z(LED_7__N_1[4])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(64[3] 73[6])
    defparam LED_7__I_0_i5_3_lut.init = 16'h3535;
    LUT4 LED_7__I_0_i6_3_lut (.A(led[25]), .B(led[27]), .C(SW2_c), .Z(LED_7__N_1[5])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(64[3] 73[6])
    defparam LED_7__I_0_i6_3_lut.init = 16'h3535;
    LUT4 LED_7__I_0_i7_3_lut (.A(led[26]), .B(led[28]), .C(SW2_c), .Z(LED_7__N_1[6])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(64[3] 73[6])
    defparam LED_7__I_0_i7_3_lut.init = 16'h3535;
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    
endmodule
//
// Verilog Description of module count32
//

module count32 (clk, VCC_net, GND_net, \led[20] , \led[21] , \led[22] , 
            \led[23] , \led[24] , \led[25] , \led[26] , \led[27] , 
            \led[28] , \led[29] ) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk;
    input VCC_net;
    input GND_net;
    output \led[20] ;
    output \led[21] ;
    output \led[22] ;
    output \led[23] ;
    output \led[24] ;
    output \led[25] ;
    output \led[26] ;
    output \led[27] ;
    output \led[28] ;
    output \led[29] ;
    
    wire clk /* synthesis is_clock=1, SET_AS_NETWORK=clk */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(30[5:8])
    wire [31:0]Q;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(12[24:25])
    
    wire idataout1, idataout2, idataout3, idataout4, idataout5, idataout6, 
        idataout7, idataout8, idataout9, idataout10, idataout11, idataout12, 
        idataout13, idataout14, idataout15, idataout16, idataout17, 
        idataout18, idataout19, idataout20, idataout21, idataout22, 
        idataout23, idataout24, idataout25, idataout26, idataout27, 
        idataout28, idataout29, cnt_ci, idataout0, co0, co1, co2, 
        co3, co4, co5, co6, co7, co8, co9, co10, co11, co12, 
        co13;
    
    FD1P3DX FF_30 (.D(idataout1), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(Q[1])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(69[13:80])
    defparam FF_30.GSR = "ENABLED";
    FD1P3DX FF_29 (.D(idataout2), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(Q[2])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(72[13:80])
    defparam FF_29.GSR = "ENABLED";
    FD1P3DX FF_28 (.D(idataout3), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(Q[3])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(75[13:80])
    defparam FF_28.GSR = "ENABLED";
    FD1P3DX FF_27 (.D(idataout4), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(Q[4])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(78[13:80])
    defparam FF_27.GSR = "ENABLED";
    FD1P3DX FF_26 (.D(idataout5), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(Q[5])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(81[13:80])
    defparam FF_26.GSR = "ENABLED";
    FD1P3DX FF_25 (.D(idataout6), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(Q[6])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(84[13:80])
    defparam FF_25.GSR = "ENABLED";
    FD1P3DX FF_24 (.D(idataout7), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(Q[7])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(87[13:80])
    defparam FF_24.GSR = "ENABLED";
    FD1P3DX FF_23 (.D(idataout8), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(Q[8])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(90[13:80])
    defparam FF_23.GSR = "ENABLED";
    FD1P3DX FF_22 (.D(idataout9), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(Q[9])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(93[13:80])
    defparam FF_22.GSR = "ENABLED";
    FD1P3DX FF_21 (.D(idataout10), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(Q[10])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(96[13:82])
    defparam FF_21.GSR = "ENABLED";
    FD1P3DX FF_20 (.D(idataout11), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(Q[11])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(99[13:82])
    defparam FF_20.GSR = "ENABLED";
    FD1P3DX FF_19 (.D(idataout12), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(Q[12])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(102[13:82])
    defparam FF_19.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(idataout13), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(Q[13])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(105[13:82])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(idataout14), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(Q[14])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(108[13:82])
    defparam FF_17.GSR = "ENABLED";
    FD1P3DX FF_16 (.D(idataout15), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(Q[15])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(111[13:82])
    defparam FF_16.GSR = "ENABLED";
    FD1P3DX FF_15 (.D(idataout16), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(Q[16])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(114[13:82])
    defparam FF_15.GSR = "ENABLED";
    FD1P3DX FF_14 (.D(idataout17), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(Q[17])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(117[13:82])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(idataout18), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(Q[18])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(120[13:82])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(idataout19), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(Q[19])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(123[13:82])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(idataout20), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(\led[20] )) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(126[13:82])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(idataout21), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(\led[21] )) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(129[13:82])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(idataout22), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(\led[22] )) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(132[13:81])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(idataout23), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(\led[23] )) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(135[13:81])
    defparam FF_8.GSR = "ENABLED";
    FD1P3DX FF_7 (.D(idataout24), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(\led[24] )) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(138[13:81])
    defparam FF_7.GSR = "ENABLED";
    FD1P3DX FF_6 (.D(idataout25), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(\led[25] )) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(141[13:81])
    defparam FF_6.GSR = "ENABLED";
    FD1P3DX FF_5 (.D(idataout26), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(\led[26] )) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(144[13:81])
    defparam FF_5.GSR = "ENABLED";
    FD1P3DX FF_4 (.D(idataout27), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(\led[27] )) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(147[13:81])
    defparam FF_4.GSR = "ENABLED";
    FD1P3DX FF_3 (.D(idataout28), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(\led[28] )) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(150[13:81])
    defparam FF_3.GSR = "ENABLED";
    FD1P3DX FF_2 (.D(idataout29), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(\led[29] )) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(153[13:81])
    defparam FF_2.GSR = "ENABLED";
    FADD2B cnt_cia (.A0(GND_net), .A1(VCC_net), .B0(GND_net), .B1(VCC_net), 
           .CI(GND_net), .COUT(cnt_ci)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(33[9] 39[4])
    CU2 cnt_0 (.CI(cnt_ci), .PC0(Q[0]), .PC1(Q[1]), .CO(co0), .NC0(idataout0), 
        .NC1(idataout1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(33[9] 39[4])
    CU2 cnt_1 (.CI(co0), .PC0(Q[2]), .PC1(Q[3]), .CO(co1), .NC0(idataout2), 
        .NC1(idataout3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(33[9] 39[4])
    CU2 cnt_2 (.CI(co1), .PC0(Q[4]), .PC1(Q[5]), .CO(co2), .NC0(idataout4), 
        .NC1(idataout5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(33[9] 39[4])
    CU2 cnt_3 (.CI(co2), .PC0(Q[6]), .PC1(Q[7]), .CO(co3), .NC0(idataout6), 
        .NC1(idataout7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(33[9] 39[4])
    CU2 cnt_4 (.CI(co3), .PC0(Q[8]), .PC1(Q[9]), .CO(co4), .NC0(idataout8), 
        .NC1(idataout9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(33[9] 39[4])
    CU2 cnt_5 (.CI(co4), .PC0(Q[10]), .PC1(Q[11]), .CO(co5), .NC0(idataout10), 
        .NC1(idataout11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(33[9] 39[4])
    CU2 cnt_6 (.CI(co5), .PC0(Q[12]), .PC1(Q[13]), .CO(co6), .NC0(idataout12), 
        .NC1(idataout13)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(33[9] 39[4])
    CU2 cnt_7 (.CI(co6), .PC0(Q[14]), .PC1(Q[15]), .CO(co7), .NC0(idataout14), 
        .NC1(idataout15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(33[9] 39[4])
    CU2 cnt_8 (.CI(co7), .PC0(Q[16]), .PC1(Q[17]), .CO(co8), .NC0(idataout16), 
        .NC1(idataout17)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(33[9] 39[4])
    CU2 cnt_9 (.CI(co8), .PC0(Q[18]), .PC1(Q[19]), .CO(co9), .NC0(idataout18), 
        .NC1(idataout19)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(33[9] 39[4])
    CU2 cnt_10 (.CI(co9), .PC0(\led[20] ), .PC1(\led[21] ), .CO(co10), 
        .NC0(idataout20), .NC1(idataout21)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(33[9] 39[4])
    CU2 cnt_11 (.CI(co10), .PC0(\led[22] ), .PC1(\led[23] ), .CO(co11), 
        .NC0(idataout22), .NC1(idataout23)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(33[9] 39[4])
    CU2 cnt_12 (.CI(co11), .PC0(\led[24] ), .PC1(\led[25] ), .CO(co12), 
        .NC0(idataout24), .NC1(idataout25)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(33[9] 39[4])
    CU2 cnt_13 (.CI(co12), .PC0(\led[26] ), .PC1(\led[27] ), .CO(co13), 
        .NC0(idataout26), .NC1(idataout27)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(33[9] 39[4])
    CU2 cnt_14 (.CI(co13), .PC0(\led[28] ), .PC1(\led[29] ), .NC0(idataout28), 
        .NC1(idataout29)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/impl1/source/counter.v(33[9] 39[4])
    FD1P3DX FF_31 (.D(idataout0), .SP(VCC_net), .CK(clk), .CD(GND_net), 
            .Q(Q[0])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=33, LSE_RLINE=39 */ ;   // c:/users/fcolumbu/documents/lattice semiconductor/counter/count32.v(66[13:80])
    defparam FF_31.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

