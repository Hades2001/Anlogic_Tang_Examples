// Verilog netlist created by TD v4.4.433
// Thu May  9 16:42:17 2019

`timescale 1ns / 1ps
module TOP  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(1)
  (
  clk,
  nRST,
  GPIO,
  LCDBK,
  LCD_B,
  LCD_CLK,
  LCD_DEN,
  LCD_G,
  LCD_HYNC,
  LCD_R,
  LCD_SYNC,
  LED
  );

  input clk;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(21)
  input nRST;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(22)
  output GPIO;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(26)
  output LCDBK;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(27)
  output [7:0] LCD_B;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(34)
  output LCD_CLK;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(28)
  output LCD_DEN;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(31)
  output [7:0] LCD_G;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(33)
  output LCD_HYNC;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(29)
  output [7:0] LCD_R;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(32)
  output LCD_SYNC;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(30)
  output [2:0] LED;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(24)

  wire [7:0] FIFO_DI;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(58)
  wire [15:0] FIFO_DO;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(57)
  wire CLK_100M;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(40)
  wire FIFO_CLK_R;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(51)
  wire FIFO_CLK_W;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(52)
  wire FIFO_EMPTY;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(55)
  wire FIFO_FULL;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(56)
  wire FIFO_RE;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(53)
  wire FIFO_WE;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(54)
  wire PixeClk;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(39)
  wire n0;

  VGAMod D1 (
    .CLK(clk),
    .FIFO_Data(FIFO_DO),
    .FIFO_Empty(FIFO_EMPTY),
    .PixelClk(PixeClk),
    .nRST(nRST),
    .FIFO_CLK(FIFO_CLK_R),
    .FIFO_RE(FIFO_RE),
    .LCD_DE(LCD_DEN),
    .LCD_HSYNC(LCD_HYNC),
    .LCD_VSYNC(LCD_SYNC),
    .VGA_B(LCD_B),
    .VGA_G(LCD_G),
    .VGA_R(LCD_R));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(77)
  DisFIFO FIFO0 (
    .clkr(FIFO_CLK_R),
    .clkw(FIFO_CLK_W),
    .di(FIFO_DI),
    .re(FIFO_RE),
    .rst(n0),
    .we(FIFO_WE),
    .do(FIFO_DO),
    .empty_flag(FIFO_EMPTY),
    .full_flag(FIFO_FULL));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(60)
  LCDPLL PLL1 (
    .refclk(clk),
    .reset(1'b0),
    .clk0_out(PixeClk),
    .clk1_out(CLK_100M));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(42)
  CLK_MOD U1 (
    .CLK(PixeClk),
    .Count_REG(32'b00000001111101111000101001000000),
    .RSTn(nRST),
    .CLK_OUT(LED[1]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(102)
  CLK_MOD U2 (
    .CLK(clk),
    .Count_REG(32'b00000001011011100011011000000000),
    .RSTn(nRST),
    .CLK_OUT(LED[2]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(112)
  buf u10 (LCD_CLK, CLK_100M);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(99)
  buf u11 (GPIO, LCD_DEN);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(100)
  buf u12 (FIFO_DI[3], 1'b1);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(74)
  buf u13 (FIFO_DI[4], 1'b1);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(74)
  buf u14 (FIFO_DI[5], 1'b1);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(74)
  buf u15 (FIFO_DI[6], 1'b1);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(74)
  buf u16 (FIFO_DI[7], 1'b1);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(74)
  buf u2 (FIFO_DI[2], 1'b1);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(74)
  buf u3 (FIFO_DI[1], 1'b1);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(74)
  buf u4 (LCDBK, 1'b1);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(36)
  buf u5 (LED[0], 1'b1);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(37)
  not u6 (n0, nRST);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(62)
  buf u7 (FIFO_CLK_W, clk);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(73)
  buf u8 (FIFO_DI[0], 1'b1);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(74)
  not u9 (FIFO_WE, FIFO_FULL);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(75)

endmodule 

module VGAMod  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(1)
  (
  CLK,
  FIFO_Data,
  FIFO_Empty,
  PixelClk,
  nRST,
  FIFO_CLK,
  FIFO_RE,
  LCD_DE,
  LCD_HSYNC,
  LCD_VSYNC,
  VGA_B,
  VGA_G,
  VGA_R
  );

  input CLK;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(3)
  input [15:0] FIFO_Data;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(19)
  input FIFO_Empty;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(18)
  input PixelClk;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(6)
  input nRST;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(4)
  output FIFO_CLK;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(16)
  output FIFO_RE;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(17)
  output LCD_DE;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(8)
  output LCD_HSYNC;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(9)
  output LCD_VSYNC;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(10)
  output [7:0] VGA_B;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(12)
  output [7:0] VGA_G;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(13)
  output [7:0] VGA_R;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(14)

  // localparam FIFOReEnd = 16'b0000010000100001;
  // localparam FIFOReStart = 16'b0000000011111111;
  // localparam H_BackPorch = 16'b0000000100000000;
  // localparam HightPixel = 16'b0000000111100000;
  // localparam LineForVS = 16'b0000001000111010;
  // localparam PixelForHS = 16'b0000010100100000;
  // localparam V_BackPorch = 16'b0000000000101101;
  // localparam WidthPixel = 16'b0000001100100000;
  wire [15:0] LineCount;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(24)
  wire [15:0] PixelCount;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(23)
  wire [15:0] n2;
  wire [15:0] n4;
  wire [15:0] n5;
  wire [15:0] n6;
  wire [15:0] n7;
  wire [15:0] n8;
  wire n0;
  wire n1;
  wire n10;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire n21;
  wire n22;
  wire n23;
  wire n24;
  wire n3;
  wire n9;

  add_pu16_pu16_o16 add0 (
    .i0(LineCount),
    .i1(16'b0000000000000001),
    .o(n2));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(45)
  add_pu16_pu16_o16 add1 (
    .i0(PixelCount),
    .i1(16'b0000000000000001),
    .o(n4));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(52)
  eq_w16 eq0 (
    .i0(PixelCount),
    .i1(16'b0000010100100000),
    .o(n1));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(43)
  eq_w16 eq1 (
    .i0(LineCount),
    .i1(16'b0000001000111010),
    .o(n3));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(47)
  lt_u16_u16 lt0 (
    .ci(1'b1),
    .i0(16'b0000000100000100),
    .i1(PixelCount),
    .o(n9));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(56)
  lt_u16_u16 lt1 (
    .ci(1'b0),
    .i0(PixelCount),
    .i1(16'b0000010100011011),
    .o(n10));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(56)
  lt_u16_u16 lt2 (
    .ci(1'b1),
    .i0(16'b0000000000101111),
    .i1(LineCount),
    .o(n12));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(57)
  lt_u16_u16 lt3 (
    .ci(1'b0),
    .i0(LineCount),
    .i1(16'b0000001000110101),
    .o(n13));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(57)
  lt_u16_u16 lt4 (
    .ci(1'b1),
    .i0(16'b0000000100000000),
    .i1(PixelCount),
    .o(n15));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(59)
  lt_u16_u16 lt5 (
    .ci(1'b1),
    .i0(PixelCount),
    .i1(16'b0000010100100000),
    .o(n16));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(60)
  lt_u16_u16 lt6 (
    .ci(1'b1),
    .i0(16'b0000000000101101),
    .i1(LineCount),
    .o(n18));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(61)
  lt_u16_u16 lt7 (
    .ci(1'b0),
    .i0(LineCount),
    .i1(16'b0000001000111010),
    .o(n20));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(62)
  lt_u16_u16 lt8 (
    .ci(1'b1),
    .i0(16'b0000000011111111),
    .i1(PixelCount),
    .o(n21));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(65)
  lt_u16_u16 lt9 (
    .ci(1'b1),
    .i0(PixelCount),
    .i1(16'b0000010000100001),
    .o(n22));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(65)
  binary_mux_s1_w16 mux0 (
    .i0(LineCount),
    .i1(16'b0000000000000000),
    .sel(n3),
    .o(n5));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  binary_mux_s1_w16 mux1 (
    .i0(n4),
    .i1(16'b0000000000000000),
    .sel(n3),
    .o(n6));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  binary_mux_s1_w16 mux2 (
    .i0(n6),
    .i1(16'b0000000000000000),
    .sel(n1),
    .o(n7));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  binary_mux_s1_w16 mux3 (
    .i0(n5),
    .i1(n2),
    .sel(n1),
    .o(n8));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  binary_mux_s1_w8 mux4 (
    .i0({FIFO_Data[15:11],3'b111}),
    .i1(8'b11111111),
    .sel(FIFO_Empty),
    .o(VGA_R));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(67)
  binary_mux_s1_w8 mux5 (
    .i0({FIFO_Data[10:5],2'b11}),
    .i1(8'b00000000),
    .sel(FIFO_Empty),
    .o(VGA_G));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(68)
  binary_mux_s1_w8 mux6 (
    .i0({FIFO_Data[4:0],3'b111}),
    .i1(8'b00000000),
    .sel(FIFO_Empty),
    .o(VGA_B));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(69)
  reg_ar_as_w16 reg0 (
    .clk(PixelClk),
    .d(n7),
    .reset({n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0}),
    .set(16'b0000000000000000),
    .q(PixelCount));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  reg_ar_as_w16 reg1 (
    .clk(PixelClk),
    .d(n8),
    .reset({n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0}),
    .set(16'b0000000000000000),
    .q(LineCount));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  buf u10 (FIFO_CLK, PixelClk);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(64)
  and u11 (n23, n21, n22);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(65)
  not u12 (n24, FIFO_Empty);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(65)
  and u13 (FIFO_RE, n23, n24);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(65)
  not u2 (n0, nRST);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(39)
  and u3 (n11, n9, n10);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(56)
  not u4 (LCD_HSYNC, n11);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(56)
  and u5 (n14, n12, n13);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(57)
  not u6 (LCD_VSYNC, n14);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(57)
  and u7 (n17, n15, n16);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(60)
  and u8 (n19, n17, n18);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(61)
  and u9 (LCD_DE, n19, n20);  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(62)

endmodule 

module DisFIFO  // al_ip/DisFIFO.v(14)
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

  input clkr;  // al_ip/DisFIFO.v(25)
  input clkw;  // al_ip/DisFIFO.v(24)
  input [7:0] di;  // al_ip/DisFIFO.v(23)
  input re;  // al_ip/DisFIFO.v(25)
  input rst;  // al_ip/DisFIFO.v(22)
  input we;  // al_ip/DisFIFO.v(24)
  output [15:0] do;  // al_ip/DisFIFO.v(27)
  output empty_flag;  // al_ip/DisFIFO.v(28)
  output full_flag;  // al_ip/DisFIFO.v(29)


  EG_LOGIC_FIFO #(
    .AE(6),
    .AF(2042),
    .ASYNC_RESET_RELEASE("SYNC"),
    .DATA_DEPTH_R(1024),
    .DATA_DEPTH_W(2048),
    .DATA_WIDTH_R(16),
    .DATA_WIDTH_W(8),
    .E(0),
    .ENDIAN("BIG"),
    .F(2048),
    .GSR("DISABLE"),
    .MODE("FIFO8K"),
    .REGMODE_R("NOREG"),
    .REGMODE_W("NOREG"),
    .RESETMODE("ASYNC"))
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
    .full_flag(full_flag));  // al_ip/DisFIFO.v(41)

endmodule 

module LCDPLL  // al_ip/LCDPLL.v(24)
  (
  refclk,
  reset,
  clk0_out,
  clk1_out,
  clk2_out
  );

  input refclk;  // al_ip/LCDPLL.v(30)
  input reset;  // al_ip/LCDPLL.v(31)
  output clk0_out;  // al_ip/LCDPLL.v(32)
  output clk1_out;  // al_ip/LCDPLL.v(33)
  output clk2_out;  // al_ip/LCDPLL.v(34)

  wire clk0_buf;  // al_ip/LCDPLL.v(36)

  EG_LOGIC_BUFG bufg_feedback (
    .i(clk0_buf),
    .o(clk0_out));  // al_ip/LCDPLL.v(38)
  EG_PHY_PLL #(
    .CLKC0_CPHASE(29),
    .CLKC0_DIV(30),
    .CLKC0_DIV2_ENABLE("DISABLE"),
    .CLKC0_ENABLE("ENABLE"),
    .CLKC0_FPHASE(0),
    .CLKC1_CPHASE(9),
    .CLKC1_DIV(10),
    .CLKC1_DIV2_ENABLE("DISABLE"),
    .CLKC1_ENABLE("ENABLE"),
    .CLKC1_FPHASE(0),
    .CLKC2_CPHASE(19),
    .CLKC2_DIV(20),
    .CLKC2_DIV2_ENABLE("DISABLE"),
    .CLKC2_ENABLE("ENABLE"),
    .CLKC2_FPHASE(0),
    .CLKC3_CPHASE(1),
    .CLKC3_DIV(1),
    .CLKC3_DIV2_ENABLE("DISABLE"),
    .CLKC3_ENABLE("DISABLE"),
    .CLKC3_FPHASE(0),
    .CLKC4_CPHASE(1),
    .CLKC4_DIV(1),
    .CLKC4_DIV2_ENABLE("DISABLE"),
    .CLKC4_ENABLE("DISABLE"),
    .CLKC4_FPHASE(0),
    .DERIVE_PLL_CLOCKS("DISABLE"),
    .DPHASE_SOURCE("DISABLE"),
    .DYNCFG("DISABLE"),
    .FBCLK_DIV(18),
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
    .REFCLK_DIV(13),
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
    .clkc({open_n0,open_n1,clk2_out,clk1_out,clk0_buf}));  // al_ip/LCDPLL.v(69)

endmodule 

module CLK_MOD  // source/CLK_MOD.v(1)
  (
  CLK,
  Count_REG,
  RSTn,
  CLK_OUT
  );

  input CLK;  // source/CLK_MOD.v(11)
  input [31:0] Count_REG;  // source/CLK_MOD.v(14)
  input RSTn;  // source/CLK_MOD.v(12)
  output CLK_OUT;  // source/CLK_MOD.v(17)

  wire [31:0] Count;  // source/CLK_MOD.v(15)
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
    .q(CLK_OUT));  // source/CLK_MOD.v(32)
  add_pu32_pu32_o32 add0 (
    .i0(Count),
    .i1(32'b00000000000000000000000000000001),
    .o(n3));  // source/CLK_MOD.v(32)
  eq_w32 eq0 (
    .i0(Count),
    .i1(Count_REG),
    .o(n1));  // source/CLK_MOD.v(26)
  binary_mux_s1_w32 mux0 (
    .i0(n3),
    .i1(32'b00000000000000000000000000000000),
    .sel(n1),
    .o(n5));  // source/CLK_MOD.v(32)
  reg_ar_as_w32 reg0 (
    .clk(CLK),
    .d(n5),
    .reset({n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0}),
    .set(32'b00000000000000000000000000000000),
    .q(Count));  // source/CLK_MOD.v(32)
  not u2 (n0, RSTn);  // source/CLK_MOD.v(21)
  not u3 (n2, CLK_OUT);  // source/CLK_MOD.v(28)
  AL_MUX u4 (
    .i0(CLK_OUT),
    .i1(n2),
    .sel(n1),
    .o(n4));  // source/CLK_MOD.v(32)

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

module eq_w16
  (
  i0,
  i1,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  output o;



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

