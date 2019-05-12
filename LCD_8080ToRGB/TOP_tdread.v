// Verilog netlist created by TD v4.4.433
// Sun May 12 23:48:04 2019

`timescale 1ns / 1ps
module TOP  // source/TOP.v(1)
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

  input clk;  // source/TOP.v(21)
  input nRST;  // source/TOP.v(22)
  output GPIO;  // source/TOP.v(26)
  output LCDBK;  // source/TOP.v(27)
  output [7:0] LCD_B;  // source/TOP.v(34)
  output LCD_CLK;  // source/TOP.v(28)
  output LCD_DEN;  // source/TOP.v(31)
  output [7:0] LCD_G;  // source/TOP.v(33)
  output LCD_HYNC;  // source/TOP.v(29)
  output [7:0] LCD_R;  // source/TOP.v(32)
  output LCD_SYNC;  // source/TOP.v(30)
  output [2:0] LED;  // source/TOP.v(24)

  wire [7:0] FIFO_DI;  // source/TOP.v(62)
  wire [15:0] FIFO_DO;  // source/TOP.v(61)
  wire CLK_100M;  // source/TOP.v(41)
  wire CLK_33M;  // source/TOP.v(40)
  wire FIFO_CLK_R;  // source/TOP.v(55)
  wire FIFO_CLK_W;  // source/TOP.v(56)
  wire FIFO_EMPTY;  // source/TOP.v(59)
  wire FIFO_RE;  // source/TOP.v(57)
  wire FIFO_RST;  // source/TOP.v(54)
  wire FIFO_WE;  // source/TOP.v(58)
  wire PixeClk;  // source/TOP.v(39)

  VGAMod D1 (
    .CLK(clk),
    .FIFO_Data(FIFO_DO),
    .FIFO_Empty(FIFO_EMPTY),
    .PixelClk(PixeClk),
    .nRST(nRST),
    .FIFO_CLK(FIFO_CLK_R),
    .FIFO_RE(FIFO_RE),
    .FIFO_RST(FIFO_RST),
    .LCD_B(LCD_B),
    .LCD_DE(LCD_DEN),
    .LCD_G(LCD_G),
    .LCD_HSYNC(LCD_HYNC),
    .LCD_R(LCD_R),
    .LCD_VSYNC(LCD_SYNC));  // source/TOP.v(93)
  DisFIFO FIFO0 (
    .clkr(FIFO_CLK_R),
    .clkw(FIFO_CLK_W),
    .di(FIFO_DI),
    .re(FIFO_RE),
    .rst(FIFO_RST),
    .we(FIFO_WE),
    .do(FIFO_DO),
    .empty_flag(FIFO_EMPTY));  // source/TOP.v(64)
  LCDPLL PLL1 (
    .refclk(clk),
    .reset(1'b0),
    .clk0_out(CLK_33M),
    .clk1_out(CLK_100M));  // source/TOP.v(43)
  CLK_MOD U1 (
    .CLK(PixeClk),
    .Count_REG(32'b00000001111101111000101001000000),
    .RSTn(nRST),
    .CLK_OUT(LED[1]));  // source/TOP.v(119)
  CLK_MOD U2 (
    .CLK(clk),
    .Count_REG(32'b00000001011011100011011000000000),
    .RSTn(nRST),
    .CLK_OUT(LED[2]));  // source/TOP.v(129)
  LCDCTRL U4 (
    .CLK(CLK_100M),
    .HSYNC(LCD_HYNC),
    .VSYNC(LCD_SYNC),
    .nRST(nRST),
    .FIFOWe(FIFO_WE),
    .RGBData(FIFO_DI));  // source/TOP.v(77)
  buf u2 (LCDBK, 1'b1);  // source/TOP.v(36)
  buf u3 (LED[0], 1'b1);  // source/TOP.v(37)
  buf u4 (PixeClk, CLK_33M);  // source/TOP.v(52)
  buf u5 (FIFO_CLK_W, CLK_100M);  // source/TOP.v(91)
  buf u6 (LCD_CLK, PixeClk);  // source/TOP.v(116)
  buf u7 (GPIO, LCD_DEN);  // source/TOP.v(117)

endmodule 

module VGAMod  // source/VGAMod.v(1)
  (
  CLK,
  FIFO_Data,
  FIFO_Empty,
  PixelClk,
  nRST,
  FIFO_CLK,
  FIFO_RE,
  FIFO_RST,
  LCD_B,
  LCD_DE,
  LCD_G,
  LCD_HSYNC,
  LCD_R,
  LCD_VSYNC
  );

  input CLK;  // source/VGAMod.v(3)
  input [15:0] FIFO_Data;  // source/VGAMod.v(21)
  input FIFO_Empty;  // source/VGAMod.v(20)
  input PixelClk;  // source/VGAMod.v(6)
  input nRST;  // source/VGAMod.v(4)
  output FIFO_CLK;  // source/VGAMod.v(18)
  output FIFO_RE;  // source/VGAMod.v(19)
  output FIFO_RST;  // source/VGAMod.v(17)
  output [7:0] LCD_B;  // source/VGAMod.v(13)
  output LCD_DE;  // source/VGAMod.v(8)
  output [7:0] LCD_G;  // source/VGAMod.v(14)
  output LCD_HSYNC;  // source/VGAMod.v(9)
  output [7:0] LCD_R;  // source/VGAMod.v(15)
  output LCD_VSYNC;  // source/VGAMod.v(10)

  // localparam FIFOReEnd = 16'b0000010000100001;
  // localparam FIFOReStart = 16'b0000000011111111;
  // localparam H_BackPorch = 16'b0000000100000000;
  // localparam HightPixel = 16'b0000000111100000;
  // localparam LineForVS = 16'b0000001000111010;
  // localparam PixelForHS = 16'b0000010100100000;
  // localparam V_BackPorch = 16'b0000000000101101;
  // localparam WidthPixel = 16'b0000001100100000;
  wire [15:0] LineCount;  // source/VGAMod.v(26)
  wire [15:0] PixelCount;  // source/VGAMod.v(25)
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
  wire n3;
  wire n9;

  add_pu16_pu16_o16 add0 (
    .i0(LineCount),
    .i1(16'b0000000000000001),
    .o(n2));  // source/VGAMod.v(48)
  add_pu16_pu16_o16 add1 (
    .i0(PixelCount),
    .i1(16'b0000000000000001),
    .o(n4));  // source/VGAMod.v(55)
  eq_w16 eq0 (
    .i0(PixelCount),
    .i1(16'b0000010100100000),
    .o(n1));  // source/VGAMod.v(46)
  eq_w16 eq1 (
    .i0(LineCount),
    .i1(16'b0000001000111010),
    .o(n3));  // source/VGAMod.v(50)
  lt_u16_u16 lt0 (
    .ci(1'b1),
    .i0(16'b0000000000111000),
    .i1(PixelCount),
    .o(n9));  // source/VGAMod.v(59)
  lt_u16_u16 lt1 (
    .ci(1'b0),
    .i0(PixelCount),
    .i1(16'b0000010100011111),
    .o(n10));  // source/VGAMod.v(59)
  lt_u16_u16 lt2 (
    .ci(1'b0),
    .i0(LineCount),
    .i1(16'b0000000000101101),
    .o(LCD_VSYNC));  // source/VGAMod.v(60)
  lt_u16_u16 lt3 (
    .ci(1'b0),
    .i0(PixelCount),
    .i1(16'b0000000000010100),
    .o(FIFO_RST));  // source/VGAMod.v(67)
  lt_u16_u16 lt4 (
    .ci(1'b1),
    .i0(16'b0000000100000000),
    .i1(PixelCount),
    .o(n12));  // source/VGAMod.v(69)
  lt_u16_u16 lt5 (
    .ci(1'b1),
    .i0(PixelCount),
    .i1(16'b0000010100100000),
    .o(n13));  // source/VGAMod.v(70)
  lt_u16_u16 lt6 (
    .ci(1'b1),
    .i0(16'b0000000000101101),
    .i1(LineCount),
    .o(n15));  // source/VGAMod.v(71)
  lt_u16_u16 lt7 (
    .ci(1'b0),
    .i0(LineCount),
    .i1(16'b0000001000111010),
    .o(n17));  // source/VGAMod.v(72)
  lt_u16_u16 lt8 (
    .ci(1'b1),
    .i0(16'b0000000011111111),
    .i1(PixelCount),
    .o(n19));  // source/VGAMod.v(75)
  lt_u16_u16 lt9 (
    .ci(1'b1),
    .i0(PixelCount),
    .i1(16'b0000010000100001),
    .o(n21));  // source/VGAMod.v(75)
  binary_mux_s1_w16 mux0 (
    .i0(LineCount),
    .i1(16'b0000000000000000),
    .sel(n3),
    .o(n5));  // source/VGAMod.v(56)
  binary_mux_s1_w16 mux1 (
    .i0(n4),
    .i1(16'b0000000000000000),
    .sel(n3),
    .o(n6));  // source/VGAMod.v(56)
  binary_mux_s1_w16 mux2 (
    .i0(n6),
    .i1(16'b0000000000000000),
    .sel(n1),
    .o(n7));  // source/VGAMod.v(56)
  binary_mux_s1_w16 mux3 (
    .i0(n5),
    .i1(n2),
    .sel(n1),
    .o(n8));  // source/VGAMod.v(56)
  binary_mux_s1_w8 mux4 (
    .i0({FIFO_Data[15:11],3'b111}),
    .i1(8'b11111111),
    .sel(FIFO_Empty),
    .o(LCD_R));  // source/VGAMod.v(77)
  binary_mux_s1_w8 mux5 (
    .i0({FIFO_Data[10:5],2'b11}),
    .i1(8'b00000000),
    .sel(FIFO_Empty),
    .o(LCD_G));  // source/VGAMod.v(78)
  binary_mux_s1_w8 mux6 (
    .i0({FIFO_Data[4:0],3'b111}),
    .i1(8'b00000000),
    .sel(FIFO_Empty),
    .o(LCD_B));  // source/VGAMod.v(79)
  reg_ar_as_w16 reg0 (
    .clk(PixelClk),
    .d(n7),
    .reset({n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0}),
    .set(16'b0000000000000000),
    .q(PixelCount));  // source/VGAMod.v(56)
  reg_ar_as_w16 reg1 (
    .clk(PixelClk),
    .d(n8),
    .reset({n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0}),
    .set(16'b0000000000000000),
    .q(LineCount));  // source/VGAMod.v(56)
  and u10 (n20, n18, n19);  // source/VGAMod.v(75)
  and u11 (n22, n20, n21);  // source/VGAMod.v(75)
  not u12 (n23, FIFO_Empty);  // source/VGAMod.v(75)
  and u13 (FIFO_RE, n22, n23);  // source/VGAMod.v(75)
  not u2 (n0, nRST);  // source/VGAMod.v(42)
  and u3 (n11, n9, n10);  // source/VGAMod.v(59)
  not u4 (LCD_HSYNC, n11);  // source/VGAMod.v(59)
  and u5 (n14, n12, n13);  // source/VGAMod.v(70)
  and u6 (n16, n14, n15);  // source/VGAMod.v(71)
  and u7 (LCD_DE, n16, n17);  // source/VGAMod.v(72)
  buf u8 (FIFO_CLK, PixelClk);  // source/VGAMod.v(74)
  and u9 (n18, n15, n17);  // source/VGAMod.v(75)

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

module LCDCTRL  // source/LCDCTRL.v(1)
  (
  CLK,
  HSYNC,
  VSYNC,
  nRST,
  FIFOWe,
  RGBData
  );

  input CLK;  // source/LCDCTRL.v(3)
  input HSYNC;  // source/LCDCTRL.v(6)
  input VSYNC;  // source/LCDCTRL.v(7)
  input nRST;  // source/LCDCTRL.v(4)
  output FIFOWe;  // source/LCDCTRL.v(9)
  output [7:0] RGBData;  // source/LCDCTRL.v(11)

  wire [14:0] Addr;  // source/LCDCTRL.v(18)
  wire [15:0] AddrCtrl;  // source/LCDCTRL.v(15)
  wire [15:0] Count;  // source/LCDCTRL.v(47)
  wire [15:0] LineConut;  // source/LCDCTRL.v(16)
  wire [7:0] RomData;  // source/LCDCTRL.v(80)
  wire [15:0] XPos;  // source/LCDCTRL.v(48)
  wire [11:0] n14;
  wire [11:0] n15;
  wire [15:0] n16;
  wire [15:0] n18;
  wire [15:0] n2;
  wire [7:0] n20;
  wire [14:0] n23;
  wire [14:0] n24;
  wire [14:0] n25;
  wire [15:0] n3;
  wire [15:0] n4;
  wire [15:0] n5;
  wire [15:0] n7;
  wire [15:0] n8;
  wire [15:0] n9;
  wire n0;
  wire n1;
  wire n10;
  wire n11;
  wire n12;
  wire n13;
  wire n17;
  wire n19;
  wire n21;
  wire n22;
  wire n26;
  wire n27;
  wire n28;
  wire n29;
  wire n30;
  wire n31;
  wire n32;
  wire n33;
  wire n6;

  ImgROM ROM0 (
    .addra(Addr),
    .clka(CLK),
    .rsta(n0),
    .doa(RomData));  // source/LCDCTRL.v(83)
  add_pu16_pu16_o16 add0 (
    .i0(AddrCtrl),
    .i1(16'b0000000000000001),
    .o(n2));  // source/LCDCTRL.v(31)
  add_pu16_pu16_o16 add1 (
    .i0(LineConut),
    .i1(16'b0000000000000001),
    .o(n7));  // source/LCDCTRL.v(43)
  add_pu12_pu12_o12 add2 (
    .i0(Count[15:4]),
    .i1(12'b000000000001),
    .o(n14));  // source/LCDCTRL.v(59)
  add_pu8_pu8_o8 add3 (
    .i0(XPos[15:8]),
    .i1(8'b00000001),
    .o(n20));  // source/LCDCTRL.v(72)
  add_pu15_pu15_o15 add4 (
    .i0(Addr),
    .i1(15'b000000000000001),
    .o(n23));  // source/LCDCTRL.v(73)
  eq_w16 eq0 (
    .i0(AddrCtrl),
    .i1(16'b0000011001000000),
    .o(n6));  // source/LCDCTRL.v(42)
  eq_w16 eq1 (
    .i0(AddrCtrl),
    .i1(16'b0000000000010100),
    .o(n11));  // source/LCDCTRL.v(58)
  eq_w16 eq2 (
    .i0(LineConut),
    .i1(16'b0000000011001000),
    .o(n12));  // source/LCDCTRL.v(58)
  lt_u16_u16 lt0 (
    .ci(1'b0),
    .i0(AddrCtrl),
    .i1(16'b0000011111010000),
    .o(n1));  // source/LCDCTRL.v(30)
  lt_u16_u16 lt1 (
    .ci(1'b1),
    .i0(16'b0000101010000000),
    .i1(Count),
    .o(n10));  // source/LCDCTRL.v(55)
  lt_u16_u16 lt2 (
    .ci(1'b0),
    .i0(16'b0000010101000000),
    .i1(Count),
    .o(n17));  // source/LCDCTRL.v(63)
  lt_u16_u16 lt3 (
    .ci(1'b1),
    .i0(XPos),
    .i1(AddrCtrl),
    .o(n19));  // source/LCDCTRL.v(72)
  lt_u16_u16 lt4 (
    .ci(1'b0),
    .i0(AddrCtrl),
    .i1({n20,XPos[7:0]}),
    .o(n21));  // source/LCDCTRL.v(72)
  lt_u16_u16 lt5 (
    .ci(1'b0),
    .i0(AddrCtrl),
    .i1(16'b0000011001000000),
    .o(n26));  // source/LCDCTRL.v(78)
  lt_u16_u16 lt6 (
    .ci(1'b0),
    .i0(LineConut),
    .i1(16'b0000000010000001),
    .o(n30));  // source/LCDCTRL.v(91)
  lt_u16_u16 lt7 (
    .ci(1'b1),
    .i0(16'b0000000000000001),
    .i1(LineConut),
    .o(n32));  // source/LCDCTRL.v(91)
  binary_mux_s1_w16 mux0 (
    .i0(AddrCtrl),
    .i1(n2),
    .sel(n1),
    .o(n3));  // source/LCDCTRL.v(32)
  binary_mux_s1_w16 mux1 (
    .i0(n3),
    .i1(16'b0000000000000000),
    .sel(HSYNC),
    .o(n4));  // source/LCDCTRL.v(32)
  binary_mux_s1_w8 mux10 (
    .i0(8'b11111111),
    .i1(RomData),
    .sel(n33),
    .o(RGBData));  // source/LCDCTRL.v(91)
  binary_mux_s1_w16 mux2 (
    .i0(n4),
    .i1(16'b0000000000000000),
    .sel(VSYNC),
    .o(n5));  // source/LCDCTRL.v(32)
  binary_mux_s1_w16 mux3 (
    .i0(LineConut),
    .i1(n7),
    .sel(n6),
    .o(n8));  // source/LCDCTRL.v(44)
  binary_mux_s1_w16 mux4 (
    .i0(n8),
    .i1(16'b0000000000000000),
    .sel(VSYNC),
    .o(n9));  // source/LCDCTRL.v(44)
  binary_mux_s1_w16 mux5 (
    .i0({n15,Count[3:0]}),
    .i1(16'b0000000000000010),
    .sel(n10),
    .o(n16));  // source/LCDCTRL.v(60)
  binary_mux_s1_w16 mux6 (
    .i0(Count),
    .i1(n18),
    .sel(n17),
    .o(XPos));  // source/LCDCTRL.v(63)
  binary_mux_s1_w15 mux7 (
    .i0(Addr),
    .i1(n23),
    .sel(n22),
    .o(n24));  // source/LCDCTRL.v(74)
  binary_mux_s1_w15 mux8 (
    .i0(n24),
    .i1(15'b000000000000000),
    .sel(VSYNC),
    .o(n25));  // source/LCDCTRL.v(74)
  binary_mux_s1_w12 mux9 (
    .i0(Count[15:4]),
    .i1(n14),
    .sel(n13),
    .o(n15));  // source/LCDCTRL.v(60)
  reg_ar_as_w16 reg0 (
    .clk(CLK),
    .d(n9),
    .reset({n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0}),
    .set(16'b0000000000000000),
    .q(LineConut));  // source/LCDCTRL.v(44)
  reg_ar_as_w15 reg1 (
    .clk(CLK),
    .d(n25),
    .reset({n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0}),
    .set(15'b000000000000000),
    .q(Addr));  // source/LCDCTRL.v(74)
  reg_ar_as_w16 reg2 (
    .clk(CLK),
    .d(n5),
    .reset({n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0}),
    .set(16'b0000000000000000),
    .q(AddrCtrl));  // source/LCDCTRL.v(32)
  reg_ar_as_w16 reg3 (
    .clk(CLK),
    .d(n16),
    .reset({n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,n0,1'b0,n0}),
    .set({14'b00000000000000,n0,1'b0}),
    .q(Count));  // source/LCDCTRL.v(60)
  add_pu16_mu16_o16 sub0 (
    .i0(16'b0000101010000000),
    .i1(Count),
    .o(n18));  // source/LCDCTRL.v(63)
  and u10 (n33, n31, n32);  // source/LCDCTRL.v(91)
  not u2 (n0, nRST);  // source/LCDCTRL.v(21)
  and u3 (n13, n11, n12);  // source/LCDCTRL.v(58)
  and u4 (n22, n19, n21);  // source/LCDCTRL.v(72)
  not u5 (n27, VSYNC);  // source/LCDCTRL.v(78)
  and u6 (n28, n26, n27);  // source/LCDCTRL.v(78)
  not u7 (n29, HSYNC);  // source/LCDCTRL.v(78)
  and u8 (FIFOWe, n28, n29);  // source/LCDCTRL.v(78)
  and u9 (n31, n22, n30);  // source/LCDCTRL.v(91)

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

module ImgROM  // al_ip/ROM.v(14)
  (
  addra,
  clka,
  rsta,
  doa
  );

  input [14:0] addra;  // al_ip/ROM.v(18)
  input clka;  // al_ip/ROM.v(19)
  input rsta;  // al_ip/ROM.v(20)
  output [7:0] doa;  // al_ip/ROM.v(16)


  EG_LOGIC_BRAM #(
    //.FORCE_KEEP("OFF"),
    //.INIT_FILE("NONE"),
    .ADDR_WIDTH_A(15),
    .ADDR_WIDTH_B(15),
    .BYTE_A(1),
    .BYTE_B(1),
    .BYTE_ENABLE(0),
    .DATA_DEPTH_A(32768),
    .DATA_DEPTH_B(32768),
    .DATA_WIDTH_A(8),
    .DATA_WIDTH_B(8),
    .DEBUGGABLE("NO"),
    .FILL_ALL("00000000"),
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
    .addrb(15'b000000000000000),
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
    .doa(doa));  // al_ip/ROM.v(39)

endmodule 

module add_pu12_pu12_o12
  (
  i0,
  i1,
  o
  );

  input [11:0] i0;
  input [11:0] i1;
  output [11:0] o;



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

module add_pu15_pu15_o15
  (
  i0,
  i1,
  o
  );

  input [14:0] i0;
  input [14:0] i1;
  output [14:0] o;



endmodule 

module binary_mux_s1_w15
  (
  i0,
  i1,
  sel,
  o
  );

  input [14:0] i0;
  input [14:0] i1;
  input sel;
  output [14:0] o;



endmodule 

module binary_mux_s1_w12
  (
  i0,
  i1,
  sel,
  o
  );

  input [11:0] i0;
  input [11:0] i1;
  input sel;
  output [11:0] o;



endmodule 

module reg_ar_as_w15
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input [14:0] d;
  input en;
  input [14:0] reset;
  input [14:0] set;
  output [14:0] q;



endmodule 

module add_pu16_mu16_o16
  (
  i0,
  i1,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  output [15:0] o;



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

