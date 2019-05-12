// Verilog netlist created by TD v4.4.433
// Sun May 12 23:48:05 2019

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

  wire [15:0] \D1/LineCount ;  // source/VGAMod.v(26)
  wire [15:0] \D1/PixelCount ;  // source/VGAMod.v(25)
  wire [15:0] \D1/n2 ;
  wire [15:0] \D1/n4 ;
  wire [7:0] FIFO_DI;  // source/TOP.v(62)
  wire [15:0] FIFO_DO;  // source/TOP.v(61)
  wire [7:0] LCD_B_pad;  // source/TOP.v(34)
  wire [7:0] LCD_G_pad;  // source/TOP.v(33)
  wire [7:0] LCD_R_pad;  // source/TOP.v(32)
  wire [2:0] LED_pad;  // source/TOP.v(24)
  wire [31:0] \U1/Count ;  // source/CLK_MOD.v(15)
  wire [31:0] \U1/n3 ;
  wire [31:0] \U2/Count ;  // source/CLK_MOD.v(15)
  wire [31:0] \U2/n3 ;
  wire [14:0] \U4/Addr ;  // source/LCDCTRL.v(18)
  wire [15:0] \U4/AddrCtrl ;  // source/LCDCTRL.v(15)
  wire [0:1] \U4/Addr_piped ;
  wire [15:0] \U4/Count ;  // source/LCDCTRL.v(47)
  wire [15:0] \U4/LineConut ;  // source/LCDCTRL.v(16)
  wire [15:0] \U4/XPos ;  // source/LCDCTRL.v(48)
  wire [11:0] \U4/n14 ;
  wire [15:0] \U4/n18 ;
  wire [15:0] \U4/n2 ;
  wire [7:0] \U4/n20 ;
  wire [14:0] \U4/n23 ;
  wire [15:0] \U4/n7 ;
  wire CLK_100M;  // source/TOP.v(41)
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
  wire FIFO_EMPTY;  // source/TOP.v(59)
  wire FIFO_RE;  // source/TOP.v(57)
  wire FIFO_RST;  // source/TOP.v(54)
  wire FIFO_WE;  // source/TOP.v(58)
  wire GPIO_pad;  // source/TOP.v(26)
  wire LCD_CLK_pad;  // source/TOP.v(28)
  wire LCD_HYNC_pad;  // source/TOP.v(29)
  wire LCD_SYNC_pad;  // source/TOP.v(30)
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
  wire \U4/ROM0/inst_doa_i1_000 ;
  wire \U4/ROM0/inst_doa_i2_000 ;
  wire \U4/ROM0/inst_doa_i3_000 ;
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
  wire _al_u184_o;
  wire _al_u186_o;
  wire _al_u187_o;
  wire _al_u188_o;
  wire _al_u190_o;
  wire _al_u191_o;
  wire _al_u192_o;
  wire _al_u193_o;
  wire _al_u194_o;
  wire _al_u195_o;
  wire _al_u196_o;
  wire _al_u197_o;
  wire _al_u198_o;
  wire _al_u199_o;
  wire _al_u201_o;
  wire _al_u202_o;
  wire _al_u203_o;
  wire _al_u204_o;
  wire _al_u205_o;
  wire _al_u206_o;
  wire _al_u207_o;
  wire _al_u208_o;
  wire _al_u209_o;
  wire _al_u210_o;
  wire _al_u212_o;
  wire _al_u213_o;
  wire _al_u214_o;
  wire _al_u215_o;
  wire _al_u216_o;
  wire _al_u217_o;
  wire _al_u218_o;
  wire _al_u219_o;
  wire _al_u220_o;
  wire _al_u221_o;
  wire _al_u302_o;
  wire _al_u303_o;
  wire _al_u304_o;
  wire _al_u305_o;
  wire _al_u306_o;
  wire _al_u341_o;
  wire _al_u342_o;
  wire _al_u343_o;
  wire _al_u344_o;
  wire _al_u345_o;
  wire _al_u346_o;
  wire _al_u347_o;
  wire clk_pad;  // source/TOP.v(21)
  wire nRST_pad;  // source/TOP.v(22)

  EG_PHY_LSLICE #(
    //.MACRO("D1/add0/ucin_al_u386"),
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
    \D1/add0/u11_al_u389  (
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
    //.MACRO("D1/add0/ucin_al_u386"),
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
    \D1/add0/u15_al_u390  (
    .a({open_n18,\D1/LineCount [15]}),
    .c(2'b00),
    .d({open_n23,1'b0}),
    .fci(\D1/add0/c15 ),
    .f({open_n40,\D1/n2 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("D1/add0/ucin_al_u386"),
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
    \D1/add0/u3_al_u387  (
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
    //.MACRO("D1/add0/ucin_al_u386"),
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
    \D1/add0/u7_al_u388  (
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
    //.MACRO("D1/add0/ucin_al_u386"),
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
    \D1/add0/ucin_al_u386  (
    .a({\D1/LineCount [1],1'b0}),
    .b({\D1/LineCount [2],\D1/LineCount [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\D1/n2 [1],open_n99}),
    .fco(\D1/add0/c3 ),
    .fx({\D1/n2 [2],\D1/n2 [0]}));
  EG_PHY_LSLICE #(
    //.MACRO("D1/add1/ucin_al_u391"),
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
    \D1/add1/u11_al_u394  (
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
    //.MACRO("D1/add1/ucin_al_u391"),
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
    \D1/add1/u15_al_u395  (
    .a({open_n120,\D1/PixelCount [15]}),
    .c(2'b00),
    .d({open_n125,1'b0}),
    .fci(\D1/add1/c15 ),
    .f({open_n142,\D1/n4 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("D1/add1/ucin_al_u391"),
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
    \D1/add1/u3_al_u392  (
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
    //.MACRO("D1/add1/ucin_al_u391"),
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
    \D1/add1/u7_al_u393  (
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
    //.MACRO("D1/add1/ucin_al_u391"),
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
    \D1/add1/ucin_al_u391  (
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
    .d({_al_u216_o,_al_u216_o}),
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
    .d({_al_u216_o,_al_u216_o}),
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
    .d({_al_u216_o,_al_u216_o}),
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
    .d({_al_u216_o,_al_u216_o}),
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
    .d({_al_u216_o,_al_u216_o}),
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
    .a({_al_u216_o,_al_u216_o}),
    .b({_al_u221_o,_al_u221_o}),
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
    .dia({open_n2682,open_n2683,open_n2684,open_n2685,open_n2686,FIFO_DI[0],FIFO_DI[0],FIFO_DI[0],FIFO_DI[0]}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(FIFO_RE),
    .rprst(FIFO_RST),
    .rst(FIFO_RST),
    .we(FIFO_WE),
    .dob({open_n2707,FIFO_DO[3:0],FIFO_DO[11:8]}),
    .empty_flag(FIFO_EMPTY),
    .full_flag(\FIFO0/logic_fifo_full ));
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
    .clkc({open_n2708,open_n2709,open_n2710,CLK_100M,\PLL1/clk0_buf }));  // al_ip/LCDPLL.v(69)
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
    .d({open_n2727,LED_pad[1]}),
    .sr(nRST_pad),
    .q({open_n2749,LED_pad[1]}));  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u368"),
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
    \U1/add0/u11_al_u371  (
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
    //.MACRO("U1/add0/ucin_al_u368"),
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
    \U1/add0/u15_al_u372  (
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
    //.MACRO("U1/add0/ucin_al_u368"),
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
    \U1/add0/u19_al_u373  (
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
    //.MACRO("U1/add0/ucin_al_u368"),
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
    \U1/add0/u23_al_u374  (
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
    //.MACRO("U1/add0/ucin_al_u368"),
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
    \U1/add0/u27_al_u375  (
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
    //.MACRO("U1/add0/ucin_al_u368"),
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
    \U1/add0/u31_al_u376  (
    .a({open_n2840,\U1/Count [31]}),
    .c(2'b00),
    .d({open_n2845,1'b0}),
    .fci(\U1/add0/c31 ),
    .f({open_n2862,\U1/n3 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u368"),
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
    \U1/add0/u3_al_u369  (
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
    //.MACRO("U1/add0/ucin_al_u368"),
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
    \U1/add0/u7_al_u370  (
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
    //.MACRO("U1/add0/ucin_al_u368"),
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
    \U1/add0/ucin_al_u368  (
    .a({\U1/Count [1],1'b0}),
    .b({\U1/Count [2],\U1/Count [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U1/n3 [1],open_n2921}),
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
    //.MACRO("U2/add0/ucin_al_u377"),
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
    \U2/add0/u11_al_u380  (
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
    //.MACRO("U2/add0/ucin_al_u377"),
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
    \U2/add0/u15_al_u381  (
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
    //.MACRO("U2/add0/ucin_al_u377"),
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
    \U2/add0/u19_al_u382  (
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
    //.MACRO("U2/add0/ucin_al_u377"),
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
    \U2/add0/u23_al_u383  (
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
    //.MACRO("U2/add0/ucin_al_u377"),
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
    \U2/add0/u27_al_u384  (
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
    //.MACRO("U2/add0/ucin_al_u377"),
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
    \U2/add0/u31_al_u385  (
    .a({open_n3352,\U2/Count [31]}),
    .c(2'b00),
    .d({open_n3357,1'b0}),
    .fci(\U2/add0/c31 ),
    .f({open_n3374,\U2/n3 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u377"),
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
    \U2/add0/u3_al_u378  (
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
    //.MACRO("U2/add0/ucin_al_u377"),
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
    \U2/add0/u7_al_u379  (
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
    //.MACRO("U2/add0/ucin_al_u377"),
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
    \U2/add0/ucin_al_u377  (
    .a({\U2/Count [1],1'b0}),
    .b({\U2/Count [2],\U2/Count [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U2/n3 [1],open_n3433}),
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
    //.LUTF1("(~B*(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTG0("(~D)"),
    //.LUTG1("(~B*(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTF1(16'b0011001000010000),
    .INIT_LUTG0(16'b0000000011111111),
    .INIT_LUTG1(16'b0011001000010000),
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
    .a({\U4/Addr_piped [0],open_n3774}),
    .b({\U4/Addr_piped [1],open_n3775}),
    .c({\U4/ROM0/inst_doa_i0_000 ,open_n3776}),
    .clk(CLK_100M),
    .d({\U4/ROM0/inst_doa_i1_000 ,nRST_pad}),
    .mi(\U4/Addr [14:13]),
    .sr(\D1/n0 ),
    .f({_al_u188_o,\D1/n0 }),
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
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .csa({open_n3811,\U4/Addr [14:13]}),
    .dia({open_n3815,open_n3816,open_n3817,open_n3818,open_n3819,open_n3820,open_n3821,1'b0,open_n3822}),
    .rsta(nRST_pad),
    .doa({open_n3837,open_n3838,open_n3839,open_n3840,open_n3841,open_n3842,open_n3843,open_n3844,\U4/ROM0/inst_doa_i0_000 }));
  // address_offset=8192;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0005"),
    //.WID("0x0005"),
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
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .csa({open_n3870,\U4/Addr [14:13]}),
    .dia({open_n3874,open_n3875,open_n3876,open_n3877,open_n3878,open_n3879,open_n3880,1'b0,open_n3881}),
    .rsta(nRST_pad),
    .doa({open_n3896,open_n3897,open_n3898,open_n3899,open_n3900,open_n3901,open_n3902,open_n3903,\U4/ROM0/inst_doa_i1_000 }));
  // address_offset=16384;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0006"),
    //.WID("0x0006"),
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
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .csa({open_n3929,\U4/Addr [14:13]}),
    .dia({open_n3933,open_n3934,open_n3935,open_n3936,open_n3937,open_n3938,open_n3939,1'b0,open_n3940}),
    .rsta(nRST_pad),
    .doa({open_n3955,open_n3956,open_n3957,open_n3958,open_n3959,open_n3960,open_n3961,open_n3962,\U4/ROM0/inst_doa_i2_000 }));
  // address_offset=24576;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0007"),
    //.WID("0x0007"),
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
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .csa({open_n3988,\U4/Addr [14:13]}),
    .dia({open_n3992,open_n3993,open_n3994,open_n3995,open_n3996,open_n3997,open_n3998,1'b0,open_n3999}),
    .rsta(nRST_pad),
    .doa({open_n4014,open_n4015,open_n4016,open_n4017,open_n4018,open_n4019,open_n4020,open_n4021,\U4/ROM0/inst_doa_i3_000 }));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add0/ucin_al_u396"),
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
    \U4/add0/u11_al_u399  (
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
    //.MACRO("U4/add0/ucin_al_u396"),
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
    \U4/add0/u15_al_u400  (
    .a({open_n4049,\U4/AddrCtrl [15]}),
    .c(2'b00),
    .d({open_n4054,1'b0}),
    .fci(\U4/add0/c15 ),
    .f({open_n4071,\U4/n2 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add0/ucin_al_u396"),
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
    \U4/add0/u3_al_u397  (
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
    //.MACRO("U4/add0/ucin_al_u396"),
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
    \U4/add0/u7_al_u398  (
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
    //.MACRO("U4/add0/ucin_al_u396"),
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
    \U4/add0/ucin_al_u396  (
    .a({\U4/AddrCtrl [1],1'b0}),
    .b({\U4/AddrCtrl [2],\U4/AddrCtrl [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U4/n2 [1],open_n4130}),
    .fco(\U4/add0/c3 ),
    .fx({\U4/n2 [2],\U4/n2 [0]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add1/ucin_al_u401"),
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
    \U4/add1/u11_al_u404  (
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
    //.MACRO("U4/add1/ucin_al_u401"),
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
    \U4/add1/u15_al_u405  (
    .a({open_n4151,\U4/LineConut [15]}),
    .c(2'b00),
    .d({open_n4156,1'b0}),
    .fci(\U4/add1/c15 ),
    .f({open_n4173,\U4/n7 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add1/ucin_al_u401"),
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
    \U4/add1/u3_al_u402  (
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
    //.MACRO("U4/add1/ucin_al_u401"),
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
    \U4/add1/u7_al_u403  (
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
    //.MACRO("U4/add1/ucin_al_u401"),
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
    \U4/add1/ucin_al_u401  (
    .a({\U4/LineConut [1],1'b0}),
    .b({\U4/LineConut [2],\U4/LineConut [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U4/n7 [1],open_n4232}),
    .fco(\U4/add1/c3 ),
    .fx({\U4/n7 [2],\U4/n7 [0]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add2/ucin_al_u410"),
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
    \U4/add2/u11_al_u413  (
    .a({open_n4235,\U4/Count [15]}),
    .c(2'b00),
    .d({open_n4240,1'b0}),
    .fci(\U4/add2/c11 ),
    .f({open_n4257,\U4/n14 [11]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add2/ucin_al_u410"),
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
    \U4/add2/u3_al_u411  (
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
    //.MACRO("U4/add2/ucin_al_u410"),
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
    \U4/add2/u7_al_u412  (
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
    //.MACRO("U4/add2/ucin_al_u410"),
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
    \U4/add2/ucin_al_u410  (
    .a({\U4/Count [5],1'b0}),
    .b({\U4/Count [6],\U4/Count [4]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U4/n14 [1],open_n4316}),
    .fco(\U4/add2/c3 ),
    .fx({\U4/n14 [2],\U4/n14 [0]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add3/ucin_al_u418"),
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
    \U4/add3/u3_al_u419  (
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
    //.MACRO("U4/add3/ucin_al_u418"),
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
    \U4/add3/u7_al_u420  (
    .a({open_n4337,\U4/XPos [15]}),
    .c(2'b00),
    .d({open_n4342,1'b0}),
    .fci(\U4/add3/c7 ),
    .f({open_n4359,\U4/n20 [7]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add3/ucin_al_u418"),
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
    \U4/add3/ucin_al_u418  (
    .a({\U4/XPos [9],1'b0}),
    .b({\U4/XPos [10],\U4/XPos [8]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U4/n20 [1],open_n4382}),
    .fco(\U4/add3/c3 ),
    .fx({\U4/n20 [2],\U4/n20 [0]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add4/ucin_al_u406"),
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
    \U4/add4/u11_al_u409  (
    .a({\U4/Addr [13],\U4/Addr [11]}),
    .b({\U4/Addr [14],\U4/Addr [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add4/c11 ),
    .f({\U4/n23 [13],\U4/n23 [11]}),
    .fx({\U4/n23 [14],\U4/n23 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add4/ucin_al_u406"),
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
    \U4/add4/u3_al_u407  (
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
    //.MACRO("U4/add4/ucin_al_u406"),
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
    \U4/add4/u7_al_u408  (
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
    //.MACRO("U4/add4/ucin_al_u406"),
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
    \U4/add4/ucin_al_u406  (
    .a({\U4/Addr [1],1'b0}),
    .b({\U4/Addr [2],\U4/Addr [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U4/n23 [1],open_n4457}),
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
    .b({1'b0,open_n4460}),
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
    .f({\U4/n1 ,open_n4672}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_0|U4/lt1_cin  (
    .a(2'b01),
    .b({\U4/Count [4],open_n4678}),
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
    .f({\U4/n10 ,open_n4842}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_0|U4/lt2_cin  (
    .a(2'b01),
    .b({\U4/Count [4],open_n4848}),
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
    .f({\U4/XPos [2],open_n5012}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt3_0|U4/lt3_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt3_0|U4/lt3_cin  (
    .a(2'b01),
    .b({\U4/AddrCtrl [0],open_n5018}),
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
    .f({\U4/n19 ,open_n5230}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt4_0|U4/lt4_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt4_0|U4/lt4_cin  (
    .a({\U4/AddrCtrl [0],1'b0}),
    .b({1'b0,open_n5236}),
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
    .f({\U4/n21 ,open_n5448}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt5_0|U4/lt5_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt5_0|U4/lt5_cin  (
    .a({\U4/AddrCtrl [0],1'b0}),
    .b({1'b0,open_n5454}),
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
    .f({\U4/n26 ,open_n5666}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt6_0|U4/lt6_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt6_0|U4/lt6_cin  (
    .a({\U4/LineConut [0],1'b0}),
    .b({1'b1,open_n5672}),
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
    .f({\U4/n30 ,open_n5884}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt7_0|U4/lt7_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt7_0|U4/lt7_cin  (
    .a(2'b11),
    .b({\U4/LineConut [0],open_n5890}),
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
    .f({\U4/n32 ,open_n6102}));
  // source/LCDCTRL.v(44)
  // source/LCDCTRL.v(44)
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
    .q({\U4/LineConut [0],\U4/LineConut [8]}));  // source/LCDCTRL.v(44)
  // source/LCDCTRL.v(44)
  // source/LCDCTRL.v(44)
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
    .q({\U4/LineConut [10],\U4/LineConut [6]}));  // source/LCDCTRL.v(44)
  // source/LCDCTRL.v(44)
  // source/LCDCTRL.v(44)
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
    .q({\U4/LineConut [11],\U4/LineConut [5]}));  // source/LCDCTRL.v(44)
  // source/LCDCTRL.v(44)
  // source/LCDCTRL.v(44)
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
    .q({\U4/LineConut [12],\U4/LineConut [4]}));  // source/LCDCTRL.v(44)
  // source/LCDCTRL.v(44)
  // source/LCDCTRL.v(44)
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
    .q({\U4/LineConut [13],\U4/LineConut [2]}));  // source/LCDCTRL.v(44)
  // source/LCDCTRL.v(44)
  // source/LCDCTRL.v(44)
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
    .q({\U4/LineConut [14],\U4/LineConut [15]}));  // source/LCDCTRL.v(44)
  // source/LCDCTRL.v(74)
  // source/LCDCTRL.v(74)
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
    .q({\U4/Addr [0],\U4/Addr [14]}));  // source/LCDCTRL.v(74)
  // source/LCDCTRL.v(74)
  // source/LCDCTRL.v(74)
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
    .q({\U4/Addr [10],\U4/Addr [13]}));  // source/LCDCTRL.v(74)
  // source/LCDCTRL.v(74)
  // source/LCDCTRL.v(74)
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
    .q({\U4/Addr [11],\U4/Addr [9]}));  // source/LCDCTRL.v(74)
  // source/LCDCTRL.v(74)
  // source/LCDCTRL.v(74)
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
    .q({\U4/Addr [12],\U4/Addr [8]}));  // source/LCDCTRL.v(74)
  // source/LCDCTRL.v(74)
  // source/LCDCTRL.v(74)
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
    .q({\U4/Addr [1],\U4/Addr [7]}));  // source/LCDCTRL.v(74)
  // source/LCDCTRL.v(74)
  // source/LCDCTRL.v(74)
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
    .q({\U4/Addr [2],\U4/Addr [6]}));  // source/LCDCTRL.v(74)
  // source/LCDCTRL.v(74)
  // source/LCDCTRL.v(74)
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
    .q({\U4/Addr [3],\U4/Addr [5]}));  // source/LCDCTRL.v(74)
  // source/LCDCTRL.v(32)
  // source/LCDCTRL.v(32)
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
    .q({\U4/AddrCtrl [0],\U4/AddrCtrl [5]}));  // source/LCDCTRL.v(32)
  // source/LCDCTRL.v(32)
  // source/LCDCTRL.v(32)
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
    .q({\U4/AddrCtrl [10],\U4/AddrCtrl [4]}));  // source/LCDCTRL.v(32)
  // source/LCDCTRL.v(32)
  // source/LCDCTRL.v(32)
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
    .q({\U4/AddrCtrl [11],\U4/AddrCtrl [2]}));  // source/LCDCTRL.v(32)
  // source/LCDCTRL.v(32)
  // source/LCDCTRL.v(32)
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
    .q({\U4/AddrCtrl [12],\U4/AddrCtrl [7]}));  // source/LCDCTRL.v(32)
  // source/LCDCTRL.v(32)
  // source/LCDCTRL.v(32)
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
    .q({\U4/AddrCtrl [13],\U4/AddrCtrl [14]}));  // source/LCDCTRL.v(32)
  EG_PHY_LSLICE #(
    //.MACRO("U4/sub0/ucin_al_u414"),
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
    \U4/sub0/u11_al_u417  (
    .a({open_n6504,1'b0}),
    .c(2'b11),
    .d({open_n6509,\U4/Count [15]}),
    .fci(\U4/sub0/c11 ),
    .f({open_n6526,\U4/n18 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/sub0/ucin_al_u414"),
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
    \U4/sub0/u3_al_u415  (
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
    //.MACRO("U4/sub0/ucin_al_u414"),
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
    \U4/sub0/u7_al_u416  (
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
    //.MACRO("U4/sub0/ucin_al_u414"),
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
    \U4/sub0/ucin_al_u414  (
    .a(2'b01),
    .b(2'b00),
    .c(2'b11),
    .d({\U4/Count [5],1'b1}),
    .e({\U4/Count [6],\U4/Count [4]}),
    .f({\U4/n18 [5],open_n6585}),
    .fco(\U4/sub0/c3 ),
    .fx({\U4/n18 [6],\U4/n18 [4]}));
  EG_PHY_MSLICE #(
    //.LUT0("(~D)"),
    //.LUT1("(~C*D)"),
    .INIT_LUT0(16'b0000000011111111),
    .INIT_LUT1(16'b0000111100000000),
    .MODE("LOGIC"))
    \_al_u125|_al_u362  (
    .c({FIFO_EMPTY,open_n6592}),
    .d({FIFO_DO[0],FIFO_EMPTY}),
    .f(LCD_B_pad[3:2]));
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
    \_al_u126|_al_u135  (
    .c({FIFO_EMPTY,FIFO_EMPTY}),
    .d({FIFO_DO[10],FIFO_DO[11]}),
    .f({LCD_G_pad[7],LCD_R_pad[3]}));
  EG_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("(~C*D)"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b0000111100000000),
    .MODE("LOGIC"))
    \_al_u127|_al_u133  (
    .c({FIFO_EMPTY,FIFO_EMPTY}),
    .d({FIFO_DO[9],FIFO_DO[9]}),
    .f({LCD_G_pad[6],LCD_R_pad[5]}));
  EG_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("(~C*D)"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b0000111100000000),
    .MODE("LOGIC"))
    \_al_u128|_al_u134  (
    .c({FIFO_EMPTY,FIFO_EMPTY}),
    .d({FIFO_DO[8],FIFO_DO[8]}),
    .f({LCD_G_pad[5],LCD_R_pad[4]}));
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
    \_al_u129|_al_u132  (
    .c({FIFO_EMPTY,FIFO_EMPTY}),
    .d({FIFO_DO[3],FIFO_DO[10]}),
    .f({LCD_G_pad[4],LCD_R_pad[6]}));
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u130|_al_u131  (
    .c({FIFO_EMPTY,FIFO_EMPTY}),
    .d(FIFO_DO[2:1]),
    .f(LCD_G_pad[3:2]));
  // source/LCDCTRL.v(60)
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
    \_al_u136|U4/reg3_b4  (
    .a({open_n6745,\U4/n13 }),
    .b({\U4/Count [4],\U4/n14 [0]}),
    .c({\U4/n18 [4],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [4]}),
    .sr(nRST_pad),
    .f({\U4/XPos [4],open_n6763}),
    .q({open_n6767,\U4/Count [4]}));  // source/LCDCTRL.v(60)
  // source/LCDCTRL.v(60)
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
    \_al_u137|U4/reg3_b5  (
    .a({open_n6768,\U4/n13 }),
    .b({\U4/Count [5],\U4/n14 [1]}),
    .c({\U4/n18 [5],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [5]}),
    .sr(nRST_pad),
    .f({\U4/XPos [5],open_n6786}),
    .q({open_n6790,\U4/Count [5]}));  // source/LCDCTRL.v(60)
  // source/LCDCTRL.v(60)
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
    \_al_u138|U4/reg3_b14  (
    .a({open_n6791,\U4/n13 }),
    .b({\U4/Count [14],\U4/n14 [10]}),
    .c({\U4/n18 [14],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [14]}),
    .sr(nRST_pad),
    .f({\U4/XPos [14],open_n6809}),
    .q({open_n6813,\U4/Count [14]}));  // source/LCDCTRL.v(60)
  // source/LCDCTRL.v(60)
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
    \_al_u139|U4/reg3_b15  (
    .a({open_n6814,\U4/n13 }),
    .b({\U4/Count [15],\U4/n14 [11]}),
    .c({\U4/n18 [15],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [15]}),
    .sr(nRST_pad),
    .f({\U4/XPos [15],open_n6832}),
    .q({open_n6836,\U4/Count [15]}));  // source/LCDCTRL.v(60)
  // source/LCDCTRL.v(60)
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
    \_al_u140|U4/reg3_b6  (
    .a({open_n6837,\U4/n13 }),
    .b({\U4/Count [6],\U4/n14 [2]}),
    .c({\U4/n18 [6],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [6]}),
    .sr(nRST_pad),
    .f({\U4/XPos [6],open_n6855}),
    .q({open_n6859,\U4/Count [6]}));  // source/LCDCTRL.v(60)
  // source/LCDCTRL.v(60)
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
    \_al_u141|U4/reg3_b7  (
    .a({open_n6860,\U4/n13 }),
    .b({\U4/Count [7],\U4/n14 [3]}),
    .c({\U4/n18 [7],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [7]}),
    .sr(nRST_pad),
    .f({\U4/XPos [7],open_n6878}),
    .q({open_n6882,\U4/Count [7]}));  // source/LCDCTRL.v(60)
  // source/LCDCTRL.v(60)
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
    \_al_u142|U4/reg3_b8  (
    .a({open_n6883,\U4/n13 }),
    .b({\U4/Count [8],\U4/n14 [4]}),
    .c({\U4/n18 [8],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [8]}),
    .sr(nRST_pad),
    .f({\U4/XPos [8],open_n6901}),
    .q({open_n6905,\U4/Count [8]}));  // source/LCDCTRL.v(60)
  // source/LCDCTRL.v(60)
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
    \_al_u143|U4/reg3_b9  (
    .a({open_n6906,\U4/n13 }),
    .b({\U4/Count [9],\U4/n14 [5]}),
    .c({\U4/n18 [9],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [9]}),
    .sr(nRST_pad),
    .f({\U4/XPos [9],open_n6924}),
    .q({open_n6928,\U4/Count [9]}));  // source/LCDCTRL.v(60)
  // source/LCDCTRL.v(60)
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
    \_al_u144|U4/reg3_b10  (
    .a({open_n6929,\U4/n13 }),
    .b({\U4/Count [10],\U4/n14 [6]}),
    .c({\U4/n18 [10],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [10]}),
    .sr(nRST_pad),
    .f({\U4/XPos [10],open_n6947}),
    .q({open_n6951,\U4/Count [10]}));  // source/LCDCTRL.v(60)
  // source/LCDCTRL.v(60)
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
    \_al_u145|U4/reg3_b11  (
    .a({open_n6952,\U4/n13 }),
    .b({\U4/Count [11],\U4/n14 [7]}),
    .c({\U4/n18 [11],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [11]}),
    .sr(nRST_pad),
    .f({\U4/XPos [11],open_n6970}),
    .q({open_n6974,\U4/Count [11]}));  // source/LCDCTRL.v(60)
  // source/LCDCTRL.v(60)
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
    \_al_u146|U4/reg3_b12  (
    .a({open_n6975,\U4/n13 }),
    .b({\U4/Count [12],\U4/n14 [8]}),
    .c({\U4/n18 [12],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [12]}),
    .sr(nRST_pad),
    .f({\U4/XPos [12],open_n6993}),
    .q({open_n6997,\U4/Count [12]}));  // source/LCDCTRL.v(60)
  // source/LCDCTRL.v(60)
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
    \_al_u147|U4/reg3_b13  (
    .a({open_n6998,\U4/n13 }),
    .b({\U4/Count [13],\U4/n14 [9]}),
    .c({\U4/n18 [13],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [13]}),
    .sr(nRST_pad),
    .f({\U4/XPos [13],open_n7016}),
    .q({open_n7020,\U4/Count [13]}));  // source/LCDCTRL.v(60)
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
    \_al_u148|_al_u149  (
    .c({\D1/n10 ,LCD_SYNC_pad}),
    .d({\D1/n9 ,LCD_HYNC_pad}),
    .f({LCD_HYNC_pad,\U4/mux2_b0_sel_is_0_o }));
  // source/LCDCTRL.v(32)
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
    \_al_u150|U4/reg2_b1  (
    .a({open_n7049,\U4/mux2_b0_sel_is_0_o }),
    .b({open_n7050,\U4/n2 [1]}),
    .c({\U4/n26 ,\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/mux2_b0_sel_is_0_o ,\U4/AddrCtrl [1]}),
    .sr(nRST_pad),
    .f({FIFO_WE,open_n7068}),
    .q({open_n7072,\U4/AddrCtrl [1]}));  // source/LCDCTRL.v(32)
  EG_PHY_MSLICE #(
    //.LUT0("(~C*B*D)"),
    //.LUT1("(C*B*D)"),
    .INIT_LUT0(16'b0000110000000000),
    .INIT_LUT1(16'b1100000000000000),
    .MODE("LOGIC"))
    \_al_u185|_al_u184  (
    .b({\D1/n15 ,\D1/n21 }),
    .c({\D1/n17 ,FIFO_EMPTY}),
    .d({_al_u184_o,\D1/n19 }),
    .f({FIFO_RE,_al_u184_o}));
  // source/LCDCTRL.v(74)
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
    \_al_u186|U4/reg1_b4  (
    .a({open_n7095,\U4/n22 }),
    .b({\U4/n30 ,LCD_SYNC_pad}),
    .c({\U4/n32 ,\U4/n23 [4]}),
    .clk(CLK_100M),
    .d({\U4/n22 ,\U4/Addr [4]}),
    .sr(nRST_pad),
    .f({_al_u186_o,open_n7113}),
    .q({open_n7117,\U4/Addr [4]}));  // source/LCDCTRL.v(74)
  EG_PHY_MSLICE #(
    //.LUT0("(D*C*B*A)"),
    //.LUT1("(B*(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    .INIT_LUT0(16'b1000000000000000),
    .INIT_LUT1(16'b1100100001000000),
    .MODE("LOGIC"))
    \_al_u187|_al_u167  (
    .a({\U4/Addr_piped [0],\D1/n12 }),
    .b({\U4/Addr_piped [1],\D1/n13 }),
    .c({\U4/ROM0/inst_doa_i2_000 ,\D1/n15 }),
    .d({\U4/ROM0/inst_doa_i3_000 ,\D1/n17 }),
    .f({_al_u187_o,GPIO_pad}));
  EG_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTF1("~(~C*~B*D)"),
    //.LUTG0("(C*D)"),
    //.LUTG1("~(~C*~B*D)"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTF1(16'b1111110011111111),
    .INIT_LUTG0(16'b1111000000000000),
    .INIT_LUTG1(16'b1111110011111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u189|_al_u168  (
    .b({_al_u187_o,open_n7140}),
    .c({_al_u188_o,\U4/n21 }),
    .d({_al_u186_o,\U4/n19 }),
    .f({FIFO_DI[0],\U4/n22 }));
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
    \_al_u190|U1/reg0_b3  (
    .a({\U1/Count [27],open_n7165}),
    .b({\U1/Count [28],open_n7166}),
    .c({\U1/Count [29],\U1/n3 [3]}),
    .clk(LCD_CLK_pad),
    .d({\U1/Count [3],\U1/n1 }),
    .sr(nRST_pad),
    .f({_al_u190_o,open_n7184}),
    .q({open_n7188,\U1/Count [3]}));  // source/CLK_MOD.v(32)
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
    \_al_u191|U1/reg0_b26  (
    .a({\U1/Count [23],open_n7189}),
    .b({\U1/Count [24],open_n7190}),
    .c({\U1/Count [25],\U1/n3 [26]}),
    .clk(LCD_CLK_pad),
    .d({\U1/Count [26],\U1/n1 }),
    .sr(nRST_pad),
    .f({_al_u191_o,open_n7208}),
    .q({open_n7212,\U1/Count [26]}));  // source/CLK_MOD.v(32)
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
    \_al_u192|U1/reg0_b9  (
    .a({\U1/Count [6],open_n7213}),
    .b({\U1/Count [7],open_n7214}),
    .c({\U1/Count [8],\U1/n3 [9]}),
    .clk(LCD_CLK_pad),
    .d({\U1/Count [9],\U1/n1 }),
    .sr(nRST_pad),
    .f({_al_u192_o,open_n7232}),
    .q({open_n7236,\U1/Count [9]}));  // source/CLK_MOD.v(32)
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
    \_al_u193|U1/reg0_b5  (
    .a({\U1/Count [30],open_n7237}),
    .b({\U1/Count [31],open_n7238}),
    .c({\U1/Count [4],\U1/n3 [5]}),
    .clk(LCD_CLK_pad),
    .d({\U1/Count [5],\U1/n1 }),
    .sr(nRST_pad),
    .f({_al_u193_o,open_n7256}),
    .q({open_n7260,\U1/Count [5]}));  // source/CLK_MOD.v(32)
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
    \_al_u194|_al_u205  (
    .a({_al_u190_o,_al_u201_o}),
    .b({_al_u191_o,_al_u202_o}),
    .c({_al_u192_o,_al_u203_o}),
    .d({_al_u193_o,_al_u204_o}),
    .f({_al_u194_o,_al_u205_o}));
  EG_PHY_MSLICE #(
    //.LUT0("(D*~C*~B*~A)"),
    //.LUT1("(D*~C*~B*~A)"),
    .INIT_LUT0(16'b0000000100000000),
    .INIT_LUT1(16'b0000000100000000),
    .MODE("LOGIC"))
    \_al_u195|_al_u196  (
    .a({\U1/Count [12],\U1/Count [0]}),
    .b({\U1/Count [13],\U1/Count [1]}),
    .c({\U1/Count [14],\U1/Count [10]}),
    .d({\U1/Count [15],\U1/Count [11]}),
    .f({_al_u195_o,_al_u196_o}));
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
    \_al_u197|U1/reg0_b22  (
    .a({\U1/Count [2],open_n7305}),
    .b({\U1/Count [20],open_n7306}),
    .c({\U1/Count [21],\U1/n3 [22]}),
    .clk(LCD_CLK_pad),
    .d({\U1/Count [22],\U1/n1 }),
    .sr(nRST_pad),
    .f({_al_u197_o,open_n7324}),
    .q({open_n7328,\U1/Count [22]}));  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D*C*B*A)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(~D*C*B*A)"),
    //.LUTG1("(D*C*B*A)"),
    .INIT_LUTF0(16'b0000000010000000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b0000000010000000),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u199|_al_u198  (
    .a({_al_u195_o,\U1/Count [16]}),
    .b({_al_u196_o,\U1/Count [17]}),
    .c({_al_u197_o,\U1/Count [18]}),
    .d({_al_u198_o,\U1/Count [19]}),
    .f({_al_u199_o,_al_u198_o}));
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
    \_al_u200|U1/reg0_b2  (
    .c({_al_u199_o,\U1/n3 [2]}),
    .clk(LCD_CLK_pad),
    .d({_al_u194_o,\U1/n1 }),
    .sr(nRST_pad),
    .f({\U1/n1 ,open_n7374}),
    .q({open_n7378,\U1/Count [2]}));  // source/CLK_MOD.v(32)
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
    \_al_u201|U2/reg0_b3  (
    .a({\U2/Count [27],open_n7379}),
    .b({\U2/Count [28],open_n7380}),
    .c({\U2/Count [29],\U2/n3 [3]}),
    .clk(clk_pad),
    .d({\U2/Count [3],\U2/n1 }),
    .sr(nRST_pad),
    .f({_al_u201_o,open_n7398}),
    .q({open_n7402,\U2/Count [3]}));  // source/CLK_MOD.v(32)
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
    \_al_u202|U2/reg0_b26  (
    .a({\U2/Count [23],open_n7403}),
    .b({\U2/Count [24],open_n7404}),
    .c({\U2/Count [25],\U2/n3 [26]}),
    .clk(clk_pad),
    .d({\U2/Count [26],\U2/n1 }),
    .sr(nRST_pad),
    .f({_al_u202_o,open_n7422}),
    .q({open_n7426,\U2/Count [26]}));  // source/CLK_MOD.v(32)
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
    \_al_u203|U2/reg0_b9  (
    .a({\U2/Count [6],open_n7427}),
    .b({\U2/Count [7],open_n7428}),
    .c({\U2/Count [8],\U2/n3 [9]}),
    .clk(clk_pad),
    .d({\U2/Count [9],\U2/n1 }),
    .sr(nRST_pad),
    .f({_al_u203_o,open_n7446}),
    .q({open_n7450,\U2/Count [9]}));  // source/CLK_MOD.v(32)
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
    \_al_u204|U2/reg0_b5  (
    .a({\U2/Count [30],open_n7451}),
    .b({\U2/Count [31],open_n7452}),
    .c({\U2/Count [4],\U2/n3 [5]}),
    .clk(clk_pad),
    .d({\U2/Count [5],\U2/n1 }),
    .sr(nRST_pad),
    .f({_al_u204_o,open_n7470}),
    .q({open_n7474,\U2/Count [5]}));  // source/CLK_MOD.v(32)
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
    \_al_u206|_al_u207  (
    .a({\U2/Count [12],\U2/Count [0]}),
    .b({\U2/Count [13],\U2/Count [1]}),
    .c({\U2/Count [14],\U2/Count [10]}),
    .d({\U2/Count [15],\U2/Count [11]}),
    .f({_al_u206_o,_al_u207_o}));
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
    \_al_u208|U2/reg0_b22  (
    .a({\U2/Count [2],open_n7499}),
    .b({\U2/Count [20],open_n7500}),
    .c({\U2/Count [21],\U2/n3 [22]}),
    .clk(clk_pad),
    .d({\U2/Count [22],\U2/n1 }),
    .sr(nRST_pad),
    .f({_al_u208_o,open_n7518}),
    .q({open_n7522,\U2/Count [22]}));  // source/CLK_MOD.v(32)
  EG_PHY_MSLICE #(
    //.LUT0("(D*C*B*~A)"),
    //.LUT1("(D*C*B*A)"),
    .INIT_LUT0(16'b0100000000000000),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"))
    \_al_u210|_al_u209  (
    .a({_al_u206_o,\U2/Count [16]}),
    .b({_al_u207_o,\U2/Count [17]}),
    .c({_al_u208_o,\U2/Count [18]}),
    .d({_al_u209_o,\U2/Count [19]}),
    .f({_al_u210_o,_al_u209_o}));
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
    \_al_u211|U2/reg0_b2  (
    .c({_al_u210_o,\U2/n3 [2]}),
    .clk(clk_pad),
    .d({_al_u205_o,\U2/n1 }),
    .sr(nRST_pad),
    .f({\U2/n1 ,open_n7564}),
    .q({open_n7568,\U2/Count [2]}));  // source/CLK_MOD.v(32)
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
    \_al_u212|D1/reg0_b15  (
    .a({\D1/PixelCount [12],open_n7569}),
    .b({\D1/PixelCount [13],open_n7570}),
    .c({\D1/PixelCount [14],\D1/n4 [15]}),
    .clk(LCD_CLK_pad),
    .d({\D1/PixelCount [15],\D1/mux2_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .f({_al_u212_o,open_n7588}),
    .q({open_n7592,\D1/PixelCount [15]}));  // source/VGAMod.v(56)
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
    \_al_u213|D1/reg0_b1  (
    .a({\D1/PixelCount [0],open_n7593}),
    .b({\D1/PixelCount [1],open_n7594}),
    .c({\D1/PixelCount [10],\D1/n4 [1]}),
    .clk(LCD_CLK_pad),
    .d({\D1/PixelCount [11],\D1/mux2_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .f({_al_u213_o,open_n7612}),
    .q({open_n7616,\D1/PixelCount [1]}));  // source/VGAMod.v(56)
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
    \_al_u214|D1/reg0_b9  (
    .a({\D1/PixelCount [6],open_n7617}),
    .b({\D1/PixelCount [7],open_n7618}),
    .c({\D1/PixelCount [8],\D1/n4 [9]}),
    .clk(LCD_CLK_pad),
    .d({\D1/PixelCount [9],\D1/mux2_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .f({_al_u214_o,open_n7636}),
    .q({open_n7640,\D1/PixelCount [9]}));  // source/VGAMod.v(56)
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
    \_al_u215|D1/reg0_b5  (
    .a({\D1/PixelCount [2],open_n7641}),
    .b({\D1/PixelCount [3],open_n7642}),
    .c({\D1/PixelCount [4],\D1/n4 [5]}),
    .clk(LCD_CLK_pad),
    .d({\D1/PixelCount [5],\D1/mux2_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .f({_al_u215_o,open_n7660}),
    .q({open_n7664,\D1/PixelCount [5]}));  // source/VGAMod.v(56)
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
    \_al_u216|U2/CLK_OUT_reg  (
    .a({_al_u212_o,open_n7665}),
    .b({_al_u213_o,open_n7666}),
    .c({_al_u214_o,open_n7667}),
    .ce(\U2/n1 ),
    .clk(clk_pad),
    .d({_al_u215_o,LED_pad[2]}),
    .sr(nRST_pad),
    .f({_al_u216_o,open_n7684}),
    .q({open_n7688,LED_pad[2]}));  // source/CLK_MOD.v(32)
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
    \_al_u217|D1/reg1_b15  (
    .a({\D1/LineCount [12],open_n7689}),
    .b({\D1/LineCount [13],\D1/n2 [15]}),
    .c({\D1/LineCount [14],\D1/LineCount [15]}),
    .clk(LCD_CLK_pad),
    .d({\D1/LineCount [15],_al_u216_o}),
    .sr(nRST_pad),
    .f({_al_u217_o,open_n7707}),
    .q({open_n7711,\D1/LineCount [15]}));  // source/VGAMod.v(56)
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
    \_al_u219|D1/reg1_b9  (
    .a({\D1/LineCount [6],_al_u216_o}),
    .b({\D1/LineCount [7],_al_u221_o}),
    .c({\D1/LineCount [8],\D1/n2 [9]}),
    .clk(LCD_CLK_pad),
    .d({\D1/LineCount [9],\D1/LineCount [9]}),
    .sr(nRST_pad),
    .f({_al_u219_o,open_n7729}),
    .q({open_n7733,\D1/LineCount [9]}));  // source/VGAMod.v(56)
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
    \_al_u220|D1/reg1_b5  (
    .a({\D1/LineCount [2],_al_u216_o}),
    .b({\D1/LineCount [3],_al_u221_o}),
    .c({\D1/LineCount [4],\D1/n2 [5]}),
    .clk(LCD_CLK_pad),
    .d({\D1/LineCount [5],\D1/LineCount [5]}),
    .sr(nRST_pad),
    .f({_al_u220_o,open_n7751}),
    .q({open_n7755,\D1/LineCount [5]}));  // source/VGAMod.v(56)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D*~C*B*~A)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(~D*~C*B*~A)"),
    //.LUTG1("(D*C*B*A)"),
    .INIT_LUTF0(16'b0000000000000100),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b0000000000000100),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u221|_al_u218  (
    .a({_al_u217_o,\D1/LineCount [0]}),
    .b({_al_u218_o,\D1/LineCount [1]}),
    .c({_al_u219_o,\D1/LineCount [10]}),
    .d({_al_u220_o,\D1/LineCount [11]}),
    .f({_al_u221_o,_al_u218_o}));
  // source/LCDCTRL.v(32)
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
    \_al_u302|U4/reg2_b8  (
    .a({\U4/AddrCtrl [0],\U4/mux2_b0_sel_is_0_o }),
    .b({\U4/AddrCtrl [1],\U4/n2 [8]}),
    .c({\U4/AddrCtrl [7],\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [8],\U4/AddrCtrl [8]}),
    .sr(nRST_pad),
    .f({_al_u302_o,open_n7797}),
    .q({open_n7801,\U4/AddrCtrl [8]}));  // source/LCDCTRL.v(32)
  // source/LCDCTRL.v(32)
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
    \_al_u303|U4/reg2_b15  (
    .a({\U4/AddrCtrl [12],\U4/mux2_b0_sel_is_0_o }),
    .b({\U4/AddrCtrl [13],\U4/n2 [15]}),
    .c({\U4/AddrCtrl [14],\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [15],\U4/AddrCtrl [15]}),
    .sr(nRST_pad),
    .f({_al_u303_o,open_n7819}),
    .q({open_n7823,\U4/AddrCtrl [15]}));  // source/LCDCTRL.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTG0("(C*D)"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTG0(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    _al_u304 (
    .c({open_n7828,_al_u303_o}),
    .d({open_n7831,_al_u302_o}),
    .f({open_n7849,_al_u304_o}));
  // source/LCDCTRL.v(32)
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
    \_al_u305|U4/reg2_b9  (
    .a({\U4/AddrCtrl [4],\U4/mux2_b0_sel_is_0_o }),
    .b({\U4/AddrCtrl [5],\U4/n2 [9]}),
    .c({\U4/AddrCtrl [6],\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [9],\U4/AddrCtrl [9]}),
    .sr(nRST_pad),
    .f({_al_u305_o,open_n7872}),
    .q({open_n7876,\U4/AddrCtrl [9]}));  // source/LCDCTRL.v(32)
  // source/LCDCTRL.v(32)
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
    \_al_u306|U4/reg2_b3  (
    .a({\U4/AddrCtrl [10],\U4/mux2_b0_sel_is_0_o }),
    .b({\U4/AddrCtrl [11],\U4/n2 [3]}),
    .c({\U4/AddrCtrl [2],\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [3],\U4/AddrCtrl [3]}),
    .sr(nRST_pad),
    .f({_al_u306_o,open_n7894}),
    .q({open_n7898,\U4/AddrCtrl [3]}));  // source/LCDCTRL.v(32)
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
    \_al_u324|D1/reg1_b3  (
    .a({open_n7899,_al_u216_o}),
    .b({open_n7900,_al_u221_o}),
    .c({_al_u221_o,\D1/n2 [3]}),
    .clk(LCD_CLK_pad),
    .d({_al_u216_o,\D1/LineCount [3]}),
    .sr(nRST_pad),
    .f({\D1/mux2_b0_sel_is_0_o ,open_n7918}),
    .q({open_n7922,\D1/LineCount [3]}));  // source/VGAMod.v(56)
  // source/LCDCTRL.v(44)
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
    \_al_u342|U4/reg0_b1  (
    .a({\U4/LineConut [0],\U4/n6_lutinv }),
    .b({\U4/LineConut [1],LCD_SYNC_pad}),
    .c({\U4/AddrCtrl [11],\U4/n7 [1]}),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [3],\U4/LineConut [1]}),
    .sr(nRST_pad),
    .f({_al_u342_o,open_n7940}),
    .q({open_n7944,\U4/LineConut [1]}));  // source/LCDCTRL.v(44)
  // source/LCDCTRL.v(44)
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
    \_al_u343|U4/reg0_b7  (
    .a({\U4/LineConut [4],\U4/n6_lutinv }),
    .b({\U4/LineConut [5],LCD_SYNC_pad}),
    .c({\U4/LineConut [6],\U4/n7 [7]}),
    .clk(CLK_100M),
    .d({\U4/LineConut [7],\U4/LineConut [7]}),
    .sr(nRST_pad),
    .f({_al_u343_o,open_n7962}),
    .q({open_n7966,\U4/LineConut [7]}));  // source/LCDCTRL.v(44)
  // source/LCDCTRL.v(44)
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
    \_al_u344|U4/reg0_b3  (
    .a({\U4/LineConut [14],\U4/n6_lutinv }),
    .b({\U4/LineConut [15],LCD_SYNC_pad}),
    .c({\U4/LineConut [2],\U4/n7 [3]}),
    .clk(CLK_100M),
    .d({\U4/LineConut [3],\U4/LineConut [3]}),
    .sr(nRST_pad),
    .f({_al_u344_o,open_n7984}),
    .q({open_n7988,\U4/LineConut [3]}));  // source/LCDCTRL.v(44)
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
    \_al_u345|_al_u341  (
    .a({_al_u341_o,\U4/LineConut [10]}),
    .b({_al_u342_o,\U4/LineConut [11]}),
    .c({_al_u343_o,\U4/LineConut [12]}),
    .d({_al_u344_o,\U4/LineConut [13]}),
    .f({_al_u345_o,_al_u341_o}));
  // source/LCDCTRL.v(32)
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
    \_al_u346|U4/reg2_b6  (
    .a({\U4/AddrCtrl [4],\U4/mux2_b0_sel_is_0_o }),
    .b({\U4/AddrCtrl [5],\U4/n2 [6]}),
    .c({\U4/AddrCtrl [6],\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [9],\U4/AddrCtrl [6]}),
    .sr(nRST_pad),
    .f({_al_u346_o,open_n8030}),
    .q({open_n8034,\U4/AddrCtrl [6]}));  // source/LCDCTRL.v(32)
  // source/LCDCTRL.v(44)
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
    \_al_u347|U4/reg0_b9  (
    .a({\U4/LineConut [8],\U4/n6_lutinv }),
    .b({\U4/LineConut [9],LCD_SYNC_pad}),
    .c({\U4/AddrCtrl [10],\U4/n7 [9]}),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [2],\U4/LineConut [9]}),
    .sr(nRST_pad),
    .f({_al_u347_o,open_n8052}),
    .q({open_n8056,\U4/LineConut [9]}));  // source/LCDCTRL.v(44)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*B*D)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(C*B*D)"),
    //.LUTG1("(D*C*B*A)"),
    .INIT_LUTF0(16'b1100000000000000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b1100000000000000),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u348|_al_u307  (
    .a({_al_u304_o,open_n8057}),
    .b({_al_u345_o,_al_u305_o}),
    .c({_al_u346_o,_al_u306_o}),
    .d({_al_u347_o,_al_u304_o}),
    .f({\U4/n13 ,\U4/n6_lutinv }));
  EG_PHY_MSLICE #(
    //.LUT0("(~D)"),
    //.LUT1("(~D)"),
    .INIT_LUT0(16'b0000000011111111),
    .INIT_LUT1(16'b0000000011111111),
    .MODE("LOGIC"))
    \_al_u363|_al_u361  (
    .d({\FIFO0/logic_fifo_full ,FIFO_EMPTY}),
    .f({\FIFO0/logic_fifo_full_neg ,\D1/n23 }));
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u60 (
    .do({open_n8109,open_n8110,open_n8111,GPIO_pad}),
    .opad(GPIO));  // source/TOP.v(26)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u61 (
    .do({open_n8126,open_n8127,open_n8128,1'b1}),
    .opad(LCDBK));  // source/TOP.v(27)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u62 (
    .do({open_n8143,open_n8144,open_n8145,LCD_B_pad[3]}),
    .opad(LCD_B[7]));  // source/TOP.v(34)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u63 (
    .do({open_n8160,open_n8161,open_n8162,LCD_G_pad[4]}),
    .opad(LCD_B[6]));  // source/TOP.v(34)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u64 (
    .do({open_n8177,open_n8178,open_n8179,LCD_G_pad[3]}),
    .opad(LCD_B[5]));  // source/TOP.v(34)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u65 (
    .do({open_n8194,open_n8195,open_n8196,LCD_G_pad[2]}),
    .opad(LCD_B[4]));  // source/TOP.v(34)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u66 (
    .do({open_n8211,open_n8212,open_n8213,LCD_B_pad[3]}),
    .opad(LCD_B[3]));  // source/TOP.v(34)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u67 (
    .do({open_n8228,open_n8229,open_n8230,LCD_B_pad[2]}),
    .opad(LCD_B[2]));  // source/TOP.v(34)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u68 (
    .do({open_n8245,open_n8246,open_n8247,LCD_B_pad[2]}),
    .opad(LCD_B[1]));  // source/TOP.v(34)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u69 (
    .do({open_n8262,open_n8263,open_n8264,LCD_B_pad[2]}),
    .opad(LCD_B[0]));  // source/TOP.v(34)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u70 (
    .do({open_n8279,open_n8280,open_n8281,LCD_CLK_pad}),
    .opad(LCD_CLK));  // source/TOP.v(28)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u71 (
    .do({open_n8296,open_n8297,open_n8298,GPIO_pad}),
    .opad(LCD_DEN));  // source/TOP.v(31)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u72 (
    .do({open_n8313,open_n8314,open_n8315,LCD_G_pad[7]}),
    .opad(LCD_G[7]));  // source/TOP.v(33)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u73 (
    .do({open_n8330,open_n8331,open_n8332,LCD_G_pad[6]}),
    .opad(LCD_G[6]));  // source/TOP.v(33)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u74 (
    .do({open_n8347,open_n8348,open_n8349,LCD_G_pad[5]}),
    .opad(LCD_G[5]));  // source/TOP.v(33)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u75 (
    .do({open_n8364,open_n8365,open_n8366,LCD_G_pad[4]}),
    .opad(LCD_G[4]));  // source/TOP.v(33)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u76 (
    .do({open_n8381,open_n8382,open_n8383,LCD_G_pad[3]}),
    .opad(LCD_G[3]));  // source/TOP.v(33)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u77 (
    .do({open_n8398,open_n8399,open_n8400,LCD_G_pad[2]}),
    .opad(LCD_G[2]));  // source/TOP.v(33)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u78 (
    .do({open_n8415,open_n8416,open_n8417,LCD_B_pad[2]}),
    .opad(LCD_G[1]));  // source/TOP.v(33)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u79 (
    .do({open_n8432,open_n8433,open_n8434,LCD_B_pad[2]}),
    .opad(LCD_G[0]));  // source/TOP.v(33)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u80 (
    .do({open_n8449,open_n8450,open_n8451,LCD_HYNC_pad}),
    .opad(LCD_HYNC));  // source/TOP.v(29)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u81 (
    .do({open_n8466,open_n8467,open_n8468,LCD_R_pad[3]}),
    .opad(LCD_R[7]));  // source/TOP.v(32)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u82 (
    .do({open_n8483,open_n8484,open_n8485,LCD_R_pad[6]}),
    .opad(LCD_R[6]));  // source/TOP.v(32)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u83 (
    .do({open_n8500,open_n8501,open_n8502,LCD_R_pad[5]}),
    .opad(LCD_R[5]));  // source/TOP.v(32)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u84 (
    .do({open_n8517,open_n8518,open_n8519,LCD_R_pad[4]}),
    .opad(LCD_R[4]));  // source/TOP.v(32)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u85 (
    .do({open_n8534,open_n8535,open_n8536,LCD_R_pad[3]}),
    .opad(LCD_R[3]));  // source/TOP.v(32)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u86 (
    .do({open_n8551,open_n8552,open_n8553,1'b1}),
    .opad(LCD_R[2]));  // source/TOP.v(32)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u87 (
    .do({open_n8568,open_n8569,open_n8570,1'b1}),
    .opad(LCD_R[1]));  // source/TOP.v(32)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u88 (
    .do({open_n8585,open_n8586,open_n8587,1'b1}),
    .opad(LCD_R[0]));  // source/TOP.v(32)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u89 (
    .do({open_n8602,open_n8603,open_n8604,LCD_SYNC_pad}),
    .opad(LCD_SYNC));  // source/TOP.v(30)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u90 (
    .do({open_n8619,open_n8620,open_n8621,LED_pad[2]}),
    .opad(LED[2]));  // source/TOP.v(24)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u91 (
    .do({open_n8636,open_n8637,open_n8638,LED_pad[1]}),
    .opad(LED[1]));  // source/TOP.v(24)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u92 (
    .do({open_n8653,open_n8654,open_n8655,1'b1}),
    .opad(LED[0]));  // source/TOP.v(24)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u93 (
    .ipad(clk),
    .di(clk_pad));  // source/TOP.v(21)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u94 (
    .ipad(nRST),
    .di(nRST_pad));  // source/TOP.v(22)
  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();

endmodule 

