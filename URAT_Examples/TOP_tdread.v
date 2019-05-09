// Verilog netlist created by TD v4.4.433
// Thu May  9 15:32:58 2019

`timescale 1ns / 1ps
module TOP  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(1)
  (
  CLK_24M,
  nRST,
  GPIO,
  LEDs,
  UART_TX
  );

  input CLK_24M;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(12)
  input nRST;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(13)
  output GPIO;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(17)
  output [2:0] LEDs;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(15)
  output UART_TX;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(16)

  wire [7:0] FIFO_DI;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(62)
  wire [7:0] FIFO_DO;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(61)
  wire CLK_50M;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(20)
  wire FIFO_CLK_R;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(55)
  wire FIFO_CLK_W;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(56)
  wire FIFO_EMPTY;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(59)
  wire FIFO_FULL;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(60)
  wire FIFO_RE;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(57)
  wire FIFO_WE;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(58)
  wire UART_CLK;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(43)
  wire n0;

  CLK_MOD C1 (
    .CLK(CLK_50M),
    .Count_REG(32'b00000000000000000000000011011001),
    .nRST(nRST),
    .CLK_OUT(UART_CLK));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(45)
  UARTFIFO FIFO0 (
    .clkr(FIFO_CLK_R),
    .clkw(FIFO_CLK_W),
    .di(FIFO_DI),
    .re(FIFO_RE),
    .rst(n0),
    .we(FIFO_WE),
    .do(FIFO_DO),
    .empty_flag(FIFO_EMPTY),
    .full_flag(FIFO_FULL));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(64)
  SysPll Pll (
    .refclk(CLK_24M),
    .reset(n0),
    .clk1_out(CLK_50M));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(25)
  LEDRGBCtrl U1 (
    .CLK(CLK_50M),
    .nRST(nRST),
    .LEDs(LEDs));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(35)
  UARTSender U2 (
    .Data(10'b0001110101),
    .FIFO_Data(FIFO_DO),
    .FIFO_Empty(FIFO_EMPTY),
    .UART_CLK(UART_CLK),
    .nRST(nRST),
    .FIFO_CLK(FIFO_CLK_R),
    .FIFO_RE(FIFO_RE),
    .UART_TX(UART_TX));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(87)
  UART_CTRL U3 (
    .CLK(CLK_50M),
    .FIFO_FULL(FIFO_FULL),
    .nRST(nRST),
    .FIFO_CLK(FIFO_CLK_W),
    .FIFO_Data(FIFO_DI),
    .FIFO_WE(FIFO_WE));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(76)
  not u2 (n0, nRST);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(28)

endmodule 

module CLK_MOD  // Source/CLK_MOD.v(1)
  (
  CLK,
  Count_REG,
  nRST,
  CLK_OUT
  );

  input CLK;  // Source/CLK_MOD.v(11)
  input [31:0] Count_REG;  // Source/CLK_MOD.v(14)
  input nRST;  // Source/CLK_MOD.v(12)
  output CLK_OUT;  // Source/CLK_MOD.v(17)

  wire [31:0] Count;  // Source/CLK_MOD.v(15)
  wire [31:0] n3;
  wire [31:0] n5;
  wire n0;
  wire n1;
  wire n2;
  wire n4;

  AL_DFF CLK_OUT_reg (
    .clk(CLK),
    .d(n4),
    .reset(1'b0),
    .set(n0),
    .q(CLK_OUT));  // Source/CLK_MOD.v(32)
  add_pu32_pu32_o32 add0 (
    .i0(Count),
    .i1(32'b00000000000000000000000000000001),
    .o(n3));  // Source/CLK_MOD.v(32)
  eq_w32 eq0 (
    .i0(Count),
    .i1(Count_REG),
    .o(n1));  // Source/CLK_MOD.v(26)
  binary_mux_s1_w32 mux0 (
    .i0(n3),
    .i1(32'b00000000000000000000000000000000),
    .sel(n1),
    .o(n5));  // Source/CLK_MOD.v(32)
  reg_ar_as_w32 reg0 (
    .clk(CLK),
    .d(n5),
    .reset({n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0}),
    .set(32'b00000000000000000000000000000000),
    .q(Count));  // Source/CLK_MOD.v(32)
  not u2 (n0, nRST);  // Source/CLK_MOD.v(21)
  not u3 (n2, CLK_OUT);  // Source/CLK_MOD.v(28)
  AL_MUX u4 (
    .i0(CLK_OUT),
    .i1(n2),
    .sel(n1),
    .o(n4));  // Source/CLK_MOD.v(32)

endmodule 

module UARTFIFO  // al_ip/DCFIFO.v(14)
  (
  clkr,
  clkw,
  di,
  re,
  rst,
  we,
  do,
  empty_flag,
  full_flag
  );

  input clkr;  // al_ip/DCFIFO.v(25)
  input clkw;  // al_ip/DCFIFO.v(24)
  input [7:0] di;  // al_ip/DCFIFO.v(23)
  input re;  // al_ip/DCFIFO.v(25)
  input rst;  // al_ip/DCFIFO.v(22)
  input we;  // al_ip/DCFIFO.v(24)
  output [7:0] do;  // al_ip/DCFIFO.v(27)
  output empty_flag;  // al_ip/DCFIFO.v(28)
  output full_flag;  // al_ip/DCFIFO.v(29)


  EG_LOGIC_FIFO #(
    .AE(6),
    .AF(506),
    .ASYNC_RESET_RELEASE("SYNC"),
    .DATA_DEPTH_R(512),
    .DATA_DEPTH_W(512),
    .DATA_WIDTH_R(8),
    .DATA_WIDTH_W(8),
    .E(0),
    .ENDIAN("BIG"),
    .F(512),
    .GSR("DISABLE"),
    .MODE("FIFO8K"),
    .REGMODE_R("NOREG"),
    .REGMODE_W("NOREG"),
    .RESETMODE("SYNC"))
    logic_fifo (
    .clkr(clkr),
    .clkw(clkw),
    .csr(3'b111),
    .csw(3'b111),
    .di(di),
    .ore(1'b0),
    .re(re),
    .rst(rst),
    .we(we),
    .do(do),
    .empty_flag(empty_flag),
    .full_flag(full_flag));  // al_ip/DCFIFO.v(41)

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

module LEDRGBCtrl  // Source/LEDRGBCtrl.v(1)
  (
  CLK,
  nRST,
  LEDs
  );

  input CLK;  // Source/LEDRGBCtrl.v(3)
  input nRST;  // Source/LEDRGBCtrl.v(4)
  output [2:0] LEDs;  // Source/LEDRGBCtrl.v(6)

  wire [31:0] Count_LED;  // Source/LEDRGBCtrl.v(9)
  wire [31:0] PWM_BData;  // Source/LEDRGBCtrl.v(25)
  wire [31:0] PWM_GData;  // Source/LEDRGBCtrl.v(24)
  wire [31:0] PWM_RData;  // Source/LEDRGBCtrl.v(23)
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
    .OUT(LEDs[2]));  // Source/LEDRGBCtrl.v(70)
  PWM G_PWM (
    .CLK(CLK),
    .PWMConData(PWM_GData[31:16]),
    .PWMUpData(16'b0000001111101000),
    .nRST(nRST),
    .OUT(LEDs[1]));  // Source/LEDRGBCtrl.v(55)
  PWM R_PWM (
    .CLK(CLK),
    .PWMConData(PWM_RData[31:16]),
    .PWMUpData(16'b0000001111101000),
    .nRST(nRST),
    .OUT(LEDs[0]));  // Source/LEDRGBCtrl.v(40)
  add_pu32_pu32_o32 add0 (
    .i0(Count_LED),
    .i1(32'b00000000000000000000000000000001),
    .o(n2));  // Source/LEDRGBCtrl.v(19)
  lt_u32_u32 lt0 (
    .ci(1'b1),
    .i0(32'b00001011101110000000000000000000),
    .i1(Count_LED),
    .o(n1));  // Source/LEDRGBCtrl.v(15)
  lt_u32_u32 lt1 (
    .ci(1'b1),
    .i0(Count_LED),
    .i1(32'b00000011111010000000000000000000),
    .o(n4));  // Source/LEDRGBCtrl.v(27)
  lt_u32_u32 lt2 (
    .ci(1'b0),
    .i0(32'b00000011111010000000000000000000),
    .i1(Count_LED),
    .o(n5));  // Source/LEDRGBCtrl.v(28)
  lt_u32_u32 lt3 (
    .ci(1'b1),
    .i0(Count_LED),
    .i1(32'b00000111110100000000000000000000),
    .o(n6));  // Source/LEDRGBCtrl.v(28)
  lt_u32_u32 lt4 (
    .ci(1'b1),
    .i0(32'b00000011111010000000000000000000),
    .i1(Count_LED),
    .o(n10));  // Source/LEDRGBCtrl.v(30)
  lt_u32_u32 lt5 (
    .ci(1'b0),
    .i0(32'b00000111110100000000000000000000),
    .i1(Count_LED),
    .o(n13));  // Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w32 mux0 (
    .i0(n2),
    .i1(32'b00000000000000000000000000000000),
    .sel(n1),
    .o(n3));  // Source/LEDRGBCtrl.v(20)
  binary_mux_s1_w32 mux1 (
    .i0(32'b00000000000000000000000000000000),
    .i1(n8),
    .sel(n7),
    .o(n9));  // Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w32 mux2 (
    .i0(n9),
    .i1(Count_LED),
    .sel(n4),
    .o({PWM_RData[31:16],open_n0,open_n1,open_n2,open_n3,open_n4,open_n5,open_n6,open_n7,open_n8,open_n9,open_n10,open_n11,open_n12,open_n13,open_n14,open_n15}));  // Source/LEDRGBCtrl.v(28)
  binary_mux_s1_w32 mux3 (
    .i0(32'b00000000000000000000000000000000),
    .i1(n14),
    .sel(n13),
    .o(n15));  // Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w32 mux4 (
    .i0(n15),
    .i1(n12),
    .sel(n11),
    .o({PWM_GData[31:16],open_n16,open_n17,open_n18,open_n19,open_n20,open_n21,open_n22,open_n23,open_n24,open_n25,open_n26,open_n27,open_n28,open_n29,open_n30,open_n31}));  // Source/LEDRGBCtrl.v(31)
  binary_mux_s1_w32 mux5 (
    .i0(32'b00000000000000000000000000000000),
    .i1(n17),
    .sel(n13),
    .o(n18));  // Source/LEDRGBCtrl.v(34)
  binary_mux_s1_w32 mux6 (
    .i0(n18),
    .i1(n16),
    .sel(n4),
    .o({PWM_BData[31:16],open_n32,open_n33,open_n34,open_n35,open_n36,open_n37,open_n38,open_n39,open_n40,open_n41,open_n42,open_n43,open_n44,open_n45,open_n46,open_n47}));  // Source/LEDRGBCtrl.v(34)
  reg_ar_as_w32 reg0 (
    .clk(CLK),
    .d(n3),
    .reset({n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0}),
    .set(32'b00000000000000000000000000000000),
    .q(Count_LED));  // Source/LEDRGBCtrl.v(20)
  add_pu32_mu32_o32 sub0 (
    .i0(32'b00000111110100000000000000000000),
    .i1(Count_LED),
    .o(n8));  // Source/LEDRGBCtrl.v(28)
  add_pu32_mu32_o32 sub1 (
    .i0(Count_LED),
    .i1(32'b00000011111010000000000000000000),
    .o(n12));  // Source/LEDRGBCtrl.v(30)
  add_pu32_mu32_o32 sub2 (
    .i0(32'b00001011101110000000000000000000),
    .i1(Count_LED),
    .o(n14));  // Source/LEDRGBCtrl.v(31)
  add_pu32_mu32_o32 sub3 (
    .i0(32'b00000011111010000000000000000000),
    .i1(Count_LED),
    .o(n16));  // Source/LEDRGBCtrl.v(33)
  add_pu32_mu32_o32 sub4 (
    .i0(Count_LED),
    .i1(32'b00000111110100000000000000000000),
    .o(n17));  // Source/LEDRGBCtrl.v(34)
  not u2 (n0, nRST);  // Source/LEDRGBCtrl.v(12)
  and u3 (n7, n5, n6);  // Source/LEDRGBCtrl.v(28)
  and u4 (n11, n10, n6);  // Source/LEDRGBCtrl.v(30)

endmodule 

module UARTSender  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(1)
  (
  Data,
  FIFO_Data,
  FIFO_Empty,
  UART_CLK,
  nRST,
  FIFO_CLK,
  FIFO_RE,
  UART_TX
  );

  input [9:0] Data;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(6)
  input [7:0] FIFO_Data;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(11)
  input FIFO_Empty;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(10)
  input UART_CLK;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(3)
  input nRST;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(4)
  output FIFO_CLK;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(8)
  output FIFO_RE;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(9)
  output UART_TX;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(13)

  parameter F_CLK_N = 4'b0010;
  parameter F_CLK_P = 4'b0011;
  parameter IDEL = 4'b0001;
  parameter READ_N = 4'b1000;
  parameter READ_P = 4'b1001;
  parameter SEND = 4'b0101;
  parameter SENDIDE = 4'b0111;
  parameter START = 4'b0100;
  parameter STOP = 4'b0110;
  wire [7:0] Count;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(16)
  wire [7:0] SendBuff;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(18)
  wire [3:0] UART_FSM;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(33)
  wire [3:0] n11;
  wire [3:0] n13;
  wire [7:0] n16;
  wire [6:0] n18;
  wire [7:0] n19;
  wire [3:0] n20;
  wire [3:0] n21;
  wire [7:0] n22;
  wire [7:0] n25;
  wire [7:0] n27;
  wire [3:0] n7;
  wire [3:0] n9;
  wire UART_TX_reg;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(17)
  wire n0;
  wire n1;
  wire n10;
  wire n12;
  wire n14;
  wire n15;
  wire n17;
  wire n2;
  wire n23;
  wire n24;
  wire n26;
  wire n3;
  wire n4;
  wire n5;
  wire n6;
  wire n8;

  AL_DFF FIFO_CLK_reg (
    .clk(UART_CLK),
    .d(n24),
    .reset(n0),
    .set(1'b0),
    .q(FIFO_CLK));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  AL_DFF FIFO_RE_reg (
    .clk(UART_CLK),
    .d(n26),
    .reset(n0),
    .set(1'b0),
    .q(FIFO_RE));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  AL_DFF UART_TX_reg_reg (
    .clk(UART_CLK),
    .d(n23),
    .reset(1'b0),
    .set(n0),
    .q(UART_TX_reg));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  add_pu8_pu8_o8 add0 (
    .i0(Count),
    .i1(8'b00000001),
    .o(n16));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(88)
  lt_u8_u8 lt0 (
    .ci(1'b0),
    .i0(Count),
    .i1(8'b00000111),
    .o(n15));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(85)
  binary_mux_s1_w4 mux0 (
    .i0(UART_FSM),
    .i1(4'b1001),
    .sel(n6),
    .o(n7));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(68)
  binary_mux_s1_w4 mux1 (
    .i0(n7),
    .i1(4'b0001),
    .sel(n5),
    .o(n9));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(68)
  binary_mux_s4_w8 mux10 (
    .i0(SendBuff),
    .i1(SendBuff),
    .i10(SendBuff),
    .i11(SendBuff),
    .i12(SendBuff),
    .i13(SendBuff),
    .i14(SendBuff),
    .i15(SendBuff),
    .i2(SendBuff),
    .i3(SendBuff),
    .i4(FIFO_Data),
    .i5({SendBuff[7],n18}),
    .i6(SendBuff),
    .i7(SendBuff),
    .i8(SendBuff),
    .i9(SendBuff),
    .sel(UART_FSM),
    .o(n25));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(107)
  binary_mux_s4_w1 mux11 (
    .i0(FIFO_RE),
    .i1(FIFO_RE),
    .i10(FIFO_RE),
    .i11(FIFO_RE),
    .i12(FIFO_RE),
    .i13(FIFO_RE),
    .i14(FIFO_RE),
    .i15(FIFO_RE),
    .i2(n14),
    .i3(FIFO_RE),
    .i4(FIFO_RE),
    .i5(FIFO_RE),
    .i6(FIFO_RE),
    .i7(FIFO_RE),
    .i8(FIFO_RE),
    .i9(FIFO_RE),
    .sel(UART_FSM),
    .o(n26));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(107)
  binary_mux_s1_w7 mux12 (
    .i0(SendBuff[6:0]),
    .i1(SendBuff[7:1]),
    .sel(n15),
    .o(n18));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(92)
  binary_mux_s1_w8 mux13 (
    .i0(n25),
    .i1(SendBuff),
    .sel(n0),
    .o(n27));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  binary_mux_s1_w4 mux2 (
    .i0(n9),
    .i1(4'b0011),
    .sel(n4),
    .o(n11));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(68)
  binary_mux_s1_w4 mux3 (
    .i0(n11),
    .i1(4'b1001),
    .sel(n2),
    .o(n13));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(68)
  binary_mux_s1_w8 mux4 (
    .i0(Count),
    .i1(n16),
    .sel(n15),
    .o(n19));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(92)
  binary_mux_s1_w4 mux5 (
    .i0(4'b0110),
    .i1(UART_FSM),
    .sel(n15),
    .o(n20));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(92)
  binary_mux_s4_w4 mux6 (
    .i0(4'b0001),
    .i1(4'b0011),
    .i10(4'b0001),
    .i11(4'b0001),
    .i12(4'b0001),
    .i13(4'b0001),
    .i14(4'b0001),
    .i15(4'b0001),
    .i2(n13),
    .i3(4'b0010),
    .i4(4'b0101),
    .i5(n20),
    .i6(4'b0111),
    .i7(4'b0010),
    .i8(4'b0100),
    .i9(4'b1000),
    .sel(UART_FSM),
    .o(n21));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(107)
  binary_mux_s4_w8 mux7 (
    .i0(8'b00000000),
    .i1(Count),
    .i10(8'b00000000),
    .i11(8'b00000000),
    .i12(8'b00000000),
    .i13(8'b00000000),
    .i14(8'b00000000),
    .i15(8'b00000000),
    .i2(Count),
    .i3(Count),
    .i4(8'b00000000),
    .i5(n19),
    .i6(Count),
    .i7(Count),
    .i8(Count),
    .i9(Count),
    .sel(UART_FSM),
    .o(n22));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(107)
  binary_mux_s4_w1 mux8 (
    .i0(1'b1),
    .i1(1'b1),
    .i10(1'b1),
    .i11(1'b1),
    .i12(1'b1),
    .i13(1'b1),
    .i14(1'b1),
    .i15(1'b1),
    .i2(UART_TX_reg),
    .i3(UART_TX_reg),
    .i4(1'b0),
    .i5(n17),
    .i6(1'b1),
    .i7(1'b1),
    .i8(UART_TX_reg),
    .i9(UART_TX_reg),
    .sel(UART_FSM),
    .o(n23));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(107)
  binary_mux_s4_w1 mux9 (
    .i0(FIFO_CLK),
    .i1(FIFO_CLK),
    .i10(FIFO_CLK),
    .i11(FIFO_CLK),
    .i12(FIFO_CLK),
    .i13(FIFO_CLK),
    .i14(FIFO_CLK),
    .i15(FIFO_CLK),
    .i2(1'b0),
    .i3(1'b1),
    .i4(FIFO_CLK),
    .i5(FIFO_CLK),
    .i6(FIFO_CLK),
    .i7(FIFO_CLK),
    .i8(1'b0),
    .i9(1'b1),
    .sel(UART_FSM),
    .o(n24));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(107)
  reg_ar_as_w4 reg0 (
    .clk(UART_CLK),
    .d(n21),
    .reset({n0,n0,n0,1'b0}),
    .set({3'b000,n0}),
    .q(UART_FSM));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w8 reg1 (
    .clk(UART_CLK),
    .d(n27),
    .reset(8'b00000000),
    .set(8'b00000000),
    .q(SendBuff));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w8 reg2 (
    .clk(UART_CLK),
    .d(n22),
    .reset({n0,n0,n0,n0,n0,n0,n0,n0}),
    .set(8'b00000000),
    .q(Count));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  AL_MUX u10 (
    .i0(FIFO_RE),
    .i1(1'b0),
    .sel(n6),
    .o(n8));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(68)
  AL_MUX u11 (
    .i0(n8),
    .i1(FIFO_RE),
    .sel(n5),
    .o(n10));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(68)
  AL_MUX u12 (
    .i0(n10),
    .i1(1'b1),
    .sel(n4),
    .o(n12));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(68)
  AL_MUX u13 (
    .i0(n12),
    .i1(FIFO_RE),
    .sel(n2),
    .o(n14));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(68)
  AL_MUX u14 (
    .i0(UART_TX_reg),
    .i1(SendBuff[0]),
    .sel(n15),
    .o(n17));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(92)
  buf u2 (UART_TX, UART_TX_reg);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(20)
  not u3 (n0, nRST);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(36)
  not u4 (n1, FIFO_Empty);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(55)
  and u5 (n2, n1, FIFO_RE);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(55)
  not u6 (n3, FIFO_RE);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(58)
  and u7 (n4, n1, n3);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(58)
  and u8 (n5, FIFO_Empty, n3);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(62)
  and u9 (n6, FIFO_Empty, FIFO_RE);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(65)

endmodule 

module UART_CTRL  // Source/UART_CTRL.v(1)
  (
  CLK,
  FIFO_FULL,
  nRST,
  FIFO_CLK,
  FIFO_Data,
  FIFO_WE
  );

  input CLK;  // Source/UART_CTRL.v(3)
  input FIFO_FULL;  // Source/UART_CTRL.v(8)
  input nRST;  // Source/UART_CTRL.v(4)
  output FIFO_CLK;  // Source/UART_CTRL.v(6)
  output [7:0] FIFO_Data;  // Source/UART_CTRL.v(9)
  output FIFO_WE;  // Source/UART_CTRL.v(7)

  wire [6:0] Addr;  // Source/UART_CTRL.v(13)
  wire [6:0] n2;
  wire [6:0] n3;
  wire [6:0] n4;
  wire n0;
  wire n1;

  ROMx8x64 ROM1 (
    .addra(Addr[5:0]),
    .clka(CLK),
    .rsta(n0),
    .doa(FIFO_Data));  // Source/UART_CTRL.v(30)
  add_pu7_pu7_o7 add0 (
    .i0(Addr),
    .i1(7'b0000001),
    .o(n2));  // Source/UART_CTRL.v(23)
  lt_u7_u7 lt0 (
    .ci(1'b1),
    .i0(7'b1000000),
    .i1(Addr),
    .o(n1));  // Source/UART_CTRL.v(19)
  binary_mux_s1_w7 mux0 (
    .i0(n2),
    .i1(Addr),
    .sel(FIFO_FULL),
    .o(n3));  // Source/UART_CTRL.v(24)
  binary_mux_s1_w7 mux1 (
    .i0(n3),
    .i1(7'b0000000),
    .sel(n1),
    .o(n4));  // Source/UART_CTRL.v(24)
  reg_ar_as_w7 reg0 (
    .clk(CLK),
    .d(n4),
    .reset({n0,n0,n0,n0,n0,n0,n0}),
    .set(7'b0000000),
    .q(Addr));  // Source/UART_CTRL.v(24)
  not u2 (n0, nRST);  // Source/UART_CTRL.v(16)
  not u3 (FIFO_WE, FIFO_FULL);  // Source/UART_CTRL.v(27)
  buf u4 (FIFO_CLK, CLK);  // Source/UART_CTRL.v(28)

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

module eq_w32
  (
  i0,
  i1,
  o
  );

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

module add_pu8_pu8_o8
  (
  i0,
  i1,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  output [7:0] o;



endmodule 

module lt_u8_u8
  (
  ci,
  i0,
  i1,
  o
  );

  input ci;
  input [7:0] i0;
  input [7:0] i1;
  output o;



endmodule 

module binary_mux_s1_w4
  (
  i0,
  i1,
  sel,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  input sel;
  output [3:0] o;



endmodule 

module binary_mux_s4_w8
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  input [7:0] i10;
  input [7:0] i11;
  input [7:0] i12;
  input [7:0] i13;
  input [7:0] i14;
  input [7:0] i15;
  input [7:0] i2;
  input [7:0] i3;
  input [7:0] i4;
  input [7:0] i5;
  input [7:0] i6;
  input [7:0] i7;
  input [7:0] i8;
  input [7:0] i9;
  input [3:0] sel;
  output [7:0] o;



endmodule 

module binary_mux_s4_w1
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input i0;
  input i1;
  input i10;
  input i11;
  input i12;
  input i13;
  input i14;
  input i15;
  input i2;
  input i3;
  input i4;
  input i5;
  input i6;
  input i7;
  input i8;
  input i9;
  input [3:0] sel;
  output o;



endmodule 

module binary_mux_s1_w7
  (
  i0,
  i1,
  sel,
  o
  );

  input [6:0] i0;
  input [6:0] i1;
  input sel;
  output [6:0] o;



endmodule 

module binary_mux_s1_w8
  (
  i0,
  i1,
  sel,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  input sel;
  output [7:0] o;



endmodule 

module binary_mux_s4_w4
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  input [3:0] i10;
  input [3:0] i11;
  input [3:0] i12;
  input [3:0] i13;
  input [3:0] i14;
  input [3:0] i15;
  input [3:0] i2;
  input [3:0] i3;
  input [3:0] i4;
  input [3:0] i5;
  input [3:0] i6;
  input [3:0] i7;
  input [3:0] i8;
  input [3:0] i9;
  input [3:0] sel;
  output [3:0] o;



endmodule 

module reg_ar_as_w4
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [3:0] d;
  input en;
  input [3:0] reset;
  input [3:0] set;
  output [3:0] q;



endmodule 

module reg_ar_as_w8
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [7:0] d;
  input en;
  input [7:0] reset;
  input [7:0] set;
  output [7:0] q;



endmodule 

module ROMx8x64  // al_ip/ROM0.v(14)
  (
  addra,
  clka,
  rsta,
  doa
  );

  input [5:0] addra;  // al_ip/ROM0.v(18)
  input clka;  // al_ip/ROM0.v(19)
  input rsta;  // al_ip/ROM0.v(20)
  output [7:0] doa;  // al_ip/ROM0.v(16)


  EG_LOGIC_BRAM #(
    //.FORCE_KEEP("OFF"),
    //.INIT_FILE("ROM0.mif"),
    .ADDR_WIDTH_A(6),
    .ADDR_WIDTH_B(6),
    .BYTE_A(1),
    .BYTE_B(1),
    .BYTE_ENABLE(0),
    .DATA_DEPTH_A(64),
    .DATA_DEPTH_B(64),
    .DATA_WIDTH_A(8),
    .DATA_WIDTH_B(8),
    .DEBUGGABLE("NO"),
    .FILL_ALL("NONE"),
    .IMPLEMENT("9K"),
    .MODE("SP"),
    .PACKABLE("NO"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst (
    .addra(addra),
    .addrb(6'b000000),
    .bea(1'b0),
    .beb(1'b0),
    .cea(1'b1),
    .ceb(1'b0),
    .clka(clka),
    .clkb(1'b0),
    .dia(8'b00000000),
    .dib(8'b00000000),
    .ocea(1'b0),
    .oceb(1'b0),
    .rsta(rsta),
    .rstb(1'b0),
    .wea(1'b0),
    .web(1'b0),
    .doa(doa));  // al_ip/ROM0.v(39)

endmodule 

module add_pu7_pu7_o7
  (
  i0,
  i1,
  o
  );

  input [6:0] i0;
  input [6:0] i1;
  output [6:0] o;



endmodule 

module lt_u7_u7
  (
  ci,
  i0,
  i1,
  o
  );

  input ci;
  input [6:0] i0;
  input [6:0] i1;
  output o;



endmodule 

module reg_ar_as_w7
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [6:0] d;
  input en;
  input [6:0] reset;
  input [6:0] set;
  output [6:0] q;



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

