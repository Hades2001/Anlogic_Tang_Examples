// Verilog netlist created by TD v4.4.433
// Mon Jun 17 11:49:15 2019

`timescale 1ns / 1ps
module TOP  // source/TOP.v(1)
  (
  CSI_D,
  CSI_HREF,
  CSI_PCLK,
  CSI_VSYNC,
  clk,
  nRST,
  CSI_PWDN,
  CSI_RST,
  CSI_SOIC,
  CSI_XCLK,
  LCDBK,
  LCD_B,
  LCD_CLK,
  LCD_DEN,
  LCD_G,
  LCD_HYNC,
  LCD_R,
  LCD_SYNC,
  LED,
  CSI_SOID,
  GPIO
  );

  input [7:0] CSI_D;  // source/TOP.v(17)
  input CSI_HREF;  // source/TOP.v(11)
  input CSI_PCLK;  // source/TOP.v(9)
  input CSI_VSYNC;  // source/TOP.v(12)
  input clk;  // source/TOP.v(3)
  input nRST;  // source/TOP.v(4)
  output CSI_PWDN;  // source/TOP.v(13)
  output CSI_RST;  // source/TOP.v(14)
  output CSI_SOIC;  // source/TOP.v(15)
  output CSI_XCLK;  // source/TOP.v(10)
  output LCDBK;  // source/TOP.v(19)
  output LCD_B;  // source/TOP.v(26)
  output LCD_CLK;  // source/TOP.v(20)
  output LCD_DEN;  // source/TOP.v(23)
  output LCD_G;  // source/TOP.v(25)
  output LCD_HYNC;  // source/TOP.v(21)
  output LCD_R;  // source/TOP.v(24)
  output LCD_SYNC;  // source/TOP.v(22)
  output [2:0] LED;  // source/TOP.v(6)
  inout CSI_SOID;  // source/TOP.v(16)
  inout GPIO;  // source/TOP.v(7)

  wire [15:0] \D1/LineCount ;  // source/VGAMod.v(26)
  wire [15:0] \D1/PixelCount ;  // source/VGAMod.v(25)
  wire [15:0] \D1/n2 ;
  wire [15:0] \D1/n4 ;
  wire [7:0] FIFO_DI;  // source/TOP.v(57)
  wire [2:0] LED_pad;  // source/TOP.v(6)
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
  wire CLK_100M;  // source/TOP.v(35)
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
  wire FIFO_EMPTY;  // source/TOP.v(54)
  wire FIFO_RE;  // source/TOP.v(52)
  wire FIFO_RST;  // source/TOP.v(49)
  wire FIFO_WE;  // source/TOP.v(53)
  wire GPIO_pad;  // source/TOP.v(7)
  wire LCD_B_pad;  // source/TOP.v(26)
  wire LCD_CLK_pad;  // source/TOP.v(20)
  wire LCD_HYNC_pad;  // source/TOP.v(21)
  wire LCD_SYNC_pad;  // source/TOP.v(22)
  wire \PLL1/clk0_buf ;  // al_ip/LCDPLL.v(39)
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
  wire \U4/ROM0/inst_doa_i1_000 ;
  wire \U4/ROM0/inst_doa_i1_001 ;
  wire \U4/ROM0/inst_doa_i1_002 ;
  wire \U4/ROM0/inst_doa_i1_003 ;
  wire \U4/ROM0/inst_doa_i2_000 ;
  wire \U4/ROM0/inst_doa_i2_001 ;
  wire \U4/ROM0/inst_doa_i2_002 ;
  wire \U4/ROM0/inst_doa_i2_003 ;
  wire \U4/ROM0/inst_doa_i3_000 ;
  wire \U4/ROM0/inst_doa_i3_001 ;
  wire \U4/ROM0/inst_doa_i3_002 ;
  wire \U4/ROM0/inst_doa_i3_003 ;
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
  wire _al_u168_o;
  wire _al_u170_o;
  wire _al_u171_o;
  wire _al_u172_o;
  wire _al_u174_o;
  wire _al_u175_o;
  wire _al_u177_o;
  wire _al_u178_o;
  wire _al_u180_o;
  wire _al_u181_o;
  wire _al_u183_o;
  wire _al_u184_o;
  wire _al_u185_o;
  wire _al_u186_o;
  wire _al_u187_o;
  wire _al_u188_o;
  wire _al_u189_o;
  wire _al_u190_o;
  wire _al_u191_o;
  wire _al_u192_o;
  wire _al_u194_o;
  wire _al_u195_o;
  wire _al_u196_o;
  wire _al_u197_o;
  wire _al_u198_o;
  wire _al_u199_o;
  wire _al_u200_o;
  wire _al_u201_o;
  wire _al_u202_o;
  wire _al_u203_o;
  wire _al_u205_o;
  wire _al_u206_o;
  wire _al_u207_o;
  wire _al_u208_o;
  wire _al_u209_o;
  wire _al_u210_o;
  wire _al_u211_o;
  wire _al_u212_o;
  wire _al_u213_o;
  wire _al_u214_o;
  wire _al_u295_o;
  wire _al_u296_o;
  wire _al_u297_o;
  wire _al_u298_o;
  wire _al_u299_o;
  wire _al_u334_o;
  wire _al_u335_o;
  wire _al_u336_o;
  wire _al_u337_o;
  wire _al_u338_o;
  wire _al_u339_o;
  wire _al_u340_o;
  wire clk_pad;  // source/TOP.v(3)
  wire nRST_pad;  // source/TOP.v(4)

  EG_PHY_LSLICE #(
    //.MACRO("D1/add0/ucin_al_u379"),
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
    \D1/add0/u11_al_u382  (
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
    //.MACRO("D1/add0/ucin_al_u379"),
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
    \D1/add0/u15_al_u383  (
    .a({open_n18,\D1/LineCount [15]}),
    .c(2'b00),
    .d({open_n23,1'b0}),
    .fci(\D1/add0/c15 ),
    .f({open_n40,\D1/n2 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("D1/add0/ucin_al_u379"),
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
    \D1/add0/u3_al_u380  (
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
    //.MACRO("D1/add0/ucin_al_u379"),
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
    \D1/add0/u7_al_u381  (
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
    //.MACRO("D1/add0/ucin_al_u379"),
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
    \D1/add0/ucin_al_u379  (
    .a({\D1/LineCount [1],1'b0}),
    .b({\D1/LineCount [2],\D1/LineCount [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\D1/n2 [1],open_n99}),
    .fco(\D1/add0/c3 ),
    .fx({\D1/n2 [2],\D1/n2 [0]}));
  EG_PHY_LSLICE #(
    //.MACRO("D1/add1/ucin_al_u384"),
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
    \D1/add1/u11_al_u387  (
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
    //.MACRO("D1/add1/ucin_al_u384"),
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
    \D1/add1/u15_al_u388  (
    .a({open_n120,\D1/PixelCount [15]}),
    .c(2'b00),
    .d({open_n125,1'b0}),
    .fci(\D1/add1/c15 ),
    .f({open_n142,\D1/n4 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("D1/add1/ucin_al_u384"),
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
    \D1/add1/u3_al_u385  (
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
    //.MACRO("D1/add1/ucin_al_u384"),
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
    \D1/add1/u7_al_u386  (
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
    //.MACRO("D1/add1/ucin_al_u384"),
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
    \D1/add1/ucin_al_u384  (
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
    .d({_al_u209_o,_al_u209_o}),
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
    .d({_al_u209_o,_al_u209_o}),
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
    .d({_al_u209_o,_al_u209_o}),
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
    .d({_al_u209_o,_al_u209_o}),
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
    .d({_al_u209_o,_al_u209_o}),
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
    .a({_al_u209_o,_al_u209_o}),
    .b({_al_u214_o,_al_u214_o}),
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
    .empty_flag(FIFO_EMPTY),
    .full_flag(\FIFO0/logic_fifo_full ));
  EG_PHY_GCLK \PLL1/bufg_feedback  (
    .clki(\PLL1/clk0_buf ),
    .clko(LCD_CLK_pad));  // al_ip/LCDPLL.v(41)
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
    .CLKC3_CPHASE(55),
    .CLKC3_DIV(56),
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
    .clkc({open_n2716,open_n2717,open_n2718,CLK_100M,\PLL1/clk0_buf }));  // al_ip/LCDPLL.v(76)
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
    .d({open_n2735,LED_pad[1]}),
    .sr(nRST_pad),
    .q({open_n2757,LED_pad[1]}));  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u361"),
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
    \U1/add0/u11_al_u364  (
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
    //.MACRO("U1/add0/ucin_al_u361"),
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
    \U1/add0/u15_al_u365  (
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
    //.MACRO("U1/add0/ucin_al_u361"),
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
    \U1/add0/u19_al_u366  (
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
    //.MACRO("U1/add0/ucin_al_u361"),
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
    \U1/add0/u23_al_u367  (
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
    //.MACRO("U1/add0/ucin_al_u361"),
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
    \U1/add0/u27_al_u368  (
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
    //.MACRO("U1/add0/ucin_al_u361"),
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
    \U1/add0/u31_al_u369  (
    .a({open_n2848,\U1/Count [31]}),
    .c(2'b00),
    .d({open_n2853,1'b0}),
    .fci(\U1/add0/c31 ),
    .f({open_n2870,\U1/n3 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u361"),
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
    \U1/add0/u3_al_u362  (
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
    //.MACRO("U1/add0/ucin_al_u361"),
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
    \U1/add0/u7_al_u363  (
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
    //.MACRO("U1/add0/ucin_al_u361"),
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
    \U1/add0/ucin_al_u361  (
    .a({\U1/Count [1],1'b0}),
    .b({\U1/Count [2],\U1/Count [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U1/n3 [1],open_n2929}),
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
    //.MACRO("U2/add0/ucin_al_u370"),
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
    \U2/add0/u11_al_u373  (
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
    //.MACRO("U2/add0/ucin_al_u370"),
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
    \U2/add0/u15_al_u374  (
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
    //.MACRO("U2/add0/ucin_al_u370"),
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
    \U2/add0/u19_al_u375  (
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
    //.MACRO("U2/add0/ucin_al_u370"),
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
    \U2/add0/u23_al_u376  (
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
    //.MACRO("U2/add0/ucin_al_u370"),
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
    \U2/add0/u27_al_u377  (
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
    //.MACRO("U2/add0/ucin_al_u370"),
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
    \U2/add0/u31_al_u378  (
    .a({open_n3360,\U2/Count [31]}),
    .c(2'b00),
    .d({open_n3365,1'b0}),
    .fci(\U2/add0/c31 ),
    .f({open_n3382,\U2/n3 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u370"),
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
    \U2/add0/u3_al_u371  (
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
    //.MACRO("U2/add0/ucin_al_u370"),
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
    \U2/add0/u7_al_u372  (
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
    //.MACRO("U2/add0/ucin_al_u370"),
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
    \U2/add0/ucin_al_u370  (
    .a({\U2/Count [1],1'b0}),
    .b({\U2/Count [2],\U2/Count [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U2/n3 [1],open_n3441}),
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
    .a({\U4/Addr_piped [0],open_n3782}),
    .b({\U4/Addr_piped [1],open_n3783}),
    .c({\U4/ROM0/inst_doa_i0_000 ,open_n3784}),
    .clk(CLK_100M),
    .d({\U4/ROM0/inst_doa_i1_000 ,nRST_pad}),
    .mi(\U4/Addr [14:13]),
    .sr(\D1/n0 ),
    .f({_al_u181_o,\D1/n0 }),
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
    .csa({open_n3819,\U4/Addr [14:13]}),
    .dia({open_n3823,open_n3824,open_n3825,open_n3826,open_n3827,open_n3828,open_n3829,1'b0,open_n3830}),
    .rsta(nRST_pad),
    .doa({open_n3845,open_n3846,open_n3847,open_n3848,open_n3849,open_n3850,open_n3851,open_n3852,\U4/ROM0/inst_doa_i0_000 }));
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
    .csa({open_n3878,\U4/Addr [14:13]}),
    .dia({open_n3882,open_n3883,open_n3884,open_n3885,open_n3886,open_n3887,open_n3888,1'b0,open_n3889}),
    .rsta(nRST_pad),
    .doa({open_n3904,open_n3905,open_n3906,open_n3907,open_n3908,open_n3909,open_n3910,open_n3911,\U4/ROM0/inst_doa_i0_001 }));
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
    .csa({open_n3937,\U4/Addr [14:13]}),
    .dia({open_n3941,open_n3942,open_n3943,open_n3944,open_n3945,open_n3946,open_n3947,1'b0,open_n3948}),
    .rsta(nRST_pad),
    .doa({open_n3963,open_n3964,open_n3965,open_n3966,open_n3967,open_n3968,open_n3969,open_n3970,\U4/ROM0/inst_doa_i0_002 }));
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
    .csa({open_n3996,\U4/Addr [14:13]}),
    .dia({open_n4000,open_n4001,open_n4002,open_n4003,open_n4004,open_n4005,open_n4006,1'b0,open_n4007}),
    .rsta(nRST_pad),
    .doa({open_n4022,open_n4023,open_n4024,open_n4025,open_n4026,open_n4027,open_n4028,open_n4029,\U4/ROM0/inst_doa_i0_003 }));
  // address_offset=8192;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0008"),
    //.WID("0x0008"),
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
    .csa({open_n4055,\U4/Addr [14:13]}),
    .dia({open_n4059,open_n4060,open_n4061,open_n4062,open_n4063,open_n4064,open_n4065,1'b0,open_n4066}),
    .rsta(nRST_pad),
    .doa({open_n4081,open_n4082,open_n4083,open_n4084,open_n4085,open_n4086,open_n4087,open_n4088,\U4/ROM0/inst_doa_i1_000 }));
  // address_offset=8192;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0009"),
    //.WID("0x0009"),
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
    .csa({open_n4114,\U4/Addr [14:13]}),
    .dia({open_n4118,open_n4119,open_n4120,open_n4121,open_n4122,open_n4123,open_n4124,1'b0,open_n4125}),
    .rsta(nRST_pad),
    .doa({open_n4140,open_n4141,open_n4142,open_n4143,open_n4144,open_n4145,open_n4146,open_n4147,\U4/ROM0/inst_doa_i1_001 }));
  // address_offset=8192;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x000A"),
    //.WID("0x000A"),
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
    .csa({open_n4173,\U4/Addr [14:13]}),
    .dia({open_n4177,open_n4178,open_n4179,open_n4180,open_n4181,open_n4182,open_n4183,1'b0,open_n4184}),
    .rsta(nRST_pad),
    .doa({open_n4199,open_n4200,open_n4201,open_n4202,open_n4203,open_n4204,open_n4205,open_n4206,\U4/ROM0/inst_doa_i1_002 }));
  // address_offset=8192;data_offset=3;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x000B"),
    //.WID("0x000B"),
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
    .csa({open_n4232,\U4/Addr [14:13]}),
    .dia({open_n4236,open_n4237,open_n4238,open_n4239,open_n4240,open_n4241,open_n4242,1'b0,open_n4243}),
    .rsta(nRST_pad),
    .doa({open_n4258,open_n4259,open_n4260,open_n4261,open_n4262,open_n4263,open_n4264,open_n4265,\U4/ROM0/inst_doa_i1_003 }));
  // address_offset=16384;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x000C"),
    //.WID("0x000C"),
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
    .csa({open_n4291,\U4/Addr [14:13]}),
    .dia({open_n4295,open_n4296,open_n4297,open_n4298,open_n4299,open_n4300,open_n4301,1'b0,open_n4302}),
    .rsta(nRST_pad),
    .doa({open_n4317,open_n4318,open_n4319,open_n4320,open_n4321,open_n4322,open_n4323,open_n4324,\U4/ROM0/inst_doa_i2_000 }));
  // address_offset=16384;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x000D"),
    //.WID("0x000D"),
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
    .csa({open_n4350,\U4/Addr [14:13]}),
    .dia({open_n4354,open_n4355,open_n4356,open_n4357,open_n4358,open_n4359,open_n4360,1'b0,open_n4361}),
    .rsta(nRST_pad),
    .doa({open_n4376,open_n4377,open_n4378,open_n4379,open_n4380,open_n4381,open_n4382,open_n4383,\U4/ROM0/inst_doa_i2_001 }));
  // address_offset=16384;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x000E"),
    //.WID("0x000E"),
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
    .csa({open_n4409,\U4/Addr [14:13]}),
    .dia({open_n4413,open_n4414,open_n4415,open_n4416,open_n4417,open_n4418,open_n4419,1'b0,open_n4420}),
    .rsta(nRST_pad),
    .doa({open_n4435,open_n4436,open_n4437,open_n4438,open_n4439,open_n4440,open_n4441,open_n4442,\U4/ROM0/inst_doa_i2_002 }));
  // address_offset=16384;data_offset=3;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x000F"),
    //.WID("0x000F"),
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
    .csa({open_n4468,\U4/Addr [14:13]}),
    .dia({open_n4472,open_n4473,open_n4474,open_n4475,open_n4476,open_n4477,open_n4478,1'b0,open_n4479}),
    .rsta(nRST_pad),
    .doa({open_n4494,open_n4495,open_n4496,open_n4497,open_n4498,open_n4499,open_n4500,open_n4501,\U4/ROM0/inst_doa_i2_003 }));
  // address_offset=24576;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0010"),
    //.WID("0x0010"),
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
    .csa({open_n4527,\U4/Addr [14:13]}),
    .dia({open_n4531,open_n4532,open_n4533,open_n4534,open_n4535,open_n4536,open_n4537,1'b0,open_n4538}),
    .rsta(nRST_pad),
    .doa({open_n4553,open_n4554,open_n4555,open_n4556,open_n4557,open_n4558,open_n4559,open_n4560,\U4/ROM0/inst_doa_i3_000 }));
  // address_offset=24576;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0011"),
    //.WID("0x0011"),
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
    .csa({open_n4586,\U4/Addr [14:13]}),
    .dia({open_n4590,open_n4591,open_n4592,open_n4593,open_n4594,open_n4595,open_n4596,1'b0,open_n4597}),
    .rsta(nRST_pad),
    .doa({open_n4612,open_n4613,open_n4614,open_n4615,open_n4616,open_n4617,open_n4618,open_n4619,\U4/ROM0/inst_doa_i3_001 }));
  // address_offset=24576;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0012"),
    //.WID("0x0012"),
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
    .csa({open_n4645,\U4/Addr [14:13]}),
    .dia({open_n4649,open_n4650,open_n4651,open_n4652,open_n4653,open_n4654,open_n4655,1'b0,open_n4656}),
    .rsta(nRST_pad),
    .doa({open_n4671,open_n4672,open_n4673,open_n4674,open_n4675,open_n4676,open_n4677,open_n4678,\U4/ROM0/inst_doa_i3_002 }));
  // address_offset=24576;data_offset=3;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0013"),
    //.WID("0x0013"),
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
    .csa({open_n4704,\U4/Addr [14:13]}),
    .dia({open_n4708,open_n4709,open_n4710,open_n4711,open_n4712,open_n4713,open_n4714,1'b0,open_n4715}),
    .rsta(nRST_pad),
    .doa({open_n4730,open_n4731,open_n4732,open_n4733,open_n4734,open_n4735,open_n4736,open_n4737,\U4/ROM0/inst_doa_i3_003 }));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add0/ucin_al_u389"),
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
    \U4/add0/u11_al_u392  (
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
    //.MACRO("U4/add0/ucin_al_u389"),
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
    \U4/add0/u15_al_u393  (
    .a({open_n4765,\U4/AddrCtrl [15]}),
    .c(2'b00),
    .d({open_n4770,1'b0}),
    .fci(\U4/add0/c15 ),
    .f({open_n4787,\U4/n2 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add0/ucin_al_u389"),
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
    \U4/add0/u3_al_u390  (
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
    //.MACRO("U4/add0/ucin_al_u389"),
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
    \U4/add0/u7_al_u391  (
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
    //.MACRO("U4/add0/ucin_al_u389"),
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
    \U4/add0/ucin_al_u389  (
    .a({\U4/AddrCtrl [1],1'b0}),
    .b({\U4/AddrCtrl [2],\U4/AddrCtrl [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U4/n2 [1],open_n4846}),
    .fco(\U4/add0/c3 ),
    .fx({\U4/n2 [2],\U4/n2 [0]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add1/ucin_al_u394"),
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
    \U4/add1/u11_al_u397  (
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
    //.MACRO("U4/add1/ucin_al_u394"),
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
    \U4/add1/u15_al_u398  (
    .a({open_n4867,\U4/LineConut [15]}),
    .c(2'b00),
    .d({open_n4872,1'b0}),
    .fci(\U4/add1/c15 ),
    .f({open_n4889,\U4/n7 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add1/ucin_al_u394"),
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
    \U4/add1/u3_al_u395  (
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
    //.MACRO("U4/add1/ucin_al_u394"),
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
    \U4/add1/u7_al_u396  (
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
    //.MACRO("U4/add1/ucin_al_u394"),
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
    \U4/add1/ucin_al_u394  (
    .a({\U4/LineConut [1],1'b0}),
    .b({\U4/LineConut [2],\U4/LineConut [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U4/n7 [1],open_n4948}),
    .fco(\U4/add1/c3 ),
    .fx({\U4/n7 [2],\U4/n7 [0]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add2/ucin_al_u403"),
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
    \U4/add2/u11_al_u406  (
    .a({open_n4951,\U4/Count [15]}),
    .c(2'b00),
    .d({open_n4956,1'b0}),
    .fci(\U4/add2/c11 ),
    .f({open_n4973,\U4/n14 [11]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add2/ucin_al_u403"),
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
    \U4/add2/u3_al_u404  (
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
    //.MACRO("U4/add2/ucin_al_u403"),
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
    \U4/add2/u7_al_u405  (
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
    //.MACRO("U4/add2/ucin_al_u403"),
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
    \U4/add2/ucin_al_u403  (
    .a({\U4/Count [5],1'b0}),
    .b({\U4/Count [6],\U4/Count [4]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U4/n14 [1],open_n5032}),
    .fco(\U4/add2/c3 ),
    .fx({\U4/n14 [2],\U4/n14 [0]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add3/ucin_al_u411"),
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
    \U4/add3/u3_al_u412  (
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
    //.MACRO("U4/add3/ucin_al_u411"),
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
    \U4/add3/u7_al_u413  (
    .a({open_n5053,\U4/XPos [15]}),
    .c(2'b00),
    .d({open_n5058,1'b0}),
    .fci(\U4/add3/c7 ),
    .f({open_n5075,\U4/n20 [7]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add3/ucin_al_u411"),
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
    \U4/add3/ucin_al_u411  (
    .a({\U4/XPos [9],1'b0}),
    .b({\U4/XPos [10],\U4/XPos [8]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U4/n20 [1],open_n5098}),
    .fco(\U4/add3/c3 ),
    .fx({\U4/n20 [2],\U4/n20 [0]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add4/ucin_al_u399"),
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
    \U4/add4/u11_al_u402  (
    .a({\U4/Addr [13],\U4/Addr [11]}),
    .b({\U4/Addr [14],\U4/Addr [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add4/c11 ),
    .f({\U4/n23 [13],\U4/n23 [11]}),
    .fx({\U4/n23 [14],\U4/n23 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add4/ucin_al_u399"),
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
    \U4/add4/u3_al_u400  (
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
    //.MACRO("U4/add4/ucin_al_u399"),
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
    \U4/add4/u7_al_u401  (
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
    //.MACRO("U4/add4/ucin_al_u399"),
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
    \U4/add4/ucin_al_u399  (
    .a({\U4/Addr [1],1'b0}),
    .b({\U4/Addr [2],\U4/Addr [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U4/n23 [1],open_n5173}),
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
    .b({1'b0,open_n5176}),
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
    .f({\U4/n1 ,open_n5388}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_0|U4/lt1_cin  (
    .a(2'b01),
    .b({\U4/Count [4],open_n5394}),
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
    .f({\U4/n10 ,open_n5558}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_0|U4/lt2_cin  (
    .a(2'b01),
    .b({\U4/Count [4],open_n5564}),
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
    .f({\U4/XPos [2],open_n5728}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt3_0|U4/lt3_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt3_0|U4/lt3_cin  (
    .a(2'b01),
    .b({\U4/AddrCtrl [0],open_n5734}),
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
    .f({\U4/n19 ,open_n5946}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt4_0|U4/lt4_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt4_0|U4/lt4_cin  (
    .a({\U4/AddrCtrl [0],1'b0}),
    .b({1'b0,open_n5952}),
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
    .f({\U4/n21 ,open_n6164}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt5_0|U4/lt5_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt5_0|U4/lt5_cin  (
    .a({\U4/AddrCtrl [0],1'b0}),
    .b({1'b0,open_n6170}),
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
    .f({\U4/n26 ,open_n6382}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt6_0|U4/lt6_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt6_0|U4/lt6_cin  (
    .a({\U4/LineConut [0],1'b0}),
    .b({1'b1,open_n6388}),
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
    .f({\U4/n30 ,open_n6600}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt7_0|U4/lt7_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt7_0|U4/lt7_cin  (
    .a(2'b11),
    .b({\U4/LineConut [0],open_n6606}),
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
    .f({\U4/n32 ,open_n6818}));
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
    //.MACRO("U4/sub0/ucin_al_u407"),
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
    \U4/sub0/u11_al_u410  (
    .a({open_n7220,1'b0}),
    .c(2'b11),
    .d({open_n7225,\U4/Count [15]}),
    .fci(\U4/sub0/c11 ),
    .f({open_n7242,\U4/n18 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/sub0/ucin_al_u407"),
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
    \U4/sub0/u3_al_u408  (
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
    //.MACRO("U4/sub0/ucin_al_u407"),
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
    \U4/sub0/u7_al_u409  (
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
    //.MACRO("U4/sub0/ucin_al_u407"),
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
    \U4/sub0/ucin_al_u407  (
    .a(2'b01),
    .b(2'b00),
    .c(2'b11),
    .d({\U4/Count [5],1'b1}),
    .e({\U4/Count [6],\U4/Count [4]}),
    .f({\U4/n18 [5],open_n7301}),
    .fco(\U4/sub0/c3 ),
    .fx({\U4/n18 [6],\U4/n18 [4]}));
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
    \_al_u120|U4/reg3_b4  (
    .a({open_n7304,\U4/n13 }),
    .b({\U4/Count [4],\U4/n14 [0]}),
    .c({\U4/n18 [4],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [4]}),
    .sr(nRST_pad),
    .f({\U4/XPos [4],open_n7322}),
    .q({open_n7326,\U4/Count [4]}));  // source/LCDCTRL.v(60)
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
    \_al_u121|U4/reg3_b5  (
    .a({open_n7327,\U4/n13 }),
    .b({\U4/Count [5],\U4/n14 [1]}),
    .c({\U4/n18 [5],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [5]}),
    .sr(nRST_pad),
    .f({\U4/XPos [5],open_n7345}),
    .q({open_n7349,\U4/Count [5]}));  // source/LCDCTRL.v(60)
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
    \_al_u122|U4/reg3_b14  (
    .a({open_n7350,\U4/n13 }),
    .b({\U4/Count [14],\U4/n14 [10]}),
    .c({\U4/n18 [14],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [14]}),
    .sr(nRST_pad),
    .f({\U4/XPos [14],open_n7368}),
    .q({open_n7372,\U4/Count [14]}));  // source/LCDCTRL.v(60)
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
    \_al_u123|U4/reg3_b15  (
    .a({open_n7373,\U4/n13 }),
    .b({\U4/Count [15],\U4/n14 [11]}),
    .c({\U4/n18 [15],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [15]}),
    .sr(nRST_pad),
    .f({\U4/XPos [15],open_n7391}),
    .q({open_n7395,\U4/Count [15]}));  // source/LCDCTRL.v(60)
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
    \_al_u124|U4/reg3_b6  (
    .a({open_n7396,\U4/n13 }),
    .b({\U4/Count [6],\U4/n14 [2]}),
    .c({\U4/n18 [6],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [6]}),
    .sr(nRST_pad),
    .f({\U4/XPos [6],open_n7414}),
    .q({open_n7418,\U4/Count [6]}));  // source/LCDCTRL.v(60)
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
    \_al_u125|U4/reg3_b7  (
    .a({open_n7419,\U4/n13 }),
    .b({\U4/Count [7],\U4/n14 [3]}),
    .c({\U4/n18 [7],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [7]}),
    .sr(nRST_pad),
    .f({\U4/XPos [7],open_n7437}),
    .q({open_n7441,\U4/Count [7]}));  // source/LCDCTRL.v(60)
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
    \_al_u126|U4/reg3_b8  (
    .a({open_n7442,\U4/n13 }),
    .b({\U4/Count [8],\U4/n14 [4]}),
    .c({\U4/n18 [8],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [8]}),
    .sr(nRST_pad),
    .f({\U4/XPos [8],open_n7460}),
    .q({open_n7464,\U4/Count [8]}));  // source/LCDCTRL.v(60)
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
    \_al_u127|U4/reg3_b9  (
    .a({open_n7465,\U4/n13 }),
    .b({\U4/Count [9],\U4/n14 [5]}),
    .c({\U4/n18 [9],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [9]}),
    .sr(nRST_pad),
    .f({\U4/XPos [9],open_n7483}),
    .q({open_n7487,\U4/Count [9]}));  // source/LCDCTRL.v(60)
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
    \_al_u128|U4/reg3_b10  (
    .a({open_n7488,\U4/n13 }),
    .b({\U4/Count [10],\U4/n14 [6]}),
    .c({\U4/n18 [10],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [10]}),
    .sr(nRST_pad),
    .f({\U4/XPos [10],open_n7506}),
    .q({open_n7510,\U4/Count [10]}));  // source/LCDCTRL.v(60)
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
    \_al_u129|U4/reg3_b11  (
    .a({open_n7511,\U4/n13 }),
    .b({\U4/Count [11],\U4/n14 [7]}),
    .c({\U4/n18 [11],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [11]}),
    .sr(nRST_pad),
    .f({\U4/XPos [11],open_n7529}),
    .q({open_n7533,\U4/Count [11]}));  // source/LCDCTRL.v(60)
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
    \_al_u130|U4/reg3_b12  (
    .a({open_n7534,\U4/n13 }),
    .b({\U4/Count [12],\U4/n14 [8]}),
    .c({\U4/n18 [12],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [12]}),
    .sr(nRST_pad),
    .f({\U4/XPos [12],open_n7552}),
    .q({open_n7556,\U4/Count [12]}));  // source/LCDCTRL.v(60)
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
    \_al_u131|U4/reg3_b13  (
    .a({open_n7557,\U4/n13 }),
    .b({\U4/Count [13],\U4/n14 [9]}),
    .c({\U4/n18 [13],\U4/n10 }),
    .clk(CLK_100M),
    .d({\U4/XPos [2],\U4/Count [13]}),
    .sr(nRST_pad),
    .f({\U4/XPos [13],open_n7575}),
    .q({open_n7579,\U4/Count [13]}));  // source/LCDCTRL.v(60)
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
    \_al_u132|_al_u133  (
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
    \_al_u134|U4/reg2_b1  (
    .a({open_n7608,\U4/mux2_b0_sel_is_0_o }),
    .b({open_n7609,\U4/n2 [1]}),
    .c({\U4/n26 ,\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/mux2_b0_sel_is_0_o ,\U4/AddrCtrl [1]}),
    .sr(nRST_pad),
    .f({FIFO_WE,open_n7627}),
    .q({open_n7631,\U4/AddrCtrl [1]}));  // source/LCDCTRL.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(D*C*B*A)"),
    //.LUTF1("(C*B*D)"),
    //.LUTG0("(D*C*B*A)"),
    //.LUTG1("(C*B*D)"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b1100000000000000),
    .INIT_LUTG0(16'b1000000000000000),
    .INIT_LUTG1(16'b1100000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u169|_al_u151  (
    .a({open_n7632,\D1/n12 }),
    .b({\D1/n15 ,\D1/n13 }),
    .c({\D1/n17 ,\D1/n15 }),
    .d({_al_u168_o,\D1/n17 }),
    .f({FIFO_RE,GPIO_pad}));
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
    \_al_u170|U4/reg1_b4  (
    .a({open_n7657,\U4/n22 }),
    .b({\U4/n30 ,LCD_SYNC_pad}),
    .c({\U4/n32 ,\U4/n23 [4]}),
    .clk(CLK_100M),
    .d({\U4/n22 ,\U4/Addr [4]}),
    .sr(nRST_pad),
    .f({_al_u170_o,open_n7675}),
    .q({open_n7679,\U4/Addr [4]}));  // source/LCDCTRL.v(74)
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
    \_al_u171|_al_u177  (
    .a({\U4/Addr_piped [0],\U4/Addr_piped [0]}),
    .b({\U4/Addr_piped [1],\U4/Addr_piped [1]}),
    .c({\U4/ROM0/inst_doa_i2_003 ,\U4/ROM0/inst_doa_i2_001 }),
    .d({\U4/ROM0/inst_doa_i3_003 ,\U4/ROM0/inst_doa_i3_001 }),
    .f({_al_u171_o,_al_u177_o}));
  EG_PHY_MSLICE #(
    //.LUT0("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUT1("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    .INIT_LUT0(16'b0000010010001100),
    .INIT_LUT1(16'b0000000100100011),
    .MODE("LOGIC"))
    \_al_u172|_al_u174  (
    .a({\U4/Addr_piped [0],\U4/Addr_piped [0]}),
    .b({\U4/Addr_piped [1],\U4/Addr_piped [1]}),
    .c({\U4/ROM0/inst_doa_i0_003 ,\U4/ROM0/inst_doa_i2_002 }),
    .d({\U4/ROM0/inst_doa_i1_003 ,\U4/ROM0/inst_doa_i3_002 }),
    .f({_al_u172_o,_al_u174_o}));
  EG_PHY_MSLICE #(
    //.LUT0("(C*D)"),
    //.LUT1("~(D*~(~C*~B))"),
    .INIT_LUT0(16'b1111000000000000),
    .INIT_LUT1(16'b0000001111111111),
    .MODE("LOGIC"))
    \_al_u173|_al_u152  (
    .b({_al_u171_o,open_n7726}),
    .c({_al_u172_o,\U4/n21 }),
    .d({_al_u170_o,\U4/n19 }),
    .f({FIFO_DI[3],\U4/n22 }));
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
    \_al_u176|_al_u175  (
    .a({open_n7747,\U4/Addr_piped [0]}),
    .b({_al_u174_o,\U4/Addr_piped [1]}),
    .c({_al_u175_o,\U4/ROM0/inst_doa_i0_002 }),
    .d({_al_u170_o,\U4/ROM0/inst_doa_i1_002 }),
    .f({FIFO_DI[2],_al_u175_o}));
  EG_PHY_MSLICE #(
    //.LUT0("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUT1("~(D*~(~C*~B))"),
    .INIT_LUT0(16'b0000000100100011),
    .INIT_LUT1(16'b0000001111111111),
    .MODE("LOGIC"))
    \_al_u179|_al_u178  (
    .a({open_n7772,\U4/Addr_piped [0]}),
    .b({_al_u177_o,\U4/Addr_piped [1]}),
    .c({_al_u178_o,\U4/ROM0/inst_doa_i0_001 }),
    .d({_al_u170_o,\U4/ROM0/inst_doa_i1_001 }),
    .f({FIFO_DI[1],_al_u178_o}));
  EG_PHY_MSLICE #(
    //.LUT0("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUT1("~(D*~(~C*~B))"),
    .INIT_LUT0(16'b0000010010001100),
    .INIT_LUT1(16'b0000001111111111),
    .MODE("LOGIC"))
    \_al_u182|_al_u180  (
    .a({open_n7793,\U4/Addr_piped [0]}),
    .b({_al_u180_o,\U4/Addr_piped [1]}),
    .c({_al_u181_o,\U4/ROM0/inst_doa_i2_000 }),
    .d({_al_u170_o,\U4/ROM0/inst_doa_i3_000 }),
    .f({FIFO_DI[0],_al_u180_o}));
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
    \_al_u183|U1/reg0_b3  (
    .a({\U1/Count [27],open_n7814}),
    .b({\U1/Count [28],open_n7815}),
    .c({\U1/Count [29],\U1/n3 [3]}),
    .clk(LCD_CLK_pad),
    .d({\U1/Count [3],\U1/n1 }),
    .sr(nRST_pad),
    .f({_al_u183_o,open_n7833}),
    .q({open_n7837,\U1/Count [3]}));  // source/CLK_MOD.v(32)
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
    \_al_u184|U1/reg0_b26  (
    .a({\U1/Count [23],open_n7838}),
    .b({\U1/Count [24],open_n7839}),
    .c({\U1/Count [25],\U1/n3 [26]}),
    .clk(LCD_CLK_pad),
    .d({\U1/Count [26],\U1/n1 }),
    .sr(nRST_pad),
    .f({_al_u184_o,open_n7857}),
    .q({open_n7861,\U1/Count [26]}));  // source/CLK_MOD.v(32)
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
    \_al_u185|U1/reg0_b9  (
    .a({\U1/Count [6],open_n7862}),
    .b({\U1/Count [7],open_n7863}),
    .c({\U1/Count [8],\U1/n3 [9]}),
    .clk(LCD_CLK_pad),
    .d({\U1/Count [9],\U1/n1 }),
    .sr(nRST_pad),
    .f({_al_u185_o,open_n7881}),
    .q({open_n7885,\U1/Count [9]}));  // source/CLK_MOD.v(32)
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
    \_al_u186|U1/reg0_b5  (
    .a({\U1/Count [30],open_n7886}),
    .b({\U1/Count [31],open_n7887}),
    .c({\U1/Count [4],\U1/n3 [5]}),
    .clk(LCD_CLK_pad),
    .d({\U1/Count [5],\U1/n1 }),
    .sr(nRST_pad),
    .f({_al_u186_o,open_n7905}),
    .q({open_n7909,\U1/Count [5]}));  // source/CLK_MOD.v(32)
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
    \_al_u187|_al_u198  (
    .a({_al_u183_o,_al_u194_o}),
    .b({_al_u184_o,_al_u195_o}),
    .c({_al_u185_o,_al_u196_o}),
    .d({_al_u186_o,_al_u197_o}),
    .f({_al_u187_o,_al_u198_o}));
  EG_PHY_MSLICE #(
    //.LUT0("(D*~C*~B*~A)"),
    //.LUT1("(D*~C*~B*~A)"),
    .INIT_LUT0(16'b0000000100000000),
    .INIT_LUT1(16'b0000000100000000),
    .MODE("LOGIC"))
    \_al_u188|_al_u189  (
    .a({\U1/Count [12],\U1/Count [0]}),
    .b({\U1/Count [13],\U1/Count [1]}),
    .c({\U1/Count [14],\U1/Count [10]}),
    .d({\U1/Count [15],\U1/Count [11]}),
    .f({_al_u188_o,_al_u189_o}));
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
    \_al_u190|U1/reg0_b22  (
    .a({\U1/Count [2],open_n7954}),
    .b({\U1/Count [20],open_n7955}),
    .c({\U1/Count [21],\U1/n3 [22]}),
    .clk(LCD_CLK_pad),
    .d({\U1/Count [22],\U1/n1 }),
    .sr(nRST_pad),
    .f({_al_u190_o,open_n7973}),
    .q({open_n7977,\U1/Count [22]}));  // source/CLK_MOD.v(32)
  EG_PHY_MSLICE #(
    //.LUT0("(~D*C*B*A)"),
    //.LUT1("(D*C*B*A)"),
    .INIT_LUT0(16'b0000000010000000),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"))
    \_al_u192|_al_u191  (
    .a({_al_u188_o,\U1/Count [16]}),
    .b({_al_u189_o,\U1/Count [17]}),
    .c({_al_u190_o,\U1/Count [18]}),
    .d({_al_u191_o,\U1/Count [19]}),
    .f({_al_u192_o,_al_u191_o}));
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
    \_al_u193|U1/reg0_b2  (
    .c({_al_u192_o,\U1/n3 [2]}),
    .clk(LCD_CLK_pad),
    .d({_al_u187_o,\U1/n1 }),
    .sr(nRST_pad),
    .f({\U1/n1 ,open_n8019}),
    .q({open_n8023,\U1/Count [2]}));  // source/CLK_MOD.v(32)
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
    \_al_u194|U2/reg0_b3  (
    .a({\U2/Count [27],open_n8024}),
    .b({\U2/Count [28],open_n8025}),
    .c({\U2/Count [29],\U2/n3 [3]}),
    .clk(clk_pad),
    .d({\U2/Count [3],\U2/n1 }),
    .sr(nRST_pad),
    .f({_al_u194_o,open_n8043}),
    .q({open_n8047,\U2/Count [3]}));  // source/CLK_MOD.v(32)
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
    \_al_u195|U2/reg0_b26  (
    .a({\U2/Count [23],open_n8048}),
    .b({\U2/Count [24],open_n8049}),
    .c({\U2/Count [25],\U2/n3 [26]}),
    .clk(clk_pad),
    .d({\U2/Count [26],\U2/n1 }),
    .sr(nRST_pad),
    .f({_al_u195_o,open_n8067}),
    .q({open_n8071,\U2/Count [26]}));  // source/CLK_MOD.v(32)
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
    \_al_u196|U2/reg0_b9  (
    .a({\U2/Count [6],open_n8072}),
    .b({\U2/Count [7],open_n8073}),
    .c({\U2/Count [8],\U2/n3 [9]}),
    .clk(clk_pad),
    .d({\U2/Count [9],\U2/n1 }),
    .sr(nRST_pad),
    .f({_al_u196_o,open_n8091}),
    .q({open_n8095,\U2/Count [9]}));  // source/CLK_MOD.v(32)
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
    \_al_u197|U2/reg0_b5  (
    .a({\U2/Count [30],open_n8096}),
    .b({\U2/Count [31],open_n8097}),
    .c({\U2/Count [4],\U2/n3 [5]}),
    .clk(clk_pad),
    .d({\U2/Count [5],\U2/n1 }),
    .sr(nRST_pad),
    .f({_al_u197_o,open_n8115}),
    .q({open_n8119,\U2/Count [5]}));  // source/CLK_MOD.v(32)
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
    \_al_u199|_al_u200  (
    .a({\U2/Count [12],\U2/Count [0]}),
    .b({\U2/Count [13],\U2/Count [1]}),
    .c({\U2/Count [14],\U2/Count [10]}),
    .d({\U2/Count [15],\U2/Count [11]}),
    .f({_al_u199_o,_al_u200_o}));
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
    \_al_u201|U2/reg0_b22  (
    .a({\U2/Count [2],open_n8144}),
    .b({\U2/Count [20],open_n8145}),
    .c({\U2/Count [21],\U2/n3 [22]}),
    .clk(clk_pad),
    .d({\U2/Count [22],\U2/n1 }),
    .sr(nRST_pad),
    .f({_al_u201_o,open_n8163}),
    .q({open_n8167,\U2/Count [22]}));  // source/CLK_MOD.v(32)
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
    \_al_u203|_al_u202  (
    .a({_al_u199_o,\U2/Count [16]}),
    .b({_al_u200_o,\U2/Count [17]}),
    .c({_al_u201_o,\U2/Count [18]}),
    .d({_al_u202_o,\U2/Count [19]}),
    .f({_al_u203_o,_al_u202_o}));
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
    \_al_u204|U2/reg0_b2  (
    .c({_al_u203_o,\U2/n3 [2]}),
    .clk(clk_pad),
    .d({_al_u198_o,\U2/n1 }),
    .sr(nRST_pad),
    .f({\U2/n1 ,open_n8213}),
    .q({open_n8217,\U2/Count [2]}));  // source/CLK_MOD.v(32)
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
    \_al_u205|D1/reg0_b15  (
    .a({\D1/PixelCount [12],open_n8218}),
    .b({\D1/PixelCount [13],open_n8219}),
    .c({\D1/PixelCount [14],\D1/n4 [15]}),
    .clk(LCD_CLK_pad),
    .d({\D1/PixelCount [15],\D1/mux2_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .f({_al_u205_o,open_n8237}),
    .q({open_n8241,\D1/PixelCount [15]}));  // source/VGAMod.v(56)
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
    \_al_u206|D1/reg0_b1  (
    .a({\D1/PixelCount [0],open_n8242}),
    .b({\D1/PixelCount [1],open_n8243}),
    .c({\D1/PixelCount [10],\D1/n4 [1]}),
    .clk(LCD_CLK_pad),
    .d({\D1/PixelCount [11],\D1/mux2_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .f({_al_u206_o,open_n8261}),
    .q({open_n8265,\D1/PixelCount [1]}));  // source/VGAMod.v(56)
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
    \_al_u207|D1/reg0_b9  (
    .a({\D1/PixelCount [6],open_n8266}),
    .b({\D1/PixelCount [7],open_n8267}),
    .c({\D1/PixelCount [8],\D1/n4 [9]}),
    .clk(LCD_CLK_pad),
    .d({\D1/PixelCount [9],\D1/mux2_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .f({_al_u207_o,open_n8285}),
    .q({open_n8289,\D1/PixelCount [9]}));  // source/VGAMod.v(56)
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
    \_al_u208|D1/reg0_b5  (
    .a({\D1/PixelCount [2],open_n8290}),
    .b({\D1/PixelCount [3],open_n8291}),
    .c({\D1/PixelCount [4],\D1/n4 [5]}),
    .clk(LCD_CLK_pad),
    .d({\D1/PixelCount [5],\D1/mux2_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .f({_al_u208_o,open_n8309}),
    .q({open_n8313,\D1/PixelCount [5]}));  // source/VGAMod.v(56)
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
    \_al_u209|U2/CLK_OUT_reg  (
    .a({_al_u205_o,open_n8314}),
    .b({_al_u206_o,open_n8315}),
    .c({_al_u207_o,open_n8316}),
    .ce(\U2/n1 ),
    .clk(clk_pad),
    .d({_al_u208_o,LED_pad[2]}),
    .sr(nRST_pad),
    .f({_al_u209_o,open_n8333}),
    .q({open_n8337,LED_pad[2]}));  // source/CLK_MOD.v(32)
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
    \_al_u210|D1/reg1_b15  (
    .a({\D1/LineCount [12],open_n8338}),
    .b({\D1/LineCount [13],\D1/n2 [15]}),
    .c({\D1/LineCount [14],\D1/LineCount [15]}),
    .clk(LCD_CLK_pad),
    .d({\D1/LineCount [15],_al_u209_o}),
    .sr(nRST_pad),
    .f({_al_u210_o,open_n8356}),
    .q({open_n8360,\D1/LineCount [15]}));  // source/VGAMod.v(56)
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
    \_al_u212|D1/reg1_b9  (
    .a({\D1/LineCount [6],_al_u209_o}),
    .b({\D1/LineCount [7],_al_u214_o}),
    .c({\D1/LineCount [8],\D1/n2 [9]}),
    .clk(LCD_CLK_pad),
    .d({\D1/LineCount [9],\D1/LineCount [9]}),
    .sr(nRST_pad),
    .f({_al_u212_o,open_n8378}),
    .q({open_n8382,\D1/LineCount [9]}));  // source/VGAMod.v(56)
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
    \_al_u213|D1/reg1_b5  (
    .a({\D1/LineCount [2],_al_u209_o}),
    .b({\D1/LineCount [3],_al_u214_o}),
    .c({\D1/LineCount [4],\D1/n2 [5]}),
    .clk(LCD_CLK_pad),
    .d({\D1/LineCount [5],\D1/LineCount [5]}),
    .sr(nRST_pad),
    .f({_al_u213_o,open_n8400}),
    .q({open_n8404,\D1/LineCount [5]}));  // source/VGAMod.v(56)
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
    \_al_u214|_al_u211  (
    .a({_al_u210_o,\D1/LineCount [0]}),
    .b({_al_u211_o,\D1/LineCount [1]}),
    .c({_al_u212_o,\D1/LineCount [10]}),
    .d({_al_u213_o,\D1/LineCount [11]}),
    .f({_al_u214_o,_al_u211_o}));
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
    \_al_u295|U4/reg2_b8  (
    .a({\U4/AddrCtrl [0],\U4/mux2_b0_sel_is_0_o }),
    .b({\U4/AddrCtrl [1],\U4/n2 [8]}),
    .c({\U4/AddrCtrl [7],\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [8],\U4/AddrCtrl [8]}),
    .sr(nRST_pad),
    .f({_al_u295_o,open_n8446}),
    .q({open_n8450,\U4/AddrCtrl [8]}));  // source/LCDCTRL.v(32)
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
    \_al_u296|U4/reg2_b15  (
    .a({\U4/AddrCtrl [12],\U4/mux2_b0_sel_is_0_o }),
    .b({\U4/AddrCtrl [13],\U4/n2 [15]}),
    .c({\U4/AddrCtrl [14],\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [15],\U4/AddrCtrl [15]}),
    .sr(nRST_pad),
    .f({_al_u296_o,open_n8468}),
    .q({open_n8472,\U4/AddrCtrl [15]}));  // source/LCDCTRL.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*D)"),
    //.LUTG0("(C*D)"),
    .INIT_LUTF0(16'b1111000000000000),
    .INIT_LUTG0(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    _al_u297 (
    .c({open_n8477,_al_u296_o}),
    .d({open_n8480,_al_u295_o}),
    .f({open_n8498,_al_u297_o}));
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
    \_al_u298|U4/reg2_b9  (
    .a({\U4/AddrCtrl [4],\U4/mux2_b0_sel_is_0_o }),
    .b({\U4/AddrCtrl [5],\U4/n2 [9]}),
    .c({\U4/AddrCtrl [6],\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [9],\U4/AddrCtrl [9]}),
    .sr(nRST_pad),
    .f({_al_u298_o,open_n8521}),
    .q({open_n8525,\U4/AddrCtrl [9]}));  // source/LCDCTRL.v(32)
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
    \_al_u299|U4/reg2_b3  (
    .a({\U4/AddrCtrl [10],\U4/mux2_b0_sel_is_0_o }),
    .b({\U4/AddrCtrl [11],\U4/n2 [3]}),
    .c({\U4/AddrCtrl [2],\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [3],\U4/AddrCtrl [3]}),
    .sr(nRST_pad),
    .f({_al_u299_o,open_n8543}),
    .q({open_n8547,\U4/AddrCtrl [3]}));  // source/LCDCTRL.v(32)
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
    \_al_u317|D1/reg1_b3  (
    .a({open_n8548,_al_u209_o}),
    .b({open_n8549,_al_u214_o}),
    .c({_al_u214_o,\D1/n2 [3]}),
    .clk(LCD_CLK_pad),
    .d({_al_u209_o,\D1/LineCount [3]}),
    .sr(nRST_pad),
    .f({\D1/mux2_b0_sel_is_0_o ,open_n8567}),
    .q({open_n8571,\D1/LineCount [3]}));  // source/VGAMod.v(56)
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
    \_al_u335|U4/reg0_b1  (
    .a({\U4/LineConut [0],\U4/n6_lutinv }),
    .b({\U4/LineConut [1],LCD_SYNC_pad}),
    .c({\U4/AddrCtrl [11],\U4/n7 [1]}),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [3],\U4/LineConut [1]}),
    .sr(nRST_pad),
    .f({_al_u335_o,open_n8589}),
    .q({open_n8593,\U4/LineConut [1]}));  // source/LCDCTRL.v(44)
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
    \_al_u336|U4/reg0_b7  (
    .a({\U4/LineConut [4],\U4/n6_lutinv }),
    .b({\U4/LineConut [5],LCD_SYNC_pad}),
    .c({\U4/LineConut [6],\U4/n7 [7]}),
    .clk(CLK_100M),
    .d({\U4/LineConut [7],\U4/LineConut [7]}),
    .sr(nRST_pad),
    .f({_al_u336_o,open_n8611}),
    .q({open_n8615,\U4/LineConut [7]}));  // source/LCDCTRL.v(44)
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
    \_al_u337|U4/reg0_b3  (
    .a({\U4/LineConut [14],\U4/n6_lutinv }),
    .b({\U4/LineConut [15],LCD_SYNC_pad}),
    .c({\U4/LineConut [2],\U4/n7 [3]}),
    .clk(CLK_100M),
    .d({\U4/LineConut [3],\U4/LineConut [3]}),
    .sr(nRST_pad),
    .f({_al_u337_o,open_n8633}),
    .q({open_n8637,\U4/LineConut [3]}));  // source/LCDCTRL.v(44)
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
    \_al_u338|_al_u334  (
    .a({_al_u334_o,\U4/LineConut [10]}),
    .b({_al_u335_o,\U4/LineConut [11]}),
    .c({_al_u336_o,\U4/LineConut [12]}),
    .d({_al_u337_o,\U4/LineConut [13]}),
    .f({_al_u338_o,_al_u334_o}));
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
    \_al_u339|U4/reg2_b6  (
    .a({\U4/AddrCtrl [4],\U4/mux2_b0_sel_is_0_o }),
    .b({\U4/AddrCtrl [5],\U4/n2 [6]}),
    .c({\U4/AddrCtrl [6],\U4/n1 }),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [9],\U4/AddrCtrl [6]}),
    .sr(nRST_pad),
    .f({_al_u339_o,open_n8679}),
    .q({open_n8683,\U4/AddrCtrl [6]}));  // source/LCDCTRL.v(32)
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
    \_al_u340|U4/reg0_b9  (
    .a({\U4/LineConut [8],\U4/n6_lutinv }),
    .b({\U4/LineConut [9],LCD_SYNC_pad}),
    .c({\U4/AddrCtrl [10],\U4/n7 [9]}),
    .clk(CLK_100M),
    .d({\U4/AddrCtrl [2],\U4/LineConut [9]}),
    .sr(nRST_pad),
    .f({_al_u340_o,open_n8701}),
    .q({open_n8705,\U4/LineConut [9]}));  // source/LCDCTRL.v(44)
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
    \_al_u341|_al_u300  (
    .a({_al_u297_o,open_n8706}),
    .b({_al_u338_o,_al_u298_o}),
    .c({_al_u339_o,_al_u299_o}),
    .d({_al_u340_o,_al_u297_o}),
    .f({\U4/n13 ,\U4/n6_lutinv }));
  EG_PHY_MSLICE #(
    //.LUT0("(~C*B*D)"),
    //.LUT1("(~D)"),
    .INIT_LUT0(16'b0000110000000000),
    .INIT_LUT1(16'b0000000011111111),
    .MODE("LOGIC"))
    \_al_u354|_al_u168  (
    .b({open_n8733,\D1/n21 }),
    .c({open_n8734,FIFO_EMPTY}),
    .d({FIFO_EMPTY,\D1/n19 }),
    .f({\D1/n23 ,_al_u168_o}));
  EG_PHY_MSLICE #(
    //.LUT0("(~D)"),
    //.LUT1("(~D)"),
    .INIT_LUT0(16'b0000000011111111),
    .INIT_LUT1(16'b0000000011111111),
    .MODE("LOGIC"))
    \_al_u356|_al_u355  (
    .d({\FIFO0/logic_fifo_full ,FIFO_EMPTY}),
    .f({\FIFO0/logic_fifo_full_neg ,LCD_B_pad}));
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u60 (
    .ipad(CSI_D[7]));  // source/TOP.v(17)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u61 (
    .ipad(CSI_D[6]));  // source/TOP.v(17)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u62 (
    .ipad(CSI_D[5]));  // source/TOP.v(17)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u63 (
    .ipad(CSI_D[4]));  // source/TOP.v(17)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u64 (
    .ipad(CSI_D[3]));  // source/TOP.v(17)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u65 (
    .ipad(CSI_D[2]));  // source/TOP.v(17)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u66 (
    .ipad(CSI_D[1]));  // source/TOP.v(17)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u67 (
    .ipad(CSI_D[0]));  // source/TOP.v(17)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u68 (
    .ipad(CSI_HREF));  // source/TOP.v(11)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u69 (
    .ipad(CSI_PCLK));  // source/TOP.v(9)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u70 (
    .do({open_n8962,open_n8963,open_n8964,1'b0}),
    .opad(CSI_PWDN));  // source/TOP.v(13)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u71 (
    .do({open_n8979,open_n8980,open_n8981,1'b0}),
    .opad(CSI_RST));  // source/TOP.v(14)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u72 (
    .do({open_n8996,open_n8997,open_n8998,1'b0}),
    .opad(CSI_SOIC));  // source/TOP.v(15)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("1"))
    _al_u73 (
    .bpad(CSI_SOID));  // source/TOP.v(16)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u74 (
    .ipad(CSI_VSYNC));  // source/TOP.v(12)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u75 (
    .do({open_n9049,open_n9050,open_n9051,1'b0}),
    .opad(CSI_XCLK));  // source/TOP.v(10)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("BI"),
    .TSMUX("0"))
    _al_u76 (
    .do({open_n9066,open_n9067,open_n9068,GPIO_pad}),
    .bpad(GPIO));  // source/TOP.v(7)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u77 (
    .do({open_n9083,open_n9084,open_n9085,1'b1}),
    .opad(LCDBK));  // source/TOP.v(19)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u78 (
    .do({open_n9100,open_n9101,open_n9102,LCD_B_pad}),
    .opad(LCD_B));  // source/TOP.v(26)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u79 (
    .do({open_n9117,open_n9118,open_n9119,LCD_CLK_pad}),
    .opad(LCD_CLK));  // source/TOP.v(20)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u80 (
    .do({open_n9134,open_n9135,open_n9136,GPIO_pad}),
    .opad(LCD_DEN));  // source/TOP.v(23)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u81 (
    .do({open_n9151,open_n9152,open_n9153,LCD_B_pad}),
    .opad(LCD_G));  // source/TOP.v(25)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u82 (
    .do({open_n9168,open_n9169,open_n9170,LCD_HYNC_pad}),
    .opad(LCD_HYNC));  // source/TOP.v(21)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u83 (
    .do({open_n9185,open_n9186,open_n9187,1'b1}),
    .opad(LCD_R));  // source/TOP.v(24)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u84 (
    .do({open_n9202,open_n9203,open_n9204,LCD_SYNC_pad}),
    .opad(LCD_SYNC));  // source/TOP.v(22)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u85 (
    .do({open_n9219,open_n9220,open_n9221,LED_pad[2]}),
    .opad(LED[2]));  // source/TOP.v(6)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u86 (
    .do({open_n9236,open_n9237,open_n9238,LED_pad[1]}),
    .opad(LED[1]));  // source/TOP.v(6)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u87 (
    .do({open_n9253,open_n9254,open_n9255,1'b1}),
    .opad(LED[0]));  // source/TOP.v(6)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u88 (
    .ipad(clk),
    .di(clk_pad));  // source/TOP.v(3)
  EG_PHY_PAD #(
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u89 (
    .ipad(nRST),
    .di(nRST_pad));  // source/TOP.v(4)
  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();

endmodule 

