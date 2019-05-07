// Verilog netlist created by TD v4.4.433
// Tue May  7 16:09:34 2019

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

  wire [15:0] \U1/B_PWM/PWMCount ;  // Source/PWM.v(15)
  wire [15:0] \U1/B_PWM/n2 ;
  wire [15:0] \U1/B_PWM/n3 ;
  wire [31:0] \U1/Count_LED ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(9)
  wire [15:0] \U1/G_PWM/PWMCount ;  // Source/PWM.v(15)
  wire [15:0] \U1/G_PWM/n2 ;
  wire [15:0] \U1/G_PWM/n3 ;
  wire [31:0] \U1/PWM_BData ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(25)
  wire [31:0] \U1/PWM_GData ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(24)
  wire [31:0] \U1/PWM_RData ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(23)
  wire [15:0] \U1/R_PWM/PWMCount ;  // Source/PWM.v(15)
  wire [15:0] \U1/R_PWM/n2 ;
  wire [15:0] \U1/R_PWM/n3 ;
  wire [31:0] \U1/n12 ;
  wire [31:0] \U1/n14 ;
  wire [31:0] \U1/n15 ;
  wire [31:0] \U1/n16 ;
  wire [31:0] \U1/n17 ;
  wire [31:0] \U1/n18 ;
  wire [31:0] \U1/n2 ;
  wire [31:0] \U1/n3 ;
  wire [31:0] \U1/n8 ;
  wire [31:0] \U1/n9 ;
  wire CLK_50M;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(18)
  wire \Pll/clk0_buf ;  // al_ip/SysPll.v(39)
  wire \Pll/clk0_out ;  // al_ip/SysPll.v(34)
  wire \U1/B_PWM/n0 ;
  wire \U1/B_PWM/n1 ;
  wire \U1/B_PWM/n4 ;
  wire \U1/G_PWM/n1 ;
  wire \U1/G_PWM/n4 ;
  wire \U1/R_PWM/n1 ;
  wire \U1/R_PWM/n4 ;
  wire \U1/n1 ;
  wire \U1/n10 ;
  wire \U1/n11 ;
  wire \U1/n13 ;
  wire \U1/n4 ;
  wire \U1/n5 ;
  wire \U1/n6 ;
  wire \U1/n7 ;

  assign GPIO = 1'b0;
  EG_LOGIC_BUFG \Pll/bufg_feedback  (
    .i(\Pll/clk0_buf ),
    .o(\Pll/clk0_out ));  // al_ip/SysPll.v(41)
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
    .refclk(CLK_24M),
    .reset(\U1/B_PWM/n0 ),
    .stdby(1'b0),
    .clkc({open_n0,open_n1,open_n2,CLK_50M,\Pll/clk0_buf }));  // al_ip/SysPll.v(76)
  add_pu16_pu16_o16 \U1/B_PWM/add0  (
    .i0(\U1/B_PWM/PWMCount ),
    .i1(16'b0000000000000001),
    .o(\U1/B_PWM/n2 ));  // Source/PWM.v(25)
  lt_u16_u16 \U1/B_PWM/lt0  (
    .ci(1'b1),
    .i0(16'b0000001111101000),
    .i1(\U1/B_PWM/PWMCount ),
    .o(\U1/B_PWM/n1 ));  // Source/PWM.v(21)
  lt_u16_u16 \U1/B_PWM/lt1  (
    .ci(1'b1),
    .i0(\U1/B_PWM/PWMCount ),
    .i1(\U1/PWM_BData [31:16]),
    .o(\U1/B_PWM/n4 ));  // Source/PWM.v(29)
  binary_mux_s1_w1 \U1/B_PWM/mux0_b0  (
    .i0(\U1/B_PWM/n2 [0]),
    .i1(1'b0),
    .sel(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [0]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/B_PWM/mux0_b1  (
    .i0(\U1/B_PWM/n2 [1]),
    .i1(1'b0),
    .sel(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [1]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/B_PWM/mux0_b10  (
    .i0(\U1/B_PWM/n2 [10]),
    .i1(1'b0),
    .sel(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [10]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/B_PWM/mux0_b11  (
    .i0(\U1/B_PWM/n2 [11]),
    .i1(1'b0),
    .sel(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [11]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/B_PWM/mux0_b12  (
    .i0(\U1/B_PWM/n2 [12]),
    .i1(1'b0),
    .sel(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [12]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/B_PWM/mux0_b13  (
    .i0(\U1/B_PWM/n2 [13]),
    .i1(1'b0),
    .sel(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [13]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/B_PWM/mux0_b14  (
    .i0(\U1/B_PWM/n2 [14]),
    .i1(1'b0),
    .sel(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [14]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/B_PWM/mux0_b15  (
    .i0(\U1/B_PWM/n2 [15]),
    .i1(1'b0),
    .sel(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [15]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/B_PWM/mux0_b2  (
    .i0(\U1/B_PWM/n2 [2]),
    .i1(1'b0),
    .sel(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [2]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/B_PWM/mux0_b3  (
    .i0(\U1/B_PWM/n2 [3]),
    .i1(1'b0),
    .sel(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [3]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/B_PWM/mux0_b4  (
    .i0(\U1/B_PWM/n2 [4]),
    .i1(1'b0),
    .sel(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [4]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/B_PWM/mux0_b5  (
    .i0(\U1/B_PWM/n2 [5]),
    .i1(1'b0),
    .sel(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [5]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/B_PWM/mux0_b6  (
    .i0(\U1/B_PWM/n2 [6]),
    .i1(1'b0),
    .sel(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [6]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/B_PWM/mux0_b7  (
    .i0(\U1/B_PWM/n2 [7]),
    .i1(1'b0),
    .sel(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [7]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/B_PWM/mux0_b8  (
    .i0(\U1/B_PWM/n2 [8]),
    .i1(1'b0),
    .sel(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [8]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/B_PWM/mux0_b9  (
    .i0(\U1/B_PWM/n2 [9]),
    .i1(1'b0),
    .sel(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [9]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b0  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [0]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [0]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b1  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [1]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [1]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b10  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [10]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [10]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b11  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [11]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [11]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b12  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [12]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [12]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b13  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [13]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [13]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b14  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [14]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [14]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b15  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [15]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [15]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b2  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [2]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [2]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b3  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [3]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [3]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b4  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [4]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [4]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b5  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [5]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [5]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b6  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [6]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [6]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b7  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [7]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [7]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b8  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [8]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [8]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b9  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [9]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [9]));  // Source/PWM.v(26)
  not \U1/B_PWM/u2  (\U1/B_PWM/n0 , nRST);  // Source/PWM.v(18)
  not \U1/B_PWM/u3  (LEDs[2], \U1/B_PWM/n4 );  // Source/PWM.v(29)
  add_pu16_pu16_o16 \U1/G_PWM/add0  (
    .i0(\U1/G_PWM/PWMCount ),
    .i1(16'b0000000000000001),
    .o(\U1/G_PWM/n2 ));  // Source/PWM.v(25)
  lt_u16_u16 \U1/G_PWM/lt0  (
    .ci(1'b1),
    .i0(16'b0000001111101000),
    .i1(\U1/G_PWM/PWMCount ),
    .o(\U1/G_PWM/n1 ));  // Source/PWM.v(21)
  lt_u16_u16 \U1/G_PWM/lt1  (
    .ci(1'b1),
    .i0(\U1/G_PWM/PWMCount ),
    .i1(\U1/PWM_GData [31:16]),
    .o(\U1/G_PWM/n4 ));  // Source/PWM.v(29)
  binary_mux_s1_w1 \U1/G_PWM/mux0_b0  (
    .i0(\U1/G_PWM/n2 [0]),
    .i1(1'b0),
    .sel(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [0]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/G_PWM/mux0_b1  (
    .i0(\U1/G_PWM/n2 [1]),
    .i1(1'b0),
    .sel(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [1]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/G_PWM/mux0_b10  (
    .i0(\U1/G_PWM/n2 [10]),
    .i1(1'b0),
    .sel(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [10]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/G_PWM/mux0_b11  (
    .i0(\U1/G_PWM/n2 [11]),
    .i1(1'b0),
    .sel(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [11]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/G_PWM/mux0_b12  (
    .i0(\U1/G_PWM/n2 [12]),
    .i1(1'b0),
    .sel(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [12]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/G_PWM/mux0_b13  (
    .i0(\U1/G_PWM/n2 [13]),
    .i1(1'b0),
    .sel(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [13]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/G_PWM/mux0_b14  (
    .i0(\U1/G_PWM/n2 [14]),
    .i1(1'b0),
    .sel(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [14]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/G_PWM/mux0_b15  (
    .i0(\U1/G_PWM/n2 [15]),
    .i1(1'b0),
    .sel(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [15]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/G_PWM/mux0_b2  (
    .i0(\U1/G_PWM/n2 [2]),
    .i1(1'b0),
    .sel(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [2]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/G_PWM/mux0_b3  (
    .i0(\U1/G_PWM/n2 [3]),
    .i1(1'b0),
    .sel(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [3]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/G_PWM/mux0_b4  (
    .i0(\U1/G_PWM/n2 [4]),
    .i1(1'b0),
    .sel(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [4]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/G_PWM/mux0_b5  (
    .i0(\U1/G_PWM/n2 [5]),
    .i1(1'b0),
    .sel(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [5]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/G_PWM/mux0_b6  (
    .i0(\U1/G_PWM/n2 [6]),
    .i1(1'b0),
    .sel(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [6]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/G_PWM/mux0_b7  (
    .i0(\U1/G_PWM/n2 [7]),
    .i1(1'b0),
    .sel(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [7]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/G_PWM/mux0_b8  (
    .i0(\U1/G_PWM/n2 [8]),
    .i1(1'b0),
    .sel(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [8]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/G_PWM/mux0_b9  (
    .i0(\U1/G_PWM/n2 [9]),
    .i1(1'b0),
    .sel(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [9]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b0  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [0]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [0]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b1  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [1]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [1]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b10  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [10]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [10]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b11  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [11]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [11]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b12  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [12]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [12]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b13  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [13]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [13]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b14  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [14]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [14]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b15  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [15]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [15]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b2  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [2]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [2]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b3  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [3]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [3]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b4  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [4]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [4]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b5  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [5]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [5]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b6  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [6]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [6]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b7  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [7]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [7]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b8  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [8]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [8]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b9  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [9]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [9]));  // Source/PWM.v(26)
  not \U1/G_PWM/u3  (LEDs[1], \U1/G_PWM/n4 );  // Source/PWM.v(29)
  add_pu16_pu16_o16 \U1/R_PWM/add0  (
    .i0(\U1/R_PWM/PWMCount ),
    .i1(16'b0000000000000001),
    .o(\U1/R_PWM/n2 ));  // Source/PWM.v(25)
  lt_u16_u16 \U1/R_PWM/lt0  (
    .ci(1'b1),
    .i0(16'b0000001111101000),
    .i1(\U1/R_PWM/PWMCount ),
    .o(\U1/R_PWM/n1 ));  // Source/PWM.v(21)
  lt_u16_u16 \U1/R_PWM/lt1  (
    .ci(1'b1),
    .i0(\U1/R_PWM/PWMCount ),
    .i1(\U1/PWM_RData [31:16]),
    .o(\U1/R_PWM/n4 ));  // Source/PWM.v(29)
  binary_mux_s1_w1 \U1/R_PWM/mux0_b0  (
    .i0(\U1/R_PWM/n2 [0]),
    .i1(1'b0),
    .sel(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [0]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/R_PWM/mux0_b1  (
    .i0(\U1/R_PWM/n2 [1]),
    .i1(1'b0),
    .sel(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [1]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/R_PWM/mux0_b10  (
    .i0(\U1/R_PWM/n2 [10]),
    .i1(1'b0),
    .sel(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [10]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/R_PWM/mux0_b11  (
    .i0(\U1/R_PWM/n2 [11]),
    .i1(1'b0),
    .sel(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [11]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/R_PWM/mux0_b12  (
    .i0(\U1/R_PWM/n2 [12]),
    .i1(1'b0),
    .sel(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [12]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/R_PWM/mux0_b13  (
    .i0(\U1/R_PWM/n2 [13]),
    .i1(1'b0),
    .sel(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [13]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/R_PWM/mux0_b14  (
    .i0(\U1/R_PWM/n2 [14]),
    .i1(1'b0),
    .sel(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [14]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/R_PWM/mux0_b15  (
    .i0(\U1/R_PWM/n2 [15]),
    .i1(1'b0),
    .sel(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [15]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/R_PWM/mux0_b2  (
    .i0(\U1/R_PWM/n2 [2]),
    .i1(1'b0),
    .sel(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [2]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/R_PWM/mux0_b3  (
    .i0(\U1/R_PWM/n2 [3]),
    .i1(1'b0),
    .sel(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [3]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/R_PWM/mux0_b4  (
    .i0(\U1/R_PWM/n2 [4]),
    .i1(1'b0),
    .sel(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [4]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/R_PWM/mux0_b5  (
    .i0(\U1/R_PWM/n2 [5]),
    .i1(1'b0),
    .sel(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [5]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/R_PWM/mux0_b6  (
    .i0(\U1/R_PWM/n2 [6]),
    .i1(1'b0),
    .sel(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [6]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/R_PWM/mux0_b7  (
    .i0(\U1/R_PWM/n2 [7]),
    .i1(1'b0),
    .sel(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [7]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/R_PWM/mux0_b8  (
    .i0(\U1/R_PWM/n2 [8]),
    .i1(1'b0),
    .sel(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [8]));  // Source/PWM.v(26)
  binary_mux_s1_w1 \U1/R_PWM/mux0_b9  (
    .i0(\U1/R_PWM/n2 [9]),
    .i1(1'b0),
    .sel(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [9]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b0  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [0]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [0]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b1  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [1]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [1]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b10  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [10]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [10]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b11  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [11]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [11]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b12  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [12]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [12]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b13  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [13]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [13]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b14  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [14]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [14]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b15  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [15]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [15]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b2  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [2]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [2]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b3  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [3]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [3]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b4  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [4]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [4]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b5  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [5]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [5]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b6  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [6]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [6]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b7  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [7]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [7]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b8  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [8]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [8]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b9  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [9]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [9]));  // Source/PWM.v(26)
  not \U1/R_PWM/u3  (LEDs[0], \U1/R_PWM/n4 );  // Source/PWM.v(29)
  add_pu32_pu32_o32 \U1/add0  (
    .i0(\U1/Count_LED ),
    .i1(32'b00000000000000000000000000000001),
    .o(\U1/n2 ));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(19)
  lt_u32_u32 \U1/lt0  (
    .ci(1'b1),
    .i0(32'b00001011101110000000000000000000),
    .i1(\U1/Count_LED ),
    .o(\U1/n1 ));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(15)
  lt_u32_u32 \U1/lt1  (
    .ci(1'b1),
    .i0(\U1/Count_LED ),
    .i1(32'b00000011111010000000000000000000),
    .o(\U1/n4 ));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(27)
  lt_u32_u32 \U1/lt2  (
    .ci(1'b0),
    .i0(32'b00000011111010000000000000000000),
    .i1(\U1/Count_LED ),
    .o(\U1/n5 ));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  lt_u32_u32 \U1/lt3  (
    .ci(1'b1),
    .i0(\U1/Count_LED ),
    .i1(32'b00000111110100000000000000000000),
    .o(\U1/n6 ));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  lt_u32_u32 \U1/lt4  (
    .ci(1'b1),
    .i0(32'b00000011111010000000000000000000),
    .i1(\U1/Count_LED ),
    .o(\U1/n10 ));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(30)
  lt_u32_u32 \U1/lt5  (
    .ci(1'b0),
    .i0(32'b00000111110100000000000000000000),
    .i1(\U1/Count_LED ),
    .o(\U1/n13 ));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux0_b0  (
    .i0(\U1/n2 [0]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [0]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b1  (
    .i0(\U1/n2 [1]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [1]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b10  (
    .i0(\U1/n2 [10]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [10]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b11  (
    .i0(\U1/n2 [11]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [11]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b12  (
    .i0(\U1/n2 [12]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [12]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b13  (
    .i0(\U1/n2 [13]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [13]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b14  (
    .i0(\U1/n2 [14]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [14]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b15  (
    .i0(\U1/n2 [15]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [15]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b16  (
    .i0(\U1/n2 [16]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [16]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b17  (
    .i0(\U1/n2 [17]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [17]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b18  (
    .i0(\U1/n2 [18]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [18]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b19  (
    .i0(\U1/n2 [19]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [19]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b2  (
    .i0(\U1/n2 [2]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [2]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b20  (
    .i0(\U1/n2 [20]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [20]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b21  (
    .i0(\U1/n2 [21]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [21]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b22  (
    .i0(\U1/n2 [22]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [22]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b23  (
    .i0(\U1/n2 [23]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [23]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b24  (
    .i0(\U1/n2 [24]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [24]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b25  (
    .i0(\U1/n2 [25]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [25]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b26  (
    .i0(\U1/n2 [26]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [26]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b27  (
    .i0(\U1/n2 [27]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [27]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b28  (
    .i0(\U1/n2 [28]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [28]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b29  (
    .i0(\U1/n2 [29]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [29]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b3  (
    .i0(\U1/n2 [3]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [3]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b30  (
    .i0(\U1/n2 [30]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [30]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b31  (
    .i0(\U1/n2 [31]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [31]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b4  (
    .i0(\U1/n2 [4]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [4]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b5  (
    .i0(\U1/n2 [5]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [5]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b6  (
    .i0(\U1/n2 [6]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [6]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b7  (
    .i0(\U1/n2 [7]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [7]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b8  (
    .i0(\U1/n2 [8]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [8]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux0_b9  (
    .i0(\U1/n2 [9]),
    .i1(1'b0),
    .sel(\U1/n1 ),
    .o(\U1/n3 [9]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w1 \U1/mux1_b16  (
    .i0(1'b0),
    .i1(\U1/n8 [16]),
    .sel(\U1/n7 ),
    .o(\U1/n9 [16]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux1_b17  (
    .i0(1'b0),
    .i1(\U1/n8 [17]),
    .sel(\U1/n7 ),
    .o(\U1/n9 [17]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux1_b18  (
    .i0(1'b0),
    .i1(\U1/n8 [18]),
    .sel(\U1/n7 ),
    .o(\U1/n9 [18]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux1_b19  (
    .i0(1'b0),
    .i1(\U1/n8 [19]),
    .sel(\U1/n7 ),
    .o(\U1/n9 [19]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux1_b20  (
    .i0(1'b0),
    .i1(\U1/n8 [20]),
    .sel(\U1/n7 ),
    .o(\U1/n9 [20]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux1_b21  (
    .i0(1'b0),
    .i1(\U1/n8 [21]),
    .sel(\U1/n7 ),
    .o(\U1/n9 [21]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux1_b22  (
    .i0(1'b0),
    .i1(\U1/n8 [22]),
    .sel(\U1/n7 ),
    .o(\U1/n9 [22]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux1_b23  (
    .i0(1'b0),
    .i1(\U1/n8 [23]),
    .sel(\U1/n7 ),
    .o(\U1/n9 [23]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux1_b24  (
    .i0(1'b0),
    .i1(\U1/n8 [24]),
    .sel(\U1/n7 ),
    .o(\U1/n9 [24]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux1_b25  (
    .i0(1'b0),
    .i1(\U1/n8 [25]),
    .sel(\U1/n7 ),
    .o(\U1/n9 [25]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux1_b26  (
    .i0(1'b0),
    .i1(\U1/n8 [26]),
    .sel(\U1/n7 ),
    .o(\U1/n9 [26]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux1_b27  (
    .i0(1'b0),
    .i1(\U1/n8 [27]),
    .sel(\U1/n7 ),
    .o(\U1/n9 [27]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux1_b28  (
    .i0(1'b0),
    .i1(\U1/n8 [28]),
    .sel(\U1/n7 ),
    .o(\U1/n9 [28]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux1_b29  (
    .i0(1'b0),
    .i1(\U1/n8 [29]),
    .sel(\U1/n7 ),
    .o(\U1/n9 [29]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux1_b30  (
    .i0(1'b0),
    .i1(\U1/n8 [30]),
    .sel(\U1/n7 ),
    .o(\U1/n9 [30]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux1_b31  (
    .i0(1'b0),
    .i1(\U1/n8 [31]),
    .sel(\U1/n7 ),
    .o(\U1/n9 [31]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux2_b16  (
    .i0(\U1/n9 [16]),
    .i1(\U1/Count_LED [16]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_RData [16]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux2_b17  (
    .i0(\U1/n9 [17]),
    .i1(\U1/Count_LED [17]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_RData [17]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux2_b18  (
    .i0(\U1/n9 [18]),
    .i1(\U1/Count_LED [18]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_RData [18]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux2_b19  (
    .i0(\U1/n9 [19]),
    .i1(\U1/Count_LED [19]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_RData [19]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux2_b20  (
    .i0(\U1/n9 [20]),
    .i1(\U1/Count_LED [20]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_RData [20]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux2_b21  (
    .i0(\U1/n9 [21]),
    .i1(\U1/Count_LED [21]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_RData [21]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux2_b22  (
    .i0(\U1/n9 [22]),
    .i1(\U1/Count_LED [22]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_RData [22]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux2_b23  (
    .i0(\U1/n9 [23]),
    .i1(\U1/Count_LED [23]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_RData [23]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux2_b24  (
    .i0(\U1/n9 [24]),
    .i1(\U1/Count_LED [24]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_RData [24]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux2_b25  (
    .i0(\U1/n9 [25]),
    .i1(\U1/Count_LED [25]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_RData [25]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux2_b26  (
    .i0(\U1/n9 [26]),
    .i1(\U1/Count_LED [26]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_RData [26]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux2_b27  (
    .i0(\U1/n9 [27]),
    .i1(\U1/Count_LED [27]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_RData [27]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux2_b28  (
    .i0(\U1/n9 [28]),
    .i1(\U1/Count_LED [28]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_RData [28]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux2_b29  (
    .i0(\U1/n9 [29]),
    .i1(\U1/Count_LED [29]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_RData [29]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux2_b30  (
    .i0(\U1/n9 [30]),
    .i1(\U1/Count_LED [30]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_RData [30]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux2_b31  (
    .i0(\U1/n9 [31]),
    .i1(\U1/Count_LED [31]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_RData [31]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w1 \U1/mux3_b16  (
    .i0(1'b0),
    .i1(\U1/n14 [16]),
    .sel(\U1/n13 ),
    .o(\U1/n15 [16]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux3_b17  (
    .i0(1'b0),
    .i1(\U1/n14 [17]),
    .sel(\U1/n13 ),
    .o(\U1/n15 [17]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux3_b18  (
    .i0(1'b0),
    .i1(\U1/n14 [18]),
    .sel(\U1/n13 ),
    .o(\U1/n15 [18]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux3_b19  (
    .i0(1'b0),
    .i1(\U1/n14 [19]),
    .sel(\U1/n13 ),
    .o(\U1/n15 [19]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux3_b20  (
    .i0(1'b0),
    .i1(\U1/n14 [20]),
    .sel(\U1/n13 ),
    .o(\U1/n15 [20]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux3_b21  (
    .i0(1'b0),
    .i1(\U1/n14 [21]),
    .sel(\U1/n13 ),
    .o(\U1/n15 [21]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux3_b22  (
    .i0(1'b0),
    .i1(\U1/n14 [22]),
    .sel(\U1/n13 ),
    .o(\U1/n15 [22]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux3_b23  (
    .i0(1'b0),
    .i1(\U1/n14 [23]),
    .sel(\U1/n13 ),
    .o(\U1/n15 [23]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux3_b24  (
    .i0(1'b0),
    .i1(\U1/n14 [24]),
    .sel(\U1/n13 ),
    .o(\U1/n15 [24]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux3_b25  (
    .i0(1'b0),
    .i1(\U1/n14 [25]),
    .sel(\U1/n13 ),
    .o(\U1/n15 [25]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux3_b26  (
    .i0(1'b0),
    .i1(\U1/n14 [26]),
    .sel(\U1/n13 ),
    .o(\U1/n15 [26]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux3_b27  (
    .i0(1'b0),
    .i1(\U1/n14 [27]),
    .sel(\U1/n13 ),
    .o(\U1/n15 [27]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux3_b28  (
    .i0(1'b0),
    .i1(\U1/n14 [28]),
    .sel(\U1/n13 ),
    .o(\U1/n15 [28]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux3_b29  (
    .i0(1'b0),
    .i1(\U1/n14 [29]),
    .sel(\U1/n13 ),
    .o(\U1/n15 [29]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux3_b30  (
    .i0(1'b0),
    .i1(\U1/n14 [30]),
    .sel(\U1/n13 ),
    .o(\U1/n15 [30]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux3_b31  (
    .i0(1'b0),
    .i1(\U1/n14 [31]),
    .sel(\U1/n13 ),
    .o(\U1/n15 [31]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux4_b16  (
    .i0(\U1/n15 [16]),
    .i1(\U1/n12 [16]),
    .sel(\U1/n11 ),
    .o(\U1/PWM_GData [16]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux4_b17  (
    .i0(\U1/n15 [17]),
    .i1(\U1/n12 [17]),
    .sel(\U1/n11 ),
    .o(\U1/PWM_GData [17]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux4_b18  (
    .i0(\U1/n15 [18]),
    .i1(\U1/n12 [18]),
    .sel(\U1/n11 ),
    .o(\U1/PWM_GData [18]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux4_b19  (
    .i0(\U1/n15 [19]),
    .i1(\U1/n12 [19]),
    .sel(\U1/n11 ),
    .o(\U1/PWM_GData [19]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux4_b20  (
    .i0(\U1/n15 [20]),
    .i1(\U1/n12 [20]),
    .sel(\U1/n11 ),
    .o(\U1/PWM_GData [20]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux4_b21  (
    .i0(\U1/n15 [21]),
    .i1(\U1/n12 [21]),
    .sel(\U1/n11 ),
    .o(\U1/PWM_GData [21]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux4_b22  (
    .i0(\U1/n15 [22]),
    .i1(\U1/n12 [22]),
    .sel(\U1/n11 ),
    .o(\U1/PWM_GData [22]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux4_b23  (
    .i0(\U1/n15 [23]),
    .i1(\U1/n12 [23]),
    .sel(\U1/n11 ),
    .o(\U1/PWM_GData [23]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux4_b24  (
    .i0(\U1/n15 [24]),
    .i1(\U1/n12 [24]),
    .sel(\U1/n11 ),
    .o(\U1/PWM_GData [24]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux4_b25  (
    .i0(\U1/n15 [25]),
    .i1(\U1/n12 [25]),
    .sel(\U1/n11 ),
    .o(\U1/PWM_GData [25]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux4_b26  (
    .i0(\U1/n15 [26]),
    .i1(\U1/n12 [26]),
    .sel(\U1/n11 ),
    .o(\U1/PWM_GData [26]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux4_b27  (
    .i0(\U1/n15 [27]),
    .i1(\U1/n12 [27]),
    .sel(\U1/n11 ),
    .o(\U1/PWM_GData [27]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux4_b28  (
    .i0(\U1/n15 [28]),
    .i1(\U1/n12 [28]),
    .sel(\U1/n11 ),
    .o(\U1/PWM_GData [28]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux4_b29  (
    .i0(\U1/n15 [29]),
    .i1(\U1/n12 [29]),
    .sel(\U1/n11 ),
    .o(\U1/PWM_GData [29]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux4_b30  (
    .i0(\U1/n15 [30]),
    .i1(\U1/n12 [30]),
    .sel(\U1/n11 ),
    .o(\U1/PWM_GData [30]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux4_b31  (
    .i0(\U1/n15 [31]),
    .i1(\U1/n12 [31]),
    .sel(\U1/n11 ),
    .o(\U1/PWM_GData [31]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w1 \U1/mux5_b16  (
    .i0(1'b0),
    .i1(\U1/n17 [16]),
    .sel(\U1/n13 ),
    .o(\U1/n18 [16]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux5_b17  (
    .i0(1'b0),
    .i1(\U1/n17 [17]),
    .sel(\U1/n13 ),
    .o(\U1/n18 [17]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux5_b18  (
    .i0(1'b0),
    .i1(\U1/n17 [18]),
    .sel(\U1/n13 ),
    .o(\U1/n18 [18]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux5_b19  (
    .i0(1'b0),
    .i1(\U1/n17 [19]),
    .sel(\U1/n13 ),
    .o(\U1/n18 [19]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux5_b20  (
    .i0(1'b0),
    .i1(\U1/n17 [20]),
    .sel(\U1/n13 ),
    .o(\U1/n18 [20]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux5_b21  (
    .i0(1'b0),
    .i1(\U1/n17 [21]),
    .sel(\U1/n13 ),
    .o(\U1/n18 [21]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux5_b22  (
    .i0(1'b0),
    .i1(\U1/n17 [22]),
    .sel(\U1/n13 ),
    .o(\U1/n18 [22]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux5_b23  (
    .i0(1'b0),
    .i1(\U1/n17 [23]),
    .sel(\U1/n13 ),
    .o(\U1/n18 [23]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux5_b24  (
    .i0(1'b0),
    .i1(\U1/n17 [24]),
    .sel(\U1/n13 ),
    .o(\U1/n18 [24]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux5_b25  (
    .i0(1'b0),
    .i1(\U1/n17 [25]),
    .sel(\U1/n13 ),
    .o(\U1/n18 [25]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux5_b26  (
    .i0(1'b0),
    .i1(\U1/n17 [26]),
    .sel(\U1/n13 ),
    .o(\U1/n18 [26]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux5_b27  (
    .i0(1'b0),
    .i1(\U1/n17 [27]),
    .sel(\U1/n13 ),
    .o(\U1/n18 [27]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux5_b28  (
    .i0(1'b0),
    .i1(\U1/n17 [28]),
    .sel(\U1/n13 ),
    .o(\U1/n18 [28]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux5_b29  (
    .i0(1'b0),
    .i1(\U1/n17 [29]),
    .sel(\U1/n13 ),
    .o(\U1/n18 [29]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux5_b30  (
    .i0(1'b0),
    .i1(\U1/n17 [30]),
    .sel(\U1/n13 ),
    .o(\U1/n18 [30]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux5_b31  (
    .i0(1'b0),
    .i1(\U1/n17 [31]),
    .sel(\U1/n13 ),
    .o(\U1/n18 [31]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux6_b16  (
    .i0(\U1/n18 [16]),
    .i1(\U1/n16 [16]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_BData [16]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux6_b17  (
    .i0(\U1/n18 [17]),
    .i1(\U1/n16 [17]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_BData [17]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux6_b18  (
    .i0(\U1/n18 [18]),
    .i1(\U1/n16 [18]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_BData [18]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux6_b19  (
    .i0(\U1/n18 [19]),
    .i1(\U1/n16 [19]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_BData [19]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux6_b20  (
    .i0(\U1/n18 [20]),
    .i1(\U1/n16 [20]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_BData [20]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux6_b21  (
    .i0(\U1/n18 [21]),
    .i1(\U1/n16 [21]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_BData [21]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux6_b22  (
    .i0(\U1/n18 [22]),
    .i1(\U1/n16 [22]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_BData [22]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux6_b23  (
    .i0(\U1/n18 [23]),
    .i1(\U1/n16 [23]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_BData [23]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux6_b24  (
    .i0(\U1/n18 [24]),
    .i1(\U1/n16 [24]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_BData [24]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux6_b25  (
    .i0(\U1/n18 [25]),
    .i1(\U1/n16 [25]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_BData [25]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux6_b26  (
    .i0(\U1/n18 [26]),
    .i1(\U1/n16 [26]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_BData [26]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux6_b27  (
    .i0(\U1/n18 [27]),
    .i1(\U1/n16 [27]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_BData [27]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux6_b28  (
    .i0(\U1/n18 [28]),
    .i1(\U1/n16 [28]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_BData [28]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux6_b29  (
    .i0(\U1/n18 [29]),
    .i1(\U1/n16 [29]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_BData [29]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux6_b30  (
    .i0(\U1/n18 [30]),
    .i1(\U1/n16 [30]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_BData [30]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w1 \U1/mux6_b31  (
    .i0(\U1/n18 [31]),
    .i1(\U1/n16 [31]),
    .sel(\U1/n4 ),
    .o(\U1/PWM_BData [31]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  reg_ar_as_w1 \U1/reg0_b0  (
    .clk(CLK_50M),
    .d(\U1/n3 [0]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [0]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b1  (
    .clk(CLK_50M),
    .d(\U1/n3 [1]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [1]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b10  (
    .clk(CLK_50M),
    .d(\U1/n3 [10]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [10]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b11  (
    .clk(CLK_50M),
    .d(\U1/n3 [11]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [11]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b12  (
    .clk(CLK_50M),
    .d(\U1/n3 [12]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [12]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b13  (
    .clk(CLK_50M),
    .d(\U1/n3 [13]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [13]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b14  (
    .clk(CLK_50M),
    .d(\U1/n3 [14]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [14]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b15  (
    .clk(CLK_50M),
    .d(\U1/n3 [15]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [15]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b16  (
    .clk(CLK_50M),
    .d(\U1/n3 [16]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [16]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b17  (
    .clk(CLK_50M),
    .d(\U1/n3 [17]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [17]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b18  (
    .clk(CLK_50M),
    .d(\U1/n3 [18]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [18]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b19  (
    .clk(CLK_50M),
    .d(\U1/n3 [19]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [19]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b2  (
    .clk(CLK_50M),
    .d(\U1/n3 [2]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [2]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b20  (
    .clk(CLK_50M),
    .d(\U1/n3 [20]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [20]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b21  (
    .clk(CLK_50M),
    .d(\U1/n3 [21]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [21]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b22  (
    .clk(CLK_50M),
    .d(\U1/n3 [22]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [22]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b23  (
    .clk(CLK_50M),
    .d(\U1/n3 [23]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [23]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b24  (
    .clk(CLK_50M),
    .d(\U1/n3 [24]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [24]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b25  (
    .clk(CLK_50M),
    .d(\U1/n3 [25]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [25]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b26  (
    .clk(CLK_50M),
    .d(\U1/n3 [26]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [26]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b27  (
    .clk(CLK_50M),
    .d(\U1/n3 [27]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [27]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b28  (
    .clk(CLK_50M),
    .d(\U1/n3 [28]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [28]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b29  (
    .clk(CLK_50M),
    .d(\U1/n3 [29]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [29]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b3  (
    .clk(CLK_50M),
    .d(\U1/n3 [3]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [3]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b30  (
    .clk(CLK_50M),
    .d(\U1/n3 [30]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [30]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b31  (
    .clk(CLK_50M),
    .d(\U1/n3 [31]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [31]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b4  (
    .clk(CLK_50M),
    .d(\U1/n3 [4]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [4]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b5  (
    .clk(CLK_50M),
    .d(\U1/n3 [5]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [5]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b6  (
    .clk(CLK_50M),
    .d(\U1/n3 [6]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [6]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b7  (
    .clk(CLK_50M),
    .d(\U1/n3 [7]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [7]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b8  (
    .clk(CLK_50M),
    .d(\U1/n3 [8]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [8]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b9  (
    .clk(CLK_50M),
    .d(\U1/n3 [9]),
    .en(1'b1),
    .reset(~nRST),
    .set(1'b0),
    .q(\U1/Count_LED [9]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  add_pu32_mu32_o32 \U1/sub0  (
    .i0(32'b00000111110100000000000000000000),
    .i1(\U1/Count_LED ),
    .o({\U1/n8 [31:16],open_n13,open_n14,open_n15,open_n16,open_n17,open_n18,open_n19,open_n20,open_n21,open_n22,open_n23,open_n24,open_n25,open_n26,open_n27,open_n28}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  add_pu32_mu32_o32 \U1/sub1  (
    .i0(\U1/Count_LED ),
    .i1(32'b00000011111010000000000000000000),
    .o({\U1/n12 [31:16],open_n29,open_n30,open_n31,open_n32,open_n33,open_n34,open_n35,open_n36,open_n37,open_n38,open_n39,open_n40,open_n41,open_n42,open_n43,open_n44}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(30)
  add_pu32_mu32_o32 \U1/sub2  (
    .i0(32'b00001011101110000000000000000000),
    .i1(\U1/Count_LED ),
    .o({\U1/n14 [31:16],open_n45,open_n46,open_n47,open_n48,open_n49,open_n50,open_n51,open_n52,open_n53,open_n54,open_n55,open_n56,open_n57,open_n58,open_n59,open_n60}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  add_pu32_mu32_o32 \U1/sub3  (
    .i0(32'b00000011111010000000000000000000),
    .i1(\U1/Count_LED ),
    .o({\U1/n16 [31:16],open_n61,open_n62,open_n63,open_n64,open_n65,open_n66,open_n67,open_n68,open_n69,open_n70,open_n71,open_n72,open_n73,open_n74,open_n75,open_n76}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(33)
  add_pu32_mu32_o32 \U1/sub4  (
    .i0(\U1/Count_LED ),
    .i1(32'b00000111110100000000000000000000),
    .o({\U1/n17 [31:16],open_n77,open_n78,open_n79,open_n80,open_n81,open_n82,open_n83,open_n84,open_n85,open_n86,open_n87,open_n88,open_n89,open_n90,open_n91,open_n92}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  and \U1/u3  (\U1/n7 , \U1/n5 , \U1/n6 );  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  and \U1/u4  (\U1/n11 , \U1/n10 , \U1/n6 );  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(30)

endmodule 

module add_pu16_pu16_o16
  (
  i0,
  i1,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  output [15:0] o;

  wire net_a0;
  wire net_a1;
  wire net_a10;
  wire net_a11;
  wire net_a12;
  wire net_a13;
  wire net_a14;
  wire net_a15;
  wire net_a2;
  wire net_a3;
  wire net_a4;
  wire net_a5;
  wire net_a6;
  wire net_a7;
  wire net_a8;
  wire net_a9;
  wire net_b0;
  wire net_b1;
  wire net_b10;
  wire net_b11;
  wire net_b12;
  wire net_b13;
  wire net_b14;
  wire net_b15;
  wire net_b2;
  wire net_b3;
  wire net_b4;
  wire net_b5;
  wire net_b6;
  wire net_b7;
  wire net_b8;
  wire net_b9;
  wire net_cout0;
  wire net_cout1;
  wire net_cout10;
  wire net_cout11;
  wire net_cout12;
  wire net_cout13;
  wire net_cout14;
  wire net_cout15;
  wire net_cout2;
  wire net_cout3;
  wire net_cout4;
  wire net_cout5;
  wire net_cout6;
  wire net_cout7;
  wire net_cout8;
  wire net_cout9;
  wire net_sum0;
  wire net_sum1;
  wire net_sum10;
  wire net_sum11;
  wire net_sum12;
  wire net_sum13;
  wire net_sum14;
  wire net_sum15;
  wire net_sum2;
  wire net_sum3;
  wire net_sum4;
  wire net_sum5;
  wire net_sum6;
  wire net_sum7;
  wire net_sum8;
  wire net_sum9;

  assign net_a15 = i0[15];
  assign net_a14 = i0[14];
  assign net_a13 = i0[13];
  assign net_a12 = i0[12];
  assign net_a11 = i0[11];
  assign net_a10 = i0[10];
  assign net_a9 = i0[9];
  assign net_a8 = i0[8];
  assign net_a7 = i0[7];
  assign net_a6 = i0[6];
  assign net_a5 = i0[5];
  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b15 = i1[15];
  assign net_b14 = i1[14];
  assign net_b13 = i1[13];
  assign net_b12 = i1[12];
  assign net_b11 = i1[11];
  assign net_b10 = i1[10];
  assign net_b9 = i1[9];
  assign net_b8 = i1[8];
  assign net_b7 = i1[7];
  assign net_b6 = i1[6];
  assign net_b5 = i1[5];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[15] = net_sum15;
  assign o[14] = net_sum14;
  assign o[13] = net_sum13;
  assign o[12] = net_sum12;
  assign o[11] = net_sum11;
  assign o[10] = net_sum10;
  assign o[9] = net_sum9;
  assign o[8] = net_sum8;
  assign o[7] = net_sum7;
  assign o[6] = net_sum6;
  assign o[5] = net_sum5;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD comp_0 (
    .a(net_a0),
    .b(net_b0),
    .c(1'b0),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD comp_1 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD comp_10 (
    .a(net_a10),
    .b(net_b10),
    .c(net_cout9),
    .cout(net_cout10),
    .sum(net_sum10));
  AL_FADD comp_11 (
    .a(net_a11),
    .b(net_b11),
    .c(net_cout10),
    .cout(net_cout11),
    .sum(net_sum11));
  AL_FADD comp_12 (
    .a(net_a12),
    .b(net_b12),
    .c(net_cout11),
    .cout(net_cout12),
    .sum(net_sum12));
  AL_FADD comp_13 (
    .a(net_a13),
    .b(net_b13),
    .c(net_cout12),
    .cout(net_cout13),
    .sum(net_sum13));
  AL_FADD comp_14 (
    .a(net_a14),
    .b(net_b14),
    .c(net_cout13),
    .cout(net_cout14),
    .sum(net_sum14));
  AL_FADD comp_15 (
    .a(net_a15),
    .b(net_b15),
    .c(net_cout14),
    .cout(net_cout15),
    .sum(net_sum15));
  AL_FADD comp_2 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD comp_3 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD comp_4 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  AL_FADD comp_5 (
    .a(net_a5),
    .b(net_b5),
    .c(net_cout4),
    .cout(net_cout5),
    .sum(net_sum5));
  AL_FADD comp_6 (
    .a(net_a6),
    .b(net_b6),
    .c(net_cout5),
    .cout(net_cout6),
    .sum(net_sum6));
  AL_FADD comp_7 (
    .a(net_a7),
    .b(net_b7),
    .c(net_cout6),
    .cout(net_cout7),
    .sum(net_sum7));
  AL_FADD comp_8 (
    .a(net_a8),
    .b(net_b8),
    .c(net_cout7),
    .cout(net_cout8),
    .sum(net_sum8));
  AL_FADD comp_9 (
    .a(net_a9),
    .b(net_b9),
    .c(net_cout8),
    .cout(net_cout9),
    .sum(net_sum9));

endmodule 

module lt_u16_u16
  (
  ci,
  i0,
  i1,
  o
  );

  input ci;
  input [15:0] i0;
  input [15:0] i1;
  output o;

  wire [15:0] diff;
  wire diff_12_15;
  wire diff_6_11;
  wire less_12_15;
  wire \less_12_15_inst/diff_0 ;
  wire \less_12_15_inst/diff_1 ;
  wire \less_12_15_inst/diff_2 ;
  wire \less_12_15_inst/diff_3 ;
  wire \less_12_15_inst/o_0 ;
  wire \less_12_15_inst/o_1 ;
  wire \less_12_15_inst/o_2 ;
  wire less_6_11;
  wire \less_6_11_inst/diff_0 ;
  wire \less_6_11_inst/diff_1 ;
  wire \less_6_11_inst/diff_2 ;
  wire \less_6_11_inst/diff_3 ;
  wire \less_6_11_inst/diff_4 ;
  wire \less_6_11_inst/diff_5 ;
  wire \less_6_11_inst/o_0 ;
  wire \less_6_11_inst/o_1 ;
  wire \less_6_11_inst/o_2 ;
  wire \less_6_11_inst/o_3 ;
  wire \less_6_11_inst/o_4 ;
  wire o_0;
  wire o_1;
  wire o_2;
  wire o_3;
  wire o_4;
  wire o_5;
  wire o_6;

  or any_diff_12_15 (diff_12_15, diff[12], diff[13], diff[14], diff[15]);
  or any_diff_6_11 (diff_6_11, diff[6], diff[7], diff[8], diff[9], diff[10], diff[11]);
  xor diff_0 (diff[0], i0[0], i1[0]);
  xor diff_1 (diff[1], i0[1], i1[1]);
  xor diff_10 (diff[10], i0[10], i1[10]);
  xor diff_11 (diff[11], i0[11], i1[11]);
  xor diff_12 (diff[12], i0[12], i1[12]);
  xor diff_13 (diff[13], i0[13], i1[13]);
  xor diff_14 (diff[14], i0[14], i1[14]);
  xor diff_15 (diff[15], i0[15], i1[15]);
  xor diff_2 (diff[2], i0[2], i1[2]);
  xor diff_3 (diff[3], i0[3], i1[3]);
  xor diff_4 (diff[4], i0[4], i1[4]);
  xor diff_5 (diff[5], i0[5], i1[5]);
  xor diff_6 (diff[6], i0[6], i1[6]);
  xor diff_7 (diff[7], i0[7], i1[7]);
  xor diff_8 (diff[8], i0[8], i1[8]);
  xor diff_9 (diff[9], i0[9], i1[9]);
  AL_MUX \less_12_15_inst/mux_0  (
    .i0(1'b0),
    .i1(i1[12]),
    .sel(\less_12_15_inst/diff_0 ),
    .o(\less_12_15_inst/o_0 ));
  AL_MUX \less_12_15_inst/mux_1  (
    .i0(\less_12_15_inst/o_0 ),
    .i1(i1[13]),
    .sel(\less_12_15_inst/diff_1 ),
    .o(\less_12_15_inst/o_1 ));
  AL_MUX \less_12_15_inst/mux_2  (
    .i0(\less_12_15_inst/o_1 ),
    .i1(i1[14]),
    .sel(\less_12_15_inst/diff_2 ),
    .o(\less_12_15_inst/o_2 ));
  AL_MUX \less_12_15_inst/mux_3  (
    .i0(\less_12_15_inst/o_2 ),
    .i1(i1[15]),
    .sel(\less_12_15_inst/diff_3 ),
    .o(less_12_15));
  xor \less_12_15_inst/xor_0  (\less_12_15_inst/diff_0 , i0[12], i1[12]);
  xor \less_12_15_inst/xor_1  (\less_12_15_inst/diff_1 , i0[13], i1[13]);
  xor \less_12_15_inst/xor_2  (\less_12_15_inst/diff_2 , i0[14], i1[14]);
  xor \less_12_15_inst/xor_3  (\less_12_15_inst/diff_3 , i0[15], i1[15]);
  AL_MUX \less_6_11_inst/mux_0  (
    .i0(1'b0),
    .i1(i1[6]),
    .sel(\less_6_11_inst/diff_0 ),
    .o(\less_6_11_inst/o_0 ));
  AL_MUX \less_6_11_inst/mux_1  (
    .i0(\less_6_11_inst/o_0 ),
    .i1(i1[7]),
    .sel(\less_6_11_inst/diff_1 ),
    .o(\less_6_11_inst/o_1 ));
  AL_MUX \less_6_11_inst/mux_2  (
    .i0(\less_6_11_inst/o_1 ),
    .i1(i1[8]),
    .sel(\less_6_11_inst/diff_2 ),
    .o(\less_6_11_inst/o_2 ));
  AL_MUX \less_6_11_inst/mux_3  (
    .i0(\less_6_11_inst/o_2 ),
    .i1(i1[9]),
    .sel(\less_6_11_inst/diff_3 ),
    .o(\less_6_11_inst/o_3 ));
  AL_MUX \less_6_11_inst/mux_4  (
    .i0(\less_6_11_inst/o_3 ),
    .i1(i1[10]),
    .sel(\less_6_11_inst/diff_4 ),
    .o(\less_6_11_inst/o_4 ));
  AL_MUX \less_6_11_inst/mux_5  (
    .i0(\less_6_11_inst/o_4 ),
    .i1(i1[11]),
    .sel(\less_6_11_inst/diff_5 ),
    .o(less_6_11));
  xor \less_6_11_inst/xor_0  (\less_6_11_inst/diff_0 , i0[6], i1[6]);
  xor \less_6_11_inst/xor_1  (\less_6_11_inst/diff_1 , i0[7], i1[7]);
  xor \less_6_11_inst/xor_2  (\less_6_11_inst/diff_2 , i0[8], i1[8]);
  xor \less_6_11_inst/xor_3  (\less_6_11_inst/diff_3 , i0[9], i1[9]);
  xor \less_6_11_inst/xor_4  (\less_6_11_inst/diff_4 , i0[10], i1[10]);
  xor \less_6_11_inst/xor_5  (\less_6_11_inst/diff_5 , i0[11], i1[11]);
  AL_MUX mux_0 (
    .i0(ci),
    .i1(i1[0]),
    .sel(diff[0]),
    .o(o_0));
  AL_MUX mux_1 (
    .i0(o_0),
    .i1(i1[1]),
    .sel(diff[1]),
    .o(o_1));
  AL_MUX mux_2 (
    .i0(o_1),
    .i1(i1[2]),
    .sel(diff[2]),
    .o(o_2));
  AL_MUX mux_3 (
    .i0(o_2),
    .i1(i1[3]),
    .sel(diff[3]),
    .o(o_3));
  AL_MUX mux_4 (
    .i0(o_3),
    .i1(i1[4]),
    .sel(diff[4]),
    .o(o_4));
  AL_MUX mux_5 (
    .i0(o_4),
    .i1(i1[5]),
    .sel(diff[5]),
    .o(o_5));
  AL_MUX mux_6 (
    .i0(o_5),
    .i1(less_6_11),
    .sel(diff_6_11),
    .o(o_6));
  AL_MUX mux_7 (
    .i0(o_6),
    .i1(less_12_15),
    .sel(diff_12_15),
    .o(o));

endmodule 

module binary_mux_s1_w1
  (
  i0,
  i1,
  sel,
  o
  );

  input i0;
  input i1;
  input sel;
  output o;


  AL_MUX al_mux_b0_0_0 (
    .i0(i0),
    .i1(i1),
    .sel(sel),
    .o(o));

endmodule 

module reg_ar_as_w1
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input d;
  input en;
  input reset;
  input set;
  output q;

  parameter REGSET = "RESET";
  wire enout;

  AL_MUX u_en0 (
    .i0(q),
    .i1(d),
    .sel(en),
    .o(enout));
  AL_DFF #(
    .INI((REGSET == "SET") ? 1'b1 : 1'b0))
    u_seq0 (
    .clk(clk),
    .d(enout),
    .reset(reset),
    .set(set),
    .q(q));

endmodule 

module add_pu32_pu32_o32
  (
  i0,
  i1,
  o
  );

  input [31:0] i0;
  input [31:0] i1;
  output [31:0] o;

  wire net_a0;
  wire net_a1;
  wire net_a10;
  wire net_a11;
  wire net_a12;
  wire net_a13;
  wire net_a14;
  wire net_a15;
  wire net_a16;
  wire net_a17;
  wire net_a18;
  wire net_a19;
  wire net_a2;
  wire net_a20;
  wire net_a21;
  wire net_a22;
  wire net_a23;
  wire net_a24;
  wire net_a25;
  wire net_a26;
  wire net_a27;
  wire net_a28;
  wire net_a29;
  wire net_a3;
  wire net_a30;
  wire net_a31;
  wire net_a4;
  wire net_a5;
  wire net_a6;
  wire net_a7;
  wire net_a8;
  wire net_a9;
  wire net_b0;
  wire net_b1;
  wire net_b10;
  wire net_b11;
  wire net_b12;
  wire net_b13;
  wire net_b14;
  wire net_b15;
  wire net_b16;
  wire net_b17;
  wire net_b18;
  wire net_b19;
  wire net_b2;
  wire net_b20;
  wire net_b21;
  wire net_b22;
  wire net_b23;
  wire net_b24;
  wire net_b25;
  wire net_b26;
  wire net_b27;
  wire net_b28;
  wire net_b29;
  wire net_b3;
  wire net_b30;
  wire net_b31;
  wire net_b4;
  wire net_b5;
  wire net_b6;
  wire net_b7;
  wire net_b8;
  wire net_b9;
  wire net_cout0;
  wire net_cout1;
  wire net_cout10;
  wire net_cout11;
  wire net_cout12;
  wire net_cout13;
  wire net_cout14;
  wire net_cout15;
  wire net_cout16;
  wire net_cout17;
  wire net_cout18;
  wire net_cout19;
  wire net_cout2;
  wire net_cout20;
  wire net_cout21;
  wire net_cout22;
  wire net_cout23;
  wire net_cout24;
  wire net_cout25;
  wire net_cout26;
  wire net_cout27;
  wire net_cout28;
  wire net_cout29;
  wire net_cout3;
  wire net_cout30;
  wire net_cout31;
  wire net_cout4;
  wire net_cout5;
  wire net_cout6;
  wire net_cout7;
  wire net_cout8;
  wire net_cout9;
  wire net_sum0;
  wire net_sum1;
  wire net_sum10;
  wire net_sum11;
  wire net_sum12;
  wire net_sum13;
  wire net_sum14;
  wire net_sum15;
  wire net_sum16;
  wire net_sum17;
  wire net_sum18;
  wire net_sum19;
  wire net_sum2;
  wire net_sum20;
  wire net_sum21;
  wire net_sum22;
  wire net_sum23;
  wire net_sum24;
  wire net_sum25;
  wire net_sum26;
  wire net_sum27;
  wire net_sum28;
  wire net_sum29;
  wire net_sum3;
  wire net_sum30;
  wire net_sum31;
  wire net_sum4;
  wire net_sum5;
  wire net_sum6;
  wire net_sum7;
  wire net_sum8;
  wire net_sum9;

  assign net_a31 = i0[31];
  assign net_a30 = i0[30];
  assign net_a29 = i0[29];
  assign net_a28 = i0[28];
  assign net_a27 = i0[27];
  assign net_a26 = i0[26];
  assign net_a25 = i0[25];
  assign net_a24 = i0[24];
  assign net_a23 = i0[23];
  assign net_a22 = i0[22];
  assign net_a21 = i0[21];
  assign net_a20 = i0[20];
  assign net_a19 = i0[19];
  assign net_a18 = i0[18];
  assign net_a17 = i0[17];
  assign net_a16 = i0[16];
  assign net_a15 = i0[15];
  assign net_a14 = i0[14];
  assign net_a13 = i0[13];
  assign net_a12 = i0[12];
  assign net_a11 = i0[11];
  assign net_a10 = i0[10];
  assign net_a9 = i0[9];
  assign net_a8 = i0[8];
  assign net_a7 = i0[7];
  assign net_a6 = i0[6];
  assign net_a5 = i0[5];
  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b31 = i1[31];
  assign net_b30 = i1[30];
  assign net_b29 = i1[29];
  assign net_b28 = i1[28];
  assign net_b27 = i1[27];
  assign net_b26 = i1[26];
  assign net_b25 = i1[25];
  assign net_b24 = i1[24];
  assign net_b23 = i1[23];
  assign net_b22 = i1[22];
  assign net_b21 = i1[21];
  assign net_b20 = i1[20];
  assign net_b19 = i1[19];
  assign net_b18 = i1[18];
  assign net_b17 = i1[17];
  assign net_b16 = i1[16];
  assign net_b15 = i1[15];
  assign net_b14 = i1[14];
  assign net_b13 = i1[13];
  assign net_b12 = i1[12];
  assign net_b11 = i1[11];
  assign net_b10 = i1[10];
  assign net_b9 = i1[9];
  assign net_b8 = i1[8];
  assign net_b7 = i1[7];
  assign net_b6 = i1[6];
  assign net_b5 = i1[5];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[31] = net_sum31;
  assign o[30] = net_sum30;
  assign o[29] = net_sum29;
  assign o[28] = net_sum28;
  assign o[27] = net_sum27;
  assign o[26] = net_sum26;
  assign o[25] = net_sum25;
  assign o[24] = net_sum24;
  assign o[23] = net_sum23;
  assign o[22] = net_sum22;
  assign o[21] = net_sum21;
  assign o[20] = net_sum20;
  assign o[19] = net_sum19;
  assign o[18] = net_sum18;
  assign o[17] = net_sum17;
  assign o[16] = net_sum16;
  assign o[15] = net_sum15;
  assign o[14] = net_sum14;
  assign o[13] = net_sum13;
  assign o[12] = net_sum12;
  assign o[11] = net_sum11;
  assign o[10] = net_sum10;
  assign o[9] = net_sum9;
  assign o[8] = net_sum8;
  assign o[7] = net_sum7;
  assign o[6] = net_sum6;
  assign o[5] = net_sum5;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD comp_0 (
    .a(net_a0),
    .b(net_b0),
    .c(1'b0),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD comp_1 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD comp_10 (
    .a(net_a10),
    .b(net_b10),
    .c(net_cout9),
    .cout(net_cout10),
    .sum(net_sum10));
  AL_FADD comp_11 (
    .a(net_a11),
    .b(net_b11),
    .c(net_cout10),
    .cout(net_cout11),
    .sum(net_sum11));
  AL_FADD comp_12 (
    .a(net_a12),
    .b(net_b12),
    .c(net_cout11),
    .cout(net_cout12),
    .sum(net_sum12));
  AL_FADD comp_13 (
    .a(net_a13),
    .b(net_b13),
    .c(net_cout12),
    .cout(net_cout13),
    .sum(net_sum13));
  AL_FADD comp_14 (
    .a(net_a14),
    .b(net_b14),
    .c(net_cout13),
    .cout(net_cout14),
    .sum(net_sum14));
  AL_FADD comp_15 (
    .a(net_a15),
    .b(net_b15),
    .c(net_cout14),
    .cout(net_cout15),
    .sum(net_sum15));
  AL_FADD comp_16 (
    .a(net_a16),
    .b(net_b16),
    .c(net_cout15),
    .cout(net_cout16),
    .sum(net_sum16));
  AL_FADD comp_17 (
    .a(net_a17),
    .b(net_b17),
    .c(net_cout16),
    .cout(net_cout17),
    .sum(net_sum17));
  AL_FADD comp_18 (
    .a(net_a18),
    .b(net_b18),
    .c(net_cout17),
    .cout(net_cout18),
    .sum(net_sum18));
  AL_FADD comp_19 (
    .a(net_a19),
    .b(net_b19),
    .c(net_cout18),
    .cout(net_cout19),
    .sum(net_sum19));
  AL_FADD comp_2 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD comp_20 (
    .a(net_a20),
    .b(net_b20),
    .c(net_cout19),
    .cout(net_cout20),
    .sum(net_sum20));
  AL_FADD comp_21 (
    .a(net_a21),
    .b(net_b21),
    .c(net_cout20),
    .cout(net_cout21),
    .sum(net_sum21));
  AL_FADD comp_22 (
    .a(net_a22),
    .b(net_b22),
    .c(net_cout21),
    .cout(net_cout22),
    .sum(net_sum22));
  AL_FADD comp_23 (
    .a(net_a23),
    .b(net_b23),
    .c(net_cout22),
    .cout(net_cout23),
    .sum(net_sum23));
  AL_FADD comp_24 (
    .a(net_a24),
    .b(net_b24),
    .c(net_cout23),
    .cout(net_cout24),
    .sum(net_sum24));
  AL_FADD comp_25 (
    .a(net_a25),
    .b(net_b25),
    .c(net_cout24),
    .cout(net_cout25),
    .sum(net_sum25));
  AL_FADD comp_26 (
    .a(net_a26),
    .b(net_b26),
    .c(net_cout25),
    .cout(net_cout26),
    .sum(net_sum26));
  AL_FADD comp_27 (
    .a(net_a27),
    .b(net_b27),
    .c(net_cout26),
    .cout(net_cout27),
    .sum(net_sum27));
  AL_FADD comp_28 (
    .a(net_a28),
    .b(net_b28),
    .c(net_cout27),
    .cout(net_cout28),
    .sum(net_sum28));
  AL_FADD comp_29 (
    .a(net_a29),
    .b(net_b29),
    .c(net_cout28),
    .cout(net_cout29),
    .sum(net_sum29));
  AL_FADD comp_3 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD comp_30 (
    .a(net_a30),
    .b(net_b30),
    .c(net_cout29),
    .cout(net_cout30),
    .sum(net_sum30));
  AL_FADD comp_31 (
    .a(net_a31),
    .b(net_b31),
    .c(net_cout30),
    .cout(net_cout31),
    .sum(net_sum31));
  AL_FADD comp_4 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  AL_FADD comp_5 (
    .a(net_a5),
    .b(net_b5),
    .c(net_cout4),
    .cout(net_cout5),
    .sum(net_sum5));
  AL_FADD comp_6 (
    .a(net_a6),
    .b(net_b6),
    .c(net_cout5),
    .cout(net_cout6),
    .sum(net_sum6));
  AL_FADD comp_7 (
    .a(net_a7),
    .b(net_b7),
    .c(net_cout6),
    .cout(net_cout7),
    .sum(net_sum7));
  AL_FADD comp_8 (
    .a(net_a8),
    .b(net_b8),
    .c(net_cout7),
    .cout(net_cout8),
    .sum(net_sum8));
  AL_FADD comp_9 (
    .a(net_a9),
    .b(net_b9),
    .c(net_cout8),
    .cout(net_cout9),
    .sum(net_sum9));

endmodule 

module lt_u32_u32
  (
  ci,
  i0,
  i1,
  o
  );

  input ci;
  input [31:0] i0;
  input [31:0] i1;
  output o;

  wire [31:0] diff;
  wire diff_12_18;
  wire diff_19_26;
  wire diff_27_31;
  wire diff_6_11;
  wire less_12_18;
  wire \less_12_18_inst/diff_0 ;
  wire \less_12_18_inst/diff_1 ;
  wire \less_12_18_inst/diff_2 ;
  wire \less_12_18_inst/diff_3 ;
  wire \less_12_18_inst/diff_4 ;
  wire \less_12_18_inst/diff_5 ;
  wire \less_12_18_inst/diff_6 ;
  wire \less_12_18_inst/o_0 ;
  wire \less_12_18_inst/o_1 ;
  wire \less_12_18_inst/o_2 ;
  wire \less_12_18_inst/o_3 ;
  wire \less_12_18_inst/o_4 ;
  wire \less_12_18_inst/o_5 ;
  wire less_19_26;
  wire \less_19_26_inst/diff_0 ;
  wire \less_19_26_inst/diff_1 ;
  wire \less_19_26_inst/diff_2 ;
  wire \less_19_26_inst/diff_3 ;
  wire \less_19_26_inst/diff_4 ;
  wire \less_19_26_inst/diff_5 ;
  wire \less_19_26_inst/diff_6 ;
  wire \less_19_26_inst/diff_7 ;
  wire \less_19_26_inst/o_0 ;
  wire \less_19_26_inst/o_1 ;
  wire \less_19_26_inst/o_2 ;
  wire \less_19_26_inst/o_3 ;
  wire \less_19_26_inst/o_4 ;
  wire \less_19_26_inst/o_5 ;
  wire \less_19_26_inst/o_6 ;
  wire less_27_31;
  wire \less_27_31_inst/diff_0 ;
  wire \less_27_31_inst/diff_1 ;
  wire \less_27_31_inst/diff_2 ;
  wire \less_27_31_inst/diff_3 ;
  wire \less_27_31_inst/diff_4 ;
  wire \less_27_31_inst/o_0 ;
  wire \less_27_31_inst/o_1 ;
  wire \less_27_31_inst/o_2 ;
  wire \less_27_31_inst/o_3 ;
  wire less_6_11;
  wire \less_6_11_inst/diff_0 ;
  wire \less_6_11_inst/diff_1 ;
  wire \less_6_11_inst/diff_2 ;
  wire \less_6_11_inst/diff_3 ;
  wire \less_6_11_inst/diff_4 ;
  wire \less_6_11_inst/diff_5 ;
  wire \less_6_11_inst/o_0 ;
  wire \less_6_11_inst/o_1 ;
  wire \less_6_11_inst/o_2 ;
  wire \less_6_11_inst/o_3 ;
  wire \less_6_11_inst/o_4 ;
  wire o_0;
  wire o_1;
  wire o_2;
  wire o_3;
  wire o_4;
  wire o_5;
  wire o_6;
  wire o_7;
  wire o_8;

  or any_diff_12_18 (diff_12_18, diff[12], diff[13], diff[14], diff[15], diff[16], diff[17], diff[18]);
  or any_diff_19_26 (diff_19_26, diff[19], diff[20], diff[21], diff[22], diff[23], diff[24], diff[25], diff[26]);
  or any_diff_27_31 (diff_27_31, diff[27], diff[28], diff[29], diff[30], diff[31]);
  or any_diff_6_11 (diff_6_11, diff[6], diff[7], diff[8], diff[9], diff[10], diff[11]);
  xor diff_0 (diff[0], i0[0], i1[0]);
  xor diff_1 (diff[1], i0[1], i1[1]);
  xor diff_10 (diff[10], i0[10], i1[10]);
  xor diff_11 (diff[11], i0[11], i1[11]);
  xor diff_12 (diff[12], i0[12], i1[12]);
  xor diff_13 (diff[13], i0[13], i1[13]);
  xor diff_14 (diff[14], i0[14], i1[14]);
  xor diff_15 (diff[15], i0[15], i1[15]);
  xor diff_16 (diff[16], i0[16], i1[16]);
  xor diff_17 (diff[17], i0[17], i1[17]);
  xor diff_18 (diff[18], i0[18], i1[18]);
  xor diff_19 (diff[19], i0[19], i1[19]);
  xor diff_2 (diff[2], i0[2], i1[2]);
  xor diff_20 (diff[20], i0[20], i1[20]);
  xor diff_21 (diff[21], i0[21], i1[21]);
  xor diff_22 (diff[22], i0[22], i1[22]);
  xor diff_23 (diff[23], i0[23], i1[23]);
  xor diff_24 (diff[24], i0[24], i1[24]);
  xor diff_25 (diff[25], i0[25], i1[25]);
  xor diff_26 (diff[26], i0[26], i1[26]);
  xor diff_27 (diff[27], i0[27], i1[27]);
  xor diff_28 (diff[28], i0[28], i1[28]);
  xor diff_29 (diff[29], i0[29], i1[29]);
  xor diff_3 (diff[3], i0[3], i1[3]);
  xor diff_30 (diff[30], i0[30], i1[30]);
  xor diff_31 (diff[31], i0[31], i1[31]);
  xor diff_4 (diff[4], i0[4], i1[4]);
  xor diff_5 (diff[5], i0[5], i1[5]);
  xor diff_6 (diff[6], i0[6], i1[6]);
  xor diff_7 (diff[7], i0[7], i1[7]);
  xor diff_8 (diff[8], i0[8], i1[8]);
  xor diff_9 (diff[9], i0[9], i1[9]);
  AL_MUX \less_12_18_inst/mux_0  (
    .i0(1'b0),
    .i1(i1[12]),
    .sel(\less_12_18_inst/diff_0 ),
    .o(\less_12_18_inst/o_0 ));
  AL_MUX \less_12_18_inst/mux_1  (
    .i0(\less_12_18_inst/o_0 ),
    .i1(i1[13]),
    .sel(\less_12_18_inst/diff_1 ),
    .o(\less_12_18_inst/o_1 ));
  AL_MUX \less_12_18_inst/mux_2  (
    .i0(\less_12_18_inst/o_1 ),
    .i1(i1[14]),
    .sel(\less_12_18_inst/diff_2 ),
    .o(\less_12_18_inst/o_2 ));
  AL_MUX \less_12_18_inst/mux_3  (
    .i0(\less_12_18_inst/o_2 ),
    .i1(i1[15]),
    .sel(\less_12_18_inst/diff_3 ),
    .o(\less_12_18_inst/o_3 ));
  AL_MUX \less_12_18_inst/mux_4  (
    .i0(\less_12_18_inst/o_3 ),
    .i1(i1[16]),
    .sel(\less_12_18_inst/diff_4 ),
    .o(\less_12_18_inst/o_4 ));
  AL_MUX \less_12_18_inst/mux_5  (
    .i0(\less_12_18_inst/o_4 ),
    .i1(i1[17]),
    .sel(\less_12_18_inst/diff_5 ),
    .o(\less_12_18_inst/o_5 ));
  AL_MUX \less_12_18_inst/mux_6  (
    .i0(\less_12_18_inst/o_5 ),
    .i1(i1[18]),
    .sel(\less_12_18_inst/diff_6 ),
    .o(less_12_18));
  xor \less_12_18_inst/xor_0  (\less_12_18_inst/diff_0 , i0[12], i1[12]);
  xor \less_12_18_inst/xor_1  (\less_12_18_inst/diff_1 , i0[13], i1[13]);
  xor \less_12_18_inst/xor_2  (\less_12_18_inst/diff_2 , i0[14], i1[14]);
  xor \less_12_18_inst/xor_3  (\less_12_18_inst/diff_3 , i0[15], i1[15]);
  xor \less_12_18_inst/xor_4  (\less_12_18_inst/diff_4 , i0[16], i1[16]);
  xor \less_12_18_inst/xor_5  (\less_12_18_inst/diff_5 , i0[17], i1[17]);
  xor \less_12_18_inst/xor_6  (\less_12_18_inst/diff_6 , i0[18], i1[18]);
  AL_MUX \less_19_26_inst/mux_0  (
    .i0(1'b0),
    .i1(i1[19]),
    .sel(\less_19_26_inst/diff_0 ),
    .o(\less_19_26_inst/o_0 ));
  AL_MUX \less_19_26_inst/mux_1  (
    .i0(\less_19_26_inst/o_0 ),
    .i1(i1[20]),
    .sel(\less_19_26_inst/diff_1 ),
    .o(\less_19_26_inst/o_1 ));
  AL_MUX \less_19_26_inst/mux_2  (
    .i0(\less_19_26_inst/o_1 ),
    .i1(i1[21]),
    .sel(\less_19_26_inst/diff_2 ),
    .o(\less_19_26_inst/o_2 ));
  AL_MUX \less_19_26_inst/mux_3  (
    .i0(\less_19_26_inst/o_2 ),
    .i1(i1[22]),
    .sel(\less_19_26_inst/diff_3 ),
    .o(\less_19_26_inst/o_3 ));
  AL_MUX \less_19_26_inst/mux_4  (
    .i0(\less_19_26_inst/o_3 ),
    .i1(i1[23]),
    .sel(\less_19_26_inst/diff_4 ),
    .o(\less_19_26_inst/o_4 ));
  AL_MUX \less_19_26_inst/mux_5  (
    .i0(\less_19_26_inst/o_4 ),
    .i1(i1[24]),
    .sel(\less_19_26_inst/diff_5 ),
    .o(\less_19_26_inst/o_5 ));
  AL_MUX \less_19_26_inst/mux_6  (
    .i0(\less_19_26_inst/o_5 ),
    .i1(i1[25]),
    .sel(\less_19_26_inst/diff_6 ),
    .o(\less_19_26_inst/o_6 ));
  AL_MUX \less_19_26_inst/mux_7  (
    .i0(\less_19_26_inst/o_6 ),
    .i1(i1[26]),
    .sel(\less_19_26_inst/diff_7 ),
    .o(less_19_26));
  xor \less_19_26_inst/xor_0  (\less_19_26_inst/diff_0 , i0[19], i1[19]);
  xor \less_19_26_inst/xor_1  (\less_19_26_inst/diff_1 , i0[20], i1[20]);
  xor \less_19_26_inst/xor_2  (\less_19_26_inst/diff_2 , i0[21], i1[21]);
  xor \less_19_26_inst/xor_3  (\less_19_26_inst/diff_3 , i0[22], i1[22]);
  xor \less_19_26_inst/xor_4  (\less_19_26_inst/diff_4 , i0[23], i1[23]);
  xor \less_19_26_inst/xor_5  (\less_19_26_inst/diff_5 , i0[24], i1[24]);
  xor \less_19_26_inst/xor_6  (\less_19_26_inst/diff_6 , i0[25], i1[25]);
  xor \less_19_26_inst/xor_7  (\less_19_26_inst/diff_7 , i0[26], i1[26]);
  AL_MUX \less_27_31_inst/mux_0  (
    .i0(1'b0),
    .i1(i1[27]),
    .sel(\less_27_31_inst/diff_0 ),
    .o(\less_27_31_inst/o_0 ));
  AL_MUX \less_27_31_inst/mux_1  (
    .i0(\less_27_31_inst/o_0 ),
    .i1(i1[28]),
    .sel(\less_27_31_inst/diff_1 ),
    .o(\less_27_31_inst/o_1 ));
  AL_MUX \less_27_31_inst/mux_2  (
    .i0(\less_27_31_inst/o_1 ),
    .i1(i1[29]),
    .sel(\less_27_31_inst/diff_2 ),
    .o(\less_27_31_inst/o_2 ));
  AL_MUX \less_27_31_inst/mux_3  (
    .i0(\less_27_31_inst/o_2 ),
    .i1(i1[30]),
    .sel(\less_27_31_inst/diff_3 ),
    .o(\less_27_31_inst/o_3 ));
  AL_MUX \less_27_31_inst/mux_4  (
    .i0(\less_27_31_inst/o_3 ),
    .i1(i1[31]),
    .sel(\less_27_31_inst/diff_4 ),
    .o(less_27_31));
  xor \less_27_31_inst/xor_0  (\less_27_31_inst/diff_0 , i0[27], i1[27]);
  xor \less_27_31_inst/xor_1  (\less_27_31_inst/diff_1 , i0[28], i1[28]);
  xor \less_27_31_inst/xor_2  (\less_27_31_inst/diff_2 , i0[29], i1[29]);
  xor \less_27_31_inst/xor_3  (\less_27_31_inst/diff_3 , i0[30], i1[30]);
  xor \less_27_31_inst/xor_4  (\less_27_31_inst/diff_4 , i0[31], i1[31]);
  AL_MUX \less_6_11_inst/mux_0  (
    .i0(1'b0),
    .i1(i1[6]),
    .sel(\less_6_11_inst/diff_0 ),
    .o(\less_6_11_inst/o_0 ));
  AL_MUX \less_6_11_inst/mux_1  (
    .i0(\less_6_11_inst/o_0 ),
    .i1(i1[7]),
    .sel(\less_6_11_inst/diff_1 ),
    .o(\less_6_11_inst/o_1 ));
  AL_MUX \less_6_11_inst/mux_2  (
    .i0(\less_6_11_inst/o_1 ),
    .i1(i1[8]),
    .sel(\less_6_11_inst/diff_2 ),
    .o(\less_6_11_inst/o_2 ));
  AL_MUX \less_6_11_inst/mux_3  (
    .i0(\less_6_11_inst/o_2 ),
    .i1(i1[9]),
    .sel(\less_6_11_inst/diff_3 ),
    .o(\less_6_11_inst/o_3 ));
  AL_MUX \less_6_11_inst/mux_4  (
    .i0(\less_6_11_inst/o_3 ),
    .i1(i1[10]),
    .sel(\less_6_11_inst/diff_4 ),
    .o(\less_6_11_inst/o_4 ));
  AL_MUX \less_6_11_inst/mux_5  (
    .i0(\less_6_11_inst/o_4 ),
    .i1(i1[11]),
    .sel(\less_6_11_inst/diff_5 ),
    .o(less_6_11));
  xor \less_6_11_inst/xor_0  (\less_6_11_inst/diff_0 , i0[6], i1[6]);
  xor \less_6_11_inst/xor_1  (\less_6_11_inst/diff_1 , i0[7], i1[7]);
  xor \less_6_11_inst/xor_2  (\less_6_11_inst/diff_2 , i0[8], i1[8]);
  xor \less_6_11_inst/xor_3  (\less_6_11_inst/diff_3 , i0[9], i1[9]);
  xor \less_6_11_inst/xor_4  (\less_6_11_inst/diff_4 , i0[10], i1[10]);
  xor \less_6_11_inst/xor_5  (\less_6_11_inst/diff_5 , i0[11], i1[11]);
  AL_MUX mux_0 (
    .i0(ci),
    .i1(i1[0]),
    .sel(diff[0]),
    .o(o_0));
  AL_MUX mux_1 (
    .i0(o_0),
    .i1(i1[1]),
    .sel(diff[1]),
    .o(o_1));
  AL_MUX mux_2 (
    .i0(o_1),
    .i1(i1[2]),
    .sel(diff[2]),
    .o(o_2));
  AL_MUX mux_3 (
    .i0(o_2),
    .i1(i1[3]),
    .sel(diff[3]),
    .o(o_3));
  AL_MUX mux_4 (
    .i0(o_3),
    .i1(i1[4]),
    .sel(diff[4]),
    .o(o_4));
  AL_MUX mux_5 (
    .i0(o_4),
    .i1(i1[5]),
    .sel(diff[5]),
    .o(o_5));
  AL_MUX mux_6 (
    .i0(o_5),
    .i1(less_6_11),
    .sel(diff_6_11),
    .o(o_6));
  AL_MUX mux_7 (
    .i0(o_6),
    .i1(less_12_18),
    .sel(diff_12_18),
    .o(o_7));
  AL_MUX mux_8 (
    .i0(o_7),
    .i1(less_19_26),
    .sel(diff_19_26),
    .o(o_8));
  AL_MUX mux_9 (
    .i0(o_8),
    .i1(less_27_31),
    .sel(diff_27_31),
    .o(o));

endmodule 

module add_pu32_mu32_o32
  (
  i0,
  i1,
  o
  );

  input [31:0] i0;
  input [31:0] i1;
  output [31:0] o;

  wire net_a0;
  wire net_a1;
  wire net_a10;
  wire net_a11;
  wire net_a12;
  wire net_a13;
  wire net_a14;
  wire net_a15;
  wire net_a16;
  wire net_a17;
  wire net_a18;
  wire net_a19;
  wire net_a2;
  wire net_a20;
  wire net_a21;
  wire net_a22;
  wire net_a23;
  wire net_a24;
  wire net_a25;
  wire net_a26;
  wire net_a27;
  wire net_a28;
  wire net_a29;
  wire net_a3;
  wire net_a30;
  wire net_a31;
  wire net_a4;
  wire net_a5;
  wire net_a6;
  wire net_a7;
  wire net_a8;
  wire net_a9;
  wire net_b0;
  wire net_b1;
  wire net_b10;
  wire net_b11;
  wire net_b12;
  wire net_b13;
  wire net_b14;
  wire net_b15;
  wire net_b16;
  wire net_b17;
  wire net_b18;
  wire net_b19;
  wire net_b2;
  wire net_b20;
  wire net_b21;
  wire net_b22;
  wire net_b23;
  wire net_b24;
  wire net_b25;
  wire net_b26;
  wire net_b27;
  wire net_b28;
  wire net_b29;
  wire net_b3;
  wire net_b30;
  wire net_b31;
  wire net_b4;
  wire net_b5;
  wire net_b6;
  wire net_b7;
  wire net_b8;
  wire net_b9;
  wire net_cout0;
  wire net_cout1;
  wire net_cout10;
  wire net_cout11;
  wire net_cout12;
  wire net_cout13;
  wire net_cout14;
  wire net_cout15;
  wire net_cout16;
  wire net_cout17;
  wire net_cout18;
  wire net_cout19;
  wire net_cout2;
  wire net_cout20;
  wire net_cout21;
  wire net_cout22;
  wire net_cout23;
  wire net_cout24;
  wire net_cout25;
  wire net_cout26;
  wire net_cout27;
  wire net_cout28;
  wire net_cout29;
  wire net_cout3;
  wire net_cout30;
  wire net_cout31;
  wire net_cout4;
  wire net_cout5;
  wire net_cout6;
  wire net_cout7;
  wire net_cout8;
  wire net_cout9;
  wire net_nb0;
  wire net_nb1;
  wire net_nb10;
  wire net_nb11;
  wire net_nb12;
  wire net_nb13;
  wire net_nb14;
  wire net_nb15;
  wire net_nb16;
  wire net_nb17;
  wire net_nb18;
  wire net_nb19;
  wire net_nb2;
  wire net_nb20;
  wire net_nb21;
  wire net_nb22;
  wire net_nb23;
  wire net_nb24;
  wire net_nb25;
  wire net_nb26;
  wire net_nb27;
  wire net_nb28;
  wire net_nb29;
  wire net_nb3;
  wire net_nb30;
  wire net_nb31;
  wire net_nb4;
  wire net_nb5;
  wire net_nb6;
  wire net_nb7;
  wire net_nb8;
  wire net_nb9;
  wire net_sum0;
  wire net_sum1;
  wire net_sum10;
  wire net_sum11;
  wire net_sum12;
  wire net_sum13;
  wire net_sum14;
  wire net_sum15;
  wire net_sum16;
  wire net_sum17;
  wire net_sum18;
  wire net_sum19;
  wire net_sum2;
  wire net_sum20;
  wire net_sum21;
  wire net_sum22;
  wire net_sum23;
  wire net_sum24;
  wire net_sum25;
  wire net_sum26;
  wire net_sum27;
  wire net_sum28;
  wire net_sum29;
  wire net_sum3;
  wire net_sum30;
  wire net_sum31;
  wire net_sum4;
  wire net_sum5;
  wire net_sum6;
  wire net_sum7;
  wire net_sum8;
  wire net_sum9;

  assign net_a31 = i0[31];
  assign net_a30 = i0[30];
  assign net_a29 = i0[29];
  assign net_a28 = i0[28];
  assign net_a27 = i0[27];
  assign net_a26 = i0[26];
  assign net_a25 = i0[25];
  assign net_a24 = i0[24];
  assign net_a23 = i0[23];
  assign net_a22 = i0[22];
  assign net_a21 = i0[21];
  assign net_a20 = i0[20];
  assign net_a19 = i0[19];
  assign net_a18 = i0[18];
  assign net_a17 = i0[17];
  assign net_a16 = i0[16];
  assign net_a15 = i0[15];
  assign net_a14 = i0[14];
  assign net_a13 = i0[13];
  assign net_a12 = i0[12];
  assign net_a11 = i0[11];
  assign net_a10 = i0[10];
  assign net_a9 = i0[9];
  assign net_a8 = i0[8];
  assign net_a7 = i0[7];
  assign net_a6 = i0[6];
  assign net_a5 = i0[5];
  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b31 = i1[31];
  assign net_b30 = i1[30];
  assign net_b29 = i1[29];
  assign net_b28 = i1[28];
  assign net_b27 = i1[27];
  assign net_b26 = i1[26];
  assign net_b25 = i1[25];
  assign net_b24 = i1[24];
  assign net_b23 = i1[23];
  assign net_b22 = i1[22];
  assign net_b21 = i1[21];
  assign net_b20 = i1[20];
  assign net_b19 = i1[19];
  assign net_b18 = i1[18];
  assign net_b17 = i1[17];
  assign net_b16 = i1[16];
  assign net_b15 = i1[15];
  assign net_b14 = i1[14];
  assign net_b13 = i1[13];
  assign net_b12 = i1[12];
  assign net_b11 = i1[11];
  assign net_b10 = i1[10];
  assign net_b9 = i1[9];
  assign net_b8 = i1[8];
  assign net_b7 = i1[7];
  assign net_b6 = i1[6];
  assign net_b5 = i1[5];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[31] = net_sum31;
  assign o[30] = net_sum30;
  assign o[29] = net_sum29;
  assign o[28] = net_sum28;
  assign o[27] = net_sum27;
  assign o[26] = net_sum26;
  assign o[25] = net_sum25;
  assign o[24] = net_sum24;
  assign o[23] = net_sum23;
  assign o[22] = net_sum22;
  assign o[21] = net_sum21;
  assign o[20] = net_sum20;
  assign o[19] = net_sum19;
  assign o[18] = net_sum18;
  assign o[17] = net_sum17;
  assign o[16] = net_sum16;
  assign o[15] = net_sum15;
  assign o[14] = net_sum14;
  assign o[13] = net_sum13;
  assign o[12] = net_sum12;
  assign o[11] = net_sum11;
  assign o[10] = net_sum10;
  assign o[9] = net_sum9;
  assign o[8] = net_sum8;
  assign o[7] = net_sum7;
  assign o[6] = net_sum6;
  assign o[5] = net_sum5;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD comp_0 (
    .a(net_a0),
    .b(net_nb0),
    .c(1'b1),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD comp_1 (
    .a(net_a1),
    .b(net_nb1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD comp_10 (
    .a(net_a10),
    .b(net_nb10),
    .c(net_cout9),
    .cout(net_cout10),
    .sum(net_sum10));
  AL_FADD comp_11 (
    .a(net_a11),
    .b(net_nb11),
    .c(net_cout10),
    .cout(net_cout11),
    .sum(net_sum11));
  AL_FADD comp_12 (
    .a(net_a12),
    .b(net_nb12),
    .c(net_cout11),
    .cout(net_cout12),
    .sum(net_sum12));
  AL_FADD comp_13 (
    .a(net_a13),
    .b(net_nb13),
    .c(net_cout12),
    .cout(net_cout13),
    .sum(net_sum13));
  AL_FADD comp_14 (
    .a(net_a14),
    .b(net_nb14),
    .c(net_cout13),
    .cout(net_cout14),
    .sum(net_sum14));
  AL_FADD comp_15 (
    .a(net_a15),
    .b(net_nb15),
    .c(net_cout14),
    .cout(net_cout15),
    .sum(net_sum15));
  AL_FADD comp_16 (
    .a(net_a16),
    .b(net_nb16),
    .c(net_cout15),
    .cout(net_cout16),
    .sum(net_sum16));
  AL_FADD comp_17 (
    .a(net_a17),
    .b(net_nb17),
    .c(net_cout16),
    .cout(net_cout17),
    .sum(net_sum17));
  AL_FADD comp_18 (
    .a(net_a18),
    .b(net_nb18),
    .c(net_cout17),
    .cout(net_cout18),
    .sum(net_sum18));
  AL_FADD comp_19 (
    .a(net_a19),
    .b(net_nb19),
    .c(net_cout18),
    .cout(net_cout19),
    .sum(net_sum19));
  AL_FADD comp_2 (
    .a(net_a2),
    .b(net_nb2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD comp_20 (
    .a(net_a20),
    .b(net_nb20),
    .c(net_cout19),
    .cout(net_cout20),
    .sum(net_sum20));
  AL_FADD comp_21 (
    .a(net_a21),
    .b(net_nb21),
    .c(net_cout20),
    .cout(net_cout21),
    .sum(net_sum21));
  AL_FADD comp_22 (
    .a(net_a22),
    .b(net_nb22),
    .c(net_cout21),
    .cout(net_cout22),
    .sum(net_sum22));
  AL_FADD comp_23 (
    .a(net_a23),
    .b(net_nb23),
    .c(net_cout22),
    .cout(net_cout23),
    .sum(net_sum23));
  AL_FADD comp_24 (
    .a(net_a24),
    .b(net_nb24),
    .c(net_cout23),
    .cout(net_cout24),
    .sum(net_sum24));
  AL_FADD comp_25 (
    .a(net_a25),
    .b(net_nb25),
    .c(net_cout24),
    .cout(net_cout25),
    .sum(net_sum25));
  AL_FADD comp_26 (
    .a(net_a26),
    .b(net_nb26),
    .c(net_cout25),
    .cout(net_cout26),
    .sum(net_sum26));
  AL_FADD comp_27 (
    .a(net_a27),
    .b(net_nb27),
    .c(net_cout26),
    .cout(net_cout27),
    .sum(net_sum27));
  AL_FADD comp_28 (
    .a(net_a28),
    .b(net_nb28),
    .c(net_cout27),
    .cout(net_cout28),
    .sum(net_sum28));
  AL_FADD comp_29 (
    .a(net_a29),
    .b(net_nb29),
    .c(net_cout28),
    .cout(net_cout29),
    .sum(net_sum29));
  AL_FADD comp_3 (
    .a(net_a3),
    .b(net_nb3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD comp_30 (
    .a(net_a30),
    .b(net_nb30),
    .c(net_cout29),
    .cout(net_cout30),
    .sum(net_sum30));
  AL_FADD comp_31 (
    .a(net_a31),
    .b(net_nb31),
    .c(net_cout30),
    .cout(net_cout31),
    .sum(net_sum31));
  AL_FADD comp_4 (
    .a(net_a4),
    .b(net_nb4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  AL_FADD comp_5 (
    .a(net_a5),
    .b(net_nb5),
    .c(net_cout4),
    .cout(net_cout5),
    .sum(net_sum5));
  AL_FADD comp_6 (
    .a(net_a6),
    .b(net_nb6),
    .c(net_cout5),
    .cout(net_cout6),
    .sum(net_sum6));
  AL_FADD comp_7 (
    .a(net_a7),
    .b(net_nb7),
    .c(net_cout6),
    .cout(net_cout7),
    .sum(net_sum7));
  AL_FADD comp_8 (
    .a(net_a8),
    .b(net_nb8),
    .c(net_cout7),
    .cout(net_cout8),
    .sum(net_sum8));
  AL_FADD comp_9 (
    .a(net_a9),
    .b(net_nb9),
    .c(net_cout8),
    .cout(net_cout9),
    .sum(net_sum9));
  not inv_b0 (net_nb0, net_b0);
  not inv_b1 (net_nb1, net_b1);
  not inv_b10 (net_nb10, net_b10);
  not inv_b11 (net_nb11, net_b11);
  not inv_b12 (net_nb12, net_b12);
  not inv_b13 (net_nb13, net_b13);
  not inv_b14 (net_nb14, net_b14);
  not inv_b15 (net_nb15, net_b15);
  not inv_b16 (net_nb16, net_b16);
  not inv_b17 (net_nb17, net_b17);
  not inv_b18 (net_nb18, net_b18);
  not inv_b19 (net_nb19, net_b19);
  not inv_b2 (net_nb2, net_b2);
  not inv_b20 (net_nb20, net_b20);
  not inv_b21 (net_nb21, net_b21);
  not inv_b22 (net_nb22, net_b22);
  not inv_b23 (net_nb23, net_b23);
  not inv_b24 (net_nb24, net_b24);
  not inv_b25 (net_nb25, net_b25);
  not inv_b26 (net_nb26, net_b26);
  not inv_b27 (net_nb27, net_b27);
  not inv_b28 (net_nb28, net_b28);
  not inv_b29 (net_nb29, net_b29);
  not inv_b3 (net_nb3, net_b3);
  not inv_b30 (net_nb30, net_b30);
  not inv_b31 (net_nb31, net_b31);
  not inv_b4 (net_nb4, net_b4);
  not inv_b5 (net_nb5, net_b5);
  not inv_b6 (net_nb6, net_b6);
  not inv_b7 (net_nb7, net_b7);
  not inv_b8 (net_nb8, net_b8);
  not inv_b9 (net_nb9, net_b9);

endmodule 

module AL_FADD
  (
  input a,
  input b,
  input c,
  output sum,
  output cout
  );

  wire prop;
  wire not_prop;
  wire sel_i0;
  wire sel_i1;

  xor u0 (prop, a, b);
  xor u1 (sum, prop, c);
  not u2 (not_prop, prop);
  and u3 (sel_i1, prop, c);
  and u4 (sel_i0, not_prop, a);
  or  u5 (cout, sel_i0, sel_i1);

endmodule

module AL_MUX
  (
  input i0,
  input i1,
  input sel,
  output o
  );

  wire not_sel, sel_i0, sel_i1;
  not u0 (not_sel, sel);
  and u1 (sel_i1, sel, i1);
  and u2 (sel_i0, not_sel, i0);
  or u3 (o, sel_i1, sel_i0);

endmodule

module AL_DFF
  (
  input reset,
  input set,
  input clk,
  input d,
  output reg q
  );

  parameter INI = 1'b0;

  always @(posedge reset or posedge set or posedge clk)
  begin
    if (reset)
      q <= 1'b0;
    else if (set)
      q <= 1'b1;
    else
      q <= d;
  end

endmodule

