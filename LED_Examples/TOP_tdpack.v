// Verilog netlist created by TD v4.4.433
// Tue May  7 16:09:35 2019

`timescale 1ns / 1ps
module TOP  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(1)
  (
  CLK_24M,
  nRST,
  GPIO,
  LEDs
  );

  input CLK_24M;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(11)
  input nRST;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(12)
  output GPIO;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(15)
  output [2:0] LEDs;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(14)

  wire [2:0] LEDs_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(14)
  wire [15:0] \U1/B_PWM/PWMCount ;  // Source/PWM.v(15)
  wire [15:0] \U1/B_PWM/n2 ;
  wire [31:0] \U1/Count_LED ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(9)
  wire [15:0] \U1/G_PWM/PWMCount ;  // Source/PWM.v(15)
  wire [15:0] \U1/G_PWM/n2 ;
  wire [31:0] \U1/PWM_BData ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(25)
  wire [31:0] \U1/PWM_GData ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(24)
  wire [31:0] \U1/PWM_RData ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(23)
  wire [15:0] \U1/R_PWM/PWMCount ;  // Source/PWM.v(15)
  wire [15:0] \U1/R_PWM/n2 ;
  wire [31:0] \U1/n12 ;
  wire [31:0] \U1/n14 ;
  wire [31:0] \U1/n16 ;
  wire [31:0] \U1/n17 ;
  wire [31:0] \U1/n2 ;
  wire [31:0] \U1/n8 ;
  wire CLK_24M_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(11)
  wire CLK_50M;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(18)
  wire \Pll/clk0_buf ;  // al_ip/SysPll.v(39)
  wire \Pll/clk0_out ;  // al_ip/SysPll.v(34)
  wire \U1/B_PWM/add0/c11 ;
  wire \U1/B_PWM/add0/c15 ;
  wire \U1/B_PWM/add0/c3 ;
  wire \U1/B_PWM/add0/c7 ;
  wire \U1/B_PWM/lt0_c1 ;
  wire \U1/B_PWM/lt0_c11 ;
  wire \U1/B_PWM/lt0_c13 ;
  wire \U1/B_PWM/lt0_c15 ;
  wire \U1/B_PWM/lt0_c3 ;
  wire \U1/B_PWM/lt0_c5 ;
  wire \U1/B_PWM/lt0_c7 ;
  wire \U1/B_PWM/lt0_c9 ;
  wire \U1/B_PWM/lt1_c1 ;
  wire \U1/B_PWM/lt1_c11 ;
  wire \U1/B_PWM/lt1_c13 ;
  wire \U1/B_PWM/lt1_c15 ;
  wire \U1/B_PWM/lt1_c3 ;
  wire \U1/B_PWM/lt1_c5 ;
  wire \U1/B_PWM/lt1_c7 ;
  wire \U1/B_PWM/lt1_c9 ;
  wire \U1/B_PWM/n0 ;
  wire \U1/B_PWM/n1 ;
  wire \U1/B_PWM/n4 ;
  wire \U1/G_PWM/add0/c11 ;
  wire \U1/G_PWM/add0/c15 ;
  wire \U1/G_PWM/add0/c3 ;
  wire \U1/G_PWM/add0/c7 ;
  wire \U1/G_PWM/lt0_c1 ;
  wire \U1/G_PWM/lt0_c11 ;
  wire \U1/G_PWM/lt0_c13 ;
  wire \U1/G_PWM/lt0_c15 ;
  wire \U1/G_PWM/lt0_c3 ;
  wire \U1/G_PWM/lt0_c5 ;
  wire \U1/G_PWM/lt0_c7 ;
  wire \U1/G_PWM/lt0_c9 ;
  wire \U1/G_PWM/lt1_c1 ;
  wire \U1/G_PWM/lt1_c11 ;
  wire \U1/G_PWM/lt1_c13 ;
  wire \U1/G_PWM/lt1_c15 ;
  wire \U1/G_PWM/lt1_c3 ;
  wire \U1/G_PWM/lt1_c5 ;
  wire \U1/G_PWM/lt1_c7 ;
  wire \U1/G_PWM/lt1_c9 ;
  wire \U1/G_PWM/n1 ;
  wire \U1/G_PWM/n4 ;
  wire \U1/R_PWM/add0/c11 ;
  wire \U1/R_PWM/add0/c15 ;
  wire \U1/R_PWM/add0/c3 ;
  wire \U1/R_PWM/add0/c7 ;
  wire \U1/R_PWM/lt0_c1 ;
  wire \U1/R_PWM/lt0_c11 ;
  wire \U1/R_PWM/lt0_c13 ;
  wire \U1/R_PWM/lt0_c15 ;
  wire \U1/R_PWM/lt0_c3 ;
  wire \U1/R_PWM/lt0_c5 ;
  wire \U1/R_PWM/lt0_c7 ;
  wire \U1/R_PWM/lt0_c9 ;
  wire \U1/R_PWM/lt1_c1 ;
  wire \U1/R_PWM/lt1_c11 ;
  wire \U1/R_PWM/lt1_c13 ;
  wire \U1/R_PWM/lt1_c15 ;
  wire \U1/R_PWM/lt1_c3 ;
  wire \U1/R_PWM/lt1_c5 ;
  wire \U1/R_PWM/lt1_c7 ;
  wire \U1/R_PWM/lt1_c9 ;
  wire \U1/R_PWM/n1 ;
  wire \U1/R_PWM/n4 ;
  wire \U1/add0/c11 ;
  wire \U1/add0/c15 ;
  wire \U1/add0/c19 ;
  wire \U1/add0/c23 ;
  wire \U1/add0/c27 ;
  wire \U1/add0/c3 ;
  wire \U1/add0/c31 ;
  wire \U1/add0/c7 ;
  wire \U1/lt0_c1 ;
  wire \U1/lt0_c11 ;
  wire \U1/lt0_c13 ;
  wire \U1/lt0_c15 ;
  wire \U1/lt0_c17 ;
  wire \U1/lt0_c19 ;
  wire \U1/lt0_c21 ;
  wire \U1/lt0_c23 ;
  wire \U1/lt0_c25 ;
  wire \U1/lt0_c27 ;
  wire \U1/lt0_c29 ;
  wire \U1/lt0_c3 ;
  wire \U1/lt0_c31 ;
  wire \U1/lt0_c5 ;
  wire \U1/lt0_c7 ;
  wire \U1/lt0_c9 ;
  wire \U1/lt1_c1 ;
  wire \U1/lt1_c11 ;
  wire \U1/lt1_c13 ;
  wire \U1/lt1_c15 ;
  wire \U1/lt1_c17 ;
  wire \U1/lt1_c19 ;
  wire \U1/lt1_c21 ;
  wire \U1/lt1_c23 ;
  wire \U1/lt1_c25 ;
  wire \U1/lt1_c27 ;
  wire \U1/lt1_c29 ;
  wire \U1/lt1_c3 ;
  wire \U1/lt1_c31 ;
  wire \U1/lt1_c5 ;
  wire \U1/lt1_c7 ;
  wire \U1/lt1_c9 ;
  wire \U1/lt2_c1 ;
  wire \U1/lt2_c11 ;
  wire \U1/lt2_c13 ;
  wire \U1/lt2_c15 ;
  wire \U1/lt2_c17 ;
  wire \U1/lt2_c19 ;
  wire \U1/lt2_c21 ;
  wire \U1/lt2_c23 ;
  wire \U1/lt2_c25 ;
  wire \U1/lt2_c27 ;
  wire \U1/lt2_c29 ;
  wire \U1/lt2_c3 ;
  wire \U1/lt2_c31 ;
  wire \U1/lt2_c5 ;
  wire \U1/lt2_c7 ;
  wire \U1/lt2_c9 ;
  wire \U1/lt3_c1 ;
  wire \U1/lt3_c11 ;
  wire \U1/lt3_c13 ;
  wire \U1/lt3_c15 ;
  wire \U1/lt3_c17 ;
  wire \U1/lt3_c19 ;
  wire \U1/lt3_c21 ;
  wire \U1/lt3_c23 ;
  wire \U1/lt3_c25 ;
  wire \U1/lt3_c27 ;
  wire \U1/lt3_c29 ;
  wire \U1/lt3_c3 ;
  wire \U1/lt3_c31 ;
  wire \U1/lt3_c5 ;
  wire \U1/lt3_c7 ;
  wire \U1/lt3_c9 ;
  wire \U1/lt4_c1 ;
  wire \U1/lt4_c11 ;
  wire \U1/lt4_c13 ;
  wire \U1/lt4_c15 ;
  wire \U1/lt4_c17 ;
  wire \U1/lt4_c19 ;
  wire \U1/lt4_c21 ;
  wire \U1/lt4_c23 ;
  wire \U1/lt4_c25 ;
  wire \U1/lt4_c27 ;
  wire \U1/lt4_c29 ;
  wire \U1/lt4_c3 ;
  wire \U1/lt4_c31 ;
  wire \U1/lt4_c5 ;
  wire \U1/lt4_c7 ;
  wire \U1/lt4_c9 ;
  wire \U1/lt5_c1 ;
  wire \U1/lt5_c11 ;
  wire \U1/lt5_c13 ;
  wire \U1/lt5_c15 ;
  wire \U1/lt5_c17 ;
  wire \U1/lt5_c19 ;
  wire \U1/lt5_c21 ;
  wire \U1/lt5_c23 ;
  wire \U1/lt5_c25 ;
  wire \U1/lt5_c27 ;
  wire \U1/lt5_c29 ;
  wire \U1/lt5_c3 ;
  wire \U1/lt5_c31 ;
  wire \U1/lt5_c5 ;
  wire \U1/lt5_c7 ;
  wire \U1/lt5_c9 ;
  wire \U1/n1 ;
  wire \U1/n10 ;
  wire \U1/n11 ;
  wire \U1/n13 ;
  wire \U1/n4 ;
  wire \U1/n5 ;
  wire \U1/n6 ;
  wire \U1/n7 ;
  wire \U1/sub0/c11 ;
  wire \U1/sub0/c15 ;
  wire \U1/sub0/c19 ;
  wire \U1/sub0/c23 ;
  wire \U1/sub0/c27 ;
  wire \U1/sub0/c3 ;
  wire \U1/sub0/c31 ;
  wire \U1/sub0/c7 ;
  wire \U1/sub1/c11 ;
  wire \U1/sub1/c15 ;
  wire \U1/sub1/c19 ;
  wire \U1/sub1/c23 ;
  wire \U1/sub1/c27 ;
  wire \U1/sub1/c3 ;
  wire \U1/sub1/c31 ;
  wire \U1/sub1/c7 ;
  wire \U1/sub2/c11 ;
  wire \U1/sub2/c15 ;
  wire \U1/sub2/c19 ;
  wire \U1/sub2/c23 ;
  wire \U1/sub2/c27 ;
  wire \U1/sub2/c3 ;
  wire \U1/sub2/c31 ;
  wire \U1/sub2/c7 ;
  wire \U1/sub3/c11 ;
  wire \U1/sub3/c15 ;
  wire \U1/sub3/c19 ;
  wire \U1/sub3/c23 ;
  wire \U1/sub3/c27 ;
  wire \U1/sub3/c3 ;
  wire \U1/sub3/c31 ;
  wire \U1/sub3/c7 ;
  wire \U1/sub4/c11 ;
  wire \U1/sub4/c15 ;
  wire \U1/sub4/c19 ;
  wire \U1/sub4/c23 ;
  wire \U1/sub4/c27 ;
  wire \U1/sub4/c3 ;
  wire \U1/sub4/c31 ;
  wire \U1/sub4/c7 ;
  wire nRST_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(12)

  EG_PHY_GCLK \Pll/bufg_feedback  (
    .clki(\Pll/clk0_buf ),
    .clko(\Pll/clk0_out ));  // al_ip/SysPll.v(41)
  EG_PHY_PLL #(
    .CLKC0_CPHASE(9),
    .CLKC0_DIV(10),
    .CLKC0_DIV2_ENABLE("DISABLE"),
    .CLKC0_ENABLE("ENABLE"),
    .CLKC0_FPHASE(0),
    .CLKC1_CPHASE(19),
    .CLKC1_DIV(20),
    .CLKC1_DIV2_ENABLE("DISABLE"),
    .CLKC1_ENABLE("ENABLE"),
    .CLKC1_FPHASE(0),
    .CLKC2_CPHASE(4),
    .CLKC2_DIV(5),
    .CLKC2_DIV2_ENABLE("DISABLE"),
    .CLKC2_ENABLE("ENABLE"),
    .CLKC2_FPHASE(0),
    .CLKC3_CPHASE(29),
    .CLKC3_DIV(30),
    .CLKC3_DIV2_ENABLE("DISABLE"),
    .CLKC3_ENABLE("ENABLE"),
    .CLKC3_FPHASE(0),
    .CLKC4_CPHASE(1),
    .CLKC4_DIV(1),
    .CLKC4_DIV2_ENABLE("DISABLE"),
    .CLKC4_ENABLE("DISABLE"),
    .CLKC4_FPHASE(0),
    .DERIVE_PLL_CLOCKS("DISABLE"),
    .DPHASE_SOURCE("DISABLE"),
    .DYNCFG("DISABLE"),
    .FBCLK_DIV(25),
    .FEEDBK_MODE("NORMAL"),
    .FEEDBK_PATH("CLKC0_EXT"),
    .FIN("24.000"),
    .FREQ_LOCK_ACCURACY(2),
    .GEN_BASIC_CLOCK("DISABLE"),
    .GMC_GAIN(6),
    .GMC_TEST(14),
    .ICP_CURRENT(3),
    .IF_ESCLKSTSW("DISABLE"),
    .INTFB_WAKE("DISABLE"),
    .KVCO(6),
    .LPF_CAPACITOR(3),
    .LPF_RESISTOR(2),
    .NORESET("DISABLE"),
    .ODIV_MUXC0("DIV"),
    .ODIV_MUXC1("DIV"),
    .ODIV_MUXC2("DIV"),
    .ODIV_MUXC3("DIV"),
    .ODIV_MUXC4("DIV"),
    .PLLC2RST_ENA("DISABLE"),
    .PLLC34RST_ENA("DISABLE"),
    .PLLMRST_ENA("DISABLE"),
    .PLLRST_ENA("ENABLE"),
    .PLL_LOCK_MODE(0),
    .PREDIV_MUXC0("VCO"),
    .PREDIV_MUXC1("VCO"),
    .PREDIV_MUXC2("VCO"),
    .PREDIV_MUXC3("VCO"),
    .PREDIV_MUXC4("VCO"),
    .REFCLK_DIV(6),
    .REFCLK_SEL("INTERNAL"),
    .STDBY_ENABLE("DISABLE"),
    .STDBY_VCO_ENA("DISABLE"),
    .SYNC_ENABLE("DISABLE"),
    .VCO_NORESET("DISABLE"))
    \Pll/pll_inst  (
    .daddr(6'b000000),
    .dclk(1'b0),
    .dcs(1'b0),
    .di(8'b00000000),
    .dwe(1'b0),
    .fbclk(\Pll/clk0_out ),
    .psclk(1'b0),
    .psclksel(3'b000),
    .psdown(1'b0),
    .psstep(1'b0),
    .refclk(CLK_24M_pad),
    .reset(\U1/B_PWM/n0 ),
    .stdby(1'b0),
    .clkc({open_n0,open_n1,open_n2,CLK_50M,\Pll/clk0_buf }));  // al_ip/SysPll.v(76)
  EG_PHY_LSLICE #(
    //.MACRO("U1/B_PWM/add0/ucin_al_u194"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/B_PWM/add0/u11_al_u197  (
    .a({\U1/B_PWM/PWMCount [13],\U1/B_PWM/PWMCount [11]}),
    .b({\U1/B_PWM/PWMCount [14],\U1/B_PWM/PWMCount [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/B_PWM/add0/c11 ),
    .f({\U1/B_PWM/n2 [13],\U1/B_PWM/n2 [11]}),
    .fco(\U1/B_PWM/add0/c15 ),
    .fx({\U1/B_PWM/n2 [14],\U1/B_PWM/n2 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/B_PWM/add0/ucin_al_u194"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/B_PWM/add0/u15_al_u198  (
    .a({open_n31,\U1/B_PWM/PWMCount [15]}),
    .c(2'b00),
    .d({open_n36,1'b0}),
    .fci(\U1/B_PWM/add0/c15 ),
    .f({open_n53,\U1/B_PWM/n2 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/B_PWM/add0/ucin_al_u194"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/B_PWM/add0/u3_al_u195  (
    .a({\U1/B_PWM/PWMCount [5],\U1/B_PWM/PWMCount [3]}),
    .b({\U1/B_PWM/PWMCount [6],\U1/B_PWM/PWMCount [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/B_PWM/add0/c3 ),
    .f({\U1/B_PWM/n2 [5],\U1/B_PWM/n2 [3]}),
    .fco(\U1/B_PWM/add0/c7 ),
    .fx({\U1/B_PWM/n2 [6],\U1/B_PWM/n2 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/B_PWM/add0/ucin_al_u194"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/B_PWM/add0/u7_al_u196  (
    .a({\U1/B_PWM/PWMCount [9],\U1/B_PWM/PWMCount [7]}),
    .b({\U1/B_PWM/PWMCount [10],\U1/B_PWM/PWMCount [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/B_PWM/add0/c7 ),
    .f({\U1/B_PWM/n2 [9],\U1/B_PWM/n2 [7]}),
    .fco(\U1/B_PWM/add0/c11 ),
    .fx({\U1/B_PWM/n2 [10],\U1/B_PWM/n2 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/B_PWM/add0/ucin_al_u194"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/B_PWM/add0/ucin_al_u194  (
    .a({\U1/B_PWM/PWMCount [1],1'b0}),
    .b({\U1/B_PWM/PWMCount [2],\U1/B_PWM/PWMCount [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U1/B_PWM/n2 [1],open_n112}),
    .fco(\U1/B_PWM/add0/c3 ),
    .fx({\U1/B_PWM/n2 [2],\U1/B_PWM/n2 [0]}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt0_0|U1/B_PWM/lt0_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt0_0|U1/B_PWM/lt0_cin  (
    .a(2'b01),
    .b({\U1/B_PWM/PWMCount [0],open_n115}),
    .fco(\U1/B_PWM/lt0_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt0_0|U1/B_PWM/lt0_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt0_10|U1/B_PWM/lt0_9  (
    .a(2'b01),
    .b(\U1/B_PWM/PWMCount [10:9]),
    .fci(\U1/B_PWM/lt0_c9 ),
    .fco(\U1/B_PWM/lt0_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt0_0|U1/B_PWM/lt0_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt0_12|U1/B_PWM/lt0_11  (
    .a(2'b00),
    .b(\U1/B_PWM/PWMCount [12:11]),
    .fci(\U1/B_PWM/lt0_c11 ),
    .fco(\U1/B_PWM/lt0_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt0_0|U1/B_PWM/lt0_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt0_14|U1/B_PWM/lt0_13  (
    .a(2'b00),
    .b(\U1/B_PWM/PWMCount [14:13]),
    .fci(\U1/B_PWM/lt0_c13 ),
    .fco(\U1/B_PWM/lt0_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt0_0|U1/B_PWM/lt0_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt0_2|U1/B_PWM/lt0_1  (
    .a(2'b00),
    .b(\U1/B_PWM/PWMCount [2:1]),
    .fci(\U1/B_PWM/lt0_c1 ),
    .fco(\U1/B_PWM/lt0_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt0_0|U1/B_PWM/lt0_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt0_4|U1/B_PWM/lt0_3  (
    .a(2'b01),
    .b(\U1/B_PWM/PWMCount [4:3]),
    .fci(\U1/B_PWM/lt0_c3 ),
    .fco(\U1/B_PWM/lt0_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt0_0|U1/B_PWM/lt0_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt0_6|U1/B_PWM/lt0_5  (
    .a(2'b11),
    .b(\U1/B_PWM/PWMCount [6:5]),
    .fci(\U1/B_PWM/lt0_c5 ),
    .fco(\U1/B_PWM/lt0_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt0_0|U1/B_PWM/lt0_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt0_8|U1/B_PWM/lt0_7  (
    .a(2'b11),
    .b(\U1/B_PWM/PWMCount [8:7]),
    .fci(\U1/B_PWM/lt0_c7 ),
    .fco(\U1/B_PWM/lt0_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt0_0|U1/B_PWM/lt0_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt0_cout|U1/B_PWM/lt0_15  (
    .a(2'b00),
    .b({1'b1,\U1/B_PWM/PWMCount [15]}),
    .fci(\U1/B_PWM/lt0_c15 ),
    .f({\U1/B_PWM/n1 ,open_n327}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt1_0|U1/B_PWM/lt1_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt1_0|U1/B_PWM/lt1_cin  (
    .a({\U1/B_PWM/PWMCount [0],1'b1}),
    .b({\U1/PWM_BData [16],open_n333}),
    .fco(\U1/B_PWM/lt1_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt1_0|U1/B_PWM/lt1_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt1_10|U1/B_PWM/lt1_9  (
    .a(\U1/B_PWM/PWMCount [10:9]),
    .b(\U1/PWM_BData [26:25]),
    .fci(\U1/B_PWM/lt1_c9 ),
    .fco(\U1/B_PWM/lt1_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt1_0|U1/B_PWM/lt1_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt1_12|U1/B_PWM/lt1_11  (
    .a(\U1/B_PWM/PWMCount [12:11]),
    .b(\U1/PWM_BData [28:27]),
    .fci(\U1/B_PWM/lt1_c11 ),
    .fco(\U1/B_PWM/lt1_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt1_0|U1/B_PWM/lt1_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt1_14|U1/B_PWM/lt1_13  (
    .a(\U1/B_PWM/PWMCount [14:13]),
    .b(\U1/PWM_BData [30:29]),
    .fci(\U1/B_PWM/lt1_c13 ),
    .fco(\U1/B_PWM/lt1_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt1_0|U1/B_PWM/lt1_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt1_2|U1/B_PWM/lt1_1  (
    .a(\U1/B_PWM/PWMCount [2:1]),
    .b(\U1/PWM_BData [18:17]),
    .fci(\U1/B_PWM/lt1_c1 ),
    .fco(\U1/B_PWM/lt1_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt1_0|U1/B_PWM/lt1_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt1_4|U1/B_PWM/lt1_3  (
    .a(\U1/B_PWM/PWMCount [4:3]),
    .b(\U1/PWM_BData [20:19]),
    .fci(\U1/B_PWM/lt1_c3 ),
    .fco(\U1/B_PWM/lt1_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt1_0|U1/B_PWM/lt1_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt1_6|U1/B_PWM/lt1_5  (
    .a(\U1/B_PWM/PWMCount [6:5]),
    .b(\U1/PWM_BData [22:21]),
    .fci(\U1/B_PWM/lt1_c5 ),
    .fco(\U1/B_PWM/lt1_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt1_0|U1/B_PWM/lt1_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt1_8|U1/B_PWM/lt1_7  (
    .a(\U1/B_PWM/PWMCount [8:7]),
    .b(\U1/PWM_BData [24:23]),
    .fci(\U1/B_PWM/lt1_c7 ),
    .fco(\U1/B_PWM/lt1_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt1_0|U1/B_PWM/lt1_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt1_cout|U1/B_PWM/lt1_15  (
    .a({1'b0,\U1/B_PWM/PWMCount [15]}),
    .b({1'b1,\U1/PWM_BData [31]}),
    .fci(\U1/B_PWM/lt1_c15 ),
    .f({\U1/B_PWM/n4 ,open_n545}));
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/B_PWM/reg0_b0|U1/B_PWM/reg0_b9  (
    .c({\U1/B_PWM/n1 ,\U1/B_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/B_PWM/n2 [0],\U1/B_PWM/n2 [9]}),
    .sr(nRST_pad),
    .q({\U1/B_PWM/PWMCount [0],\U1/B_PWM/PWMCount [9]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/B_PWM/reg0_b10|U1/B_PWM/reg0_b8  (
    .c({\U1/B_PWM/n1 ,\U1/B_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/B_PWM/n2 [10],\U1/B_PWM/n2 [8]}),
    .sr(nRST_pad),
    .q({\U1/B_PWM/PWMCount [10],\U1/B_PWM/PWMCount [8]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/B_PWM/reg0_b11|U1/B_PWM/reg0_b7  (
    .c({\U1/B_PWM/n1 ,\U1/B_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/B_PWM/n2 [11],\U1/B_PWM/n2 [7]}),
    .sr(nRST_pad),
    .q({\U1/B_PWM/PWMCount [11],\U1/B_PWM/PWMCount [7]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/B_PWM/reg0_b12|U1/B_PWM/reg0_b6  (
    .c({\U1/B_PWM/n1 ,\U1/B_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/B_PWM/n2 [12],\U1/B_PWM/n2 [6]}),
    .sr(nRST_pad),
    .q({\U1/B_PWM/PWMCount [12],\U1/B_PWM/PWMCount [6]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/B_PWM/reg0_b13|U1/B_PWM/reg0_b5  (
    .c({\U1/B_PWM/n1 ,\U1/B_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/B_PWM/n2 [13],\U1/B_PWM/n2 [5]}),
    .sr(nRST_pad),
    .q({\U1/B_PWM/PWMCount [13],\U1/B_PWM/PWMCount [5]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/B_PWM/reg0_b14|U1/B_PWM/reg0_b4  (
    .c({\U1/B_PWM/n1 ,\U1/B_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/B_PWM/n2 [14],\U1/B_PWM/n2 [4]}),
    .sr(nRST_pad),
    .q({\U1/B_PWM/PWMCount [14],\U1/B_PWM/PWMCount [4]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/B_PWM/reg0_b15|U1/B_PWM/reg0_b3  (
    .c({\U1/B_PWM/n1 ,\U1/B_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/B_PWM/n2 [15],\U1/B_PWM/n2 [3]}),
    .sr(nRST_pad),
    .q({\U1/B_PWM/PWMCount [15],\U1/B_PWM/PWMCount [3]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/B_PWM/reg0_b1|U1/B_PWM/reg0_b2  (
    .c({\U1/B_PWM/n1 ,\U1/B_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/B_PWM/n2 [1],\U1/B_PWM/n2 [2]}),
    .sr(nRST_pad),
    .q({\U1/B_PWM/PWMCount [1],\U1/B_PWM/PWMCount [2]}));  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.MACRO("U1/G_PWM/add0/ucin_al_u199"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/G_PWM/add0/u11_al_u202  (
    .a({\U1/G_PWM/PWMCount [13],\U1/G_PWM/PWMCount [11]}),
    .b({\U1/G_PWM/PWMCount [14],\U1/G_PWM/PWMCount [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/G_PWM/add0/c11 ),
    .f({\U1/G_PWM/n2 [13],\U1/G_PWM/n2 [11]}),
    .fco(\U1/G_PWM/add0/c15 ),
    .fx({\U1/G_PWM/n2 [14],\U1/G_PWM/n2 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/G_PWM/add0/ucin_al_u199"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/G_PWM/add0/u15_al_u203  (
    .a({open_n777,\U1/G_PWM/PWMCount [15]}),
    .c(2'b00),
    .d({open_n782,1'b0}),
    .fci(\U1/G_PWM/add0/c15 ),
    .f({open_n799,\U1/G_PWM/n2 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/G_PWM/add0/ucin_al_u199"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/G_PWM/add0/u3_al_u200  (
    .a({\U1/G_PWM/PWMCount [5],\U1/G_PWM/PWMCount [3]}),
    .b({\U1/G_PWM/PWMCount [6],\U1/G_PWM/PWMCount [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/G_PWM/add0/c3 ),
    .f({\U1/G_PWM/n2 [5],\U1/G_PWM/n2 [3]}),
    .fco(\U1/G_PWM/add0/c7 ),
    .fx({\U1/G_PWM/n2 [6],\U1/G_PWM/n2 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/G_PWM/add0/ucin_al_u199"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/G_PWM/add0/u7_al_u201  (
    .a({\U1/G_PWM/PWMCount [9],\U1/G_PWM/PWMCount [7]}),
    .b({\U1/G_PWM/PWMCount [10],\U1/G_PWM/PWMCount [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/G_PWM/add0/c7 ),
    .f({\U1/G_PWM/n2 [9],\U1/G_PWM/n2 [7]}),
    .fco(\U1/G_PWM/add0/c11 ),
    .fx({\U1/G_PWM/n2 [10],\U1/G_PWM/n2 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/G_PWM/add0/ucin_al_u199"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/G_PWM/add0/ucin_al_u199  (
    .a({\U1/G_PWM/PWMCount [1],1'b0}),
    .b({\U1/G_PWM/PWMCount [2],\U1/G_PWM/PWMCount [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U1/G_PWM/n2 [1],open_n858}),
    .fco(\U1/G_PWM/add0/c3 ),
    .fx({\U1/G_PWM/n2 [2],\U1/G_PWM/n2 [0]}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt0_0|U1/G_PWM/lt0_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt0_0|U1/G_PWM/lt0_cin  (
    .a(2'b01),
    .b({\U1/G_PWM/PWMCount [0],open_n861}),
    .fco(\U1/G_PWM/lt0_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt0_0|U1/G_PWM/lt0_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt0_10|U1/G_PWM/lt0_9  (
    .a(2'b01),
    .b(\U1/G_PWM/PWMCount [10:9]),
    .fci(\U1/G_PWM/lt0_c9 ),
    .fco(\U1/G_PWM/lt0_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt0_0|U1/G_PWM/lt0_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt0_12|U1/G_PWM/lt0_11  (
    .a(2'b00),
    .b(\U1/G_PWM/PWMCount [12:11]),
    .fci(\U1/G_PWM/lt0_c11 ),
    .fco(\U1/G_PWM/lt0_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt0_0|U1/G_PWM/lt0_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt0_14|U1/G_PWM/lt0_13  (
    .a(2'b00),
    .b(\U1/G_PWM/PWMCount [14:13]),
    .fci(\U1/G_PWM/lt0_c13 ),
    .fco(\U1/G_PWM/lt0_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt0_0|U1/G_PWM/lt0_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt0_2|U1/G_PWM/lt0_1  (
    .a(2'b00),
    .b(\U1/G_PWM/PWMCount [2:1]),
    .fci(\U1/G_PWM/lt0_c1 ),
    .fco(\U1/G_PWM/lt0_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt0_0|U1/G_PWM/lt0_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt0_4|U1/G_PWM/lt0_3  (
    .a(2'b01),
    .b(\U1/G_PWM/PWMCount [4:3]),
    .fci(\U1/G_PWM/lt0_c3 ),
    .fco(\U1/G_PWM/lt0_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt0_0|U1/G_PWM/lt0_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt0_6|U1/G_PWM/lt0_5  (
    .a(2'b11),
    .b(\U1/G_PWM/PWMCount [6:5]),
    .fci(\U1/G_PWM/lt0_c5 ),
    .fco(\U1/G_PWM/lt0_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt0_0|U1/G_PWM/lt0_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt0_8|U1/G_PWM/lt0_7  (
    .a(2'b11),
    .b(\U1/G_PWM/PWMCount [8:7]),
    .fci(\U1/G_PWM/lt0_c7 ),
    .fco(\U1/G_PWM/lt0_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt0_0|U1/G_PWM/lt0_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt0_cout|U1/G_PWM/lt0_15  (
    .a(2'b00),
    .b({1'b1,\U1/G_PWM/PWMCount [15]}),
    .fci(\U1/G_PWM/lt0_c15 ),
    .f({\U1/G_PWM/n1 ,open_n1073}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt1_0|U1/G_PWM/lt1_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt1_0|U1/G_PWM/lt1_cin  (
    .a({\U1/G_PWM/PWMCount [0],1'b1}),
    .b({\U1/PWM_GData [16],open_n1079}),
    .fco(\U1/G_PWM/lt1_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt1_0|U1/G_PWM/lt1_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt1_10|U1/G_PWM/lt1_9  (
    .a(\U1/G_PWM/PWMCount [10:9]),
    .b(\U1/PWM_GData [26:25]),
    .fci(\U1/G_PWM/lt1_c9 ),
    .fco(\U1/G_PWM/lt1_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt1_0|U1/G_PWM/lt1_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt1_12|U1/G_PWM/lt1_11  (
    .a(\U1/G_PWM/PWMCount [12:11]),
    .b(\U1/PWM_GData [28:27]),
    .fci(\U1/G_PWM/lt1_c11 ),
    .fco(\U1/G_PWM/lt1_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt1_0|U1/G_PWM/lt1_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt1_14|U1/G_PWM/lt1_13  (
    .a(\U1/G_PWM/PWMCount [14:13]),
    .b(\U1/PWM_GData [30:29]),
    .fci(\U1/G_PWM/lt1_c13 ),
    .fco(\U1/G_PWM/lt1_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt1_0|U1/G_PWM/lt1_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt1_2|U1/G_PWM/lt1_1  (
    .a(\U1/G_PWM/PWMCount [2:1]),
    .b(\U1/PWM_GData [18:17]),
    .fci(\U1/G_PWM/lt1_c1 ),
    .fco(\U1/G_PWM/lt1_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt1_0|U1/G_PWM/lt1_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt1_4|U1/G_PWM/lt1_3  (
    .a(\U1/G_PWM/PWMCount [4:3]),
    .b(\U1/PWM_GData [20:19]),
    .fci(\U1/G_PWM/lt1_c3 ),
    .fco(\U1/G_PWM/lt1_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt1_0|U1/G_PWM/lt1_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt1_6|U1/G_PWM/lt1_5  (
    .a(\U1/G_PWM/PWMCount [6:5]),
    .b(\U1/PWM_GData [22:21]),
    .fci(\U1/G_PWM/lt1_c5 ),
    .fco(\U1/G_PWM/lt1_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt1_0|U1/G_PWM/lt1_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt1_8|U1/G_PWM/lt1_7  (
    .a(\U1/G_PWM/PWMCount [8:7]),
    .b(\U1/PWM_GData [24:23]),
    .fci(\U1/G_PWM/lt1_c7 ),
    .fco(\U1/G_PWM/lt1_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt1_0|U1/G_PWM/lt1_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt1_cout|U1/G_PWM/lt1_15  (
    .a({1'b0,\U1/G_PWM/PWMCount [15]}),
    .b({1'b1,\U1/PWM_GData [31]}),
    .fci(\U1/G_PWM/lt1_c15 ),
    .f({\U1/G_PWM/n4 ,open_n1291}));
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/G_PWM/reg0_b0|U1/G_PWM/reg0_b9  (
    .c({\U1/G_PWM/n1 ,\U1/G_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/G_PWM/n2 [0],\U1/G_PWM/n2 [9]}),
    .sr(nRST_pad),
    .q({\U1/G_PWM/PWMCount [0],\U1/G_PWM/PWMCount [9]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/G_PWM/reg0_b10|U1/G_PWM/reg0_b8  (
    .c({\U1/G_PWM/n1 ,\U1/G_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/G_PWM/n2 [10],\U1/G_PWM/n2 [8]}),
    .sr(nRST_pad),
    .q({\U1/G_PWM/PWMCount [10],\U1/G_PWM/PWMCount [8]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/G_PWM/reg0_b11|U1/G_PWM/reg0_b7  (
    .c({\U1/G_PWM/n1 ,\U1/G_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/G_PWM/n2 [11],\U1/G_PWM/n2 [7]}),
    .sr(nRST_pad),
    .q({\U1/G_PWM/PWMCount [11],\U1/G_PWM/PWMCount [7]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/G_PWM/reg0_b12|U1/G_PWM/reg0_b6  (
    .c({\U1/G_PWM/n1 ,\U1/G_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/G_PWM/n2 [12],\U1/G_PWM/n2 [6]}),
    .sr(nRST_pad),
    .q({\U1/G_PWM/PWMCount [12],\U1/G_PWM/PWMCount [6]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/G_PWM/reg0_b13|U1/G_PWM/reg0_b5  (
    .c({\U1/G_PWM/n1 ,\U1/G_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/G_PWM/n2 [13],\U1/G_PWM/n2 [5]}),
    .sr(nRST_pad),
    .q({\U1/G_PWM/PWMCount [13],\U1/G_PWM/PWMCount [5]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/G_PWM/reg0_b14|U1/G_PWM/reg0_b4  (
    .c({\U1/G_PWM/n1 ,\U1/G_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/G_PWM/n2 [14],\U1/G_PWM/n2 [4]}),
    .sr(nRST_pad),
    .q({\U1/G_PWM/PWMCount [14],\U1/G_PWM/PWMCount [4]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/G_PWM/reg0_b15|U1/G_PWM/reg0_b3  (
    .c({\U1/G_PWM/n1 ,\U1/G_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/G_PWM/n2 [15],\U1/G_PWM/n2 [3]}),
    .sr(nRST_pad),
    .q({\U1/G_PWM/PWMCount [15],\U1/G_PWM/PWMCount [3]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/G_PWM/reg0_b1|U1/G_PWM/reg0_b2  (
    .c({\U1/G_PWM/n1 ,\U1/G_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/G_PWM/n2 [1],\U1/G_PWM/n2 [2]}),
    .sr(nRST_pad),
    .q({\U1/G_PWM/PWMCount [1],\U1/G_PWM/PWMCount [2]}));  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.MACRO("U1/R_PWM/add0/ucin_al_u204"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/R_PWM/add0/u11_al_u207  (
    .a({\U1/R_PWM/PWMCount [13],\U1/R_PWM/PWMCount [11]}),
    .b({\U1/R_PWM/PWMCount [14],\U1/R_PWM/PWMCount [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/R_PWM/add0/c11 ),
    .f({\U1/R_PWM/n2 [13],\U1/R_PWM/n2 [11]}),
    .fco(\U1/R_PWM/add0/c15 ),
    .fx({\U1/R_PWM/n2 [14],\U1/R_PWM/n2 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/R_PWM/add0/ucin_al_u204"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/R_PWM/add0/u15_al_u208  (
    .a({open_n1523,\U1/R_PWM/PWMCount [15]}),
    .c(2'b00),
    .d({open_n1528,1'b0}),
    .fci(\U1/R_PWM/add0/c15 ),
    .f({open_n1545,\U1/R_PWM/n2 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/R_PWM/add0/ucin_al_u204"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/R_PWM/add0/u3_al_u205  (
    .a({\U1/R_PWM/PWMCount [5],\U1/R_PWM/PWMCount [3]}),
    .b({\U1/R_PWM/PWMCount [6],\U1/R_PWM/PWMCount [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/R_PWM/add0/c3 ),
    .f({\U1/R_PWM/n2 [5],\U1/R_PWM/n2 [3]}),
    .fco(\U1/R_PWM/add0/c7 ),
    .fx({\U1/R_PWM/n2 [6],\U1/R_PWM/n2 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/R_PWM/add0/ucin_al_u204"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/R_PWM/add0/u7_al_u206  (
    .a({\U1/R_PWM/PWMCount [9],\U1/R_PWM/PWMCount [7]}),
    .b({\U1/R_PWM/PWMCount [10],\U1/R_PWM/PWMCount [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/R_PWM/add0/c7 ),
    .f({\U1/R_PWM/n2 [9],\U1/R_PWM/n2 [7]}),
    .fco(\U1/R_PWM/add0/c11 ),
    .fx({\U1/R_PWM/n2 [10],\U1/R_PWM/n2 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/R_PWM/add0/ucin_al_u204"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/R_PWM/add0/ucin_al_u204  (
    .a({\U1/R_PWM/PWMCount [1],1'b0}),
    .b({\U1/R_PWM/PWMCount [2],\U1/R_PWM/PWMCount [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U1/R_PWM/n2 [1],open_n1604}),
    .fco(\U1/R_PWM/add0/c3 ),
    .fx({\U1/R_PWM/n2 [2],\U1/R_PWM/n2 [0]}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt0_0|U1/R_PWM/lt0_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt0_0|U1/R_PWM/lt0_cin  (
    .a(2'b01),
    .b({\U1/R_PWM/PWMCount [0],open_n1607}),
    .fco(\U1/R_PWM/lt0_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt0_0|U1/R_PWM/lt0_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt0_10|U1/R_PWM/lt0_9  (
    .a(2'b01),
    .b(\U1/R_PWM/PWMCount [10:9]),
    .fci(\U1/R_PWM/lt0_c9 ),
    .fco(\U1/R_PWM/lt0_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt0_0|U1/R_PWM/lt0_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt0_12|U1/R_PWM/lt0_11  (
    .a(2'b00),
    .b(\U1/R_PWM/PWMCount [12:11]),
    .fci(\U1/R_PWM/lt0_c11 ),
    .fco(\U1/R_PWM/lt0_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt0_0|U1/R_PWM/lt0_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt0_14|U1/R_PWM/lt0_13  (
    .a(2'b00),
    .b(\U1/R_PWM/PWMCount [14:13]),
    .fci(\U1/R_PWM/lt0_c13 ),
    .fco(\U1/R_PWM/lt0_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt0_0|U1/R_PWM/lt0_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt0_2|U1/R_PWM/lt0_1  (
    .a(2'b00),
    .b(\U1/R_PWM/PWMCount [2:1]),
    .fci(\U1/R_PWM/lt0_c1 ),
    .fco(\U1/R_PWM/lt0_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt0_0|U1/R_PWM/lt0_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt0_4|U1/R_PWM/lt0_3  (
    .a(2'b01),
    .b(\U1/R_PWM/PWMCount [4:3]),
    .fci(\U1/R_PWM/lt0_c3 ),
    .fco(\U1/R_PWM/lt0_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt0_0|U1/R_PWM/lt0_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt0_6|U1/R_PWM/lt0_5  (
    .a(2'b11),
    .b(\U1/R_PWM/PWMCount [6:5]),
    .fci(\U1/R_PWM/lt0_c5 ),
    .fco(\U1/R_PWM/lt0_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt0_0|U1/R_PWM/lt0_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt0_8|U1/R_PWM/lt0_7  (
    .a(2'b11),
    .b(\U1/R_PWM/PWMCount [8:7]),
    .fci(\U1/R_PWM/lt0_c7 ),
    .fco(\U1/R_PWM/lt0_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt0_0|U1/R_PWM/lt0_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt0_cout|U1/R_PWM/lt0_15  (
    .a(2'b00),
    .b({1'b1,\U1/R_PWM/PWMCount [15]}),
    .fci(\U1/R_PWM/lt0_c15 ),
    .f({\U1/R_PWM/n1 ,open_n1819}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt1_0|U1/R_PWM/lt1_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt1_0|U1/R_PWM/lt1_cin  (
    .a({\U1/R_PWM/PWMCount [0],1'b1}),
    .b({\U1/PWM_RData [16],open_n1825}),
    .fco(\U1/R_PWM/lt1_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt1_0|U1/R_PWM/lt1_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt1_10|U1/R_PWM/lt1_9  (
    .a(\U1/R_PWM/PWMCount [10:9]),
    .b(\U1/PWM_RData [26:25]),
    .fci(\U1/R_PWM/lt1_c9 ),
    .fco(\U1/R_PWM/lt1_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt1_0|U1/R_PWM/lt1_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt1_12|U1/R_PWM/lt1_11  (
    .a(\U1/R_PWM/PWMCount [12:11]),
    .b(\U1/PWM_RData [28:27]),
    .fci(\U1/R_PWM/lt1_c11 ),
    .fco(\U1/R_PWM/lt1_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt1_0|U1/R_PWM/lt1_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt1_14|U1/R_PWM/lt1_13  (
    .a(\U1/R_PWM/PWMCount [14:13]),
    .b(\U1/PWM_RData [30:29]),
    .fci(\U1/R_PWM/lt1_c13 ),
    .fco(\U1/R_PWM/lt1_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt1_0|U1/R_PWM/lt1_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt1_2|U1/R_PWM/lt1_1  (
    .a(\U1/R_PWM/PWMCount [2:1]),
    .b(\U1/PWM_RData [18:17]),
    .fci(\U1/R_PWM/lt1_c1 ),
    .fco(\U1/R_PWM/lt1_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt1_0|U1/R_PWM/lt1_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt1_4|U1/R_PWM/lt1_3  (
    .a(\U1/R_PWM/PWMCount [4:3]),
    .b(\U1/PWM_RData [20:19]),
    .fci(\U1/R_PWM/lt1_c3 ),
    .fco(\U1/R_PWM/lt1_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt1_0|U1/R_PWM/lt1_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt1_6|U1/R_PWM/lt1_5  (
    .a(\U1/R_PWM/PWMCount [6:5]),
    .b(\U1/PWM_RData [22:21]),
    .fci(\U1/R_PWM/lt1_c5 ),
    .fco(\U1/R_PWM/lt1_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt1_0|U1/R_PWM/lt1_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt1_8|U1/R_PWM/lt1_7  (
    .a(\U1/R_PWM/PWMCount [8:7]),
    .b(\U1/PWM_RData [24:23]),
    .fci(\U1/R_PWM/lt1_c7 ),
    .fco(\U1/R_PWM/lt1_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt1_0|U1/R_PWM/lt1_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt1_cout|U1/R_PWM/lt1_15  (
    .a({1'b0,\U1/R_PWM/PWMCount [15]}),
    .b({1'b1,\U1/PWM_RData [31]}),
    .fci(\U1/R_PWM/lt1_c15 ),
    .f({\U1/R_PWM/n4 ,open_n2037}));
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/R_PWM/reg0_b0|U1/R_PWM/reg0_b9  (
    .c({\U1/R_PWM/n1 ,\U1/R_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/R_PWM/n2 [0],\U1/R_PWM/n2 [9]}),
    .sr(nRST_pad),
    .q({\U1/R_PWM/PWMCount [0],\U1/R_PWM/PWMCount [9]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/R_PWM/reg0_b10|U1/R_PWM/reg0_b8  (
    .c({\U1/R_PWM/n1 ,\U1/R_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/R_PWM/n2 [10],\U1/R_PWM/n2 [8]}),
    .sr(nRST_pad),
    .q({\U1/R_PWM/PWMCount [10],\U1/R_PWM/PWMCount [8]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/R_PWM/reg0_b11|U1/R_PWM/reg0_b7  (
    .c({\U1/R_PWM/n1 ,\U1/R_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/R_PWM/n2 [11],\U1/R_PWM/n2 [7]}),
    .sr(nRST_pad),
    .q({\U1/R_PWM/PWMCount [11],\U1/R_PWM/PWMCount [7]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/R_PWM/reg0_b12|U1/R_PWM/reg0_b6  (
    .c({\U1/R_PWM/n1 ,\U1/R_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/R_PWM/n2 [12],\U1/R_PWM/n2 [6]}),
    .sr(nRST_pad),
    .q({\U1/R_PWM/PWMCount [12],\U1/R_PWM/PWMCount [6]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/R_PWM/reg0_b13|U1/R_PWM/reg0_b5  (
    .c({\U1/R_PWM/n1 ,\U1/R_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/R_PWM/n2 [13],\U1/R_PWM/n2 [5]}),
    .sr(nRST_pad),
    .q({\U1/R_PWM/PWMCount [13],\U1/R_PWM/PWMCount [5]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/R_PWM/reg0_b14|U1/R_PWM/reg0_b4  (
    .c({\U1/R_PWM/n1 ,\U1/R_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/R_PWM/n2 [14],\U1/R_PWM/n2 [4]}),
    .sr(nRST_pad),
    .q({\U1/R_PWM/PWMCount [14],\U1/R_PWM/PWMCount [4]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/R_PWM/reg0_b15|U1/R_PWM/reg0_b3  (
    .c({\U1/R_PWM/n1 ,\U1/R_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/R_PWM/n2 [15],\U1/R_PWM/n2 [3]}),
    .sr(nRST_pad),
    .q({\U1/R_PWM/PWMCount [15],\U1/R_PWM/PWMCount [3]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/R_PWM/reg0_b1|U1/R_PWM/reg0_b2  (
    .c({\U1/R_PWM/n1 ,\U1/R_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/R_PWM/n2 [1],\U1/R_PWM/n2 [2]}),
    .sr(nRST_pad),
    .q({\U1/R_PWM/PWMCount [1],\U1/R_PWM/PWMCount [2]}));  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u140"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0/u11_al_u143  (
    .a({\U1/Count_LED [13],\U1/Count_LED [11]}),
    .b({\U1/Count_LED [14],\U1/Count_LED [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c11 ),
    .f({\U1/n2 [13],\U1/n2 [11]}),
    .fco(\U1/add0/c15 ),
    .fx({\U1/n2 [14],\U1/n2 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u140"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0/u15_al_u144  (
    .a({\U1/Count_LED [17],\U1/Count_LED [15]}),
    .b({\U1/Count_LED [18],\U1/Count_LED [16]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c15 ),
    .f({\U1/n2 [17],\U1/n2 [15]}),
    .fco(\U1/add0/c19 ),
    .fx({\U1/n2 [18],\U1/n2 [16]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u140"),
    //.R_POSITION("X0Y2Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0/u19_al_u145  (
    .a({\U1/Count_LED [21],\U1/Count_LED [19]}),
    .b({\U1/Count_LED [22],\U1/Count_LED [20]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c19 ),
    .f({\U1/n2 [21],\U1/n2 [19]}),
    .fco(\U1/add0/c23 ),
    .fx({\U1/n2 [22],\U1/n2 [20]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u140"),
    //.R_POSITION("X0Y3Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0/u23_al_u146  (
    .a({\U1/Count_LED [25],\U1/Count_LED [23]}),
    .b({\U1/Count_LED [26],\U1/Count_LED [24]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c23 ),
    .f({\U1/n2 [25],\U1/n2 [23]}),
    .fco(\U1/add0/c27 ),
    .fx({\U1/n2 [26],\U1/n2 [24]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u140"),
    //.R_POSITION("X0Y3Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0/u27_al_u147  (
    .a({\U1/Count_LED [29],\U1/Count_LED [27]}),
    .b({\U1/Count_LED [30],\U1/Count_LED [28]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c27 ),
    .f({\U1/n2 [29],\U1/n2 [27]}),
    .fco(\U1/add0/c31 ),
    .fx({\U1/n2 [30],\U1/n2 [28]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u140"),
    //.R_POSITION("X0Y4Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0/u31_al_u148  (
    .a({open_n2341,\U1/Count_LED [31]}),
    .c(2'b00),
    .d({open_n2346,1'b0}),
    .fci(\U1/add0/c31 ),
    .f({open_n2363,\U1/n2 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u140"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0/u3_al_u141  (
    .a({\U1/Count_LED [5],\U1/Count_LED [3]}),
    .b({\U1/Count_LED [6],\U1/Count_LED [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c3 ),
    .f({\U1/n2 [5],\U1/n2 [3]}),
    .fco(\U1/add0/c7 ),
    .fx({\U1/n2 [6],\U1/n2 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u140"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0/u7_al_u142  (
    .a({\U1/Count_LED [9],\U1/Count_LED [7]}),
    .b({\U1/Count_LED [10],\U1/Count_LED [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c7 ),
    .f({\U1/n2 [9],\U1/n2 [7]}),
    .fco(\U1/add0/c11 ),
    .fx({\U1/n2 [10],\U1/n2 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u140"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0/ucin_al_u140  (
    .a({\U1/Count_LED [1],1'b0}),
    .b({\U1/Count_LED [2],\U1/Count_LED [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U1/n2 [1],open_n2422}),
    .fco(\U1/add0/c3 ),
    .fx({\U1/n2 [2],\U1/n2 [0]}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_0|U1/lt0_cin  (
    .a(2'b01),
    .b({\U1/Count_LED [0],open_n2425}),
    .fco(\U1/lt0_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_10|U1/lt0_9  (
    .a(2'b00),
    .b(\U1/Count_LED [10:9]),
    .fci(\U1/lt0_c9 ),
    .fco(\U1/lt0_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_12|U1/lt0_11  (
    .a(2'b00),
    .b(\U1/Count_LED [12:11]),
    .fci(\U1/lt0_c11 ),
    .fco(\U1/lt0_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_14|U1/lt0_13  (
    .a(2'b00),
    .b(\U1/Count_LED [14:13]),
    .fci(\U1/lt0_c13 ),
    .fco(\U1/lt0_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_16|U1/lt0_15  (
    .a(2'b00),
    .b(\U1/Count_LED [16:15]),
    .fci(\U1/lt0_c15 ),
    .fco(\U1/lt0_c17 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y4Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_18|U1/lt0_17  (
    .a(2'b00),
    .b(\U1/Count_LED [18:17]),
    .fci(\U1/lt0_c17 ),
    .fco(\U1/lt0_c19 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y5Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_20|U1/lt0_19  (
    .a(2'b11),
    .b(\U1/Count_LED [20:19]),
    .fci(\U1/lt0_c19 ),
    .fco(\U1/lt0_c21 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y5Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_22|U1/lt0_21  (
    .a(2'b01),
    .b(\U1/Count_LED [22:21]),
    .fci(\U1/lt0_c21 ),
    .fco(\U1/lt0_c23 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y6Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_24|U1/lt0_23  (
    .a(2'b11),
    .b(\U1/Count_LED [24:23]),
    .fci(\U1/lt0_c23 ),
    .fco(\U1/lt0_c25 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y6Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_26|U1/lt0_25  (
    .a(2'b01),
    .b(\U1/Count_LED [26:25]),
    .fci(\U1/lt0_c25 ),
    .fco(\U1/lt0_c27 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y7Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_28|U1/lt0_27  (
    .a(2'b01),
    .b(\U1/Count_LED [28:27]),
    .fci(\U1/lt0_c27 ),
    .fco(\U1/lt0_c29 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_2|U1/lt0_1  (
    .a(2'b00),
    .b(\U1/Count_LED [2:1]),
    .fci(\U1/lt0_c1 ),
    .fco(\U1/lt0_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y7Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_30|U1/lt0_29  (
    .a(2'b00),
    .b(\U1/Count_LED [30:29]),
    .fci(\U1/lt0_c29 ),
    .fco(\U1/lt0_c31 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_4|U1/lt0_3  (
    .a(2'b00),
    .b(\U1/Count_LED [4:3]),
    .fci(\U1/lt0_c3 ),
    .fco(\U1/lt0_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_6|U1/lt0_5  (
    .a(2'b00),
    .b(\U1/Count_LED [6:5]),
    .fci(\U1/lt0_c5 ),
    .fco(\U1/lt0_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_8|U1/lt0_7  (
    .a(2'b00),
    .b(\U1/Count_LED [8:7]),
    .fci(\U1/lt0_c7 ),
    .fco(\U1/lt0_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y8Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_cout|U1/lt0_31  (
    .a(2'b00),
    .b({1'b1,\U1/Count_LED [31]}),
    .fci(\U1/lt0_c31 ),
    .f({\U1/n1 ,open_n2829}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_0|U1/lt1_cin  (
    .a({\U1/Count_LED [0],1'b1}),
    .b({1'b0,open_n2835}),
    .fco(\U1/lt1_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_10|U1/lt1_9  (
    .a(\U1/Count_LED [10:9]),
    .b(2'b00),
    .fci(\U1/lt1_c9 ),
    .fco(\U1/lt1_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_12|U1/lt1_11  (
    .a(\U1/Count_LED [12:11]),
    .b(2'b00),
    .fci(\U1/lt1_c11 ),
    .fco(\U1/lt1_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_14|U1/lt1_13  (
    .a(\U1/Count_LED [14:13]),
    .b(2'b00),
    .fci(\U1/lt1_c13 ),
    .fco(\U1/lt1_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_16|U1/lt1_15  (
    .a(\U1/Count_LED [16:15]),
    .b(2'b00),
    .fci(\U1/lt1_c15 ),
    .fco(\U1/lt1_c17 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y4Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_18|U1/lt1_17  (
    .a(\U1/Count_LED [18:17]),
    .b(2'b00),
    .fci(\U1/lt1_c17 ),
    .fco(\U1/lt1_c19 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y5Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_20|U1/lt1_19  (
    .a(\U1/Count_LED [20:19]),
    .b(2'b01),
    .fci(\U1/lt1_c19 ),
    .fco(\U1/lt1_c21 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y5Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_22|U1/lt1_21  (
    .a(\U1/Count_LED [22:21]),
    .b(2'b11),
    .fci(\U1/lt1_c21 ),
    .fco(\U1/lt1_c23 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y6Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_24|U1/lt1_23  (
    .a(\U1/Count_LED [24:23]),
    .b(2'b11),
    .fci(\U1/lt1_c23 ),
    .fco(\U1/lt1_c25 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y6Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_26|U1/lt1_25  (
    .a(\U1/Count_LED [26:25]),
    .b(2'b01),
    .fci(\U1/lt1_c25 ),
    .fco(\U1/lt1_c27 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y7Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_28|U1/lt1_27  (
    .a(\U1/Count_LED [28:27]),
    .b(2'b00),
    .fci(\U1/lt1_c27 ),
    .fco(\U1/lt1_c29 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_2|U1/lt1_1  (
    .a(\U1/Count_LED [2:1]),
    .b(2'b00),
    .fci(\U1/lt1_c1 ),
    .fco(\U1/lt1_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y7Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_30|U1/lt1_29  (
    .a(\U1/Count_LED [30:29]),
    .b(2'b00),
    .fci(\U1/lt1_c29 ),
    .fco(\U1/lt1_c31 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_4|U1/lt1_3  (
    .a(\U1/Count_LED [4:3]),
    .b(2'b00),
    .fci(\U1/lt1_c3 ),
    .fco(\U1/lt1_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_6|U1/lt1_5  (
    .a(\U1/Count_LED [6:5]),
    .b(2'b00),
    .fci(\U1/lt1_c5 ),
    .fco(\U1/lt1_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_8|U1/lt1_7  (
    .a(\U1/Count_LED [8:7]),
    .b(2'b00),
    .fci(\U1/lt1_c7 ),
    .fco(\U1/lt1_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y8Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_cout|U1/lt1_31  (
    .a({1'b0,\U1/Count_LED [31]}),
    .b(2'b10),
    .fci(\U1/lt1_c31 ),
    .f({\U1/n4 ,open_n3239}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_0|U1/lt2_cin  (
    .a(2'b00),
    .b({\U1/Count_LED [0],open_n3245}),
    .fco(\U1/lt2_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_10|U1/lt2_9  (
    .a(2'b00),
    .b(\U1/Count_LED [10:9]),
    .fci(\U1/lt2_c9 ),
    .fco(\U1/lt2_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_12|U1/lt2_11  (
    .a(2'b00),
    .b(\U1/Count_LED [12:11]),
    .fci(\U1/lt2_c11 ),
    .fco(\U1/lt2_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_14|U1/lt2_13  (
    .a(2'b00),
    .b(\U1/Count_LED [14:13]),
    .fci(\U1/lt2_c13 ),
    .fco(\U1/lt2_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_16|U1/lt2_15  (
    .a(2'b00),
    .b(\U1/Count_LED [16:15]),
    .fci(\U1/lt2_c15 ),
    .fco(\U1/lt2_c17 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y4Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_18|U1/lt2_17  (
    .a(2'b00),
    .b(\U1/Count_LED [18:17]),
    .fci(\U1/lt2_c17 ),
    .fco(\U1/lt2_c19 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y5Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_20|U1/lt2_19  (
    .a(2'b01),
    .b(\U1/Count_LED [20:19]),
    .fci(\U1/lt2_c19 ),
    .fco(\U1/lt2_c21 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y5Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_22|U1/lt2_21  (
    .a(2'b11),
    .b(\U1/Count_LED [22:21]),
    .fci(\U1/lt2_c21 ),
    .fco(\U1/lt2_c23 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y6Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_24|U1/lt2_23  (
    .a(2'b11),
    .b(\U1/Count_LED [24:23]),
    .fci(\U1/lt2_c23 ),
    .fco(\U1/lt2_c25 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y6Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_26|U1/lt2_25  (
    .a(2'b01),
    .b(\U1/Count_LED [26:25]),
    .fci(\U1/lt2_c25 ),
    .fco(\U1/lt2_c27 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y7Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_28|U1/lt2_27  (
    .a(2'b00),
    .b(\U1/Count_LED [28:27]),
    .fci(\U1/lt2_c27 ),
    .fco(\U1/lt2_c29 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_2|U1/lt2_1  (
    .a(2'b00),
    .b(\U1/Count_LED [2:1]),
    .fci(\U1/lt2_c1 ),
    .fco(\U1/lt2_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y7Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_30|U1/lt2_29  (
    .a(2'b00),
    .b(\U1/Count_LED [30:29]),
    .fci(\U1/lt2_c29 ),
    .fco(\U1/lt2_c31 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_4|U1/lt2_3  (
    .a(2'b00),
    .b(\U1/Count_LED [4:3]),
    .fci(\U1/lt2_c3 ),
    .fco(\U1/lt2_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_6|U1/lt2_5  (
    .a(2'b00),
    .b(\U1/Count_LED [6:5]),
    .fci(\U1/lt2_c5 ),
    .fco(\U1/lt2_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_8|U1/lt2_7  (
    .a(2'b00),
    .b(\U1/Count_LED [8:7]),
    .fci(\U1/lt2_c7 ),
    .fco(\U1/lt2_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y8Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_cout|U1/lt2_31  (
    .a(2'b00),
    .b({1'b1,\U1/Count_LED [31]}),
    .fci(\U1/lt2_c31 ),
    .f({\U1/n5 ,open_n3649}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_0|U1/lt3_cin  (
    .a({\U1/Count_LED [0],1'b1}),
    .b({1'b0,open_n3655}),
    .fco(\U1/lt3_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_10|U1/lt3_9  (
    .a(\U1/Count_LED [10:9]),
    .b(2'b00),
    .fci(\U1/lt3_c9 ),
    .fco(\U1/lt3_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_12|U1/lt3_11  (
    .a(\U1/Count_LED [12:11]),
    .b(2'b00),
    .fci(\U1/lt3_c11 ),
    .fco(\U1/lt3_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_14|U1/lt3_13  (
    .a(\U1/Count_LED [14:13]),
    .b(2'b00),
    .fci(\U1/lt3_c13 ),
    .fco(\U1/lt3_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_16|U1/lt3_15  (
    .a(\U1/Count_LED [16:15]),
    .b(2'b00),
    .fci(\U1/lt3_c15 ),
    .fco(\U1/lt3_c17 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y4Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_18|U1/lt3_17  (
    .a(\U1/Count_LED [18:17]),
    .b(2'b00),
    .fci(\U1/lt3_c17 ),
    .fco(\U1/lt3_c19 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y5Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_20|U1/lt3_19  (
    .a(\U1/Count_LED [20:19]),
    .b(2'b10),
    .fci(\U1/lt3_c19 ),
    .fco(\U1/lt3_c21 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y5Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_22|U1/lt3_21  (
    .a(\U1/Count_LED [22:21]),
    .b(2'b10),
    .fci(\U1/lt3_c21 ),
    .fco(\U1/lt3_c23 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y6Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_24|U1/lt3_23  (
    .a(\U1/Count_LED [24:23]),
    .b(2'b11),
    .fci(\U1/lt3_c23 ),
    .fco(\U1/lt3_c25 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y6Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_26|U1/lt3_25  (
    .a(\U1/Count_LED [26:25]),
    .b(2'b11),
    .fci(\U1/lt3_c25 ),
    .fco(\U1/lt3_c27 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y7Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_28|U1/lt3_27  (
    .a(\U1/Count_LED [28:27]),
    .b(2'b00),
    .fci(\U1/lt3_c27 ),
    .fco(\U1/lt3_c29 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_2|U1/lt3_1  (
    .a(\U1/Count_LED [2:1]),
    .b(2'b00),
    .fci(\U1/lt3_c1 ),
    .fco(\U1/lt3_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y7Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_30|U1/lt3_29  (
    .a(\U1/Count_LED [30:29]),
    .b(2'b00),
    .fci(\U1/lt3_c29 ),
    .fco(\U1/lt3_c31 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_4|U1/lt3_3  (
    .a(\U1/Count_LED [4:3]),
    .b(2'b00),
    .fci(\U1/lt3_c3 ),
    .fco(\U1/lt3_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_6|U1/lt3_5  (
    .a(\U1/Count_LED [6:5]),
    .b(2'b00),
    .fci(\U1/lt3_c5 ),
    .fco(\U1/lt3_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_8|U1/lt3_7  (
    .a(\U1/Count_LED [8:7]),
    .b(2'b00),
    .fci(\U1/lt3_c7 ),
    .fco(\U1/lt3_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y8Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_cout|U1/lt3_31  (
    .a({1'b0,\U1/Count_LED [31]}),
    .b(2'b10),
    .fci(\U1/lt3_c31 ),
    .f({\U1/n6 ,open_n4059}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_0|U1/lt4_cin  (
    .a(2'b01),
    .b({\U1/Count_LED [0],open_n4065}),
    .fco(\U1/lt4_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_10|U1/lt4_9  (
    .a(2'b00),
    .b(\U1/Count_LED [10:9]),
    .fci(\U1/lt4_c9 ),
    .fco(\U1/lt4_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_12|U1/lt4_11  (
    .a(2'b00),
    .b(\U1/Count_LED [12:11]),
    .fci(\U1/lt4_c11 ),
    .fco(\U1/lt4_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_14|U1/lt4_13  (
    .a(2'b00),
    .b(\U1/Count_LED [14:13]),
    .fci(\U1/lt4_c13 ),
    .fco(\U1/lt4_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_16|U1/lt4_15  (
    .a(2'b00),
    .b(\U1/Count_LED [16:15]),
    .fci(\U1/lt4_c15 ),
    .fco(\U1/lt4_c17 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y4Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_18|U1/lt4_17  (
    .a(2'b00),
    .b(\U1/Count_LED [18:17]),
    .fci(\U1/lt4_c17 ),
    .fco(\U1/lt4_c19 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y5Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_20|U1/lt4_19  (
    .a(2'b01),
    .b(\U1/Count_LED [20:19]),
    .fci(\U1/lt4_c19 ),
    .fco(\U1/lt4_c21 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y5Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_22|U1/lt4_21  (
    .a(2'b11),
    .b(\U1/Count_LED [22:21]),
    .fci(\U1/lt4_c21 ),
    .fco(\U1/lt4_c23 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y6Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_24|U1/lt4_23  (
    .a(2'b11),
    .b(\U1/Count_LED [24:23]),
    .fci(\U1/lt4_c23 ),
    .fco(\U1/lt4_c25 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y6Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_26|U1/lt4_25  (
    .a(2'b01),
    .b(\U1/Count_LED [26:25]),
    .fci(\U1/lt4_c25 ),
    .fco(\U1/lt4_c27 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y7Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_28|U1/lt4_27  (
    .a(2'b00),
    .b(\U1/Count_LED [28:27]),
    .fci(\U1/lt4_c27 ),
    .fco(\U1/lt4_c29 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_2|U1/lt4_1  (
    .a(2'b00),
    .b(\U1/Count_LED [2:1]),
    .fci(\U1/lt4_c1 ),
    .fco(\U1/lt4_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y7Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_30|U1/lt4_29  (
    .a(2'b00),
    .b(\U1/Count_LED [30:29]),
    .fci(\U1/lt4_c29 ),
    .fco(\U1/lt4_c31 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_4|U1/lt4_3  (
    .a(2'b00),
    .b(\U1/Count_LED [4:3]),
    .fci(\U1/lt4_c3 ),
    .fco(\U1/lt4_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_6|U1/lt4_5  (
    .a(2'b00),
    .b(\U1/Count_LED [6:5]),
    .fci(\U1/lt4_c5 ),
    .fco(\U1/lt4_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_8|U1/lt4_7  (
    .a(2'b00),
    .b(\U1/Count_LED [8:7]),
    .fci(\U1/lt4_c7 ),
    .fco(\U1/lt4_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y8Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_cout|U1/lt4_31  (
    .a(2'b00),
    .b({1'b1,\U1/Count_LED [31]}),
    .fci(\U1/lt4_c31 ),
    .f({\U1/n10 ,open_n4469}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_0|U1/lt5_cin  (
    .a(2'b00),
    .b({\U1/Count_LED [0],open_n4475}),
    .fco(\U1/lt5_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_10|U1/lt5_9  (
    .a(2'b00),
    .b(\U1/Count_LED [10:9]),
    .fci(\U1/lt5_c9 ),
    .fco(\U1/lt5_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_12|U1/lt5_11  (
    .a(2'b00),
    .b(\U1/Count_LED [12:11]),
    .fci(\U1/lt5_c11 ),
    .fco(\U1/lt5_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_14|U1/lt5_13  (
    .a(2'b00),
    .b(\U1/Count_LED [14:13]),
    .fci(\U1/lt5_c13 ),
    .fco(\U1/lt5_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_16|U1/lt5_15  (
    .a(2'b00),
    .b(\U1/Count_LED [16:15]),
    .fci(\U1/lt5_c15 ),
    .fco(\U1/lt5_c17 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y4Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_18|U1/lt5_17  (
    .a(2'b00),
    .b(\U1/Count_LED [18:17]),
    .fci(\U1/lt5_c17 ),
    .fco(\U1/lt5_c19 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y5Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_20|U1/lt5_19  (
    .a(2'b10),
    .b(\U1/Count_LED [20:19]),
    .fci(\U1/lt5_c19 ),
    .fco(\U1/lt5_c21 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y5Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_22|U1/lt5_21  (
    .a(2'b10),
    .b(\U1/Count_LED [22:21]),
    .fci(\U1/lt5_c21 ),
    .fco(\U1/lt5_c23 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y6Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_24|U1/lt5_23  (
    .a(2'b11),
    .b(\U1/Count_LED [24:23]),
    .fci(\U1/lt5_c23 ),
    .fco(\U1/lt5_c25 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y6Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_26|U1/lt5_25  (
    .a(2'b11),
    .b(\U1/Count_LED [26:25]),
    .fci(\U1/lt5_c25 ),
    .fco(\U1/lt5_c27 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y7Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_28|U1/lt5_27  (
    .a(2'b00),
    .b(\U1/Count_LED [28:27]),
    .fci(\U1/lt5_c27 ),
    .fco(\U1/lt5_c29 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_2|U1/lt5_1  (
    .a(2'b00),
    .b(\U1/Count_LED [2:1]),
    .fci(\U1/lt5_c1 ),
    .fco(\U1/lt5_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y7Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_30|U1/lt5_29  (
    .a(2'b00),
    .b(\U1/Count_LED [30:29]),
    .fci(\U1/lt5_c29 ),
    .fco(\U1/lt5_c31 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_4|U1/lt5_3  (
    .a(2'b00),
    .b(\U1/Count_LED [4:3]),
    .fci(\U1/lt5_c3 ),
    .fco(\U1/lt5_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_6|U1/lt5_5  (
    .a(2'b00),
    .b(\U1/Count_LED [6:5]),
    .fci(\U1/lt5_c5 ),
    .fco(\U1/lt5_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_8|U1/lt5_7  (
    .a(2'b00),
    .b(\U1/Count_LED [8:7]),
    .fci(\U1/lt5_c7 ),
    .fco(\U1/lt5_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y8Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_cout|U1/lt5_31  (
    .a(2'b00),
    .b({1'b1,\U1/Count_LED [31]}),
    .fci(\U1/lt5_c31 ),
    .f({\U1/n13 ,open_n4879}));
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b0|U1/reg0_b9  (
    .c({\U1/n1 ,\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n2 [0],\U1/n2 [9]}),
    .sr(nRST_pad),
    .q({\U1/Count_LED [0],\U1/Count_LED [9]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b10|U1/reg0_b8  (
    .c({\U1/n1 ,\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n2 [10],\U1/n2 [8]}),
    .sr(nRST_pad),
    .q({\U1/Count_LED [10],\U1/Count_LED [8]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b11|U1/reg0_b7  (
    .c({\U1/n1 ,\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n2 [11],\U1/n2 [7]}),
    .sr(nRST_pad),
    .q({\U1/Count_LED [11],\U1/Count_LED [7]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b12|U1/reg0_b6  (
    .c({\U1/n1 ,\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n2 [12],\U1/n2 [6]}),
    .sr(nRST_pad),
    .q({\U1/Count_LED [12],\U1/Count_LED [6]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b13|U1/reg0_b5  (
    .c({\U1/n1 ,\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n2 [13],\U1/n2 [5]}),
    .sr(nRST_pad),
    .q({\U1/Count_LED [13],\U1/Count_LED [5]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b14|U1/reg0_b4  (
    .c({\U1/n1 ,\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n2 [14],\U1/n2 [4]}),
    .sr(nRST_pad),
    .q({\U1/Count_LED [14],\U1/Count_LED [4]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b15|U1/reg0_b3  (
    .c({\U1/n1 ,\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n2 [15],\U1/n2 [3]}),
    .sr(nRST_pad),
    .q({\U1/Count_LED [15],\U1/Count_LED [3]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b1|U1/reg0_b2  (
    .c({\U1/n1 ,\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n2 [1],\U1/n2 [2]}),
    .sr(nRST_pad),
    .q({\U1/Count_LED [1],\U1/Count_LED [2]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub0/ucin_al_u149"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub0/u11_al_u152  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [13],\U1/Count_LED [11]}),
    .e({\U1/Count_LED [14],\U1/Count_LED [12]}),
    .fci(\U1/sub0/c11 ),
    .fco(\U1/sub0/c15 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub0/ucin_al_u149"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub0/u15_al_u153  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [17],\U1/Count_LED [15]}),
    .e({\U1/Count_LED [18],\U1/Count_LED [16]}),
    .fci(\U1/sub0/c15 ),
    .f({\U1/n8 [17],open_n5131}),
    .fco(\U1/sub0/c19 ),
    .fx({\U1/n8 [18],\U1/n8 [16]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub0/ucin_al_u149"),
    //.R_POSITION("X0Y2Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub0/u19_al_u154  (
    .a(2'b00),
    .b(2'b11),
    .c(2'b11),
    .d({\U1/Count_LED [21],\U1/Count_LED [19]}),
    .e({\U1/Count_LED [22],\U1/Count_LED [20]}),
    .fci(\U1/sub0/c19 ),
    .f({\U1/n8 [21],\U1/n8 [19]}),
    .fco(\U1/sub0/c23 ),
    .fx({\U1/n8 [22],\U1/n8 [20]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub0/ucin_al_u149"),
    //.R_POSITION("X0Y3Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub0/u23_al_u155  (
    .a(2'b11),
    .b(2'b11),
    .c(2'b11),
    .d({\U1/Count_LED [25],\U1/Count_LED [23]}),
    .e({\U1/Count_LED [26],\U1/Count_LED [24]}),
    .fci(\U1/sub0/c23 ),
    .f({\U1/n8 [25],\U1/n8 [23]}),
    .fco(\U1/sub0/c27 ),
    .fx({\U1/n8 [26],\U1/n8 [24]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub0/ucin_al_u149"),
    //.R_POSITION("X0Y3Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub0/u27_al_u156  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [29],\U1/Count_LED [27]}),
    .e({\U1/Count_LED [30],\U1/Count_LED [28]}),
    .fci(\U1/sub0/c27 ),
    .f({\U1/n8 [29],\U1/n8 [27]}),
    .fco(\U1/sub0/c31 ),
    .fx({\U1/n8 [30],\U1/n8 [28]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub0/ucin_al_u149"),
    //.R_POSITION("X0Y4Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub0/u31_al_u157  (
    .a({open_n5188,1'b0}),
    .c(2'b11),
    .d({open_n5193,\U1/Count_LED [31]}),
    .fci(\U1/sub0/c31 ),
    .f({open_n5210,\U1/n8 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub0/ucin_al_u149"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub0/u3_al_u150  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [5],\U1/Count_LED [3]}),
    .e({\U1/Count_LED [6],\U1/Count_LED [4]}),
    .fci(\U1/sub0/c3 ),
    .fco(\U1/sub0/c7 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub0/ucin_al_u149"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub0/u7_al_u151  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [9],\U1/Count_LED [7]}),
    .e({\U1/Count_LED [10],\U1/Count_LED [8]}),
    .fci(\U1/sub0/c7 ),
    .fco(\U1/sub0/c11 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub0/ucin_al_u149"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h0005),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub0/ucin_al_u149  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [1],1'b1}),
    .e({\U1/Count_LED [2],\U1/Count_LED [0]}),
    .fco(\U1/sub0/c3 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub1/ucin_al_u158"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub1/u11_al_u161  (
    .a({\U1/Count_LED [13],\U1/Count_LED [11]}),
    .b({\U1/Count_LED [14],\U1/Count_LED [12]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/sub1/c11 ),
    .fco(\U1/sub1/c15 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub1/ucin_al_u158"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub1/u15_al_u162  (
    .a({\U1/Count_LED [17],\U1/Count_LED [15]}),
    .b({\U1/Count_LED [18],\U1/Count_LED [16]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/sub1/c15 ),
    .f({\U1/n12 [17],open_n5321}),
    .fco(\U1/sub1/c19 ),
    .fx({\U1/n12 [18],\U1/n12 [16]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub1/ucin_al_u158"),
    //.R_POSITION("X0Y2Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub1/u19_al_u163  (
    .a({\U1/Count_LED [21],\U1/Count_LED [19]}),
    .b({\U1/Count_LED [22],\U1/Count_LED [20]}),
    .c(2'b11),
    .d(2'b11),
    .e(2'b10),
    .fci(\U1/sub1/c19 ),
    .f({\U1/n12 [21],\U1/n12 [19]}),
    .fco(\U1/sub1/c23 ),
    .fx({\U1/n12 [22],\U1/n12 [20]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub1/ucin_al_u158"),
    //.R_POSITION("X0Y3Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub1/u23_al_u164  (
    .a({\U1/Count_LED [25],\U1/Count_LED [23]}),
    .b({\U1/Count_LED [26],\U1/Count_LED [24]}),
    .c(2'b11),
    .d(2'b11),
    .e(2'b01),
    .fci(\U1/sub1/c23 ),
    .f({\U1/n12 [25],\U1/n12 [23]}),
    .fco(\U1/sub1/c27 ),
    .fx({\U1/n12 [26],\U1/n12 [24]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub1/ucin_al_u158"),
    //.R_POSITION("X0Y3Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub1/u27_al_u165  (
    .a({\U1/Count_LED [29],\U1/Count_LED [27]}),
    .b({\U1/Count_LED [30],\U1/Count_LED [28]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/sub1/c27 ),
    .f({\U1/n12 [29],\U1/n12 [27]}),
    .fco(\U1/sub1/c31 ),
    .fx({\U1/n12 [30],\U1/n12 [28]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub1/ucin_al_u158"),
    //.R_POSITION("X0Y4Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub1/u31_al_u166  (
    .a({open_n5378,\U1/Count_LED [31]}),
    .c(2'b11),
    .d({open_n5383,1'b0}),
    .fci(\U1/sub1/c31 ),
    .f({open_n5400,\U1/n12 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub1/ucin_al_u158"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub1/u3_al_u159  (
    .a({\U1/Count_LED [5],\U1/Count_LED [3]}),
    .b({\U1/Count_LED [6],\U1/Count_LED [4]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/sub1/c3 ),
    .fco(\U1/sub1/c7 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub1/ucin_al_u158"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub1/u7_al_u160  (
    .a({\U1/Count_LED [9],\U1/Count_LED [7]}),
    .b({\U1/Count_LED [10],\U1/Count_LED [8]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/sub1/c7 ),
    .fco(\U1/sub1/c11 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub1/ucin_al_u158"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h0005),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub1/ucin_al_u158  (
    .a({\U1/Count_LED [1],1'b0}),
    .b({\U1/Count_LED [2],\U1/Count_LED [0]}),
    .c(2'b11),
    .d(2'b01),
    .e(2'b00),
    .fco(\U1/sub1/c3 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub2/ucin_al_u167"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub2/u11_al_u170  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [13],\U1/Count_LED [11]}),
    .e({\U1/Count_LED [14],\U1/Count_LED [12]}),
    .fci(\U1/sub2/c11 ),
    .fco(\U1/sub2/c15 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub2/ucin_al_u167"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub2/u15_al_u171  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [17],\U1/Count_LED [15]}),
    .e({\U1/Count_LED [18],\U1/Count_LED [16]}),
    .fci(\U1/sub2/c15 ),
    .f({\U1/n14 [17],open_n5511}),
    .fco(\U1/sub2/c19 ),
    .fx({\U1/n14 [18],\U1/n14 [16]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub2/ucin_al_u167"),
    //.R_POSITION("X0Y2Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub2/u19_al_u172  (
    .a(2'b11),
    .b(2'b01),
    .c(2'b11),
    .d({\U1/Count_LED [21],\U1/Count_LED [19]}),
    .e({\U1/Count_LED [22],\U1/Count_LED [20]}),
    .fci(\U1/sub2/c19 ),
    .f({\U1/n14 [21],\U1/n14 [19]}),
    .fco(\U1/sub2/c23 ),
    .fx({\U1/n14 [22],\U1/n14 [20]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub2/ucin_al_u167"),
    //.R_POSITION("X0Y3Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub2/u23_al_u173  (
    .a(2'b11),
    .b(2'b01),
    .c(2'b11),
    .d({\U1/Count_LED [25],\U1/Count_LED [23]}),
    .e({\U1/Count_LED [26],\U1/Count_LED [24]}),
    .fci(\U1/sub2/c23 ),
    .f({\U1/n14 [25],\U1/n14 [23]}),
    .fco(\U1/sub2/c27 ),
    .fx({\U1/n14 [26],\U1/n14 [24]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub2/ucin_al_u167"),
    //.R_POSITION("X0Y3Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub2/u27_al_u174  (
    .a(2'b01),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [29],\U1/Count_LED [27]}),
    .e({\U1/Count_LED [30],\U1/Count_LED [28]}),
    .fci(\U1/sub2/c27 ),
    .f({\U1/n14 [29],\U1/n14 [27]}),
    .fco(\U1/sub2/c31 ),
    .fx({\U1/n14 [30],\U1/n14 [28]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub2/ucin_al_u167"),
    //.R_POSITION("X0Y4Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub2/u31_al_u175  (
    .a({open_n5568,1'b0}),
    .c(2'b11),
    .d({open_n5573,\U1/Count_LED [31]}),
    .fci(\U1/sub2/c31 ),
    .f({open_n5590,\U1/n14 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub2/ucin_al_u167"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub2/u3_al_u168  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [5],\U1/Count_LED [3]}),
    .e({\U1/Count_LED [6],\U1/Count_LED [4]}),
    .fci(\U1/sub2/c3 ),
    .fco(\U1/sub2/c7 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub2/ucin_al_u167"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub2/u7_al_u169  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [9],\U1/Count_LED [7]}),
    .e({\U1/Count_LED [10],\U1/Count_LED [8]}),
    .fci(\U1/sub2/c7 ),
    .fco(\U1/sub2/c11 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub2/ucin_al_u167"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h0005),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub2/ucin_al_u167  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [1],1'b1}),
    .e({\U1/Count_LED [2],\U1/Count_LED [0]}),
    .fco(\U1/sub2/c3 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub3/ucin_al_u176"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub3/u11_al_u179  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [13],\U1/Count_LED [11]}),
    .e({\U1/Count_LED [14],\U1/Count_LED [12]}),
    .fci(\U1/sub3/c11 ),
    .fco(\U1/sub3/c15 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub3/ucin_al_u176"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub3/u15_al_u180  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [17],\U1/Count_LED [15]}),
    .e({\U1/Count_LED [18],\U1/Count_LED [16]}),
    .fci(\U1/sub3/c15 ),
    .f({\U1/n16 [17],open_n5701}),
    .fco(\U1/sub3/c19 ),
    .fx({\U1/n16 [18],\U1/n16 [16]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub3/ucin_al_u176"),
    //.R_POSITION("X0Y2Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub3/u19_al_u181  (
    .a(2'b11),
    .b(2'b10),
    .c(2'b11),
    .d({\U1/Count_LED [21],\U1/Count_LED [19]}),
    .e({\U1/Count_LED [22],\U1/Count_LED [20]}),
    .fci(\U1/sub3/c19 ),
    .f({\U1/n16 [21],\U1/n16 [19]}),
    .fco(\U1/sub3/c23 ),
    .fx({\U1/n16 [22],\U1/n16 [20]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub3/ucin_al_u176"),
    //.R_POSITION("X0Y3Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub3/u23_al_u182  (
    .a(2'b11),
    .b(2'b01),
    .c(2'b11),
    .d({\U1/Count_LED [25],\U1/Count_LED [23]}),
    .e({\U1/Count_LED [26],\U1/Count_LED [24]}),
    .fci(\U1/sub3/c23 ),
    .f({\U1/n16 [25],\U1/n16 [23]}),
    .fco(\U1/sub3/c27 ),
    .fx({\U1/n16 [26],\U1/n16 [24]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub3/ucin_al_u176"),
    //.R_POSITION("X0Y3Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub3/u27_al_u183  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [29],\U1/Count_LED [27]}),
    .e({\U1/Count_LED [30],\U1/Count_LED [28]}),
    .fci(\U1/sub3/c27 ),
    .f({\U1/n16 [29],\U1/n16 [27]}),
    .fco(\U1/sub3/c31 ),
    .fx({\U1/n16 [30],\U1/n16 [28]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub3/ucin_al_u176"),
    //.R_POSITION("X0Y4Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub3/u31_al_u184  (
    .a({open_n5758,1'b0}),
    .c(2'b11),
    .d({open_n5763,\U1/Count_LED [31]}),
    .fci(\U1/sub3/c31 ),
    .f({open_n5780,\U1/n16 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub3/ucin_al_u176"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub3/u3_al_u177  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [5],\U1/Count_LED [3]}),
    .e({\U1/Count_LED [6],\U1/Count_LED [4]}),
    .fci(\U1/sub3/c3 ),
    .fco(\U1/sub3/c7 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub3/ucin_al_u176"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub3/u7_al_u178  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [9],\U1/Count_LED [7]}),
    .e({\U1/Count_LED [10],\U1/Count_LED [8]}),
    .fci(\U1/sub3/c7 ),
    .fco(\U1/sub3/c11 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub3/ucin_al_u176"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h0005),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub3/ucin_al_u176  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [1],1'b1}),
    .e({\U1/Count_LED [2],\U1/Count_LED [0]}),
    .fco(\U1/sub3/c3 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub4/ucin_al_u185"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub4/u11_al_u188  (
    .a({\U1/Count_LED [13],\U1/Count_LED [11]}),
    .b({\U1/Count_LED [14],\U1/Count_LED [12]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/sub4/c11 ),
    .fco(\U1/sub4/c15 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub4/ucin_al_u185"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub4/u15_al_u189  (
    .a({\U1/Count_LED [17],\U1/Count_LED [15]}),
    .b({\U1/Count_LED [18],\U1/Count_LED [16]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/sub4/c15 ),
    .f({\U1/n17 [17],open_n5891}),
    .fco(\U1/sub4/c19 ),
    .fx({\U1/n17 [18],\U1/n17 [16]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub4/ucin_al_u185"),
    //.R_POSITION("X0Y2Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub4/u19_al_u190  (
    .a({\U1/Count_LED [21],\U1/Count_LED [19]}),
    .b({\U1/Count_LED [22],\U1/Count_LED [20]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b11),
    .fci(\U1/sub4/c19 ),
    .f({\U1/n17 [21],\U1/n17 [19]}),
    .fco(\U1/sub4/c23 ),
    .fx({\U1/n17 [22],\U1/n17 [20]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub4/ucin_al_u185"),
    //.R_POSITION("X0Y3Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub4/u23_al_u191  (
    .a({\U1/Count_LED [25],\U1/Count_LED [23]}),
    .b({\U1/Count_LED [26],\U1/Count_LED [24]}),
    .c(2'b11),
    .d(2'b11),
    .e(2'b11),
    .fci(\U1/sub4/c23 ),
    .f({\U1/n17 [25],\U1/n17 [23]}),
    .fco(\U1/sub4/c27 ),
    .fx({\U1/n17 [26],\U1/n17 [24]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub4/ucin_al_u185"),
    //.R_POSITION("X0Y3Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub4/u27_al_u192  (
    .a({\U1/Count_LED [29],\U1/Count_LED [27]}),
    .b({\U1/Count_LED [30],\U1/Count_LED [28]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/sub4/c27 ),
    .f({\U1/n17 [29],\U1/n17 [27]}),
    .fco(\U1/sub4/c31 ),
    .fx({\U1/n17 [30],\U1/n17 [28]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub4/ucin_al_u185"),
    //.R_POSITION("X0Y4Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub4/u31_al_u193  (
    .a({open_n5948,\U1/Count_LED [31]}),
    .c(2'b11),
    .d({open_n5953,1'b0}),
    .fci(\U1/sub4/c31 ),
    .f({open_n5970,\U1/n17 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub4/ucin_al_u185"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub4/u3_al_u186  (
    .a({\U1/Count_LED [5],\U1/Count_LED [3]}),
    .b({\U1/Count_LED [6],\U1/Count_LED [4]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/sub4/c3 ),
    .fco(\U1/sub4/c7 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub4/ucin_al_u185"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub4/u7_al_u187  (
    .a({\U1/Count_LED [9],\U1/Count_LED [7]}),
    .b({\U1/Count_LED [10],\U1/Count_LED [8]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/sub4/c7 ),
    .fco(\U1/sub4/c11 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub4/ucin_al_u185"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h0005),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/sub4/ucin_al_u185  (
    .a({\U1/Count_LED [1],1'b0}),
    .b({\U1/Count_LED [2],\U1/Count_LED [0]}),
    .c(2'b11),
    .d(2'b01),
    .e(2'b00),
    .fco(\U1/sub4/c3 ));
  EG_PHY_PAD #(
    //.LOCATION("K14"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u0 (
    .ipad(CLK_24M),
    .di(CLK_24M_pad));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(11)
  EG_PHY_PAD #(
    //.LOCATION("C15"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1 (
    .do({open_n6061,open_n6062,open_n6063,1'b0}),
    .opad(GPIO));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(15)
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u100|_al_u99  (
    .a({\U1/n11 ,\U1/n11 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c(\U1/n12 [29:28]),
    .d(\U1/n14 [29:28]),
    .f(\U1/PWM_GData [29:28]));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u101|_al_u98  (
    .a({\U1/n11 ,\U1/n11 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n12 [30],\U1/n12 [27]}),
    .d({\U1/n14 [30],\U1/n14 [27]}),
    .f({\U1/PWM_GData [30],\U1/PWM_GData [27]}));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u102|_al_u97  (
    .a({\U1/n11 ,\U1/n11 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n12 [31],\U1/n12 [26]}),
    .d({\U1/n14 [31],\U1/n14 [26]}),
    .f({\U1/PWM_GData [31],\U1/PWM_GData [26]}));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u103|_al_u118  (
    .a({\U1/n4 ,\U1/n4 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n16 [16],\U1/n16 [31]}),
    .d({\U1/n17 [16],\U1/n17 [31]}),
    .f({\U1/PWM_BData [16],\U1/PWM_BData [31]}));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u104|_al_u117  (
    .a({\U1/n4 ,\U1/n4 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n16 [17],\U1/n16 [30]}),
    .d({\U1/n17 [17],\U1/n17 [30]}),
    .f({\U1/PWM_BData [17],\U1/PWM_BData [30]}));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u105|_al_u116  (
    .a({\U1/n4 ,\U1/n4 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n16 [18],\U1/n16 [29]}),
    .d({\U1/n17 [18],\U1/n17 [29]}),
    .f({\U1/PWM_BData [18],\U1/PWM_BData [29]}));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u106|_al_u115  (
    .a({\U1/n4 ,\U1/n4 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n16 [19],\U1/n16 [28]}),
    .d({\U1/n17 [19],\U1/n17 [28]}),
    .f({\U1/PWM_BData [19],\U1/PWM_BData [28]}));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u107|_al_u114  (
    .a({\U1/n4 ,\U1/n4 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n16 [20],\U1/n16 [27]}),
    .d({\U1/n17 [20],\U1/n17 [27]}),
    .f({\U1/PWM_BData [20],\U1/PWM_BData [27]}));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u108|_al_u113  (
    .a({\U1/n4 ,\U1/n4 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n16 [21],\U1/n16 [26]}),
    .d({\U1/n17 [21],\U1/n17 [26]}),
    .f({\U1/PWM_BData [21],\U1/PWM_BData [26]}));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u109|_al_u112  (
    .a({\U1/n4 ,\U1/n4 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n16 [22],\U1/n16 [25]}),
    .d({\U1/n17 [22],\U1/n17 [25]}),
    .f({\U1/PWM_BData [22],\U1/PWM_BData [25]}));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u110|_al_u111  (
    .a({\U1/n4 ,\U1/n4 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n16 [23],\U1/n16 [24]}),
    .d({\U1/n17 [23],\U1/n17 [24]}),
    .f({\U1/PWM_BData [23],\U1/PWM_BData [24]}));
  EG_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(~D)"),
    //.LUTG1("(C*D)"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b0000000011111111),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u119|_al_u139  (
    .c({\U1/n6 ,open_n6345}),
    .d({\U1/n5 ,nRST_pad}),
    .f({\U1/n7 ,\U1/B_PWM/n0 }));
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u120|U1/reg0_b31  (
    .a({\U1/n7 ,open_n6370}),
    .b({\U1/n4 ,open_n6371}),
    .c({\U1/Count_LED [31],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [31],\U1/n2 [31]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [31],open_n6389}),
    .q({open_n6393,\U1/Count_LED [31]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u121|U1/reg0_b30  (
    .a({\U1/n7 ,open_n6394}),
    .b({\U1/n4 ,open_n6395}),
    .c({\U1/Count_LED [30],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [30],\U1/n2 [30]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [30],open_n6413}),
    .q({open_n6417,\U1/Count_LED [30]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u122|U1/reg0_b29  (
    .a({\U1/n7 ,open_n6418}),
    .b({\U1/n4 ,open_n6419}),
    .c({\U1/Count_LED [29],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [29],\U1/n2 [29]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [29],open_n6437}),
    .q({open_n6441,\U1/Count_LED [29]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u123|U1/reg0_b28  (
    .a({\U1/n7 ,open_n6442}),
    .b({\U1/n4 ,open_n6443}),
    .c({\U1/Count_LED [28],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [28],\U1/n2 [28]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [28],open_n6461}),
    .q({open_n6465,\U1/Count_LED [28]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u124|U1/reg0_b27  (
    .a({\U1/n7 ,open_n6466}),
    .b({\U1/n4 ,open_n6467}),
    .c({\U1/Count_LED [27],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [27],\U1/n2 [27]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [27],open_n6485}),
    .q({open_n6489,\U1/Count_LED [27]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u125|U1/reg0_b26  (
    .a({\U1/n7 ,open_n6490}),
    .b({\U1/n4 ,open_n6491}),
    .c({\U1/Count_LED [26],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [26],\U1/n2 [26]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [26],open_n6509}),
    .q({open_n6513,\U1/Count_LED [26]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u126|U1/reg0_b25  (
    .a({\U1/n7 ,open_n6514}),
    .b({\U1/n4 ,open_n6515}),
    .c({\U1/Count_LED [25],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [25],\U1/n2 [25]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [25],open_n6533}),
    .q({open_n6537,\U1/Count_LED [25]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u127|U1/reg0_b24  (
    .a({\U1/n7 ,open_n6538}),
    .b({\U1/n4 ,open_n6539}),
    .c({\U1/Count_LED [24],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [24],\U1/n2 [24]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [24],open_n6557}),
    .q({open_n6561,\U1/Count_LED [24]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u128|U1/reg0_b23  (
    .a({\U1/n7 ,open_n6562}),
    .b({\U1/n4 ,open_n6563}),
    .c({\U1/Count_LED [23],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [23],\U1/n2 [23]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [23],open_n6581}),
    .q({open_n6585,\U1/Count_LED [23]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u129|U1/reg0_b22  (
    .a({\U1/n7 ,open_n6586}),
    .b({\U1/n4 ,open_n6587}),
    .c({\U1/Count_LED [22],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [22],\U1/n2 [22]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [22],open_n6605}),
    .q({open_n6609,\U1/Count_LED [22]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u130|U1/reg0_b21  (
    .a({\U1/n7 ,open_n6610}),
    .b({\U1/n4 ,open_n6611}),
    .c({\U1/Count_LED [21],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [21],\U1/n2 [21]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [21],open_n6629}),
    .q({open_n6633,\U1/Count_LED [21]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u131|U1/reg0_b20  (
    .a({\U1/n7 ,open_n6634}),
    .b({\U1/n4 ,open_n6635}),
    .c({\U1/Count_LED [20],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [20],\U1/n2 [20]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [20],open_n6653}),
    .q({open_n6657,\U1/Count_LED [20]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u132|U1/reg0_b19  (
    .a({\U1/n7 ,open_n6658}),
    .b({\U1/n4 ,open_n6659}),
    .c({\U1/Count_LED [19],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [19],\U1/n2 [19]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [19],open_n6677}),
    .q({open_n6681,\U1/Count_LED [19]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u133|U1/reg0_b18  (
    .a({\U1/n7 ,open_n6682}),
    .b({\U1/n4 ,open_n6683}),
    .c({\U1/Count_LED [18],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [18],\U1/n2 [18]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [18],open_n6701}),
    .q({open_n6705,\U1/Count_LED [18]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u134|U1/reg0_b17  (
    .a({\U1/n7 ,open_n6706}),
    .b({\U1/n4 ,open_n6707}),
    .c({\U1/Count_LED [17],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [17],\U1/n2 [17]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [17],open_n6725}),
    .q({open_n6729,\U1/Count_LED [17]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u135|U1/reg0_b16  (
    .a({\U1/n7 ,open_n6730}),
    .b({\U1/n4 ,open_n6731}),
    .c({\U1/Count_LED [16],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [16],\U1/n2 [16]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [16],open_n6749}),
    .q({open_n6753,\U1/Count_LED [16]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTG0("(~D)"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTG0(16'b0000000011111111),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    _al_u136 (
    .d({open_n6762,\U1/B_PWM/n4 }),
    .f({open_n6780,LEDs_pad[2]}));
  EG_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("(~D)"),
    //.LUTG0("(C*D)"),
    //.LUTG1("(~D)"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b0000000011111111),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b0000000011111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u137|_al_u86  (
    .c({open_n6790,\U1/n10 }),
    .d({\U1/G_PWM/n4 ,\U1/n6 }),
    .f({LEDs_pad[1],\U1/n11 }));
  EG_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTG0("(~D)"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTG0(16'b0000000011111111),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    _al_u138 (
    .d({open_n6823,\U1/R_PWM/n4 }),
    .f({open_n6841,LEDs_pad[0]}));
  EG_PHY_PAD #(
    //.LOCATION("R3"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u2 (
    .do({open_n6848,open_n6849,open_n6850,LEDs_pad[2]}),
    .opad(LEDs[2]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(14)
  EG_PHY_PAD #(
    //.LOCATION("P13"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u3 (
    .do({open_n6865,open_n6866,open_n6867,LEDs_pad[1]}),
    .opad(LEDs[1]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(14)
  EG_PHY_PAD #(
    //.LOCATION("J14"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u4 (
    .do({open_n6882,open_n6883,open_n6884,LEDs_pad[0]}),
    .opad(LEDs[0]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(14)
  EG_PHY_PAD #(
    //.LOCATION("K16"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u5 (
    .ipad(nRST),
    .di(nRST_pad));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(12)
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u87|_al_u96  (
    .a({\U1/n11 ,\U1/n11 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n12 [16],\U1/n12 [25]}),
    .d({\U1/n14 [16],\U1/n14 [25]}),
    .f({\U1/PWM_GData [16],\U1/PWM_GData [25]}));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u88|_al_u95  (
    .a({\U1/n11 ,\U1/n11 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n12 [17],\U1/n12 [24]}),
    .d({\U1/n14 [17],\U1/n14 [24]}),
    .f({\U1/PWM_GData [17],\U1/PWM_GData [24]}));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u89|_al_u94  (
    .a({\U1/n11 ,\U1/n11 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n12 [18],\U1/n12 [23]}),
    .d({\U1/n14 [18],\U1/n14 [23]}),
    .f({\U1/PWM_GData [18],\U1/PWM_GData [23]}));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u90|_al_u93  (
    .a({\U1/n11 ,\U1/n11 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n12 [19],\U1/n12 [22]}),
    .d({\U1/n14 [19],\U1/n14 [22]}),
    .f({\U1/PWM_GData [19],\U1/PWM_GData [22]}));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u91|_al_u92  (
    .a({\U1/n11 ,\U1/n11 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n12 [20],\U1/n12 [21]}),
    .d({\U1/n14 [20],\U1/n14 [21]}),
    .f({\U1/PWM_GData [20],\U1/PWM_GData [21]}));
  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();

endmodule 

