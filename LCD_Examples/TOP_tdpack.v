// Verilog netlist created by TD v4.4.433
// Fri May 10 14:30:56 2019

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

  wire [15:0] \D1/LineCount ;  // source/VGAMod.v(26)
  wire [15:0] \D1/PixelCount ;  // source/VGAMod.v(25)
  wire [15:0] \D1/n2 ;
  wire [15:0] \D1/n4 ;
  wire [7:0] FIFO_DI;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(59)
  wire [15:0] FIFO_DO;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(58)
  wire [7:0] LCD_B_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(34)
  wire [7:0] LCD_G_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(33)
  wire [7:0] LCD_R_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(32)
  wire [2:0] LED_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(24)
  wire [31:0] \U1/Count ;  // source/CLK_MOD.v(15)
  wire [31:0] \U1/n3 ;
  wire [31:0] \U2/Count ;  // source/CLK_MOD.v(15)
  wire [31:0] \U2/n3 ;
  wire [14:0] \U4/Addr ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(18)
  wire [15:0] \U4/AddrCtrl ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(15)
  wire [0:1] \U4/Addr_piped ;
  wire [15:0] \U4/Count ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(47)
  wire [15:0] \U4/LineConut ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(16)
  wire [15:0] \U4/XPos ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(48)
  wire [11:0] \U4/n14 ;
  wire [15:0] \U4/n18 ;
  wire [15:0] \U4/n2 ;
  wire [7:0] \U4/n20 ;
  wire [14:0] \U4/n23 ;
  wire [15:0] \U4/n7 ;
  wire CLK_100M;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(40)
  wire \D1/add0/c11 ;
  wire \D1/add0/c15 ;
  wire \D1/add0/c3 ;
  wire \D1/add0/c7 ;
  wire \D1/add1/c11 ;
  wire \D1/add1/c15 ;
  wire \D1/add1/c3 ;
  wire \D1/add1/c7 ;
  wire \D1/lt0_c1 ;
  wire \D1/lt0_c11 ;
  wire \D1/lt0_c13 ;
  wire \D1/lt0_c15 ;
  wire \D1/lt0_c3 ;
  wire \D1/lt0_c5 ;
  wire \D1/lt0_c7 ;
  wire \D1/lt0_c9 ;
  wire \D1/lt1_c1 ;
  wire \D1/lt1_c11 ;
  wire \D1/lt1_c13 ;
  wire \D1/lt1_c15 ;
  wire \D1/lt1_c3 ;
  wire \D1/lt1_c5 ;
  wire \D1/lt1_c7 ;
  wire \D1/lt1_c9 ;
  wire \D1/lt2_c1 ;
  wire \D1/lt2_c11 ;
  wire \D1/lt2_c13 ;
  wire \D1/lt2_c15 ;
  wire \D1/lt2_c3 ;
  wire \D1/lt2_c5 ;
  wire \D1/lt2_c7 ;
  wire \D1/lt2_c9 ;
  wire \D1/lt3_c1 ;
  wire \D1/lt3_c11 ;
  wire \D1/lt3_c13 ;
  wire \D1/lt3_c15 ;
  wire \D1/lt3_c3 ;
  wire \D1/lt3_c5 ;
  wire \D1/lt3_c7 ;
  wire \D1/lt3_c9 ;
  wire \D1/lt4_c1 ;
  wire \D1/lt4_c11 ;
  wire \D1/lt4_c13 ;
  wire \D1/lt4_c15 ;
  wire \D1/lt4_c3 ;
  wire \D1/lt4_c5 ;
  wire \D1/lt4_c7 ;
  wire \D1/lt4_c9 ;
  wire \D1/lt5_c1 ;
  wire \D1/lt5_c11 ;
  wire \D1/lt5_c13 ;
  wire \D1/lt5_c15 ;
  wire \D1/lt5_c3 ;
  wire \D1/lt5_c5 ;
  wire \D1/lt5_c7 ;
  wire \D1/lt5_c9 ;
  wire \D1/lt6_c1 ;
  wire \D1/lt6_c11 ;
  wire \D1/lt6_c13 ;
  wire \D1/lt6_c15 ;
  wire \D1/lt6_c3 ;
  wire \D1/lt6_c5 ;
  wire \D1/lt6_c7 ;
  wire \D1/lt6_c9 ;
  wire \D1/lt7_c1 ;
  wire \D1/lt7_c11 ;
  wire \D1/lt7_c13 ;
  wire \D1/lt7_c15 ;
  wire \D1/lt7_c3 ;
  wire \D1/lt7_c5 ;
  wire \D1/lt7_c7 ;
  wire \D1/lt7_c9 ;
  wire \D1/lt8_c1 ;
  wire \D1/lt8_c11 ;
  wire \D1/lt8_c13 ;
  wire \D1/lt8_c15 ;
  wire \D1/lt8_c3 ;
  wire \D1/lt8_c5 ;
  wire \D1/lt8_c7 ;
  wire \D1/lt8_c9 ;
  wire \D1/lt9_c1 ;
  wire \D1/lt9_c11 ;
  wire \D1/lt9_c13 ;
  wire \D1/lt9_c15 ;
  wire \D1/lt9_c3 ;
  wire \D1/lt9_c5 ;
  wire \D1/lt9_c7 ;
  wire \D1/lt9_c9 ;
  wire \D1/mux2_b0_sel_is_0_o ;
  wire \D1/n0 ;
  wire \D1/n10 ;
  wire \D1/n12 ;
  wire \D1/n13 ;
  wire \D1/n15 ;
  wire \D1/n17 ;
  wire \D1/n19 ;
  wire \D1/n21 ;
  wire \D1/n23 ;
  wire \D1/n9 ;
  wire \FIFO0/logic_fifo_full ;
  wire \FIFO0/logic_fifo_full_neg ;
  wire FIFO_EMPTY;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(56)
  wire FIFO_RE;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(54)
  wire FIFO_RST;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(51)
  wire FIFO_WE;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(55)
  wire GPIO_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(26)
  wire LCD_CLK_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(28)
  wire LCD_HYNC_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(29)
  wire LCD_SYNC_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(30)
  wire \PLL1/clk0_buf ;  // al_ip/LCDPLL.v(36)
  wire \U1/add0/c11 ;
  wire \U1/add0/c15 ;
  wire \U1/add0/c19 ;
  wire \U1/add0/c23 ;
  wire \U1/add0/c27 ;
  wire \U1/add0/c3 ;
  wire \U1/add0/c31 ;
  wire \U1/add0/c7 ;
  wire \U1/n1 ;
  wire \U2/add0/c11 ;
  wire \U2/add0/c15 ;
  wire \U2/add0/c19 ;
  wire \U2/add0/c23 ;
  wire \U2/add0/c27 ;
  wire \U2/add0/c3 ;
  wire \U2/add0/c31 ;
  wire \U2/add0/c7 ;
  wire \U2/n1 ;
  wire \U4/ROM0/inst_doa_i0_000 ;
  wire \U4/ROM0/inst_doa_i0_001 ;
  wire \U4/ROM0/inst_doa_i0_002 ;
  wire \U4/ROM0/inst_doa_i0_003 ;
  wire \U4/ROM0/inst_doa_i0_004 ;
  wire \U4/ROM0/inst_doa_i0_005 ;
  wire \U4/ROM0/inst_doa_i0_006 ;
  wire \U4/ROM0/inst_doa_i0_007 ;
  wire \U4/ROM0/inst_doa_i1_000 ;
  wire \U4/ROM0/inst_doa_i1_001 ;
  wire \U4/ROM0/inst_doa_i1_002 ;
  wire \U4/ROM0/inst_doa_i1_003 ;
  wire \U4/ROM0/inst_doa_i1_004 ;
  wire \U4/ROM0/inst_doa_i1_005 ;
  wire \U4/ROM0/inst_doa_i1_006 ;
  wire \U4/ROM0/inst_doa_i1_007 ;
  wire \U4/ROM0/inst_doa_i2_000 ;
  wire \U4/ROM0/inst_doa_i2_001 ;
  wire \U4/ROM0/inst_doa_i2_002 ;
  wire \U4/ROM0/inst_doa_i2_003 ;
  wire \U4/ROM0/inst_doa_i2_004 ;
  wire \U4/ROM0/inst_doa_i2_005 ;
  wire \U4/ROM0/inst_doa_i2_006 ;
  wire \U4/ROM0/inst_doa_i2_007 ;
  wire \U4/ROM0/inst_doa_i3_000 ;
  wire \U4/ROM0/inst_doa_i3_001 ;
  wire \U4/ROM0/inst_doa_i3_002 ;
  wire \U4/ROM0/inst_doa_i3_003 ;
  wire \U4/ROM0/inst_doa_i3_004 ;
  wire \U4/ROM0/inst_doa_i3_005 ;
  wire \U4/ROM0/inst_doa_i3_006 ;
  wire \U4/ROM0/inst_doa_i3_007 ;
  wire \U4/add0/c11 ;
  wire \U4/add0/c15 ;
  wire \U4/add0/c3 ;
  wire \U4/add0/c7 ;
  wire \U4/add1/c11 ;
  wire \U4/add1/c15 ;
  wire \U4/add1/c3 ;
  wire \U4/add1/c7 ;
  wire \U4/add2/c11 ;
  wire \U4/add2/c3 ;
  wire \U4/add2/c7 ;
  wire \U4/add3/c3 ;
  wire \U4/add3/c7 ;
  wire \U4/add4/c11 ;
  wire \U4/add4/c3 ;
  wire \U4/add4/c7 ;
  wire \U4/lt0_c1 ;
  wire \U4/lt0_c11 ;
  wire \U4/lt0_c13 ;
  wire \U4/lt0_c15 ;
  wire \U4/lt0_c3 ;
  wire \U4/lt0_c5 ;
  wire \U4/lt0_c7 ;
  wire \U4/lt0_c9 ;
  wire \U4/lt1_c1 ;
  wire \U4/lt1_c11 ;
  wire \U4/lt1_c3 ;
  wire \U4/lt1_c5 ;
  wire \U4/lt1_c7 ;
  wire \U4/lt1_c9 ;
  wire \U4/lt2_c1 ;
  wire \U4/lt2_c11 ;
  wire \U4/lt2_c3 ;
  wire \U4/lt2_c5 ;
  wire \U4/lt2_c7 ;
  wire \U4/lt2_c9 ;
  wire \U4/lt3_c1 ;
  wire \U4/lt3_c11 ;
  wire \U4/lt3_c13 ;
  wire \U4/lt3_c15 ;
  wire \U4/lt3_c3 ;
  wire \U4/lt3_c5 ;
  wire \U4/lt3_c7 ;
  wire \U4/lt3_c9 ;
  wire \U4/lt4_c1 ;
  wire \U4/lt4_c11 ;
  wire \U4/lt4_c13 ;
  wire \U4/lt4_c15 ;
  wire \U4/lt4_c3 ;
  wire \U4/lt4_c5 ;
  wire \U4/lt4_c7 ;
  wire \U4/lt4_c9 ;
  wire \U4/lt5_c1 ;
  wire \U4/lt5_c11 ;
  wire \U4/lt5_c13 ;
  wire \U4/lt5_c15 ;
  wire \U4/lt5_c3 ;
  wire \U4/lt5_c5 ;
  wire \U4/lt5_c7 ;
  wire \U4/lt5_c9 ;
  wire \U4/lt6_c1 ;
  wire \U4/lt6_c11 ;
  wire \U4/lt6_c13 ;
  wire \U4/lt6_c15 ;
  wire \U4/lt6_c3 ;
  wire \U4/lt6_c5 ;
  wire \U4/lt6_c7 ;
  wire \U4/lt6_c9 ;
  wire \U4/lt7_c1 ;
  wire \U4/lt7_c11 ;
  wire \U4/lt7_c13 ;
  wire \U4/lt7_c15 ;
  wire \U4/lt7_c3 ;
  wire \U4/lt7_c5 ;
  wire \U4/lt7_c7 ;
  wire \U4/lt7_c9 ;
  wire \U4/mux2_b0_sel_is_0_o ;
  wire \U4/n1 ;
  wire \U4/n10 ;
  wire \U4/n13 ;
  wire \U4/n19 ;
  wire \U4/n21 ;
  wire \U4/n22 ;
  wire \U4/n26 ;
  wire \U4/n30 ;
  wire \U4/n32 ;
  wire \U4/n6_lutinv ;
  wire \U4/sub0/c11 ;
  wire \U4/sub0/c3 ;
  wire \U4/sub0/c7 ;
  wire _al_u189_o;
  wire _al_u191_o;
  wire _al_u192_o;
  wire _al_u193_o;
  wire _al_u195_o;
  wire _al_u196_o;
  wire _al_u198_o;
  wire _al_u199_o;
  wire _al_u201_o;
  wire _al_u202_o;
  wire _al_u204_o;
  wire _al_u205_o;
  wire _al_u207_o;
  wire _al_u208_o;
  wire _al_u210_o;
  wire _al_u211_o;
  wire _al_u213_o;
  wire _al_u214_o;
  wire _al_u216_o;
  wire _al_u217_o;
  wire _al_u218_o;
  wire _al_u219_o;
  wire _al_u220_o;
  wire _al_u221_o;
  wire _al_u222_o;
  wire _al_u223_o;
  wire _al_u224_o;
  wire _al_u225_o;
  wire _al_u227_o;
  wire _al_u228_o;
  wire _al_u229_o;
  wire _al_u230_o;
  wire _al_u231_o;
  wire _al_u232_o;
  wire _al_u233_o;
  wire _al_u234_o;
  wire _al_u235_o;
  wire _al_u236_o;
  wire _al_u238_o;
  wire _al_u239_o;
  wire _al_u240_o;
  wire _al_u241_o;
  wire _al_u242_o;
  wire _al_u243_o;
  wire _al_u244_o;
  wire _al_u245_o;
  wire _al_u246_o;
  wire _al_u247_o;
  wire _al_u328_o;
  wire _al_u329_o;
  wire _al_u330_o;
  wire _al_u331_o;
  wire _al_u332_o;
  wire _al_u367_o;
  wire _al_u368_o;
  wire _al_u369_o;
  wire _al_u370_o;
  wire _al_u371_o;
  wire _al_u372_o;
  wire _al_u373_o;
  wire clk_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(21)
  wire nRST_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(22)

  EG_PHY_LSLICE #(
    //.MACRO("D1/add0/ucin_al_u412"),
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
    \D1/add0/u11_al_u415  (
    .a({\D1/LineCount [13],\D1/LineCount [11]}),
    .b({\D1/LineCount [14],\D1/LineCount [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\D1/add0/c11 ),
    .f({\D1/n2 [13],\D1/n2 [11]}),
    .fco(\D1/add0/c15 ),
    .fx({\D1/n2 [14],\D1/n2 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("D1/add0/ucin_al_u412"),
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
    \D1/add0/u15_al_u416  (
    .a({open_n18,\D1/LineCount [15]}),
    .c(2'b00),
    .d({open_n23,1'b0}),
    .fci(\D1/add0/c15 ),
    .f({open_n40,\D1/n2 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("D1/add0/ucin_al_u412"),
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
    \D1/add0/u3_al_u413  (
    .a({\D1/LineCount [5],\D1/LineCount [3]}),
    .b({\D1/LineCount [6],\D1/LineCount [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\D1/add0/c3 ),
    .f({\D1/n2 [5],\D1/n2 [3]}),
    .fco(\D1/add0/c7 ),
    .fx({\D1/n2 [6],\D1/n2 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("D1/add0/ucin_al_u412"),
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
    \D1/add0/u7_al_u414  (
    .a({\D1/LineCount [9],\D1/LineCount [7]}),
    .b({\D1/LineCount [10],\D1/LineCount [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\D1/add0/c7 ),
    .f({\D1/n2 [9],\D1/n2 [7]}),
    .fco(\D1/add0/c11 ),
    .fx({\D1/n2 [10],\D1/n2 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("D1/add0/ucin_al_u412"),
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
    \D1/add0/ucin_al_u412  (
    .a({\D1/LineCount [1],1'b0}),
    .b({\D1/LineCount [2],\D1/LineCount [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\D1/n2 [1],open_n99}),
    .fco(\D1/add0/c3 ),
    .fx({\D1/n2 [2],\D1/n2 [0]}));
  EG_PHY_LSLICE #(
    //.MACRO("D1/add1/ucin_al_u417"),
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
    \D1/add1/u11_al_u420  (
    .a({\D1/PixelCount [13],\D1/PixelCount [11]}),
    .b({\D1/PixelCount [14],\D1/PixelCount [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\D1/add1/c11 ),
    .f({\D1/n4 [13],\D1/n4 [11]}),
    .fco(\D1/add1/c15 ),
    .fx({\D1/n4 [14],\D1/n4 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("D1/add1/ucin_al_u417"),
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
    \D1/add1/u15_al_u421  (
    .a({open_n120,\D1/PixelCount [15]}),
    .c(2'b00),
    .d({open_n125,1'b0}),
    .fci(\D1/add1/c15 ),
    .f({open_n142,\D1/n4 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("D1/add1/ucin_al_u417"),
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
    \D1/add1/u3_al_u418  (
    .a({\D1/PixelCount [5],\D1/PixelCount [3]}),
    .b({\D1/PixelCount [6],\D1/PixelCount [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\D1/add1/c3 ),
    .f({\D1/n4 [5],\D1/n4 [3]}),
    .fco(\D1/add1/c7 ),
    .fx({\D1/n4 [6],\D1/n4 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("D1/add1/ucin_al_u417"),
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
    \D1/add1/u7_al_u419  (
    .a({\D1/PixelCount [9],\D1/PixelCount [7]}),
    .b({\D1/PixelCount [10],\D1/PixelCount [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\D1/add1/c7 ),
    .f({\D1/n4 [9],\D1/n4 [7]}),
    .fco(\D1/add1/c11 ),
    .fx({\D1/n4 [10],\D1/n4 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("D1/add1/ucin_al_u417"),
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
    \D1/add1/ucin_al_u417  (
    .a({\D1/PixelCount [1],1'b0}),
    .b({\D1/PixelCount [2],\D1/PixelCount [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\D1/n4 [1],open_n201}),
    .fco(\D1/add1/c3 ),
    .fx({\D1/n4 [2],\D1/n4 [0]}));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt0_0|D1/lt0_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt0_0|D1/lt0_cin  (
    .a(2'b01),
    .b({\D1/PixelCount [0],open_n204}),
    .fco(\D1/lt0_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt0_0|D1/lt0_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt0_10|D1/lt0_9  (
    .a(2'b00),
    .b(\D1/PixelCount [10:9]),
    .fci(\D1/lt0_c9 ),
    .fco(\D1/lt0_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt0_0|D1/lt0_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt0_12|D1/lt0_11  (
    .a(2'b00),
    .b(\D1/PixelCount [12:11]),
    .fci(\D1/lt0_c11 ),
    .fco(\D1/lt0_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt0_0|D1/lt0_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt0_14|D1/lt0_13  (
    .a(2'b00),
    .b(\D1/PixelCount [14:13]),
    .fci(\D1/lt0_c13 ),
    .fco(\D1/lt0_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt0_0|D1/lt0_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt0_2|D1/lt0_1  (
    .a(2'b00),
    .b(\D1/PixelCount [2:1]),
    .fci(\D1/lt0_c1 ),
    .fco(\D1/lt0_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt0_0|D1/lt0_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt0_4|D1/lt0_3  (
    .a(2'b11),
    .b(\D1/PixelCount [4:3]),
    .fci(\D1/lt0_c3 ),
    .fco(\D1/lt0_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt0_0|D1/lt0_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt0_6|D1/lt0_5  (
    .a(2'b01),
    .b(\D1/PixelCount [6:5]),
    .fci(\D1/lt0_c5 ),
    .fco(\D1/lt0_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt0_0|D1/lt0_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt0_8|D1/lt0_7  (
    .a(2'b00),
    .b(\D1/PixelCount [8:7]),
    .fci(\D1/lt0_c7 ),
    .fco(\D1/lt0_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt0_0|D1/lt0_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt0_cout|D1/lt0_15  (
    .a(2'b00),
    .b({1'b1,\D1/PixelCount [15]}),
    .fci(\D1/lt0_c15 ),
    .f({\D1/n9 ,open_n416}));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt1_0|D1/lt1_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt1_0|D1/lt1_cin  (
    .a({\D1/PixelCount [0],1'b0}),
    .b({1'b1,open_n422}),
    .fco(\D1/lt1_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt1_0|D1/lt1_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt1_10|D1/lt1_9  (
    .a(\D1/PixelCount [10:9]),
    .b(2'b10),
    .fci(\D1/lt1_c9 ),
    .fco(\D1/lt1_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt1_0|D1/lt1_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt1_12|D1/lt1_11  (
    .a(\D1/PixelCount [12:11]),
    .b(2'b00),
    .fci(\D1/lt1_c11 ),
    .fco(\D1/lt1_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt1_0|D1/lt1_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt1_14|D1/lt1_13  (
    .a(\D1/PixelCount [14:13]),
    .b(2'b00),
    .fci(\D1/lt1_c13 ),
    .fco(\D1/lt1_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt1_0|D1/lt1_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt1_2|D1/lt1_1  (
    .a(\D1/PixelCount [2:1]),
    .b(2'b11),
    .fci(\D1/lt1_c1 ),
    .fco(\D1/lt1_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt1_0|D1/lt1_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt1_4|D1/lt1_3  (
    .a(\D1/PixelCount [4:3]),
    .b(2'b11),
    .fci(\D1/lt1_c3 ),
    .fco(\D1/lt1_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt1_0|D1/lt1_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt1_6|D1/lt1_5  (
    .a(\D1/PixelCount [6:5]),
    .b(2'b00),
    .fci(\D1/lt1_c5 ),
    .fco(\D1/lt1_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt1_0|D1/lt1_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt1_8|D1/lt1_7  (
    .a(\D1/PixelCount [8:7]),
    .b(2'b10),
    .fci(\D1/lt1_c7 ),
    .fco(\D1/lt1_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt1_0|D1/lt1_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt1_cout|D1/lt1_15  (
    .a({1'b0,\D1/PixelCount [15]}),
    .b(2'b10),
    .fci(\D1/lt1_c15 ),
    .f({\D1/n10 ,open_n634}));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt2_0|D1/lt2_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt2_0|D1/lt2_cin  (
    .a({\D1/LineCount [0],1'b0}),
    .b({1'b1,open_n640}),
    .fco(\D1/lt2_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt2_0|D1/lt2_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt2_10|D1/lt2_9  (
    .a(\D1/LineCount [10:9]),
    .b(2'b00),
    .fci(\D1/lt2_c9 ),
    .fco(\D1/lt2_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt2_0|D1/lt2_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt2_12|D1/lt2_11  (
    .a(\D1/LineCount [12:11]),
    .b(2'b00),
    .fci(\D1/lt2_c11 ),
    .fco(\D1/lt2_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt2_0|D1/lt2_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt2_14|D1/lt2_13  (
    .a(\D1/LineCount [14:13]),
    .b(2'b00),
    .fci(\D1/lt2_c13 ),
    .fco(\D1/lt2_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt2_0|D1/lt2_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt2_2|D1/lt2_1  (
    .a(\D1/LineCount [2:1]),
    .b(2'b10),
    .fci(\D1/lt2_c1 ),
    .fco(\D1/lt2_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt2_0|D1/lt2_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt2_4|D1/lt2_3  (
    .a(\D1/LineCount [4:3]),
    .b(2'b01),
    .fci(\D1/lt2_c3 ),
    .fco(\D1/lt2_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt2_0|D1/lt2_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt2_6|D1/lt2_5  (
    .a(\D1/LineCount [6:5]),
    .b(2'b01),
    .fci(\D1/lt2_c5 ),
    .fco(\D1/lt2_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt2_0|D1/lt2_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt2_8|D1/lt2_7  (
    .a(\D1/LineCount [8:7]),
    .b(2'b00),
    .fci(\D1/lt2_c7 ),
    .fco(\D1/lt2_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt2_0|D1/lt2_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt2_cout|D1/lt2_15  (
    .a({1'b0,\D1/LineCount [15]}),
    .b(2'b10),
    .fci(\D1/lt2_c15 ),
    .f({LCD_SYNC_pad,open_n852}));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt3_0|D1/lt3_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt3_0|D1/lt3_cin  (
    .a({\D1/PixelCount [0],1'b0}),
    .b({1'b0,open_n858}),
    .fco(\D1/lt3_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt3_0|D1/lt3_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt3_10|D1/lt3_9  (
    .a(\D1/PixelCount [10:9]),
    .b(2'b00),
    .fci(\D1/lt3_c9 ),
    .fco(\D1/lt3_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt3_0|D1/lt3_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt3_12|D1/lt3_11  (
    .a(\D1/PixelCount [12:11]),
    .b(2'b00),
    .fci(\D1/lt3_c11 ),
    .fco(\D1/lt3_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt3_0|D1/lt3_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt3_14|D1/lt3_13  (
    .a(\D1/PixelCount [14:13]),
    .b(2'b00),
    .fci(\D1/lt3_c13 ),
    .fco(\D1/lt3_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt3_0|D1/lt3_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt3_2|D1/lt3_1  (
    .a(\D1/PixelCount [2:1]),
    .b(2'b10),
    .fci(\D1/lt3_c1 ),
    .fco(\D1/lt3_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt3_0|D1/lt3_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt3_4|D1/lt3_3  (
    .a(\D1/PixelCount [4:3]),
    .b(2'b10),
    .fci(\D1/lt3_c3 ),
    .fco(\D1/lt3_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt3_0|D1/lt3_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt3_6|D1/lt3_5  (
    .a(\D1/PixelCount [6:5]),
    .b(2'b00),
    .fci(\D1/lt3_c5 ),
    .fco(\D1/lt3_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt3_0|D1/lt3_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt3_8|D1/lt3_7  (
    .a(\D1/PixelCount [8:7]),
    .b(2'b00),
    .fci(\D1/lt3_c7 ),
    .fco(\D1/lt3_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt3_0|D1/lt3_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt3_cout|D1/lt3_15  (
    .a({1'b0,\D1/PixelCount [15]}),
    .b(2'b10),
    .fci(\D1/lt3_c15 ),
    .f({FIFO_RST,open_n1070}));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt4_0|D1/lt4_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt4_0|D1/lt4_cin  (
    .a(2'b01),
    .b({\D1/PixelCount [0],open_n1076}),
    .fco(\D1/lt4_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt4_0|D1/lt4_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt4_10|D1/lt4_9  (
    .a(2'b00),
    .b(\D1/PixelCount [10:9]),
    .fci(\D1/lt4_c9 ),
    .fco(\D1/lt4_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt4_0|D1/lt4_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt4_12|D1/lt4_11  (
    .a(2'b00),
    .b(\D1/PixelCount [12:11]),
    .fci(\D1/lt4_c11 ),
    .fco(\D1/lt4_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt4_0|D1/lt4_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt4_14|D1/lt4_13  (
    .a(2'b00),
    .b(\D1/PixelCount [14:13]),
    .fci(\D1/lt4_c13 ),
    .fco(\D1/lt4_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt4_0|D1/lt4_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt4_2|D1/lt4_1  (
    .a(2'b00),
    .b(\D1/PixelCount [2:1]),
    .fci(\D1/lt4_c1 ),
    .fco(\D1/lt4_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt4_0|D1/lt4_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt4_4|D1/lt4_3  (
    .a(2'b00),
    .b(\D1/PixelCount [4:3]),
    .fci(\D1/lt4_c3 ),
    .fco(\D1/lt4_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt4_0|D1/lt4_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt4_6|D1/lt4_5  (
    .a(2'b00),
    .b(\D1/PixelCount [6:5]),
    .fci(\D1/lt4_c5 ),
    .fco(\D1/lt4_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt4_0|D1/lt4_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt4_8|D1/lt4_7  (
    .a(2'b10),
    .b(\D1/PixelCount [8:7]),
    .fci(\D1/lt4_c7 ),
    .fco(\D1/lt4_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt4_0|D1/lt4_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt4_cout|D1/lt4_15  (
    .a(2'b00),
    .b({1'b1,\D1/PixelCount [15]}),
    .fci(\D1/lt4_c15 ),
    .f({\D1/n12 ,open_n1288}));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt5_0|D1/lt5_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt5_0|D1/lt5_cin  (
    .a({\D1/PixelCount [0],1'b1}),
    .b({1'b0,open_n1294}),
    .fco(\D1/lt5_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt5_0|D1/lt5_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt5_10|D1/lt5_9  (
    .a(\D1/PixelCount [10:9]),
    .b(2'b10),
    .fci(\D1/lt5_c9 ),
    .fco(\D1/lt5_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt5_0|D1/lt5_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt5_12|D1/lt5_11  (
    .a(\D1/PixelCount [12:11]),
    .b(2'b00),
    .fci(\D1/lt5_c11 ),
    .fco(\D1/lt5_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt5_0|D1/lt5_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt5_14|D1/lt5_13  (
    .a(\D1/PixelCount [14:13]),
    .b(2'b00),
    .fci(\D1/lt5_c13 ),
    .fco(\D1/lt5_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt5_0|D1/lt5_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt5_2|D1/lt5_1  (
    .a(\D1/PixelCount [2:1]),
    .b(2'b00),
    .fci(\D1/lt5_c1 ),
    .fco(\D1/lt5_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt5_0|D1/lt5_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt5_4|D1/lt5_3  (
    .a(\D1/PixelCount [4:3]),
    .b(2'b00),
    .fci(\D1/lt5_c3 ),
    .fco(\D1/lt5_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt5_0|D1/lt5_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt5_6|D1/lt5_5  (
    .a(\D1/PixelCount [6:5]),
    .b(2'b01),
    .fci(\D1/lt5_c5 ),
    .fco(\D1/lt5_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt5_0|D1/lt5_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt5_8|D1/lt5_7  (
    .a(\D1/PixelCount [8:7]),
    .b(2'b10),
    .fci(\D1/lt5_c7 ),
    .fco(\D1/lt5_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt5_0|D1/lt5_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt5_cout|D1/lt5_15  (
    .a({1'b0,\D1/PixelCount [15]}),
    .b(2'b10),
    .fci(\D1/lt5_c15 ),
    .f({\D1/n13 ,open_n1506}));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt6_0|D1/lt6_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt6_0|D1/lt6_cin  (
    .a(2'b11),
    .b({\D1/LineCount [0],open_n1512}),
    .fco(\D1/lt6_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt6_0|D1/lt6_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt6_10|D1/lt6_9  (
    .a(2'b00),
    .b(\D1/LineCount [10:9]),
    .fci(\D1/lt6_c9 ),
    .fco(\D1/lt6_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt6_0|D1/lt6_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt6_12|D1/lt6_11  (
    .a(2'b00),
    .b(\D1/LineCount [12:11]),
    .fci(\D1/lt6_c11 ),
    .fco(\D1/lt6_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt6_0|D1/lt6_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt6_14|D1/lt6_13  (
    .a(2'b00),
    .b(\D1/LineCount [14:13]),
    .fci(\D1/lt6_c13 ),
    .fco(\D1/lt6_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt6_0|D1/lt6_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt6_2|D1/lt6_1  (
    .a(2'b10),
    .b(\D1/LineCount [2:1]),
    .fci(\D1/lt6_c1 ),
    .fco(\D1/lt6_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt6_0|D1/lt6_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt6_4|D1/lt6_3  (
    .a(2'b01),
    .b(\D1/LineCount [4:3]),
    .fci(\D1/lt6_c3 ),
    .fco(\D1/lt6_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt6_0|D1/lt6_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt6_6|D1/lt6_5  (
    .a(2'b01),
    .b(\D1/LineCount [6:5]),
    .fci(\D1/lt6_c5 ),
    .fco(\D1/lt6_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt6_0|D1/lt6_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt6_8|D1/lt6_7  (
    .a(2'b00),
    .b(\D1/LineCount [8:7]),
    .fci(\D1/lt6_c7 ),
    .fco(\D1/lt6_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt6_0|D1/lt6_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt6_cout|D1/lt6_15  (
    .a(2'b00),
    .b({1'b1,\D1/LineCount [15]}),
    .fci(\D1/lt6_c15 ),
    .f({\D1/n15 ,open_n1724}));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt7_0|D1/lt7_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt7_0|D1/lt7_cin  (
    .a({\D1/LineCount [0],1'b0}),
    .b({1'b0,open_n1730}),
    .fco(\D1/lt7_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt7_0|D1/lt7_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt7_10|D1/lt7_9  (
    .a(\D1/LineCount [10:9]),
    .b(2'b01),
    .fci(\D1/lt7_c9 ),
    .fco(\D1/lt7_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt7_0|D1/lt7_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt7_12|D1/lt7_11  (
    .a(\D1/LineCount [12:11]),
    .b(2'b00),
    .fci(\D1/lt7_c11 ),
    .fco(\D1/lt7_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt7_0|D1/lt7_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt7_14|D1/lt7_13  (
    .a(\D1/LineCount [14:13]),
    .b(2'b00),
    .fci(\D1/lt7_c13 ),
    .fco(\D1/lt7_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt7_0|D1/lt7_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt7_2|D1/lt7_1  (
    .a(\D1/LineCount [2:1]),
    .b(2'b01),
    .fci(\D1/lt7_c1 ),
    .fco(\D1/lt7_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt7_0|D1/lt7_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt7_4|D1/lt7_3  (
    .a(\D1/LineCount [4:3]),
    .b(2'b11),
    .fci(\D1/lt7_c3 ),
    .fco(\D1/lt7_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt7_0|D1/lt7_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt7_6|D1/lt7_5  (
    .a(\D1/LineCount [6:5]),
    .b(2'b01),
    .fci(\D1/lt7_c5 ),
    .fco(\D1/lt7_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt7_0|D1/lt7_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt7_8|D1/lt7_7  (
    .a(\D1/LineCount [8:7]),
    .b(2'b00),
    .fci(\D1/lt7_c7 ),
    .fco(\D1/lt7_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt7_0|D1/lt7_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt7_cout|D1/lt7_15  (
    .a({1'b0,\D1/LineCount [15]}),
    .b(2'b10),
    .fci(\D1/lt7_c15 ),
    .f({\D1/n17 ,open_n1942}));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt8_0|D1/lt8_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt8_0|D1/lt8_cin  (
    .a(2'b11),
    .b({\D1/PixelCount [0],open_n1948}),
    .fco(\D1/lt8_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt8_0|D1/lt8_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt8_10|D1/lt8_9  (
    .a(2'b00),
    .b(\D1/PixelCount [10:9]),
    .fci(\D1/lt8_c9 ),
    .fco(\D1/lt8_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt8_0|D1/lt8_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt8_12|D1/lt8_11  (
    .a(2'b00),
    .b(\D1/PixelCount [12:11]),
    .fci(\D1/lt8_c11 ),
    .fco(\D1/lt8_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt8_0|D1/lt8_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt8_14|D1/lt8_13  (
    .a(2'b00),
    .b(\D1/PixelCount [14:13]),
    .fci(\D1/lt8_c13 ),
    .fco(\D1/lt8_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt8_0|D1/lt8_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt8_2|D1/lt8_1  (
    .a(2'b11),
    .b(\D1/PixelCount [2:1]),
    .fci(\D1/lt8_c1 ),
    .fco(\D1/lt8_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt8_0|D1/lt8_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt8_4|D1/lt8_3  (
    .a(2'b11),
    .b(\D1/PixelCount [4:3]),
    .fci(\D1/lt8_c3 ),
    .fco(\D1/lt8_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt8_0|D1/lt8_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt8_6|D1/lt8_5  (
    .a(2'b11),
    .b(\D1/PixelCount [6:5]),
    .fci(\D1/lt8_c5 ),
    .fco(\D1/lt8_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt8_0|D1/lt8_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt8_8|D1/lt8_7  (
    .a(2'b01),
    .b(\D1/PixelCount [8:7]),
    .fci(\D1/lt8_c7 ),
    .fco(\D1/lt8_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt8_0|D1/lt8_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt8_cout|D1/lt8_15  (
    .a(2'b00),
    .b({1'b1,\D1/PixelCount [15]}),
    .fci(\D1/lt8_c15 ),
    .f({\D1/n19 ,open_n2160}));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt9_0|D1/lt9_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt9_0|D1/lt9_cin  (
    .a({\D1/PixelCount [0],1'b1}),
    .b({1'b1,open_n2166}),
    .fco(\D1/lt9_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt9_0|D1/lt9_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt9_10|D1/lt9_9  (
    .a(\D1/PixelCount [10:9]),
    .b(2'b10),
    .fci(\D1/lt9_c9 ),
    .fco(\D1/lt9_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt9_0|D1/lt9_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt9_12|D1/lt9_11  (
    .a(\D1/PixelCount [12:11]),
    .b(2'b00),
    .fci(\D1/lt9_c11 ),
    .fco(\D1/lt9_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt9_0|D1/lt9_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt9_14|D1/lt9_13  (
    .a(\D1/PixelCount [14:13]),
    .b(2'b00),
    .fci(\D1/lt9_c13 ),
    .fco(\D1/lt9_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt9_0|D1/lt9_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt9_2|D1/lt9_1  (
    .a(\D1/PixelCount [2:1]),
    .b(2'b00),
    .fci(\D1/lt9_c1 ),
    .fco(\D1/lt9_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt9_0|D1/lt9_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt9_4|D1/lt9_3  (
    .a(\D1/PixelCount [4:3]),
    .b(2'b00),
    .fci(\D1/lt9_c3 ),
    .fco(\D1/lt9_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt9_0|D1/lt9_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt9_6|D1/lt9_5  (
    .a(\D1/PixelCount [6:5]),
    .b(2'b01),
    .fci(\D1/lt9_c5 ),
    .fco(\D1/lt9_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt9_0|D1/lt9_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt9_8|D1/lt9_7  (
    .a(\D1/PixelCount [8:7]),
    .b(2'b00),
    .fci(\D1/lt9_c7 ),
    .fco(\D1/lt9_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt9_0|D1/lt9_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt9_cout|D1/lt9_15  (
    .a({1'b0,\D1/PixelCount [15]}),
    .b(2'b10),
    .fci(\D1/lt9_c15 ),
    .f({\D1/n21 ,open_n2378}));
  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(C*D)"),
    //.LUTG1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b0|D1/reg0_b8  (
    .c({\D1/n4 [0],\D1/n4 [8]}),
    .clk(LCD_CLK_pad),
    .d({\D1/mux2_b0_sel_is_0_o ,\D1/mux2_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\D1/PixelCount [0],\D1/PixelCount [8]}));  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(C*D)"),
    //.LUTG1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b10|D1/reg0_b7  (
    .c({\D1/n4 [10],\D1/n4 [7]}),
    .clk(LCD_CLK_pad),
    .d({\D1/mux2_b0_sel_is_0_o ,\D1/mux2_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\D1/PixelCount [10],\D1/PixelCount [7]}));  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(C*D)"),
    //.LUTG1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b11|D1/reg0_b6  (
    .c({\D1/n4 [11],\D1/n4 [6]}),
    .clk(LCD_CLK_pad),
    .d({\D1/mux2_b0_sel_is_0_o ,\D1/mux2_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\D1/PixelCount [11],\D1/PixelCount [6]}));  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(C*D)"),
    //.LUTG1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b12|D1/reg0_b4  (
    .c({\D1/n4 [12],\D1/n4 [4]}),
    .clk(LCD_CLK_pad),
    .d({\D1/mux2_b0_sel_is_0_o ,\D1/mux2_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\D1/PixelCount [12],\D1/PixelCount [4]}));  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(C*D)"),
    //.LUTG1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b13|D1/reg0_b3  (
    .c({\D1/n4 [13],\D1/n4 [3]}),
    .clk(LCD_CLK_pad),
    .d({\D1/mux2_b0_sel_is_0_o ,\D1/mux2_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\D1/PixelCount [13],\D1/PixelCount [3]}));  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(C*D)"),
    //.LUTG1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b14|D1/reg0_b2  (
    .c({\D1/n4 [14],\D1/n4 [2]}),
    .clk(LCD_CLK_pad),
    .d({\D1/mux2_b0_sel_is_0_o ,\D1/mux2_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\D1/PixelCount [14],\D1/PixelCount [2]}));  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTF1("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG1("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100110011110000),
    .INIT_LUTF1(16'b1100110011110000),
    .INIT_LUTG0(16'b1100110011110000),
    .INIT_LUTG1(16'b1100110011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg1_b0|D1/reg1_b8  (
    .b({\D1/n2 [0],\D1/n2 [8]}),
    .c({\D1/LineCount [0],\D1/LineCount [8]}),
    .clk(LCD_CLK_pad),
    .d({_al_u242_o,_al_u242_o}),
    .sr(nRST_pad),
    .q({\D1/LineCount [0],\D1/LineCount [8]}));  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTF1("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG1("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100110011110000),
    .INIT_LUTF1(16'b1100110011110000),
    .INIT_LUTG0(16'b1100110011110000),
    .INIT_LUTG1(16'b1100110011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg1_b10|D1/reg1_b7  (
    .b({\D1/n2 [10],\D1/n2 [7]}),
    .c({\D1/LineCount [10],\D1/LineCount [7]}),
    .clk(LCD_CLK_pad),
    .d({_al_u242_o,_al_u242_o}),
    .sr(nRST_pad),
    .q({\D1/LineCount [10],\D1/LineCount [7]}));  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTF1("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG1("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100110011110000),
    .INIT_LUTF1(16'b1100110011110000),
    .INIT_LUTG0(16'b1100110011110000),
    .INIT_LUTG1(16'b1100110011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg1_b11|D1/reg1_b6  (
    .b({\D1/n2 [11],\D1/n2 [6]}),
    .c({\D1/LineCount [11],\D1/LineCount [6]}),
    .clk(LCD_CLK_pad),
    .d({_al_u242_o,_al_u242_o}),
    .sr(nRST_pad),
    .q({\D1/LineCount [11],\D1/LineCount [6]}));  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTF1("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG1("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100110011110000),
    .INIT_LUTF1(16'b1100110011110000),
    .INIT_LUTG0(16'b1100110011110000),
    .INIT_LUTG1(16'b1100110011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg1_b12|D1/reg1_b2  (
    .b({\D1/n2 [12],\D1/n2 [2]}),
    .c({\D1/LineCount [12],\D1/LineCount [2]}),
    .clk(LCD_CLK_pad),
    .d({_al_u242_o,_al_u242_o}),
    .sr(nRST_pad),
    .q({\D1/LineCount [12],\D1/LineCount [2]}));  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTF1("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG1("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100110011110000),
    .INIT_LUTF1(16'b1100110011110000),
    .INIT_LUTG0(16'b1100110011110000),
    .INIT_LUTG1(16'b1100110011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg1_b13|D1/reg1_b14  (
    .b({\D1/n2 [13],\D1/n2 [14]}),
    .c({\D1/LineCount [13],\D1/LineCount [14]}),
    .clk(LCD_CLK_pad),
    .d({_al_u242_o,_al_u242_o}),
    .sr(nRST_pad),
    .q({\D1/LineCount [13],\D1/LineCount [14]}));  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  EG_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTF1("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTG0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTG1("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1011000110100000),
    .INIT_LUTF1(16'b1011000110100000),
    .INIT_LUTG0(16'b1011000110100000),
    .INIT_LUTG1(16'b1011000110100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg1_b1|D1/reg1_b4  (
    .a({_al_u242_o,_al_u242_o}),
    .b({_al_u247_o,_al_u247_o}),
    .c({\D1/n2 [1],\D1/n2 [4]}),
    .clk(LCD_CLK_pad),
    .d({\D1/LineCount [1],\D1/LineCount [4]}),
    .sr(nRST_pad),
    .q({\D1/LineCount [1],\D1/LineCount [4]}));  // source/VGAMod.v(56)
  EG_PHY_FIFO #(
    .AE(32'b00000000000000000000000000110100),
    .AEP1(32'b00000000000000000000000000111100),
    .AF(32'b00000000000000000001111111101000),
    .AFM1(32'b00000000000000000001111111100100),
    .ASYNC_RESET_RELEASE("SYNC"),
    .DATA_WIDTH_A("4"),
    .DATA_WIDTH_B("9"),
    .E(32'b00000000000000000000000000000100),
    .EP1(32'b00000000000000000000000000001100),
    .F(32'b00000000000000000010000000000000),
    .FM1(32'b00000000000000000001111111111100),
    .GSR("DISABLE"),
    .MODE("FIFO8K"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("ASYNC"))
    \FIFO0/logic_fifo_0  (
    .clkr(LCD_CLK_pad),
    .clkw(CLK_100M),
    .csr({2'b11,\D1/n23 }),
    .csw({2'b11,\FIFO0/logic_fifo_full_neg }),
    .dia({open_n2682,open_n2683,open_n2684,open_n2685,open_n2686,FIFO_DI[3:0]}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(FIFO_RE),
    .rprst(FIFO_RST),
    .rst(FIFO_RST),
    .we(FIFO_WE),
    .dob({open_n2707,FIFO_DO[3:0],FIFO_DO[11:8]}),
    .empty_flag(FIFO_EMPTY),
    .full_flag(\FIFO0/logic_fifo_full ));
  EG_PHY_FIFO #(
    .AE(32'b00000000000000000000000000110100),
    .AEP1(32'b00000000000000000000000000111100),
    .AF(32'b00000000000000000001111111101000),
    .AFM1(32'b00000000000000000001111111100100),
    .ASYNC_RESET_RELEASE("SYNC"),
    .DATA_WIDTH_A("4"),
    .DATA_WIDTH_B("9"),
    .E(32'b00000000000000000000000000000100),
    .EP1(32'b00000000000000000000000000001100),
    .F(32'b00000000000000000010000000000000),
    .FM1(32'b00000000000000000001111111111100),
    .GSR("DISABLE"),
    .MODE("FIFO8K"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("ASYNC"))
    \FIFO0/logic_fifo_1  (
    .clkr(LCD_CLK_pad),
    .clkw(CLK_100M),
    .csr({2'b11,\D1/n23 }),
    .csw({2'b11,\FIFO0/logic_fifo_full_neg }),
    .dia({open_n2708,open_n2709,open_n2710,open_n2711,open_n2712,FIFO_DI[7:4]}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(FIFO_RE),
    .rprst(FIFO_RST),
    .rst(FIFO_RST),
    .we(FIFO_WE),
    .dob({open_n2733,FIFO_DO[7:4],FIFO_DO[15:12]}));
  EG_PHY_GCLK \PLL1/bufg_feedback  (
    .clki(\PLL1/clk0_buf ),
    .clko(LCD_CLK_pad));  // al_ip/LCDPLL.v(38)
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
    \PLL1/pll_inst  (
    .daddr(6'b000000),
    .dclk(1'b0),
    .dcs(1'b0),
    .di(8'b00000000),
    .dwe(1'b0),
    .fbclk(LCD_CLK_pad),
    .psclk(1'b0),
    .psclksel(3'b000),
    .psdown(1'b0),
    .psstep(1'b0),
    .refclk(clk_pad),
    .reset(1'b0),
    .stdby(1'b0),
    .clkc({open_n2736,open_n2737,open_n2738,CLK_100M,\PLL1/clk0_buf }));  // al_ip/LCDPLL.v(69)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTG0("(~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTG0(16'b0000000011111111),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/CLK_OUT_reg  (
    .ce(\U1/n1 ),
    .clk(LCD_CLK_pad),
    .d({open_n2755,LED_pad[1]}),
    .sr(nRST_pad),
    .q({open_n2777,LED_pad[1]}));  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u394"),
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
    \U1/add0/u11_al_u397  (
    .a({\U1/Count [13],\U1/Count [11]}),
    .b({\U1/Count [14],\U1/Count [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c11 ),
    .f({\U1/n3 [13],\U1/n3 [11]}),
    .fco(\U1/add0/c15 ),
    .fx({\U1/n3 [14],\U1/n3 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u394"),
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
    \U1/add0/u15_al_u398  (
    .a({\U1/Count [17],\U1/Count [15]}),
    .b({\U1/Count [18],\U1/Count [16]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c15 ),
    .f({\U1/n3 [17],\U1/n3 [15]}),
    .fco(\U1/add0/c19 ),
    .fx({\U1/n3 [18],\U1/n3 [16]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u394"),
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
    \U1/add0/u19_al_u399  (
    .a({\U1/Count [21],\U1/Count [19]}),
    .b({\U1/Count [22],\U1/Count [20]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c19 ),
    .f({\U1/n3 [21],\U1/n3 [19]}),
    .fco(\U1/add0/c23 ),
    .fx({\U1/n3 [22],\U1/n3 [20]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u394"),
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
    \U1/add0/u23_al_u400  (
    .a({\U1/Count [25],\U1/Count [23]}),
    .b({\U1/Count [26],\U1/Count [24]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c23 ),
    .f({\U1/n3 [25],\U1/n3 [23]}),
    .fco(\U1/add0/c27 ),
    .fx({\U1/n3 [26],\U1/n3 [24]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u394"),
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
    \U1/add0/u27_al_u401  (
    .a({\U1/Count [29],\U1/Count [27]}),
    .b({\U1/Count [30],\U1/Count [28]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c27 ),
    .f({\U1/n3 [29],\U1/n3 [27]}),
    .fco(\U1/add0/c31 ),
    .fx({\U1/n3 [30],\U1/n3 [28]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u394"),
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
    \U1/add0/u31_al_u402  (
    .a({open_n2868,\U1/Count [31]}),
    .c(2'b00),
    .d({open_n2873,1'b0}),
    .fci(\U1/add0/c31 ),
    .f({open_n2890,\U1/n3 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u394"),
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
    \U1/add0/u3_al_u395  (
    .a({\U1/Count [5],\U1/Count [3]}),
    .b({\U1/Count [6],\U1/Count [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c3 ),
    .f({\U1/n3 [5],\U1/n3 [3]}),
    .fco(\U1/add0/c7 ),
    .fx({\U1/n3 [6],\U1/n3 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u394"),
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
    \U1/add0/u7_al_u396  (
    .a({\U1/Count [9],\U1/Count [7]}),
    .b({\U1/Count [10],\U1/Count [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c7 ),
    .f({\U1/n3 [9],\U1/n3 [7]}),
    .fco(\U1/add0/c11 ),
    .fx({\U1/n3 [10],\U1/n3 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u394"),
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
    \U1/add0/ucin_al_u394  (
    .a({\U1/Count [1],1'b0}),
    .b({\U1/Count [2],\U1/Count [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U1/n3 [1],open_n2949}),
    .fco(\U1/add0/c3 ),
    .fx({\U1/n3 [2],\U1/n3 [0]}));
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b0|U1/reg0_b8  (
    .c({\U1/n3 [0],\U1/n3 [8]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [0],\U1/Count [8]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b10|U1/reg0_b7  (
    .c({\U1/n3 [10],\U1/n3 [7]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [10],\U1/Count [7]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b11|U1/reg0_b6  (
    .c({\U1/n3 [11],\U1/n3 [6]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [11],\U1/Count [6]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b12|U1/reg0_b4  (
    .c({\U1/n3 [12],\U1/n3 [4]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [12],\U1/Count [4]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b13|U1/reg0_b31  (
    .c({\U1/n3 [13],\U1/n3 [31]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [13],\U1/Count [31]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b14|U1/reg0_b30  (
    .c({\U1/n3 [14],\U1/n3 [30]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [14],\U1/Count [30]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b15|U1/reg0_b29  (
    .c({\U1/n3 [15],\U1/n3 [29]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [15],\U1/Count [29]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b16|U1/reg0_b28  (
    .c({\U1/n3 [16],\U1/n3 [28]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [16],\U1/Count [28]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b17|U1/reg0_b27  (
    .c({\U1/n3 [17],\U1/n3 [27]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [17],\U1/Count [27]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b18|U1/reg0_b25  (
    .c({\U1/n3 [18],\U1/n3 [25]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [18],\U1/Count [25]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b19|U1/reg0_b24  (
    .c({\U1/n3 [19],\U1/n3 [24]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [19],\U1/Count [24]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b1|U1/reg0_b23  (
    .c({\U1/n3 [1],\U1/n3 [23]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [1],\U1/Count [23]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b20|U1/reg0_b21  (
    .c({\U1/n3 [20],\U1/n3 [21]}),
    .clk(LCD_CLK_pad),
    .d({\U1/n1 ,\U1/n1 }),
    .sr(nRST_pad),
    .q({\U1/Count [20],\U1/Count [21]}));  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u403"),
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
    \U2/add0/u11_al_u406  (
    .a({\U2/Count [13],\U2/Count [11]}),
    .b({\U2/Count [14],\U2/Count [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U2/add0/c11 ),
    .f({\U2/n3 [13],\U2/n3 [11]}),
    .fco(\U2/add0/c15 ),
    .fx({\U2/n3 [14],\U2/n3 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u403"),
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
    \U2/add0/u15_al_u407  (
    .a({\U2/Count [17],\U2/Count [15]}),
    .b({\U2/Count [18],\U2/Count [16]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U2/add0/c15 ),
    .f({\U2/n3 [17],\U2/n3 [15]}),
    .fco(\U2/add0/c19 ),
    .fx({\U2/n3 [18],\U2/n3 [16]}));
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u403"),
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
    \U2/add0/u19_al_u408  (
    .a({\U2/Count [21],\U2/Count [19]}),
    .b({\U2/Count [22],\U2/Count [20]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U2/add0/c19 ),
    .f({\U2/n3 [21],\U2/n3 [19]}),
    .fco(\U2/add0/c23 ),
    .fx({\U2/n3 [22],\U2/n3 [20]}));
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u403"),
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
    \U2/add0/u23_al_u409  (
    .a({\U2/Count [25],\U2/Count [23]}),
    .b({\U2/Count [26],\U2/Count [24]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U2/add0/c23 ),
    .f({\U2/n3 [25],\U2/n3 [23]}),
    .fco(\U2/add0/c27 ),
    .fx({\U2/n3 [26],\U2/n3 [24]}));
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u403"),
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
    \U2/add0/u27_al_u410  (
    .a({\U2/Count [29],\U2/Count [27]}),
    .b({\U2/Count [30],\U2/Count [28]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U2/add0/c27 ),
    .f({\U2/n3 [29],\U2/n3 [27]}),
    .fco(\U2/add0/c31 ),
    .fx({\U2/n3 [30],\U2/n3 [28]}));
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u403"),
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
    \U2/add0/u31_al_u411  (
    .a({open_n3380,\U2/Count [31]}),
    .c(2'b00),
    .d({open_n3385,1'b0}),
    .fci(\U2/add0/c31 ),
    .f({open_n3402,\U2/n3 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u403"),
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
    \U2/add0/u3_al_u404  (
    .a({\U2/Count [5],\U2/Count [3]}),
    .b({\U2/Count [6],\U2/Count [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U2/add0/c3 ),
    .f({\U2/n3 [5],\U2/n3 [3]}),
    .fco(\U2/add0/c7 ),
    .fx({\U2/n3 [6],\U2/n3 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u403"),
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
    \U2/add0/u7_al_u405  (
    .a({\U2/Count [9],\U2/Count [7]}),
    .b({\U2/Count [10],\U2/Count [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U2/add0/c7 ),
    .f({\U2/n3 [9],\U2/n3 [7]}),
    .fco(\U2/add0/c11 ),
    .fx({\U2/n3 [10],\U2/n3 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u403"),
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
    \U2/add0/ucin_al_u403  (
    .a({\U2/Count [1],1'b0}),
    .b({\U2/Count [2],\U2/Count [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U2/n3 [1],open_n3461}),
    .fco(\U2/add0/c3 ),
    .fx({\U2/n3 [2],\U2/n3 [0]}));
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b0|U2/reg0_b8  (
    .c({\U2/n3 [0],\U2/n3 [8]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [0],\U2/Count [8]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b10|U2/reg0_b7  (
    .c({\U2/n3 [10],\U2/n3 [7]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [10],\U2/Count [7]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b11|U2/reg0_b6  (
    .c({\U2/n3 [11],\U2/n3 [6]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [11],\U2/Count [6]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b12|U2/reg0_b4  (
    .c({\U2/n3 [12],\U2/n3 [4]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [12],\U2/Count [4]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b13|U2/reg0_b31  (
    .c({\U2/n3 [13],\U2/n3 [31]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [13],\U2/Count [31]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b14|U2/reg0_b30  (
    .c({\U2/n3 [14],\U2/n3 [30]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [14],\U2/Count [30]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b15|U2/reg0_b29  (
    .c({\U2/n3 [15],\U2/n3 [29]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [15],\U2/Count [29]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b16|U2/reg0_b28  (
    .c({\U2/n3 [16],\U2/n3 [28]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [16],\U2/Count [28]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b17|U2/reg0_b27  (
    .c({\U2/n3 [17],\U2/n3 [27]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [17],\U2/Count [27]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b18|U2/reg0_b25  (
    .c({\U2/n3 [18],\U2/n3 [25]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [18],\U2/Count [25]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b19|U2/reg0_b24  (
    .c({\U2/n3 [19],\U2/n3 [24]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [19],\U2/Count [24]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b1|U2/reg0_b23  (
    .c({\U2/n3 [1],\U2/n3 [23]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [1],\U2/Count [23]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_b20|U2/reg0_b21  (
    .c({\U2/n3 [20],\U2/n3 [21]}),
    .clk(clk_pad),
    .d({\U2/n1 ,\U2/n1 }),
    .sr(nRST_pad),
    .q({\U2/Count [20],\U2/Count [21]}));  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTF1("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTG0("(~D)"),
    //.LUTG1("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTF1(16'b0000000100100011),
    .INIT_LUTG0(16'b0000000011111111),
    .INIT_LUTG1(16'b0000000100100011),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \U4/Addr_pipe_b1|U4/Addr_pipe_b0  (
    .a({\U4/Addr_piped [0],open_n3802}),
    .b({\U4/Addr_piped [1],open_n3803}),
    .c({\U4/ROM0/inst_doa_i0_000 ,open_n3804}),
    .clk(CLK_100M),
    .d({\U4/ROM0/inst_doa_i1_000 ,nRST_pad}),
    .mi(\U4/Addr [14:13]),
    .sr(\D1/n0 ),
    .f({_al_u214_o,\D1/n0 }),
    .q({\U4/Addr_piped [1],\U4/Addr_piped [0]}));
  // address_offset=0;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0004"),
    //.WID("0x0004"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFCEA9AF7E9AAAAAAAAACBBFC2AE75BEEFBBFCFAAAAAAAAAAAAAAAAAAAEBD039),
    .INIT_01(256'hFFABFBAD360FFFFFFFFFBF8B52FFB3FE2EB8FEEFFFFFFFFAFEFFEFFFF9CD1F7D),
    .INIT_02(256'hFF8FBEBEEEAFFFFFFFFEBF8A3AE24D2E6AA2ABAFFFFEBBB9E0EAAD783F9F3F82),
    .INIT_03(256'hFF9FAFA7BDAFFFFFFFFFDF9C0AE9E2AE6A9EDFFAFFFAF37B9750725982FEBB1F),
    .INIT_04(256'hFF8EDAF6C8BFFFFFFFFF0B8DEA8BEF4E22CEFFFAFFE83986BF3FEDAFABEE90FB),
    .INIT_05(256'hFF8E2FFC8AEFFFFFEAF92B8C6ED181DEE36E7FFFFFE75BFE083383AFEFFB27FF),
    .INIT_06(256'hFF9E6AEEDBBFFFFFEAFEFEB5AE3BFA9AE6A9FFFFFFEEFE3576ED3AFFFEEA7FFF),
    .INIT_07(256'hFF8FB2FD7BFFFFFFEAFFBA76BAACB456A1AEBFFFFFFBBA73AF4EBFFFFE90EFFF),
    .INIT_08(256'hFFABFFFF6FFFEAFFEAAC2F21A83BFC13A3E6FFFFBAE6E6EFA5ABFFFFFFBBF924),
    .INIT_09(256'hFFEBE3FF8FFFFEBFEAA4FE17A58D3D85BFF7FFFFFDFCBFAC2ABFEBFFFFAE95C3),
    .INIT_0A(256'hFFCADEEE9BFFFCAFEAF2FE4ABE4EEE3EFFDBFFFA932AEB0EBFFAABFFFEBBC001),
    .INIT_0B(256'hFF92A7EEEFFFE86BEBFFFE268DFE5F29BFBBFBFBAEFBB5AFFFFEABFEBFE505AA),
    .INIT_0C(256'hFFE784ADAFFFCAE6BFF9BEA7692FFBB33E2BFAE8BFFD7EAAAAAABFFFFFEDBFFF),
    .INIT_0D(256'hFFEBA6EEFEBF8DFDAFBDBA0E7E5AEF8D3E6BFA8EFFED40000153AAFFFFFBFFFF),
    .INIT_0E(256'hFFCABCEFA6EBE72E9EAFAA6EF6E416D33CBAE9ABFFFAAAAAAAAEC5AAAFFEFFFF),
    .INIT_0F(256'hFFE3BEB8BB2BE8A2F6DFA9DC90FFFAD4F9AFB6BFFFFEFFFFFFFFAAE4ABFBA4FF),
    .INIT_10(256'hCECEE4B9BE86AAEABF73A9F8F8251151E6AB7FFC2AFFFFFFFFFFFFAAC6AAED4F),
    .INIT_11(256'hEAB0A8E8BFE96A6BFABFB97EE8FC1FD0E2AEB0A30CBFFFFFFFFFFFFFFB5ABBA7),
    .INIT_12(256'h7DADEE29BFFFC6DEBC66BB32D0C3A2B3AA877272A6EF056FFFFFFFFFFAF86ADA),
    .INIT_13(256'h5F1DBBCAFFFFFB13260ABEB209B59125CAA91F13C1A901CBB06FFFFFF0107AE8),
    .INIT_14(256'h9696EDBF6FFFFFBF8E3AFC7F334E9744B66C645B19DD707FCAD96AAABAAAAAFA),
    .INIT_15(256'hC7E8BEB76FFFEFEFE6FFA95D1E24529E3F38EE9ABAEF907FF8505F3ABFFEBFFA),
    .INIT_16(256'hF3EC7B5EBBFFFEBCAF3FADAE4BFFEFF17BAEBFFEABEF3943FFFFB1CF5BBFFFFF),
    .INIT_17(256'hFB6E6BDDCBFFFFCC1B3FAEBDAFFFFFFEAFEEFFFFFFEAE1823FFFFFA50A2EAFFF),
    .INIT_18(256'hFFAAAE0E8BFFFCB11BDFAA312FFFFFFEAAAEFFFFFFFABB8EE3FFFFEAE81CFAFB),
    .INIT_19(256'hFFAEFA8A6BFFFB3DF89F8E2DAEBFFFFEAABFFFFFFFFFFC4F8FFFFFFFFFF3B3AA),
    .INIT_1A(256'hFF5FFEAEEBFFE5CAE8BF5AE2AEBFFFFFFABFFFFFFFFEBE5A30FFFFFFFFFEADCA),
    .INIT_1B(256'hFFE6FFEE86FFE23ABEDA08C8AEFFFFFFFEBFFFFEAFEABA6C1BFFFFFFFFFFECE1),
    .INIT_1C(256'hFFE1ABE2E6FF3F6FFE4A5CA3FFFFFFFFFFFFFFFFAEEAA8C68CFFFFFFFFFFFFBE),
    .INIT_1D(256'hFFF2BFE6FFFE2DFFFFFADDBAAFFFFFFFFFFFFFFFFEFAAE3AB06FFFFFFFFFFFFB),
    .INIT_1E(256'hE7F92FE2FBFDE4EFFEBB9B9ABFFFFFFFFFFFFFFFFB62A61E792FFFFFFFFFFFFF),
    .INIT_1F(256'h9B2DFEA7FBFE7B6FFCA9D75EFFFFFFFFFFFFFFFFEBA8A057998BFFFFFFFFFFFF),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_000000_000  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n3839,\U4/Addr [14:13]}),
    .dia({open_n3843,open_n3844,open_n3845,open_n3846,open_n3847,open_n3848,open_n3849,1'b0,open_n3850}),
    .rsta(nRST_pad),
    .doa({open_n3865,open_n3866,open_n3867,open_n3868,open_n3869,open_n3870,open_n3871,open_n3872,\U4/ROM0/inst_doa_i0_000 }));
  // address_offset=0;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0005"),
    //.WID("0x0005"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFBEABBC742AAAAAAAAA92B50AAF5ABED6BB542AAAAAAAAAAAAAAAAAAABEEAEE),
    .INIT_01(256'hFFBBFA0F6B7FFFFFFFFFBFB51EF856BED6BA58AFFFFFFFFAABAAAAAAAA0EAFEE),
    .INIT_02(256'hFF8BBEBB6BEFFFFFFFFE7BB51AED66AE92AD22AFFFFEBAEA44FAA9112F95FB63),
    .INIT_03(256'hFF8BAF9738BFFFFFFFFEDBA47AFB1AFE92B48BFAFFFAAC2AC4EF82AC2EAAAAEF),
    .INIT_04(256'hFF9AFAE67A2FFFFFFFFEEBA42AA535BE9AE6AFFAFFEB692EFE9EBC6AABEEFDFF),
    .INIT_05(256'hFF9ACBE53AEFFFFFEAFAEBA0AEBE12CA5A96FFFFFFEB6AAA9AA46FAFEFFA6FFF),
    .INIT_06(256'hFF8AFAEBABBFFFFFEAF8EE95AE9C5D7A5A57BFFFFFEEAAC7B446FAFFFEEB3FFF),
    .INIT_07(256'hFF8BBEFB1BFFFFFFEAFA2AD1BAF015AE5E56BFFFFFFA8E7405FEBFFFFEA8BFFF),
    .INIT_08(256'hFFBBB6FE8BFFEAFFEAAEEFD2AAC314B2595AFFFFBAA8A1454BABFFFFFF9AED4F),
    .INIT_09(256'hFFABB6FE5BFFFEBFEAAFBED3A9A5150B555FFFFFEA7D5556EABFEBFFFFAABB13),
    .INIT_0A(256'hFFBA8BEEABFFFFAFEAE7BE82B7259540556BFFFAB35055BEBFFAABFFFEBAFFFE),
    .INIT_0B(256'hFFEE9AEEEFFFEAEBEBEDBEBEA6941554157BFBFA30515BAFFFFEABFEBFEA11FF),
    .INIT_0C(256'hFFEEBFAEAFFFFA5EBFEFBE7ED375310E95ABFAEB5556EAAAAAAABFFFFFEF7FFF),
    .INIT_0D(256'hFFE2A9AD7ABFB792AFAABA4A9E98714E95EBFAB55556AAAAAAAFAAFFFFFB9FFF),
    .INIT_0E(256'hBFCFA9AD5AABE8E53AABAA4A5D41805596BAEB155555555555516BAAAFFEE7FF),
    .INIT_0F(256'h9FCEA6FA55EBEA4C5AAAABBB5A574C5657AFBD55555555555555554BABFBA4FF),
    .INIT_10(256'h8FF6EBBA556EAA5015C6AABA6F592C925EAB955685555555555555556EAAE8FF),
    .INIT_11(256'hB2BAAB6B5556EAD55532BB6D74C2B9525EB55A47F81555555555555555BABA57),
    .INIT_12(256'h2BE8AB2B55556EA156AAB86D2DACEA874ADC82E9D855AA85555555555506EAA6),
    .INIT_13(256'h3ACBF8BA555555B987EAB86824139DB43EA0E93FBFABAF815AC555555AAABAEB),
    .INIT_14(256'hDEB8AE9E95555550FF7AF9B5C108281CF9F649EA54EFE1455FD6EAAABAAAAAFB),
    .INIT_15(256'hF2EA6ECAD5555541183BA8E5E5AB7918ACE6552011BFDB95404011FABFFEBFFA),
    .INIT_16(256'hF4AA6A5695555414A52BAC82255155592105555555453229555540C5BABFFFFF),
    .INIT_17(256'hFEEEEA46A5555565F57BAD975555555405555555555556319555554551EAAFFF),
    .INIT_18(256'hFCFAAEC5B555567A258BAAD795555555555555555555510AD95555405103AAFB),
    .INIT_19(256'hFF9AFAA5A55556E6169BBE8915555555555555555555562A2C55555555478EAA),
    .INIT_1A(256'hFFABFEA561555D01568BEA5C55555555555555555555546D915555555554293A),
    .INIT_1B(256'hFFF3FFE57955461554EAEA5A55555555555555555555558B61555555555545A6),
    .INIT_1C(256'hFFEBABE94955B89554BAAB3155555555555555555555568CF25555555555550E),
    .INIT_1D(256'h7FF7FFE95555E1D555FA6A615555555555555555555554951885555555555550),
    .INIT_1E(256'hE6FEEFED555661C555AB6911555555555555555555195B6488C5555555555555),
    .INIT_1F(256'hED2DEEAD5555A58554BA2D055555555555555555555646942125555555555555),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_000000_001  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n3898,\U4/Addr [14:13]}),
    .dia({open_n3902,open_n3903,open_n3904,open_n3905,open_n3906,open_n3907,open_n3908,1'b0,open_n3909}),
    .rsta(nRST_pad),
    .doa({open_n3924,open_n3925,open_n3926,open_n3927,open_n3928,open_n3929,open_n3930,open_n3931,\U4/ROM0/inst_doa_i0_001 }));
  // address_offset=0;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0006"),
    //.WID("0x0006"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFCBFE7FBBEFFFFFFFFFEFEFEBFB92EBBFEEFEFFFFFFFFFFFFFFFFFFFFFFAABE),
    .INIT_01(256'hFFDEAFFEB9AAAAAAAAAADAEFABAF79EBBFEEF7FAAAAAAAAFFFFFFFFFFEE001F4),
    .INIT_02(256'hFFEEEBDFBD7AAAAAAAABDEEFBFB9ACBBBBFB9FFAAAABEFFEFA5557AE907BAFCB),
    .INIT_03(256'hFFEEFAFBEE7AAAAAAAAB6EEFAFB4F87BBBEE6EAFAAAFFB956BEAB906EBFFFD2F),
    .INIT_04(256'hFFEFAFBFAEFAAAAAAAAB2EEEFFE7DF2BBBAC7AAFAABE97EBFFA556FFFEBBF2FF),
    .INIT_05(256'hFFEFBEBEEFBAAAAABFAE3EEEBBC2AA6FFBBCAAAAAAB9AFFFA41BEAFABAAF9BFF),
    .INIT_06(256'hFFEF9FBD6EEAAAAABFAF7BFAFB97F7CFFBFEEAAAAABBFFBC0FEEAFAAABBDBFFF),
    .INIT_07(256'hFFEECBAF3EAAAAAABFADFFBBEF5EBA8FFAFFEAAAAAAFF5DBAFEBEAAAABE2FFFF),
    .INIT_08(256'hFFDECFAB3EAABFAABFF8BABAFE39FE8BFBFBAAAAEFFB5BEFEAFEAAAAAAF517BE),
    .INIT_09(256'hFFDEDBABEEAAABEABFFCEBAAFA6EBEE2FFFAAAAABE96FFFEBFEABEAAAAFFEBE9),
    .INIT_0A(256'hFFCFE7BBEEAAAAFABFB9EBAFEDAF7FB6FFEEAAAFF9BAFFABEAAFFEAAABEFAAAA),
    .INIT_0B(256'hFFCBF3BBBAAABEFEBEB6EB9FEC7EAFB6BFEEAEAFDEFBFAFAAAABFEABEAB8AB55),
    .INIT_0C(256'hFFDFE6FAFAAAAFFBEAB7EBDBBC9FDBF1BFBEAFBEFFFEBFFFFFFFEAAAAAB8FFFF),
    .INIT_0D(256'hFFDFF3FBEFEAEEFEFAF6EFAFB4A2DFF4BFBEAFEFFFFEAAAAAAAAFFAAAAAE7FFF),
    .INIT_0E(256'hFFE7F6FBFBFEBBBFAFF6FFFFF3EAAAE9BEEFBEBFFFFFFFFFFFFFEAFFFAAB9BFF),
    .INIT_0F(256'h7FF3F9EEFFBEBEEAFBE7FE7EE6FDF6E8FEFAEFFFFFFFFFFFFFFFFFEAFEAEFEFF),
    .INIT_10(256'hE7E7B8EEFFEBFFFABFBBFE6ED6BAA2ACFFFEBFFEAFFFFFFFFFFFFFFFEBFFBE2F),
    .INIT_11(256'hFDF2FCFEFFFEBFBFFF9FEFFBD65E04EDFBFFFAF907BFFFFFFFFFFFFFFFAFEFDB),
    .INIT_12(256'hBF76FDBEFFFFEBEFFE9BEFBBC0435179EFE2B9117AFFAAAFFFFFFFFFFFFEBFE5),
    .INIT_13(256'hBFA4EF6FFFFFFFABA90FEFFA8648731AEF5A06914054007BFAEFFFFFFAAAAFBC),
    .INIT_14(256'hEBE1FA7BBFFFFFFA418FAEAF3A874E827954FF45FA001ABFE56EBFFFEFFFFFAF),
    .INIT_15(256'hEBBCFB7BBFFFFFED6F8EFEAE3AD3DEF5111BAAFFEE406ABFFFAAAFAFEAABEAAF),
    .INIT_16(256'hFBFEBFAFFFFFFEBF5A9EFAE9FAAAAAAF9EFAAAAAAABA84ABFFFFFE6BAFEAAAAA),
    .INIT_17(256'hFDBBBFEEEFFFFFEE1ADEFBFDAAAAAAABFAAAAAAAAAAAAC4BBFFFFFFAAFBFFAAA),
    .INIT_18(256'hFF7FFBAFEFFFFED0BA6EFFB9EAAAAAAAAAAAAAAAAAAAAEE57BFFFFEAFEAEFFAE),
    .INIT_19(256'hFF7FAFEFBFFFFD1BEB6EEBA7EAAAAAAAAAAAAAAAAAAAA80507FFFFFFFFF93BFF),
    .INIT_1A(256'hFF8EABFFFBFFF06EAB7EAFF3AAAAAAAAAAAAAAAAAAAAABC7BEFFFFFFFFFEC7EF),
    .INIT_1B(256'hFFDBAABFEBFFE9AAAB2FAFE7AAAAAAAAAAAAAAAAAAAAAAF4ABFFFFFFFFFFEE5A),
    .INIT_1C(256'hFFF2FEBBEBFF97EAAB2FAE9AAAAAAAAAAAAAAAAAAAAAAB6B4EFFFFFFFFFFFFB5),
    .INIT_1D(256'hFFF9EABBFFFF1F2AAA2FEEDEAAAAAAAAAAAAAAAAAAAAAB2AE2AFFFFFFFFFFFFB),
    .INIT_1E(256'h5BFCBABBFFFC503AAA7EEFFEAAAAAAAAAAAAAAAAAAEEACFB142FFFFFFFFFFFFF),
    .INIT_1F(256'hE5BE7BFBFFFF96FAAA7EEBAAAAAAAAAAAAAAAAAAAA9BBCFFC20FFFFFFFFFFFFF),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_000000_002  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n3957,\U4/Addr [14:13]}),
    .dia({open_n3961,open_n3962,open_n3963,open_n3964,open_n3965,open_n3966,open_n3967,1'b0,open_n3968}),
    .rsta(nRST_pad),
    .doa({open_n3983,open_n3984,open_n3985,open_n3986,open_n3987,open_n3988,open_n3989,open_n3990,\U4/ROM0/inst_doa_i0_002 }));
  // address_offset=0;data_offset=3;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0007"),
    //.WID("0x0007"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFD7FFDCB09FFFFFFFFF41F00FFF877FC3FF289FFFFFFFFFFFFFFFFFFF7D5FDD),
    .INIT_01(256'hFFDD5D2F973555555557F7D827D42B5F61D78E7D5555555F575555555D25D535),
    .INIT_02(256'hFF45D7FD35F755555557B5DAA57CB3FFEDF4D1775557DDDF2A75550A95D0D791),
    .INIT_03(256'hFF45F5CB94F55555555567F29557AE5F6FF3455F555F5C3D401F4B7CBF57DD7F),
    .INIT_04(256'hFF675F773F9555555555FDD095F0B0DDE7DAD55F557F9DB5FDC5DCBDFF77CEFF),
    .INIT_05(256'hFF67C57ABD7555557F5DFFF8F57561652762F55555773F5DED5A95F5755D1FFF),
    .INIT_06(256'hFF477F775DD555557F565FE0F76C06BF2D29DD55557757C754195F55577FBFFF),
    .INIT_07(256'hFF65DF540D5555557F559F60FD72CA712D89D555557DCF787097FD5557D67FFF),
    .INIT_08(256'hFFFD515565557F557FF7F7EBF5CD02F10C0F5555DF7C7AB2BFFFFD5555CD7D21),
    .INIT_09(256'hFFFD5955A5555FD57FF35F61F6F0200F02255555553CA2A15DFD555555F5D429),
    .INIT_0A(256'hFF7F4777DD5557F77F5B7F41D930C2A90ABD555DC32D28D7FFF5555557DD7DFD),
    .INIT_0B(256'hFF5FE5F7FF555FBDFF5457D35B4308AAE81D5FF513042DFD75555555557FA1D5),
    .INIT_0C(256'hFFF3F3F7F5557F8F5F54D7B7C3301C8DE87D5FF52201FFFFFFFFD5555577BFFF),
    .INIT_0D(256'hFFD1F4549FD5FBEBF5D5D7AFE64B10A760FD55580021D55557DDFFF7555DEFFF),
    .INIT_0E(256'hFFCDD65685FF7EF2FFF5DF658630E30A415F7FC8A802828002A89F7FF55753FF),
    .INIT_0F(256'h6FCDD3D7AAFD7DB52555FD6D0F012F0181F5D08AA02A0000000AA8357F55F6FF),
    .INIT_10(256'hEDF3F7DF0017D58542497D5D958C344B03D74A2B5802020A800000AA1DFF74DF),
    .INIT_11(256'h7975FF3D0003FFCA80F35C5438C37E0987D8270974400000000000A0A2FFFD2B),
    .INIT_12(256'h14F4773F020A15DAA3F7FC9416F47F4B376DEB74670A7DD0AAA002AA8AA97F59),
    .INIT_13(256'h85C5747D82AA827ED957D6B7B029D7D0175676A57D7F5D448F300000AD7F5F7F),
    .INIT_14(256'hEFD6FFC7E02A808FFDBDD45060A4308E7E31E9BDF87DF8A00DC1D55557FFFFDD),
    .INIT_15(256'hDB7F9FEFE002801AA8955E58CABE621EDE502A000077ED682220A8DFFFFDD57F),
    .INIT_16(256'hF25715A9400001E2701756F5CAA2A221388AAAAAAA0A993E00008AC2DFDD5555),
    .INIT_17(256'hF7F77723D8002AB8E05754C2AAA828A2AAAAAAAAAAAAA53A480000A8027F5555),
    .INIT_18(256'hFEDFD74058002335284777482AAAAAA2AAAAAAAAAAAAA8256C0008150029DD5D),
    .INIT_19(256'hFF675FDAD80003D2A845757D2AAAAAAAAAAAAAAAAA82A19D540000000009A5FF),
    .INIT_1A(256'hFF7F5FD03E0026AAAACF5D8CAAAAAAAAAAAAAAAAAAAAA256CA80000020032F1F),
    .INIT_1B(256'hFFD97DDAB6001B2AAADFFF24AAAAAAAAAAAAAAAAAAAAA00D34000000280030F9),
    .INIT_1C(256'hFFD7FD7E9600D6AAAAFFFF58AAAAAAAAAAAAAAAAAAAAAAE0D9000000000000CD),
    .INIT_1D(256'h3FF3D576A8025BEAA8DFBD9AAAAAAAAAAAAAAAAAAAAAAAC0845000000000000E),
    .INIT_1E(256'h5BF7F576A009184AAA7D9E32AAAAAAAAAAAAAAAAAAC2A3C2E4F0000000000000),
    .INIT_1F(256'h763E77FEA00A700AAA5F9E02AAAAAAAAAAAAAAAAAA80251CB6D8000000000008),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_000000_003  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n4016,\U4/Addr [14:13]}),
    .dia({open_n4020,open_n4021,open_n4022,open_n4023,open_n4024,open_n4025,open_n4026,1'b0,open_n4027}),
    .rsta(nRST_pad),
    .doa({open_n4042,open_n4043,open_n4044,open_n4045,open_n4046,open_n4047,open_n4048,open_n4049,\U4/ROM0/inst_doa_i0_003 }));
  // address_offset=0;data_offset=4;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0008"),
    //.WID("0x0008"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFF65573FF57555555555F77F5557E1D5FD57DD75555555555555555555FF75FF),
    .INIT_01(256'hFF65575FFEF55555555565777D5FB4D5DD5771D555555555FFFFFFFFF7D22052),
    .INIT_02(256'hFF5D55675E9555555555ED75F55EFC555D5FC755555557F75D2AA8D76005DFC7),
    .INIT_03(256'hFF7D557F5F35555555573D5F75725FB55D7F3D555555FFE2377FF4AB5DFD769F),
    .INIT_04(256'hFF7D5551757555555557955D555B4F35D55F35555557E057FF522BDF5555DBFF),
    .INIT_05(256'hFF7DDD5F755555555557957555E9D59DD5DFD555555E57FF70075D555557CFFF),
    .INIT_06(256'hFF7D655EB5555555555D357F5561F967D5D755555555FDF281FDD55555567FFF),
    .INIT_07(256'hFF5D4D5D95555555555E75775587FD45D57D555555577825FFF555555571FFFF),
    .INIT_08(256'hFF65C7579D5555555554D5DD551E7FE5FFF5555555D585FD77555555555208D7),
    .INIT_09(256'hFF45EF57FD5555555556D5F55FBF7F53FDF555557F6B7D5DD5555555555F5DF4),
    .INIT_0A(256'hFFE5FB5575555755557ED5D55E7F3D51F555555556DFD7F55555555555577FFF),
    .INIT_0B(256'hFFED7B55555555D55571D5655C3F7F51D7D5555767FFF5555555555555547CAA),
    .INIT_0C(256'hFFC57355555575FD557955E5F6CF6FD0D7555557FDFDD555555555555556FFFF),
    .INIT_0D(256'hFFC759D7D5557F75557B55D57B7FE7785FD5557FFFDD5555557D555555553FFF),
    .INIT_0E(256'h7FDB7BD77555557DF559551DF9F7D7F67D5557F757FD7D7FFD57D755555567FF),
    .INIT_0F(256'hBFDB74D757D55577D5FB5597FBFED3FCFF5557755FD5FFFFFFF557F7555551FF),
    .INIT_10(256'h5BF15E55FFD555FFFF7F5795C3DD797CF55DF5FF75FDFDF57FFFFF55DD555FBF),
    .INIT_11(256'hF6715657FFFDD5F57FED5537C18522FE7D7FDFD683FFFFFFFFFFFF5F5F7557EF),
    .INIT_12(256'hFD9BDE57FDF5DD755FED57FF4A81A01475D3D40297FF7DFF555FFD55755F55F8),
    .INIT_13(256'h5FF8DFB5FD557F7DFE855DD741060AAD7D0FABC0A882023F7FFFFFFFFD55D556),
    .INIT_14(256'hFD5857155FD57F7F2A455DDF1F4185CBB62034828FA08D7FF2BDD55555555557),
    .INIT_15(256'hF554F595DFFD7FF615ED57771F41274822057F5557A8BD57D7D575D555555555),
    .INIT_16(256'hFDDD77FD7FFFFF5F2DED577C9FF7DFF4EFDFFFFFFF5D607DFFFF5D9755555555),
    .INIT_17(256'hFCD5555D57FFD57FAD0D557C7FFFFFFFFFFFFFFFFFFFD0A777FFFF7FF7D55555),
    .INIT_18(256'hFDB5555F77FFDFE87DBD55F67FFFFFFFFFFFFFFFFFFFFD789FFFF7FFF7577555),
    .INIT_19(256'hFF3D555557FFF487FD1D75707FFFFFFFFFFFFFFFFFFFFCA089FFFFFFFFD6DF55),
    .INIT_1A(256'hFFC5555FFDFFDA97FFB575FBFFFFFFFFFFFFFFFFFFFFFF09FD7FFFFFDFFF72D5),
    .INIT_1B(256'hFFE7555D55FFDEFFFFB5D7F1FFFFFFFFFFFFFFFFFFFFFF707FFFFFFFD7FFFF0F),
    .INIT_1C(256'hFFD3555D75FFC37FFF3555CDFFFFFFFFFFFFFFFFFFFFFFB705FFFFFFFFFFFFD8),
    .INIT_1D(256'h7FFED5555FFDA43FFF15D54FFFFFFFFFFFFFFFFFFFFFFD3FD97FFFFFFFFFFFFD),
    .INIT_1E(256'h0DFCD55D5FF4883FFD955767FFFFFFFFFFFFFFFFFF97F61F203FFFFFFFFFFFFF),
    .INIT_1F(256'hDA5F355D5FF5417FFFB75FF7FFFFFFFFFFFFFFFFFFE5F0616387FFFFFFFFFFF7),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_000000_004  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n4075,\U4/Addr [14:13]}),
    .dia({open_n4079,open_n4080,open_n4081,open_n4082,open_n4083,open_n4084,open_n4085,1'b0,open_n4086}),
    .rsta(nRST_pad),
    .doa({open_n4101,open_n4102,open_n4103,open_n4104,open_n4105,open_n4106,open_n4107,open_n4108,\U4/ROM0/inst_doa_i0_004 }));
  // address_offset=0;data_offset=5;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0009"),
    //.WID("0x0009"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFDAF9BF7ADBBFFFFFFF8E8E83AA31FE3BA8ACBFFFFFFFFFEFFABAFFFEBF8138),
    .INIT_01(256'hFFFAFEED631FBFFFFFFBBBCA02EBE3EA6ABEEEBAFFFFFEAEFBAFFEBAACDD1934),
    .INIT_02(256'hFFDEEFEBAFEFBFFFFFFABA8ABFE2682E6FE2FEFAFFEFFBFC757FA8696A897B97),
    .INIT_03(256'hFFDAFBF3F8FFFFFFFFFA5B9D0BEDEBFE7FDFCFAAFFFEA62B1F01634C83FEFE5F),
    .INIT_04(256'hFFDBFFB289EFFFFFFFFF4A8CFFCBFB1BA7CABFFAFFF87CDEFF27A8FBBEBBC1BB),
    .INIT_05(256'hFFDB3EFD9FBFFFFFFFF97FAC7F95C5CFA22F6BFFFFE2DAEE0D7482BFBEAE63FF),
    .INIT_06(256'hFFCBFBFBCBFFFFFFFFFE7FF1BA3AAF8CA7BDFFFFFFFBAB6162FD7BFFFFBA6FFF),
    .INIT_07(256'hFFCAA2FC5FFFFFFFFFFABFF6FFFAE543B0FABFFFFFEBAA26FA8BFFFFFF94AFFF),
    .INIT_08(256'hFFAAA7FE3AFFFFBFFFF87B39BC3EBA97ABA6FFFFFEA7B3FBB5BEFFFFFFDBF861),
    .INIT_09(256'hFFEBF6FB8AFFEEFFFFE0AF53A1293890FFFFFFFFF8BCBBAD3BEABFFFFFFFB0C5),
    .INIT_0A(256'hFFCF8FBB8FFFF8BFFFF3BE1EAF2EFE29FF8AFFFE876EEB9AEFEBFFFFFFFA8554),
    .INIT_0B(256'hFFC6B7BFEBFFF8AAEAA7AF23D8EF4E2DFFEAFAFBFBBEA3EFFEFBEFFFFFE510BA),
    .INIT_0C(256'hFFF3C0F9AAFFCAF6EAEDBEFE787EAE22BE6FFFEDAFFD2EAAAAABEBFFFFF9BFFF),
    .INIT_0D(256'hEBFEE4FBABFFDDA9ABF8AE0E6F5FBADD7B3FEBDFFFF941554402EBFBFFFABFFF),
    .INIT_0E(256'hBBCBE9BAB2BFA34BCAFAEF2BA3B593D73CFFF8EFFFEAAAAAAAAAD1FAFFFEABFB),
    .INIT_0F(256'hEFF6FAFAFB7EFCF7E7DAFF9DC6ABEB90F9BFA7BFFFFFEFFFFFFFAAF1EBFEA0FF),
    .INIT_10(256'h8ED7E1A8BE9FFEEFAAE6FDA8F92F6454F3EB7FEE3BFFFFFFFFFEEBAAD3FFF80E),
    .INIT_11(256'hEAB0F869FAE86A6EFFEBE92EACE80C80F3FABAA359FFFFFFFFFFFFFFEB1AFEB3),
    .INIT_12(256'h6CEDFA29FABEC7DAAEC2AA32C55EF6B3FE93E3F6B7FB3DAFFFFFFFFFFAE9FF8A),
    .INIT_13(256'h4F1BFFDBBBFFEA5FA20FBFA743A8A8708AEF464886FC51CBFABBEBAFF9412FE8),
    .INIT_14(256'h96B3BDDB2FFFFFAFC9AFFF7A9894F9F6F337CE203BCB381F8FC96EFFFEFABFEE),
    .INIT_15(256'hC7ACBFA72FFFFFBEEFBBFCD9B18B99FA7FD2D5EFE97F887FF9401D7AAFBFEFFF),
    .INIT_16(256'hF3ACEA0FBFFFFBF9F6FAF8BF2551154A9171555555F0ED3ABAAAB59A7AFFFFFF),
    .INIT_17(256'hFA6FFA49DBFFFFED429AF9F8554145555555555555551E926FFFFAC11B6EFFFF),
    .INIT_18(256'hFFBFEB9B9BFFFAF3C75AFF7595555555555555555555545EFAFFFFFEE85DEBBF),
    .INIT_19(256'hFFABFFCA3BFFEE10563ADB7ED5555555555555555555575B8ABFFFFFEAA7E2BF),
    .INIT_1A(256'hFB5FFFEF8BFFF5BC54EFDBA55555555555555555555550BBB5EFFFFFFFFABEFA),
    .INIT_1B(256'hFFE6FFFB86FFD684558B49925555555555555555555554C66EEFFFFFFFFFF9F1),
    .INIT_1C(256'hEFF4BFFBF2FE95C554CF089F55555555555555555555543D68BFFFFFFFFFFEBA),
    .INIT_1D(256'h7FF6EFF2FFFB275555AFCDC05555555555555555555550D0407FFFFFFFFFFFFF),
    .INIT_1E(256'h67F96FF2FFEDE70555EE8F8D555555555555555554085AE4B87BFFFFFFFFFFFF),
    .INIT_1F(256'hDA2D7BF7FFFE649557E98679555555555555555551921EFF14CEFFFFFFFFFFFF),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_000000_005  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n4134,\U4/Addr [14:13]}),
    .dia({open_n4138,open_n4139,open_n4140,open_n4141,open_n4142,open_n4143,open_n4144,1'b0,open_n4145}),
    .rsta(nRST_pad),
    .doa({open_n4160,open_n4161,open_n4162,open_n4163,open_n4164,open_n4165,open_n4166,open_n4167,\U4/ROM0/inst_doa_i0_005 }));
  // address_offset=0;data_offset=6;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x000A"),
    //.WID("0x000A"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFEBAFED703EEAAAAAAA82E14FFF4BEB86FE547AAAAAAAAABAAFEFAAABABAEFE),
    .INIT_01(256'hFFAEAA1F2A2AAAAAAAAAFAB15FA817AB86A81DAAAAAAAAABFAAFFEBAAA4BF9B6),
    .INIT_02(256'hFF8EAABE3EBAAAAAAAAB7AE09ABC47FBC6B862AAAAAAAFBAC06FF8442AC3AB62),
    .INIT_03(256'hFF9AAAC768AAAAAAAAAA5AF12EBB43AB96B18AAAAAABA86F55AEC6E86EFFBABF),
    .INIT_04(256'hFF8ABAB33E2AAAAAAAABBEF16AF064EE0AA7EAAAAAAF782FBFC7ED2BEAAAACFF),
    .INIT_05(256'hFF8ACEB46AAAAAAAAAAFBAC4EABA429A4F83FAAAAABB7EEBDAA42AEAAAAA2FFF),
    .INIT_06(256'hFF8AEEAAEEAAAAAAAAAD6A94AB99597E4E46EAAAAAAAAA83E016AEAAAABF7FFF),
    .INIT_07(256'hFF9AEFAE7EAAAAAAAAAA7AD0AAB655BA1B06EAAAAAAFCF35552AAAAAAAF9BFFF),
    .INIT_08(256'hFFFEAFAA8AAAAAAAAAABAADBEA874632004FAAAAABBCA5541FEAAAAAAAFEBC1A),
    .INIT_09(256'hFFFEA2AB5AAAABAAAABBAA96F984150F400EAAAABA3C1402EEAAAAAAAABBFA51),
    .INIT_0A(256'hFFFA8EAAEAAAABEAAAB6AB83E640C017003EAAAAE305002BAAAAAAAAAAAEBAAA),
    .INIT_0B(256'hFFABCFAABAAAAF3EAAA4AAEAA7911505402EAAAB25401FBAAAAAAAAAAABF40EA),
    .INIT_0C(256'hFFEBBBABFAAABF4FAAAAEB2FC331751B00BAAABA1002FFFFFFFEAAAAAAAB7FFF),
    .INIT_0D(256'hFFE2BFE86EAAA7D3FABAEB5FDB8D655B84EAAAA40007FEAAABEEBEAAAAAEDFFF),
    .INIT_0E(256'hFFCEA8A90EEABDE57FAAAA1A5D50150582AAAF400014000000006BAFAAABA3FF),
    .INIT_0F(256'hDFCAB3AC00AAAA580AFAABAE1C56194642EAE800000000000000001EBEAAF1FF),
    .INIT_10(256'hCAEEBAEF002EAA0001C2ABAF6F4119870AAEC01491000000000114002EAAA8EF),
    .INIT_11(256'hE3BAEFFE0503FFC10073AE2964D7BC570AA40002FD0000000000000001FFAA07),
    .INIT_12(256'h6EBDAB3F05402AE1542BAC6838ADBB825B9912F899058210000000000047EAA6),
    .INIT_13(256'h6FDFACEE440001B016AAAC693C07DDE56BA6E56DFBABAE941014005552BEAABF),
    .INIT_14(256'hDFF8EABBC0000005ED6EACE5F6422A4EBCAF79E111ABF9004ED2EAAAABAFEAAA),
    .INIT_15(256'hE7BB7B9FC00000014B2AA8E4EE8F7AD8B98EEAEFFF6AD380111057AFFAAAAAAA),
    .INIT_16(256'hF5AF6A56D0000005BB3AA8D62AAAFAB95EFEAAAAAAFE2241455505C1FFAAAAAA),
    .INIT_17(256'hFBFAEBD7E0000004BB5AAB82EABEBAABFAAAAAAAAAAAF2659000054400BFAAAA),
    .INIT_18(256'hFDEAAAC4E000043E2B5AAB86AAAAAAAAAAAAAAAAAAAAAEDE910000010016EEAA),
    .INIT_19(256'hFF9AAAA0A00016CEEA1AAA99EAAAAAAAAAAAAAAAAAAAAB6E6D4000000556DEEA),
    .INIT_1A(256'hFFFEAAA06400191EAACEFE4AAAAAAAAAAAAAAAAAAAAAAF690510000000053E3F),
    .INIT_1B(256'hFFE6AAA42800337AABEEBF42AAAAAAAAAAAAAAAAAAAAABB705000000000014E6),
    .INIT_1C(256'hFFEBEAA01C0113AAABFAFE57AAAAAAAAAAAAAAAAAAAAAA5B360000000000014F),
    .INIT_1D(256'hFFF3AAAC0405B96AAAAA7E1EAAAAAAAAAAAAAAAAAAFAAFEFFC80000000000005),
    .INIT_1E(256'h67FBBAA80012247AABBA391EAAAAAAAAAAAAAAAAAB3AAA6FC9D4000000000000),
    .INIT_1F(256'hB93D6AAC0000BAAAA9AE3D5EAAAAAAAAAAAAAAAAAA3EB2C3ED61000000000000),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_000000_006  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n4193,\U4/Addr [14:13]}),
    .dia({open_n4197,open_n4198,open_n4199,open_n4200,open_n4201,open_n4202,open_n4203,1'b0,open_n4204}),
    .rsta(nRST_pad),
    .doa({open_n4219,open_n4220,open_n4221,open_n4222,open_n4223,open_n4224,open_n4225,open_n4226,\U4/ROM0/inst_doa_i0_006 }));
  // address_offset=0;data_offset=7;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x000B"),
    //.WID("0x000B"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFF9AAB3EFAAAAAAAAAAAFBAFAAABD2AABEAAFEAAAAAAAAAAAAAAAAAAAAFEBAEF),
    .INIT_01(256'hFF9AABAFFDFAAAAAAAAA9ABFBEAF78EAFEAAF2EAAAAAAAAAAFFAABEFFBA003AD),
    .INIT_02(256'hFFAAAA9BA96AAAAAAAAADEBF3AADECAABEAFCBAAAAAAAAEBEED006AB902BEFCB),
    .INIT_03(256'hFFAEAABFAF3AAAAAAAABFEAFFAB1B97AAEBF3EAAAAAAFF90EEBFB817AEAAA96F),
    .INIT_04(256'hFFBEBAAABABAAAAAAAAA6AAEAAA79F3ABAAD3AAAAAABC2AEFEAC16EEAAAAE7FF),
    .INIT_05(256'hFFBEEAAFBAAAAAAAAAAA6AAAAAD6FA6EFAFDEAAAAAADEBBEB00AEEAAAAABCFFF),
    .INIT_06(256'hFFBEDAAD3AAAAAAAAAAAFABFAA96F69AFAFBAAAAAAAAFEF90AFEEAAAAAA9BFFF),
    .INIT_07(256'hFFAE8EAA3AAAAAAAAAADAAFBAA48FE8AEEFEAAAAAAAAB49AFFBAAAAAAAA2FFFF),
    .INIT_08(256'hFF9ACEAB6EAAAAAAAAA8EAE2AA6DBC9AFBFAAAAAAAEA4AFFFBAAAAAAAAB106EB),
    .INIT_09(256'hFF8ADFAAFEAAAAAAAAA9EAFAAF2FBFA3BFFEAAAAAF97FFFEEAAAAAAAAAAEBEBB),
    .INIT_0A(256'hFF9AF3AABAAAABAAAAADEAEAADAF3FE3FFEAAAAAA9FFFFBAAAAAAAAAAAABBFFF),
    .INIT_0B(256'hFFDEB2AAAAAAAAAAAABEEA9AAC3FBFF2FFEAAAAA9BFFFBAAAAAAAAAAAAA8BE55),
    .INIT_0C(256'hFFCAB3AAAAAABAFEAAB6AADEF9CF9FA4BFAAAAABFFFEEAAAAAAAAAAAAAA9FFFF),
    .INIT_0D(256'hFFCBA3ABEAAABFBEAAA7AAEAB5B7DBB4BFEAAABFFFFEAAAAAABEAAAAAAAA3FFF),
    .INIT_0E(256'hBFE7B7EBFAAAAAAEFAA6AAAEF6FBABF9BEAAABFFFFFFFFFFFFFFEFAAAAAA9BFF),
    .INIT_0F(256'h3FE7A8EAFFEAAABBFAA7AB6BF6FDE7FCFFAAABFFFFFFFFFFFFFFFFFBAAAAAAFF),
    .INIT_10(256'hA7F6ADAAFFEEAAFFFFFFAA6AC2FBA6BCFAAABFFEBEFFFFFFFFFFFFFFEEAAAF7F),
    .INIT_11(256'hB8B2A9EBFFFEEAFFFFDEAABBD24A10FDFEBFFAED03FFFFFFFFFFFFFFFFBAABDF),
    .INIT_12(256'hBA62EDABFFFFEEBFFE8EABFF8506402DBAE7A8416BFFAABFFFFFFFFFFFBEEAF4),
    .INIT_13(256'hAAE1EB3AFFFFFFBBBD4AAAFB870D261EBE0C1E871501013FFABFFFFFFAAAEAA9),
    .INIT_14(256'hFEB4AB3ABFFFFFFF13CAABAF7FCF1AD47914BA1FAB1142EFF17EEAAAAAAAAAAB),
    .INIT_15(256'hFAA8EA6AFFFFFFF92B8EABFF6FB68BE4007AFFEFFEC07ABFEBEABBEAAAAAAAAA),
    .INIT_16(256'hFEEAFBFEBFFFFFFF0FCEABBCAFFBEFFAFFFFFFFFFFFFC0ABFFFFEE6BBAAAAAAA),
    .INIT_17(256'hFCEAEAEEAFFFFFEF4FBEABBCBFFFFFFFFFFFFFFFFFFFE91BBFFFFFAFFBEAAAAA),
    .INIT_18(256'hFE7AAAEFBFFFFED1EFEEAAF8BFFFFFFFFFFFFFFFFFFFFFA06BFFFFFFFBABBAAA),
    .INIT_19(256'hFF3EAAAFEFFFF97AFEFEBAB2FFFFFFFFFFFFFFFFFFFFFC0046FFFFFFFFE96FAA),
    .INIT_1A(256'hFF8AAAAFEFFFE56FFE3AEAF7FFFFFFFFFFFFFFFFFFFFFF96BEFFFFFFFFFF90FA),
    .INIT_1B(256'hFFDBAAAFFBFFFCFFFF3AEBFEFFFFFFFFFFFFFFFFFFFFFFBDAFFFFFFFFFFFFF0F),
    .INIT_1C(256'hFFE3AAABFBFFBFBFFF7AABFFFFFFFFFFFFFFFFFFFFFFFEFBDAFFFFFFFFFFFFE4),
    .INIT_1D(256'hFFFDEAABFFFE4EBFFF2AEAFFFFFFFFFFFFFFFFFFFFFFFE3FE2BFFFFFFFFFFFFE),
    .INIT_1E(256'hCEFCEAAFFFFC41BFFE2AEBAFFFFFFFFFFFFFFFFFFFABF8AB503FFFFFFFFFFFFF),
    .INIT_1F(256'hE5AFFAAFFFFF87BFFF3BEFBFFFFFFFFFFFFFFFFFFF9AF9BBD74FFFFFFFFFFFFF),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_000000_007  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n4252,\U4/Addr [14:13]}),
    .dia({open_n4256,open_n4257,open_n4258,open_n4259,open_n4260,open_n4261,open_n4262,1'b0,open_n4263}),
    .rsta(nRST_pad),
    .doa({open_n4278,open_n4279,open_n4280,open_n4281,open_n4282,open_n4283,open_n4284,open_n4285,\U4/ROM0/inst_doa_i0_007 }));
  // address_offset=8192;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x000C"),
    //.WID("0x000C"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hEDBFB9ABFFFEAFAFFDA8D6BBFFFFFFFFFFFFFFFFEADA2A9BCD13FFFFFFFFFFFF),
    .INIT_01(256'hBEDAB869BFFCC6BEB9F887AFFFFFFFFFFFFFFFFFEE2B049BA61BFFFFFFFFFFFF),
    .INIT_02(256'hFFAC2928BFFF9EBEBB7BB96FFFFFFFFFFFFFFFFFEF73D19EBD4FFFFFFFFFFFCF),
    .INIT_03(256'hFFAECADCBFFADEBEB3E6FA3FFFFFFFFFFFFFFFFFEBF37EAEBB9AFAFFFFFFFE25),
    .INIT_04(256'h0AAAEE6DBFC59FFEB0E248EFFFFFFFFFFFFFFFFFEAF3747AEA147AFFFFFFFFD5),
    .INIT_05(256'hE6A6BE66FFFE3FEEB9B7CFAFFFFFFFFFFFFFFFFFEAF1FAEBEAA99FFFFFFFFF8A),
    .INIT_06(256'hDBAEAFBA2F68BFFFA863F42FFFFFFFFFFFFFFFFFEAF356FEEAE4F3FFFFFFFFB8),
    .INIT_07(256'hF8E6BF9C6EA6EBFBEC6F6C7FFFFFFFFFFFFFFFFFFFEDC6FBABA0F6FFFFBC3FFF),
    .INIT_08(256'hFFBD1B8A3FE6BEAFECAE748BFFFFFFFFFFFFFFFFFFEFEBBBA3F9BBFFFFF6E3FF),
    .INIT_09(256'hFE9B06EEBE26BFFFFCDBF90EFFFFFFFFFFFFFFFFFFEF5FB8304EBEFFFFFE6A7F),
    .INIT_0A(256'hFF9E4CA6FE7FFFEAF28CCA1FFFFFFFFFFFFFFFFFFFEFAF5DAFE2CDFFFFFE39F6),
    .INIT_0B(256'hFEEB9C32BE0BFCE4A6DF4524AFFFFFFFFFFFFFFFFFEFF933BABE727FFFFAC3D4),
    .INIT_0C(256'hFFFEFB5FF20FBBB4F4D95EDAABFFFFFFFFFFFFFFFFFFE69AEFFFED6FFFFFF1FB),
    .INIT_0D(256'hFFF4BBE5FB4FB0AAE9D8370F6ABFFFFFFFFFFFFFFFFADEEFFFFFE0EFFFFFE97E),
    .INIT_0E(256'hFFF96E3DFB7EDC1A0700F2AB5BBFFFFFFFFFFFFFFFFA838AFFEBC5FFFFFFEE1F),
    .INIT_0F(256'hFFFFA2EFFDAF4001804DCF6EEFBFFFFFFFFFFFFFFEEF1B6AFFEBB89FFFFFFEFF),
    .INIT_10(256'hFFFFDE757DAF5169C1CAC4E2B3BFFFFFFFFFFFFFFEB833AABFEBA47BBFFFFF97),
    .INIT_11(256'hFFFF4E8D99AB003EF6DDB344E0FFEFFFFFFFFFFFEA35FBBFFFEBEFABFFFFFFC4),
    .INIT_12(256'hFFFFD1E248BA02EA82BB0864DAEFFBBFFFFFFFFFE816BBFFFFFFEBCBFFFFFFF6),
    .INIT_13(256'hFFFFECD4E73B13AFF2D41255666AFBBFFFFFFFFEA51EFFEABFFFEF16FFFFFFFC),
    .INIT_14(256'hFFFFF47B0E6B5FFFF34BAC245E2AFFABFAFFFFFE9B6EEFFAFAFBFD2FFFFFFFFF),
    .INIT_15(256'hFFFFFDBC006F67FFF62DA0819E7EBEFFFFFFFFFB6CC3EAAAFEEBFF3BFFFFFFFF),
    .INIT_16(256'hFFFFFE23BDAF6BFFFB26FF38FA72BAABFEFFFFEE96DFF0B1BBABFFB3FFFFFFFF),
    .INIT_17(256'hFFFFFF6F54BA2FFFF8CDFFF255EAB5AEBABFEFBA4CA5EFFEA05FAFDAAEAFFFFF),
    .INIT_18(256'hFFFFFFF90A3B03FFFD5BFF9F28C5B8EEEFBFEAB5E53D142907EBAF18DFFFFFFF),
    .INIT_19(256'hFFFFFFD4EF4F17FFFFAFFCC3EA373EEE9ABFFACC8DD00007397EBF2583AFFFFF),
    .INIT_1A(256'hFFFFFFF461DF07FFFC4FFC3DFE4DF6AFB3AFF9368000691D03DBBFA0C71FFFFF),
    .INIT_1B(256'hFFFFFFD1AADE13FFFEAFFFFEFC0939AFCFEEB2300C8EFFFF2C32EABD47FFFFFF),
    .INIT_1C(256'hFFFFFFC3123AAFFFFEFFF7FBBF4AD0FFDFAB078C3013AAAAED41EAB2892FFFFF),
    .INIT_1D(256'hFFFFFFD10CFAAFFFFF5FF52DFF3BD2FF66AFE7111FFFFAAD7B4AEF62AF8BFFFF),
    .INIT_1E(256'hFFFFFFD25A2E93FFFFAFF165BFA966AB62EFB52B67FFFFFFEA17FFFBDFCBFFFF),
    .INIT_1F(256'hFFFFFFEE47FEEFFFFF6FF211BFD7F2AAE34A38F3A7FFFFFFF51BFA8A4B0BFFFF),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_008192_000  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n4311,\U4/Addr [14:13]}),
    .dia({open_n4315,open_n4316,open_n4317,open_n4318,open_n4319,open_n4320,open_n4321,1'b0,open_n4322}),
    .rsta(nRST_pad),
    .doa({open_n4337,open_n4338,open_n4339,open_n4340,open_n4341,open_n4342,open_n4343,open_n4344,\U4/ROM0/inst_doa_i1_000 }));
  // address_offset=8192;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x000D"),
    //.WID("0x000D"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hEA8FBBA95554C15555BA29D5555555555555555554D1D0212FC5555555555555),
    .INIT_01(256'hBEA94FEB5556995551EA68855555555555555555543427915AE1555555555555),
    .INIT_02(256'hBFAAEFAA5554A55552295005555555555555555555B0DCE55675555555555565),
    .INIT_03(256'h2FAEBA7B555265555B7D52155555555555555555554997455528555555555420),
    .INIT_04(256'h2AAAEE9B556155555B3D435555555555555555555543919555A3955555555564),
    .INIT_05(256'hBEAABEDA555A95555269D3155555555555555555555A5C555502E5555555552E),
    .INIT_06(256'hEEA5AF9695B3155552A981955555555555555555555A40555546F95555555511),
    .INIT_07(256'hF0AA6FA2946C555556E5CA955555555555555555555480550159F45555569555),
    .INIT_08(256'hFE6BFBB59570555556A5D8A555555555555555555554D1415456B5555555D955),
    .INIT_09(256'hFEBA7AE55469555553B4820555555555555555555554A557311090555555ED95),
    .INIT_0A(256'hFF5A8BA954C5554052F5CAD555555555555555555554C58C8545165555558388),
    .INIT_0B(256'hFFF688ED146554B043E726F65555555555555555555556261555B39555502F3C),
    .INIT_0C(256'hFFFE8B795BA55545E9E3657D155555555555555555555B8C5555464555554AF1),
    .INIT_0D(256'hFFF1FFCE51A55A005C66789A955555555555555555556BE155554B05555542BF),
    .INIT_0E(256'hFFFFE67652554D04B736ED4B6455555555555555555533A555556855555554FF),
    .INIT_0F(256'hFFFCF8955755A0003C7BAC83845555555555555555559E95555554E55555542B),
    .INIT_10(256'hFFFFFD7A9215A23A002AB68FED555555555555555556215555555A515555551E),
    .INIT_11(256'hFFFFB90BE215A1944F268D27B255555555555555558CD0555555541155555563),
    .INIT_12(256'hFFFFC649E705A05567561E9B885555555555555556271555555555015555555A),
    .INIT_13(256'hFFFFFA474385B6FFFB5FD069C79555555555555559D841555555557955555556),
    .INIT_14(256'hFFFFF8AC9695B3FFFD8D4413AB055455555555556F751555555556C555555555),
    .INIT_15(256'hFFFFFD2BAA959BFFFDFFE8023CC5575555555555A9F940005555553555555555),
    .INIT_16(256'hFFFFFF2013159BFFF9A3FEB0576D53155555555481B00EF10505556955555555),
    .INIT_17(256'hFFFFFF907B559FFFFF31FFFF442454155555555343F115500115556144055555),
    .INIT_18(256'hFFFFFFE2A215B3FFFD3AFFAFB2AA58555D555519EFC41412F92555A4A5155555),
    .INIT_19(256'hFFFFFFD41225B3FFFDEFFFD7E552995508555420DF400001A69555B5AC455555),
    .INIT_1A(256'hFFFFFFF4ADA5A3FFFFCFFC32FB2A5855215550DD0002EBE000A15521B6E55555),
    .INIT_1B(256'hFFFFFFD5D1E5A3FFFE4FFB3CFF43DE556555539006D155546000552C49555555),
    .INIT_1C(256'hFFFFFFC769C53FFFFF1FFF3DFF93A6552155D1030BE95555454A5527A6855555),
    .INIT_1D(256'hFFFFFFC111852FFFFFBFF97DBF0690557954C5DBBFFFFFFB840455E356D15555),
    .INIT_1E(256'hFFFFFFC349C51BFFFFAFF91DFF8DA455294629AA3BFFFFFFE63955626E915555),
    .INIT_1F(256'hFFFFFFF3435552FFFFBFFB41FFEEE054A98DA3F2E3FFFFFFFE11551280515555),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_008192_001  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n4370,\U4/Addr [14:13]}),
    .dia({open_n4374,open_n4375,open_n4376,open_n4377,open_n4378,open_n4379,open_n4380,1'b0,open_n4381}),
    .rsta(nRST_pad),
    .doa({open_n4396,open_n4397,open_n4398,open_n4399,open_n4400,open_n4401,open_n4402,open_n4403,\U4/ROM0/inst_doa_i1_001 }));
  // address_offset=8192;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x000E"),
    //.WID("0x000E"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hBE566EFFFFFE5EAAAB7EEB6AAAAAAAAAAAAAAAAAAB36E7CEB0ABFFFFFFFFFFFF),
    .INIT_01(256'hEBE57EBFFFFE7EAAAF7EEB7AAAAAAAAAAAAAAAAAAB898F7EAD2BFFFFFFFFFFFF),
    .INIT_02(256'hEAFE1EBEFFFF7AAAADBFFAFAAAAAAAAAAAAAAAAAAACB3E3AABCFFFFFFFFFFFEF),
    .INIT_03(256'hFAFBEFEEFFF9BAAAACBBF9AAAAAAAAAAAAAAAAAAAAB2E8BAAAC6FFFFFFFFFE9A),
    .INIT_04(256'hAFFFBBBEFFEBBAAAACFBB8AAAAAAAAAAAAAAAAAAAAB8EFEAAAC0BFFFFFFFFFC2),
    .INIT_05(256'hDBFBEBBBFFF52AAAACFB6CEAAAAAAAAAAAAAAAAAAAACA3AAAAF46FFFFFFFFFA5),
    .INIT_06(256'hE7FBFAFFBF95EAAAACBB7BEAAAAAAAAAAAAAAAAAAAADEFAAAABC5BFFFFFFFFBA),
    .INIT_07(256'hFEF9FAEEBED7AAAAA8BF24EAAAAAAAAAAAAAAAAAAAAA6FAAFEAF1AFFFFFEBFFF),
    .INIT_08(256'hFDFF3EEFBFDBAAAAA8FF327AAAAAAAAAAAAAAAAAAAAA2AAEAEAB5FFFFFF97BFF),
    .INIT_09(256'hFF6F8BBFFE9EAAAAA8EF74AAAAAAAAAAAAAAAAAAAAAA3AA88BFB5EFFFFFD57BF),
    .INIT_0A(256'hFFFFA6FBFE2AAABFA9EE653AAAAAAAAAAAAAAAAAAAAA3AE27AAE86FFFFFF3C7A),
    .INIT_0B(256'hFFDFE6BBBFFAAA0EB9ED9F1FAAAAAAAAAAAAAAAAAAAAAB99EAAAC1BFFFFACBC3),
    .INIT_0C(256'hFFE3F5AFF93AAAAF02E88A86EAAAAAAAAAAAAAAAAAAAAD67AAAAB4AFFFFFF2FD),
    .INIT_0D(256'hFFFAE57AF93AAFFFA2EC8EF5EAAAAAAAAAAAAAAAAAAAB55EAAAAB0EFFFFFECBF),
    .INIT_0E(256'hFFFCBD9EF9EAB3ABFDA85EB5FAAAAAAAAAAAAAAAAAAAC97AAAAAB0FFFFFFFF2F),
    .INIT_0F(256'hFFFF7B7FFCAAC00042A442F97AAAAAAAAAAAAAAAAAAA35EAAAAAA86FFFFFFEDF),
    .INIT_10(256'hFFFF3B9ABCEAC09442E57C7D5EAAAAAAAAAAAAAAAAA89AAAAAAAAC3BFFFFFFA3),
    .INIT_11(256'hFFFF8FA46CEAC2BEF1E47ECF5BAAAAAAAAAAAAAAAAE66EAAAAAAAA7BFFFFFFE8),
    .INIT_12(256'hFFFFEAF25CEAC3FFE9F547E067AAAAAAAAAAAAAAAB89EAAAAAAAAA7BFFFFFFF8),
    .INIT_13(256'hFFFFF6EF98EAD3FFF9E001FF59EAAAAAAAAAAAAAAF27AAAAAAAAAA0BFFFFFFFE),
    .INIT_14(256'hFFFFFA96F5EAD7FFF9A5F41BC5BAAAAAAAAAAAAAB48AAAAAAAAAAB1FFFFFFFFF),
    .INIT_15(256'hFFFFFED4F0EAD3FFF994FA40F33AA8AAAAAAAAAAD63EBFFFAAAAAA9FFFFFFFFF),
    .INIT_16(256'hFFFFFF99E9EAD7FFFD99FF942D9EA8EAAAAAAAAB6955540FAAFAAA9BFFFFFFFF),
    .INIT_17(256'hFFFFFF99ECAAD7FFFCCEFFF90EDBAFEAAAAAAAACA40FAAAAABFAAA8BEEAFFFFF),
    .INIT_18(256'hFFFFFFD83DAADBFFFE8FFFEF9463A6AAA2AAAAE25FFABEAFFE9AAACF6FBFFFFF),
    .INIT_19(256'hFFFFFFFF6DFADBFFFF5FFE2BFD39E2AAF7AAAB8E610000001BEAAACA61EFFFFF),
    .INIT_1A(256'hFFFFFFDF1F7ACBFFFE2FFEBEFD0CA3AACAAAAE3140041404017EAADA4D2FFFFF),
    .INIT_1B(256'hFFFFFFFE5E3ACBFFFF7FFDFBFE0F23AA8AAAA990006FFFFF941BAAD62E7FFFFF),
    .INIT_1C(256'hFFFFFFECC33AC7FFFF7FF9FEFF074FAA8EAAFB44BAABFFFFEE03AAD97B3FFFFF),
    .INIT_1D(256'hFFFFFFEAF77AD3FFFF2FFBBEFFD5CBAACEAB782AAFFFFFFEBF0BAA9DA92BFFFF),
    .INIT_1E(256'hFFFFFFE8B53AF3FFFF7FFBBBFFD49FAADEB9D2BD9BFFFFFFFC1EAA9DB16BFFFF),
    .INIT_1F(256'hFFFFFFD8BC2AA7FFFFBFF9ABFFC11BAB5EE71AF9FBFFFFFFF83EAAFDE7EBFFFF),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_008192_002  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n4429,\U4/Addr [14:13]}),
    .dia({open_n4433,open_n4434,open_n4435,open_n4436,open_n4437,open_n4438,open_n4439,1'b0,open_n4440}),
    .rsta(nRST_pad),
    .doa({open_n4455,open_n4456,open_n4457,open_n4458,open_n4459,open_n4460,open_n4461,open_n4462,\U4/ROM0/inst_doa_i1_002 }));
  // address_offset=8192;data_offset=3;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x000F"),
    //.WID("0x000F"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h77CDD5F4A003628AAB579C4AAAAAAAAAAAAAAAAAAA5882128548080000000000),
    .INIT_01(256'hF77E05760803D2AAABD79C6AAAAAAAAAAAAAAAAAA83ABE7AA35C0A0000000000),
    .INIT_02(256'h55F7F77F8800E2AAAB14264AAAAAAAAAAAAAAAAAAA10724AA870000000000038),
    .INIT_03(256'h15F775BD880F2AAAA31E0D2AAAAAAAAAAAAAAAAAAA8629AAAA1F00000000019A),
    .INIT_04(256'hBFFF7FCF8AB31AAAA1942DA2AAAAAAAAAAAAAAAAAAA9072AAA3BC0000000003A),
    .INIT_05(256'hF7F77FC528076AAAA3BC6922AAAAAAAAAAAAAAAA2A8B86AAA2837000000000D5),
    .INIT_06(256'hDD70FD6168F8AAAAABF6E9AAAAAAAAAAAAAAAAAAAAA1662AAA25DC000000004C),
    .INIT_07(256'hFA75B5F9E91AAAAA81D8572AAAAAAAAAAAAAAAAAAAAAEEA2A2215B000283C800),
    .INIT_08(256'hFD3CCDD8CA32AAAAA15244CAAAAAAAAAAAAAAAAAAAAA6228AE88F8000000CC80),
    .INIT_09(256'hFDDD37528912AAAAA170692AAAAAAAAAAAAAAAAAAAAA4A8119D8C300000016C0),
    .INIT_0A(256'hFF9545F6A162A082ABD2C572AAAAAAAAAAAAAAAAAAA8E0AEEA84230000A243C5),
    .INIT_0B(256'hFFF1C4F6E2CA0A548BF93EFE2AAAAAAAAAAAAAAAAAA800398A283340000717B6),
    .INIT_0C(256'hFFD7E7BCAD4A82255CFD909EA8AAAAAAAAAAAAAAAAA0A94EAAAA83B0000A0FF2),
    .INIT_0D(256'hFFF057CD8E6A88002C3BB21FAAAAAAAAAAAAAAAAAAAAA75AAAAAA790000A33FD),
    .INIT_0E(256'hFFF7DB318FCA37A80511F80D48AAAAAAAAAAAAAAAAA0934AAAAA8608000A087F),
    .INIT_0F(256'hFFFE7E4289AA100A3497DC2BCAAAAAAAAAAAAAAAAAA8F5AAAAA88278000A8317),
    .INIT_10(256'hFFFF46BFCBAAB1B5A03DE743DAAAAAAAAAAAAAAAAA89B8AAAAA8A38E0000AAEF),
    .INIT_11(256'hFFFFFEE5730A326B8531EAF6D0AAAAAAAAAAAAAA2A284AAAAAAAAAA400008A33),
    .INIT_12(256'hFFFFC926390A30801123AE8FE4AAAAAAAAAAAAAA2891AAAAAAAAAA8400000084),
    .INIT_13(256'hFFFFF58C212A03DFF5AD406B2B2AAAAAAAAAAAAAA164AAAAAAAAA89400000001),
    .INIT_14(256'hFFFFF4D6BB2A0BFFF6C60000B70AAA2AAAAAAAAA87300AAAAAAAA84000000000),
    .INIT_15(256'hFFFFFE370D2227FFFC5D7C03AECAABAAAAAAAAAA1EC2AAAAAAAAA8B88000000A),
    .INIT_16(256'hFFFFFD18008227FFF659FFF08192A12AAAAAAAA8C0602BDD220AA89C22800000),
    .INIT_17(256'hFFFFFFC2C3280FFFF59AFFFDAE3A8D2AA2AAA0A9A1FFA0A2A17AAA1411F00000),
    .INIT_18(256'hFFFFFFF1410803FFFEB7FF7779F4862AA4AAA82C72009682A292AA30F8600000),
    .INIT_19(256'hFFFFFFF729CA0BFFFE5FFFC3D2A12EAA1CAAA8B0E42000025A8AAA125E100000),
    .INIT_1A(256'hFFFFFFDDD34A3BFFFDCFFE19FD97AEAABA2AA06C8009D75A0268A21ADDFA0000),
    .INIT_1B(256'hFFFFFFD5404233FFFD0FFD36FD20C4AA10AA89E00942AAAA9802AA3428000000),
    .INIT_1C(256'hFFFFFFED566A1FFFFDAFFD9C7F41D4AA1AAA1A09AD76A0081A04AA1B68600000),
    .INIT_1D(256'hFFFFFFE17B4ABFFFFFFFFD1EFF0BC2A8F2826A67FFFFF55F4A82AA3B0BE40000),
    .INIT_1E(256'hFFFFFFC174EAB7FFFF5FF7A5FF6E74A872A99E55BFFFFFFFFA00AA39AD640000),
    .INIT_1F(256'hFFFFFFF177A2A3FFFFDFF7897FF5F0A8F2A67D7B73FFFFFFFF12AAB9AA440000),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_008192_003  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n4488,\U4/Addr [14:13]}),
    .dia({open_n4492,open_n4493,open_n4494,open_n4495,open_n4496,open_n4497,open_n4498,1'b0,open_n4499}),
    .rsta(nRST_pad),
    .doa({open_n4514,open_n4515,open_n4516,open_n4517,open_n4518,open_n4519,open_n4520,open_n4521,\U4/ROM0/inst_doa_i1_003 }));
  // address_offset=8192;data_offset=4;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0010"),
    //.WID("0x0010"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h5D2915575FFF8FDFFCB5573FFFFFFFFFFFFFFFFFFF2953EFD057F7FFFFFFFFFF),
    .INIT_01(256'h55D23F57F7FF27FFFEB75D3FFFFFFFFFFFFFFFFFFDECE98FF49FF5FFFFFFFFFF),
    .INIT_02(256'hD55D8F5577FD3FFFFCF7FD9FFFFFFFFFFFFFFFFFFF47071FFDAFFFFFFFFFFFFF),
    .INIT_03(256'hF555F5F777FCFFFFF67DFEFFFFFFFFFFFFFFFFFFFFF17C7FFFCBFFFFFFFFFFC5),
    .INIT_04(256'h55555577757CEFFFF67FFCFFFFFFFFFFFFFFFFFFFFF4527FFF40FFFFFFFFFFC9),
    .INIT_05(256'h655D55FDD7FABFFFF4D7967FFFFFFFFFFFFFFFFFFFFE73FFF7D83FFFFFFFFFD8),
    .INIT_06(256'hFB57557D57C2FFFFFE57B67FFFFFFFFFFFFFFFFFFFF633FFFFF2AFFFFFFFFFFF),
    .INIT_07(256'hF5DCD5555741FFFFDEDFB27FFFFFFFFFFFFFFFFFFFFD33FFF7F627FFFD7FF7FF),
    .INIT_08(256'hFED59577F5EFFFFFF65DB19FFFFFFFFFFFFFFFFFFFFF177DF1DDA7FFFFFEBF7F),
    .INIT_09(256'hFD17ED5D77C7FFFFFCFD1257FFFFFFFFFFFFFFFFFFFF9FD44E2D07FFFFFE09FF),
    .INIT_0A(256'hFFCDDB555F37FFD7F4FD108FFFFFFFFFFFFFFFFFFFFD3FD33FDB4BFFFF5D3617),
    .INIT_0B(256'hFFEF79DD5F1FFF2356DE61A9FFFFFFFFFFFFFFFFFFFFFD4CDFFF607FFFFF4F6B),
    .INIT_0C(256'hFFD152F75E1FFFD88BDE6D4BFFFFFFFFFFFFFFFFFFFFF6B3FFFFF27FFFF5D1F6),
    .INIT_0D(256'hFFFFDA9D7E9FD5557BD6476AFFFFFFFFFFFFFFFFFFFFF20FFFFFF8FFFFF5F47F),
    .INIT_0E(256'hFFFEDCED7C1F6277707CA5F89DFFFFFFFFFFFFFFFFF5C61FFFFFD0F7FFF5FDBF),
    .INIT_0F(256'hFFFDB5BD7C7F600281FA037E9FFFFFFFFFFFFFFFFFFF88FFFFFFD4B7FFF57F47),
    .INIT_10(256'hFFFF17EFF6FFE06001D2BAB40FFFFFFFFFFFFFFFFFD665FFFFFFF6B5FFFF55F9),
    .INIT_11(256'hFFFF67F8B65F617FF2D2178385FFFFFFFFFFFFFFFF7B17FFFFFFFF1FFFFF75F6),
    .INIT_12(256'hFFFFFFF9A45F61FFDEF8A3789BFFFFFFFFFFFFFFFD647FFFFFFFFFBFFFFFFF75),
    .INIT_13(256'hFFFFF9DBC67F69FFF6FAA2148E7FFFFFFFFFFFFFF43BFFFFFFFFFF27FFFFFFFD),
    .INIT_14(256'hFFFFFD696A7F63FFFE5AD00FCADFFDFFFFFFFFFFD84D5FFFFFFFFD8FFFFFFFFF),
    .INIT_15(256'hFFFFFF605A7F43FFFEEAD500D93FFEFFFFFFFFFF4B17FFFFFFFFFD677FFFFFF5),
    .INIT_16(256'hFFFFFF6ED6FF43FFF646FD601CC7F67FFFFFFFFDBC0808AA5F5FFDEFDD7FFFFF),
    .INIT_17(256'hFFFFFF44947F6BFFFE67FFF683CFD07FFFFFFFFED288DFFD560FFFCDFF5FFFFF),
    .INIT_18(256'hFFFFFFE694DF67FFFF65FFFF6211DB7FD9FFFF512577415F574FFF473FDFFFFF),
    .INIT_19(256'hFFFFFFC2969F67FFFF8FFD1FDE3E79FF49FFFDED1AA000088F5FFF6D187FFFFF),
    .INIT_1A(256'hFFFFFFC8AC9F67FFFF9FFD75F60E5BFFEFFFF73A0008828002BFFF4D0835FFFF),
    .INIT_1B(256'hFFFFFFC88D1F47FFFD9FFE77FF8511FFEFFFD46008BFFFFD4027FF49153FFFFF),
    .INIT_1C(256'hFFFFFFD023BF6BFFFF3FF6FFFFA381FF6FFF4F02D7D7FFF7DF81FF641DBFFFFF),
    .INIT_1D(256'hFFFFFFFC223FC3FFFF3FFE5D7F6A4FFD27D79EB5FFFFFFF77D27FF4ED61FFFFF),
    .INIT_1E(256'hFFFFFFFC2A1FCBFFFF1FFC547F40C9FD07D4435EC7FFFFFFDF27FF44DA1FFFFF),
    .INIT_1F(256'hFFFFFFEC2097D1FFFF7FFC7CFFE22DFD87F30FF477FFFFFFFC07FFC45B9FFFFF),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_008192_004  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n4547,\U4/Addr [14:13]}),
    .dia({open_n4551,open_n4552,open_n4553,open_n4554,open_n4555,open_n4556,open_n4557,1'b0,open_n4558}),
    .rsta(nRST_pad),
    .doa({open_n4573,open_n4574,open_n4575,open_n4576,open_n4577,open_n4578,open_n4579,open_n4580,\U4/ROM0/inst_doa_i1_004 }));
  // address_offset=8192;data_offset=5;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0011"),
    //.WID("0x0011"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hA9AEBFBEFFFFB12552AC97155555555555555555501C87606746FFFFFFFFFFFF),
    .INIT_01(256'hFA9E79FEFAFE895551EE8F15555555555555555556AD06755D4FFBFFFFFFFFFF),
    .INIT_02(256'hBFEC2D6CBEFE8555552AEC355555555555555555549D6B21571BBFFFFFFFFFAF),
    .INIT_03(256'hBFFE9EDCABEFC5555AB7BED55555555555555555555CD0015533BFFFFFFFFFB0),
    .INIT_04(256'h5FFEFE68BFE0A1555BE71E5555555555555555555558FC9555A0BFFFFFFFFFD4),
    .INIT_05(256'hEEF3FB67BFAED5555EB38AD55555555555555555555340555D0DBFFFFFFFFF8B),
    .INIT_06(256'hDFEFBFEE6FA845554023509155555555555555555559B9555558ABFFFFEFFEFD),
    .INIT_07(256'hB9B3BB896EE51555717A2D955555555555555555555279500C48A7FFFFBEEFFE),
    .INIT_08(256'hBEFC0FCFAFBD555154AE24A55555555555555555555200C4FC22BFFFFFE7FBBF),
    .INIT_09(256'hFFBB56FBAF0D55514ACFFC2C55555555555555555552A5769EF70FFFFFFA3EFF),
    .INIT_0A(256'hFF8B19A6FFE9553C4B88C105555555555555555555501528044C2BFFFFFB2DF7),
    .INIT_0B(256'hFEFE9936BC25520E7B9B5B631555555555555555555542E02500B37FFFFEC791),
    .INIT_0C(256'hFFEAAF1AFAA5511A50DC573B1555555555555555555549915555563FFFFFF1EE),
    .INIT_0D(256'hFFF1EFE4AEE53AFF98DE6C8E1555555555555555555503455555412FFFFFFC3E),
    .INIT_0E(256'hFFF96E6CFEA5C4B5BD40AE086355555555555555554A666555556DBFFFFFFE1F),
    .INIT_0F(256'hFFFEE2BFFB159000B949A18AC05555555555555555404815555564AFFFFFFFFB),
    .INIT_10(256'hFFFF8A7AB9050038D08E8A4C455555555555555555753B5555555D2BFFFFFFC3),
    .INIT_11(256'hFFFF4AEFF8E5916FBE84897CCA5555555555555555A40C55555556FBFFFFFFE5),
    .INIT_12(256'hFFFFC5811EE582FFC2AF40DF8815555555555555529C5155555554CAFFFFFEF5),
    .INIT_13(256'hFFFFAD93778596BAA29113BF67C55555555555555E990555555555D2FFFFFFFC),
    .INIT_14(256'hAABFF074DA958FFFF35EF40E2AB154155555555437A2B455555556EFFFFFFFFF),
    .INIT_15(256'hFFFFFDB6E59597FFF32DA0C26FD555155555555588AC5455055157BFFFFFFFFE),
    .INIT_16(256'hFFFFFE2374119FFFFE63FF78940950C555555547C474028215F557BBBFFFFFFF),
    .INIT_17(256'hFFFFFF556B159BFFF89DFBF200BD2FD5555555175392D55447B5557BAFFFFFFF),
    .INIT_18(256'hFFFFFFF32DF587FFFD0EFB7A7C9E3695435554CB6B97FAD0A87155A8FBFFFFFF),
    .INIT_19(256'hFFFFFEC0CD2597FFFFFFFD53EB248955F715538D3C8000061CF555B587BFFFFF),
    .INIT_1A(256'hFFFFFFCE1B2593FFFD0FFFF8FE490C556C155FB2C0152959034555C8B53FFFFF),
    .INIT_1B(256'hFFFFFFCE7525B7FFFFBFF438FD1C825535553C70119ABFFB6C3855CCFD6FFFFF),
    .INIT_1C(256'hFFFFFFCFED91EBFFFFAFF1FCBF4FAE542555A788A517AFEED80B45C3261BFFFF),
    .INIT_1D(256'hFFFFFFDA84005BFFFF4FF8FDFFFAFD56B97860158FFFEFE87B405583618BFFFF),
    .INIT_1E(256'hFFFFFFCF908527FFFFFFFC42BFF32F568831E161A3FFFFFFFB1D55DD6D5BFFFF),
    .INIT_1F(256'hFFFFFFFB8C9916FFFF2FF942BFC4FF5718122DBCD7FFFFFFF42D544CBC0FFFFF),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_008192_005  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n4606,\U4/Addr [14:13]}),
    .dia({open_n4610,open_n4611,open_n4612,open_n4613,open_n4614,open_n4615,open_n4616,1'b0,open_n4617}),
    .rsta(nRST_pad),
    .doa({open_n4632,open_n4633,open_n4634,open_n4635,open_n4636,open_n4637,open_n4638,open_n4639,\U4/ROM0/inst_doa_i1_005 }));
  // address_offset=8192;data_offset=6;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0012"),
    //.WID("0x0012"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hBBCEEBE900018FAAACEB2C6AAAAAAAAAAAAAAAAAAB46FDFBA7D1000000000000),
    .INIT_01(256'hABB9DAE80500CAAAADE8213AAAAAAAAAAAAAAAAAAB22731EA8B4040000000000),
    .INIT_02(256'hAABBFBBB0101EAAAAD29143AAAAAAAAAAAAAAAAAAA974D2EAA25400000000045),
    .INIT_03(256'h3AABBB7E14162AAAAB2C477AAAAAAAAAAAAAAAAAAAAEBCFEAAE94000000001A1),
    .INIT_04(256'h2EABABDF00000EAAAB6857AAAAAAAAAAAAAAAAAAAAB1B0AAAAB6000000000034),
    .INIT_05(256'hFFAAAACE405FAAAAAF7DC6EAAAAAAAAAAAAAAAAAAAABE3AAAAE7C0000000006A),
    .INIT_06(256'hFBB0EA928026FAAAAFF984AEAAAAAAAAAAAAAAAAAAA953AAAAB3F00000100004),
    .INIT_07(256'hF4AA7AF2C16AEAAAAAE5DBAAAAAAAAAAAAAAAAAAAAAD17ABFFA8B10000001001),
    .INIT_08(256'hFE3EEEB01067AAAAAFA0D8AAAAAAAAAAAAAAAAAAAAAC6BAF07FAE4000010C000),
    .INIT_09(256'hFEFF3FA4110AAAAAB3F0921EAAAAAAAAAAAAAAAAAAACEABB141F31000005A800),
    .INIT_0A(256'hFF4A8AF801CEAAFFB2E4808AAAAAAAAAAAAAAAAAAAAE7A983FA694000005C3D9),
    .INIT_0B(256'hFFF2C8F8402AAD01F6F632B6AAAAAAAAAAAAAAAAAAAAAA71FABEB38000012B3D),
    .INIT_0C(256'hFFEB8B7D02AAAAA508F73AB8EAAAAAAAAAAAAAAAAAAAA9D7AAAAAC1000004FF1),
    .INIT_0D(256'hFFF0ABCF15EABAFFEC346A8EAAAAAAAAAAAAAAAAAAAAE24EAAAABF10000013FE),
    .INIT_0E(256'hFFFBF733073AC41EB522EFBD2AAAAAAAAAAAAAAAAAABF36AAAAAA940000004BF),
    .INIT_0F(256'hFFFCBD8007EAA0007C6BE7B2EEAAAAAAAAAAAAAAAAAFC9AAAAAAB8800000012F),
    .INIT_10(256'hFFFFA97006EAA36B013BA37D4AAAAAAAAAAAAAAAAABF63AAAAAAAB540000005F),
    .INIT_11(256'hFFFFF96F82EAB1955E3EEF2692AAAAAAAAAAAAAAAA8C7EAAAAAAAC1400000002),
    .INIT_12(256'hFFFFC60FF7EAB040221346FF9FEAAAAAAAAAAAAAAA75BAAAAAAAAB1400000109),
    .INIT_13(256'hFFFFFA4782AAA3EFFA5EC06C96AAAAAAAAAAAAAAA9DEFAAAAAAAAA6800000002),
    .INIT_14(256'hFFFFF8F787AAA7FFF9C90C36BB7AABAAAAAAAAAAA66FAAAAAAAAAAC000000000),
    .INIT_15(256'hFFFFFD33AEAABBFFFCAEBC03ECFAA8EAAAAAAAAA89BBABFFFAAAAB2400000000),
    .INIT_16(256'hFFFFFE31BAEEBBFFF9A6FEE03D4EA8EAAAAAAAABD73ABA80AEFAAA3040000000),
    .INIT_17(256'hFFFFFFFB2AAABFFFFA65FFFB5023B4EAAEAAAAAE4F903AAFAD1AAAA510000000),
    .INIT_18(256'hFFFFFFEAFD3AA3FFFD7BFF9FA3EAB1EAB3AAAAED7BFD142EFB9AAAB5C4400000),
    .INIT_19(256'hFFFFFFCC2D2AA7FFFDAFFE97E015BBAAC7AAAB345A000004C2BAAAA0A9500000),
    .INIT_1A(256'hFFFFFFD18D6AB7FFFECFFEF7FE2BAFAAE7AAADDC0006EBA5016EAAC8F4800000),
    .INIT_1B(256'hFFFFFFC07E6AA3FFFE0FFF39FF02F6AAAAAAB1D0028155556413AAD94BD00000),
    .INIT_1C(256'hFFFFFFD13BFAEFFFFE5FFFF8FFC2A2ABBEAA85069AB95004354AAAD32AC40000),
    .INIT_1D(256'hFFFFFFC4183ACBFFFFFFF6EDFF52D3AB2AAF448B7FFFFAAF905FAA96E9940000),
    .INIT_1E(256'hFFFFFFC507EACBFFFFAFF29EBF81B3AB0ABC69ABBFFFFFFFE72AAAD0AC440000),
    .INIT_1F(256'hFFFFFFE1003EFBFFFFEFF3EEFFE4A3AB4B95B6FAA7FFFFFFFF1EAAC0C7040000),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_008192_006  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n4665,\U4/Addr [14:13]}),
    .dia({open_n4669,open_n4670,open_n4671,open_n4672,open_n4673,open_n4674,open_n4675,1'b0,open_n4676}),
    .rsta(nRST_pad),
    .doa({open_n4691,open_n4692,open_n4693,open_n4694,open_n4695,open_n4696,open_n4697,open_n4698,\U4/ROM0/inst_doa_i1_006 }));
  // address_offset=8192;data_offset=7;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0013"),
    //.WID("0x0013"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hAE162BABFFFF4FFFFF3AEBFFFFFFFFFFFFFFFFFFFFA2A2DFE9AFFFFFFFFFFFFF),
    .INIT_01(256'hAAE16FEAFFFE2BFFFE7AEAFFFFFFFFFFFFFFFFFFFFC98AEFFB6FFFFFFFFFFFFF),
    .INIT_02(256'hEAAE4FAAFFFE2FFFFFFBFFBFFFFFFFFFFFFFFFFFFFABBBAFFE9FFFFFFFFFFFEF),
    .INIT_03(256'hEAAAFAFBFFFCAFFFF8BFFCFFFFFFFFFFFFFFFFFFFFF3BEBFFFD3FFFFFFFFFF0E),
    .INIT_04(256'hAAAAAABBFFEEBFFFF9BFFDFFFFFFFFFFFFFFFFFFFFFEBABFFF91BFFFFFFFFFC7),
    .INIT_05(256'h9EAEAAFAFFF07FFFFDEB78FFFFFFFFFFFFFFFFFFFFF9BBFFFFF02FFFFFFFFFE4),
    .INIT_06(256'hE6ABAABEBF90FFFFFCAB2ABFFFFFFFFFFFFFFFFFFFFBBBFFFFFC5BFFFFFFFFFF),
    .INIT_07(256'hFAECEAAEBF83FFFFFCEF70BFFFFFFFFFFFFFFFFFFFFFFBFFFFFA1FFFFFFEBFFF),
    .INIT_08(256'hFDEA6ABFBFDFFFFFF8AF726FFFFFFFFFFFFFFFFFFFFEBBFEAAFE1BFFFFFD7BFF),
    .INIT_09(256'hFE3ADAAFFFFBFFFFF9BE21BFFFFFFFFFFFFFFFFFFFFE6FF9EFABDBFFFFFD07BF),
    .INIT_0A(256'hFFEEE7ABFF6FFFFFFCFF6F6FFFFFFFFFFFFFFFFFFFFEBFB3FFEB96FFFFFE392B),
    .INIT_0B(256'hFFDFB6EFFEAFFFBBBDED9E5AFFFFFFFFFFFFFFFFFFFFFE8FFFFF80BFFFFF8FD7),
    .INIT_0C(256'hFFE2F1FBF96FFFEEE7EDCFD6FFFFFFFFFFFFFFFFFFFFFB2FFFFFF4FFFFFFE2F9),
    .INIT_0D(256'hFFFFE56EFD6FFAFFF3E88BA1BFFFFFFFFFFFFFFFFFFFEDFFFFFFF0BFFFFFF8BF),
    .INIT_0E(256'hFFFDECDEFCFFEAFBABBC5BF3AFFFFFFFFFFFFFFFFFFFD9AFFFFFE4FFFFFFFE7F),
    .INIT_0F(256'hFFFF7A7FFDBF800116F51AB93FFFFFFFFFFFFFFFFFFF27BFFFFFF86FFFFFFF8B),
    .INIT_10(256'hFFFF2BDAB9FF909002E06DFBFBFFFFFFFFFFFFFFFFF89FFFFFFFF87FFFFFFFF6),
    .INIT_11(256'hFFFF9FC169FF82BFE5E53B9A7EFFFFFFFFFFFFFFFFA3EFFFFFFFFE2FFFFFFFE9),
    .INIT_12(256'hFFFFFFE219FF82FFEDF45EA563FFFFFFFFFFFFFFFECFFFFFFFFFFF7FFFFFFFFB),
    .INIT_13(256'hFFFFF6EAC8BF86FFF9F550AB0DBFFFFFFFFFFFFFFA73FFFFFFFFFF5BFFFFFFFE),
    .INIT_14(256'hFFFFFE8EA4BF83FFFDA5E41F95FFFEFFFFFFFFFFECCFFFFFFFFFFE4FFFFFFFFF),
    .INIT_15(256'hFFFFFF8DA0BF93FFFDD5EA01F27FFFFFFFFFFFFFB72BFFFFFFFFFFDBFFFFFFFF),
    .INIT_16(256'hFFFFFF8CF8FF93FFF989FF902FFBFBFFFFFFFFFF29C5513BABFFFF8BFFFFFFFF),
    .INIT_17(256'hFFFFFF98A9BF97FFFD9BFFFD4BCBFAFFFBFFFFFCE52BAFFAAEAFFFDEFFFFFFFF),
    .INIT_18(256'hFFFFFFD92EFF8BFFFF9AFFAF9026FFFFEFFFFFF7CEBBEBEEABBFFF9B2FFFFFFF),
    .INIT_19(256'hFFFFFFEE7FAF8BFFFF4FFF3FED7BB2FFEFFFFF8AF01000003ABFFF8F24BFFFFF),
    .INIT_1A(256'hFFFFFFFE7AEF8BFFFF6FFC3AF90CF7FFCFFFFF750004414000EFFFF31B6FFFFF),
    .INIT_1B(256'hFFFFFFEEDEAF9BFFFE6FF9FAFE4A6AFFDFFFFF90007FFFFE800FFFF67A7FFFFF),
    .INIT_1C(256'hFFFFFFEF977FC7FFFF3FFD3EFF135AFF9FFFAB012BEBFFFBFF46FFFCEE2FFFFF),
    .INIT_1D(256'hFFFFFFFEA6FFF3FFFF3FF87FBFC59FFFCBFFEC7BBFFFFFFBAE0BFFBDBF3FFFFF),
    .INIT_1E(256'hFFFFFFFFAD7FF3FFFF2FF87CFF8DCFFFBBFB97A85BFFFFFFED0BFFFBE3FFFFFF),
    .INIT_1F(256'hFFFFFFDBAB2FE6FFFFBFF950FFDF1FFFFBAF0FF1EBFFFFFFFC2FFFEBB3BFFFFF),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_008192_007  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n4724,\U4/Addr [14:13]}),
    .dia({open_n4728,open_n4729,open_n4730,open_n4731,open_n4732,open_n4733,open_n4734,1'b0,open_n4735}),
    .rsta(nRST_pad),
    .doa({open_n4750,open_n4751,open_n4752,open_n4753,open_n4754,open_n4755,open_n4756,open_n4757,\U4/ROM0/inst_doa_i1_007 }));
  // address_offset=16384;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0014"),
    //.WID("0x0014"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFE0C81EA6EFFFFFF200FFD0C3EEF78D4FEEBFFFFFFFFE2BFAC6C01BFFFF),
    .INIT_01(256'hFFFFFFC9E946EBEFFFFFF609FFC813AA7ADA3FFFF3FFFFFFF40BFAD0734BFFFF),
    .INIT_02(256'hFFFFFFCCD162FCFFFFFFFE9BBFF94274BB26FFE8BBFFFFFFF43BFEA8CE3BFFFF),
    .INIT_03(256'hFFFFFFFC92A6F73FFFFFFF3EBFDDAE8DE197FFD126FFFFFFF3EBFE367E3BFFFF),
    .INIT_04(256'hFFFFFFF265A6BF4FFFFFFFFFFFFF6DF29D7FFFF007FFFFFFE63BFF6D36E2AFFF),
    .INIT_05(256'hFFFFFFF7254FBBA3FFFFFFFFFE7A7BE0F663FFE01BFFFFFFF7AFFF152FF06BAA),
    .INIT_06(256'hFFFFFFFE5B9BAAECFFFFFFFFF9FABEFEE4DFFFD437FFFFFFDCABFE350CCA06F0),
    .INIT_07(256'hFFFFFFFF0CBBAABEBFFFFFFF97FAFFFAB2FFFFE47BFFFFFF2BAFEC48550B9AC0),
    .INIT_08(256'hFFFFFFFF1442AAAEB7FFFFFE5FFFFFFEBF9FEFFB5FFFFFFF5AAEE23779778BFF),
    .INIT_09(256'hFFFFFFFF4FDDAAAB862FFF0CEEFFFFFEFE9FFFFC7FFFFFFEFEAFEB5779CBCBFF),
    .INIT_0A(256'hFFFFFFFFF3D9AAAAB94D3B0BAABFFBFEBECFFFFFFFFFFFFF7EAFBAA08977F9BF),
    .INIT_0B(256'hFFFFFFFFE149AAAAAAA41EEAAABFFEFEBEE6FFFFFFFFFFFEBFEBA031DB2A29BF),
    .INIT_0C(256'hFFFFFFFFFD76AAAFFFFFFEABFABFFFBEBEBBFFFFFFFFFFF03FFBAF20D7476E7F),
    .INIT_0D(256'hFFFFFFFFFFE3FFFFFFFFFEBFFFFFFBFBFFFEBFFFFFFFFFD3FFFEFFB2BBA3EE7F),
    .INIT_0E(256'hFFFFFFFFFF08FFFFFFFFFFFFFFFFE5EBFFFB8BFFFFFFFFF6FFFA3A2331FA8B7F),
    .INIT_0F(256'hFFFFFFFFFF8DFFFFFFFFFFFFFFFF9DEBFFFAE7FFFFFFFF2EBFFBB61D44FB3AAE),
    .INIT_10(256'hFFFFFFFFFFB22FFFFFFFFFFFFFFF18AFFFFAB87FFFFFFD7EBFEA5B70F3FF6F6B),
    .INIT_11(256'hFFFFFFFFF2766FFFFFFFFFFFFFFF58BFFFFEEE07FFFFCEBBFFFD81038FFB1F4F),
    .INIT_12(256'hFFFFFFFF9F656BFFFFFFFFFAAAFB9DEBFFFFFB1C565CD6FBFFED0DC86FFFEFD1),
    .INIT_13(256'hFFFFFFFFC590EAFFFFFFFFFAAAFBD2FFFFFFFAEF44188BFFFFEDB351FFFFB3B3),
    .INIT_14(256'hFFFFFFCE07467AFFFFFFFFFFFFFFFBFEAAAAAAFEBEEBABFFFFE8BD6E3FFFE0EF),
    .INIT_15(256'hFFFFFF689F2A0ABFFFFFFFFAAAABFE082EBABABAAAAAABFFFFAA30A351ABFABE),
    .INIT_16(256'hFFFFFFFFFCD1DABFFFFFFFEABF0AE1F942B1E6FAFFFFFFFFFEABC6F540DAF93B),
    .INIT_17(256'hFFFFFFFFF8853ABFFFFFFF82C346C2965FF8207AFFFFEBFFFEFB3BFFFF6BAFDE),
    .INIT_18(256'hFFFFFFFF407BEEBFFFFFACE3C634AFFFFFFFF79EFFFFABFFFA9AB6FFFFE748EB),
    .INIT_19(256'hFFFFFFEFAD4F5ABFFFEE0389FFFFFFFFFFFFFF1BFFFFFFFFE9621CFFFFFE1A9B),
    .INIT_1A(256'hFFFFFE8E9DF7B2BFFFEAC3FFFFFFFFFFFFFFFF51EAFFFFFFEBB25CBFFFFFF8EE),
    .INIT_1B(256'h0550951A85D59FBFFFEAE3FFFFFFFFFFFFFFFF727AFFFFFFA2E983FFFFFFFFFF),
    .INIT_1C(256'h00C172955445F4AFFFAACAD8FFEC3BBA447CFF7B9AFFFFFFB7EA2CBFFFFFFFFF),
    .INIT_1D(256'hAAAA95554556ADEFFFE98F25555555D5555AA76636BFFFFEA17AB98FFFFFFFFF),
    .INIT_1E(256'h555555555556F5ABFEF8D9BFEAAAAAAAAABA9B6EBEAFFFFEACA8233EFFFFFFFF),
    .INIT_1F(256'h555555555552AC6BFEF82FFEAEAABBFFA16AEEBBC9AFFFEFD7C4730FFFFFFFFF),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_016384_000  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n4783,\U4/Addr [14:13]}),
    .dia({open_n4787,open_n4788,open_n4789,open_n4790,open_n4791,open_n4792,open_n4793,1'b0,open_n4794}),
    .rsta(nRST_pad),
    .doa({open_n4809,open_n4810,open_n4811,open_n4812,open_n4813,open_n4814,open_n4815,open_n4816,\U4/ROM0/inst_doa_i2_000 }));
  // address_offset=16384;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0015"),
    //.WID("0x0015"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFE0C9854DFFFFFFFB51FFDCB144AD91BBEDF2FFFFFFF84555471B415555),
    .INIT_01(256'hFFFFFFCCE89D4EFFFFFFFE5EFFF967247E54FFD9FAFFFFFFF8E55544C9415555),
    .INIT_02(256'hFFFFFFEDC0E956BFFFFFFDD7FFF007B641F8FFCDF6FFFFFFF455554A51315555),
    .INIT_03(256'hFFFFFFFD82695B7FFFFFFFAFFFE5971E62CBFFD0A3FFFFFFFD15550825315555),
    .INIT_04(256'hFFFFFFF622B955BFFFFFFFFFFF8414590927FFD143FFFFFFF685554435390555),
    .INIT_05(256'hFFFFFFFF6321557FFFFFFFFFFFD55540526FFFC153FFFFFFC155554C3528C500),
    .INIT_06(256'hFFFFFFFF1821555EFFFFFFFFFF555555517FFFF56BFFFFFFEE5555282230E3F1),
    .INIT_07(256'hFFFFFFFD9D3555563FFFFFFFF1555555517FFFE56FFFFFFFD15554283A317BBF),
    .INIT_08(256'hFFFFFFFFD1105554ABFFFFF855555555556FFFF6EFFFFFFF51545B030A691BFF),
    .INIT_09(256'hFFFFFFFFE5CA55550BBFFFD945555555557FFFFFFFFFFFFEC55552F3068168FF),
    .INIT_0A(256'hFFFFFFFFE24A555551AD5141555555555543FFFFFFFFFFFD45555660A2C957BF),
    .INIT_0B(256'hFFFFFFFFEF4E555554155155555555555559FFFFFFFFFFFB15554661819D90FF),
    .INIT_0C(256'hFFFFFFFFF0985555555555555555555555537FFFFFFFFFF195554CB08BEB04DF),
    .INIT_0D(256'hFFFFFFFFFE4D555555555555555554555554DFFFFFFFFFEC555551F28540346F),
    .INIT_0E(256'hFFFFFFFFFC7C55555555555555555155555537FFFFFFFFF05555A3A34956FCA3),
    .INIT_0F(256'hFFFFFFFFFEF955555555555555554C55555548FFFFFFFF21555508CCB6537B1F),
    .INIT_10(256'hFFFFFFFFFE2695555555555555554C155555523FFFFFFC8555544337E955EECC),
    .INIT_11(256'hFFFFFFFFFE4E95555555555555550D15555554FBFFFFEF155556740FA5554FE6),
    .INIT_12(256'hFFFFFFFFDD8A95555555555555550955555555D36EE0E4555555DC3F85557FF9),
    .INIT_13(256'hFFFFFFFC834F5555555555555555515555555546AEAD61555556B5AA555507F5),
    .INIT_14(256'hFFFFFF90EDDA155555555555555555555555555415415555555496C8955542FE),
    .INIT_15(256'hFFFFFFF83E92655555555555555554A2855015555555555555551A88DB5557FF),
    .INIT_16(256'hFFFFFFFFFDF8E5555555555555A051BEBFBE98555555555555556BFE3D75503F),
    .INIT_17(256'hFFFFFFFFFB23C5555555552847AD6EC5BBFA6C95555555555555B7FFF6F105FF),
    .INIT_18(256'hFFFFFFFFDAAE9555555504B96F4FBFFFFFFFFAA55555555554644AFFFF93066B),
    .INIT_19(256'hFFFFFFF69DDA115555546BD6BFFFFFFFFFFFFF215555555556A89DFFFFFF9EEB),
    .INIT_1A(256'hFFFFF9F9A76E3D5555548BFFFFFFFFFFFFFFFFDE55555555554E63FFFFFFFE43),
    .INIT_1B(256'h5555FB6A8BBF61555554CBFFFFFFFFFFFFFFFFC2955555555ACC1A3FFFFFFFFF),
    .INIT_1C(256'h00C05EBFEEEE6655555486E0AABC45145147BFC4E5555555597080FFFFFFFFFF),
    .INIT_1D(256'hAAAABFFFEFFC4E555556D6C55555555555506F9C6955555543903A7FFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFD1C155556910000000000000015B4145555554E099DBFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFD539555568000140011550A8104801E55555557FEC52BFFFFFFFF),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_016384_001  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n4842,\U4/Addr [14:13]}),
    .dia({open_n4846,open_n4847,open_n4848,open_n4849,open_n4850,open_n4851,open_n4852,1'b0,open_n4853}),
    .rsta(nRST_pad),
    .doa({open_n4868,open_n4869,open_n4870,open_n4871,open_n4872,open_n4873,open_n4874,open_n4875,\U4/ROM0/inst_doa_i2_001 }));
  // address_offset=16384;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0016"),
    //.WID("0x0016"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFDB372AB7FFFFFFF9AAFFE65AAB5E6C2FF2FFFFFFFFFD3AAAA9C3EBFFFF),
    .INIT_01(256'hFFFFFFE7173AB5FFFFFFF9A6FFE7CCDBC5F5BFF6FBFFFFFFF83AAAAA52EBFFFF),
    .INIT_02(256'hFFFFFFE33F5EA8FFFFFFFF7FFFEFECCF9F03FFF6FFFFFFFFF8AAAAB0369BFFFF),
    .INIT_03(256'hFFFFFFF37D5EACBFFFFFFFFFFFEB68F39873FFEABBFFFFFFF0EAAAB1D29BFFFF),
    .INIT_04(256'hFFFFFFF9DC4EAA2FFFFFFFFFFFFAEBA2F3DBFFEAABFFFFFFF1EAAAF7C29BAFFF),
    .INIT_05(256'hFFFFFFF8DD8EAA8BFFFFFFFFFFEAEABAADDBFFFABFFFFFFFF2AAAAE7C29B3FAA),
    .INIT_06(256'hFFFFFFFDE5CEAAA2FFFFFFFFFFAAAAAAAFBFFFFE9BFFFFFFC3AAAA93C78A095A),
    .INIT_07(256'hFFFFFFFF30CAAAA9FFFFFFFFFAAAAAAAAAAFFFFEDFFFFFFF9EAAAA87D38BCFEA),
    .INIT_08(256'hFFFFFFFF3CBBAAAB5BFFFFFFFAAAAAAAAAAFFFFD2FFFFFFFFEABAD9CD7DBA7FF),
    .INIT_09(256'hFFFFFFFFC827AAAAE1BFFFA7BAAAAAAAAABFFFFEBFFFFFFF3AAAAD1CDB6BE7FF),
    .INIT_0A(256'hFFFFFFFFD927AAAAAF03AEEEAAAAAAAAAAAFFFFFFFFFFFFEFAAAA95F4F3BFCFF),
    .INIT_0B(256'hFFFFFFFFF3E3AAAAABEFFAAAAAAAAAAAAAA3FFFFFFFFFFFCEAAABC1E7E37BA7F),
    .INIT_0C(256'hFFFFFFFFFFE3AAAAAAAAAAAAAAAAAAAAAAACFFFFFFFFFFFBEAAAB10F7C21AE3F),
    .INIT_0D(256'hFFFFFFFFFDB2AAAAAAAAAAAAAAAAAAAAAAAB3FFFFFFFFFE3AAAAA54D69EBDE9F),
    .INIT_0E(256'hFFFFFFFFFFF2AAAAAAAAAAAAAAAAAFAAAAAACFFFFFFFFFCBAAAAD51CF2FDE79F),
    .INIT_0F(256'hFFFFFFFFFF37AAAAAAAAAAAAAAAAB3AAAAAAB3FFFFFFFF9EAAAAD133CEF9BDF3),
    .INIT_10(256'hFFFFFFFFFF59EAAAAAAAAAAAAAAAF3EAAAAAACBFFFFFFE3AAAABC4CF1BFF3F37),
    .INIT_11(256'hFFFFFFFFF9D1EAAAAAAAAAAAAAAAF3EAAAAAAB0BFFFFE0EAAAAB4FEC6FFFAF89),
    .INIT_12(256'hFFFFFFFFE7B0EAAAAAAAAAAAAAAAB3AAAAAAAAF4ABAE0FAAAAAB73B0AFFFDBF3),
    .INIT_13(256'hFFFFFFFF6868AAAAAAAAAAAAAAAABEAAAAAAAAB90403BEAAAAA84EC2FFFFBBF9),
    .INIT_14(256'hFFFFFFE50329AAAAAAAAAAAAAAAAAAAAAAAAAAABEABEAAAAAAAA7B57BFFFEAFD),
    .INIT_15(256'hFFFFFF96EF38FAAAAAAAAAAAAAAAABFFFAAFEAAAAAAAAAAAAAAAAC712BFFFDFF),
    .INIT_16(256'hFFFFFFFFFE3A3AAAAAAAAAAAAAFFAB4000406FAAAAAAAAAAAAAAB1FC82FFFABF),
    .INIT_17(256'hFFFFFFFFFCE83AAAAAAAAAFFAC05416BAFFE92EAAAAAAAAAAAAAC7FEBD1FAF3F),
    .INIT_18(256'hFFFFFFFFA1976AAAAAAAFA4141BEFFFFFFFFF97AAAAAAAAAAB8B93FFFFF9BEDF),
    .INIT_19(256'hFFFFFFFD762FBEAAAAABC06EFFFFFFFFFFFFFF8EAAAAAAAAAB1F26FFFFFFA547),
    .INIT_1A(256'hFFFFFF47E4FBCEAAAAAB2BFFFFFFFFFFFFFFFFB3AAAAAAAAAA7DECFFFFFFFEBF),
    .INIT_1B(256'hAAAA40AFE2EACEAAAAAB3BFFFFFFFFFFFFFFFFB9EAAAAAAAAD36A9FFFFFFFFFF),
    .INIT_1C(256'hAA6ABBEAABBADFAAAAAB6FEE5556BFBFAABEFFBD3AAAAAAAAD5E867FFFFFFFFF),
    .INIT_1D(256'hFFFFEAAABAAAF3AAAAAB05100000000000055BB11EAAAAAAB8BA946FFFFFFFFF),
    .INIT_1E(256'hAAAAAAAAAAABF2EAAAAB045555555555555547914BAAAAAAB0A2B31FFFFFFFFF),
    .INIT_1F(256'hAAAAAAAAAAABF4EAAAAB1555540011550001515543AAAAAABD60398FFFFFFFFF),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_016384_002  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n4901,\U4/Addr [14:13]}),
    .dia({open_n4905,open_n4906,open_n4907,open_n4908,open_n4909,open_n4910,open_n4911,1'b0,open_n4912}),
    .rsta(nRST_pad),
    .doa({open_n4927,open_n4928,open_n4929,open_n4930,open_n4931,open_n4932,open_n4933,open_n4934,\U4/ROM0/inst_doa_i2_002 }));
  // address_offset=16384;data_offset=3;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0017"),
    //.WID("0x0017"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFB574080FFFFFFF702FFCA4888D86ADFFCF3FFFFFFF48AA82324EC0000),
    .INIT_01(256'hFFFFFFCD55D285FFFFFFF50DFFFF7FB875987FE47DFFFFFFF4CAA8808ECC0000),
    .INIT_02(256'hFFFFFFD7779AA9FFFFFFFC5BFFD9C7BE8AFCFFE4F3FFFFFFF80AA82BB836AAAA),
    .INIT_03(256'hFFFFFFD5D792A1BFFFFFFF7FFFD14394BBFFFFC079FFFFFFF6AAA82E589E2AAA),
    .INIT_04(256'hFFFFFFFB5F72A87FFFFFFFFFFFC8CB0E3DFBFFC22BFFFFFFF92AA84B721ED200),
    .INIT_05(256'hFFFFFFFDD63A2A1FFFFFFFFFFF0AEA808F7FFFE213FFFFFFEA8AA843583668FF),
    .INIT_06(256'hFFFFFFFFF69AAA8DFFFFFFFFFC2A28AAAD8FFFE4BFFFFFFFFCAAA8BFD23FD9F2),
    .INIT_07(256'hFFFFFFFE5C3AAA8B3FFFFFFF60AAAAAAA21FFFFC5FFFFFFF42AAA0BDC6BCB5D5),
    .INIT_08(256'hFFFFFFFF7E38AAAAD7FFFFFCDAAAAAAAAA3FFFFB7FFFFFFF70A8A305E67CE7FF),
    .INIT_09(256'hFFFFFFFFB0C4AAA2855FFFE5AAAAAAAAAA0D7FF57FFFFFFFCAA8A365404C36FF),
    .INIT_0A(256'hFFFFFFFFFB84AAA2ABD72AC8AAAAAAAAAAAB7FFFFFFFFFFE4A8A8BB5DAC4037F),
    .INIT_0B(256'hFFFFFFFFDECCAAAAA82F700AAAAAAAAAAAACFFFFFFFFFFFD2A8A8795DA6ECC7F),
    .INIT_0C(256'hFFFFFFFFF186AAA0AAA82AA8AAAAAAAAAA813FFFFFFFFFF32AAA8E5DF1FFB3EF),
    .INIT_0D(256'hFFFFFFFFFD26AAAAAAAAAAAAAAAAA2AAAAAA4D7FFFFFFFDEAAAA2A7D483293BF),
    .INIT_0E(256'hFFFFFFFFFEEEAAAAAAAAAAAAAAAA87AAAAAA3B7FFFFFFFF2AAAA11754E01D4F3),
    .INIT_0F(256'hFFFFFFFFFDEF2AAAAAAAAAAAAAAA3D2AAAAAA6FFFFFFFF9AAAAA24F537AFB70D),
    .INIT_10(256'hFFFFFFFFFF99AAAAAAAAAAAAAAAA752AAAAA833FFFFFFEEAAAA8E95CFEA8DFEE),
    .INIT_11(256'hFFFFFFFFF5452AAAAAAAAAAAAAAAF52AAAAAA8FFFFFFF7AAAAAA15417008AFFB),
    .INIT_12(256'hFFFFFFFF64C52AAAAAAAAAAAAAAAB72AAAAAAA31BDFA76AAAAA33525D80217C5),
    .INIT_13(256'hFFFFFFFECB050AAAAAAAAAAAAAAA9CAAAAAAAA8173D702AAAAA1D415000A43F2),
    .INIT_14(256'hFFFFFFE85EEF8AAAAAAAAAAAAAA022AAAAAAAAAA28802AAAAAA8F0844AA8B3FF),
    .INIT_15(256'hFFFFFFF43F44CAAAAAAAAAAAAAAAA00028882AAAAAAAAAAAAAAA03ECC6A8097D),
    .INIT_16(256'hFFFFFFFFFC6C42AAAAAAAAAA8008837FFFDDEA2AAAAA0AAAAAAA8DF114A00E3F),
    .INIT_17(256'hFFFFFFFFF519E2AAAAAAAA008F723562FDF5B42AAAAAAAAAAAA81BFF79F2DA6F),
    .INIT_18(256'hFFFFFFFFC7F5CAAAAAA8AA5C17215FFFFFFFF7EAAAAAAAAAAA320DFFFFEB2197),
    .INIT_19(256'hFFFFFFD94CC71AAAAAAA5761FFFFFFFFFFFFFF38AAAAAAAAAAF066FFFFFD6577),
    .INIT_1A(256'hFFFFFC5C5B1D92AAAAAA6FFFFFFFFFFFFFFFFF7EAAAAAAAAA809517FFFFFFD01),
    .INIT_1B(256'h0AA07F3DCD7F12AAAA8AE7FFFFFFFFFFFFFFFFCB2AAAAAAAA1E6EDBFFFFFFFFF),
    .INIT_1C(256'h00C2A57FFFFF1CAAAA82E1FA5F5C22608029FFE24AAAAAAAA233FAFFFFFFFFFF),
    .INIT_1D(256'h55557FFFDFFFA6AAAAA869E00AAAA0000AA01F4432AAAAAA896FF59FFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFCA6AAAA8AC2202AAAAAAA8028227882AAAAAAAFDA467FFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFF4AB2AAA8A40A20BD7EE287FDEA2CA84AAAAAAB55DE21FFFFFFFFF),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_016384_003  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n4960,\U4/Addr [14:13]}),
    .dia({open_n4964,open_n4965,open_n4966,open_n4967,open_n4968,open_n4969,open_n4970,1'b0,open_n4971}),
    .rsta(nRST_pad),
    .doa({open_n4986,open_n4987,open_n4988,open_n4989,open_n4990,open_n4991,open_n4992,open_n4993,\U4/ROM0/inst_doa_i2_003 }));
  // address_offset=16384;data_offset=4;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0018"),
    //.WID("0x0018"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFC40037DBFFFFFFFCFFFFDBA7DDA5B637FB75FFFFFFFCBFFDD4C39FFFFF),
    .INIT_01(256'hFFFFFFD20007DAFFFFFFFCF1FFF0A8E52AC8FFD3FDFFFFFFFC1FFD7F0B1FFFFF),
    .INIT_02(256'hFFFFFFDA2087F67FFFFFFDAFFFFE12C3C7A9FFD17DFFFFFFFCDFFD7CABED5555),
    .INIT_03(256'hFFFFFFFA8207F6FFFFFFFFFFFFDC3EC16EABFFDF5FFFFFFFF8FFFDD223EDD555),
    .INIT_04(256'hFFFFFFFC0227FD3FFFFFFFFFFFFF3CF16A27FFDDFFFFFFFFD87FFD12036DFDFF),
    .INIT_05(256'hFFFFFFFE02CF7F6FFFFFFFFFFF7FBFDDF00FFFDDEFFFFFFFD9DFFFB82147B7FF),
    .INIT_06(256'hFFFFFFFE8A67FFDBFFFFFFFFFDFFFFFFF2FFFFDBCFFFFFFFC9FFFD40096F06A5),
    .INIT_07(256'hFFFFFFFF20CFFFD6FFFFFFFFDFFFFFFFF7FFFFF9A7FFFFFFCFFFF54021EF677F),
    .INIT_08(256'hFFFFFFFF28E5FFFF0FFFFFF707FFFFFFFFDFFFFC3FFFFFFF25FFF440090FD3FF),
    .INIT_09(256'hFFFFFFFF66B9FFF7F87FFFF07FFFFFFFFFDFFFFDFFFFFFFD3FFFFE20251FF1FF),
    .INIT_0A(256'hFFFFFFFFEEB1FFF7FC085FBDFFFFFFFFFFDFFFFFFFFFFFFD1FFFDC80AF17FE7F),
    .INIT_0B(256'hFFFFFFFFDB39FFFFFD58075FFFFFFFFFFFD1FFFFFFFFFFF6FFFFD8A08F91FDBF),
    .INIT_0C(256'hFFFFFFFFFE7BFFFFFFFD7FFFFFFFFFFFFFDE7FFFFFFFFFFE7FFFD08086B27FBF),
    .INIT_0D(256'hFFFFFFFFFCF9FFFFFFFFFFFFFFFFFDFFFFFF9FFFFFFFFFF3FFFF58801CF56FCF),
    .INIT_0E(256'hFFFFFFFFFF9BFFFFFFFFFFFFFFFFFAFFFFFFCFFFFFFFFFCFFFFF6820BBFCF94F),
    .INIT_0F(256'hFFFFFFFFFF307FFFFFFFFFFFFFFFCA7FFFFFF1FFFFFFFF4FFFFFCA82435EF47B),
    .INIT_10(256'hFFFFFFFFFD067FFFFFFFFFFFFFFF887FFFFFDEFFFFFFFF3FFFFDA8098D579D99),
    .INIT_11(256'hFFFFFFFFFC207FFFFFFFFFFFFFFF0A7FFFFFFF27FFFFDAFFFFFFA0163FF75FCC),
    .INIT_12(256'hFFFFFFFFFB507FFFFFFFFFFFFFFF4A7FFFFFFF60DDD583FFFFF482DAF7FDE7D0),
    .INIT_13(256'hFFFFFFFD1694DFFFFFFFFFFFFFFFC3FFFFFFFFDE2A8A57FFFFF60141FFF5DFFE),
    .INIT_14(256'hFFFFFF708B9CDFFFFFFFFFFFFFFFFFFFFFFFFFFF7FD57FFFFFFF85A9755775FC),
    .INIT_15(256'hFFFFFFE17D3D9FFFFFFFFFFFFFFFF5557F7D7FFFFFFFFFFFFFFD5612B757F6FF),
    .INIT_16(256'hFFFFFFFFFF3D9FFFFFFFFFFFD55F5C8800A23FFFFFFFFFFFFFFFD2F6EBFFFD7F),
    .INIT_17(256'hFFFFFFFFF45E3FFFFFFFFF5778A8089777F5CB7FFFFFFFFFFFFF4BFD7EA7F73F),
    .INIT_18(256'hFFFFFFFFF2499FFFFFFFF5A822D77FFFFFFFFEBFFFFFFFFFFF67E1FFFF767DC7),
    .INIT_19(256'hFFFFFFFE3BB5CFFFFFFF003F7FFFFFFFFFFFFFCDFFFFFFFFFF07B9FFFFFF7883),
    .INIT_1A(256'hFFFFF7A37ADD67FFFFFFB7FFFFFFFFFFFFFFFF43FFFFFFFFFD3C16FFFFFFFD5F),
    .INIT_1B(256'hFFFFA2D5537FEFFFFFDF97FFFFFFFFFFFFFFFFF67FFFFFFFF431DC7FFFFFFFFF),
    .INIT_1C(256'h5595FD7FDFFDE9FFFFD71DD5A0A9DF7DFF5F7FDE9FFFFFFFF427E1BFFFFFFFFF),
    .INIT_1D(256'h55557FFFDFFF5BFFFFFDA2800AAAA0000AA08FF007FFFFFFD47FE2BFFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFF71FFFFFF080A800000002A802BE227FFFFFFF8FD7B2FFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFF507FFFFF0A088A82AAA80008802009FFFFFFC8989E47FFFFFFFF),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_016384_004  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n5019,\U4/Addr [14:13]}),
    .dia({open_n5023,open_n5024,open_n5025,open_n5026,open_n5027,open_n5028,open_n5029,1'b0,open_n5030}),
    .rsta(nRST_pad),
    .doa({open_n5045,open_n5046,open_n5047,open_n5048,open_n5049,open_n5050,open_n5051,open_n5052,\U4/ROM0/inst_doa_i2_004 }));
  // address_offset=16384;data_offset=5;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0019"),
    //.WID("0x0019"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFEFEEE977EFFFEFF947FFF70D034C891BCFBAFFFFFFFA55561C7E1FFFFF),
    .INIT_01(256'hFFFFFFC7FFB976EFFFFFF115EFD3E407E68A2FE6BAFFFFFFF0E1561410CFFFFF),
    .INIT_02(256'hFFFFFFDBCB4D40FABFFFFF47BFE29F1CCA23FED6BBFFFFFFF0E1574D99BFFFFF),
    .INIT_03(256'hFFFFFFEF684C5B7BFFFFEF4EBFF5C7276142FFD09BFFFFFFF74156A7D8EFFFFF),
    .INIT_04(256'hFFFFFFF5FF3904CFFFFFEAFFFF949719CB9BFFC40BFFFFFFE08557A4CD6AFFFF),
    .INIT_05(256'hFFFFFFF3FDE5D423FFFFFFFFFE84D4690F53FFC013BFFFFFF0755456AA614EBF),
    .INIT_06(256'hFFFFFFFF2665554CFFFFFFFEFB5515544F1BFEE41FFFFFFFCA15556BBA1E03B5),
    .INIT_07(256'hFFFFFFFFE6185527FEFFFFFFDC555155457FFEC25FFFFFFF01555B468ADE8F84),
    .INIT_08(256'hFFFFFFFF87CB554057FFFFFF30555555556FFFF16FFFFFFF0E54591BD6EBCFFF),
    .INIT_09(256'hFFFFFFFF17A3554D6C2FFF5215555555553EFFAC7BFFFFFE945552DB875FEBFF),
    .INIT_0A(256'hFFFFFFFFF6E3555D42A8EF3355555555552BBFABFBFFFFFEB1456F8A70E7FDFF),
    .INIT_0B(256'hFFFFFFFFF0EA555553DEF1A5555555555558EFAAFFFFFFFE5155705A623FBCFB),
    .INIT_0C(256'hFFFFFFFFF8D805555053C1555555555555637BFFFFFFFFF194557A4E7B223F7F),
    .INIT_0D(256'hFFFFFFFFFD4D5555555555555555505555509EFFFFFFFFC95555D95F9DB3EF6F),
    .INIT_0E(256'hFFFFFFFFFE3E15555555555555554F5555557FFFFFFFFFAC5555888A95BA9F2F),
    .INIT_0F(256'hFFFFFFFFFE83D55555555555555562D555544EFFFFFFFF44555513FBA2FE3FB2),
    .INIT_10(256'hFFFFFFFFEF8D9555555555555555F2D55554613FFFFEFC95555359EBBBFF7E2F),
    .INIT_11(256'hFFFFFFFAB73D9555555555555555B7D5555550C7FFFFCE5555547F9FAFFB1F43),
    .INIT_12(256'hFFFFFFEF8B26C555555555555554779555555586464DFD55555B2F68AFFFBBC1),
    .INIT_13(256'hFFFFFEFAD0C63555555555555555595555555531C0386D55555B77F5FFFFA7B7),
    .INIT_14(256'hFFFFFE8E424EE555555555555555515515555505C47FD55555534E3B7FFFB0EF),
    .INIT_15(256'hFFFFFF6C8F6D25555555555555451BAE9047C55515455555555468F742FFBFBE),
    .INIT_16(256'hFFFFFFFFFDA9B555555555416FA41F1EAEFF25155555555555556AF541EAFC7B),
    .INIT_17(256'hFFFFFFBFF8DC9155555554E864D552CF0AED3ED55555555554059FFFBF3AFBAE),
    .INIT_18(256'hFFFFFFFF102B8155555416604E20FFFFFFFFF3C155555555547DB3FFFFA75DFF),
    .INIT_19(256'hFFFFFFFBA91E24555555BA18BFFFFFFFFFFFFF325555555554C91CFFFFFE5BDB),
    .INIT_1A(256'hFFFFFADBD8B2FC55555587FFFFFFFFFFFFFFFFC815555555511009FFFFFFFCAB),
    .INIT_1B(256'h5144851EC18191555565F3FFFFFFFFFFFFFFFF66D555555559A0DEFFFFFFEFFF),
    .INIT_1C(256'h54D567D01500F25555795BC8FBE97A6A55FCFF7AF5555555597FA8AFFFFFFFFF),
    .INIT_1D(256'hFFBF90013003F8555556D72AA5551FBFF45BF32ECC1555557A7FF89FFFFEBFFF),
    .INIT_1E(256'h000000000002BE555554BAAABEBAFBFFAAAEDF3AA055555558AD337FFFFFFFFF),
    .INIT_1F(256'h000000000003EE855554AAEB917D0042BAB0BAAEBB1555553590321FBFFFFFFF),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_016384_005  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n5078,\U4/Addr [14:13]}),
    .dia({open_n5082,open_n5083,open_n5084,open_n5085,open_n5086,open_n5087,open_n5088,1'b0,open_n5089}),
    .rsta(nRST_pad),
    .doa({open_n5104,open_n5105,open_n5106,open_n5107,open_n5108,open_n5109,open_n5110,open_n5111,\U4/ROM0/inst_doa_i2_005 }));
  // address_offset=16384;data_offset=6;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x001A"),
    //.WID("0x001A"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFF045DEB8FFFFFFF2FAFFD862EF5FD1FFE2F6FFFFFFF82AAAD5DB540000),
    .INIT_01(256'hFFFFFFC554CAB6FFFFFFFEEBFFE570DF7745FFDBF3FFFFFFF8EAAA85AA140000),
    .INIT_02(256'hFFFFFFE8408ABBFFFFFFFCA3FFFD229235A8FFCFB7FFFFFFF47AAA8E43740000),
    .INIT_03(256'hFFFFFFF941CAAA7FFFFFFFFFFFEA7AC6A34BFFDE2AFFFFFFF8EAAB5D12740000),
    .INIT_04(256'hFFFFFFF0132AAABFFFFFFFFFFFBB3DBBC913FFCFBBFFFFFFE4AAAB4C06A05000),
    .INIT_05(256'hFFFFFFFE526EABFFFFFFFFFFFFEA2BB7E18FFFDFE7FFFFFFC2AAAB1923B98555),
    .INIT_06(256'hFFFFFFFE04BAAAFBFFFFFFFFFFAAAAAFA1AFFFCBE7FFFFFFFEAAAB3C62A5A6F1),
    .INIT_07(256'hFFFFFFFD81D3AABF7FFFFFFFA6AAAAAAAEAFFFFBABFFFFFFBEAAAC606B643AFB),
    .INIT_08(256'hFFFFFFFFD143AAAF0BFFFFFD1BAAAAAAAAFFFFF3DFFFFFFF1EABA92523704BFF),
    .INIT_09(256'hFFFFFFFFBCD6AAAADDAFFF81BAAAAAAAAABFFFFEFFFFFFFFBAAAAEE53A040DFF),
    .INIT_0A(256'hFFFFFFFFE612AAAABCEC040FAAAAAAAAAAC3FFFFFFFFFFFC7ABAB2002ED803BF),
    .INIT_0B(256'hFFFFFFFFEF5AAAAAABF11BFAAAAAAAAAAABFFFFFFFFFFFFEAAAAB3104DCD05BF),
    .INIT_0C(256'hFFFFFFFFF0EFAAAAAAAFFEAAAAAAAAAAAABEFFFFFFFFFFF4AAAAB9904ACF51DF),
    .INIT_0D(256'hFFFFFFFFFCBFAAAAAAAAAAAAAAAAABAAAAAFBFFFFFFFFFEFAAAAB3516311617F),
    .INIT_0E(256'hFFFFFFFFFC39EAAAAAAAAAAAAAAAA4AAAAAAB3FFFFFFFFE7AAAA94D13D42E8F3),
    .INIT_0F(256'hFFFFFFFFFEB5EAAAAAAAAAAAAAAAD5EAAAAAB9FFFFFFFF0EAAAAECC5B0077B0B),
    .INIT_10(256'hFFFFFFFFFF54AAAAAAAAAAAAAAAA40EAAAAABF7FFFFFFCFAAAAB1512F000EFDD),
    .INIT_11(256'hFFFFFFFFFA1DAAAAAAAAAAAAAAAA45EAAAAAAFAFFFFFFAEAAAAAF03A80011FF3),
    .INIT_12(256'hFFFFFFFF9CCAAAAAAAAAAAAAAAAB84EAAAAAAA8B7EF4B7AAAAAD95FA10006BEC),
    .INIT_13(256'hFFFFFFFDC71FAAAAAAAAAAAAAAAAB3AAAAAAAAB9BFA8AEAAAAAF1AAA000043F1),
    .INIT_14(256'hFFFFFFD4ADC27AAAAAAAAAAAAAAAAEAAAAAAAAABFABFAAAAAAA86ED8900013FF),
    .INIT_15(256'hFFFFFFF83F952AAAAAAAAAAAAAAAEFAEBEEFFAAAAAAAAAAAAAABFADCDC0006BE),
    .INIT_16(256'hFFFFFFFFFC80AAAAAAAAAAAABFAFA15BFEEF4BAAAAAAAAAAAAAAAEFA2844053F),
    .INIT_17(256'hFFFFFFFFFB2BFAAAAAAAABEBD0FBEA94FFFA6DAAAAAAAAAAAAFA93FEB7E1418F),
    .INIT_18(256'hFFFFFFFFCBFABEAAAAAAFD6FFF1AAFFFFFFFFAEEAAAAAAAAABBF1EFFFFD6126B),
    .INIT_19(256'hFFFFFFE78CDB5EAAAAAB7A42FFFFFFFFFFFFFF6FAAAAAAAAAA8BDCFFFFFE9ABB),
    .INIT_1A(256'hFFFFFCBDB72E2AAAAAAB9BFFFFFFFFFFFFFFFFCEEAAAAAAAAFF836BFFFFFFA02),
    .INIT_1B(256'h0550BF3A8EBE3EAAAAABCBFFFFFFFFFFFFFFFFC3AAAAAAAAA885537FFFFFFFFF),
    .INIT_1C(256'h00C15ABFEFFF36AAAAAB02F0FFEC01D01556FFD0AAAAAAAAABE115FFFFFFFFFF),
    .INIT_1D(256'hAAAABFFEFFFD4AAAAAAA8FC55555551555502F8C5AAAAAAAB3956A6FFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFC5DEAAAAA911541450400555011A15FAAAAAABE5D8DBFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFF947AAAAAA85543FFFFFBFFABE41C15AAAAAAAD1FED56FFFFFFFFF),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_016384_006  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n5137,\U4/Addr [14:13]}),
    .dia({open_n5141,open_n5142,open_n5143,open_n5144,open_n5145,open_n5146,open_n5147,1'b0,open_n5148}),
    .rsta(nRST_pad),
    .doa({open_n5163,open_n5164,open_n5165,open_n5166,open_n5167,open_n5168,open_n5169,open_n5170,\U4/ROM0/inst_doa_i2_006 }));
  // address_offset=16384;data_offset=7;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x001B"),
    //.WID("0x001B"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFCEEE3FF3FFFFFFF951FFF3CFEFFA3D2BE0FBFFFFFFFC7FFFEFD6AFFFFF),
    .INIT_01(256'hFFFFFFEEFE6BFDFFFFFFFC56FFFE9BFB8CE4FFF4FAFFFFFFFC6FFFFA17EFFFFF),
    .INIT_02(256'hFFFFFFE3EA3BFCBFFFFFFF4FFFEEB8AE9B46FFE5FEFFFFFFFCFFFFA426DFFFFF),
    .INIT_03(256'hFFFFFFF2EB7BF8FFFFFFFFEFFFFFECEADCE7FFF1A7FFFFFFF4FFFFE0B3DFFFFF),
    .INIT_04(256'hFFFFFFFFB9CBFF7FFFFFFFFFFFFEAEE6E2BBFFE147FFFFFFF7BFFFA6B79BFFFF),
    .INIT_05(256'hFFFFFFFCB8DFFF8FFFFFFFFFFFBFFFFFFBFFFFE14BFFFFFFE7FFFFA2838B6BFF),
    .INIT_06(256'hFFFFFFFDADDFFFE2FFFFFFFFFEFFFFFFFAEFFFE15BFFFFFFC2FFFE86969F495A),
    .INIT_07(256'hFFFFFFFF7DEBFFF8BFFFFFFFEFFFFFFFFFEFFFE11FFFFFFFDFFFFF8E86DFDBBF),
    .INIT_08(256'hFFFFFFFF69EFFFFFFFFFFFFAAFFFFFFFFFBFFFFC6FFFFFFFAFFFFB9B9E8BF3FF),
    .INIT_09(256'hFFFFFFFF883EFFFFF7BFFFFEFFFFFFFFFFEFFFFFFFFFFFFE3FFFFD4B9AEFE2FF),
    .INIT_0A(256'hFFFFFFFFD93EFFFFFF52EABFFFFFFFFFFFFFFFFFFFFFFFFEBFFFF87ADE6BFDBF),
    .INIT_0B(256'hFFFFFFFFE6B2FFFFFFEEAAFFFFFFFFFFFFE7FFFFFFFFFFF8FFFFF87AEE32BE7F),
    .INIT_0C(256'hFFFFFFFFFEB7FFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFABFFFF02AE861BF7F),
    .INIT_0D(256'hFFFFFFFFFFF6FFFFFFFFFFFFFFFFFEFFFFFF3FFFFFFFFFF7FFFFE5EBE9FA9FCF),
    .INIT_0E(256'hFFFFFFFFFFA3FFFFFFFFFFFFFFFFFBFFFFFFDFFFFFFFFFCFFFFFB33BF3FCF68F),
    .INIT_0F(256'hFFFFFFFFFF2EFFFFFFFFFFFFFFFFAEFFFFFFF6FFFFFFFFBFFFFFD06E9AFDF8B3),
    .INIT_10(256'hFFFFFFFFFE3FBFFFFFFFFFFFFFFFAEFFFFFFFCBFFFFFFF7FFFFF82BE0BFF6E66),
    .INIT_11(256'hFFFFFFFFFC86BFFFFFFFFFFFFFFFAAFFFFFFFF5BFFFFE0FFFFFE5AB82FFFEFC8),
    .INIT_12(256'hFFFFFFFFF7A1BFFFFFFFFFFFFFFFABFFFFFFFFA5EEEA1BFFFFFE2EA1BFFFDBE2),
    .INIT_13(256'hFFFFFFFE2969FFFFFFFFFFFFFFFFFAFFFFFFFFFF4052AFFFFFFDFF92FFFFEFFD),
    .INIT_14(256'hFFFFFFB04778FFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFEE06BFFFFAFC),
    .INIT_15(256'hFFFFFFD2BE3FAFFFFFFFFFFFFFFFFFAEBFBFFFFFFFFFFFFFFFFEF9217AFFF9FF),
    .INIT_16(256'hFFFFFFFFFF2A2FFFFFFFFFFFFFAFEEE15405EBFFFFFFFFFFFFFFE5F9D7EFFEBF),
    .INIT_17(256'hFFFFFFFFF8A17FFFFFFFFFEBBB41446FBBFAC7BFFFFFFFFFFFFFA7FEBC5BFF2F),
    .INIT_18(256'hFFFFFFFFF1866FFFFFFFFBC145EBBFFFFFFFFD2FFFFFFFFFFF9F82FFFFB9BECB),
    .INIT_19(256'hFFFFFFFC376AAFFFFFFF84FFBFFFFFFFFFFFFF9FFFFFFFFFFE7B37FFFFFFB443),
    .INIT_1A(256'hFFFFFB42A5EE8BFFFFFF2BFFFFFFFFFFFFFFFFE6FFFFFFFFFE7BA9FFFFFFFEAF),
    .INIT_1B(256'hFFFF51EAA3BFCFFFFFFF2BFFFFFFFFFFFFFFFFF8BFFFFFFFFB3EE8BFFFFFFFFF),
    .INIT_1C(256'hAA6AFEBFEFFECAFFFFFFEEEA0016EFFEEAEFBFED2FFFFFFFF95B927FFFFFFFFF),
    .INIT_1D(256'hAAAABFFFFFFFA2FFFFFE14455555551555504FF47BFFFFFFFDBFD17FFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFB7FFFFFE110000000000000017D00BFFFFFFF0F6B71FFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFEB1BFFFFE4000055555555015001012FFFFFFEB646D8BFFFFFFFF),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_016384_007  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n5196,\U4/Addr [14:13]}),
    .dia({open_n5200,open_n5201,open_n5202,open_n5203,open_n5204,open_n5205,open_n5206,1'b0,open_n5207}),
    .rsta(nRST_pad),
    .doa({open_n5222,open_n5223,open_n5224,open_n5225,open_n5226,open_n5227,open_n5228,open_n5229,\U4/ROM0/inst_doa_i2_007 }));
  // address_offset=24576;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x001C"),
    //.WID("0x001C"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h555555555557F70ABEFE2FEB4000501055407EEFEBEFFFAFDE2A8AEBFFFFFFFF),
    .INIT_01(256'h55555555555FA32EBEFEBFA815555555555547BFF77FFFAEEBE6A6B3BFFFFFFF),
    .INIT_02(256'h55555555554AAA26BEFFFFA5555555555555543FA87FFFAC6AA1DD8EFFFFFFFF),
    .INIT_03(256'h55555555555FDED0AFEEBEC1555555555555551AEFBFFFA42AF1559423FFFFFF),
    .INIT_04(256'h55555555557F6EB3EFEDFE7A85555555555554D2ED4FFEA6FAF41555392FFFFF),
    .INIT_05(256'h55555555556AAAB17BEDFBABD955555555572F33A98FFF87AA9615555CD2FFFF),
    .INIT_06(256'h5555555555792AAF8AA9F9EFF1555555555DFF84FE0AFD56AAA9055555D9EFFF),
    .INIT_07(256'h5555555555BB7EAB16AA7CFBFB9555555557FFF1F94EF1CEAAA44555554CB6CB),
    .INIT_08(256'h5555555555FDFAAAC5B2EFFFFE565555756BFFF2B12AD70EAAB155555555B617),
    .INIT_09(256'h5555555555FDAAAEC32469FFFFB850004FBFFFF7BAFE189EAAF8D555555556E1),
    .INIT_0A(256'h5555555555A9BEAE57CEE4BFFFFAFFFFABFFFFAAAECD56DBABE9D55555555557),
    .INIT_0B(256'h5555555555A1EAAF1BAE7CFFFFFFFFFFFFFFFF9EECB11B9EAAA5955555555555),
    .INIT_0C(256'h5555555554BBEAAF4A7FE93FFFFFFFFFFFFFFEAEEDC73F9EAAAF055555555555),
    .INIT_0D(256'h5555555554A1AAABCFF0F55EBFFFFFFFFFFFAB0BFB3CFF9FAAB8E55555555555),
    .INIT_0E(256'h5555555550B6AAAB8FF303F4BABFFFFAAEBFECEAE073FFDBAAB7255555555555),
    .INIT_0F(256'h555555555197EAAFCFF5605201AAAAABF415EA0BEECBFFCFAAA8755555555555),
    .INIT_10(256'h5555555555FFAAAF4FFBB8FC3ABDFFABEAAD7736894FFFCFAACC355555555555),
    .INIT_11(256'h555555555406AAAF0FFC017F9655541BCA0AFEFD1C5FFF83AA9AB55555555555),
    .INIT_12(256'h55555555550AAAAB5FFD396FFFEAFFFFFFFFFFFDBD3FFF83AB44B55555555555),
    .INIT_13(256'h5555555554EEAAAB1FFF2AA7FFFFFFFFFFFFFFD23D7FFF87AF50E55555555555),
    .INIT_14(256'h555555555607AAAF1FFF2BCAFFFFFFFFFFFFFEB8E4FFFF83A855D55555555555),
    .INIT_15(256'h5555555557A2EAAE1FFFBFF20FFFFFFFFFFFEA80F1BFFF87B154955555555555),
    .INIT_16(256'h555555555484BAAE1FFFD7FED1FF903B811B5232D7FFFF9BE554055555555555),
    .INIT_17(256'h5555555555A53EAAEFFFC3E414C4055AFAA6744BD2FFFF9BC556055555555555),
    .INIT_18(256'h555555555AF55EAAEFFFE7BC87C401000157396F1FFFFF8E1556555555555555),
    .INIT_19(256'h555555555C655BAEEFFFF6F85CFB2FFE4851A3AF0FFFFFC15556955555555555),
    .INIT_1A(256'h555555555A9556FEAFFFF6EB164B5001991E60BC3FFFFFCA5556D55555555555),
    .INIT_1B(256'h555555555055557EAFFFFC6B94005202B5AA5EAF7FFFFFD25554D55555555555),
    .INIT_1C(256'h010015115F00005BEFFFFC3EC6515EFB10AB4CF4FFFFFFB15554A40510400000),
    .INIT_1D(256'h041000141A544414EFFFFEAEA8A00050A80A56BDFFFFFEF55554601500001100),
    .INIT_1E(256'h4041005408414105EFFFFF3EC1AA00AAB848BFC3FFFFFCD95556A00100440111),
    .INIT_1F(256'h5511555565941559EFFFFF4EB200000000016AE3FFFFF1D85556594545114454),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_024576_000  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n5255,\U4/Addr [14:13]}),
    .dia({open_n5259,open_n5260,open_n5261,open_n5262,open_n5263,open_n5264,open_n5265,1'b0,open_n5266}),
    .rsta(nRST_pad),
    .doa({open_n5281,open_n5282,open_n5283,open_n5284,open_n5285,open_n5286,open_n5287,open_n5288,\U4/ROM0/inst_doa_i3_000 }));
  // address_offset=24576;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x001D"),
    //.WID("0x001D"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFF87B255554C000BFFFAFEFAABF90400155555565CC7E2BFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFF441C555544007EAAAAAAAAAAAB90006955554F5F3E5A6BFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFF514295555001AAAAAAAAAAAAAAB80029555559543BBA99FFFFFFF),
    .INIT_03(256'hFFFFFFFFFFE1F5725555003BAAAAAAAAAAAAAAE000155552556BFFBEF2FFFFFF),
    .INIT_04(256'hFFFFFFFFFFD1E549555440BAAAAAAAAAAAAAAF280165554A4576FFFFA33FFFFF),
    .INIT_05(256'hFFFFFFFFFFD50556955440EBF2AAAAAAAAA8FF8D01E5550C5540FFFFFBE6FFFF),
    .INIT_06(256'hFFFFFFFFFF859557B55142EFFEAAAAAAAAA3FFAB10A555385545EFFFFFAE9BFF),
    .INIT_07(256'hFFFFFFFFFF07D155D95242FBFC2AAAAAAAABFFFE41E550C4555BAFFFFFEB2F3F),
    .INIT_08(256'hFFFFFFFFFF47D555124B46FFFFE8AAAA8AFBFFFDC7855354555DFFFFFFFFAD3F),
    .INIT_09(256'hFFFFFFFFFF461551159E42FFFFBEFFFFEBBFFFF905D54D145518BFFFFFFFFEA9),
    .INIT_0A(256'hFFFFFFFFFF5241515567CABFFFFAFFFFABFFFFB740E02015541BBFFFFFFFFFFE),
    .INIT_0B(256'hFFFFFFFFFF5355515503E7FFFFFFFFFFFFFFFFB4018080515556BFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFF5B5551154702BFFFFFFFFFFFFFFEC901D040515551EFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFF5D5555D0164EBEBFFFFFFFFFFFABE01375005155436FFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFB495555D004285AFABFFFFAAEBFFB6407840015554E2FFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFA4D15519007F499BAFFFFFEAABE01A01DE0001555582FFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFE6D5551D0006AF9D50200015556ECB84550001555282FFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFEB55551D00122BFE6AAABFAD1BBFEFE229000595579EFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFFF555559001959FFFFFFFFFFFFFFFFD4540005954AEEFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFFE65555590004543FFFFFFFFFFFFFFF11600005951FBEFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFE58555190006047BFFFFFFFFFFFFF3B5500005D57FFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFED915519000040EEFFFFFFFFFFFF6D95C40005D4BFEBFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFEBF45519000011AB64015506AB57E2C500000491FFE3FFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFEAFC15540001916497AAAAFFAA9E0316500004D3FFE7FFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFF8EFE1554000044783650000002F68A54000005DBFFE6FFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFF86FF051400003458D826FFE1AA4A25590000012FFFE2FFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFA3FFC0140000555C61C8554F60A67D540000012FFFE2FFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFEFFFF8140000155E005BBEC60AA4D554000001AFFFE2FFFFFFFFFFF),
    .INIT_1C(256'hFFFFFFFFF6BFFFE4000001D122500FAE40AB50510000004FFFFE0FFFEFBFFFFF),
    .INIT_1D(256'hFBEFFFFFF4EBBBFE000000112CA00000A80A28550000015FFFFE4FEEFFFFEEFF),
    .INIT_1E(256'hFFFFFFFFECFFFFFF0000007558AA00AAB80881440000026BFFFE8FFEFFBBFFFF),
    .INIT_1F(256'hFFBBFFFFEEBEBFFB100000655E0000000000E15000000A3EFFFEEBEFEFBBEEFE),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_024576_001  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n5314,\U4/Addr [14:13]}),
    .dia({open_n5318,open_n5319,open_n5320,open_n5321,open_n5322,open_n5323,open_n5324,1'b0,open_n5325}),
    .rsta(nRST_pad),
    .doa({open_n5340,open_n5341,open_n5342,open_n5343,open_n5344,open_n5345,open_n5346,open_n5347,\U4/ROM0/inst_doa_i3_001 }));
  // address_offset=24576;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x001E"),
    //.WID("0x001E"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hAAAAAAAAAAABD1BAAAAB5555000000000000151556AAAAAA8B27C5D7FFFFFFFF),
    .INIT_01(256'hAAAAAAAAAAAFCB3AAAAB5554000000000000015551EAAAAB1F59F979FFFFFFFF),
    .INIT_02(256'hAAAAAAAAAAAFDE9EAAAA5550000000000000001554EAAAAB3FC8EE2F7FFFFFFF),
    .INIT_03(256'hAAAAAAAAAAAF4FCBAAAA5544000000000000000555EAAAA8BFD0AAEB9BFFFFFF),
    .INIT_04(256'hAAAAAAAAAABF0FF2AAAA1510400000000000000154FAAAA1FFD0AAAAFCFFFFFF),
    .INIT_05(256'hAAAAAAAAAABF3FF8EAAA15414000000000001541543AAAB7FFE1AAAAAE4BFFFF),
    .INIT_06(256'hAAAAAAAAAABE3FFD7AAF14455000000000005510453AABD2FFF4BAAAAAE47FFF),
    .INIT_07(256'hAAAAAAAAAABD3FFF3EAD15515400000000055550547AAB06FFF0BAAAAABED1EF),
    .INIT_08(256'hAAAAAAAAAAFC7FFFCBAC15555500000000115551783ABC06FFF2AAAAAAAAFB81),
    .INIT_09(256'hAAAAAAAAAAFCFFFFC2E811555515000015155551FF2AF046FFF6EAAAAAAAABFA),
    .INIT_0A(256'hAAAAAAAAAAFCFFFF80B811155550555501555515FF3BC147FFF0EAAAAAAAAAAB),
    .INIT_0B(256'hAAAAAAAAAAF8FFFF847CD4555555555555555507FE6F0547FFF8EAAAAAAAAAAA),
    .INIT_0C(256'hAAAAAAAAAAF5FFFF8518F0555555555555555447FF3D1547FFFDBAAAAAAAAAAA),
    .INIT_0D(256'hAAAAAAAAAAF2FFFF4540F004155555555555010FECC05547FFF8FAAAAAAAAAAA),
    .INIT_0E(256'hAAAAAAAAAEF3FFFF4551A551501555500415545FF8115547FFF9FAAAAAAAAAAA),
    .INIT_0F(256'hAAAAAAAAAEE3FFFF45501AA1055555555540012FF1455547FFFEBAAAAAAAAAAA),
    .INIT_10(256'hAAAAAAAAAAD7FFFF0555D6FE15000001555411BBE6855547FFEFBAAAAAAAAAAA),
    .INIT_11(256'hAAAAAAAAAB8BFFFF0554A8BFE90000056FAFFFFE8E055543FFEF7AAAAAAAAAAA),
    .INIT_12(256'hAAAAAAAAAA8FFFFF05543E3FFFFFFFFFFFFFFFFE7E155543FFBA7AAAAAAAAAAA),
    .INIT_13(256'hAAAAAAAAABDFFFFF05553FCBFFFFFFFFFFFFFFE9BC155543FFAE7AAAAAAAAAAA),
    .INIT_14(256'hAAAAAAAAABABFFFF05551BE5FFFFFFFFFFFFFFC4F8555543FEAA6AAAAAAAAAAA),
    .INIT_15(256'hAAAAAAAAAB7FFFFF05555FF12FFFFFFFFFFFFD32F0555543FAAB2AAAAAAAAAAA),
    .INIT_16(256'hAAAAAAAAAB6AFFFF05554BF55AFFEAAFEABEC1C2E1555547FAABAAAAAAAAAAAA),
    .INIT_17(256'hAAAAAAAAAA7ABFFF555543F8F040000005505FDFC1555547EAABAAAAAAAAAAAA),
    .INIT_18(256'hAAAAAAAAAF7AAFFF555553FC7C0FFFFFFFC4D71F85555547AAABAAAAAAAAAAAA),
    .INIT_19(256'hAAAAAAAAAEBAABFF555551FE3355D001F44F5D7F0555554AAAABEAAAAAAAAAAA),
    .INIT_1A(256'hAAAAAAAAADAAAAFF555551FF39F13FFF14F59D7E1555554FAAABEAAAAAAAAAAA),
    .INIT_1B(256'hAAAAAAAAA9AAAABF555554BF4FFF10054F55B1FD1555554BAAABEAAAAAAAAAAA),
    .INIT_1C(256'hAAAAAAAAADEAAAAF5555543FCDAFF001FF54B6F85555555AAAABEAAAAAAAAAAA),
    .INIT_1D(256'hAAAAAAAAAFAAAAAA5555557F935FFFFF57F5C2F45555555AAAABAAAAAAAAAAAA),
    .INIT_1E(256'hAAAAAAAAB7AAAAAA5555551FE355FF5547F75FE15555544EAAAB2AAAAAAAAAAA),
    .INIT_1F(256'hAAEEAAAAB2EBEAAE5555550FF1FFFFFFFFFF4BD55555504FAAAB2EBABAEEBBAB),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_024576_002  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n5373,\U4/Addr [14:13]}),
    .dia({open_n5377,open_n5378,open_n5379,open_n5380,open_n5381,open_n5382,open_n5383,1'b0,open_n5384}),
    .rsta(nRST_pad),
    .doa({open_n5399,open_n5400,open_n5401,open_n5402,open_n5403,open_n5404,open_n5405,open_n5406,\U4/ROM0/inst_doa_i3_002 }));
  // address_offset=24576;data_offset=3;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x001F"),
    //.WID("0x001F"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFF6158AAA8A02205FFFFFFFFFFDEA22AAAAAAAA90D43DBFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFA38EAAAAAA2A9FFD55FFFFFD7F402A12AAAA8D87150537FFFFFFF),
    .INIT_02(256'hFFFFFFFFFFD8299AAAAA2AA7DFFFFFFFFFFF57C8A3AAAA81C813FD9CEFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFF8FA9888A82A97FFFFFFFFFFFFFFF2AAAAAA8B08B7FF7D53FFFFFF),
    .INIT_04(256'hFFFFFFFFFFEAE0260AA2AAF0FFFFFFFFFFFFF5FCAA4AAA07A8B97FFFD39FFFFF),
    .INIT_05(256'hFFFFFFFFFF40C0ABAAA22AC35FFFFFFFFFFFDFF6284AA8322A287FFFF5F9FFFF),
    .INIT_06(256'hFFFFFFFFFFE24029C2A12147F7FFFFFFFFFDFF1D284AA96780025FFFFFD7CFFF),
    .INIT_07(256'hFFFFFFFFFF63EA0A72A32B7BD7FFFFFFFFFD7F7DA28AA1C9000DDFFFFFFD3D97),
    .INIT_08(256'hFFFFFFFFFFABE00082A3237FF5FFFFFFFDD3FF7C61EA15AB0226FFFFFFFF7C3F),
    .INIT_09(256'hFFFFFFFFFF21000000298F7FFD377555DF1FFD7E02CAFEA182A4FFFFFFFFFDD4),
    .INIT_0A(256'hFFFFFFFFFF012A002209453FFFD05FFF037FFD1182C35882828BFFFFFFFFFFFD),
    .INIT_0B(256'hFFFFFFFFFD03A8008AA9317FFFFFFF57F5FFFD1000CDC0A2000B7FFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFD2780028AA927D7FFFFFFFFF5FF5C5E0B76A0AA000A5FFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFD8E00024A810FF43FFFFFFFFFFD0B5809F0AA2880259FFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFF0C800A4AA2342FD81555500417F5BA2BC0AAA202A71FFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFF2E800ACAABFA6C755FFFF57D777CF82452AA820884BFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFF3E000ACAA235FCC2FFFFF4A0A1F47EA80AAA8A809C3FFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFF58000A4AA819FFD1FFFD77EAF5FDDD93EAAA8682347FFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFF508002EAAA6ACFFFD5FFFFFFFFFFFC00AAAA062AFD7FFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFFD9200026AAA00B3FFFFFFFFFFFFF7D2ABAAAA0E8AFDDFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFD0E000A6AAA168B7FFFFFFFFFFDFD3D0A2AAA86A1FFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFF4480086AAA2AA77FFFFFFFFFFFD95E2EAAAAAE27FDBFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFD5D28086AAAAAA56902A200B54A7F7F28AAAAA68FFF1FFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFF5F6A008AAA86817CB57D5FD75C9560B0AAAAA69FFD3FFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFF4FFF8008AAAAA217D9F5FDFD7F355F82AAAAA8C7FFDBFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFFC9FF6888AAAA980F7E9555D55B555224AAAAA83FFFD3FFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFF57FFDA80AAAA8887554755761F554E82AAAAA81FFFDBFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFF7FFFFE80AAAA8A8D5574D52B7D5748AAAAAAAA5FFFDBFFFFFFFFFFF),
    .INIT_1C(256'h55555F55FB5555F28AAAA868B55557F7555D5888AAAAAAA7FFFD1D5F75D55555),
    .INIT_1D(256'h5D75557D78FDDD7D8AAAAA00F55555F555557F8AAAAAAAAFFFFD157F75557F55),
    .INIT_1E(256'h555555DD76D5575F8AAAA83A2755555555D56802AAAAA9B7FFFDB55755DD7757),
    .INIT_1F(256'hFFFFFFFFD77F7FF78AAAAA980F55555555558C0AAAAAA7BFFFFDF7FFFFFFFFFD),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_024576_003  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n5432,\U4/Addr [14:13]}),
    .dia({open_n5436,open_n5437,open_n5438,open_n5439,open_n5440,open_n5441,open_n5442,1'b0,open_n5443}),
    .rsta(nRST_pad),
    .doa({open_n5458,open_n5459,open_n5460,open_n5461,open_n5462,open_n5463,open_n5464,open_n5465,\U4/ROM0/inst_doa_i3_003 }));
  // address_offset=24576;data_offset=4;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0020"),
    //.WID("0x0020"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFF5E05FFFFF88082AAAAAAAAAAA280809FFFFFF6F39C043FFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFDEF3FFFFF0802AA800AAAAA82AAA8027FFFFF8F8EDE3C7FFFFFFF),
    .INIT_02(256'hFFFFFFFFFFF76747FFFD000A8AAAAAAAAAAA02A202FFFFD4B7C677D73FFFFFFF),
    .INIT_03(256'hFFFFFFFFFFD7ADC5DFFD80A8AAAAAAAAAAAAAA88027FFFDEF7C2FF7DE5FFFFFF),
    .INIT_04(256'hFFFFFFFFFFF7BFD95FF7000FAAAAAAAAAAAAA0AA001FFF58D7E8FFFFD6FFFFFF),
    .INIT_05(256'hFFFFFFFFFFFF9F7CFFF700BCAAAAAAAAAAAA00AA809FFD69D5D0FFFFF785FFFF),
    .INIT_06(256'hFFFFFFFFFF5F3FDC9FF40AB802AAAAAAAAAA00EA001FFC2B7FDADFFFFF5837FF),
    .INIT_07(256'hFFFFFFFFFF5EB5F727F4088422AAAAAAAAAA808A229FF4A9FFF25FFFFFF74A7F),
    .INIT_08(256'hFFFFFFFFFFDEBFFF4DF60A80082AAAAAA80C008A3CBF402BFDFBFFFFFFFF5F6A),
    .INIT_09(256'hFFFFFFFFFFDC7FFF617CA28002C2800028E00280FFBF8A2B7D717FFFFFFFFD57),
    .INIT_0A(256'hFFFFFFFFFFF4D5FFE05E2AC0002FA000FC8002C8FD9C282B7D7E7FFFFFFFFFFD),
    .INIT_0B(256'hFFFFFFFFFFF6D7FF621E6080000000A80A0002CBFD30A02BFFFC7FFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFF2FFFF60AED228000000000A00A30BFC008023FFF6DFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFF73FFFF2002708BC00000000002FC07FE8800A37FD6DFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFDD37FF7A00858AA2FEAAAAFFBE800ADF42A002BFD5C5FFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFDDB7FF7200AADDA8A0000002A828297F800002BF7755FFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFDCBFFF7A000C1F52A000000AA082275DBE0002B7F555FFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFF6FFFF7A002567FF6AAA80A3777FDFF67A000237DF79FFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFFEF7FFF20023F3FFFFFFFFFFFFFFFFD3F0000A3D57D9FFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFFDCDFFFF20009F6FFFFFFFFFFFFFFFDE7C0000A377FF9FFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFDF5FFF7200085DAFFFFFFFFFFFFFFE8FC00002B5FFFBFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFDB77FF720000D521FFFFFFFFFFFFC0BF000000BD7FDFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFD3FD7F720000778AD7D575FDFDD0A23F00000037FFF7FFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFD1FD5FF80002374200002AA8002A007CA00000B7FFDDFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFF59FD7FF800009DC808000000080000FC000002B7FFDDFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFF5DFF577800002FF008A00000AA0021F20000025FFFD5FFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFF47FFD5780000AF72008A0022A8002BF80000025FFFD5FFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFEFFFF57800002F7A0028288A08000FE80000025FFFD5FFFFFFFFFFF),
    .INIT_1C(256'hFFFFFFFFFC7FFFDD000002B7600008A2000009F60000000FFFFD5FFFDF7FFFFF),
    .INIT_1D(256'hF7DFFFFFF5D777FD0000003FC00000000000037A000000AFFFFDDFDDDFFFD5FF),
    .INIT_1E(256'hFFFFFFFFFBFFFFFF000002ADF00000000080A7D800000087FFFDFFFDFF77DFFF),
    .INIT_1F(256'hFFFFFFFFD97F7FF72000008FFA00000000009FE800000027FFFD97FFFFFFFFFD),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_024576_004  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n5491,\U4/Addr [14:13]}),
    .dia({open_n5495,open_n5496,open_n5497,open_n5498,open_n5499,open_n5500,open_n5501,1'b0,open_n5502}),
    .rsta(nRST_pad),
    .doa({open_n5517,open_n5518,open_n5519,open_n5520,open_n5521,open_n5522,open_n5523,open_n5524,\U4/ROM0/inst_doa_i3_004 }));
  // address_offset=24576;data_offset=5;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0021"),
    //.WID("0x0021"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h000000000016E0A155542AE9AAFFFAFFFFEE9ABAAC1555557F3EDEEAEFFFFFFF),
    .INIT_01(256'h00000000000EFB8515543AA2AA800AAAAA82E9EABD955544DAB7E7E6BAFFFFFF),
    .INIT_02(256'h00000000000FAE5D55553ACE8BEEBFFFAAFE022AA915552B6AD4CDDBBFBFFFFF),
    .INIT_03(256'h00000000001BCBEE2551AAB4AFAAABFEAAAEAABAFB05556C3FB4418327FFFFFF),
    .INIT_04(256'h00000000002E7FE0A55BABBA2BAAAAAAAAABA4F2BFA5558EBFB54001797FFFFF),
    .INIT_05(256'h00000000006EEBF6115AAD6EDEAAAAAAAAAB6E38ABE55602BFC710004C86FFFF),
    .INIT_06(256'h0000000001682FF9E15FABBEA6FEAAAAAEACAADA7EF45197FFA93000019DEFFF),
    .INIT_07(256'h00000000006E2FFEDC5CECBAABEFAAAAAAA6AABF3C2547DDFFB470000019F29F),
    .INIT_08(256'h0000000000FDFFFEAB1AB4EAAB2BAAAAB97EABF973548CCFFFE400000000B217),
    .INIT_09(256'h0000000000FDBFFEC8923DEAAAFC055453EAABFDEE95BDDEFFF99000000012E5),
    .INIT_0A(256'h0000000001A9ABFE0F27E9EAAAAAABFFBAAAABA1BFA7F3CBFFEC900000000007),
    .INIT_0B(256'h0000000001F0BFFF58823CEEAAAEAAAAAAAAAB96EA5F0FCFFFE4800000000000),
    .INIT_0C(256'h0000000000EABFFF0F6BEE3AAAAAAAAAAAAAAEBEAD287F8BFFFA700000000000),
    .INIT_0D(256'h0000000005F5BFFF4EBD2EDFAAAAAAAAAAAABF2EBA1EFFCEFFF5E00000000000),
    .INIT_0E(256'h0000000005F2FFFECEB70D0DBAFAAAAFFBAFB92EABB3AADAFFE6E00000000000),
    .INIT_0F(256'h000000000492FFFE8EA4613595FEAAAA8417E90AFC5AAADFFFE8300000000000),
    .INIT_10(256'h0000000004FAFFFE0EAEE9FFD5FEFFFF5502AE329C0FAADEFF8F300000000000),
    .INIT_11(256'h000000000102FFFE5FAC053FDA5003AB4F4BFAEC5E8EAAC2FF9AE00000000000),
    .INIT_12(256'h00000000015BFFFA0FAD2C7EFFBFEABFFFFFFFFF692AAAD7FE15B00000000000),
    .INIT_13(256'h0000000003AFFFFA5FAE7EF7FFFFFFFFFFFFFFF2687AAAC3FF04A00000000000),
    .INIT_14(256'h000000000312FFFE1FAB37DEBAFFFBFFFFEFFFAEE1EAAAD7FC10800000000000),
    .INIT_15(256'h0000000003AEBFFF1AABAFFB9FFFFFFFFFFFFC75E4EAAAD7E013D00000000000),
    .INIT_16(256'h000000000390AFFF1AAA96EC406EF9AAD50B3DABC3AEAADAB405400000000000),
    .INIT_17(256'h0000000000B16FFBEEAAD6EE8A7ABABF950A0E8A86EAAACE9402540000000000),
    .INIT_18(256'h000000000BB05FFBFEAAF2BB69EBFBEAAB38BEFB1AAAAADF1002000000000000),
    .INIT_19(256'h000000000C6006FEBAAAB7B9EE58FFFFE63FF96A1EAAAA900402C10100000000),
    .INIT_1A(256'h000000000A5001BEFAAAB7BE8BA8CAA8063FB9FD2AAAAA8F0402810100000000),
    .INIT_1B(256'h000000000100013EBAAAA83BBAA9AEF06F7FA1FB3AAAAA820403840010440000),
    .INIT_1C(256'h110155154BC4554FFAAAA97EDBAAE1B5EAFFBCF0EAAAABF50003940501000000),
    .INIT_1D(256'h401551045E004411BAAAABAAF6FAAAFAFEAFB3F9EAAAABE00003540511455540),
    .INIT_1E(256'h4055501459454105FAAAAB7B9BFFAAFFFE2E3BC3BAAAACD80002F51010405151),
    .INIT_1F(256'h555455542481D418EFAFFE0FB4AAAAAAAAAA0EF7FEBFF1DD5556081110441547),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_024576_005  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n5550,\U4/Addr [14:13]}),
    .dia({open_n5554,open_n5555,open_n5556,open_n5557,open_n5558,open_n5559,open_n5560,1'b0,open_n5561}),
    .rsta(nRST_pad),
    .doa({open_n5576,open_n5577,open_n5578,open_n5579,open_n5580,open_n5581,open_n5582,open_n5583,\U4/ROM0/inst_doa_i3_005 }));
  // address_offset=24576;data_offset=6;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0022"),
    //.WID("0x0022"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFF93D2AAAAB8553BFAAAFAAAAABF40556EAAAAAF09C3E7FFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFF118FAAAABC54BEA800AAAAA82BE1555AAAAAB85F7A0A3BFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFE5151AAAAB852A8AAAAAAAAAAA039553AAAAACC073BAECDFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFE4F532AAAE5560AAAAAAAAAAAAAAE555BAAAB7056BFFBFA3FFFFFF),
    .INIT_04(256'hFFFFFFFFFFD5B15EEAAD14D12AAAAAAAAAAAA5E9556AAAEE5562BFFEE36FFFFF),
    .INIT_05(256'hFFFFFFFFFF844143AAAD13440EAAAAAAAAAB507F15AAAB8D1510BFFFBAF6FFFF),
    .INIT_06(256'hFFFFFFFFFFD18555FAAC121402AAAAAAAAAC000BC4AAAF7D5501BFFFFFEBCFFF),
    .INIT_07(256'hFFFFFFFFFFD3D5558AAC511007EAAAAAAAA4001AC1EABCD7551EFFFFFFFE3E6B),
    .INIT_08(256'hFFFFFFFFFF12C55456AA0800002BAAAAB840015F03FAF155555DFFFFFFFFAC2B),
    .INIT_09(256'hFFFFFFFFFF12155407AB4D00001110014100015B41EA08115548EFFFFFFFEEA8),
    .INIT_0A(256'hFFFFFFFFFE02155454AA8800000001550000011854ED3050554FEFFFFFFFFFFE),
    .INIT_0B(256'hFFFFFFFFFE435554406EB904000400000000010D5130C1545543BFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFE5B555445460E40000000000000047D505315145555BFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFF4D15544547CA84000000000000016053115555555F6FFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFF4C555585512EA950000000000541F147D15541555B6FFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFF1D5555C557F4DB910155500546FFF44B61554155486FFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFF3D5555C5512EFCEEFEFFFAFFEFF9B94145554555692FFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFA45555855423FFB7EFFFBB40AAFEFE301555495528FFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFFF15551D55591DFFFEABFFFFFFFFFFDC415555955FEAFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFFF61555195550057FFFFFFFFFFFFFFF51755554D54FEEFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFE1D555595552D03BFFFFFFFFFFFFE7F0515555D56EFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFE8C55549555115FEFFFFFFFFFFFE05D1D5555595BEFEFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFFBE15549555555C77C514446FE43D7C145555594BFB2FFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFFAFD550455549464DFAAFFAD00CD0607055555D7FFE7FFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFF8EFE1504555451705310000012C55A41555555CBFFE7FFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFF86FFD54455556519565555517B0519185555553FBFE3EFEFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFAFFFF5405555454811A85547F05168115555542FBFE7EFEFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFBFFFFD405555440B404FAEAE05506155555555AFBFF7FFFEFBBFFFF),
    .INIT_1C(256'hAAAAAAAAB6EEAAB145555494350000A5005504045555544FFFFF3AAABBEAAAAA),
    .INIT_1D(256'hEEBFEBBAE4FEEEAE455554002450000054056D455555555FFFFF3ABBBBEFFFEA),
    .INIT_1E(256'hAAAAAAEAF9EEAAAF4555557508550055540454015555562BFFFEDFBBBAEEBAEA),
    .INIT_1F(256'hFFFFFFFFEBBFFFFB45555565090000000001D40555555A6FFFFEFBFFFFFFFFFF),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_024576_006  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n5609,\U4/Addr [14:13]}),
    .dia({open_n5613,open_n5614,open_n5615,open_n5616,open_n5617,open_n5618,open_n5619,1'b0,open_n5620}),
    .rsta(nRST_pad),
    .doa({open_n5635,open_n5636,open_n5637,open_n5638,open_n5639,open_n5640,open_n5641,open_n5642,\U4/ROM0/inst_doa_i3_006 }));
  // address_offset=24576;data_offset=7;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0023"),
    //.WID("0x0023"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFAD3EFFFFF0000000000000000100003FFFFFF9B72C083FFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFED37FFFFF4004002AA0000028010007BFFFFF3F48ED3CBFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFA9BABFFFE4010200000000000A80000BFFFFE3F99BB6B3FFFFFFF),
    .INIT_03(256'hFFFFFFFFFFEB5EDEFFFE000F000000000000000000FFFFFCFAC1FFBFDAFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFB5EA3FFFF002F8000000000000A4001AFFFE4EAD4FFFFE9FFFFFF),
    .INIT_05(256'hFFFFFFFFFFFB6EBDBFFF00BBF40000000001AFD1012FFFA2EAE0FFFFFB4AFFFF),
    .INIT_06(256'hFFFFFFFFFFAF3AAF2FFE00EBF80000000007FFF0006FFF83AAE5FFFFFFA43BFF),
    .INIT_07(256'hFFFFFFFFFFED7AAB6BFF43EFF9400000000FFFE0512FFE07AAE1BFFFFFFB85BF),
    .INIT_08(256'hFFFFFFFFFFED7AAB9EF806FFFEC1000012AFFEA0FD3FFA57AAB3FFFFFFFFAF95),
    .INIT_09(256'hFFFFFFFFFFECAAAB96B947FFFFEBEAAABAFFFEA1BF3FE117AAB2BFFFFFFFFEAB),
    .INIT_0A(256'hFFFFFFFFFFF8EAABD4EC03FFFFFFFEAAFFFFFEE7EA2A9417AAB5BFFFFFFFFFFE),
    .INIT_0B(256'hFFFFFFFFFFB9EAAB943C86FBFFFBFFFFFFFFFEF6AFEA1013AABCBFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFB1EAAB9058E4FFFFFFFFFFFFFFFB93AEA94053AAA9FFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFEB3EAABD004F43BFFFFFFFFFFFFFE8BACA10013AAACEFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFEA3AAAB5004A453AFFFFFFFFFFAAA4EBD440017AAACEFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFEE7AAAB10055EB02FAAAAAAAFF8542BB1C00017AABAAFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFEC7AAAB5000D2FB11545555001444BEE7D00017AAABAFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFF9FAAAB5001A8BFEC000050FBBBFEFF8A100013AAFB2FFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFF8EAAAF10013F2FFFFFFFFFFFFFFFFF7F400003AABE6FFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFFFCEAAAF10006F9BFFFFFFFFFFFFFFF9BC000013ABFF6FFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFEEAAAAB10004EE5FFFFFFFFFFFFFF81FC000003ABFF7FFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFE7FAAAB10000EA46FFFFFFFFFFFFFA2F0000007ABFF7FFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFF2FEAAB10000BB3CEFABFEBEAAE9787F0000003BFFFBFFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFE2FAAAF400013BDA55555502FF43A8BC5000003AFFEAFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFA6FEAAF400006EDEA0EAAAAAA93BE4FC0000007BFFEEFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFFAEFFEAB400001EE6ED3BFFFAD1AFB6F1000000AFFFEAFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFF8FFFFAB400005EB6BA16AAA85AFB87E4000001AFFFEAFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFDFFFFAB400001FF5AAA44514AFFA9ED4000001AFFFFAFFFFFFFFFFF),
    .INIT_1C(256'hFFFFFFFFFCFBFFEE0000017B8BAAAE0BAAFFA2F90000000BFFFFBFFFEEBFFFFF),
    .INIT_1D(256'hBBEABEFFBAEBBBFE0000003FCAFAAAAAFEAF93B50000005FFFFFFFEEEEBAAABF),
    .INIT_1E(256'hFFFFFFFFB7FBFFFF0000001EF6FFAAFFFEAECBE40000004BFFFE7AEEEFBBEFBF),
    .INIT_1F(256'hFFFFFFFFE6BFFFFB1000004EF7AAAAAAAAAA3FD40000001BFFFE6BFFFFFFFFFF),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .READBACK("ON"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("INV"),
    .RSTBMUX("0"),
    .WEAMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    \U4/ROM0/inst_32768x8_sub_024576_007  (
    .addra(\U4/Addr [12:0]),
    .clka(CLK_100M),
    .csa({open_n5668,\U4/Addr [14:13]}),
    .dia({open_n5672,open_n5673,open_n5674,open_n5675,open_n5676,open_n5677,open_n5678,1'b0,open_n5679}),
    .rsta(nRST_pad),
    .doa({open_n5694,open_n5695,open_n5696,open_n5697,open_n5698,open_n5699,open_n5700,open_n5701,\U4/ROM0/inst_doa_i3_007 }));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add0/ucin_al_u422"),
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
    \U4/add0/u11_al_u425  (
    .a({\U4/AddrCtrl [13],\U4/AddrCtrl [11]}),
    .b({\U4/AddrCtrl [14],\U4/AddrCtrl [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add0/c11 ),
    .f({\U4/n2 [13],\U4/n2 [11]}),
    .fco(\U4/add0/c15 ),
    .fx({\U4/n2 [14],\U4/n2 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add0/ucin_al_u422"),
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
    \U4/add0/u15_al_u426  (
    .a({open_n5729,\U4/AddrCtrl [15]}),
    .c(2'b00),
    .d({open_n5734,1'b0}),
    .fci(\U4/add0/c15 ),
    .f({open_n5751,\U4/n2 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add0/ucin_al_u422"),
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
    \U4/add0/u3_al_u423  (
    .a({\U4/AddrCtrl [5],\U4/AddrCtrl [3]}),
    .b({\U4/AddrCtrl [6],\U4/AddrCtrl [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add0/c3 ),
    .f({\U4/n2 [5],\U4/n2 [3]}),
    .fco(\U4/add0/c7 ),
    .fx({\U4/n2 [6],\U4/n2 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add0/ucin_al_u422"),
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
    \U4/add0/u7_al_u424  (
    .a({\U4/AddrCtrl [9],\U4/AddrCtrl [7]}),
    .b({\U4/AddrCtrl [10],\U4/AddrCtrl [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add0/c7 ),
    .f({\U4/n2 [9],\U4/n2 [7]}),
    .fco(\U4/add0/c11 ),
    .fx({\U4/n2 [10],\U4/n2 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add0/ucin_al_u422"),
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
    \U4/add0/ucin_al_u422  (
    .a({\U4/AddrCtrl [1],1'b0}),
    .b({\U4/AddrCtrl [2],\U4/AddrCtrl [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U4/n2 [1],open_n5810}),
    .fco(\U4/add0/c3 ),
    .fx({\U4/n2 [2],\U4/n2 [0]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add1/ucin_al_u427"),
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
    \U4/add1/u11_al_u430  (
    .a({\U4/LineConut [13],\U4/LineConut [11]}),
    .b({\U4/LineConut [14],\U4/LineConut [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add1/c11 ),
    .f({\U4/n7 [13],\U4/n7 [11]}),
    .fco(\U4/add1/c15 ),
    .fx({\U4/n7 [14],\U4/n7 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add1/ucin_al_u427"),
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
    \U4/add1/u15_al_u431  (
    .a({open_n5831,\U4/LineConut [15]}),
    .c(2'b00),
    .d({open_n5836,1'b0}),
    .fci(\U4/add1/c15 ),
    .f({open_n5853,\U4/n7 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add1/ucin_al_u427"),
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
    \U4/add1/u3_al_u428  (
    .a({\U4/LineConut [5],\U4/LineConut [3]}),
    .b({\U4/LineConut [6],\U4/LineConut [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add1/c3 ),
    .f({\U4/n7 [5],\U4/n7 [3]}),
    .fco(\U4/add1/c7 ),
    .fx({\U4/n7 [6],\U4/n7 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add1/ucin_al_u427"),
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
    \U4/add1/u7_al_u429  (
    .a({\U4/LineConut [9],\U4/LineConut [7]}),
    .b({\U4/LineConut [10],\U4/LineConut [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add1/c7 ),
    .f({\U4/n7 [9],\U4/n7 [7]}),
    .fco(\U4/add1/c11 ),
    .fx({\U4/n7 [10],\U4/n7 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add1/ucin_al_u427"),
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
    \U4/add1/ucin_al_u427  (
    .a({\U4/LineConut [1],1'b0}),
    .b({\U4/LineConut [2],\U4/LineConut [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U4/n7 [1],open_n5912}),
    .fco(\U4/add1/c3 ),
    .fx({\U4/n7 [2],\U4/n7 [0]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add2/ucin_al_u436"),
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
    \U4/add2/u11_al_u439  (
    .a({open_n5915,\U4/Count [15]}),
    .c(2'b00),
    .d({open_n5920,1'b0}),
    .fci(\U4/add2/c11 ),
    .f({open_n5937,\U4/n14 [11]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add2/ucin_al_u436"),
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
    \U4/add2/u3_al_u437  (
    .a({\U4/Count [9],\U4/Count [7]}),
    .b({\U4/Count [10],\U4/Count [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add2/c3 ),
    .f({\U4/n14 [5],\U4/n14 [3]}),
    .fco(\U4/add2/c7 ),
    .fx({\U4/n14 [6],\U4/n14 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add2/ucin_al_u436"),
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
    \U4/add2/u7_al_u438  (
    .a({\U4/Count [13],\U4/Count [11]}),
    .b({\U4/Count [14],\U4/Count [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add2/c7 ),
    .f({\U4/n14 [9],\U4/n14 [7]}),
    .fco(\U4/add2/c11 ),
    .fx({\U4/n14 [10],\U4/n14 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add2/ucin_al_u436"),
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
    \U4/add2/ucin_al_u436  (
    .a({\U4/Count [5],1'b0}),
    .b({\U4/Count [6],\U4/Count [4]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U4/n14 [1],open_n5996}),
    .fco(\U4/add2/c3 ),
    .fx({\U4/n14 [2],\U4/n14 [0]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add3/ucin_al_u444"),
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
    \U4/add3/u3_al_u445  (
    .a({\U4/XPos [13],\U4/XPos [11]}),
    .b({\U4/XPos [14],\U4/XPos [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add3/c3 ),
    .f({\U4/n20 [5],\U4/n20 [3]}),
    .fco(\U4/add3/c7 ),
    .fx({\U4/n20 [6],\U4/n20 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add3/ucin_al_u444"),
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
    \U4/add3/u7_al_u446  (
    .a({open_n6017,\U4/XPos [15]}),
    .c(2'b00),
    .d({open_n6022,1'b0}),
    .fci(\U4/add3/c7 ),
    .f({open_n6039,\U4/n20 [7]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add3/ucin_al_u444"),
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
    \U4/add3/ucin_al_u444  (
    .a({\U4/XPos [9],1'b0}),
    .b({\U4/XPos [10],\U4/XPos [8]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U4/n20 [1],open_n6062}),
    .fco(\U4/add3/c3 ),
    .fx({\U4/n20 [2],\U4/n20 [0]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add4/ucin_al_u432"),
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
    \U4/add4/u11_al_u435  (
    .a({\U4/Addr [13],\U4/Addr [11]}),
    .b({\U4/Addr [14],\U4/Addr [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add4/c11 ),
    .f({\U4/n23 [13],\U4/n23 [11]}),
    .fx({\U4/n23 [14],\U4/n23 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add4/ucin_al_u432"),
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
    \U4/add4/u3_al_u433  (
    .a({\U4/Addr [5],\U4/Addr [3]}),
    .b({\U4/Addr [6],\U4/Addr [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add4/c3 ),
    .f({\U4/n23 [5],\U4/n23 [3]}),
    .fco(\U4/add4/c7 ),
    .fx({\U4/n23 [6],\U4/n23 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add4/ucin_al_u432"),
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
    \U4/add4/u7_al_u434  (
    .a({\U4/Addr [9],\U4/Addr [7]}),
    .b({\U4/Addr [10],\U4/Addr [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add4/c7 ),
    .f({\U4/n23 [9],\U4/n23 [7]}),
    .fco(\U4/add4/c11 ),
    .fx({\U4/n23 [10],\U4/n23 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add4/ucin_al_u432"),
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
    \U4/add4/ucin_al_u432  (
    .a({\U4/Addr [1],1'b0}),
    .b({\U4/Addr [2],\U4/Addr [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U4/n23 [1],open_n6137}),
    .fco(\U4/add4/c3 ),
    .fx({\U4/n23 [2],\U4/n23 [0]}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt0_0|U4/lt0_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt0_0|U4/lt0_cin  (
    .a({\U4/AddrCtrl [0],1'b0}),
    .b({1'b0,open_n6140}),
    .fco(\U4/lt0_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt0_0|U4/lt0_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt0_10|U4/lt0_9  (
    .a(\U4/AddrCtrl [10:9]),
    .b(2'b11),
    .fci(\U4/lt0_c9 ),
    .fco(\U4/lt0_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt0_0|U4/lt0_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt0_12|U4/lt0_11  (
    .a(\U4/AddrCtrl [12:11]),
    .b(2'b00),
    .fci(\U4/lt0_c11 ),
    .fco(\U4/lt0_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt0_0|U4/lt0_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt0_14|U4/lt0_13  (
    .a(\U4/AddrCtrl [14:13]),
    .b(2'b00),
    .fci(\U4/lt0_c13 ),
    .fco(\U4/lt0_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt0_0|U4/lt0_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt0_2|U4/lt0_1  (
    .a(\U4/AddrCtrl [2:1]),
    .b(2'b00),
    .fci(\U4/lt0_c1 ),
    .fco(\U4/lt0_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt0_0|U4/lt0_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt0_4|U4/lt0_3  (
    .a(\U4/AddrCtrl [4:3]),
    .b(2'b10),
    .fci(\U4/lt0_c3 ),
    .fco(\U4/lt0_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt0_0|U4/lt0_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt0_6|U4/lt0_5  (
    .a(\U4/AddrCtrl [6:5]),
    .b(2'b10),
    .fci(\U4/lt0_c5 ),
    .fco(\U4/lt0_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt0_0|U4/lt0_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt0_8|U4/lt0_7  (
    .a(\U4/AddrCtrl [8:7]),
    .b(2'b11),
    .fci(\U4/lt0_c7 ),
    .fco(\U4/lt0_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt0_0|U4/lt0_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt0_cout|U4/lt0_15  (
    .a({1'b0,\U4/AddrCtrl [15]}),
    .b(2'b10),
    .fci(\U4/lt0_c15 ),
    .f({\U4/n1 ,open_n6352}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_0|U4/lt1_cin  (
    .a(2'b01),
    .b({\U4/Count [4],open_n6358}),
    .fco(\U4/lt1_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_10|U4/lt1_9  (
    .a(2'b00),
    .b(\U4/Count [14:13]),
    .fci(\U4/lt1_c9 ),
    .fco(\U4/lt1_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_2|U4/lt1_1  (
    .a(2'b00),
    .b(\U4/Count [6:5]),
    .fci(\U4/lt1_c1 ),
    .fco(\U4/lt1_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_4|U4/lt1_3  (
    .a(2'b01),
    .b(\U4/Count [8:7]),
    .fci(\U4/lt1_c3 ),
    .fco(\U4/lt1_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_6|U4/lt1_5  (
    .a(2'b01),
    .b(\U4/Count [10:9]),
    .fci(\U4/lt1_c5 ),
    .fco(\U4/lt1_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_8|U4/lt1_7  (
    .a(2'b01),
    .b(\U4/Count [12:11]),
    .fci(\U4/lt1_c7 ),
    .fco(\U4/lt1_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_cout|U4/lt1_11  (
    .a(2'b00),
    .b({1'b1,\U4/Count [15]}),
    .fci(\U4/lt1_c11 ),
    .f({\U4/n10 ,open_n6522}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_0|U4/lt2_cin  (
    .a(2'b01),
    .b({\U4/Count [4],open_n6528}),
    .fco(\U4/lt2_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_10|U4/lt2_9  (
    .a(2'b00),
    .b(\U4/Count [14:13]),
    .fci(\U4/lt2_c9 ),
    .fco(\U4/lt2_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_2|U4/lt2_1  (
    .a(2'b10),
    .b(\U4/Count [6:5]),
    .fci(\U4/lt2_c1 ),
    .fco(\U4/lt2_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_4|U4/lt2_3  (
    .a(2'b10),
    .b(\U4/Count [8:7]),
    .fci(\U4/lt2_c3 ),
    .fco(\U4/lt2_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_6|U4/lt2_5  (
    .a(2'b10),
    .b(\U4/Count [10:9]),
    .fci(\U4/lt2_c5 ),
    .fco(\U4/lt2_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_8|U4/lt2_7  (
    .a(2'b00),
    .b(\U4/Count [12:11]),
    .fci(\U4/lt2_c7 ),
    .fco(\U4/lt2_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_cout|U4/lt2_11  (
    .a(2'b00),
    .b({1'b1,\U4/Count [15]}),
    .fci(\U4/lt2_c11 ),
    .f({\U4/XPos [2],open_n6692}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt3_0|U4/lt3_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt3_0|U4/lt3_cin  (
    .a(2'b01),
    .b({\U4/AddrCtrl [0],open_n6698}),
    .fco(\U4/lt3_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt3_0|U4/lt3_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt3_10|U4/lt3_9  (
    .a(\U4/XPos [10:9]),
    .b(\U4/AddrCtrl [10:9]),
    .fci(\U4/lt3_c9 ),
    .fco(\U4/lt3_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt3_0|U4/lt3_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt3_12|U4/lt3_11  (
    .a(\U4/XPos [12:11]),
    .b(\U4/AddrCtrl [12:11]),
    .fci(\U4/lt3_c11 ),
    .fco(\U4/lt3_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt3_0|U4/lt3_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt3_14|U4/lt3_13  (
    .a(\U4/XPos [14:13]),
    .b(\U4/AddrCtrl [14:13]),
    .fci(\U4/lt3_c13 ),
    .fco(\U4/lt3_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt3_0|U4/lt3_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt3_2|U4/lt3_1  (
    .a({\U4/XPos [2],1'b1}),
    .b(\U4/AddrCtrl [2:1]),
    .fci(\U4/lt3_c1 ),
    .fco(\U4/lt3_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt3_0|U4/lt3_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt3_4|U4/lt3_3  (
    .a({\U4/XPos [4],\U4/XPos [2]}),
    .b(\U4/AddrCtrl [4:3]),
    .fci(\U4/lt3_c3 ),
    .fco(\U4/lt3_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt3_0|U4/lt3_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt3_6|U4/lt3_5  (
    .a(\U4/XPos [6:5]),
    .b(\U4/AddrCtrl [6:5]),
    .fci(\U4/lt3_c5 ),
    .fco(\U4/lt3_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt3_0|U4/lt3_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt3_8|U4/lt3_7  (
    .a(\U4/XPos [8:7]),
    .b(\U4/AddrCtrl [8:7]),
    .fci(\U4/lt3_c7 ),
    .fco(\U4/lt3_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt3_0|U4/lt3_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt3_cout|U4/lt3_15  (
    .a({1'b0,\U4/XPos [15]}),
    .b({1'b1,\U4/AddrCtrl [15]}),
    .fci(\U4/lt3_c15 ),
    .f({\U4/n19 ,open_n6910}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt4_0|U4/lt4_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt4_0|U4/lt4_cin  (
    .a({\U4/AddrCtrl [0],1'b0}),
    .b({1'b0,open_n6916}),
    .fco(\U4/lt4_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt4_0|U4/lt4_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt4_10|U4/lt4_9  (
    .a(\U4/AddrCtrl [10:9]),
    .b(\U4/n20 [2:1]),
    .fci(\U4/lt4_c9 ),
    .fco(\U4/lt4_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt4_0|U4/lt4_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt4_12|U4/lt4_11  (
    .a(\U4/AddrCtrl [12:11]),
    .b(\U4/n20 [4:3]),
    .fci(\U4/lt4_c11 ),
    .fco(\U4/lt4_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt4_0|U4/lt4_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt4_14|U4/lt4_13  (
    .a(\U4/AddrCtrl [14:13]),
    .b(\U4/n20 [6:5]),
    .fci(\U4/lt4_c13 ),
    .fco(\U4/lt4_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt4_0|U4/lt4_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt4_2|U4/lt4_1  (
    .a(\U4/AddrCtrl [2:1]),
    .b({\U4/XPos [2],1'b1}),
    .fci(\U4/lt4_c1 ),
    .fco(\U4/lt4_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt4_0|U4/lt4_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt4_4|U4/lt4_3  (
    .a(\U4/AddrCtrl [4:3]),
    .b({\U4/XPos [4],\U4/XPos [2]}),
    .fci(\U4/lt4_c3 ),
    .fco(\U4/lt4_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt4_0|U4/lt4_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt4_6|U4/lt4_5  (
    .a(\U4/AddrCtrl [6:5]),
    .b(\U4/XPos [6:5]),
    .fci(\U4/lt4_c5 ),
    .fco(\U4/lt4_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt4_0|U4/lt4_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt4_8|U4/lt4_7  (
    .a(\U4/AddrCtrl [8:7]),
    .b({\U4/n20 [0],\U4/XPos [7]}),
    .fci(\U4/lt4_c7 ),
    .fco(\U4/lt4_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt4_0|U4/lt4_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt4_cout|U4/lt4_15  (
    .a({1'b0,\U4/AddrCtrl [15]}),
    .b({1'b1,\U4/n20 [7]}),
    .fci(\U4/lt4_c15 ),
    .f({\U4/n21 ,open_n7128}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt5_0|U4/lt5_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt5_0|U4/lt5_cin  (
    .a({\U4/AddrCtrl [0],1'b0}),
    .b({1'b0,open_n7134}),
    .fco(\U4/lt5_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt5_0|U4/lt5_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt5_10|U4/lt5_9  (
    .a(\U4/AddrCtrl [10:9]),
    .b(2'b11),
    .fci(\U4/lt5_c9 ),
    .fco(\U4/lt5_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt5_0|U4/lt5_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt5_12|U4/lt5_11  (
    .a(\U4/AddrCtrl [12:11]),
    .b(2'b00),
    .fci(\U4/lt5_c11 ),
    .fco(\U4/lt5_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt5_0|U4/lt5_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt5_14|U4/lt5_13  (
    .a(\U4/AddrCtrl [14:13]),
    .b(2'b00),
    .fci(\U4/lt5_c13 ),
    .fco(\U4/lt5_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt5_0|U4/lt5_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt5_2|U4/lt5_1  (
    .a(\U4/AddrCtrl [2:1]),
    .b(2'b00),
    .fci(\U4/lt5_c1 ),
    .fco(\U4/lt5_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt5_0|U4/lt5_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt5_4|U4/lt5_3  (
    .a(\U4/AddrCtrl [4:3]),
    .b(2'b00),
    .fci(\U4/lt5_c3 ),
    .fco(\U4/lt5_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt5_0|U4/lt5_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt5_6|U4/lt5_5  (
    .a(\U4/AddrCtrl [6:5]),
    .b(2'b10),
    .fci(\U4/lt5_c5 ),
    .fco(\U4/lt5_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt5_0|U4/lt5_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt5_8|U4/lt5_7  (
    .a(\U4/AddrCtrl [8:7]),
    .b(2'b00),
    .fci(\U4/lt5_c7 ),
    .fco(\U4/lt5_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt5_0|U4/lt5_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt5_cout|U4/lt5_15  (
    .a({1'b0,\U4/AddrCtrl [15]}),
    .b(2'b10),
    .fci(\U4/lt5_c15 ),
    .f({\U4/n26 ,open_n7346}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt6_0|U4/lt6_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt6_0|U4/lt6_cin  (
    .a({\U4/LineConut [0],1'b0}),
    .b({1'b1,open_n7352}),
    .fco(\U4/lt6_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt6_0|U4/lt6_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt6_10|U4/lt6_9  (
    .a(\U4/LineConut [10:9]),
    .b(2'b00),
    .fci(\U4/lt6_c9 ),
    .fco(\U4/lt6_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt6_0|U4/lt6_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt6_12|U4/lt6_11  (
    .a(\U4/LineConut [12:11]),
    .b(2'b00),
    .fci(\U4/lt6_c11 ),
    .fco(\U4/lt6_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt6_0|U4/lt6_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt6_14|U4/lt6_13  (
    .a(\U4/LineConut [14:13]),
    .b(2'b00),
    .fci(\U4/lt6_c13 ),
    .fco(\U4/lt6_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt6_0|U4/lt6_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt6_2|U4/lt6_1  (
    .a(\U4/LineConut [2:1]),
    .b(2'b00),
    .fci(\U4/lt6_c1 ),
    .fco(\U4/lt6_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt6_0|U4/lt6_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt6_4|U4/lt6_3  (
    .a(\U4/LineConut [4:3]),
    .b(2'b00),
    .fci(\U4/lt6_c3 ),
    .fco(\U4/lt6_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt6_0|U4/lt6_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt6_6|U4/lt6_5  (
    .a(\U4/LineConut [6:5]),
    .b(2'b00),
    .fci(\U4/lt6_c5 ),
    .fco(\U4/lt6_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt6_0|U4/lt6_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt6_8|U4/lt6_7  (
    .a(\U4/LineConut [8:7]),
    .b(2'b01),
    .fci(\U4/lt6_c7 ),
    .fco(\U4/lt6_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt6_0|U4/lt6_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt6_cout|U4/lt6_15  (
    .a({1'b0,\U4/LineConut [15]}),
    .b(2'b10),
    .fci(\U4/lt6_c15 ),
    .f({\U4/n30 ,open_n7564}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt7_0|U4/lt7_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt7_0|U4/lt7_cin  (
    .a(2'b11),
    .b({\U4/LineConut [0],open_n7570}),
    .fco(\U4/lt7_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt7_0|U4/lt7_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt7_10|U4/lt7_9  (
    .a(2'b00),
    .b(\U4/LineConut [10:9]),
    .fci(\U4/lt7_c9 ),
    .fco(\U4/lt7_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt7_0|U4/lt7_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt7_12|U4/lt7_11  (
    .a(2'b00),
    .b(\U4/LineConut [12:11]),
    .fci(\U4/lt7_c11 ),
    .fco(\U4/lt7_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt7_0|U4/lt7_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt7_14|U4/lt7_13  (
    .a(2'b00),
    .b(\U4/LineConut [14:13]),
    .fci(\U4/lt7_c13 ),
    .fco(\U4/lt7_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt7_0|U4/lt7_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt7_2|U4/lt7_1  (
    .a(2'b00),
    .b(\U4/LineConut [2:1]),
    .fci(\U4/lt7_c1 ),
    .fco(\U4/lt7_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt7_0|U4/lt7_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt7_4|U4/lt7_3  (
    .a(2'b00),
    .b(\U4/LineConut [4:3]),
    .fci(\U4/lt7_c3 ),
    .fco(\U4/lt7_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt7_0|U4/lt7_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt7_6|U4/lt7_5  (
    .a(2'b00),
    .b(\U4/LineConut [6:5]),
    .fci(\U4/lt7_c5 ),
    .fco(\U4/lt7_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt7_0|U4/lt7_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt7_8|U4/lt7_7  (
    .a(2'b00),
    .b(\U4/LineConut [8:7]),
    .fci(\U4/lt7_c7 ),
    .fco(\U4/lt7_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt7_0|U4/lt7_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt7_cout|U4/lt7_15  (
    .a(2'b00),
    .b({1'b1,\U4/LineConut [15]}),
    .fci(\U4/lt7_c15 ),
    .f({\U4/n32 ,open_n7782}));
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTF1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000100100000),
    .INIT_LUTF1(16'b0011000100100000),
    .INIT_LUTG0(16'b0011000100100000),
    .INIT_LUTG1(16'b0011000100100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg0_b0|U4/reg0_b8  (
    .a({\U4/n6_lutinv ,\U4/n6_lutinv }),
    .b({LCD_SYNC_pad,LCD_SYNC_pad}),
    .c({\U4/n7 [0],\U4/n7 [8]}),
    .clk(CLK_100M),
    .d({\U4/LineConut [0],\U4/LineConut [8]}),
    .sr(nRST_pad),
    .q({\U4/LineConut [0],\U4/LineConut [8]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTF1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000100100000),
    .INIT_LUTF1(16'b0011000100100000),
    .INIT_LUTG0(16'b0011000100100000),
    .INIT_LUTG1(16'b0011000100100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg0_b10|U4/reg0_b6  (
    .a({\U4/n6_lutinv ,\U4/n6_lutinv }),
    .b({LCD_SYNC_pad,LCD_SYNC_pad}),
    .c({\U4/n7 [10],\U4/n7 [6]}),
    .clk(CLK_100M),
    .d({\U4/LineConut [10],\U4/LineConut [6]}),
    .sr(nRST_pad),
    .q({\U4/LineConut [10],\U4/LineConut [6]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTF1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000100100000),
    .INIT_LUTF1(16'b0011000100100000),
    .INIT_LUTG0(16'b0011000100100000),
    .INIT_LUTG1(16'b0011000100100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg0_b11|U4/reg0_b5  (
    .a({\U4/n6_lutinv ,\U4/n6_lutinv }),
    .b({LCD_SYNC_pad,LCD_SYNC_pad}),
    .c({\U4/n7 [11],\U4/n7 [5]}),
    .clk(CLK_100M),
    .d({\U4/LineConut [11],\U4/LineConut [5]}),
    .sr(nRST_pad),
    .q({\U4/LineConut [11],\U4/LineConut [5]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTF1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000100100000),
    .INIT_LUTF1(16'b0011000100100000),
    .INIT_LUTG0(16'b0011000100100000),
    .INIT_LUTG1(16'b0011000100100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg0_b12|U4/reg0_b4  (
    .a({\U4/n6_lutinv ,\U4/n6_lutinv }),
    .b({LCD_SYNC_pad,LCD_SYNC_pad}),
    .c({\U4/n7 [12],\U4/n7 [4]}),
    .clk(CLK_100M),
    .d({\U4/LineConut [12],\U4/LineConut [4]}),
    .sr(nRST_pad),
    .q({\U4/LineConut [12],\U4/LineConut [4]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTF1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000100100000),
    .INIT_LUTF1(16'b0011000100100000),
    .INIT_LUTG0(16'b0011000100100000),
    .INIT_LUTG1(16'b0011000100100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg0_b13|U4/reg0_b2  (
    .a({\U4/n6_lutinv ,\U4/n6_lutinv }),
    .b({LCD_SYNC_pad,LCD_SYNC_pad}),
    .c({\U4/n7 [13],\U4/n7 [2]}),
    .clk(CLK_100M),
    .d({\U4/LineConut [13],\U4/LineConut [2]}),
    .sr(nRST_pad),
    .q({\U4/LineConut [13],\U4/LineConut [2]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTF1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000100100000),
    .INIT_LUTF1(16'b0011000100100000),
    .INIT_LUTG0(16'b0011000100100000),
    .INIT_LUTG1(16'b0011000100100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg0_b14|U4/reg0_b15  (
    .a({\U4/n6_lutinv ,\U4/n6_lutinv }),
    .b({LCD_SYNC_pad,LCD_SYNC_pad}),
    .c({\U4/n7 [14],\U4/n7 [15]}),
    .clk(CLK_100M),
    .d({\U4/LineConut [14],\U4/LineConut [15]}),
    .sr(nRST_pad),
    .q({\U4/LineConut [14],\U4/LineConut [15]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTF1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000100100000),
    .INIT_LUTF1(16'b0011000100100000),
    .INIT_LUTG0(16'b0011000100100000),
    .INIT_LUTG1(16'b0011000100100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg1_b0|U4/reg1_b14  (
    .a({\U4/n22 ,\U4/n22 }),
    .b({LCD_SYNC_pad,LCD_SYNC_pad}),
    .c({\U4/n23 [0],\U4/n23 [14]}),
    .clk(CLK_100M),
    .d({\U4/Addr [0],\U4/Addr [14]}),
    .sr(nRST_pad),
    .q({\U4/Addr [0],\U4/Addr [14]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTF1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000100100000),
    .INIT_LUTF1(16'b0011000100100000),
    .INIT_LUTG0(16'b0011000100100000),
    .INIT_LUTG1(16'b0011000100100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg1_b10|U4/reg1_b13  (
    .a({\U4/n22 ,\U4/n22 }),
    .b({LCD_SYNC_pad,LCD_SYNC_pad}),
    .c({\U4/n23 [10],\U4/n23 [13]}),
    .clk(CLK_100M),
    .d({\U4/Addr [10],\U4/Addr [13]}),
    .sr(nRST_pad),
    .q({\U4/Addr [10],\U4/Addr [13]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTF1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000100100000),
    .INIT_LUTF1(16'b0011000100100000),
    .INIT_LUTG0(16'b0011000100100000),
    .INIT_LUTG1(16'b0011000100100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg1_b11|U4/reg1_b9  (
    .a({\U4/n22 ,\U4/n22 }),
    .b({LCD_SYNC_pad,LCD_SYNC_pad}),
    .c({\U4/n23 [11],\U4/n23 [9]}),
    .clk(CLK_100M),
    .d({\U4/Addr [11],\U4/Addr [9]}),
    .sr(nRST_pad),
    .q({\U4/Addr [11],\U4/Addr [9]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTF1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000100100000),
    .INIT_LUTF1(16'b0011000100100000),
    .INIT_LUTG0(16'b0011000100100000),
    .INIT_LUTG1(16'b0011000100100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg1_b12|U4/reg1_b8  (
    .a({\U4/n22 ,\U4/n22 }),
    .b({LCD_SYNC_pad,LCD_SYNC_pad}),
    .c({\U4/n23 [12],\U4/n23 [8]}),
    .clk(CLK_100M),
    .d({\U4/Addr [12],\U4/Addr [8]}),
    .sr(nRST_pad),
    .q({\U4/Addr [12],\U4/Addr [8]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTF1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000100100000),
    .INIT_LUTF1(16'b0011000100100000),
    .INIT_LUTG0(16'b0011000100100000),
    .INIT_LUTG1(16'b0011000100100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg1_b1|U4/reg1_b7  (
    .a({\U4/n22 ,\U4/n22 }),
    .b({LCD_SYNC_pad,LCD_SYNC_pad}),
    .c({\U4/n23 [1],\U4/n23 [7]}),
    .clk(CLK_100M),
    .d({\U4/Addr [1],\U4/Addr [7]}),
    .sr(nRST_pad),
    .q({\U4/Addr [1],\U4/Addr [7]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTF1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000100100000),
    .INIT_LUTF1(16'b0011000100100000),
    .INIT_LUTG0(16'b0011000100100000),
    .INIT_LUTG1(16'b0011000100100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg1_b2|U4/reg1_b6  (
    .a({\U4/n22 ,\U4/n22 }),
    .b({LCD_SYNC_pad,LCD_SYNC_pad}),
    .c({\U4/n23 [2],\U4/n23 [6]}),
    .clk(CLK_100M),
    .d({\U4/Addr [2],\U4/Addr [6]}),
    .sr(nRST_pad),
    .q({\U4/Addr [2],\U4/Addr [6]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTF1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG1("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000100100000),
    .INIT_LUTF1(16'b0011000100100000),
    .INIT_LUTG0(16'b0011000100100000),
    .INIT_LUTG1(16'b0011000100100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg1_b3|U4/reg1_b5  (
    .a({\U4/n22 ,\U4/n22 }),
    .b({LCD_SYNC_pad,LCD_SYNC_pad}),
    .c({\U4/n23 [3],\U4/n23 [5]}),
    .clk(CLK_100M),
    .d({\U4/Addr [3],\U4/Addr [5]}),
    .sr(nRST_pad),
    .q({\U4/Addr [3],\U4/Addr [5]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTF1("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG1("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000101010000000),
    .INIT_LUTF1(16'b1000101010000000),
    .INIT_LUTG0(16'b1000101010000000),
    .INIT_LUTG1(16'b1000101010000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg2_b0|U4/reg2_b5  (
    .a({\U4/mux2_b0_sel_is_0_o ,\U4/mux2_b0_sel_is_0_o }),
    .b({\U4/n2 [0],\U4/n2 [5]}),
    .c({\U4/n1 ,\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [0],\U4/AddrCtrl [5]}),
    .sr(nRST_pad),
    .q({\U4/AddrCtrl [0],\U4/AddrCtrl [5]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTF1("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG1("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000101010000000),
    .INIT_LUTF1(16'b1000101010000000),
    .INIT_LUTG0(16'b1000101010000000),
    .INIT_LUTG1(16'b1000101010000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg2_b10|U4/reg2_b4  (
    .a({\U4/mux2_b0_sel_is_0_o ,\U4/mux2_b0_sel_is_0_o }),
    .b({\U4/n2 [10],\U4/n2 [4]}),
    .c({\U4/n1 ,\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [10],\U4/AddrCtrl [4]}),
    .sr(nRST_pad),
    .q({\U4/AddrCtrl [10],\U4/AddrCtrl [4]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTF1("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG1("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000101010000000),
    .INIT_LUTF1(16'b1000101010000000),
    .INIT_LUTG0(16'b1000101010000000),
    .INIT_LUTG1(16'b1000101010000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg2_b11|U4/reg2_b2  (
    .a({\U4/mux2_b0_sel_is_0_o ,\U4/mux2_b0_sel_is_0_o }),
    .b({\U4/n2 [11],\U4/n2 [2]}),
    .c({\U4/n1 ,\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [11],\U4/AddrCtrl [2]}),
    .sr(nRST_pad),
    .q({\U4/AddrCtrl [11],\U4/AddrCtrl [2]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTF1("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG1("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000101010000000),
    .INIT_LUTF1(16'b1000101010000000),
    .INIT_LUTG0(16'b1000101010000000),
    .INIT_LUTG1(16'b1000101010000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg2_b12|U4/reg2_b7  (
    .a({\U4/mux2_b0_sel_is_0_o ,\U4/mux2_b0_sel_is_0_o }),
    .b({\U4/n2 [12],\U4/n2 [7]}),
    .c({\U4/n1 ,\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [12],\U4/AddrCtrl [7]}),
    .sr(nRST_pad),
    .q({\U4/AddrCtrl [12],\U4/AddrCtrl [7]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTF1("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG1("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000101010000000),
    .INIT_LUTF1(16'b1000101010000000),
    .INIT_LUTG0(16'b1000101010000000),
    .INIT_LUTG1(16'b1000101010000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg2_b13|U4/reg2_b14  (
    .a({\U4/mux2_b0_sel_is_0_o ,\U4/mux2_b0_sel_is_0_o }),
    .b({\U4/n2 [13],\U4/n2 [14]}),
    .c({\U4/n1 ,\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [13],\U4/AddrCtrl [14]}),
    .sr(nRST_pad),
    .q({\U4/AddrCtrl [13],\U4/AddrCtrl [14]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  EG_PHY_LSLICE #(
    //.MACRO("U4/sub0/ucin_al_u440"),
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
    \U4/sub0/u11_al_u443  (
    .a({open_n8184,1'b0}),
    .c(2'b11),
    .d({open_n8189,\U4/Count [15]}),
    .fci(\U4/sub0/c11 ),
    .f({open_n8206,\U4/n18 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/sub0/ucin_al_u440"),
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
    \U4/sub0/u3_al_u441  (
    .a(2'b11),
    .b(2'b00),
    .c(2'b11),
    .d({\U4/Count [9],\U4/Count [7]}),
    .e({\U4/Count [10],\U4/Count [8]}),
    .fci(\U4/sub0/c3 ),
    .f({\U4/n18 [9],\U4/n18 [7]}),
    .fco(\U4/sub0/c7 ),
    .fx({\U4/n18 [10],\U4/n18 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/sub0/ucin_al_u440"),
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
    \U4/sub0/u7_al_u442  (
    .a(2'b01),
    .b(2'b00),
    .c(2'b11),
    .d({\U4/Count [13],\U4/Count [11]}),
    .e({\U4/Count [14],\U4/Count [12]}),
    .fci(\U4/sub0/c7 ),
    .f({\U4/n18 [13],\U4/n18 [11]}),
    .fco(\U4/sub0/c11 ),
    .fx({\U4/n18 [14],\U4/n18 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/sub0/ucin_al_u440"),
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
    \U4/sub0/ucin_al_u440  (
    .a(2'b01),
    .b(2'b00),
    .c(2'b11),
    .d({\U4/Count [5],1'b1}),
    .e({\U4/Count [6],\U4/Count [4]}),
    .f({\U4/n18 [5],open_n8265}),
    .fco(\U4/sub0/c3 ),
    .fx({\U4/n18 [6],\U4/n18 [4]}));
  EG_PHY_MSLICE #(
    //.LUT0("(~D)"),
    //.LUT1("(~C*D)"),
    .INIT_LUT0(16'b0000000011111111),
    .INIT_LUT1(16'b0000111100000000),
    .MODE("LOGIC"))
    \_al_u125|_al_u388  (
    .c({FIFO_EMPTY,open_n8272}),
    .d({FIFO_DO[3],FIFO_EMPTY}),
    .f({LCD_B_pad[6],LCD_B_pad[2]}));
  EG_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("(~C*D)"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b0000111100000000),
    .MODE("LOGIC"))
    \_al_u126|_al_u140  (
    .c({FIFO_EMPTY,FIFO_DO[12]}),
    .d({FIFO_DO[2],FIFO_EMPTY}),
    .f({LCD_B_pad[5],LCD_R_pad[4]}));
  EG_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("(~C*D)"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u127|_al_u139  (
    .c({FIFO_EMPTY,FIFO_DO[13]}),
    .d({FIFO_DO[1],FIFO_EMPTY}),
    .f({LCD_B_pad[4],LCD_R_pad[5]}));
  EG_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("(~C*D)"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u128|_al_u138  (
    .c({FIFO_EMPTY,FIFO_DO[14]}),
    .d({FIFO_DO[0],FIFO_EMPTY}),
    .f({LCD_B_pad[3],LCD_R_pad[6]}));
  EG_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("(~C*D)"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b0000111100000000),
    .MODE("LOGIC"))
    \_al_u129|_al_u137  (
    .c({FIFO_EMPTY,FIFO_DO[15]}),
    .d({FIFO_DO[10],FIFO_EMPTY}),
    .f({LCD_G_pad[7],LCD_R_pad[7]}));
  EG_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(~C*D)"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b0000111100000000),
    .MODE("LOGIC"))
    \_al_u130|_al_u136  (
    .c({FIFO_EMPTY,FIFO_DO[4]}),
    .d({FIFO_DO[9],FIFO_EMPTY}),
    .f({LCD_G_pad[6],LCD_B_pad[7]}));
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(~C*D)"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u131|_al_u135  (
    .c({FIFO_EMPTY,FIFO_DO[5]}),
    .d({FIFO_DO[8],FIFO_EMPTY}),
    .f({LCD_G_pad[5],LCD_G_pad[2]}));
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("~(~C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("~(~C*~D)"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b1111111111110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u132|_al_u134  (
    .c({FIFO_EMPTY,FIFO_DO[6]}),
    .d({FIFO_DO[11],FIFO_EMPTY}),
    .f({LCD_R_pad[3],LCD_G_pad[3]}));
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTF1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUTG0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTG1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000110100001000),
    .INIT_LUTF1(16'b1111000011001100),
    .INIT_LUTG0(16'b0000110100001000),
    .INIT_LUTG1(16'b1111000011001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u141|U4/reg3_b4  (
    .a({open_n8477,\U4/n13 }),
    .b({\U4/Count [4],\U4/n14 [0]}),
    .c({\U4/n18 [4],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [4]}),
    .sr(nRST_pad),
    .f({\U4/XPos [4],open_n8495}),
    .q({open_n8499,\U4/Count [4]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTF1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUTG0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTG1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000110100001000),
    .INIT_LUTF1(16'b1111000011001100),
    .INIT_LUTG0(16'b0000110100001000),
    .INIT_LUTG1(16'b1111000011001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u142|U4/reg3_b5  (
    .a({open_n8500,\U4/n13 }),
    .b({\U4/Count [5],\U4/n14 [1]}),
    .c({\U4/n18 [5],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [5]}),
    .sr(nRST_pad),
    .f({\U4/XPos [5],open_n8518}),
    .q({open_n8522,\U4/Count [5]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTF1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUTG0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTG1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000110100001000),
    .INIT_LUTF1(16'b1111000011001100),
    .INIT_LUTG0(16'b0000110100001000),
    .INIT_LUTG1(16'b1111000011001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u143|U4/reg3_b14  (
    .a({open_n8523,\U4/n13 }),
    .b({\U4/Count [14],\U4/n14 [10]}),
    .c({\U4/n18 [14],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [14]}),
    .sr(nRST_pad),
    .f({\U4/XPos [14],open_n8541}),
    .q({open_n8545,\U4/Count [14]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTF1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUTG0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTG1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000110100001000),
    .INIT_LUTF1(16'b1111000011001100),
    .INIT_LUTG0(16'b0000110100001000),
    .INIT_LUTG1(16'b1111000011001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u144|U4/reg3_b15  (
    .a({open_n8546,\U4/n13 }),
    .b({\U4/Count [15],\U4/n14 [11]}),
    .c({\U4/n18 [15],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [15]}),
    .sr(nRST_pad),
    .f({\U4/XPos [15],open_n8564}),
    .q({open_n8568,\U4/Count [15]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTF1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUTG0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTG1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000110100001000),
    .INIT_LUTF1(16'b1111000011001100),
    .INIT_LUTG0(16'b0000110100001000),
    .INIT_LUTG1(16'b1111000011001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u145|U4/reg3_b6  (
    .a({open_n8569,\U4/n13 }),
    .b({\U4/Count [6],\U4/n14 [2]}),
    .c({\U4/n18 [6],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [6]}),
    .sr(nRST_pad),
    .f({\U4/XPos [6],open_n8587}),
    .q({open_n8591,\U4/Count [6]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTF1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUTG0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTG1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000110100001000),
    .INIT_LUTF1(16'b1111000011001100),
    .INIT_LUTG0(16'b0000110100001000),
    .INIT_LUTG1(16'b1111000011001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u146|U4/reg3_b7  (
    .a({open_n8592,\U4/n13 }),
    .b({\U4/Count [7],\U4/n14 [3]}),
    .c({\U4/n18 [7],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [7]}),
    .sr(nRST_pad),
    .f({\U4/XPos [7],open_n8610}),
    .q({open_n8614,\U4/Count [7]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTF1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUTG0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTG1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000110100001000),
    .INIT_LUTF1(16'b1111000011001100),
    .INIT_LUTG0(16'b0000110100001000),
    .INIT_LUTG1(16'b1111000011001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u147|U4/reg3_b8  (
    .a({open_n8615,\U4/n13 }),
    .b({\U4/Count [8],\U4/n14 [4]}),
    .c({\U4/n18 [8],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [8]}),
    .sr(nRST_pad),
    .f({\U4/XPos [8],open_n8633}),
    .q({open_n8637,\U4/Count [8]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTF1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUTG0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTG1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000110100001000),
    .INIT_LUTF1(16'b1111000011001100),
    .INIT_LUTG0(16'b0000110100001000),
    .INIT_LUTG1(16'b1111000011001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u148|U4/reg3_b9  (
    .a({open_n8638,\U4/n13 }),
    .b({\U4/Count [9],\U4/n14 [5]}),
    .c({\U4/n18 [9],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [9]}),
    .sr(nRST_pad),
    .f({\U4/XPos [9],open_n8656}),
    .q({open_n8660,\U4/Count [9]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTF1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUTG0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTG1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000110100001000),
    .INIT_LUTF1(16'b1111000011001100),
    .INIT_LUTG0(16'b0000110100001000),
    .INIT_LUTG1(16'b1111000011001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u149|U4/reg3_b10  (
    .a({open_n8661,\U4/n13 }),
    .b({\U4/Count [10],\U4/n14 [6]}),
    .c({\U4/n18 [10],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [10]}),
    .sr(nRST_pad),
    .f({\U4/XPos [10],open_n8679}),
    .q({open_n8683,\U4/Count [10]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTF1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUTG0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTG1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000110100001000),
    .INIT_LUTF1(16'b1111000011001100),
    .INIT_LUTG0(16'b0000110100001000),
    .INIT_LUTG1(16'b1111000011001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u150|U4/reg3_b11  (
    .a({open_n8684,\U4/n13 }),
    .b({\U4/Count [11],\U4/n14 [7]}),
    .c({\U4/n18 [11],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [11]}),
    .sr(nRST_pad),
    .f({\U4/XPos [11],open_n8702}),
    .q({open_n8706,\U4/Count [11]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTF1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUTG0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTG1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000110100001000),
    .INIT_LUTF1(16'b1111000011001100),
    .INIT_LUTG0(16'b0000110100001000),
    .INIT_LUTG1(16'b1111000011001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u151|U4/reg3_b12  (
    .a({open_n8707,\U4/n13 }),
    .b({\U4/Count [12],\U4/n14 [8]}),
    .c({\U4/n18 [12],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [12]}),
    .sr(nRST_pad),
    .f({\U4/XPos [12],open_n8725}),
    .q({open_n8729,\U4/Count [12]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTF1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUTG0("(~C*(D*~(B)*~(A)+D*B*~(A)+~(D)*B*A+D*B*A))"),
    //.LUTG1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000110100001000),
    .INIT_LUTF1(16'b1111000011001100),
    .INIT_LUTG0(16'b0000110100001000),
    .INIT_LUTG1(16'b1111000011001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u152|U4/reg3_b13  (
    .a({open_n8730,\U4/n13 }),
    .b({\U4/Count [13],\U4/n14 [9]}),
    .c({\U4/n18 [13],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [13]}),
    .sr(nRST_pad),
    .f({\U4/XPos [13],open_n8748}),
    .q({open_n8752,\U4/Count [13]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(60)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*~D)"),
    //.LUTF1("~(C*D)"),
    //.LUTG0("(~C*~D)"),
    //.LUTG1("~(C*D)"),
    .INIT_LUTF0(16'b0000000000001111),
    .INIT_LUTF1(16'b0000111111111111),
    .INIT_LUTG0(16'b0000000000001111),
    .INIT_LUTG1(16'b0000111111111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u153|_al_u154  (
    .c({\D1/n10 ,LCD_SYNC_pad}),
    .d({\D1/n9 ,LCD_HYNC_pad}),
    .f({LCD_HYNC_pad,\U4/mux2_b0_sel_is_0_o }));
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000101010000000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b1000101010000000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u155|U4/reg2_b1  (
    .a({open_n8781,\U4/mux2_b0_sel_is_0_o }),
    .b({open_n8782,\U4/n2 [1]}),
    .c({\U4/n26 ,\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/mux2_b0_sel_is_0_o ,\U4/AddrCtrl [1]}),
    .sr(nRST_pad),
    .f({FIFO_WE,open_n8800}),
    .q({open_n8804,\U4/AddrCtrl [1]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*B*D)"),
    //.LUTF1("(C*B*D)"),
    //.LUTG0("(~C*B*D)"),
    //.LUTG1("(C*B*D)"),
    .INIT_LUTF0(16'b0000110000000000),
    .INIT_LUTF1(16'b1100000000000000),
    .INIT_LUTG0(16'b0000110000000000),
    .INIT_LUTG1(16'b1100000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u190|_al_u189  (
    .b({\D1/n15 ,\D1/n21 }),
    .c({\D1/n17 ,FIFO_EMPTY}),
    .d({_al_u189_o,\D1/n19 }),
    .f({FIFO_RE,_al_u189_o}));
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTF1("(C*B*D)"),
    //.LUTG0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG1("(C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000100100000),
    .INIT_LUTF1(16'b1100000000000000),
    .INIT_LUTG0(16'b0011000100100000),
    .INIT_LUTG1(16'b1100000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u191|U4/reg1_b4  (
    .a({open_n8831,\U4/n22 }),
    .b({\U4/n30 ,LCD_SYNC_pad}),
    .c({\U4/n32 ,\U4/n23 [4]}),
    .clk(CLK_100M),
    .d({\U4/n22 ,\U4/Addr [4]}),
    .sr(nRST_pad),
    .f({_al_u191_o,open_n8849}),
    .q({open_n8853,\U4/Addr [4]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(74)
  EG_PHY_LSLICE #(
    //.LUTF0("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTF1("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTG0("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTG1("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    .INIT_LUTF0(16'b0000010010001100),
    .INIT_LUTF1(16'b0000010010001100),
    .INIT_LUTG0(16'b0000010010001100),
    .INIT_LUTG1(16'b0000010010001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u192|_al_u210  (
    .a({\U4/Addr_piped [0],\U4/Addr_piped [0]}),
    .b({\U4/Addr_piped [1],\U4/Addr_piped [1]}),
    .c({\U4/ROM0/inst_doa_i2_007 ,\U4/ROM0/inst_doa_i2_001 }),
    .d({\U4/ROM0/inst_doa_i3_007 ,\U4/ROM0/inst_doa_i3_001 }),
    .f({_al_u192_o,_al_u210_o}));
  EG_PHY_MSLICE #(
    //.LUT0("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUT1("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    .INIT_LUT0(16'b0000010010001100),
    .INIT_LUT1(16'b0000000100100011),
    .MODE("LOGIC"))
    \_al_u193|_al_u207  (
    .a({\U4/Addr_piped [0],\U4/Addr_piped [0]}),
    .b({\U4/Addr_piped [1],\U4/Addr_piped [1]}),
    .c({\U4/ROM0/inst_doa_i0_007 ,\U4/ROM0/inst_doa_i2_002 }),
    .d({\U4/ROM0/inst_doa_i1_007 ,\U4/ROM0/inst_doa_i3_002 }),
    .f({_al_u193_o,_al_u207_o}));
  EG_PHY_LSLICE #(
    //.LUTF0("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTF1("~(D*~(~C*~B))"),
    //.LUTG0("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTG1("~(D*~(~C*~B))"),
    .INIT_LUTF0(16'b0000010010001100),
    .INIT_LUTF1(16'b0000001111111111),
    .INIT_LUTG0(16'b0000010010001100),
    .INIT_LUTG1(16'b0000001111111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u194|_al_u198  (
    .a({open_n8898,\U4/Addr_piped [0]}),
    .b({_al_u192_o,\U4/Addr_piped [1]}),
    .c({_al_u193_o,\U4/ROM0/inst_doa_i2_005 }),
    .d({_al_u191_o,\U4/ROM0/inst_doa_i3_005 }),
    .f({FIFO_DI[7],_al_u198_o}));
  EG_PHY_LSLICE #(
    //.LUTF0("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTF1("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTG0("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTG1("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    .INIT_LUTF0(16'b0000010010001100),
    .INIT_LUTF1(16'b0000010010001100),
    .INIT_LUTG0(16'b0000010010001100),
    .INIT_LUTG1(16'b0000010010001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u195|_al_u204  (
    .a({\U4/Addr_piped [0],\U4/Addr_piped [0]}),
    .b({\U4/Addr_piped [1],\U4/Addr_piped [1]}),
    .c({\U4/ROM0/inst_doa_i2_006 ,\U4/ROM0/inst_doa_i2_003 }),
    .d({\U4/ROM0/inst_doa_i3_006 ,\U4/ROM0/inst_doa_i3_003 }),
    .f({_al_u195_o,_al_u204_o}));
  EG_PHY_MSLICE #(
    //.LUT0("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUT1("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    .INIT_LUT0(16'b0000010010001100),
    .INIT_LUT1(16'b0000000100100011),
    .MODE("LOGIC"))
    \_al_u196|_al_u201  (
    .a({\U4/Addr_piped [0],\U4/Addr_piped [0]}),
    .b({\U4/Addr_piped [1],\U4/Addr_piped [1]}),
    .c({\U4/ROM0/inst_doa_i0_006 ,\U4/ROM0/inst_doa_i2_004 }),
    .d({\U4/ROM0/inst_doa_i1_006 ,\U4/ROM0/inst_doa_i3_004 }),
    .f({_al_u196_o,_al_u201_o}));
  EG_PHY_MSLICE #(
    //.LUT0("(C*D)"),
    //.LUT1("~(D*~(~C*~B))"),
    .INIT_LUT0(16'b1111000000000000),
    .INIT_LUT1(16'b0000001111111111),
    .MODE("LOGIC"))
    \_al_u197|_al_u173  (
    .b({_al_u195_o,open_n8969}),
    .c({_al_u196_o,\U4/n21 }),
    .d({_al_u191_o,\U4/n19 }),
    .f({FIFO_DI[6],\U4/n22 }));
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTF1("~(D*~(~C*~B))"),
    //.LUTG0("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTG1("~(D*~(~C*~B))"),
    .INIT_LUTF0(16'b0000000100100011),
    .INIT_LUTF1(16'b0000001111111111),
    .INIT_LUTG0(16'b0000000100100011),
    .INIT_LUTG1(16'b0000001111111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u200|_al_u199  (
    .a({open_n8990,\U4/Addr_piped [0]}),
    .b({_al_u198_o,\U4/Addr_piped [1]}),
    .c({_al_u199_o,\U4/ROM0/inst_doa_i0_005 }),
    .d({_al_u191_o,\U4/ROM0/inst_doa_i1_005 }),
    .f({FIFO_DI[5],_al_u199_o}));
  EG_PHY_MSLICE #(
    //.LUT0("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUT1("~(D*~(~C*~B))"),
    .INIT_LUT0(16'b0000000100100011),
    .INIT_LUT1(16'b0000001111111111),
    .MODE("LOGIC"))
    \_al_u203|_al_u202  (
    .a({open_n9015,\U4/Addr_piped [0]}),
    .b({_al_u201_o,\U4/Addr_piped [1]}),
    .c({_al_u202_o,\U4/ROM0/inst_doa_i0_004 }),
    .d({_al_u191_o,\U4/ROM0/inst_doa_i1_004 }),
    .f({FIFO_DI[4],_al_u202_o}));
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTF1("~(D*~(~C*~B))"),
    //.LUTG0("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTG1("~(D*~(~C*~B))"),
    .INIT_LUTF0(16'b0000000100100011),
    .INIT_LUTF1(16'b0000001111111111),
    .INIT_LUTG0(16'b0000000100100011),
    .INIT_LUTG1(16'b0000001111111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u206|_al_u205  (
    .a({open_n9036,\U4/Addr_piped [0]}),
    .b({_al_u204_o,\U4/Addr_piped [1]}),
    .c({_al_u205_o,\U4/ROM0/inst_doa_i0_003 }),
    .d({_al_u191_o,\U4/ROM0/inst_doa_i1_003 }),
    .f({FIFO_DI[3],_al_u205_o}));
  EG_PHY_MSLICE #(
    //.LUT0("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUT1("~(D*~(~C*~B))"),
    .INIT_LUT0(16'b0000000100100011),
    .INIT_LUT1(16'b0000001111111111),
    .MODE("LOGIC"))
    \_al_u209|_al_u208  (
    .a({open_n9061,\U4/Addr_piped [0]}),
    .b({_al_u207_o,\U4/Addr_piped [1]}),
    .c({_al_u208_o,\U4/ROM0/inst_doa_i0_002 }),
    .d({_al_u191_o,\U4/ROM0/inst_doa_i1_002 }),
    .f({FIFO_DI[2],_al_u208_o}));
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTF1("~(D*~(~C*~B))"),
    //.LUTG0("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTG1("~(D*~(~C*~B))"),
    .INIT_LUTF0(16'b0000000100100011),
    .INIT_LUTF1(16'b0000001111111111),
    .INIT_LUTG0(16'b0000000100100011),
    .INIT_LUTG1(16'b0000001111111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u212|_al_u211  (
    .a({open_n9082,\U4/Addr_piped [0]}),
    .b({_al_u210_o,\U4/Addr_piped [1]}),
    .c({_al_u211_o,\U4/ROM0/inst_doa_i0_001 }),
    .d({_al_u191_o,\U4/ROM0/inst_doa_i1_001 }),
    .f({FIFO_DI[1],_al_u211_o}));
  EG_PHY_LSLICE #(
    //.LUTF0("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTF1("~(D*~(~C*~B))"),
    //.LUTG0("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTG1("~(D*~(~C*~B))"),
    .INIT_LUTF0(16'b0000010010001100),
    .INIT_LUTF1(16'b0000001111111111),
    .INIT_LUTG0(16'b0000010010001100),
    .INIT_LUTG1(16'b0000001111111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u215|_al_u213  (
    .a({open_n9107,\U4/Addr_piped [0]}),
    .b({_al_u213_o,\U4/Addr_piped [1]}),
    .c({_al_u214_o,\U4/ROM0/inst_doa_i2_000 }),
    .d({_al_u191_o,\U4/ROM0/inst_doa_i3_000 }),
    .f({FIFO_DI[0],_al_u213_o}));
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u216|U1/reg0_b3  (
    .a({\U1/Count [27],open_n9132}),
    .b({\U1/Count [28],open_n9133}),
    .c({\U1/Count [29],\U1/n3 [3]}),
    .clk(LCD_CLK_pad),
    .d({\U1/Count [3],\U1/n1 }),
    .sr(nRST_pad),
    .f({_al_u216_o,open_n9151}),
    .q({open_n9155,\U1/Count [3]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(~D*~C*B*A)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(~D*~C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000000001000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000000001000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u217|U1/reg0_b26  (
    .a({\U1/Count [23],open_n9156}),
    .b({\U1/Count [24],open_n9157}),
    .c({\U1/Count [25],\U1/n3 [26]}),
    .clk(LCD_CLK_pad),
    .d({\U1/Count [26],\U1/n1 }),
    .sr(nRST_pad),
    .f({_al_u217_o,open_n9175}),
    .q({open_n9179,\U1/Count [26]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(D*~C*~B*A)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(D*~C*~B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000001000000000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000001000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u218|U1/reg0_b9  (
    .a({\U1/Count [6],open_n9180}),
    .b({\U1/Count [7],open_n9181}),
    .c({\U1/Count [8],\U1/n3 [9]}),
    .clk(LCD_CLK_pad),
    .d({\U1/Count [9],\U1/n1 }),
    .sr(nRST_pad),
    .f({_al_u218_o,open_n9199}),
    .q({open_n9203,\U1/Count [9]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u219|U1/reg0_b5  (
    .a({\U1/Count [30],open_n9204}),
    .b({\U1/Count [31],open_n9205}),
    .c({\U1/Count [4],\U1/n3 [5]}),
    .clk(LCD_CLK_pad),
    .d({\U1/Count [5],\U1/n1 }),
    .sr(nRST_pad),
    .f({_al_u219_o,open_n9223}),
    .q({open_n9227,\U1/Count [5]}));  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(D*C*B*A)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(D*C*B*A)"),
    //.LUTG1("(D*C*B*A)"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b1000000000000000),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u220|_al_u231  (
    .a({_al_u216_o,_al_u227_o}),
    .b({_al_u217_o,_al_u228_o}),
    .c({_al_u218_o,_al_u229_o}),
    .d({_al_u219_o,_al_u230_o}),
    .f({_al_u220_o,_al_u231_o}));
  EG_PHY_MSLICE #(
    //.LUT0("(D*~C*~B*~A)"),
    //.LUT1("(D*~C*~B*~A)"),
    .INIT_LUT0(16'b0000000100000000),
    .INIT_LUT1(16'b0000000100000000),
    .MODE("LOGIC"))
    \_al_u221|_al_u222  (
    .a({\U1/Count [12],\U1/Count [0]}),
    .b({\U1/Count [13],\U1/Count [1]}),
    .c({\U1/Count [14],\U1/Count [10]}),
    .d({\U1/Count [15],\U1/Count [11]}),
    .f({_al_u221_o,_al_u222_o}));
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(D*C*B*~A)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(D*C*B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0100000000000000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0100000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u223|U1/reg0_b22  (
    .a({\U1/Count [2],open_n9272}),
    .b({\U1/Count [20],open_n9273}),
    .c({\U1/Count [21],\U1/n3 [22]}),
    .clk(LCD_CLK_pad),
    .d({\U1/Count [22],\U1/n1 }),
    .sr(nRST_pad),
    .f({_al_u223_o,open_n9291}),
    .q({open_n9295,\U1/Count [22]}));  // source/CLK_MOD.v(32)
  EG_PHY_MSLICE #(
    //.LUT0("(~D*C*B*A)"),
    //.LUT1("(D*C*B*A)"),
    .INIT_LUT0(16'b0000000010000000),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"))
    \_al_u225|_al_u224  (
    .a({_al_u221_o,\U1/Count [16]}),
    .b({_al_u222_o,\U1/Count [17]}),
    .c({_al_u223_o,\U1/Count [18]}),
    .d({_al_u224_o,\U1/Count [19]}),
    .f({_al_u225_o,_al_u224_o}));
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u226|U1/reg0_b2  (
    .c({_al_u225_o,\U1/n3 [2]}),
    .clk(LCD_CLK_pad),
    .d({_al_u220_o,\U1/n1 }),
    .sr(nRST_pad),
    .f({\U1/n1 ,open_n9337}),
    .q({open_n9341,\U1/Count [2]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u227|U2/reg0_b3  (
    .a({\U2/Count [27],open_n9342}),
    .b({\U2/Count [28],open_n9343}),
    .c({\U2/Count [29],\U2/n3 [3]}),
    .clk(clk_pad),
    .d({\U2/Count [3],\U2/n1 }),
    .sr(nRST_pad),
    .f({_al_u227_o,open_n9361}),
    .q({open_n9365,\U2/Count [3]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(~D*~C*B*~A)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(~D*~C*B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000000000100),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000000000100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u228|U2/reg0_b26  (
    .a({\U2/Count [23],open_n9366}),
    .b({\U2/Count [24],open_n9367}),
    .c({\U2/Count [25],\U2/n3 [26]}),
    .clk(clk_pad),
    .d({\U2/Count [26],\U2/n1 }),
    .sr(nRST_pad),
    .f({_al_u228_o,open_n9385}),
    .q({open_n9389,\U2/Count [26]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(D*~C*~B*~A)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000100000000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u229|U2/reg0_b9  (
    .a({\U2/Count [6],open_n9390}),
    .b({\U2/Count [7],open_n9391}),
    .c({\U2/Count [8],\U2/n3 [9]}),
    .clk(clk_pad),
    .d({\U2/Count [9],\U2/n1 }),
    .sr(nRST_pad),
    .f({_al_u229_o,open_n9409}),
    .q({open_n9413,\U2/Count [9]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u230|U2/reg0_b5  (
    .a({\U2/Count [30],open_n9414}),
    .b({\U2/Count [31],open_n9415}),
    .c({\U2/Count [4],\U2/n3 [5]}),
    .clk(clk_pad),
    .d({\U2/Count [5],\U2/n1 }),
    .sr(nRST_pad),
    .f({_al_u230_o,open_n9433}),
    .q({open_n9437,\U2/Count [5]}));  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D*C*~B*~A)"),
    //.LUTF1("(~D*~C*B*A)"),
    //.LUTG0("(~D*C*~B*~A)"),
    //.LUTG1("(~D*~C*B*A)"),
    .INIT_LUTF0(16'b0000000000010000),
    .INIT_LUTF1(16'b0000000000001000),
    .INIT_LUTG0(16'b0000000000010000),
    .INIT_LUTG1(16'b0000000000001000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u232|_al_u233  (
    .a({\U2/Count [12],\U2/Count [0]}),
    .b({\U2/Count [13],\U2/Count [1]}),
    .c({\U2/Count [14],\U2/Count [10]}),
    .d({\U2/Count [15],\U2/Count [11]}),
    .f({_al_u232_o,_al_u233_o}));
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(D*C*~B*~A)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(D*C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0001000000000000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0001000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u234|U2/reg0_b22  (
    .a({\U2/Count [2],open_n9462}),
    .b({\U2/Count [20],open_n9463}),
    .c({\U2/Count [21],\U2/n3 [22]}),
    .clk(clk_pad),
    .d({\U2/Count [22],\U2/n1 }),
    .sr(nRST_pad),
    .f({_al_u234_o,open_n9481}),
    .q({open_n9485,\U2/Count [22]}));  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(D*C*B*~A)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(D*C*B*~A)"),
    //.LUTG1("(D*C*B*A)"),
    .INIT_LUTF0(16'b0100000000000000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b0100000000000000),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u236|_al_u235  (
    .a({_al_u232_o,\U2/Count [16]}),
    .b({_al_u233_o,\U2/Count [17]}),
    .c({_al_u234_o,\U2/Count [18]}),
    .d({_al_u235_o,\U2/Count [19]}),
    .f({_al_u236_o,_al_u235_o}));
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u237|U2/reg0_b2  (
    .c({_al_u236_o,\U2/n3 [2]}),
    .clk(clk_pad),
    .d({_al_u231_o,\U2/n1 }),
    .sr(nRST_pad),
    .f({\U2/n1 ,open_n9531}),
    .q({open_n9535,\U2/Count [2]}));  // source/CLK_MOD.v(32)
  // source/VGAMod.v(56)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(C*D)"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u238|D1/reg0_b15  (
    .a({\D1/PixelCount [12],open_n9536}),
    .b({\D1/PixelCount [13],open_n9537}),
    .c({\D1/PixelCount [14],\D1/n4 [15]}),
    .clk(LCD_CLK_pad),
    .d({\D1/PixelCount [15],\D1/mux2_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .f({_al_u238_o,open_n9555}),
    .q({open_n9559,\D1/PixelCount [15]}));  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("(~D*C*~B*~A)"),
    //.LUTG0("(C*D)"),
    //.LUTG1("(~D*C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b0000000000010000),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b0000000000010000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u239|D1/reg0_b1  (
    .a({\D1/PixelCount [0],open_n9560}),
    .b({\D1/PixelCount [1],open_n9561}),
    .c({\D1/PixelCount [10],\D1/n4 [1]}),
    .clk(LCD_CLK_pad),
    .d({\D1/PixelCount [11],\D1/mux2_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .f({_al_u239_o,open_n9579}),
    .q({open_n9583,\D1/PixelCount [1]}));  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("(~D*C*~B*~A)"),
    //.LUTG0("(C*D)"),
    //.LUTG1("(~D*C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b0000000000010000),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b0000000000010000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u240|D1/reg0_b9  (
    .a({\D1/PixelCount [6],open_n9584}),
    .b({\D1/PixelCount [7],open_n9585}),
    .c({\D1/PixelCount [8],\D1/n4 [9]}),
    .clk(LCD_CLK_pad),
    .d({\D1/PixelCount [9],\D1/mux2_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .f({_al_u240_o,open_n9603}),
    .q({open_n9607,\D1/PixelCount [9]}));  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("(D*~C*~B*~A)"),
    //.LUTG0("(C*D)"),
    //.LUTG1("(D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b0000000100000000),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b0000000100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u241|D1/reg0_b5  (
    .a({\D1/PixelCount [2],open_n9608}),
    .b({\D1/PixelCount [3],open_n9609}),
    .c({\D1/PixelCount [4],\D1/n4 [5]}),
    .clk(LCD_CLK_pad),
    .d({\D1/PixelCount [5],\D1/mux2_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .f({_al_u241_o,open_n9627}),
    .q({open_n9631,\D1/PixelCount [5]}));  // source/VGAMod.v(56)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(~D)"),
    //.LUTG1("(D*C*B*A)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b0000000011111111),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u242|U2/CLK_OUT_reg  (
    .a({_al_u238_o,open_n9632}),
    .b({_al_u239_o,open_n9633}),
    .c({_al_u240_o,open_n9634}),
    .ce(\U2/n1 ),
    .clk(clk_pad),
    .d({_al_u241_o,LED_pad[2]}),
    .sr(nRST_pad),
    .f({_al_u242_o,open_n9651}),
    .q({open_n9655,LED_pad[2]}));  // source/CLK_MOD.v(32)
  // source/VGAMod.v(56)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100110011110000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b1100110011110000),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u243|D1/reg1_b15  (
    .a({\D1/LineCount [12],open_n9656}),
    .b({\D1/LineCount [13],\D1/n2 [15]}),
    .c({\D1/LineCount [14],\D1/LineCount [15]}),
    .clk(LCD_CLK_pad),
    .d({\D1/LineCount [15],_al_u242_o}),
    .sr(nRST_pad),
    .f({_al_u243_o,open_n9674}),
    .q({open_n9678,\D1/LineCount [15]}));  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  EG_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTF1("(D*~C*~B*~A)"),
    //.LUTG0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTG1("(D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1011000110100000),
    .INIT_LUTF1(16'b0000000100000000),
    .INIT_LUTG0(16'b1011000110100000),
    .INIT_LUTG1(16'b0000000100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u245|D1/reg1_b9  (
    .a({\D1/LineCount [6],_al_u242_o}),
    .b({\D1/LineCount [7],_al_u247_o}),
    .c({\D1/LineCount [8],\D1/n2 [9]}),
    .clk(LCD_CLK_pad),
    .d({\D1/LineCount [9],\D1/LineCount [9]}),
    .sr(nRST_pad),
    .f({_al_u245_o,open_n9696}),
    .q({open_n9700,\D1/LineCount [9]}));  // source/VGAMod.v(56)
  // source/VGAMod.v(56)
  EG_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTF1("(D*C*B*~A)"),
    //.LUTG0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTG1("(D*C*B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1011000110100000),
    .INIT_LUTF1(16'b0100000000000000),
    .INIT_LUTG0(16'b1011000110100000),
    .INIT_LUTG1(16'b0100000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u246|D1/reg1_b5  (
    .a({\D1/LineCount [2],_al_u242_o}),
    .b({\D1/LineCount [3],_al_u247_o}),
    .c({\D1/LineCount [4],\D1/n2 [5]}),
    .clk(LCD_CLK_pad),
    .d({\D1/LineCount [5],\D1/LineCount [5]}),
    .sr(nRST_pad),
    .f({_al_u246_o,open_n9718}),
    .q({open_n9722,\D1/LineCount [5]}));  // source/VGAMod.v(56)
  EG_PHY_MSLICE #(
    //.LUT0("(~D*~C*B*~A)"),
    //.LUT1("(D*C*B*A)"),
    .INIT_LUT0(16'b0000000000000100),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"))
    \_al_u247|_al_u244  (
    .a({_al_u243_o,\D1/LineCount [0]}),
    .b({_al_u244_o,\D1/LineCount [1]}),
    .c({_al_u245_o,\D1/LineCount [10]}),
    .d({_al_u246_o,\D1/LineCount [11]}),
    .f({_al_u247_o,_al_u244_o}));
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000101010000000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b1000101010000000),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u328|U4/reg2_b8  (
    .a({\U4/AddrCtrl [0],\U4/mux2_b0_sel_is_0_o }),
    .b({\U4/AddrCtrl [1],\U4/n2 [8]}),
    .c({\U4/AddrCtrl [7],\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [8],\U4/AddrCtrl [8]}),
    .sr(nRST_pad),
    .f({_al_u328_o,open_n9760}),
    .q({open_n9764,\U4/AddrCtrl [8]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000101010000000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b1000101010000000),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u329|U4/reg2_b15  (
    .a({\U4/AddrCtrl [12],\U4/mux2_b0_sel_is_0_o }),
    .b({\U4/AddrCtrl [13],\U4/n2 [15]}),
    .c({\U4/AddrCtrl [14],\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [15],\U4/AddrCtrl [15]}),
    .sr(nRST_pad),
    .f({_al_u329_o,open_n9782}),
    .q({open_n9786,\U4/AddrCtrl [15]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  EG_PHY_MSLICE #(
    //.LUT0("(C*D)"),
    .INIT_LUT0(16'b1111000000000000),
    .MODE("LOGIC"))
    _al_u330 (
    .c({open_n9791,_al_u329_o}),
    .d({open_n9794,_al_u328_o}),
    .f({open_n9808,_al_u330_o}));
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTF1("(D*C*~B*~A)"),
    //.LUTG0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG1("(D*C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000101010000000),
    .INIT_LUTF1(16'b0001000000000000),
    .INIT_LUTG0(16'b1000101010000000),
    .INIT_LUTG1(16'b0001000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u331|U4/reg2_b9  (
    .a({\U4/AddrCtrl [4],\U4/mux2_b0_sel_is_0_o }),
    .b({\U4/AddrCtrl [5],\U4/n2 [9]}),
    .c({\U4/AddrCtrl [6],\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [9],\U4/AddrCtrl [9]}),
    .sr(nRST_pad),
    .f({_al_u331_o,open_n9831}),
    .q({open_n9835,\U4/AddrCtrl [9]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTF1("(~D*~C*~B*A)"),
    //.LUTG0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG1("(~D*~C*~B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000101010000000),
    .INIT_LUTF1(16'b0000000000000010),
    .INIT_LUTG0(16'b1000101010000000),
    .INIT_LUTG1(16'b0000000000000010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u332|U4/reg2_b3  (
    .a({\U4/AddrCtrl [10],\U4/mux2_b0_sel_is_0_o }),
    .b({\U4/AddrCtrl [11],\U4/n2 [3]}),
    .c({\U4/AddrCtrl [2],\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [3],\U4/AddrCtrl [3]}),
    .sr(nRST_pad),
    .f({_al_u332_o,open_n9853}),
    .q({open_n9857,\U4/AddrCtrl [3]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // source/VGAMod.v(56)
  EG_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTF1("(~C*~D)"),
    //.LUTG0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTG1("(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1011000110100000),
    .INIT_LUTF1(16'b0000000000001111),
    .INIT_LUTG0(16'b1011000110100000),
    .INIT_LUTG1(16'b0000000000001111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u350|D1/reg1_b3  (
    .a({open_n9858,_al_u242_o}),
    .b({open_n9859,_al_u247_o}),
    .c({_al_u247_o,\D1/n2 [3]}),
    .clk(LCD_CLK_pad),
    .d({_al_u242_o,\D1/LineCount [3]}),
    .sr(nRST_pad),
    .f({\D1/mux2_b0_sel_is_0_o ,open_n9877}),
    .q({open_n9881,\D1/LineCount [3]}));  // source/VGAMod.v(56)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000100100000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b0011000100100000),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u368|U4/reg0_b1  (
    .a({\U4/LineConut [0],\U4/n6_lutinv }),
    .b({\U4/LineConut [1],LCD_SYNC_pad}),
    .c({\U4/AddrCtrl [11],\U4/n7 [1]}),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [3],\U4/LineConut [1]}),
    .sr(nRST_pad),
    .f({_al_u368_o,open_n9899}),
    .q({open_n9903,\U4/LineConut [1]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTF1("(D*C*~B*~A)"),
    //.LUTG0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG1("(D*C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000100100000),
    .INIT_LUTF1(16'b0001000000000000),
    .INIT_LUTG0(16'b0011000100100000),
    .INIT_LUTG1(16'b0001000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u369|U4/reg0_b7  (
    .a({\U4/LineConut [4],\U4/n6_lutinv }),
    .b({\U4/LineConut [5],LCD_SYNC_pad}),
    .c({\U4/LineConut [6],\U4/n7 [7]}),
    .clk(CLK_100M),
    .d({\U4/LineConut [7],\U4/LineConut [7]}),
    .sr(nRST_pad),
    .f({_al_u369_o,open_n9921}),
    .q({open_n9925,\U4/LineConut [7]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTF1("(D*~C*~B*~A)"),
    //.LUTG0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG1("(D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000100100000),
    .INIT_LUTF1(16'b0000000100000000),
    .INIT_LUTG0(16'b0011000100100000),
    .INIT_LUTG1(16'b0000000100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u370|U4/reg0_b3  (
    .a({\U4/LineConut [14],\U4/n6_lutinv }),
    .b({\U4/LineConut [15],LCD_SYNC_pad}),
    .c({\U4/LineConut [2],\U4/n7 [3]}),
    .clk(CLK_100M),
    .d({\U4/LineConut [3],\U4/LineConut [3]}),
    .sr(nRST_pad),
    .f({_al_u370_o,open_n9943}),
    .q({open_n9947,\U4/LineConut [3]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D*~C*~B*~A)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(~D*~C*~B*~A)"),
    //.LUTG1("(D*C*B*A)"),
    .INIT_LUTF0(16'b0000000000000001),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b0000000000000001),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u371|_al_u367  (
    .a({_al_u367_o,\U4/LineConut [10]}),
    .b({_al_u368_o,\U4/LineConut [11]}),
    .c({_al_u369_o,\U4/LineConut [12]}),
    .d({_al_u370_o,\U4/LineConut [13]}),
    .f({_al_u371_o,_al_u367_o}));
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTF1("(~D*~C*~B*A)"),
    //.LUTG0("(A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG1("(~D*~C*~B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000101010000000),
    .INIT_LUTF1(16'b0000000000000010),
    .INIT_LUTG0(16'b1000101010000000),
    .INIT_LUTG1(16'b0000000000000010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u372|U4/reg2_b6  (
    .a({\U4/AddrCtrl [4],\U4/mux2_b0_sel_is_0_o }),
    .b({\U4/AddrCtrl [5],\U4/n2 [6]}),
    .c({\U4/AddrCtrl [6],\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [9],\U4/AddrCtrl [6]}),
    .sr(nRST_pad),
    .f({_al_u372_o,open_n9989}),
    .q({open_n9993,\U4/AddrCtrl [6]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTF1("(D*~C*~B*~A)"),
    //.LUTG0("(~B*(D*~(C)*~(A)+D*C*~(A)+~(D)*C*A+D*C*A))"),
    //.LUTG1("(D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000100100000),
    .INIT_LUTF1(16'b0000000100000000),
    .INIT_LUTG0(16'b0011000100100000),
    .INIT_LUTG1(16'b0000000100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u373|U4/reg0_b9  (
    .a({\U4/LineConut [8],\U4/n6_lutinv }),
    .b({\U4/LineConut [9],LCD_SYNC_pad}),
    .c({\U4/AddrCtrl [10],\U4/n7 [9]}),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [2],\U4/LineConut [9]}),
    .sr(nRST_pad),
    .f({_al_u373_o,open_n10011}),
    .q({open_n10015,\U4/LineConut [9]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  EG_PHY_MSLICE #(
    //.LUT0("(C*B*D)"),
    //.LUT1("(D*C*B*A)"),
    .INIT_LUT0(16'b1100000000000000),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"))
    \_al_u374|_al_u333  (
    .a({_al_u330_o,open_n10016}),
    .b({_al_u371_o,_al_u331_o}),
    .c({_al_u372_o,_al_u332_o}),
    .d({_al_u373_o,_al_u330_o}),
    .f({\U4/n13 ,\U4/n6_lutinv }));
  EG_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(~D)"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b0000000011111111),
    .MODE("LOGIC"))
    \_al_u387|_al_u133  (
    .c({open_n10041,FIFO_DO[7]}),
    .d({FIFO_EMPTY,FIFO_EMPTY}),
    .f({\D1/n23 ,LCD_G_pad[4]}));
  EG_PHY_LSLICE #(
    //.LUTF0("(D*C*B*A)"),
    //.LUTF1("(~D)"),
    //.LUTG0("(D*C*B*A)"),
    //.LUTG1("(~D)"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b0000000011111111),
    .INIT_LUTG0(16'b1000000000000000),
    .INIT_LUTG1(16'b0000000011111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u389|_al_u172  (
    .a({open_n10062,\D1/n12 }),
    .b({open_n10063,\D1/n13 }),
    .c({open_n10064,\D1/n15 }),
    .d({\FIFO0/logic_fifo_full ,\D1/n17 }),
    .f({\FIFO0/logic_fifo_full_neg ,GPIO_pad}));
  EG_PHY_PAD #(
    //.LOCATION("C15"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u60 (
    .do({open_n10090,open_n10091,open_n10092,GPIO_pad}),
    .opad(GPIO));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(26)
  EG_PHY_PAD #(
    //.LOCATION("J16"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u61 (
    .do({open_n10107,open_n10108,open_n10109,1'b1}),
    .opad(LCDBK));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(27)
  EG_PHY_PAD #(
    //.LOCATION("N1"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u62 (
    .do({open_n10124,open_n10125,open_n10126,LCD_B_pad[7]}),
    .opad(LCD_B[7]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(34)
  EG_PHY_PAD #(
    //.LOCATION("M1"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u63 (
    .do({open_n10141,open_n10142,open_n10143,LCD_B_pad[6]}),
    .opad(LCD_B[6]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(34)
  EG_PHY_PAD #(
    //.LOCATION("M2"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u64 (
    .do({open_n10158,open_n10159,open_n10160,LCD_B_pad[5]}),
    .opad(LCD_B[5]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(34)
  EG_PHY_PAD #(
    //.LOCATION("L3"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u65 (
    .do({open_n10175,open_n10176,open_n10177,LCD_B_pad[4]}),
    .opad(LCD_B[4]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(34)
  EG_PHY_PAD #(
    //.LOCATION("K3"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u66 (
    .do({open_n10192,open_n10193,open_n10194,LCD_B_pad[3]}),
    .opad(LCD_B[3]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(34)
  EG_PHY_PAD #(
    //.LOCATION("K2"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u67 (
    .do({open_n10209,open_n10210,open_n10211,LCD_B_pad[2]}),
    .opad(LCD_B[2]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(34)
  EG_PHY_PAD #(
    //.LOCATION("K1"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u68 (
    .do({open_n10226,open_n10227,open_n10228,LCD_B_pad[2]}),
    .opad(LCD_B[1]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(34)
  EG_PHY_PAD #(
    //.LOCATION("J1"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u69 (
    .do({open_n10243,open_n10244,open_n10245,LCD_B_pad[2]}),
    .opad(LCD_B[0]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(34)
  EG_PHY_PAD #(
    //.LOCATION("L1"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u70 (
    .do({open_n10260,open_n10261,open_n10262,LCD_CLK_pad}),
    .opad(LCD_CLK));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(28)
  EG_PHY_PAD #(
    //.LOCATION("L4"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u71 (
    .do({open_n10277,open_n10278,open_n10279,GPIO_pad}),
    .opad(LCD_DEN));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(31)
  EG_PHY_PAD #(
    //.LOCATION("J3"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u72 (
    .do({open_n10294,open_n10295,open_n10296,LCD_G_pad[7]}),
    .opad(LCD_G[7]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(33)
  EG_PHY_PAD #(
    //.LOCATION("J4"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u73 (
    .do({open_n10311,open_n10312,open_n10313,LCD_G_pad[6]}),
    .opad(LCD_G[6]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(33)
  EG_PHY_PAD #(
    //.LOCATION("G3"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u74 (
    .do({open_n10328,open_n10329,open_n10330,LCD_G_pad[5]}),
    .opad(LCD_G[5]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(33)
  EG_PHY_PAD #(
    //.LOCATION("G1"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u75 (
    .do({open_n10345,open_n10346,open_n10347,LCD_G_pad[4]}),
    .opad(LCD_G[4]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(33)
  EG_PHY_PAD #(
    //.LOCATION("F2"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u76 (
    .do({open_n10362,open_n10363,open_n10364,LCD_G_pad[3]}),
    .opad(LCD_G[3]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(33)
  EG_PHY_PAD #(
    //.LOCATION("F1"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u77 (
    .do({open_n10379,open_n10380,open_n10381,LCD_G_pad[2]}),
    .opad(LCD_G[2]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(33)
  EG_PHY_PAD #(
    //.LOCATION("E4"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u78 (
    .do({open_n10396,open_n10397,open_n10398,LCD_B_pad[2]}),
    .opad(LCD_G[1]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(33)
  EG_PHY_PAD #(
    //.LOCATION("E3"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u79 (
    .do({open_n10413,open_n10414,open_n10415,LCD_B_pad[2]}),
    .opad(LCD_G[0]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(33)
  EG_PHY_PAD #(
    //.LOCATION("P1"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u80 (
    .do({open_n10430,open_n10431,open_n10432,LCD_HYNC_pad}),
    .opad(LCD_HYNC));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(29)
  EG_PHY_PAD #(
    //.LOCATION("E1"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u81 (
    .do({open_n10447,open_n10448,open_n10449,LCD_R_pad[7]}),
    .opad(LCD_R[7]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(32)
  EG_PHY_PAD #(
    //.LOCATION("D1"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u82 (
    .do({open_n10464,open_n10465,open_n10466,LCD_R_pad[6]}),
    .opad(LCD_R[6]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(32)
  EG_PHY_PAD #(
    //.LOCATION("E2"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u83 (
    .do({open_n10481,open_n10482,open_n10483,LCD_R_pad[5]}),
    .opad(LCD_R[5]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(32)
  EG_PHY_PAD #(
    //.LOCATION("C1"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u84 (
    .do({open_n10498,open_n10499,open_n10500,LCD_R_pad[4]}),
    .opad(LCD_R[4]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(32)
  EG_PHY_PAD #(
    //.LOCATION("C2"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u85 (
    .do({open_n10515,open_n10516,open_n10517,LCD_R_pad[3]}),
    .opad(LCD_R[3]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(32)
  EG_PHY_PAD #(
    //.LOCATION("C3"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u86 (
    .do({open_n10532,open_n10533,open_n10534,1'b1}),
    .opad(LCD_R[2]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(32)
  EG_PHY_PAD #(
    //.LOCATION("A2"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u87 (
    .do({open_n10549,open_n10550,open_n10551,1'b1}),
    .opad(LCD_R[1]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(32)
  EG_PHY_PAD #(
    //.LOCATION("B2"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u88 (
    .do({open_n10566,open_n10567,open_n10568,1'b1}),
    .opad(LCD_R[0]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(32)
  EG_PHY_PAD #(
    //.LOCATION("R1"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u89 (
    .do({open_n10583,open_n10584,open_n10585,LCD_SYNC_pad}),
    .opad(LCD_SYNC));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(30)
  EG_PHY_PAD #(
    //.LOCATION("R3"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u90 (
    .do({open_n10600,open_n10601,open_n10602,LED_pad[2]}),
    .opad(LED[2]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(24)
  EG_PHY_PAD #(
    //.LOCATION("P13"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u91 (
    .do({open_n10617,open_n10618,open_n10619,LED_pad[1]}),
    .opad(LED[1]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(24)
  EG_PHY_PAD #(
    //.LOCATION("J14"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u92 (
    .do({open_n10634,open_n10635,open_n10636,1'b1}),
    .opad(LED[0]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(24)
  EG_PHY_PAD #(
    //.LOCATION("K14"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u93 (
    .ipad(clk),
    .di(clk_pad));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(21)
  EG_PHY_PAD #(
    //.LOCATION("K16"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u94 (
    .ipad(nRST),
    .di(nRST_pad));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(22)
  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();

endmodule 

