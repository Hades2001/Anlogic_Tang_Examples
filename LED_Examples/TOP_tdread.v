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

  wire CLK_50M;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(18)
  wire n0;

  SysPll Pll (
    .refclk(CLK_24M),
    .reset(n0),
    .clk1_out(CLK_50M));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(23)
  LEDRGBCtrl U1 (
    .CLK(CLK_50M),
    .nRST(nRST),
    .LEDs(LEDs));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(54)
  not u0 (n0, nRST);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(26)

endmodule 

module SysPll  // al_ip/SysPll.v(25)
  (
  refclk,
  reset,
  clk0_out,
  clk1_out,
  clk2_out,
  clk3_out
  );

  input refclk;  // al_ip/SysPll.v(32)
  input reset;  // al_ip/SysPll.v(33)
  output clk0_out;  // al_ip/SysPll.v(34)
  output clk1_out;  // al_ip/SysPll.v(35)
  output clk2_out;  // al_ip/SysPll.v(36)
  output clk3_out;  // al_ip/SysPll.v(37)

  wire clk0_buf;  // al_ip/SysPll.v(39)

  EG_LOGIC_BUFG bufg_feedback (
    .i(clk0_buf),
    .o(clk0_out));  // al_ip/SysPll.v(41)
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
    pll_inst (
    .daddr(6'b000000),
    .dclk(1'b0),
    .dcs(1'b0),
    .di(8'b00000000),
    .dwe(1'b0),
    .fbclk(clk0_out),
    .psclk(1'b0),
    .psclksel(3'b000),
    .psdown(1'b0),
    .psstep(1'b0),
    .refclk(refclk),
    .reset(reset),
    .stdby(1'b0),
    .clkc({open_n0,clk3_out,clk2_out,clk1_out,clk0_buf}));  // al_ip/SysPll.v(76)

endmodule 

module LEDRGBCtrl  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(1)
  (
  CLK,
  nRST,
  LEDs
  );

  input CLK;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(3)
  input nRST;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(4)
  output [2:0] LEDs;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(6)

  wire [31:0] Count_LED;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(9)
  wire [31:0] PWM_BData;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(25)
  wire [31:0] PWM_GData;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(24)
  wire [31:0] PWM_RData;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(23)
  wire [31:0] n12;
  wire [31:0] n14;
  wire [31:0] n15;
  wire [31:0] n16;
  wire [31:0] n17;
  wire [31:0] n18;
  wire [31:0] n2;
  wire [31:0] n3;
  wire [31:0] n8;
  wire [31:0] n9;
  wire n0;
  wire n1;
  wire n10;
  wire n11;
  wire n13;
  wire n4;
  wire n5;
  wire n6;
  wire n7;

  PWM B_PWM (
    .CLK(CLK),
    .PWMConData(PWM_BData[31:16]),
    .PWMUpData(16'b0000001111101000),
    .nRST(nRST),
    .OUT(LEDs[2]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(70)
  PWM G_PWM (
    .CLK(CLK),
    .PWMConData(PWM_GData[31:16]),
    .PWMUpData(16'b0000001111101000),
    .nRST(nRST),
    .OUT(LEDs[1]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(55)
  PWM R_PWM (
    .CLK(CLK),
    .PWMConData(PWM_RData[31:16]),
    .PWMUpData(16'b0000001111101000),
    .nRST(nRST),
    .OUT(LEDs[0]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(40)
  add_pu32_pu32_o32 add0 (
    .i0(Count_LED),
    .i1(32'b00000000000000000000000000000001),
    .o(n2));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(19)
  lt_u32_u32 lt0 (
    .ci(1'b1),
    .i0(32'b00001011101110000000000000000000),
    .i1(Count_LED),
    .o(n1));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(15)
  lt_u32_u32 lt1 (
    .ci(1'b1),
    .i0(Count_LED),
    .i1(32'b00000011111010000000000000000000),
    .o(n4));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(27)
  lt_u32_u32 lt2 (
    .ci(1'b0),
    .i0(32'b00000011111010000000000000000000),
    .i1(Count_LED),
    .o(n5));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  lt_u32_u32 lt3 (
    .ci(1'b1),
    .i0(Count_LED),
    .i1(32'b00000111110100000000000000000000),
    .o(n6));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  lt_u32_u32 lt4 (
    .ci(1'b1),
    .i0(32'b00000011111010000000000000000000),
    .i1(Count_LED),
    .o(n10));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(30)
  lt_u32_u32 lt5 (
    .ci(1'b0),
    .i0(32'b00000111110100000000000000000000),
    .i1(Count_LED),
    .o(n13));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w32 mux0 (
    .i0(n2),
    .i1(32'b00000000000000000000000000000000),
    .sel(n1),
    .o(n3));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w32 mux1 (
    .i0(32'b00000000000000000000000000000000),
    .i1(n8),
    .sel(n7),
    .o(n9));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w32 mux2 (
    .i0(n9),
    .i1(Count_LED),
    .sel(n4),
    .o({PWM_RData[31:16],open_n0,open_n1,open_n2,open_n3,open_n4,open_n5,open_n6,open_n7,open_n8,open_n9,open_n10,open_n11,open_n12,open_n13,open_n14,open_n15}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w32 mux3 (
    .i0(32'b00000000000000000000000000000000),
    .i1(n14),
    .sel(n13),
    .o(n15));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w32 mux4 (
    .i0(n15),
    .i1(n12),
    .sel(n11),
    .o({PWM_GData[31:16],open_n16,open_n17,open_n18,open_n19,open_n20,open_n21,open_n22,open_n23,open_n24,open_n25,open_n26,open_n27,open_n28,open_n29,open_n30,open_n31}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w32 mux5 (
    .i0(32'b00000000000000000000000000000000),
    .i1(n17),
    .sel(n13),
    .o(n18));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w32 mux6 (
    .i0(n18),
    .i1(n16),
    .sel(n4),
    .o({PWM_BData[31:16],open_n32,open_n33,open_n34,open_n35,open_n36,open_n37,open_n38,open_n39,open_n40,open_n41,open_n42,open_n43,open_n44,open_n45,open_n46,open_n47}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  reg_ar_as_w32 reg0 (
    .clk(CLK),
    .d(n3),
    .reset({n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0}),
    .set(32'b00000000000000000000000000000000),
    .q(Count_LED));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  add_pu32_mu32_o32 sub0 (
    .i0(32'b00000111110100000000000000000000),
    .i1(Count_LED),
    .o(n8));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  add_pu32_mu32_o32 sub1 (
    .i0(Count_LED),
    .i1(32'b00000011111010000000000000000000),
    .o(n12));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(30)
  add_pu32_mu32_o32 sub2 (
    .i0(32'b00001011101110000000000000000000),
    .i1(Count_LED),
    .o(n14));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(31)
  add_pu32_mu32_o32 sub3 (
    .i0(32'b00000011111010000000000000000000),
    .i1(Count_LED),
    .o(n16));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(33)
  add_pu32_mu32_o32 sub4 (
    .i0(Count_LED),
    .i1(32'b00000111110100000000000000000000),
    .o(n17));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(34)
  not u2 (n0, nRST);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(12)
  and u3 (n7, n5, n6);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(28)
  and u4 (n11, n10, n6);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(30)

endmodule 

module PWM  // Source/PWM.v(1)
  (
  CLK,
  PWMConData,
  PWMUpData,
  nRST,
  OUT
  );

  input CLK;  // Source/PWM.v(6)
  input [15:0] PWMConData;  // Source/PWM.v(11)
  input [15:0] PWMUpData;  // Source/PWM.v(10)
  input nRST;  // Source/PWM.v(7)
  output OUT;  // Source/PWM.v(9)

  parameter PWMWidth = 16;
  wire [15:0] PWMCount;  // Source/PWM.v(15)
  wire [15:0] n2;
  wire [15:0] n3;
  wire n0;
  wire n1;
  wire n4;

  add_pu16_pu16_o16 add0 (
    .i0(PWMCount),
    .i1(16'b0000000000000001),
    .o(n2));  // Source/PWM.v(25)
  lt_u16_u16 lt0 (
    .ci(1'b1),
    .i0(PWMUpData),
    .i1(PWMCount),
    .o(n1));  // Source/PWM.v(21)
  lt_u16_u16 lt1 (
    .ci(1'b1),
    .i0(PWMCount),
    .i1(PWMConData),
    .o(n4));  // Source/PWM.v(29)
  binary_mux_s1_w16 mux0 (
    .i0(n2),
    .i1(16'b0000000000000000),
    .sel(n1),
    .o(n3));  // Source/PWM.v(26)
  reg_ar_as_w16 reg0 (
    .clk(CLK),
    .d(n3),
    .reset({n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0}),
    .set(16'b0000000000000000),
    .q(PWMCount));  // Source/PWM.v(26)
  not u2 (n0, nRST);  // Source/PWM.v(18)
  not u3 (OUT, n4);  // Source/PWM.v(29)

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



endmodule 

module binary_mux_s1_w32
  (
  i0,
  i1,
  sel,
  o
  );

  input [31:0] i0;
  input [31:0] i1;
  input sel;
  output [31:0] o;



endmodule 

module reg_ar_as_w32
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [31:0] d;
  input en;
  input [31:0] reset;
  input [31:0] set;
  output [31:0] q;



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



endmodule 

module binary_mux_s1_w16
  (
  i0,
  i1,
  sel,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  input sel;
  output [15:0] o;



endmodule 

module reg_ar_as_w16
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [15:0] d;
  input en;
  input [15:0] reset;
  input [15:0] set;
  output [15:0] q;



endmodule 

