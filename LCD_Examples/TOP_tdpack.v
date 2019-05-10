// Verilog netlist created by TD v4.4.433
// Fri May 10 10:47:33 2019

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
  wire [15:0] \U4/n1 ;
  wire [14:0] \U4/n5 ;
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
  wire \D1/lt10_c1 ;
  wire \D1/lt10_c11 ;
  wire \D1/lt10_c13 ;
  wire \D1/lt10_c15 ;
  wire \D1/lt10_c3 ;
  wire \D1/lt10_c5 ;
  wire \D1/lt10_c7 ;
  wire \D1/lt10_c9 ;
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
  wire \D1/n0 ;
  wire \D1/n10 ;
  wire \D1/n12 ;
  wire \D1/n13 ;
  wire \D1/n15 ;
  wire \D1/n16 ;
  wire \D1/n18 ;
  wire \D1/n20 ;
  wire \D1/n21 ;
  wire \D1/n22 ;
  wire \D1/n24 ;
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
  wire \U4/add1/c3 ;
  wire \U4/add1/c7 ;
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
  wire \U4/lt1_c13 ;
  wire \U4/lt1_c15 ;
  wire \U4/lt1_c3 ;
  wire \U4/lt1_c5 ;
  wire \U4/lt1_c7 ;
  wire \U4/lt1_c9 ;
  wire \U4/lt2_c1 ;
  wire \U4/lt2_c11 ;
  wire \U4/lt2_c13 ;
  wire \U4/lt2_c15 ;
  wire \U4/lt2_c3 ;
  wire \U4/lt2_c5 ;
  wire \U4/lt2_c7 ;
  wire \U4/lt2_c9 ;
  wire \U4/mux1_b0_sel_is_0_o ;
  wire \U4/n12 ;
  wire \U4/n4 ;
  wire \U4/n8 ;
  wire _al_u178_o;
  wire _al_u179_o;
  wire _al_u181_o;
  wire _al_u182_o;
  wire _al_u184_o;
  wire _al_u185_o;
  wire _al_u187_o;
  wire _al_u188_o;
  wire _al_u190_o;
  wire _al_u191_o;
  wire _al_u193_o;
  wire _al_u194_o;
  wire _al_u196_o;
  wire _al_u197_o;
  wire _al_u199_o;
  wire _al_u200_o;
  wire _al_u202_o;
  wire _al_u203_o;
  wire _al_u204_o;
  wire _al_u205_o;
  wire _al_u206_o;
  wire _al_u207_o;
  wire _al_u208_o;
  wire _al_u209_o;
  wire _al_u210_o;
  wire _al_u211_o;
  wire _al_u213_o;
  wire _al_u214_o;
  wire _al_u215_o;
  wire _al_u216_o;
  wire _al_u217_o;
  wire _al_u218_o;
  wire _al_u219_o;
  wire _al_u220_o;
  wire _al_u221_o;
  wire _al_u222_o;
  wire _al_u224_o;
  wire _al_u225_o;
  wire _al_u226_o;
  wire _al_u227_o;
  wire _al_u228_o;
  wire _al_u229_o;
  wire _al_u230_o;
  wire _al_u231_o;
  wire _al_u232_o;
  wire _al_u233_o;
  wire clk_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(21)
  wire nRST_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(22)

  EG_PHY_LSLICE #(
    //.MACRO("D1/add0/ucin_al_u354"),
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
    \D1/add0/u11_al_u357  (
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
    //.MACRO("D1/add0/ucin_al_u354"),
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
    \D1/add0/u15_al_u358  (
    .a({open_n18,\D1/LineCount [15]}),
    .c(2'b00),
    .d({open_n23,1'b0}),
    .fci(\D1/add0/c15 ),
    .f({open_n40,\D1/n2 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("D1/add0/ucin_al_u354"),
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
    \D1/add0/u3_al_u355  (
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
    //.MACRO("D1/add0/ucin_al_u354"),
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
    \D1/add0/u7_al_u356  (
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
    //.MACRO("D1/add0/ucin_al_u354"),
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
    \D1/add0/ucin_al_u354  (
    .a({\D1/LineCount [1],1'b0}),
    .b({\D1/LineCount [2],\D1/LineCount [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\D1/n2 [1],open_n99}),
    .fco(\D1/add0/c3 ),
    .fx({\D1/n2 [2],\D1/n2 [0]}));
  EG_PHY_LSLICE #(
    //.MACRO("D1/add1/ucin_al_u359"),
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
    \D1/add1/u11_al_u362  (
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
    //.MACRO("D1/add1/ucin_al_u359"),
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
    \D1/add1/u15_al_u363  (
    .a({open_n120,\D1/PixelCount [15]}),
    .c(2'b00),
    .d({open_n125,1'b0}),
    .fci(\D1/add1/c15 ),
    .f({open_n142,\D1/n4 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("D1/add1/ucin_al_u359"),
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
    \D1/add1/u3_al_u360  (
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
    //.MACRO("D1/add1/ucin_al_u359"),
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
    \D1/add1/u7_al_u361  (
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
    //.MACRO("D1/add1/ucin_al_u359"),
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
    \D1/add1/ucin_al_u359  (
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
    //.MACRO("D1/lt10_0|D1/lt10_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt10_0|D1/lt10_cin  (
    .a({\D1/PixelCount [0],1'b1}),
    .b({1'b1,open_n422}),
    .fco(\D1/lt10_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt10_0|D1/lt10_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt10_10|D1/lt10_9  (
    .a(\D1/PixelCount [10:9]),
    .b(2'b10),
    .fci(\D1/lt10_c9 ),
    .fco(\D1/lt10_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt10_0|D1/lt10_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt10_12|D1/lt10_11  (
    .a(\D1/PixelCount [12:11]),
    .b(2'b00),
    .fci(\D1/lt10_c11 ),
    .fco(\D1/lt10_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt10_0|D1/lt10_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt10_14|D1/lt10_13  (
    .a(\D1/PixelCount [14:13]),
    .b(2'b00),
    .fci(\D1/lt10_c13 ),
    .fco(\D1/lt10_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt10_0|D1/lt10_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt10_2|D1/lt10_1  (
    .a(\D1/PixelCount [2:1]),
    .b(2'b00),
    .fci(\D1/lt10_c1 ),
    .fco(\D1/lt10_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt10_0|D1/lt10_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt10_4|D1/lt10_3  (
    .a(\D1/PixelCount [4:3]),
    .b(2'b00),
    .fci(\D1/lt10_c3 ),
    .fco(\D1/lt10_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt10_0|D1/lt10_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt10_6|D1/lt10_5  (
    .a(\D1/PixelCount [6:5]),
    .b(2'b01),
    .fci(\D1/lt10_c5 ),
    .fco(\D1/lt10_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt10_0|D1/lt10_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt10_8|D1/lt10_7  (
    .a(\D1/PixelCount [8:7]),
    .b(2'b00),
    .fci(\D1/lt10_c7 ),
    .fco(\D1/lt10_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt10_0|D1/lt10_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt10_cout|D1/lt10_15  (
    .a({1'b0,\D1/PixelCount [15]}),
    .b(2'b10),
    .fci(\D1/lt10_c15 ),
    .f({\D1/n22 ,open_n634}));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt1_0|D1/lt1_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt1_0|D1/lt1_cin  (
    .a({\D1/PixelCount [0],1'b0}),
    .b({1'b1,open_n640}),
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
    .f({\D1/n10 ,open_n852}));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt2_0|D1/lt2_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt2_0|D1/lt2_cin  (
    .a(2'b11),
    .b({\D1/LineCount [0],open_n858}),
    .fco(\D1/lt2_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt2_0|D1/lt2_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt2_10|D1/lt2_9  (
    .a(2'b00),
    .b(\D1/LineCount [10:9]),
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
    .a(2'b00),
    .b(\D1/LineCount [12:11]),
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
    .a(2'b00),
    .b(\D1/LineCount [14:13]),
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
    .a(2'b10),
    .b(\D1/LineCount [2:1]),
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
    .a(2'b00),
    .b(\D1/LineCount [4:3]),
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
    .a(2'b00),
    .b(\D1/LineCount [6:5]),
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
    .a(2'b00),
    .b(\D1/LineCount [8:7]),
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
    .a(2'b00),
    .b({1'b1,\D1/LineCount [15]}),
    .fci(\D1/lt2_c15 ),
    .f({\D1/n12 ,open_n1070}));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt3_0|D1/lt3_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt3_0|D1/lt3_cin  (
    .a({\D1/LineCount [0],1'b0}),
    .b({1'b1,open_n1076}),
    .fco(\D1/lt3_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt3_0|D1/lt3_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt3_10|D1/lt3_9  (
    .a(\D1/LineCount [10:9]),
    .b(2'b01),
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
    .a(\D1/LineCount [12:11]),
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
    .a(\D1/LineCount [14:13]),
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
    .a(\D1/LineCount [2:1]),
    .b(2'b00),
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
    .a(\D1/LineCount [4:3]),
    .b(2'b11),
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
    .a(\D1/LineCount [6:5]),
    .b(2'b01),
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
    .a(\D1/LineCount [8:7]),
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
    .a({1'b0,\D1/LineCount [15]}),
    .b(2'b10),
    .fci(\D1/lt3_c15 ),
    .f({\D1/n13 ,open_n1288}));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt4_0|D1/lt4_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt4_0|D1/lt4_cin  (
    .a({\D1/PixelCount [0],1'b0}),
    .b({1'b0,open_n1294}),
    .fco(\D1/lt4_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt4_0|D1/lt4_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt4_10|D1/lt4_9  (
    .a(\D1/PixelCount [10:9]),
    .b(2'b00),
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
    .a(\D1/PixelCount [12:11]),
    .b(2'b00),
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
    .a(\D1/PixelCount [14:13]),
    .b(2'b00),
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
    .a(\D1/PixelCount [2:1]),
    .b(2'b10),
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
    .a(\D1/PixelCount [4:3]),
    .b(2'b10),
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
    .a(\D1/PixelCount [6:5]),
    .b(2'b00),
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
    .a(\D1/PixelCount [8:7]),
    .b(2'b00),
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
    .a({1'b0,\D1/PixelCount [15]}),
    .b(2'b10),
    .fci(\D1/lt4_c15 ),
    .f({FIFO_RST,open_n1506}));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt5_0|D1/lt5_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt5_0|D1/lt5_cin  (
    .a(2'b01),
    .b({\D1/PixelCount [0],open_n1512}),
    .fco(\D1/lt5_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt5_0|D1/lt5_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt5_10|D1/lt5_9  (
    .a(2'b00),
    .b(\D1/PixelCount [10:9]),
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
    .a(2'b00),
    .b(\D1/PixelCount [12:11]),
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
    .a(2'b00),
    .b(\D1/PixelCount [14:13]),
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
    .a(2'b00),
    .b(\D1/PixelCount [2:1]),
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
    .a(2'b00),
    .b(\D1/PixelCount [4:3]),
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
    .a(2'b00),
    .b(\D1/PixelCount [6:5]),
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
    .a(2'b10),
    .b(\D1/PixelCount [8:7]),
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
    .a(2'b00),
    .b({1'b1,\D1/PixelCount [15]}),
    .fci(\D1/lt5_c15 ),
    .f({\D1/n15 ,open_n1724}));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt6_0|D1/lt6_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt6_0|D1/lt6_cin  (
    .a({\D1/PixelCount [0],1'b1}),
    .b({1'b0,open_n1730}),
    .fco(\D1/lt6_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt6_0|D1/lt6_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt6_10|D1/lt6_9  (
    .a(\D1/PixelCount [10:9]),
    .b(2'b10),
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
    .a(\D1/PixelCount [12:11]),
    .b(2'b00),
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
    .a(\D1/PixelCount [14:13]),
    .b(2'b00),
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
    .a(\D1/PixelCount [2:1]),
    .b(2'b00),
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
    .a(\D1/PixelCount [4:3]),
    .b(2'b00),
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
    .a(\D1/PixelCount [6:5]),
    .b(2'b01),
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
    .a(\D1/PixelCount [8:7]),
    .b(2'b10),
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
    .a({1'b0,\D1/PixelCount [15]}),
    .b(2'b10),
    .fci(\D1/lt6_c15 ),
    .f({\D1/n16 ,open_n1942}));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt7_0|D1/lt7_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt7_0|D1/lt7_cin  (
    .a(2'b11),
    .b({\D1/LineCount [0],open_n1948}),
    .fco(\D1/lt7_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt7_0|D1/lt7_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt7_10|D1/lt7_9  (
    .a(2'b00),
    .b(\D1/LineCount [10:9]),
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
    .a(2'b00),
    .b(\D1/LineCount [12:11]),
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
    .a(2'b00),
    .b(\D1/LineCount [14:13]),
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
    .a(2'b10),
    .b(\D1/LineCount [2:1]),
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
    .a(2'b01),
    .b(\D1/LineCount [4:3]),
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
    .a(2'b01),
    .b(\D1/LineCount [6:5]),
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
    .a(2'b00),
    .b(\D1/LineCount [8:7]),
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
    .a(2'b00),
    .b({1'b1,\D1/LineCount [15]}),
    .fci(\D1/lt7_c15 ),
    .f({\D1/n18 ,open_n2160}));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt8_0|D1/lt8_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt8_0|D1/lt8_cin  (
    .a({\D1/LineCount [0],1'b0}),
    .b({1'b0,open_n2166}),
    .fco(\D1/lt8_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt8_0|D1/lt8_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt8_10|D1/lt8_9  (
    .a(\D1/LineCount [10:9]),
    .b(2'b01),
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
    .a(\D1/LineCount [12:11]),
    .b(2'b00),
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
    .a(\D1/LineCount [14:13]),
    .b(2'b00),
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
    .a(\D1/LineCount [2:1]),
    .b(2'b01),
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
    .a(\D1/LineCount [4:3]),
    .b(2'b11),
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
    .a(\D1/LineCount [6:5]),
    .b(2'b01),
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
    .a(\D1/LineCount [8:7]),
    .b(2'b00),
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
    .a({1'b0,\D1/LineCount [15]}),
    .b(2'b10),
    .fci(\D1/lt8_c15 ),
    .f({\D1/n20 ,open_n2378}));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt9_0|D1/lt9_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt9_0|D1/lt9_cin  (
    .a(2'b11),
    .b({\D1/PixelCount [0],open_n2384}),
    .fco(\D1/lt9_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt9_0|D1/lt9_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt9_10|D1/lt9_9  (
    .a(2'b00),
    .b(\D1/PixelCount [10:9]),
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
    .a(2'b00),
    .b(\D1/PixelCount [12:11]),
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
    .a(2'b00),
    .b(\D1/PixelCount [14:13]),
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
    .a(2'b11),
    .b(\D1/PixelCount [2:1]),
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
    .a(2'b11),
    .b(\D1/PixelCount [4:3]),
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
    .a(2'b11),
    .b(\D1/PixelCount [6:5]),
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
    .a(2'b01),
    .b(\D1/PixelCount [8:7]),
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
    .a(2'b00),
    .b({1'b1,\D1/PixelCount [15]}),
    .fci(\D1/lt9_c15 ),
    .f({\D1/n21 ,open_n2596}));
  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  EG_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTF1("(C*~B*~D)"),
    //.LUTG0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTG1("(C*~B*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1011000110100000),
    .INIT_LUTF1(16'b0000000000110000),
    .INIT_LUTG0(16'b1011000110100000),
    .INIT_LUTG1(16'b0000000000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b0|D1/reg1_b4  (
    .a({open_n2602,_al_u228_o}),
    .b({_al_u233_o,_al_u233_o}),
    .c({\D1/n4 [0],\D1/n2 [4]}),
    .clk(LCD_CLK_pad),
    .d({_al_u228_o,\D1/LineCount [4]}),
    .sr(nRST_pad),
    .q({\D1/PixelCount [0],\D1/LineCount [4]}));  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  EG_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTF1("(C*~B*~D)"),
    //.LUTG0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTG1("(C*~B*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1011000110100000),
    .INIT_LUTF1(16'b0000000000110000),
    .INIT_LUTG0(16'b1011000110100000),
    .INIT_LUTG1(16'b0000000000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b10|D1/reg1_b3  (
    .a({open_n2625,_al_u228_o}),
    .b({_al_u233_o,_al_u233_o}),
    .c({\D1/n4 [10],\D1/n2 [3]}),
    .clk(LCD_CLK_pad),
    .d({_al_u228_o,\D1/LineCount [3]}),
    .sr(nRST_pad),
    .q({\D1/PixelCount [10],\D1/LineCount [3]}));  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~B*~D)"),
    //.LUTF1("(C*~B*~D)"),
    //.LUTG0("(C*~B*~D)"),
    //.LUTG1("(C*~B*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000110000),
    .INIT_LUTF1(16'b0000000000110000),
    .INIT_LUTG0(16'b0000000000110000),
    .INIT_LUTG1(16'b0000000000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b11|D1/reg0_b9  (
    .b({_al_u233_o,_al_u233_o}),
    .c({\D1/n4 [11],\D1/n4 [9]}),
    .clk(LCD_CLK_pad),
    .d({_al_u228_o,_al_u228_o}),
    .sr(nRST_pad),
    .q({\D1/PixelCount [11],\D1/PixelCount [9]}));  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~B*~D)"),
    //.LUTF1("(C*~B*~D)"),
    //.LUTG0("(C*~B*~D)"),
    //.LUTG1("(C*~B*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000110000),
    .INIT_LUTF1(16'b0000000000110000),
    .INIT_LUTG0(16'b0000000000110000),
    .INIT_LUTG1(16'b0000000000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b12|D1/reg0_b8  (
    .b({_al_u233_o,_al_u233_o}),
    .c({\D1/n4 [12],\D1/n4 [8]}),
    .clk(LCD_CLK_pad),
    .d({_al_u228_o,_al_u228_o}),
    .sr(nRST_pad),
    .q({\D1/PixelCount [12],\D1/PixelCount [8]}));  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~B*~D)"),
    //.LUTF1("(C*~B*~D)"),
    //.LUTG0("(C*~B*~D)"),
    //.LUTG1("(C*~B*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000110000),
    .INIT_LUTF1(16'b0000000000110000),
    .INIT_LUTG0(16'b0000000000110000),
    .INIT_LUTG1(16'b0000000000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b13|D1/reg0_b7  (
    .b({_al_u233_o,_al_u233_o}),
    .c({\D1/n4 [13],\D1/n4 [7]}),
    .clk(LCD_CLK_pad),
    .d({_al_u228_o,_al_u228_o}),
    .sr(nRST_pad),
    .q({\D1/PixelCount [13],\D1/PixelCount [7]}));  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~B*~D)"),
    //.LUTF1("(C*~B*~D)"),
    //.LUTG0("(C*~B*~D)"),
    //.LUTG1("(C*~B*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000110000),
    .INIT_LUTF1(16'b0000000000110000),
    .INIT_LUTG0(16'b0000000000110000),
    .INIT_LUTG1(16'b0000000000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b14|D1/reg0_b6  (
    .b({_al_u233_o,_al_u233_o}),
    .c({\D1/n4 [14],\D1/n4 [6]}),
    .clk(LCD_CLK_pad),
    .d({_al_u228_o,_al_u228_o}),
    .sr(nRST_pad),
    .q({\D1/PixelCount [14],\D1/PixelCount [6]}));  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~B*~D)"),
    //.LUTF1("(C*~B*~D)"),
    //.LUTG0("(C*~B*~D)"),
    //.LUTG1("(C*~B*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000110000),
    .INIT_LUTF1(16'b0000000000110000),
    .INIT_LUTG0(16'b0000000000110000),
    .INIT_LUTG1(16'b0000000000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b15|D1/reg0_b5  (
    .b({_al_u233_o,_al_u233_o}),
    .c({\D1/n4 [15],\D1/n4 [5]}),
    .clk(LCD_CLK_pad),
    .d({_al_u228_o,_al_u228_o}),
    .sr(nRST_pad),
    .q({\D1/PixelCount [15],\D1/PixelCount [5]}));  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~B*~D)"),
    //.LUTF1("(C*~B*~D)"),
    //.LUTG0("(C*~B*~D)"),
    //.LUTG1("(C*~B*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000110000),
    .INIT_LUTF1(16'b0000000000110000),
    .INIT_LUTG0(16'b0000000000110000),
    .INIT_LUTG1(16'b0000000000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b1|D1/reg0_b4  (
    .b({_al_u233_o,_al_u233_o}),
    .c({\D1/n4 [1],\D1/n4 [4]}),
    .clk(LCD_CLK_pad),
    .d({_al_u228_o,_al_u228_o}),
    .sr(nRST_pad),
    .q({\D1/PixelCount [1],\D1/PixelCount [4]}));  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~B*~D)"),
    //.LUTF1("(C*~B*~D)"),
    //.LUTG0("(C*~B*~D)"),
    //.LUTG1("(C*~B*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000110000),
    .INIT_LUTF1(16'b0000000000110000),
    .INIT_LUTG0(16'b0000000000110000),
    .INIT_LUTG1(16'b0000000000110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \D1/reg0_b2|D1/reg0_b3  (
    .b({_al_u233_o,_al_u233_o}),
    .c({\D1/n4 [2],\D1/n4 [3]}),
    .clk(LCD_CLK_pad),
    .d({_al_u228_o,_al_u228_o}),
    .sr(nRST_pad),
    .q({\D1/PixelCount [2],\D1/PixelCount [3]}));  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
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
    .d({_al_u228_o,_al_u228_o}),
    .sr(nRST_pad),
    .q({\D1/LineCount [0],\D1/LineCount [8]}));  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
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
    .d({_al_u228_o,_al_u228_o}),
    .sr(nRST_pad),
    .q({\D1/LineCount [10],\D1/LineCount [7]}));  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
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
    .d({_al_u228_o,_al_u228_o}),
    .sr(nRST_pad),
    .q({\D1/LineCount [11],\D1/LineCount [6]}));  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
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
    .d({_al_u228_o,_al_u228_o}),
    .sr(nRST_pad),
    .q({\D1/LineCount [12],\D1/LineCount [2]}));  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
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
    .d({_al_u228_o,_al_u228_o}),
    .sr(nRST_pad),
    .q({\D1/LineCount [13],\D1/LineCount [14]}));  // source/VGAMod.v(55)
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
    .csr({2'b11,\D1/n24 }),
    .csw({2'b11,\FIFO0/logic_fifo_full_neg }),
    .dia({open_n2936,open_n2937,open_n2938,open_n2939,open_n2940,FIFO_DI[3:0]}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(FIFO_RE),
    .rprst(FIFO_RST),
    .rst(FIFO_RST),
    .we(FIFO_WE),
    .dob({open_n2961,FIFO_DO[3:0],FIFO_DO[11:8]}),
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
    .csr({2'b11,\D1/n24 }),
    .csw({2'b11,\FIFO0/logic_fifo_full_neg }),
    .dia({open_n2962,open_n2963,open_n2964,open_n2965,open_n2966,FIFO_DI[7:4]}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(FIFO_RE),
    .rprst(FIFO_RST),
    .rst(FIFO_RST),
    .we(FIFO_WE),
    .dob({open_n2987,FIFO_DO[7:4],FIFO_DO[15:12]}));
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
    .clkc({open_n2990,open_n2991,open_n2992,CLK_100M,\PLL1/clk0_buf }));  // al_ip/LCDPLL.v(69)
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u336"),
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
    \U1/add0/u11_al_u339  (
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
    //.MACRO("U1/add0/ucin_al_u336"),
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
    \U1/add0/u15_al_u340  (
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
    //.MACRO("U1/add0/ucin_al_u336"),
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
    \U1/add0/u19_al_u341  (
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
    //.MACRO("U1/add0/ucin_al_u336"),
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
    \U1/add0/u23_al_u342  (
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
    //.MACRO("U1/add0/ucin_al_u336"),
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
    \U1/add0/u27_al_u343  (
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
    //.MACRO("U1/add0/ucin_al_u336"),
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
    \U1/add0/u31_al_u344  (
    .a({open_n3093,\U1/Count [31]}),
    .c(2'b00),
    .d({open_n3098,1'b0}),
    .fci(\U1/add0/c31 ),
    .f({open_n3115,\U1/n3 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u336"),
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
    \U1/add0/u3_al_u337  (
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
    //.MACRO("U1/add0/ucin_al_u336"),
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
    \U1/add0/u7_al_u338  (
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
    //.MACRO("U1/add0/ucin_al_u336"),
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
    \U1/add0/ucin_al_u336  (
    .a({\U1/Count [1],1'b0}),
    .b({\U1/Count [2],\U1/Count [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U1/n3 [1],open_n3174}),
    .fco(\U1/add0/c3 ),
    .fx({\U1/n3 [2],\U1/n3 [0]}));
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u211_o,_al_u211_o}),
    .c({\U1/n3 [0],\U1/n3 [8]}),
    .clk(LCD_CLK_pad),
    .d({_al_u206_o,_al_u206_o}),
    .sr(nRST_pad),
    .q({\U1/Count [0],\U1/Count [8]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u211_o,_al_u211_o}),
    .c({\U1/n3 [10],\U1/n3 [7]}),
    .clk(LCD_CLK_pad),
    .d({_al_u206_o,_al_u206_o}),
    .sr(nRST_pad),
    .q({\U1/Count [10],\U1/Count [7]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u211_o,_al_u211_o}),
    .c({\U1/n3 [11],\U1/n3 [6]}),
    .clk(LCD_CLK_pad),
    .d({_al_u206_o,_al_u206_o}),
    .sr(nRST_pad),
    .q({\U1/Count [11],\U1/Count [6]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u211_o,_al_u211_o}),
    .c({\U1/n3 [12],\U1/n3 [4]}),
    .clk(LCD_CLK_pad),
    .d({_al_u206_o,_al_u206_o}),
    .sr(nRST_pad),
    .q({\U1/Count [12],\U1/Count [4]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u211_o,_al_u211_o}),
    .c({\U1/n3 [13],\U1/n3 [31]}),
    .clk(LCD_CLK_pad),
    .d({_al_u206_o,_al_u206_o}),
    .sr(nRST_pad),
    .q({\U1/Count [13],\U1/Count [31]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u211_o,_al_u211_o}),
    .c({\U1/n3 [14],\U1/n3 [30]}),
    .clk(LCD_CLK_pad),
    .d({_al_u206_o,_al_u206_o}),
    .sr(nRST_pad),
    .q({\U1/Count [14],\U1/Count [30]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u211_o,_al_u211_o}),
    .c({\U1/n3 [15],\U1/n3 [29]}),
    .clk(LCD_CLK_pad),
    .d({_al_u206_o,_al_u206_o}),
    .sr(nRST_pad),
    .q({\U1/Count [15],\U1/Count [29]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u211_o,_al_u211_o}),
    .c({\U1/n3 [16],\U1/n3 [28]}),
    .clk(LCD_CLK_pad),
    .d({_al_u206_o,_al_u206_o}),
    .sr(nRST_pad),
    .q({\U1/Count [16],\U1/Count [28]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u211_o,_al_u211_o}),
    .c({\U1/n3 [17],\U1/n3 [27]}),
    .clk(LCD_CLK_pad),
    .d({_al_u206_o,_al_u206_o}),
    .sr(nRST_pad),
    .q({\U1/Count [17],\U1/Count [27]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u211_o,_al_u211_o}),
    .c({\U1/n3 [18],\U1/n3 [25]}),
    .clk(LCD_CLK_pad),
    .d({_al_u206_o,_al_u206_o}),
    .sr(nRST_pad),
    .q({\U1/Count [18],\U1/Count [25]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u211_o,_al_u211_o}),
    .c({\U1/n3 [19],\U1/n3 [24]}),
    .clk(LCD_CLK_pad),
    .d({_al_u206_o,_al_u206_o}),
    .sr(nRST_pad),
    .q({\U1/Count [19],\U1/Count [24]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u211_o,_al_u211_o}),
    .c({\U1/n3 [1],\U1/n3 [23]}),
    .clk(LCD_CLK_pad),
    .d({_al_u206_o,_al_u206_o}),
    .sr(nRST_pad),
    .q({\U1/Count [1],\U1/Count [23]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u211_o,_al_u211_o}),
    .c({\U1/n3 [20],\U1/n3 [21]}),
    .clk(LCD_CLK_pad),
    .d({_al_u206_o,_al_u206_o}),
    .sr(nRST_pad),
    .q({\U1/Count [20],\U1/Count [21]}));  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u345"),
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
    \U2/add0/u11_al_u348  (
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
    //.MACRO("U2/add0/ucin_al_u345"),
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
    \U2/add0/u15_al_u349  (
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
    //.MACRO("U2/add0/ucin_al_u345"),
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
    \U2/add0/u19_al_u350  (
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
    //.MACRO("U2/add0/ucin_al_u345"),
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
    \U2/add0/u23_al_u351  (
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
    //.MACRO("U2/add0/ucin_al_u345"),
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
    \U2/add0/u27_al_u352  (
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
    //.MACRO("U2/add0/ucin_al_u345"),
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
    \U2/add0/u31_al_u353  (
    .a({open_n3579,\U2/Count [31]}),
    .c(2'b00),
    .d({open_n3584,1'b0}),
    .fci(\U2/add0/c31 ),
    .f({open_n3601,\U2/n3 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u345"),
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
    \U2/add0/u3_al_u346  (
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
    //.MACRO("U2/add0/ucin_al_u345"),
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
    \U2/add0/u7_al_u347  (
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
    //.MACRO("U2/add0/ucin_al_u345"),
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
    \U2/add0/ucin_al_u345  (
    .a({\U2/Count [1],1'b0}),
    .b({\U2/Count [2],\U2/Count [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U2/n3 [1],open_n3660}),
    .fco(\U2/add0/c3 ),
    .fx({\U2/n3 [2],\U2/n3 [0]}));
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u222_o,_al_u222_o}),
    .c({\U2/n3 [0],\U2/n3 [8]}),
    .clk(clk_pad),
    .d({_al_u217_o,_al_u217_o}),
    .sr(nRST_pad),
    .q({\U2/Count [0],\U2/Count [8]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u222_o,_al_u222_o}),
    .c({\U2/n3 [10],\U2/n3 [7]}),
    .clk(clk_pad),
    .d({_al_u217_o,_al_u217_o}),
    .sr(nRST_pad),
    .q({\U2/Count [10],\U2/Count [7]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u222_o,_al_u222_o}),
    .c({\U2/n3 [11],\U2/n3 [6]}),
    .clk(clk_pad),
    .d({_al_u217_o,_al_u217_o}),
    .sr(nRST_pad),
    .q({\U2/Count [11],\U2/Count [6]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u222_o,_al_u222_o}),
    .c({\U2/n3 [12],\U2/n3 [4]}),
    .clk(clk_pad),
    .d({_al_u217_o,_al_u217_o}),
    .sr(nRST_pad),
    .q({\U2/Count [12],\U2/Count [4]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u222_o,_al_u222_o}),
    .c({\U2/n3 [13],\U2/n3 [31]}),
    .clk(clk_pad),
    .d({_al_u217_o,_al_u217_o}),
    .sr(nRST_pad),
    .q({\U2/Count [13],\U2/Count [31]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u222_o,_al_u222_o}),
    .c({\U2/n3 [14],\U2/n3 [30]}),
    .clk(clk_pad),
    .d({_al_u217_o,_al_u217_o}),
    .sr(nRST_pad),
    .q({\U2/Count [14],\U2/Count [30]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u222_o,_al_u222_o}),
    .c({\U2/n3 [15],\U2/n3 [29]}),
    .clk(clk_pad),
    .d({_al_u217_o,_al_u217_o}),
    .sr(nRST_pad),
    .q({\U2/Count [15],\U2/Count [29]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u222_o,_al_u222_o}),
    .c({\U2/n3 [16],\U2/n3 [28]}),
    .clk(clk_pad),
    .d({_al_u217_o,_al_u217_o}),
    .sr(nRST_pad),
    .q({\U2/Count [16],\U2/Count [28]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u222_o,_al_u222_o}),
    .c({\U2/n3 [17],\U2/n3 [27]}),
    .clk(clk_pad),
    .d({_al_u217_o,_al_u217_o}),
    .sr(nRST_pad),
    .q({\U2/Count [17],\U2/Count [27]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u222_o,_al_u222_o}),
    .c({\U2/n3 [18],\U2/n3 [25]}),
    .clk(clk_pad),
    .d({_al_u217_o,_al_u217_o}),
    .sr(nRST_pad),
    .q({\U2/Count [18],\U2/Count [25]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u222_o,_al_u222_o}),
    .c({\U2/n3 [19],\U2/n3 [24]}),
    .clk(clk_pad),
    .d({_al_u217_o,_al_u217_o}),
    .sr(nRST_pad),
    .q({\U2/Count [19],\U2/Count [24]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u222_o,_al_u222_o}),
    .c({\U2/n3 [1],\U2/n3 [23]}),
    .clk(clk_pad),
    .d({_al_u217_o,_al_u217_o}),
    .sr(nRST_pad),
    .q({\U2/Count [1],\U2/Count [23]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*~(B*D))"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*~(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0011000011110000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0011000011110000),
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
    .b({_al_u222_o,_al_u222_o}),
    .c({\U2/n3 [20],\U2/n3 [21]}),
    .clk(clk_pad),
    .d({_al_u217_o,_al_u217_o}),
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
    .a({\U4/Addr_piped [0],open_n3975}),
    .b({\U4/Addr_piped [1],open_n3976}),
    .c({\U4/ROM0/inst_doa_i0_007 ,open_n3977}),
    .clk(CLK_100M),
    .d({\U4/ROM0/inst_doa_i1_007 ,nRST_pad}),
    .mi(\U4/Addr [14:13]),
    .sr(\D1/n0 ),
    .f({_al_u200_o,\D1/n0 }),
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
    .INIT_00(256'hE6AB2FDEB2AAAAAAAAE3BFE0AEDD3EEFBBFE7AAAAAAAAAAAAAAAAAAAEBF01B00),
    .INIT_01(256'hABFBAF1C87FFFFFFFFBFA3D0FFB9FE8EBA7EEFFFFFFFFAFEFFEFFFFB6717DF7F),
    .INIT_02(256'hA7BEBEEEAFFFFFFFFEBFA29AE8C70ECAA8ABAFFFFEBBBB686AAF5A1FB79FA0FF),
    .INIT_03(256'hB7AFADBF2FFFFFFFFFF7B602EB68AECAB6F7FAFFFAF9DBB5D058D320FEBB97FF),
    .INIT_04(256'hA6F2FCE23FFFFFFFFF83A76AA3EFC688E6FFFAFFEA1B24BF9FEF2FABEEB07BFF),
    .INIT_05(256'hA68FFE22EFFFFFEAFB0BA64EF12176E9CEDFFFFFEDD3FE8219A1AFEFFB8DFFFF),
    .INIT_06(256'hB6CAEEF3BFFFFFEAFEFEBD2E9BFAB2ECAB7FFFFFEEFE9D5CEF1AFFFEEADFFFFF),
    .INIT_07(256'hA7B8FF5BFFFFFFEAFFBADCBAAE3C54A92EBFFFFFFBBAD9AFC6BFFFFEB06FFFFF),
    .INIT_08(256'hABFFFFCFFFEAFFEAAE0F892A1BFE11A9ECFFFFBAECECEFAD2BFFFFFFBBFB0C7F),
    .INIT_09(256'hEBE9FFA7FFFEBFEAAC7E95AD271F253FFDFFFFFF7E3FAE0ABFEBFFFFAEB561FF),
    .INIT_0A(256'hE2F6EEB3FFFE2FEAF8FEC2BEC6EE9EFFF3FFFAB18AEB86BFFAABFFFEBBE0017F),
    .INIT_0B(256'hB0ADEEEFFFEA4BEBFFFE8CA77ED78B3FBBFBFBAEFBBD2FFFFEABFEBFED052AFF),
    .INIT_0C(256'hEDA42F2FFFE2ECBFFB3EADCB0FFBB99E8BFAEA3FFF5EAAAAAABFFFFFEF3FFFFF),
    .INIT_0D(256'hEBACEEFEBFA77F2FBF3A86DED2EFA71ECBFAA6FFEF40000151AAFFFFFBFFFFFF),
    .INIT_0E(256'hE2BE6FACEBED8EB6AFAACEFCEC14F19E3AEB2BFFFAAAAAAAAEE52AAFFEFFFFFF),
    .INIT_0F(256'hE9BEBA3B8BEA28FCF7AB76307FFAF47B2FBCBFFFFEFFFFFFFFAAEC2BFBAC7FFF),
    .INIT_10(256'hE6EC3B3EA4AAEABFD9AB7A7A0D11516CABDFFE0AFFFFFFFFFFFFAAE4AAEF47FF),
    .INIT_11(256'hB82A6A3FEB4ACBFABFBB5EEA7E17F068AEB829863FFFFFFFFFFFFFFBD2BBADE6),
    .INIT_12(256'h2F6E8B3FFFE4F6BE4CBB98F061A8B9AAA5D8D8ACEF854FFFFFFFFFFAFA4AF2EA),
    .INIT_13(256'h973BE2FFFFFB918C82BEB8833D310D62AB1791E12B0163B84FFFFFF8105AEA5F),
    .INIT_14(256'hB4EF3FCFFFFFBFA69AFE5F99C6B5C43CCE4C539377585FE2F34AAABAAAAAFAD7),
    .INIT_15(256'hEA3EBDCFFFEFEFECFFAB57168C50B69F9A6EB2BAEFB05FFA50579ABFFEBFFAB4),
    .INIT_16(256'hEE5BD6BBFFFEBE2F9FAF2EC3FFEFF95BAEBFFEABEF9B41FFFFB967D3BFFFFFE5),
    .INIT_17(256'hCECBF763FFFFE6139FAEBF2FFFFFFEAFEEFFFFFFEAE9209FFFFFAD028EAFFFF9),
    .INIT_18(256'hAAAE86A3FFFE3913F7AA990FFFFFFEAAAEFFFFFFFABBA6E9FFFFEAEA167AFBFB),
    .INIT_19(256'hAEFAA2CBFFFB9F7A37A68F2EBFFFFEAABFFFFFFFFFFE47A7FFFFFFFFF9B9AAFF),
    .INIT_1A(256'hD7FEAEEBFFED62EA3FD2E8AEBFFFFFFABFFFFFFFFEBED2987FFFFFFFFEAF62FF),
    .INIT_1B(256'hECFFEEA4FFE89ABEF282622EFFFFFFFEBFFFFEAFEABACE13FFFFFFFFFFEE697F),
    .INIT_1C(256'hE92BE8ECFF9FCFFEC2D629FFFFFFFFFFFFFFFFAEEAAA64A67FFFFFFFFFFFBEFF),
    .INIT_1D(256'hF8BFECFFFE8F7FFFFAF73AAFFFFFFFFFFFFFFFFEFAAE9AB84FFFFFFFFFFFFBFF),
    .INIT_1E(256'hFB0FE8FBFF6C6FFEBBB3B2BFFFFFFFFFFFFFFFFBC8AC96DB0FFFFFFFFFFFFFFF),
    .INIT_1F(256'h8F7EADFBFEDBCFFE2B75D6FFFFFFFFFFFFFFFFEBAA2855B323FFFFFFFFFFFFED),
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
    .csa({open_n4012,\U4/Addr [14:13]}),
    .dia({open_n4016,open_n4017,open_n4018,open_n4019,open_n4020,open_n4021,open_n4022,1'b0,open_n4023}),
    .rsta(nRST_pad),
    .doa({open_n4038,open_n4039,open_n4040,open_n4041,open_n4042,open_n4043,open_n4044,open_n4045,\U4/ROM0/inst_doa_i0_000 }));
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
    .INIT_00(256'hBEABBE5C0AAAAAAAAAB0BD02AFD2BEF4BBD40AAAAAAAAAAAAAAAAAAABEEAEE80),
    .INIT_01(256'hBBFA87CBDFFFFFFFFFBFBD16FA54BEF4BAD22FFFFFFFFAABAAAAAAAA86AFEEFF),
    .INIT_02(256'hA3BEBBCBEFFFFFFFFEDBBD12EF4CAEB0AF08AFFFFEBAEAC47AAB110FB57BC9FF),
    .INIT_03(256'hA3AFB59A3FFFFFFFFEF3AC5AFB92FEB0BC23FAFFFAAE0AE46FA0AE0EAAAAEFFF),
    .INIT_04(256'hB2FAECDA8FFFFFFFFEEBAC0AAD1D3EB2ECAFFAFFEBCB0EFEB6BE4AABEEFF7FFF),
    .INIT_05(256'hB2E3ED1AEFFFFFEAFAEBA82EBE90E2D2B4FFFFFFEBCAAAB2AC4FAFEFFACFFFFF),
    .INIT_06(256'hA2FAEBABBFFFFFEAFA6EB52EB6575AD2D5BFFFFFEEAAE5BC44FAFFFEEB9FFFFF),
    .INIT_07(256'hA3BEFB93FFFFFFEAFA8AF13AF8152ED6D4BFFFFFFAA6DC057EBFFFFEAA3FFFFF),
    .INIT_08(256'hBBBCFEA3FFEAFFEAAEEFF0AAE19438D352FFFFBAAA294543ABFFFFFFB2EF47FF),
    .INIT_09(256'hABBCFED3FFFEBFEAAFBEF1AB2D1503D557FFFFEADF5554EABFEBFFFFAABB91FF),
    .INIT_0A(256'hBAA3EEABFFFFAFEAEDBEA0BD8D3540554BFFFAB9D0553EBFFAABFFFEBAFFFEFF),
    .INIT_0B(256'hEEB2EEEFFFEAEBEBEF3EBEACB41554155BFBFA985153AFFFFEABFEBFEA917FFF),
    .INIT_0C(256'hEEBFAEAFFFFAD6BFEFBEDEF1DD1906B52BFAEBD554EAAAAAAABFFFFFEFDFFFFF),
    .INIT_0D(256'hE8AB2F5ABFBDB0AFAABAC2B6B25946B56BFABD5554AAAAAAAFAAFFFFFBB7FFFF),
    .INIT_0E(256'hE7AB2F52ABEA6D1AABAAC2D741205534BAEB955555555555514BAAAFFEEDFFFF),
    .INIT_0F(256'hE6ACFAD56BEAC652AAABBBD2D5C654D5AFBF555555555555555543ABFBAC7FBF),
    .INIT_10(256'hFCEBBAD54EAAD01564AABACFD30E30D6ABB554A5555555555555554EAAEA7FB7),
    .INIT_11(256'hBAABCBD554EAF55518BBCF5C60BB50D6BD52C5FA15555555555555553ABAD5A7),
    .INIT_12(256'hEA2B8BD5554EA954AABA4F0F2E6AA5C2F620EB72552AA5555555555504EAACB8),
    .INIT_13(256'hE3FA3AD555553B25EABA4A0C11B73C1EA86B1FBFABAFA152E5555552AABAEB8B),
    .INIT_14(256'hBA2EB6B55555507FDAFB3D61020A167B7CC36AD46FE94557F4EAAABAAAAAFB9A),
    .INIT_15(256'hEACEE2F5555541121BAA6D6D2BDB122E6CD508113FF3B54040117ABFFEBFFAF6),
    .INIT_16(256'h2ACAD4B55554142D0BAE208D515553090555555545188B555540653ABFFFFFF8),
    .INIT_17(256'hEEEAC4AD55554D7D5BAF35D5555554055555555555549935555545516AAFFFFC),
    .INIT_18(256'h7AAEE53D5554DA8D23AAF5B55555555555555555555102F35555405101AAFBFE),
    .INIT_19(256'hB2FAAD2D5554EC94B3BEA315555555555555555555548A8E5555555545A6AAFE),
    .INIT_1A(256'hABFEAD4955570154A3EAD655555555555555555555544F3155555555540B1AFF),
    .INIT_1B(256'hF9FFED5B554495546AEAD2D55555555555555555555523C95555555555452CFF),
    .INIT_1C(256'hEBABEB43553A35543AAB995555555555555555555554A678D5555555555506FF),
    .INIT_1D(256'hFDFFEB55556975557ACAC955555555555555555555543512255555555555507F),
    .INIT_1E(256'hFEEFEF5554C965552BCB115555555555555555551353CC22655555555555555F),
    .INIT_1F(256'h0F6EAF55552D25543A8F0555555555555555555554C4B4090D5555555555556C),
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
    .csa({open_n4071,\U4/Addr [14:13]}),
    .dia({open_n4075,open_n4076,open_n4077,open_n4078,open_n4079,open_n4080,open_n4081,1'b0,open_n4082}),
    .rsta(nRST_pad),
    .doa({open_n4097,open_n4098,open_n4099,open_n4100,open_n4101,open_n4102,open_n4103,open_n4104,\U4/ROM0/inst_doa_i0_001 }));
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
    .INIT_00(256'hE3FEDFBBEFFFFFFFFFEFEFEBFBB0EBBFEEFEFFFFFFFFFFFFFFFFFFFFFFAABE80),
    .INIT_01(256'hF6AFFEBB2AAAAAAAAAF2EFABAFDB6BBFEEFDFAAAAAAAAFFFFFFFFFFEE8017C7F),
    .INIT_02(256'hEEEBF7BF5AAAAAAAABF6EFBFBB2E3BBBFBB7FAAAABEFFEFAD555AEB05BAFE3FF),
    .INIT_03(256'hEEFAFBEEDAAAAAAAABCEEFAFBC7A5BBBEECEAFAAAFFBB54BEABB04EBFFFF0FFF),
    .INIT_04(256'hEFAFBFAEFAAAAAAAAB8EEEFFEDF78BBBAE5AAFAABEB5EBFFAD54FFFEBBF8FFFF),
    .INIT_05(256'hEFBEBEEFBAAAAABFAE9EEEBBE0AACFFBBE2AAAAABB2FFFAC13EAFABAAFB3FFFF),
    .INIT_06(256'hEFB7BF4EEAAAAABFAFDBFAFBB5FDE7FBFEEAAAAABBFFBE07EEAFAAABBF3FFFFF),
    .INIT_07(256'hEEE3AF9EAAAAAABFAF7FBBEFD6BAA7FAFFEAAAAAAFFD73AFEBEAAAABE8FFFFFF),
    .INIT_08(256'hF6E7AB9EAABFAABFFA3ABAFE9B7EA3FBFBAAAAEFFBD3EFEAFEAAAAAAFD15BEFF),
    .INIT_09(256'hF6F3ABEEAAABEABFFE6BAAFACEBEE8FFFAAAAABEB4FFFEBFEABEAAAAFFEBEB7F),
    .INIT_0A(256'hE7EDBBEEAAAAFABFBB6BAFEF2FDFBCFFEEAAAFFB3AFFABEAAFFEAAABEFAAAAFF),
    .INIT_0B(256'hE3F9BBBAAABEFEBEBCEBB7EE5EAFBCBFEEAEAFF6FBFAFAAAABFEABEABA2BD57F),
    .INIT_0C(256'hF7ECFAFAAAAFFBEABDEBF3BE37F3F93FBEAFBEFFFEBFFFFFFFEAAAAABA7FFFFF),
    .INIT_0D(256'hF7F9FBEFEAEEFEFAFCEFAFBC28F7FC3FBEAFEFFFFEAAAAAAAAFFAAAAAEDFFFFF),
    .INIT_0E(256'hEDFCFBFBFEBBBFAFFCFFFFF9EAAAEB3EEFBEBFFFFFFFFFFFFFEAFFFAABB3FFFF),
    .INIT_0F(256'hF9FB6EFFBEBEEAFBEDFEDEECFF7CEA7EFAEFFFFFFFFFFFFFFFFFEAFEAEFEFFFF),
    .INIT_10(256'hEDBA6EFFEBFFFABFBBFECEF4BAA8AE7FFEBFFEAFFFFFFFFFFFFFFFEBFFBE8FDF),
    .INIT_11(256'h78FE7EFFFEBFBFFFB7EFFBF4D6846F7BFFFAFB05BFFFFFFFFFFFFFFFAFEFF3ED),
    .INIT_12(256'hDCFF3EFFFFEBEFFEB3EFBBE041D15B6FE8BB115AFFAAAFFFFFFFFFFFFEBFED7F),
    .INIT_13(256'hAC6FCFFFFFFFABAB07EFFAA4C25992EFD284B14054005BFAEFFFFFFAAAAFBE3F),
    .INIT_14(256'hE97ADBBFFFFFFAC127AEAF9AA5C6A0DB547FC57A8012BFED4EBFFFEFFFFFAFBF),
    .INIT_15(256'hBE7BDBBFFFFFEF4FA6FEAE9AF1F6FD1113AAFFEEC04ABFFFAAAFAFEAABEAAFEB),
    .INIT_16(256'hFEBFAFFFFFFEBFD2B6FAEB7AAAAAAFB6FAAAAAAABAA42BFFFFFECBAFEAAAAAEB),
    .INIT_17(256'h3BBFEEEFFFFFEE92F6FBFF2AAAAAABFAAAAAAAAAAAAE43BFFFFFFAAFBFFAAAFB),
    .INIT_18(256'hDFFBAFEFFFFEF03ACEFFBB6AAAAAAAAAAAAAAAAAAAAEED5BFFFFEAFEAEFFAEFF),
    .INIT_19(256'hDFAFEFBFFFFF13EBCEEBADEAAAAAAAAAAAAAAAAAAAAA0505FFFFFFFFFB1BFFFF),
    .INIT_1A(256'hA6ABFFFBFFF84EABDEAFF9AAAAAAAAAAAAAAAAAAAAABE5BEFFFFFFFFFEE5EFFF),
    .INIT_1B(256'hF3AABFEBFFEB2AAB8FAFEDAAAAAAAAAAAAAAAAAAAAAAFC2BFFFFFFFFFFEED2FF),
    .INIT_1C(256'hF8FEBBEBFFB5EAAB8FAEB2AAAAAAAAAAAAAAAAAAAAABCBC6FFFFFFFFFFFFBD7F),
    .INIT_1D(256'hFB6ABBFFFF978AAA8FEEF6AAAAAAAAAAAAAAAAAAAAAB8AE8AFFFFFFFFFFFFBFF),
    .INIT_1E(256'hFE3ABBFFFE501AAADEEFFEAAAAAAAAAAAAAAAAAAEEAE7B940FFFFFFFFFFFFFFF),
    .INIT_1F(256'h3EDBFBFFFFB4FAAADEEBAAAAAAAAAAAAAAAAAAAAB3BE7FE087FFFFFFFFFFFFD3),
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
    .csa({open_n4130,\U4/Addr [14:13]}),
    .dia({open_n4134,open_n4135,open_n4136,open_n4137,open_n4138,open_n4139,open_n4140,1'b0,open_n4141}),
    .rsta(nRST_pad),
    .doa({open_n4156,open_n4157,open_n4158,open_n4159,open_n4160,open_n4161,open_n4162,open_n4163,\U4/ROM0/inst_doa_i0_002 }));
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
    .INIT_00(256'hF5FFF63837FFFFFFFFC17807FFA5DFE1FF8A37FFFFFFFFFFFFFFFFFFDF57F700),
    .INIT_01(256'hF7570FB59D55555555FDF20DF40BD7C975A6DF55555557D5D55555570D751D7F),
    .INIT_02(256'hC575FF1D7DD5555555BD72AD5E39FFEF7C715DD555F7778ADD5502B57075B17F),
    .INIT_03(256'hC57D63B47D555555554DF8B555AED7CFF9C557D557D61F4017C3DE3FD5F75FFF),
    .INIT_04(256'hCDD7DD9FB5555555557F70357838776DF2F557D55FB73D7F65763F7FDDE6FFFF),
    .INIT_05(256'hCDE55ABF5D55555FD77FFA7D5D494D0DC8FD55555D9FD76F52B57D5D5717FFFF),
    .INIT_06(256'hC5DFDDD77555555FD4D7E87DCE04BF8F0B7755555DD5E5D41357D555DFBFFFFF),
    .INIT_07(256'hCD77D4075555555FD537C87F58E2D90F237555555F67DA5835FF5555F4DFFFFF),
    .INIT_08(256'hFF51554D555FD55FFDFDEBFD6700F90607D55577DE5AB8BFFFFF5555675F097F),
    .INIT_09(256'hFF53552D5557F55FF9D7C97CF80807808D5555551E28A9577F5555557D740B7F),
    .INIT_0A(256'hDFC5DDF75555FDDFD3DFC1731860AB02BF5557618F0A75FFFD555555F75F7F7F),
    .INIT_0B(256'hD7ED7DFFD557BF7FD455F1D3C1822AEA1757FD11840F7F5D555555555FA9757F),
    .INIT_0C(256'hF9F9FDFD555FA7D7D475BDE19816276A5F57FD08817FFFFFFFF555555DBFFFFF),
    .INIT_0D(256'hF17C5437F57BEBFD7575AFECC3902DC87F55520009755555F77FFDD5576FFFFF),
    .INIT_0E(256'hE774D4A57FDEF8FFFD77CD24986982C157DFE22A00A0A000AA37DFFD55D1FFFF),
    .INIT_0F(256'hE771F5AAFF5F3D0D557F4F07810F81217D7022A80A80000002AA1D5FD57CFFFF),
    .INIT_10(256'h79FDF78015F52540C35F5735261C4381F5C28BD2008082A000002A977FDC77CF),
    .INIT_11(256'h5D7F9F0001FFE2A079D6541A61DE8325F20D835C4000000000002828FFFF0BEF),
    .INIT_12(256'h7C5D9F80829572A9FDFE3414FC5FC39DCF6BDC4D82DF702AA800AAA2AB5FD35B),
    .INIT_13(256'h655C5F20AAA0DEF355F4BDB80B75F015D4DCAD5F5FD744279800002F5FD7DF94),
    .INIT_14(256'hF4FFE5E80AA027FF3F7450482C1826DE996B3F7A5F7A280761755555FFFFF725),
    .INIT_15(256'hDFB7EFE800A012AA3556D262BEC896F6D00A80005DEF4A08882A77FFFF755FEF),
    .INIT_16(256'hD5952B40000168D815D4FD62A8A8891A22AAAAAA82B31E800022E0F7F7555573),
    .INIT_17(256'hFDDD89F2000ABA6855D460AAAA0A28AAAAAAAAAAAAAD1AC200002A00DFD55578),
    .INIT_18(256'hF7F5C05200099D0A45DDC20AAAAAA8AAAAAAAAAAAAAA0D4E000215000B77577D),
    .INIT_19(256'hCDD7F2F20001F0AA455D5F0AAAAAAAAAAAAAAAAAA0A9375400000000032D7FFE),
    .INIT_1A(256'hDFD7F01E800CAAAAE7D7262AAAAAAAAAAAAAAAAAAAA8D4E2A0000008018F97FF),
    .INIT_1B(256'hF35F72BC80138AAAF7FF8C2AAAAAAAAAAAAAAAAAAAA8071C0000000A00187B7F),
    .INIT_1C(256'hF5FF5EB48074AAAAFFFFD22AAAAAAAAAAAAAAAAAAAAAE873000000000000677F),
    .INIT_1D(256'hF9F55CAA00D3EAAA77BF32AAAAAAAAAAAAAAAAAAAAAAE02450000000000006FF),
    .INIT_1E(256'hFDFD5CA8031242AADF3698AAAAAAAAAAAAAAAAAAE0A9E0EC780000000000001F),
    .INIT_1F(256'h9EDDFEA802D802AAD7B680AAAAAAAAAAAAAAAAAAA00D163CF200000000000253),
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
    .csa({open_n4189,\U4/Addr [14:13]}),
    .dia({open_n4193,open_n4194,open_n4195,open_n4196,open_n4197,open_n4198,open_n4199,1'b0,open_n4200}),
    .rsta(nRST_pad),
    .doa({open_n4215,open_n4216,open_n4217,open_n4218,open_n4219,open_n4220,open_n4221,open_n4222,\U4/ROM0/inst_doa_i0_003 }));
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
    .INIT_00(256'hCD559FFD5D555555557DDFD555E9757F55F75D5555555555555555557FDD7F80),
    .INIT_01(256'hCD55D7FEFD555555554D5DDF57BC757755D975555555557FFFFFFFFDF08850FF),
    .INIT_02(256'hD7554DD6B5555555556F5D7D56FE555757E5D5555555FDD70AAA75C80577E5FF),
    .INIT_03(256'hDF555FD79D555555559F57DD58D7BD575F9F5555557FE89DDFFC2BD77F5CB7FF),
    .INIT_04(256'hDF55515D5D55555555B5575553C79D75579D555555E855FFD08BF7D55573FFFF),
    .INIT_05(256'hDF7757DD5555555555B55D556B75377577F5555556D5FFD805D7555555E7FFFF),
    .INIT_06(256'hDF4D56BD55555555571D5FD5497B4DF575D55555557F78A17F75555554DFFFFF),
    .INIT_07(256'hD74757355555555556DD5DD525FF45755F55555555DA0D7FFD555555597FFFFF),
    .INIT_08(256'hCD65D5B7555555555475775516DFED7FFD55555575257F5DD5555555508275FF),
    .INIT_09(256'hC56FD5FF5555555554F57D57BFDFD1FF7D55555FCBDF57755555555557D77C7F),
    .INIT_0A(256'hED7BD55D5555D5555EF57556DF9F517D55555554F7F5FD555555555555DFFFFF),
    .INIT_0B(256'hEF5BD5555555755559754D561FDFD175F55555CDFFFD555555555555545E2AFF),
    .INIT_0C(256'hE559D555555D7F555B556D7CE7CFF075D55555FF7F7555555555555554FFFFFF),
    .INIT_0D(256'hE5D375F5555FDD555BD5755BDFEDDA57F5555FFFF75555555F555555551FFFFF),
    .INIT_0E(256'hF3DBF5DD55555F7D5355177B7DF5FCDF5555FDD5FF5F5FFF55F5D555554DFFFF),
    .INIT_0F(256'hF3DC75D5F5555DF57BD535FBFEF1FE7FD555DD57F57FFFFFFD55FDD555517FDF),
    .INIT_10(256'hF956D57FF5557FFFDFD5B561F75B5E7D577D7FDD7F7F7D5FFFFFD5775557BFBF),
    .INIT_11(256'hD954D5FFFF757D5FEF551DE12508FEDF5FF7F4A1FFFFFFFFFFFFD7D7DD55EFD3),
    .INIT_12(256'h33F6D5FF7D775D57EF55FFC2A128145D71F400B5FFDF7FD557FF555D57D57A7C),
    .INIT_13(256'hFA77BD7F555FDF7EA55775C10482AF5F07ABE02A20809FDFFFFFFFFF557554FF),
    .INIT_14(256'h52559557F55FDF8AC5577797C12563BC881C20A7A8275FF8BF755555555555D7),
    .INIT_15(256'h547D3577FF5FFC956F55DD97C10DC208855FD555AA3F55F5F55D75555555557F),
    .INIT_16(256'h775DFF5FFFFFD78F6F55DE37FDF7FC6FF7FFFFFFD7485F7FFFD735D55555557D),
    .INIT_17(256'h75555755FFF55FAF07555E5FFFFFFFFFFFFFFFFFFFF02DDDFFFFDFFDF555557F),
    .INIT_18(256'h3D5557DDFFF7EA5F3F557CDFFFFFFFFFFFFFFFFFFFFF5A37FFFDFFFDD5DD557E),
    .INIT_19(256'h9F555555FFFC25FF175D585FFFFFFFFFFFFFFFFFFFFE28237FFFFFFFF4F7D57F),
    .INIT_1A(256'hE55557FF7FF2B5FFBD5D7BFFFFFFFFFFFFFFFFFFFFFF837F5FFFFFF7FFD8F57F),
    .INIT_1B(256'hEDD557557FF6FFFFBD75F97FFFFFFFFFFFFFFFFFFFFFD85FFFFFFFF5FFFF87FF),
    .INIT_1C(256'hF1D5575D7FE1DFFF9D55677FFFFFFFFFFFFFFFFFFFFFBD857FFFFFFFFFFFF27F),
    .INIT_1D(256'hFEF55557FF2C1FFF957547FFFFFFFFFFFFFFFFFFFFFF1FF35FFFFFFFFFFFFF7F),
    .INIT_1E(256'h7E755757FC221FFF3555CDFFFFFFFFFFFFFFFFFFB5FC97881FFFFFFFFFFFFFDF),
    .INIT_1F(256'hD79D5757FD415FFFBDD7FDFFFFFFFFFFFFFFFFFFED784949A5FFFFFFFFFFFD87),
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
    .csa({open_n4248,\U4/Addr [14:13]}),
    .dia({open_n4252,open_n4253,open_n4254,open_n4255,open_n4256,open_n4257,open_n4258,1'b0,open_n4259}),
    .rsta(nRST_pad),
    .doa({open_n4274,open_n4275,open_n4276,open_n4277,open_n4278,open_n4279,open_n4280,open_n4281,\U4/ROM0/inst_doa_i0_004 }));
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
    .INIT_00(256'hF2FB3FDAF3BFFFFFFFA6A6A1AA997E9BAA2E3FFFFFFFFFEFFABAFFFEBFA11A00),
    .INIT_01(256'hFAFEEF4997BFFFFFFBBBE280EBE9EACABEEEBAFFFFFEAEFBAFFEBAAE77131C7F),
    .INIT_02(256'hF6EFEBAFEFBFFFFFFABAA2BFE8CA0ECFE8FEFAFFEFFBFE5D5FAA4B4AA35BB5FF),
    .INIT_03(256'hF2FBF9FA7FFFFFFFFAD3B703EF6BFEDFF7E7AAFFFEAC8B978149C621FEFED7FF),
    .INIT_04(256'hF3FFB8A36FFFFFFFFFC2A67FE3FB93ADE2BFFAFFFA5E76FF8DAA7BBEBBE13BFF),
    .INIT_05(256'hF39EFF37BFFFFFFFFB5FAE5FB56567A88FCBFFFFE8F2EE875C20BFBEAEC9FFFF),
    .INIT_06(256'hE3FBFBE3FFFFFFFFFEDFF93A9AAFA62DBF7FFFFFFBABC948FF5BFFFFBACFFFFF),
    .INIT_07(256'hE2A8FE57FFFFFFFFFABFFCFFFAED41B87ABFFFFFEBAA8CFAA3FFFFFFB42FFFFF),
    .INIT_08(256'hAAADFE9AFFFFBFFFFA5B9B3E1EBAB5ABACFFFFFEADB9FBBD3EFFFFFFF3FA497F),
    .INIT_09(256'hEBFCFBA2FFEEFFFFE82FD1A90B1A307FFFFFFFFA3E3BAF1BEABFFFFFFFB8657F),
    .INIT_0A(256'hE7A7BBA7FFFA3FFFF9BE96AF8EFE8B7FA2FFFEA5CEEBB2EFEBFFFFFFFAA5547F),
    .INIT_0B(256'hE4BDBFEBFFFA2AEAADAF89F26FC68F7FEAFAFBFBBEA9EFFEFBEFFFFFED103AFF),
    .INIT_0C(256'hF9E07B2AFFE2FCEAEF3EFEDA5EAE88BECFFFEF2FFF0EAAAAABEBFFFFFB3FFFFF),
    .INIT_0D(256'hFEEC7BABFFF72B2BFA2E86CFD7BAF75B9FEBF7FFFB41554400EBFBFFFABFFFFF),
    .INIT_0E(256'hE3EB3AB8BFA9C3E2FAEF8BA9BD31F59E7FFA6FFFEAAAAAAAAAF17AFFFEABFBEB),
    .INIT_0F(256'hFCFAFAFBDEFE7DEDF2FFB764ABEBB07B3FADBFFFFFEFFFFFFFAAF96BFEA87FBB),
    .INIT_10(256'hF5E92A3EB7FEEFAAECFF2A7B0FCC5479EBDFEE9BFFFFFFFFFEEBAAF1FFFA06EF),
    .INIT_11(256'hB87A4B7AEA4ACEFFEBEB0EAE6A062079FABAA9D37FFFFFFFFFFFFFEB92FEB9A6),
    .INIT_12(256'h6F7A8B7ABEE5F2AEE0AA98E556FCB9FEB1E9FCBDFB9F2FFFFFFFFFFAEB7FA2EA),
    .INIT_13(256'h93FFF3BBFFEAD7A887BFADC1AA2A5822EFC4C224FE5163FABBEBAFFB410FEA4E),
    .INIT_14(256'hB9BF738FFFFFAFE32FFFDAB2347B7CF99DE6881BE39A17A7E34EFFFEFABFEEC7),
    .INIT_15(256'hAE3FAD8FFFFFBEEFBBFE733923B37ADFF0F56FEB5FA25FFB40175AAFBFEFFFB4),
    .INIT_16(256'hAE6A87BFFFFBFB7CFAFA3F8D511542B159555555786F1ABAAABD32DAFFFFFFE5),
    .INIT_17(256'hCFFAC373FFFFEF40B2FB7A5541455555555555555516B0CFFFFAE113CEFFFFF9),
    .INIT_18(256'hBFEBB3B3FFFAF9E5D2FFDD355555555555555555555456FAFFFFFEEA576BBFFA),
    .INIT_19(256'hABFFE29BFFEE90549AF3DEF555555555555555555555D3A2BFFFFFEAADE8BFFF),
    .INIT_1A(256'hD7FFEFA3FFFD3E546FF3AD55555555555555555555503BBD6FFFFFFFFABEFAFF),
    .INIT_1B(256'hECFFFBA4FFF4A45523C330D55555555555555555555464CEEFFFFFFFFFFB797B),
    .INIT_1C(256'hFC3FFBF8FEB56554678237D5555555555555555555541F4A3FFFFFFFFFFEBAFF),
    .INIT_1D(256'hFCEFF8FFFB8DD5552FE760555555555555555555555070405FFFFFFFFFFFFFEF),
    .INIT_1E(256'hFB4FF8FFEF6D85556EA7A75555555555555555540252EC3A5BFFFFFFFFFFFFDF),
    .INIT_1F(256'h8F5BFDFFFECC3555EB24DB5555555555555555513096FF9466FFFFFFFFFFFFCD),
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
    .csa({open_n4307,\U4/Addr [14:13]}),
    .dia({open_n4311,open_n4312,open_n4313,open_n4314,open_n4315,open_n4316,open_n4317,1'b0,open_n4318}),
    .rsta(nRST_pad),
    .doa({open_n4333,open_n4334,open_n4335,open_n4336,open_n4337,open_n4338,open_n4339,open_n4340,\U4/ROM0/inst_doa_i0_005 }));
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
    .INIT_00(256'hEBAFEF581EEAAAAAAAA0E947FFC3EBA4FED45AAAAAAAAABAAFEFAAABABAEFE80),
    .INIT_01(256'hAEAA978A8AAAAAAAAAFAB957AA15ABA4AA172AAAAAAAABFAAFFEBAAAC3FB3CFF),
    .INIT_02(256'hA6AABE9EBAAAAAAAABDAE832BE45FBE4BA48AAAAAAAFBAE04FFA440AE1ABC8FF),
    .INIT_03(256'hB2AAE5CA2AAAAAAAAAD2F90EBBC1ABB4B922AAAAABAA4FD52EE4EA4EFFBABFFF),
    .INIT_04(256'hA2BAB99E8AAAAAAAABBEF94AF84C6E82ADEAAAAAAFDA0FBFE5EF0BEAAAAE7FFF),
    .INIT_05(256'hA2E6BC4AAAAAAAAAAFBAE46ABAC0B2C7A1FAAAAABBDEEBF2AC0AEAAAAA8FFFFF),
    .INIT_06(256'hA2EEAAEEAAAAAAAAAF4AB42BB3535EC6C4EAAAAAAAAAA1E814AEAAAABFDFFFFF),
    .INIT_07(256'hB2EFAEDEAAAAAAAAAADAF02ABCD53A9384EAAAAAAFE79D550AAAAAAAFB3FFFFF),
    .INIT_08(256'hFEAFAAA2AAAAAAAAABAAF3EAA5C4988047AAAAABBE2D5417EAAAAAAAFEBE12FF),
    .INIT_09(256'hFEA8ABD2AAABAAAABBAAB4FB241507C006AAAABA9E1400EEAAAAAAAABBFAD17F),
    .INIT_0A(256'hFAA6AAEAAAABEAAABCABA1ECC06015801EAAAAE985000BAAAAAAAAAAAEBAAAFF),
    .INIT_0B(256'hABE7AABAAAAF9EAAAC2AEAADB11505400EAAAB8D4017BAAAAAAAAAAABFC06AFF),
    .INIT_0C(256'hEBBBABFAAABFC7AAAAEB8FE1995D13803AAABA9000FFFFFFFEAAAAAAABDFFFFF),
    .INIT_0D(256'hE8BFEA4EAAADF1FABAEBD7F3A74D53A46AAAAC0005FEAAABEEBEAAAAAEF7FFFF),
    .INIT_0E(256'hE6AA2B06EABF6D5FAAAA92D750150520AAAFC00014000000004BAFAAABA9FFFF),
    .INIT_0F(256'hE2B9AE002AAAD202FAABAE96549344C0EAEA000000000000000016BEAAF97FFF),
    .INIT_10(256'hEEBAEF800EAA800160ABAFCFC1132582AEE01431000000000114000EAAAA6FF7),
    .INIT_11(256'hBAEFFE8501FFE10059AE8B4C75BE5582AC0000FF00000000000000017FAA85E2),
    .INIT_12(256'hBF2B9F85400AE9540BAE4A1A2F3BA0D3B310FA33052090000000000045EAACE9),
    .INIT_13(256'hF7AE6EC400013814AAAE4B1E05F76D4BACED4F7BABAEB41014005550BEAABFCE),
    .INIT_14(256'hFA6ABBE00000056F4EAE6D7CC08AC6BE2FDB69112BFB0046F0EAAAABAFEAAACF),
    .INIT_15(256'hBBDBB7E0000001438AAA6C6EA7DAF23B26EAEFFFCAF1A0111055AFFAAAAAAAF7),
    .INIT_16(256'h2FCAD4F00000053B9AAA748AAAFABB56FEAAAAAAFE88C1455505617FAAAAAAED),
    .INIT_17(256'hFAEBF5E80000043BD2ABA0EABEBAABFAAAAAAAAAAAF8CD30000544003FAAAAFD),
    .INIT_18(256'h6AAAE46800041E8BD2ABA4AAAAAAAAAAAAAAAAAAAAAEF6B10000010014EEAAFB),
    .INIT_19(256'hB2AAA8280014E6EA92AAB36AAAAAAAAAAAAAAAAAAAABCECF4000000554F6EAFF),
    .INIT_1A(256'hFEAAA84C001316AAE6FEC2AAAAAAAAAAAAAAAAAAAAAFCB0510000000051E9FFF),
    .INIT_1B(256'hECAAAC0A0019DAABEEBFC0AAAAAAAAAAAAAAAAAAAAABBD850000000000146CFF),
    .INIT_1C(256'hEBEAA8160111AAABFAFED5AAAAAAAAAAAAAAAAAAAAAAD39C80000000000147FF),
    .INIT_1D(256'hF9AAAE04053B4AAAAADE96AAAAAAAAAAAAAAAAAAFAAFEFFE200000000000057F),
    .INIT_1E(256'hFBBAAA00108C5AABBA9B16AAAAAAAAAAAAAAAAAB9AAACFE3740000000000007F),
    .INIT_1F(256'h1F4AAE00003AAAAB2E9F56AAAAAAAAAAAAAAAAAA9EB8E1EF490000000000004D),
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
    .csa({open_n4366,\U4/Addr [14:13]}),
    .dia({open_n4370,open_n4371,open_n4372,open_n4373,open_n4374,open_n4375,open_n4376,1'b0,open_n4377}),
    .rsta(nRST_pad),
    .doa({open_n4392,open_n4393,open_n4394,open_n4395,open_n4396,open_n4397,open_n4398,open_n4399,\U4/ROM0/inst_doa_i0_006 }));
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
    .INIT_00(256'hB2AB9EFAAAAAAAAAAAFBAFAAABF0AABEAAFEAAAAAAAAAAAAAAAAAAAAFEBAEF80),
    .INIT_01(256'hB2ABAFFF7AAAAAAAAAB2BFBEAFDA6AFEAAF8EAAAAAAAAAAFFAABEFFBA801AF7F),
    .INIT_02(256'hAAAAB3AB4AAAAAAAAAF6BF9AAF6E2ABEAFE3AAAAAAAAEBEEF004ABB00BEFE3FF),
    .INIT_03(256'hAEAABFAF9AAAAAAAABFEAFFAB93B5AAEBF9EAAAAAAFFB06EBFBA15AEAAAB4FFF),
    .INIT_04(256'hBEBAAABABAAAAAAAAACAAEAAADB79ABAAF1AAAAAABE0AEFEAE14EEAAAAEDFFFF),
    .INIT_05(256'hBEEAAFBAAAAAAAAAAACAAAAAF4FACEFAFF6AAAAAAF6BBEB802EEAAAAABE7FFFF),
    .INIT_06(256'hBEF2AF1AAAAAAAAAAAFABFAAB4FCB2FAFBAAAAAAAAFEFB02FEEAAAAAAB3FFFFF),
    .INIT_07(256'hAEA6AA9AAAAAAAAAAF2AFBAAC27EA2EEFEAAAAAAAABC32FFBAAAAAAAA8FFFFFF),
    .INIT_08(256'hB2E6ABCEAAAAAAAAAA6AE8AACF3E32FBFAAAAAAAEAC2FFFBAAAAAAAAB904EBFF),
    .INIT_09(256'hA2F7AAFEAAAAAAAAAB6AFAAF8FBFA9BFFEAAAAAFB5FFFEEAAAAAAAAAAEBEBBFF),
    .INIT_0A(256'hB2F9AABAAAABAAAAAF6AEAAF2F9FE9FFEAAAAAAB7FFFBAAAAAAAAAAAABBFFFFF),
    .INIT_0B(256'hF6B8AAAAAAAAAAAABEEAB2AE1FBFF8FFEAAAAAB3FFFBAAAAAAAAAAAAAA3ED57F),
    .INIT_0C(256'hE2B9AAAAAABAFEAABCAAF6FB67B7AC3FAAAAABFFFEEAAAAAAAAAAAAAAB7FFFFF),
    .INIT_0D(256'hE3A9ABEAAABFBEAAADAAEABD3DF3BC3FEAAABFFFFEAAAAAABEAAAAAAAA9FFFFF),
    .INIT_0E(256'hEDBDEBFAAAAAAEFAACAAAEFCFBABFB3EAAABFFFFFFFFFFFFFFEFAAAAAAB3FFFF),
    .INIT_0F(256'hEDAA6AFFEAAABBFAADABCBFCFF6DFE7FAAABFFFFFFFFFFFFFFFFFBAAAAAAFFBF),
    .INIT_10(256'hFCAF2AFFEEAAFFFFFFAACAE0FBACBE7AAABFFEBEFFFFFFFFFFFFFFEEAAAFDF9F),
    .INIT_11(256'h38AB6BFFFEEAFFFFF6AABBF0C2907F7EBFFAEF01FFFFFFFFFFFFFFFFBAABF7AD),
    .INIT_12(256'hC8EF2BFFFFEEBFFEA6ABFFA504C00F3AEDAA414BFFAABFFFFFFFFFFFBEEAFC3A),
    .INIT_13(256'hE96B9AFFFFFFBBBF42AAFBA5870C96BE8616A59501011FFABFFFFFFAAAEAAB3A),
    .INIT_14(256'hBC2B9ABFFFFFFF91E2ABAFDFE792F45B143A97AB9140EFF95EEAAAAAAAAAABAA),
    .INIT_15(256'hAA6ACAFFFFFFFB0BA6ABFFCFBCA3EC005AFFEFFEE05ABFEBEABBEAAAAAAAAAFE),
    .INIT_16(256'hEAFBFEBFFFFFFF87E6ABBE2FFBEFFAFFFFFFFFFFFFE02BFFFFEECBBAAAAAAAFA),
    .INIT_17(256'h6AEAEEAFFFFFEFC7BEABBE3FFFFFFFFFFFFFFFFFFFEB13BFFFFFAFFBEAAAAAFE),
    .INIT_18(256'hDAAAEFBFFFFEF16FEEAAFA3FFFFFFFFFFFFFFFFFFFFFA84BFFFFFFFBABBAAAFE),
    .INIT_19(256'h9EAAAFEFFFFB5AFEFEBAB8FFFFFFFFFFFFFFFFFFFFFE0044FFFFFFFFEB4FAAFE),
    .INIT_1A(256'hA2AAAFEFFFED4FFE9AEAFDFFFFFFFFFFFFFFFFFFFFFFB4BEFFFFFFFFFFB07AFF),
    .INIT_1B(256'hF3AAAFFBFFFE7FFF9AEBFEFFFFFFFFFFFFFFFFFFFFFFBF2FFFFFFFFFFFFF87FF),
    .INIT_1C(256'hE9AAABFBFFBFBFFFDAABFFFFFFFFFFFFFFFFFFFFFFFEFBF2FFFFFFFFFFFFEC7F),
    .INIT_1D(256'hFF6AABFFFEC6BFFF8AEAFFFFFFFFFFFFFFFFFFFFFFFE9FE8BFFFFFFFFFFFFEFF),
    .INIT_1E(256'hFE6AAFFFFE413FFE8AEBAFFFFFFFFFFFFFFFFFFFABFA2BD01FFFFFFFFFFFFFFF),
    .INIT_1F(256'h2FFAAFFFFFA5BFFF9BEFBFFFFFFFFFFFFFFFFFFFB2FB3BF5C7FFFFFFFFFFFFE6),
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
    .csa({open_n4425,\U4/Addr [14:13]}),
    .dia({open_n4429,open_n4430,open_n4431,open_n4432,open_n4433,open_n4434,open_n4435,1'b0,open_n4436}),
    .rsta(nRST_pad),
    .doa({open_n4451,open_n4452,open_n4453,open_n4454,open_n4455,open_n4456,open_n4457,open_n4458,\U4/ROM0/inst_doa_i0_007 }));
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
    .INIT_00(256'h3FBB2BFFFEAFAFFF2A74BBFFFFFFFFFFFFFFFFEAF28AB3E711FFFFFFFFFFFFB3),
    .INIT_01(256'hF2BA4B3FFE64BEBB7A25AFFFFFFFFFFFFFFFFFEE8B8433AC93FFFFFFFFFFFFEF),
    .INIT_02(256'hAE0B0A3FFFB6BEBBDBBB4FFFFFFFFFFFFFFFFFEFD9F136BF47FFFFFFFFFFE7BE),
    .INIT_03(256'hAEE2F63FFAF6BEB9ECFA9FFFFFFFFFFFFFFFFFEBF9DEAEBBB2FAFFFFFFFE8D7F),
    .INIT_04(256'hAAEECF3FE537FEB868C26FFFFFFFFFFFFFFFFFEAF9DC5AEA945AFFFFFFFFF57F),
    .INIT_05(256'hACBECCFFFE9FEEBB3DE7AFFFFFFFFFFFFFFFFFEAF97AEBEAAB37FFFFFFFFA282),
    .INIT_06(256'hAEAFBA8FCA3FFFAA49FC0FFFFFFFFFFFFFFFFFEAF9D4FEEAEC79FFFFFFFFBA6C),
    .INIT_07(256'h6CBFB64EACEBFBEE4FCE5FFFFFFFFFFFFFFFFFFFEF64FBABA87CFFFFBE1FFFF3),
    .INIT_08(256'hBF13A29FECBEAFEE2EDC23FFFFFFFFFFFFFFFFFFEFEBBBA9FB3BFFFFFCE9FFFA),
    .INIT_09(256'hB384EEBE8CBFFFFE73FB06FFFFFFFFFFFFFFFFFFEFD7BA1846BEFFFFFECADFFF),
    .INIT_0A(256'hB6C62CFEDFFFEAF8A66297FFFFFFFFFFFFFFFFFFEFAFD72FE8E77FFFFE9B7CFE),
    .INIT_0B(256'hEBB618BE83FE6C2CF7C50C2FFFFFFFFFFFFFFFFFEFFB19BABED8DFFFFAE1F47F),
    .INIT_0C(256'hFEFBD7F887BBBC7C7356F2ABFFFFFFFFFFFFFFFFFFECB2EFFFEF4FFFFFF97BFE),
    .INIT_0D(256'hFC3BED7BC7B82AEB721D87CABFFFFFFFFFFFFFFFFAF6EFFFFFE86FFFFFEB5EFF),
    .INIT_0E(256'hFB4E9F7BDEF612858078ABD3BFFFFFFFFFFFFFFFFAA1A2FFEBE57FFFFFEE97FF),
    .INIT_0F(256'hFFA8EFFF2FC001204767CEEFBFFFFFFFFFFFFFFEEF93CAFFEBBA37FFFFFEFFFF),
    .INIT_10(256'hFFF6DD5F2FD14B6162E468B9BFFFFFFFFFFFFFFEBA19AABFEBAC5BBFFFFFB5FF),
    .INIT_11(256'hFFC6A7332B801EFCF739C4687FEFFFFFFFFFFFEA9D7BBFFFEBEFABFFFFFFE47F),
    .INIT_12(256'hFFF168C23A80EAA0BB824C72EFFBBFFFFFFFFFEA14BBFFFFFFEBE3FFFFFFFCFF),
    .INIT_13(256'hFFEE746D9B91AFF8F410D54CCAFBBFFFFFFFFEAD16FFEABFFFEF94FFFFFFFE7F),
    .INIT_14(256'hFFFC5B86CBD7FFF9C3AE0C568AFFABFAFFFFFEB3CEEFFAFAFBFF0FFFFFFFFFFF),
    .INIT_15(256'hFFFF3E004FCDFFFC8F282136DEBEFFFFFFFFFBCE61EAAAFEEBFF9BFFFFFFFFFF),
    .INIT_16(256'hFFFE89BF2FCBFFFB8CFF9A7AD8BAABFEFFFFEEB4F7F8393BABFFB9FFFFFFFFFF),
    .INIT_17(256'hFFFFCFD43A8FFFFA677FF8D56ABD2EBABFEFBAC62D6FFEA857AFF2AEAFFFFFFF),
    .INIT_18(256'hFFFFFB029B81FFFF53FFB78A653A6EEFBFEABD6D1F140B05EBAF9277FFFFFFFF),
    .INIT_19(256'hFFFFF46FC795FFFFAFFE61EA9D9EEEB2BFFAE6277000059B5EBF8D21AFFFFFFF),
    .INIT_1A(256'hFFFFFC497785FFFE47FE1F7EC77CAFB9AFFB1CA0004B1701F3BFA86597FFFFFF),
    .INIT_1B(256'hFFFFF12AF691FFFEAFFFFEFE031B2FE7EEB8980626FFFF8E18EABF45FFFFFFFF),
    .INIT_1C(256'hFFFFE1909AAFFFFEFFFDFBBFC2F07FF7AB85A61811AAAAEF416AB8A30FFFFFFF),
    .INIT_1D(256'hFFFFF1067AAFFFFFD7FD0F7F9BF0FFCCAFED9117FFFAAF5BC2EFC8AFA3FFFFFF),
    .INIT_1E(256'hFFFFF0D28EB1FFFFAFF94D3FAB4CABC8EFBD0BCDFFFFFFEA95FFFBF7E3FFFFFF),
    .INIT_1F(256'hFFFFEEC5FEEFFFFFCFF8913FF5F8AAE9C29A79ADFFFFFFFD13FAA2C383FFFFFF),
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
    .csa({open_n4484,\U4/Addr [14:13]}),
    .dia({open_n4488,open_n4489,open_n4490,open_n4491,open_n4492,open_n4493,open_n4494,1'b0,open_n4495}),
    .rsta(nRST_pad),
    .doa({open_n4510,open_n4511,open_n4512,open_n4513,open_n4514,open_n4515,open_n4516,open_n4517,\U4/ROM0/inst_doa_i1_000 }));
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
    .INIT_00(256'hA7BBAB55546155553A8B755555555555555555547170090FE55555555555556F),
    .INIT_01(256'hAB47EBD554B355516ACA255555555555555555541C0DB152E95555555555556A),
    .INIT_02(256'hAAEFAAD5542D55508B500555555555555555555538766D54DD55555555554D3E),
    .INIT_03(256'hAEBADBD550CD5553DF50955555555555555555554335C5550A5555555554083F),
    .INIT_04(256'hAAEEB3D5495555539F41D555555555555555555541B1355529B5555555554C0F),
    .INIT_05(256'hAABEF2D552B55550CB719555555555555555555552D6555500ED555555550E8A),
    .INIT_06(256'hAD2FB4B539955550AB213555555555555555555552C0555544FB55555555113E),
    .INIT_07(256'h2ACFA8B44E555554ED62B555555555555555555554205501537C555554B5556E),
    .INIT_08(256'hCBFBBD3558555554AD722D5555555555555555555471415454BD555555735578),
    .INIT_09(256'hBADAED544B555551BC2085555555555555555555542D559910305555556F357E),
    .INIT_0A(256'hD2A3AB5465554050FD62F5555555555555555555546526254514D5555521A27E),
    .INIT_0B(256'hFCA26F144D543841ED8CFCD5555555555555555555548C955539B555500F9E7F),
    .INIT_0C(256'hFEA3DB53AD55456B69CD5F1555555555555555555553A6555544C5555542F97F),
    .INIT_0D(256'hF97FE6D12D5280564CDA32B55555555555555555554BE955554385555540BFFF),
    .INIT_0E(256'hFFECDCD0D547043D9CEF43CC55555555555555555519AD55554A555555547FFF),
    .INIT_0F(256'hFE7A3555D528001E5BAE21A455555555555555555536B55555546D5555540BFF),
    .INIT_10(256'hFFFF5AB095289A800ABCA7EF5555555555555555548955555552D155555516FF),
    .INIT_11(256'hFFBB03E8952934478CA70DB8D5555555555555552670555555541155555549FF),
    .INIT_12(256'hFFE4C36D8528554DD496B3A255555555555555548D95555555550155555552FF),
    .INIT_13(256'hFFFAC5C1A53CFFFBD7F04B65B5555555555555537241555555555B55555554FF),
    .INIT_14(256'hFFFA2E34B539FFFF274411AB855455555555554FDD1555555554E5555555557F),
    .INIT_15(256'hFFFF0BAAB533FFFF7FEA009E6555D5555555552B7B40005555551D555555557F),
    .INIT_16(256'hFFFF88119533FFFB29FEB855CF519555555554213806F90505554B555555557F),
    .INIT_17(256'hFFFFB05BD537FFFF997FFFC40C541555555551C1F9155001155549440555557F),
    .INIT_18(256'hFFFFE8A89539FFFF1AFFAFB8AAD255575555136FE41410FB0D552C2D1555557F),
    .INIT_19(256'hFFFFF4108D39FFFF6FFFF5ED50B3550255540877C000012CB5553D2E4555557F),
    .INIT_1A(256'hFFFFFC2F2D29FFFFE7FE18FB8AD255095550770000EBE8002955093CED55557F),
    .INIT_1B(256'hFFFFF5716D29FFFEC7FB9E7FC1F6D54D5551B004F155544800550E435555557F),
    .INIT_1C(256'hFFFFE5CB651FFFFF97FF9F7FB1ACD50955710183EB55554542D50DACA555557F),
    .INIT_1D(256'hFFFFE111250FFFFFBFFB5F3F84B0555B546573BFFFFFFBA4045569D4F155557F),
    .INIT_1E(256'hFFFFE1C36513FFFFAFFB177FA72C550B448B2A9BFFFFFFEC9B5548CEB155557F),
    .INIT_1F(256'hFFFFF9C1D550FFFFBFFBC17FEEE8542B2729F8E9FFFFFFFE915510A05155557F),
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
    .csa({open_n4543,\U4/Addr [14:13]}),
    .dia({open_n4547,open_n4548,open_n4549,open_n4550,open_n4551,open_n4552,open_n4553,1'b0,open_n4554}),
    .rsta(nRST_pad),
    .doa({open_n4569,open_n4570,open_n4571,open_n4572,open_n4573,open_n4574,open_n4575,open_n4576,\U4/ROM0/inst_doa_i1_001 }));
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
    .INIT_00(256'hD4CEFFFFFED6AAABDEEBCAAAAAAAAAAAAAAAAAAB9CEDE6B82BFFFFFFFFFFFFED),
    .INIT_01(256'hED5EBFFFFEDEAAAFDEEBDAAAAAAAAAAAAAAAAAABA327DEAF0BFFFFFFFFFFFFBE),
    .INIT_02(256'hFE96BEFFFFDAAAAF3FFAFAAAAAAAAAAAAAAAAAAAE39E9AABE7FFFFFFFFFFEFEB),
    .INIT_03(256'hFBEFEEFFFB3AAAAE3BFB2AAAAAAAAAAAAAAAAAAAB8EA3AAAE4FFFFFFFFFEB2EA),
    .INIT_04(256'hFFBBBEFFEBBAAAAE7BBA2AAAAAAAAAAAAAAAAAAABA6FEAAAE03FFFFFFFFFE0FA),
    .INIT_05(256'hFBEBBBFFFD0AAAAE7BCE6AAAAAAAAAAAAAAAAAAAAE29AAAAFC4FFFFFFFFFAD2F),
    .INIT_06(256'hFBFAFFBFB56AAAAE3BDBEAAAAAAAAAAAAAAAAAAAAF6FAAAABE53FFFFFFFFBAF3),
    .INIT_07(256'hFB7AEEBEF5AAAAAA3F8C6AAAAAAAAAAAAAAAAAAAAACFAAFEAF92FFFFFEBFFFED),
    .INIT_08(256'h7F9EEFBFF3AAAAAA7F98DAAAAAAAAAAAAAAAAAAAAA8AAEAEABD7FFFFFB5BFFFE),
    .INIT_09(256'hCFA3BFFEB6AAAAAA6FDC2AAAAAAAAAAAAAAAAAAAAA9AAA23FBD6FFFFFF55BFFF),
    .INIT_0A(256'hFFACFBFE8AAABFAB6ECD1AAAAAAAAAAAAAAAAAAAAA9AE8DAAEA4FFFFFF9E5AFF),
    .INIT_0B(256'hF7ECBBBFFAAA86BB6F3797AAAAAAAAAAAAAAAAAAAAABB36AAAE13FFFFAE3E1FF),
    .INIT_0C(256'hE9FD2FFB1AAAAF80EA22A4EAAAAAAAAAAAAAAAAAAAAF4DAAAABC2FFFFFF8FF7F),
    .INIT_0D(256'hFAED5AFB1AAFFFA8EE26FD6AAAAAAAAAAAAAAAAAAABD56AAAAB86FFFFFEE3FFF),
    .INIT_0E(256'hFE3F36FB6AB9ABFF2A56BD7AAAAAAAAAAAAAAAAAAAE35AAAAAB87FFFFFFF8FFF),
    .INIT_0F(256'hFFDBDFFE2AE00040AC40FB5AAAAAAAAAAAAAAAAAAA9D6AAAAAAA4FFFFFFEF7FF),
    .INIT_10(256'hFF9BB2BE6AE03440ED5E5F56AAAAAAAAAAAAAAAAAA32AAAAAAAE1BFFFFFFA9FF),
    .INIT_11(256'hFFA7AC4E6AE0BEF96C5EE7D3AAAAAAAAAAAAAAAAECCEAAAAAAAADBFFFFFFEA7F),
    .INIT_12(256'hFFEAF8D66AE1FFEB7D45E84DAAAAAAAAAAAAAAABA36AAAAAAAAADBFFFFFFFA7F),
    .INIT_13(256'hFFFCEFB26AF1FFFB68017FD36AAAAAAAAAAAAAAF8DAAAAAAAAAA83FFFFFFFEFF),
    .INIT_14(256'hFFFAB4FD6AF5FFFB2D7C13E53AAAAAAAAAAAAABC22AAAAAAAAAB97FFFFFFFFFF),
    .INIT_15(256'hFFFEF4786AF1FFFB347AC0799AAA2AAAAAAAAAF49EBFFFAAAAAAB7FFFFFFFFFF),
    .INIT_16(256'hFFFFB36B6AF5FFFF337FB40F36AA6AAAAAAAABCB555407AAFAAAB3FFFFFFFFFF),
    .INIT_17(256'hFFFFB36E2AF5FFFE66FFFB06F3AFEAAAAAAAAE2C07AAAAABFAAAA3EEAFFFFFFF),
    .INIT_18(256'hFFFFF21F2AF3FFFEA7FFEFB449ACAAA8AAAAE8D7FABEAFFEB2AAE7CFBFFFFFFF),
    .INIT_19(256'hFFFFFFCF7AF3FFFFD7FE8BFF1B68AAFDAAABA6C900000013EAAAE2C96FFFFFFF),
    .INIT_1A(256'hFFFFF797DAE3FFFE8FFEBEFF0629AAE2AAAE9940041404015EAAF2C70FFFFFFF),
    .INIT_1B(256'hFFFFFED69AE3FFFFDFFF7BFE8789AAA2AAAB30004FFFFFB413AAF48EDFFFFFFF),
    .INIT_1C(256'hFFFFEE619AE5FFFFDFFB7EFF85C7AAA6AAFBC43AABFFFFEE81AAF35B9FFFFFFF),
    .INIT_1D(256'hFFFFEAFDDAF1FFFF8FFBBEFFF563AAE6ABDA0AAFFFFFFEBF83AAB72B0BFFFFFF),
    .INIT_1E(256'hFFFFEA3D1AF9FFFFDFFBBBFFF437AAF6BB70BF33FFFFFFFE16AAB7394BFFFFFF),
    .INIT_1F(256'hFFFFF23E0AADFFFFBFFB2BFFE113ABD6ED92FB7BFFFFFFFA1EAAFF6DEBFFFFFF),
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
    .csa({open_n4602,\U4/Addr [14:13]}),
    .dia({open_n4606,open_n4607,open_n4608,open_n4609,open_n4610,open_n4611,open_n4612,1'b0,open_n4613}),
    .rsta(nRST_pad),
    .doa({open_n4628,open_n4629,open_n4630,open_n4631,open_n4632,open_n4633,open_n4634,open_n4635,\U4/ROM0/inst_doa_i1_002 }));
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
    .INIT_00(256'hE7757C2801C8A2ABD5B642AAAAAAAAAAAAAAAAAAD22090A5420200000000005C),
    .INIT_01(256'hDE855C8201F0AAABF5B64AAAAAAAAAAAAAAAAAAA1ABEDAA9D60280000000005D),
    .INIT_02(256'h7DFDDFA20068AAAB940CC2AAAAAAAAAAAAAAAAAA9058C2AA5800000000001A7D),
    .INIT_03(256'h7DDD3F22078AAAA996870AAAAAAAAAAAAAAAAAAAA48B2AAA97800000000132D5),
    .INIT_04(256'hFFDFE7A2B992AAA9340F28AAAAAAAAAAAAAAAAAAAB058AAA9BE0000000001A95),
    .INIT_05(256'hFDDFE50A05CAAAA9BE4B08AAAAAAAAAAAAAAAA8AA3A4AAA8A1D800000000753F),
    .INIT_06(256'h587F494A7A2AAAABFCEB2AAAAAAAAAAAAAAAAAAAA94C8AAA8D7600000000467D),
    .INIT_07(256'hDD3D7B6B12AAAAA172558AAAAAAAAAAAAAAAAAAAAAEEA8A889538000A1E20077),
    .INIT_08(256'h1E67726298AAAAA950C462AAAAAAAAAAAAAAAAAAAAC88A2EA27A00000066207A),
    .INIT_09(256'h771DD0A310AAAAA9584B0AAAAAAAAAAAAAAAAAAAAAC2A113726180000014E07F),
    .INIT_0A(256'hB5457CA948A820ABF0E558AAAAAAAAAAAAAAAAAAAA682EEAA409800028C1E57F),
    .INIT_0B(256'hF9647CE8E282D423FB1EFE8AAAAAAAAAAAAAAAAAAA001B228A19C0000595BCFF),
    .INIT_0C(256'hF5EDBE2F42A08D567F3036AA2AAAAAAAAAAAAAAAA82B46AAAAA1B8000287F8FF),
    .INIT_0D(256'hF855E726CAA2000E1BB897AAAAAAAAAAAAAAAAAAAAADD2AAAAADB0000299FF7F),
    .INIT_0E(256'hFDF39927E29DAA05117A07422AAAAAAAAAAAAAAAA831C2AAAAA4820002825FFF),
    .INIT_0F(256'hFEDEC0A32A90029C35F60BE2AAAAAAAAAAAAAAAAAA7D2AAAAA20DA0002A195FF),
    .INIT_10(256'hFFC4BFE3AAB93D281F6DC1F2AAAAAAAAAAAAAAAAA33A2AAAAA29A680002AEFFF),
    .INIT_11(256'hFFFEED598298CBA5196AFCF02AAAAAAAAAAAAA8A8A42AAAAAAAAAC00002299FF),
    .INIT_12(256'hFFE30C9B0298201109AEA7EC2AAAAAAAAAAAAA8A312AAAAAAAAAA4000000247F),
    .INIT_13(256'hFFFD26090A81F7FD2F404B8B8AAAAAAAAAAAAAA94C2AAAAAAAAA34000000017F),
    .INIT_14(256'hFFFC74BB8A83FFFCE480003D82AA8AAAAAAAAAA59802AAAAAAAA40000000007F),
    .INIT_15(256'hFFFE9D87088DFFFE575E01AEE2ABAAAAAAAAAA96E0AAAAAAAAAA3A20000002FF),
    .INIT_16(256'hFFFF1200208DFFFCD37FF82130A90AAAAAAAAA60480BF70882AA3608A000007F),
    .INIT_17(256'hFFFFE0E18A07FFFD32FFFF2E9AA70AA8AAA82B297FA828A95AAA94117800007F),
    .INIT_18(256'hFFFFF9410201FFFEBDFFDDDB7C248AAC2AAA0E588034A0A8B0AA987A4800007F),
    .INIT_19(256'hFFFFFD8B6283FFFED7FFE1F0A90EAA962AAA386C080000D2A2AA90D69000007F),
    .INIT_1A(256'hFFFFF771C29BFFFF67FE937F35AEAABA8AA84E200375D280CA2892F77A80007F),
    .INIT_1B(256'hFFFFF5404099FFFF07FF1CFF08642A902AA3680340AAAAB200AA9C0A0000007F),
    .INIT_1C(256'hFFFFEF54CA97FFFF2FFF365FC1742A92AA92832F5CA80212842A93CA4800007F),
    .INIT_1D(256'hFFFFE95BC2BFFFFFFFFF16FF83E0AA78A0CACDFFFFFD57C2A0AA9B83EC00007F),
    .INIT_1E(256'hFFFFE15C6ABDFFFFD7FDAD7FCEDC2A58AB36D53FFFFFFFFA802A9B2F4C00007F),
    .INIT_1F(256'hFFFFF95DA8A9FFFFF7FDA35FFD782A78ACDF5BD9FFFFFFFF90AABB2AC400007F),
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
    .csa({open_n4661,\U4/Addr [14:13]}),
    .dia({open_n4665,open_n4666,open_n4667,open_n4668,open_n4669,open_n4670,open_n4671,1'b0,open_n4672}),
    .rsta(nRST_pad),
    .doa({open_n4687,open_n4688,open_n4689,open_n4690,open_n4691,open_n4692,open_n4693,open_n4694,\U4/ROM0/inst_doa_i1_003 }));
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
    .INIT_00(256'h0B1555D7FFA7F7FE3D559FFFFFFFFFFFFFFFFFFF8B51EFF055FDFFFFFFFFFFF2),
    .INIT_01(256'h709FD5FDFF8DFFFEBDD71FFFFFFFFFFFFFFFFFFF6E6B27FC37FD7FFFFFFFFFD7),
    .INIT_02(256'h5727D55DFF1FFFFE7DFF37FFFFFFFFFFFFFFFFFFC58597FF2FFFFFFFFFFFFFD5),
    .INIT_03(256'h557D7DDDFE7FFFFCDF7EFFFFFFFFFFFFFFFFFFFFF95E5FFFE3FFFFFFFFFFE575),
    .INIT_04(256'h55555DDD5E6FFFFCDFFE7FFFFFFFFFFFFFFFFFFFFC50DFFFC07FFFFFFFFFE37D),
    .INIT_05(256'h57557F75FABFFFFC75B4DFFFFFFFFFFFFFFFFFFFFED9FFFDF21FFFFFFFFFF255),
    .INIT_06(256'hD5D55F55E0FFFFFED5BCDFFFFFFFFFFFFFFFFFFFFC99FFFFF8AFFFFFFFFFFFCD),
    .INIT_07(256'h76755555C17FFFF6F7B8DFFFFFFFFFFFFFFFFFFFFF19FFFDFC8DFFFF5FFDFFFB),
    .INIT_08(256'hF5355DFD6FFFFFFCD73937FFFFFFFFFFFFFFFFFFFF95DF79772DFFFFFEBFDFFD),
    .INIT_09(256'h15EF575DE5FFFFFE7F10D5FFFFFFFFFFFFFFFFFFFFB7F4468F05FFFFFE837FFE),
    .INIT_0A(256'hE773D5579DFFF5FC7F1027FFFFFFFFFFFFFFFFFFFF1FF19FF3C3FFFFD71C95FF),
    .INIT_0B(256'hEFDB775797FF89D4F6C92B7FFFFFFFFFFFFFFFFFFFFF4677FFC85FFFFFC7CBFF),
    .INIT_0C(256'hF150FDD697FFF223F6CF43FFFFFFFFFFFFFFFFFFFFFCB9FFFFF8DFFFFD717CFF),
    .INIT_0D(256'hFFF2B75EB7F5555BF4C5CAFFFFFFFFFFFFFFFFFFFFF887FFFFFA7FFFFD7C5FFF),
    .INIT_0E(256'hFEF66F5E17C8DDD85E2D7A377FFFFFFFFFFFFFFFFD6497FFFFF07DFFFD7F3FFF),
    .INIT_0F(256'hFF3D3F5E5FC800A17A81DEB7FFFFFFFFFFFFFFFFFFA27FFFFFF43DFFFD5FC5FF),
    .INIT_10(256'hFF95EFFCFFE8480170BABC07FFFFFFFFFFFFFFFFF4CD7FFFFFFCBD7FFFD57B7F),
    .INIT_11(256'hFFCDFA3CD7C95FF8F095A1A57FFFFFFFFFFFFFFFDB95FFFFFFFF97FFFFDD7CFF),
    .INIT_12(256'hFFFFFB2C57C97FF6FA29DA33FFFFFFFFFFFFFFFF4C5FFFFFFFFFBFFFFFFFDD7F),
    .INIT_13(256'hFFFB73E4DFCB7FFCFAA89426DFFFFFFFFFFFFFFC1BFFFFFFFFFF8DFFFFFFFF7F),
    .INIT_14(256'hFFFF4B4ADFC9FFFED2F007E2F7FF7FFFFFFFFFF24757FFFFFFFF27FFFFFFFFFF),
    .INIT_15(256'hFFFFC852DFC1FFFEEAF500731FFEFFFFFFFFFFC395FFFFFFFFFF4DDFFFFFFD7F),
    .INIT_16(256'hFFFFCEF4FFC1FFFCC4FF481665FCDFFFFFFFFF3E02022AD7D7FF6FF75FFFFFFF),
    .INIT_17(256'hFFFFC4345FCBFFFECDFFFCA1E7F05FFFFFFFFEF0A277FF5487FFE77FD7FFFFFF),
    .INIT_18(256'hFFFFECB477CDFFFFCD7FFFC89173DFF37FFFD10D5DC157D5C7FFC59FF7FFFFFF),
    .INIT_19(256'hFFFFE0B4B7CDFFFFA7FF17F69EDB7FC37FFF6F12A8000227D7FFCF125FFFFFFF),
    .INIT_1A(256'hFFFFE22E37CDFFFFB7FF5D7C86D3FFEFFFFD9A800220A000BFFFC7021D7FFFFF),
    .INIT_1B(256'hFFFFE22717C5FFFF37FEDDFFA5117FEFFFF448023FFFFF400DFFC3151FFFFFFF),
    .INIT_1C(256'hFFFFF009BFCBFFFF9FFCFFFFA9A17FCFFFC780F5F5FFFDF7A17FCC173FFFFFFF),
    .INIT_1D(256'hFFFFFE089FE1FFFF9FFED75FCAC7FF0DF5B6BD7FFFFFFDDF0DFFC6F497FFFFFF),
    .INIT_1E(256'hFFFFFE0A97E3FFFF97FE545FC0637F05F441D6E5FFFFFFF78DFFC47297FFFFFF),
    .INIT_1F(256'hFFFFEE0835F17FFFDFFE5E7FE88F7F25F987FC5DFFFFFFFE05FFE453B7FFFFFF),
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
    .csa({open_n4720,\U4/Addr [14:13]}),
    .dia({open_n4724,open_n4725,open_n4726,open_n4727,open_n4728,open_n4729,open_n4730,1'b0,open_n4731}),
    .rsta(nRST_pad),
    .doa({open_n4746,open_n4747,open_n4748,open_n4749,open_n4750,open_n4751,open_n4752,open_n4753,\U4/ROM0/inst_doa_i1_004 }));
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
    .INIT_00(256'h2EBFBEFFFFB90D50AE35955555555555555555501625C84DC4FFFFFFFFFFFFF2),
    .INIT_01(256'hB6DB7EFAFEA355516EA795555555555555555554AF04DD5747FBFFFFFFFFFFAB),
    .INIT_02(256'hEE0F4E3EFEA555550AEE1D555555555555555554374B895593BFFFFFFFFFAFFA),
    .INIT_03(256'hFEB6F62BEFE55552BDBEF55555555555555555555670015519BFFFFFFFFFB83F),
    .INIT_04(256'hFEFECA3FE8295553ED96D5555555555555555555527E3555283FFFFFFFFFF43F),
    .INIT_05(256'hF9FBCDBFAEF55556B9A2F555555555555555555551C05557073FFFFFFFFFA3D7),
    .INIT_06(256'hEFBFEECFAA45554009D031555555555555555555533B5555522BFFFFEFFEFF6E),
    .INIT_07(256'h39BBA34EED1555595A8F3555555555555555555550DB5006422DFFFFBEEFFEF7),
    .INIT_08(256'hFE07E7AFBF5551542E8C2D5555555555555555555080647E08BFFFFFEDFBBFBB),
    .INIT_09(256'hBBD4FBAF87555142E7FE0E55555555555555555550AD5CB6FD87FFFFFA9EFFBE),
    .INIT_0A(256'hA3932CFFEB551E43A2610555555555555555555550150A04460BFFFFFB8F7DFF),
    .INIT_0B(256'hFEB31CBE0D5086DBB3D3C99555555555555555555540E80D0039DFFFFEE5B17F),
    .INIT_0C(256'hEAAF92FAAD5112D076559B9555555555555555555543315555549FFFFFF96EFE),
    .INIT_0D(256'hF96FEC2EED1AFFB276CE269555555555555555555501C55555410FFFFFFE1EFF),
    .INIT_0E(256'hFB4ECE7EAD643D3F402E8249D55555555555555542CCCD55554F3FFFFFFE97FF),
    .INIT_0F(256'hFEE8BFFB9530003B432922E0555555555555555540421555554C2FFFFFFFFBFF),
    .INIT_10(256'hFFA2DABB05001A7026A2C64555555555555555555D1BD55555570BFFFFFFE1FF),
    .INIT_11(256'hFFC2EFFA6D314FBEA4235E62D5555555555555552C0655555554FBFFFFFFED7F),
    .INIT_12(256'hFFE52116ED20FFE0AFC077A21555555555555550B6515555555462FFFFFEFD7F),
    .INIT_13(256'hFFAF31DDA534BAA8B111BFCDE555555555555556B3055555555570FFFFFFFE7F),
    .INIT_14(256'hBFF85C72B527FFF9D6FC068AB95415555555541DA8BC55555554EFFFFFFFFFFF),
    .INIT_15(256'hFFFF3CED3535FFF98F2860CFF5551555555555222E5455055155BFFFFFFFFEAA),
    .INIT_16(256'hFFFE89DC1137FFFEC9FFDA3403506555555545E45C00A0957D55BBBFFFFFFFFF),
    .INIT_17(256'hFFFFD54B9533FFFA377BF8803F0FF555555515D1B0F55445BD555BAFFFFFFFFF),
    .INIT_18(256'hFFFFF98F7D25FFFF06FBDADE369CB541D55463CBB5FAF02A59552A7BFFFFFFFF),
    .INIT_19(256'hFFFEE0670D35FFFFFFFF51EB8C23557D9551A71E200004967D553D25BFFFFFFF),
    .INIT_1A(256'hFFFFE6938D31FFFF07FFFA7EC306554E1557B8E0150B5301C555623D1FFFFFFF),
    .INIT_1B(256'hFFFFE6DD0D3DFFFFBFFC1A7F1620D51D551E581132BFFBCE1A55667F4FFFFFFF),
    .INIT_1C(256'hFFFFE7EF316BFFFFAFF97E3FC7AED40D552DA22D15AFEEF203C5618C93FFFFFF),
    .INIT_1D(256'hFFFFF2A40053FFFFC7FA7F7FFAFF54BB5A481527FFEFEA5BC05521C923FFFFFF),
    .INIT_1E(256'hFFFFE7B0250DFFFFFFFE40BFF98FD4A219694929FFFFFFFB9755774F53FFFFFF),
    .INIT_1F(256'hFFFFFBA63314FFFF8FFB40BFE47FD592108F3E75FFFFFFFC0F54463E07FFFFFF),
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
    .csa({open_n4779,\U4/Addr [14:13]}),
    .dia({open_n4783,open_n4784,open_n4785,open_n4786,open_n4787,open_n4788,open_n4789,1'b0,open_n4790}),
    .rsta(nRST_pad),
    .doa({open_n4805,open_n4806,open_n4807,open_n4808,open_n4809,open_n4810,open_n4811,open_n4812,\U4/ROM0/inst_doa_i1_005 }));
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
    .INIT_00(256'hE6EBEB000127AAAE6B8E4AAAAAAAAAAAAAAAAAABC4FF7BADF10000000000003B),
    .INIT_01(256'hBB72EA050062AAAF6A091AAAAAAAAAAAAAAAAAAB88D996AA3C0400000000003B),
    .INIT_02(256'hBBFBBB81016AAAAF0B141AAAAAAAAAAAAAAAAAAAB5C70EAA8D4000000000452B),
    .INIT_03(256'hABBBDE94148AAAAB8E45DAAAAAAAAAAAAAAAAAAAAEBE7EAAEB4000000001292A),
    .INIT_04(256'hABABF7800006AAABCA55AAAAAAAAAAAAAAAAAAAAB9382AAABC80000000001C1A),
    .INIT_05(256'hAAAAE6C057AAAAAFDF64EAAAAAAAAAAAAAAAAAAAABE9AAAAEDE0000000004A8E),
    .INIT_06(256'hB86AB0A00CFAAAAFFB242EAAAAAAAAAAAAAAAAAAAB51AAAAB9F800001000047F),
    .INIT_07(256'h2ADAF8E14AEAAAAAED73AAAAAAAAAAAAAAAAAAAAAF15ABFFAA3900000010017B),
    .INIT_08(256'h9EEEB8104DAAAAAFA8722AAAAAAAAAAAAAAAAAAAAE4BAF85FAEC00001060007C),
    .INIT_09(256'hFF9FAC1102AAAAB9F83096AAAAAAAAAAAAAAAAAAAE6ABB9417990000052A007E),
    .INIT_0A(256'hC2A2FA0166AAFFB8EC2022AAAAAAAAAAAAAAAAAAAEDAB21FACB400000561F37E),
    .INIT_0B(256'hF8E27A400AAF017CFC98BCAAAAAAAAAAAAAAAAAAAAAAD97ABEB9A000010B9F7F),
    .INIT_0C(256'hEBA3DF00AAAAAD027D9ABA6AAAAAAAAAAAAAAAAAAAAB75AAAAAE10000047F97F),
    .INIT_0D(256'hF82BE7956ABAFFEE1C4AA6AAAAAAAAAAAAAAAAAAAAE8C6AAAABF90000011FEFF),
    .INIT_0E(256'hFBFD99859AE416BD08EFBF0AAAAAAAAAAAAAAAAAABF9CAAAAAAB400000043FFF),
    .INIT_0F(256'hFE3F2005EAA8005E4BEDB8EEAAAAAAAAAAAAAAAAAFE32AAAAABA200000010FFF),
    .INIT_10(256'hFFAB5804EAA9CB811BA9DF42AAAAAAAAAAAAAAAABFC9AAAAAAABD400000057FF),
    .INIT_11(256'hFFFB4FA0EAB935569EEF8CB0AAAAAAAAAAAAAAAAA65EAAAAAAAE1400000000FF),
    .INIT_12(256'hFFE487FDEAB8400891C4FFB7EAAAAAAAAAAAAAAADD3AAAAAAAAB94000001037F),
    .INIT_13(256'hFFFAC5A0AAA9EFFAD6E04E34AAAAAAAAAAAAAAAB76FAAAAAAAAACA00000000FF),
    .INIT_14(256'hFFFA7DA5AAADFFFB63061CBBDAABAAAAAAAAAAACCFAAAAAAAAAAE0000000007F),
    .INIT_15(256'hFFFF19AEAABBFFFE2EBE01EE7AAA6AAAAAAAAAA33BABFFFAAAAB8C000000007F),
    .INIT_16(256'hFFFE993AEEBBFFFB2CFEE81F46AA6AAAAAAAABF59ABAA02EFAAA98400000007F),
    .INIT_17(256'hFFFFFB8AAABFFFFACD7FFBD009BC6AAEAAAAAEC7B01AAFAF12AAAD100000007F),
    .INIT_18(256'hFFFFEAFF1AA9FFFF5BFFB7A9EAB96AB9AAAAEF5BFF140EFBB2AABD644000007F),
    .INIT_19(256'hFFFFE60F0AADFFFF2FFEB5E8153BAAE5AAAB9C5280000460BAAAA82B5000007F),
    .INIT_1A(256'hFFFFF1274ABDFFFEE7FEFDFE8BAFAAEDAAAF760004EBAD014EAAE27C2000007F),
    .INIT_1B(256'hFFFFE05ECAA9FFFE87FF9B7F80FCAAAAAAB97000A155554C11AAF343F000007F),
    .INIT_1C(256'hFFFFF11BFAEFFFFED7FFFA7FE0A8ABBEAAA504B2BB50041D42AAF18AE400007F),
    .INIT_1D(256'hFFFFE4121AE3FFFFFFFCEF7FD0F1AB8AAFC423DFFFFAAFB057AAB4EB3400007F),
    .INIT_1E(256'hFFFFE505EAE3FFFFAFF8B6BFA139AB82BE4B2BBFFFFFFFED8AAAF02E4400007F),
    .INIT_1F(256'hFFFFE9001EFBFFFFEFF9EEFFEC29ABC3B53CFAADFFFFFFFF96AAE0658400007F),
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
    .csa({open_n4838,\U4/Addr [14:13]}),
    .dia({open_n4842,open_n4843,open_n4844,open_n4845,open_n4846,open_n4847,open_n4848,1'b0,open_n4849}),
    .rsta(nRST_pad),
    .doa({open_n4864,open_n4865,open_n4866,open_n4867,open_n4868,open_n4869,open_n4870,open_n4871,\U4/ROM0/inst_doa_i1_006 }));
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
    .INIT_00(256'h948BABFFFFC7FFFF9AEBFFFFFFFFFFFFFFFFFFFFA8A8F7EB2FFFFFFFFFFFFFED),
    .INIT_01(256'hE94FEAFFFE8BFFFEDAEAFFFFFFFFFFFFFFFFFFFFE322EFFBCFFFFFFFFFFFFFAE),
    .INIT_02(256'hAEC7AAFFFE8FFFFFFBFFBFFFFFFFFFFFFFFFFFFFABBBAFFEB7FFFFFFFFFFEFAA),
    .INIT_03(256'hAAFAFBFFFE2FFFFA3FFE7FFFFFFFFFFFFFFFFFFFF9BEBFFFF1FFFFFFFFFF86EA),
    .INIT_04(256'hAAAABBFFEEBFFFFB3FFF7FFFFFFFFFFFFFFFFFFFFEBABFFFB13FFFFFFFFFE5EA),
    .INIT_05(256'hAEAAFAFFF85FFFFF6BDA7FFFFFFFFFFFFFFFFFFFFB3BFFFFF80FFFFFFFFFEC2A),
    .INIT_06(256'hABAABEBFB07FFFFE2B8ABFFFFFFFFFFFFFFFFFFFFBBBFFFFFE53FFFFFFFFFFB6),
    .INIT_07(256'hEE6AAEBFA1FFFFFE6FD83FFFFFFFFFFFFFFFFFFFFFFBFFFFFA97FFFFFEBFFFEC),
    .INIT_08(256'h6ACABFBFF7FFFFFA2FD8CFFFFFFFFFFFFFFFFFFFFEBBFEAAFE93FFFFFF5BFFFA),
    .INIT_09(256'h9AF2AFFFFBFFFFFB3E893FFFFFFFFFFFFFFFFFFFFECFFB6FABF3FFFFFF05BFFF),
    .INIT_0A(256'hEEEDABFFCFFFFFFE7FCFCFFFFFFFFFFFFFFFFFFFFEBFB9FFEBB4FFFFFE9B0BFE),
    .INIT_0B(256'hF7BCEFFEAFFFBBBF6F36D2FFFFFFFFFFFFFFFFFFFFFEA7FFFFA03FFFFFA7F5FF),
    .INIT_0C(256'hE8F97BFB4FFFEEEDEF67F4FFFFFFFFFFFFFFFFFFFFFB8FFFFFFC7FFFFFE8FB7F),
    .INIT_0D(256'hFFED4EFF4FFAFFF9EA23A93FFFFFFFFFFFFFFFFFFFEF7FFFFFF83FFFFFFA3FFF),
    .INIT_0E(256'hFF6E76FE7FEAFBABBE53F9AFFFFFFFFFFFFFFFFFFFF32FFFFFEC7FFFFFFEDFFF),
    .INIT_0F(256'hFFDADFFF3FA00114FD12BB1FFFFFFFFFFFFFFFFFFF8DBFFFFFFA4FFFFFFFA3FF),
    .INIT_10(256'hFF8BF2BB7FB03000E84F7BFBFFFFFFFFFFFFFFFFFA37FFFFFFFA5FFFFFFFFCFF),
    .INIT_11(256'hFFB7E14B7FA0BFED6D1BB2DEFFFFFFFFFFFFFFFFA9EFFFFFFFFE8FFFFFFFEB7F),
    .INIT_12(256'hFFFFE8937FA0FFEF7C56AD49FFFFFFFFFFFFFFFEE7FFFFFFFFFFDFFFFFFFFBFF),
    .INIT_13(256'hFFFCEAE23FA4FFFB7D502B873FFFFFFFFFFFFFFAD9FFFFFFFFFFD3FFFFFFFEFF),
    .INIT_14(256'hFFFEA6AC3FA1FFFF2D6C17B57FFEFFFFFFFFFFEE67FFFFFFFFFEC7FFFFFFFFFF),
    .INIT_15(256'hFFFFA7283FB1FFFF756A8178DFFFFFFFFFFFFFBD8BFFFFFFFFFFF3FFFFFFFFFF),
    .INIT_16(256'hFFFFA67A7FB1FFFB237FB00FFBFBFFFFFFFFFF8B65511BABFFFFA3FFFFFFFFFF),
    .INIT_17(256'hFFFFB22B3FB5FFFF33FFFF43E3FAFFFBFFFFFE6D0BAFFAAEAFFFF6FFFFFFFFFF),
    .INIT_18(256'hFFFFF30EFFA3FFFFB2FFAFB00CFFFFEFFFFFFDE6BBEBEEABBFFFB38FFFFFFFFF),
    .INIT_19(256'hFFFFEEDFAFA3FFFFC7FF9FEF5BB8FFEFFFFFA2F81000001ABFFFA78C3FFFFFFF),
    .INIT_1A(256'hFFFFFEDAEFA3FFFFCFFE1AFB067DFFE7FFFFDD00044140006FFFF993CFFFFFFF),
    .INIT_1B(256'hFFFFEEF6AFB3FFFECFFB7AFEC2CAFFF7FFFFB0005FFFFEA007FFFCDADFFFFFFF),
    .INIT_1C(256'hFFFFEFB5DFE5FFFF9FFF1EFF91D2FFB7FFAB810BEBFFFBFFC4FFFE6E8FFFFFFF),
    .INIT_1D(256'hFFFFFEACFFF9FFFF9FFA5FBFE537FFE3FFEE5BBFFFFFFBAE83FFBF3F9FFFFFFF),
    .INIT_1E(256'hFFFFFFAF5FF9FFFF8FFA5E7FA767FFBBFBB5AA53FFFFFFEF03FFFBE9FFFFFFFF),
    .INIT_1F(256'hFFFFF3AB8FECFFFFBFFB507FF797FFFBAF87F96BFFFFFFFE0FFFEBB9BFFFFFFF),
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
    .csa({open_n4897,\U4/Addr [14:13]}),
    .dia({open_n4901,open_n4902,open_n4903,open_n4904,open_n4905,open_n4906,open_n4907,1'b0,open_n4908}),
    .rsta(nRST_pad),
    .doa({open_n4923,open_n4924,open_n4925,open_n4926,open_n4927,open_n4928,open_n4929,open_n4930,\U4/ROM0/inst_doa_i1_007 }));
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
    .INIT_00(256'hFFFFE86216ACEFFFFFF8807FF061EEFDA747EEBFFFFFFFFE8BFAE4E013FFFFFF),
    .INIT_01(256'hFFFFE36B44EBEFFFFFFC837FE211AADAF29FFFF9FFFFFFFC03FAF059C3FFFFFF),
    .INIT_02(256'hFFFFE67148FE7FFFFFFEB3BFFB40DC3B8CFFEA3BFFFFFFFC1BFEAA669BFFFFFF),
    .INIT_03(256'hFFFFFE30ACFD9FFFFFFF9EBFF72EA76935FFF10CFFFFFFF9EBFE9CDE9BFFFFFF),
    .INIT_04(256'hFFFFF8CD2CBFC7FFFFFFFFFFFFCF78B75FFFF805FFFFFFEC9BFFCF1CE8AFFFFF),
    .INIT_05(256'hFFFFFD8D47BBA9FFFFFFFFFEDADBE87CC9FFE813FFFFFFFDAFFF950FF84BAAFF),
    .INIT_06(256'hFFFFFED3B3AAEE7FFFFFFFFB7ABEFEEC77FFF41DFFFFFFF62BFE9D066284F87F),
    .INIT_07(256'hFFFFFF863BAABEBFFFFFFFB5FAFFFAB8FFFFEC5BFFFFFF8BAFEE425503B2E07F),
    .INIT_08(256'hFFFFFF9440AAAEBDFFFFFED7FFFFFEBFB7EFFBD7FFFFFFD2AEE89DDB5DA3FFFF),
    .INIT_09(256'hFFFFFFC7F72AABA48FFF866EFFFFFEFEB7FFFE5FFFFFFEFEAFEBD5DB63E3FFFF),
    .INIT_0A(256'hFFFFFFF9F32AAABB471B83AABFFBFEBEE7FFFFFFFFFFFFDEAFBAA8235DFB3FFF),
    .INIT_0B(256'hFFFFFFE9432AAAAAAC16EAAABFFEFEBEECFFFFFFFFFFFEBFEBA819738A8B3FFF),
    .INIT_0C(256'hFFFFFFFF5CAAAFFFFFFEABFABFFFBEBEBBFFFFFFFFFFF81FFBAF8875C5CEDFFF),
    .INIT_0D(256'hFFFFFFFFE9FFFFFFFFFEBFFFFFFBFBFFFEBFFFFFFFFFF1FFFEFFB8BBA9EEDFFF),
    .INIT_0E(256'hFFFFFFFF827FFFFFFFFFFFFFFFED6BFFFBA3FFFFFFFFFCFFFA9A89997AA3DFFF),
    .INIT_0F(256'hFFFFFFFFA77FFFFFFFFFFFFFFFB76BFFFAEDFFFFFFFF8EBFFBBC97447B9AAEFF),
    .INIT_10(256'hFFFFFFFFB88FFFFFFFFFFFFFFF922FFFFABA5FFFFFFF5EBFEAD3D879FFCFCBFF),
    .INIT_11(256'hFFFFFFF8DCCFFFFFFFFFFFFFFFD23FFFFEEE85FFFFE6BBFFFF2101A7FB97C7FF),
    .INIT_12(256'hFFFFFFB7CD4BFFFFFFFFFAAAFBB76BFFFFFB9654D674FBFFEF07624FFFEFF17F),
    .INIT_13(256'hFFFFFFE5306AFFFFFFFFFAAAFBF0FFFFFFFAEFC41223FFFFEF39D17FFFB9B9FF),
    .INIT_14(256'hFFFFE685C4DAFFFFFFFFFFFFFFFBFEAAAAAAFEBEEBABFFFFEA3F4E9FFFE86FFF),
    .INIT_15(256'hFFFFCA378A82BFFFFFFFFAAAABFE820EBABABAAAAAABFFFFAA9829D12BFABEFF),
    .INIT_16(256'hFFFFFFFE7172BFFFFFFFEABF82E97B40B96CFAFFFFFFFFFEABE4FD4072FB1BFF),
    .INIT_17(256'hFFFFFFFA251ABFFFFFFFA0E1C4E0B4D7FA085AFFFFEBFFFEFB9BFFFFCBAFF6FF),
    .INIT_18(256'hFFFFFFC05BEEBFFFFFAE69E49C2FFFFFFFFDB6FFFFABFFFAB2BCFFFFEDC26BFF),
    .INIT_19(256'hFFFFEFAF47D2BFFFEE81A37FFFFFFFFFFFFF93FFFFFFFFEB48967FFFFE92B3FF),
    .INIT_1A(256'hFFFEA6B77DB8BFFFEAE1FFFFFFFFFFFFFFFFD16AFFFFFFEBB8D63FFFFFFA6EFF),
    .INIT_1B(256'h503512A57537BFFFEAE9FFFFFFFFFFFFFFFFD8DAFFFFFFA8EB21FFFFFFFFFFFF),
    .INIT_1C(256'h6158B554457C2FFFAAE2F27FEE1BBAC45E7FDBB2FFFFFFBDEA8E3FFFFFFFFF85),
    .INIT_1D(256'hAAB5554554AF6FFFEB278D555555755552ADCC9CBFFFFEA95ABB27FFFFFFFF80),
    .INIT_1E(256'h5555555554FD2BFEFA733FEAAAAAAAAABAB3CEBEAFFFFEAE2A099EFFFFFFFFAA),
    .INIT_1F(256'h5555555550AE4BFEFA0FFEAEAABBFFA94AEEBBE32FFFEFF5E45987FFFFFFFFD5),
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
    .csa({open_n4956,\U4/Addr [14:13]}),
    .dia({open_n4960,open_n4961,open_n4962,open_n4963,open_n4964,open_n4965,open_n4966,1'b0,open_n4967}),
    .rsta(nRST_pad),
    .doa({open_n4982,open_n4983,open_n4984,open_n4985,open_n4986,open_n4987,open_n4988,open_n4989,\U4/ROM0/inst_doa_i2_000 }));
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
    .INIT_00(256'hFFFFE86325477FFFFFFBD17FF639442F313BEF78FFFFFFFA45554593C155557F),
    .INIT_01(256'hFFFFE66A3746FFFFFFFED6FFFB4D8C5ED47FF37AFFFFFFFA6D5544634155557F),
    .INIT_02(256'hFFFFEF606B54BFFFFFFF75FFF805BCC17A7FE77CFFFFFFFC555542D11955557F),
    .INIT_03(256'hFFFFFF20CB53DFFFFFFFAFFFED3596C8E3FFF029FFFFFFFF1555020D1955557F),
    .INIT_04(256'hFFFFFC88BB553FFFFFFFFFFFA41453030DFFF141FFFFFFFCA555441D1B05557F),
    .INIT_05(256'hFFFFFFC989555FFFFFFFFFFFF5554050CFFFE151FFFFFFE15555461D0A65007F),
    .INIT_06(256'hFFFFFF92095556FFFFFFFFFFD55555515FFFFD4BFFFFFFEED5550A089869F97F),
    .INIT_07(256'hFFFFFF371D55549FFFFFFFF9555555515FFFED4FFFFFFFF155540A1A995BBFFF),
    .INIT_08(256'hFFFFFFF11055542BFFFFFA55555555554FFFFCEFFFFFFFD154538182CB13FFFF),
    .INIT_09(256'hFFFFFFED62D55503BFFFF345555555555FFFFFFFFFFFFEE55550F984A14A7FFF),
    .INIT_0A(256'hFFFFFFE8C2D555512F5141555555555541FFFFFFFFFFFF455554C828E355BFFF),
    .INIT_0B(256'hFFFFFFEFC6D555541551555555555555537FFFFFFFFFFB955544C92137307FFF),
    .INIT_0C(256'hFFFFFFF832555555555555555555555551DFFFFFFFFFF93555463823EB8477FF),
    .INIT_0D(256'hFFFFFFFEC755555555555555555455555477FFFFFFFFEE55555178A5401C4FFF),
    .INIT_0E(256'hFFFFFFFE5E5555555555555555515555551DFFFFFFFFF8555529A9C354FE29FF),
    .INIT_0F(256'hFFFFFFFEFB555555555555555546555555427FFFFFFF89555502663CD1DB97FF),
    .INIT_10(256'hFFFFFFFE8CB55555555555555546155555509FFFFFFE255554419DEB556EE67F),
    .INIT_11(256'hFFFFFFFEC6B55555555555555507155555547BFFFFEF955554DC07AD5547ECFF),
    .INIT_12(256'hFFFFFFF722B555555555555555035555555571CEE86C555555761FA5555FFB7F),
    .INIT_13(256'hFFFFFE21C7D555555555555555515555555544AEAF49555554BD2AD55505FD7F),
    .INIT_14(256'hFFFFB06F72955555555555555555555555555415415555555434E2355540FEFF),
    .INIT_15(256'hFFFFFA1EB0CD555555555555555428A550155555555555555512A273D555FFFF),
    .INIT_16(256'hFFFFFFFF7A6D55555555555528513EBFBEB2555555555555554BFE9F5D501FFF),
    .INIT_17(256'hFFFFFFFB89E5555555550A45AF4EE53BFACE355555555555553DFFFCF9057FFF),
    .INIT_18(256'hFFFFFFF2AEB5555555043B4FC7BFFFFFFFFAAD55555555544C42FFFFB184CBFF),
    .INIT_19(256'hFFFFFCB772915555544BF4BFFFFFFFFFFFFF895555555554AA377FFFFFB6EBFF),
    .INIT_1A(256'hFFFB7B2DCE9F55555423FFFFFFFFFFFFFFFFF6D55555555546C9FFFFFFFEC1FF),
    .INIT_1B(256'h557BCAA3BFC955555463FFFFFFFFFFFFFFFFE0B555555552E6129FFFFFFFFFFF),
    .INIT_1C(256'h6056BFEEEECCD5555424E82ABE45145145BFE46D5555555358207FFFFFFFFFD5),
    .INIT_1D(256'hAABFFFEFFE46D55554F4E55555555555504FB64B55555541B01ADFFFFFFFFF80),
    .INIT_1E(256'hFFFFFFFFFF16155554B100000000000000153C145555554683373FFFFFFFFFAA),
    .INIT_1F(256'hFFFFFFFFFF51B55554A0001400115502A1042016D5555555FEE50BFFFFFFFFFF),
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
    .csa({open_n5015,\U4/Addr [14:13]}),
    .dia({open_n5019,open_n5020,open_n5021,open_n5022,open_n5023,open_n5024,open_n5025,1'b0,open_n5026}),
    .rsta(nRST_pad),
    .doa({open_n5041,open_n5042,open_n5043,open_n5044,open_n5045,open_n5046,open_n5047,open_n5048,\U4/ROM0/inst_doa_i2_001 }));
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
    .INIT_00(256'hFFFFF39D8ABDFFFFFFFB2AFFECD2ABD6CE0FF8FFFFFFFFFF1AAAAB61EBFFFFFF),
    .INIT_01(256'hFFFFED959ABD7FFFFFFB2CFFEDE673E57D3FFCFBFFFFFFFA1AAAAAD0EBFFFFFF),
    .INIT_02(256'hFFFFE99FD6AA7FFFFFFFDFFFEFEE67B781FFFCFFFFFFFFFA2AAAB81CB3FFFFFF),
    .INIT_03(256'hFFFFF9DF56AE3FFFFFFFFFFFEBCA79B259FFEABBFFFFFFF86AAAB970B3FFFFFF),
    .INIT_04(256'hFFFFFB7646AA8FFFFFFFFFFFFAEBA8F9F3FFEAABFFFFFFF96AAAFDE0B3AFFFFF),
    .INIT_05(256'hFFFFFA7726AAA3FFFFFFFFFFEAEABAAF73FFFABFFFFFFFF8AAAAEDE0B39FAAFF),
    .INIT_06(256'hFFFFFF6D66AAA8FFFFFFFFFFAAAAAAAFBFFFFEB3FFFFFFE1AAAAB1E5A28352FF),
    .INIT_07(256'hFFFFFF9862AAAB7FFFFFFFFAAAAAAAAAAFFFFEF7FFFFFFB6AAAAA5F1A3E7EAFF),
    .INIT_08(256'hFFFFFF9E3BAAABD3FFFFFFFAAAAAAAAAAFFFFF0FFFFFFFFEABAF3675F3ADFFFF),
    .INIT_09(256'hFFFFFFE20DAAAAE93FFFADBAAAAAAAAABFFFFEBFFFFFFF9AAAAF1673CBEDFFFF),
    .INIT_0A(256'hFFFFFFF30DAAAAAF81AEEEAAAAAAAAAAAFFFFFFFFFFFFEFAAAAB57C79BFE7FFF),
    .INIT_0B(256'hFFFFFFF9E9AAAAABEFFAAAAAAAAAAAAAA9FFFFFFFFFFFE6AAABE16DE9DBADFFF),
    .INIT_0C(256'hFFFFFFFFE9AAAAAAAAAAAAAAAAAAAAAAAE7FFFFFFFFFFBEAAAB907DE092E9FFF),
    .INIT_0D(256'hFFFFFFFF38AAAAAAAAAAAAAAAAAAAAAAAB9FFFFFFFFFE9AAAAAD474B6BF6B7FF),
    .INIT_0E(256'hFFFFFFFFF8AAAAAAAAAAAAAAAAAFAAAAAAE7FFFFFFFFE3AAAAF51678FF6DB7FF),
    .INIT_0F(256'hFFFFFFFF9DAAAAAAAAAAAAAAAAB9AAAAAAB9FFFFFFFFB6AAAAF119E6FB3F79FF),
    .INIT_10(256'hFFFFFFFFD36AAAAAAAAAAAAAAAF9EAAAAAAE3FFFFFFE9AAAABE46793FF9F9DFF),
    .INIT_11(256'hFFFFFFFB716AAAAAAAAAAAAAAAF9EAAAAAAB83FFFFE86AAAABC7EE4FFFAFA37F),
    .INIT_12(256'hFFFFFFEDB86AAAAAAAAAAAAAAAB9AAAAAAAAFC2BAE87AAAAABD9B82FFFF3F9FF),
    .INIT_13(256'hFFFFFFCA4A2AAAAAAAAAAAAAAABEAAAAAAAABB0401BEAAAAAA46E0FFFFBBFB7F),
    .INIT_14(256'hFFFFED018B2AAAAAAAAAAAAAAAAAAAAAAAAAABEABEAAAAAAAADBD5BFFFEAFF7F),
    .INIT_15(256'hFFFFB4EF9A7AAAAAAAAAAAAAAAABFFFAAFEAAAAAAAAAAAAAAAAE590BFFFF7FFF),
    .INIT_16(256'hFFFFFFFE9A9AAAAAAAAAAAAAFFABC000404FAAAAAAAAAAAAAAB97E20FFFABFFF),
    .INIT_17(256'hFFFFFFFE6A1AAAAAAAAAFFAE05414BAFFEB0EAAAAAAAAAAAAAE5FEBF17AF9FFF),
    .INIT_18(256'hFFFFFFA935CAAAAAAAFAC1413EFFFFFFFFFB5AAAAAAAAAABA3B1FFFFFB3EF7FF),
    .INIT_19(256'hFFFFFF5C8FBEAAAAABE04EFFFFFFFFFFFFFFA6AAAAAAAAAB978CFFFFFFAD45FF),
    .INIT_1A(256'hFFFFC5EC7BE6AAAAAB8BFFFFFFFFFFFFFFFFB9AAAAAAAAAADF6E7FFFFFFEBFFF),
    .INIT_1B(256'hAAC02FE8EAE6AAAAAB9BFFFFFFFFFFFFFFFFBB6AAAAAAAAF1CAB7FFFFFFFFFFF),
    .INIT_1C(256'hCABBEAABBAF7AAAAABCFEED554BFBFAABEFFBF1AAAAAAAAF56A4DFFFFFFFFFAA),
    .INIT_1D(256'hFFEAAABAAAF9AAAAAB851000000000000553B916AAAAAABA3AB44FFFFFFFFFAA),
    .INIT_1E(256'hAAAAAAAAABF8EAAAAB845555555555555545B143AAAAAAB828B997FFFFFFFFFF),
    .INIT_1F(256'hAAAAAAAAABFC6AAAAB9555540011550001515541AAAAAABF481B27FFFFFFFFAA),
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
    .csa({open_n5074,\U4/Addr [14:13]}),
    .dia({open_n5078,open_n5079,open_n5080,open_n5081,open_n5082,open_n5083,open_n5084,1'b0,open_n5085}),
    .rsta(nRST_pad),
    .doa({open_n5100,open_n5101,open_n5102,open_n5103,open_n5104,open_n5105,open_n5106,open_n5107,\U4/ROM0/inst_doa_i2_002 }));
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
    .INIT_00(256'hFFFFFBD5C0207FFFFFFD80FFE2C222724AF7FE79FFFFFFFC22AA098C6E00007F),
    .INIT_01(256'hFFFFE75570A57FFFFFFD077FFFDFBA5D325FEC5F7FFFFFFC62AA2026E600007F),
    .INIT_02(256'hFFFFF5DDB2AB7FFFFFFE53FFF365BEA2FE7FEC79FFFFFFFA02AA0BBA1CAAAAFF),
    .INIT_03(256'hFFFFF575B0A93FFFFFFFDFFFF141B43BFFFFE05B7FFFFFFCAAAA0ED2368AAAFF),
    .INIT_04(256'hFFFFFBD7D8AA5FFFFFFFFFFFE263869F7BFFE08BFFFFFFFB0AAA43D896F0807F),
    .INIT_05(256'hFFFFFF749A8A97FFFFFFFFFF82EAA027DFFFE891FFFFFFEAA2AA41D21CCA7FFF),
    .INIT_06(256'hFFFFFFFCB2AAA77FFFFFFFFE0A8A2AAF27FFEC3FFFFFFFFE2AAA3FF09FF378FF),
    .INIT_07(256'hFFFFFED61AAAA39FFFFFFFC82AAAAAA897FFFE57FFFFFFC0AAA83F64BE3D757F),
    .INIT_08(256'hFFFFFFDE9A2AAAF5FFFFFE72AAAAAAAA9FFFFBDFFFFFFFD82A29856CDE6DFFFF),
    .INIT_09(256'hFFFFFFB8642AA8A557FFED2AAAAAAAAA875FFD5FFFFFFFE2AA29CD40461CFFFF),
    .INIT_0A(256'hFFFFFFFBA42AA8ABF58AE22AAAAAAAAAABDFFFFFFFFFFEC2A2A3BD72E401DFFF),
    .INIT_0B(256'hFFFFFFF6E62AAAAA0FD802AAAAAAAAAAAE7FFFFFFFFFFF0AA2A5B572CEE65FFF),
    .INIT_0C(256'hFFFFFFF924AAA82AAA0AAA2AAAAAAAAAA11FFFFFFFFFF98AAAA6D7797FB9EFFF),
    .INIT_0D(256'hFFFFFFFF0CAAAAAAAAAAAAAAAAA8AAAAAAC75FFFFFFFF6AAAA8ADF4218B1BFFF),
    .INIT_0E(256'hFFFFFFFEEEAAAAAAAAAAAAAAAAA5AAAAAA9BDFFFFFFFF8AAAA915D46817479FF),
    .INIT_0F(256'hFFFFFFFF6F8AAAAAAAAAAAAAAA9F0AAAAAACFFFFFFFFB2AAAA8C7D1DAFBD877F),
    .INIT_10(256'hFFFFFFFFB32AAAAAAAAAAAAAAADD0AAAAAA19FFFFFFEEAAAAA6B567EAA77EEFF),
    .INIT_11(256'hFFFFFFFD450AAAAAAAAAAAAAAAFD0AAAAAAA7FFFFFFDAAAAAA954158022FFBFF),
    .INIT_12(256'hFFFFFFCC650AAAAAAAAAAAAAAABD8AAAAAAA993F7ADCAAAAA99D0D720095E57F),
    .INIT_13(256'hFFFFFEE38502AAAAAAAAAAAAAAB62AAAAAAAA159F580AAAAA974150002C1F8FF),
    .INIT_14(256'hFFFFEA56EFA2AAAAAAAAAAAAA808AAAAAAAAAA8A200AAAAAAA782442AA39FFFF),
    .INIT_15(256'hFFFFFC1FC462AAAAAAAAAAAAAAA8000A220AAAAAAAAAAAAAAA81EE64AA035F7F),
    .INIT_16(256'hFFFFFFFE4E40AAAAAAAAAAA00221DFFFF76A8AAAAA82AAAAAAA7791428069FFF),
    .INIT_17(256'hFFFFFFFD1368AAAAAAAA8027D89D48FF7D3C0AAAAAAAAAAAAA13FFDB78F2CFFF),
    .INIT_18(256'hFFFFFFE5FD62AAAAAA2AD6158957FFFFFFFDEAAAAAAAAAAA98877FFFEB8935FF),
    .INIT_19(256'hFFFFF3466592AAAAAAD5C97FFFFFFFFFFFFF9A2AAAAAAAAAF84CFFFFFF4D5DFF),
    .INIT_1A(256'hFFFE56539730AAAAAACFFFFFFFFFFFFFFFFFDEAAAAAAAAAA03515FFFFFFF017F),
    .INIT_1B(256'hA85F9F675F90AAAAA2EDFFFFFFFFFFFFFFFFE38AAAAAAAA96CEF3FFFFFFFFFFF),
    .INIT_1C(256'h60AD5FFFFF962AAAA0E97AD7D608C8200B7FE8C2AAAAAAA899FAFFFFFFFFFF82),
    .INIT_1D(256'h555FFFF7FFACAAAAAA4B6802AAA80002A817C418AAAAAAA34FFD37FFFFFFFF80),
    .INIT_1E(256'hFFFFFFFFFE2CAAAAA2E0880AAAAAAAA00A08DA20AAAAAAAFF2C4DFFFFFFFFFD5),
    .INIT_1F(256'hFFFFFFFFFC2B8AAAA2C02883F5EE8A5FF6A8E2A42AAAAABD576897FFFFFFFFFF),
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
    .csa({open_n5133,\U4/Addr [14:13]}),
    .dia({open_n5137,open_n5138,open_n5139,open_n5140,open_n5141,open_n5142,open_n5143,1'b0,open_n5144}),
    .rsta(nRST_pad),
    .doa({open_n5159,open_n5160,open_n5161,open_n5162,open_n5163,open_n5164,open_n5165,open_n5166,\U4/ROM0/inst_doa_i2_003 }));
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
    .INIT_00(256'hFFFFE4001DF3FFFFFFFE7FFFF3ADF72D3C9DFBDD7FFFFFFE3FFF7461B7FFFFFF),
    .INIT_01(256'hFFFFF08005F2FFFFFFFE797FF82A6D0AE27FF1FF7FFFFFFE17FF5F8397FFFFFF),
    .INIT_02(256'hFFFFF28825FCDFFFFFFF2FFFFE90E1E5AB7FF15F7FFFFFFE77FF5E2BEF55557F),
    .INIT_03(256'hFFFFFAA085FCFFFFFFFFFFFFF61EE14EABFFF7D7FFFFFFFA7FFF7089EF75557F),
    .INIT_04(256'hFFFFFE008DFF1FFFFFFFFFFFFF9E794A8DFFF77FFFFFFFF25FFF1081CF7F7FFF),
    .INIT_05(256'hFFFFFE80E7DFCFFFFFFFFFFFDFBFF77807FFF76FFFFFFFF377FFBA0945BDFFFF),
    .INIT_06(256'hFFFFFEA2CDFFF3FFFFFFFFFF7FFFFFF8FFFFF3E7FFFFFFE37FFF40034F84AD7F),
    .INIT_07(256'hFFFFFF8867FFF4FFFFFFFFF7FFFFFFFDFFFFFB2DFFFFFFE7FFFD40096FCDDFFF),
    .INIT_08(256'hFFFFFF8A6D7FFF87FFFFFD85FFFFFFFFF7FFFE1FFFFFFF8D7FFC400307F1FFFF),
    .INIT_09(256'hFFFFFFCCBB7FFDFA5FFFF85FFFFFFFFFF7FFFF7FFFFFFF1FFFFE880D17F97FFF),
    .INIT_0A(256'hFFFFFFEEB97FFDFE0257BF7FFFFFFFFFF7FFFFFFFFFFFF17FFF6202F95FEDFFF),
    .INIT_0B(256'hFFFFFFF39B7FFFFF5205D7FFFFFFFFFFF17FFFFFFFFFFCFFFFF22827B17F3FFF),
    .INIT_0C(256'hFFFFFFFEDBFFFFFFFF5FFFFFFFFFFFFFF6DFFFFFFFFFFEDFFFF02024B8DFBFFF),
    .INIT_0D(256'hFFFFFFFE7B7FFFFFFFFFFFFFFFFF7FFFFFB7FFFFFFFFF9FFFFD220167D4FE7FF),
    .INIT_0E(256'hFFFFFFFFB3FFFFFFFFFFFFFFFFFAFFFFFFE7FFFFFFFFE7FFFFCA083BFE7B47FF),
    .INIT_0F(256'hFFFFFFFF985FFFFFFFFFFFFFFFE2DFFFFFF97FFFFFFFC7FFFFE2A0C1D6FC5BFF),
    .INIT_10(256'hFFFFFFFF04DFFFFFFFFFFFFFFFA25FFFFFF6FFFFFFFF9FFFFF2A032755B7337F),
    .INIT_11(256'hFFFFFFFE085FFFFFFFFFFFFFFF82DFFFFFFF8DFFFFF2FFFFFFA8149FFDD7E67F),
    .INIT_12(256'hFFFFFFFBD05FFFFFFFFFFFFFFFC2DFFFFFFFC8777521FFFFFC20F2FDFF6DF07F),
    .INIT_13(256'hFFFFFF14B477FFFFFFFFFFFFFFE1FFFFFFFFF68AA2D5FFFFFC81417FFD77FEFF),
    .INIT_14(256'hFFFFD823B677FFFFFFFFFFFFFFFFFFFFFFFFFFDFF55FFFFFFFA52B5D55DD7E7F),
    .INIT_15(256'hFFFFE95F1F37FFFFFFFFFFFFFFFD555FDF5FFFFFFFFFFFFFFF5490BDD5FCFFFF),
    .INIT_16(256'hFFFFFFFF9F37FFFFFFFFFFF557D62200289FFFFFFFFFFFFFFFF0FCEBFFFF5FFF),
    .INIT_17(256'hFFFFFFFC569FFFFFFFFFD5DA2A0235DDFD63DFFFFFFFFFFFFFC3FF5EADFD9FFF),
    .INIT_18(256'hFFFFFFF8C337FFFFFFFD2A08F5DFFFFFFFFEBFFFFFFFFFFFCDE97FFFDCDF65FF),
    .INIT_19(256'hFFFFFE9BBD67FFFFFF801FDFFFFFFFFFFFFFE77FFFFFFFFF85BB7FFFFFDA21FF),
    .INIT_1A(256'hFFFDA9DAF74DFFFFFFBDFFFFFFFFFFFFFFFFC1FFFFFFFFFF1E14FFFFFFFF57FF),
    .INIT_1B(256'hFFA8F551DFEFFFFFF7B5FFFFFFFFFFFFFFFFFCDFFFFFFFFC19765FFFFFFFFFFF),
    .INIT_1C(256'h357F5FF7FF6B7FFFF59775282B77DF7FD7DFF6B7FFFFFFFC0DE93FFFFFFFFFFF),
    .INIT_1D(256'h555FFFF7FFD3FFFFFF28A002AAA80002A827F805FFFFFFF45FE8BFFFFFFFFFD5),
    .INIT_1E(256'hFFFFFFFFFFD97FFFFF8202A00000000AA00BE88DFFFFFFFA7F5B8FFFFFFFFFD5),
    .INIT_1F(256'hFFFFFFFFFFD05FFFFF828222A0AAAA00022008037FFFFFE23236C5FFFFFFFFFF),
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
    .csa({open_n5192,\U4/Addr [14:13]}),
    .dia({open_n5196,open_n5197,open_n5198,open_n5199,open_n5200,open_n5201,open_n5202,1'b0,open_n5203}),
    .rsta(nRST_pad),
    .doa({open_n5218,open_n5219,open_n5220,open_n5221,open_n5222,open_n5223,open_n5224,open_n5225,\U4/ROM0/inst_doa_i2_004 }));
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
    .INIT_00(256'hFFFFEFEEEB5DEFFFEFFB45FFFD8701C62313E7BAFFFFFFFAD554965E97FFFFFF),
    .INIT_01(256'hFFFFE5FFBB5CEFFFFFF9156FF1EC05ECA28FECBAFFFFFFF86954941067FFFFFF),
    .INIT_02(256'hFFFFF3E3C7407ABFFFFFC5BFE8B7966289FEF4BBFFFFFFF86955C7333FFFFFFF),
    .INIT_03(256'hFFFFEFCA4653DBFFFFEFC6BFFD658DC940FFF033FFFFFFFDC154ADF26FFFFFFF),
    .INIT_04(256'hFFFFFD7F9B0467FFFFEAFFFFB4359363B3FFE403FFFFFFE82555AC674AFFFFFF),
    .INIT_05(256'hFFFFF9FF6D7409FFFFFFFFFEA4744B07D1FFE011BFFFFFF85D5454AAC946BFFF),
    .INIT_06(256'hFFFFFF8CCD55467FFFFFFEFBD515544793FEEC17FFFFFFE295554BBA9681BD7F),
    .INIT_07(256'hFFFFFFEC92550DFEFFFFFFF6555155455FFEE0D7FFFFFF815553C4A2F6A7A47F),
    .INIT_08(256'hFFFFFFA5E3D54055FFFFFF98555555554FFFF94FFFFFFF86D45313F4EBE7FFFF),
    .INIT_09(256'hFFFFFF95A9D5474E0FFFD095555555551EFFAE5BFFFFFEB45550F3A5D7EBFFFF),
    .INIT_0A(256'hFFFFFFFCE9D55740AA6F99D5555555550BBFABFBFFFFFEB9454FA2D86DFF7FFF),
    .INIT_0B(256'hFFFFFFF86AD55551F6F92D5555555555526FAAFFFFFFFED1555852C89FBE7BFF),
    .INIT_0C(256'hFFFFFFFA7205555051E155555555555549DBFFFFFFFFF934555AC6DB889FDFFF),
    .INIT_0D(256'hFFFFFFFF4755555555555555555055555036FFFFFFFFE355557357B739EFCFFF),
    .INIT_0E(256'hFFFFFFFE9E955555555555555547D555555FFFFFFFFFAE55552222B53AB78FFF),
    .INIT_0F(256'hFFFFFFFEA1F55555555555555548F5555446FFFFFFFFC4555511FBA8FE9FB8FF),
    .INIT_10(256'hFFFFFFEFA7355555555555555578F55554491FFFFEFE355551D36BBBFFDE8FFF),
    .INIT_11(256'hFFFFFABD9F35555555555555553DF555555065FFFFE6D555545FB7AFFB97C1FF),
    .INIT_12(256'hFFFFEFA38CE5555555555555545DB555555524C4C77F5555538FCA2FFFBBE17F),
    .INIT_13(256'hFFFEFAF0649D55555555555555535555555519601A4F555553DDFD7FFFADBDFF),
    .INIT_14(256'hFFFEA6C0C6ED55555555555555515515555505645FF5555551C69BDFFFB86FFF),
    .INIT_15(256'hFFFFCE27CF0D5555555555554513AEB045E5551545555555544A7DC0FFBFBEFF),
    .INIT_16(256'hFFFFFFFF2B3D55555555414FAC1796AEFF8D155555555555554AFD416AFE5BFF),
    .INIT_17(256'hFFFFBFFA7631555555546A4C7550E782EF1EF555555555540537FFBF9AFBAEFF),
    .INIT_18(256'hFFFFFF900BA155555414C846887FFFFFFFF9E155555555545F39FFFFADD77FFF),
    .INIT_19(256'hFFFFFBAB168C5555553A923FFFFFFFFFFFFF98D55555555463167FFFFED3F3FF),
    .INIT_1A(256'hFFFAF3F238FE55555525FFFFFFFFFFFFFFFFE2155555555110037FFFFFFE2BFF),
    .INIT_1B(256'h442516E1213155554D79FFFFFFFFFFFFFFFFCCF5555555532876FFFFFFEFFFFF),
    .INIT_1C(256'h754DF0150078D5555B53E27BEB5ACAD57E7FDAFD555555535FAA2FFFFFFFFFD1),
    .INIT_1D(256'hBFB0011801FA555554F58AAD5517BFFC53F98EE61555555ADFFA37FFFEBFFFD4),
    .INIT_1E(256'h0000000000BED555543AAABEBAFBFFAAAEF79AA8555555522F19DFFFFFFFFFFF),
    .INIT_1F(256'h0000000001EEA555542AEBB15F0040BAB83AAEBB9555551D301897BFFFFFFF80),
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
    .csa({open_n5251,\U4/Addr [14:13]}),
    .dia({open_n5255,open_n5256,open_n5257,open_n5258,open_n5259,open_n5260,open_n5261,1'b0,open_n5262}),
    .rsta(nRST_pad),
    .doa({open_n5277,open_n5278,open_n5279,open_n5280,open_n5281,open_n5282,open_n5283,open_n5284,\U4/ROM0/inst_doa_i2_005 }));
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
    .INIT_00(256'hFFFFF84576BA7FFFFFF8FAFFF248EFD7F17FE8FCFFFFFFFA0AAAF573D400007F),
    .INIT_01(256'hFFFFE55462BCFFFFFFFEEBFFED5877DDC57FF3F9FFFFFFFA6AAAA52A9400007F),
    .INIT_02(256'hFFFFEA4022BBFFFFFFFE29FFFF08B09D2A7FE7BDFFFFFFFC5AAAA6C1DC00007F),
    .INIT_03(256'hFFFFFB4162AADFFFFFFFFFFFEADAE4A9C3FFF68AFFFFFFFA6AABD710DC00007F),
    .INIT_04(256'hFFFFF8118AAABFFFFFFFFFFFBB9F3BE311FFE7BBFFFFFFEC2AABC604A850007F),
    .INIT_05(256'hFFFFFED0CEABFFFFFFFFFFFFEA8BBDE927FFF7EDFFFFFFE0AAAB9309BB25557F),
    .INIT_06(256'hFFFFFE843AAAFBFFFFFFFFFFAAAAAFA92FFFE3EDFFFFFFFEAAAB9E48AD2CF97F),
    .INIT_07(256'hFFFFFF2171AABFDFFFFFFFACAAAAAAAEAFFFFBABFFFFFFBEAAAE484BCC1AFBFF),
    .INIT_08(256'hFFFFFFF141AAAF83FFFFFF13AAAAAAAAFFFFF9F7FFFFFF96ABAB0D09D843FFFF),
    .INIT_09(256'hFFFFFFBE74AAAAF72FFFA13AAAAAAAAABFFFFEFFFFFFFFBAAAAEED1A84077FFF),
    .INIT_0A(256'hFFFFFFEC90AAAABE6E0407AAAAAAAAAAE1FFFFFFFFFFFE5ABAB8800EF201BFFF),
    .INIT_0B(256'hFFFFFFEFD2AAAAABF913FAAAAAAAAAAABFFFFFFFFFFFFEAAAAB9904767053FFF),
    .INIT_0C(256'hFFFFFFF86FAAAAAAAFFEAAAAAAAAAAAABEFFFFFFFFFFFC2AAABB3042E7D177FF),
    .INIT_0D(256'hFFFFFFFE3FAAAAAAAAAAAAAAAAABAAAAAFBFFFFFFFFFEFAAAAB9D14991495FFF),
    .INIT_0E(256'hFFFFFFFE1B6AAAAAAAAAAAAAAAAC2AAAAAB9FFFFFFFFEDAAAAB4711F40EA79FF),
    .INIT_0F(256'hFFFFFFFEBD6AAAAAAAAAAAAAAAF56AAAAABB7FFFFFFF86AAAAEE653805DB83FF),
    .INIT_10(256'hFFFFFFFFD42AAAAAAAAAAAAAAAC06AAAAABFDFFFFFFE7AAAAB9510F8006FF77F),
    .INIT_11(256'hFFFFFFFA972AAAAAAAAAAAAAAAC56AAAAAAFAFFFFFFAEAAAAAF81AA00117F9FF),
    .INIT_12(256'hFFFFFFB662AAAAAAAAAAAAAAABA46AAAAAAAA3DEFC3DAAAAAF357A90004BEE7F),
    .INIT_13(256'hFFFFFF6597AAAAAAAAAAAAAAAAB9AAAAAAAABB3FAA2EAAAAAF92AA800041F97F),
    .INIT_14(256'hFFFFF42F60DAAAAAAAAAAAAAAAAEAAAAAAAAABFABFAAAAAAAA4EF2300011FFFF),
    .INIT_15(256'hFFFFFA1FB50AAAAAAAAAAAAAAAEFAEBEEFFAAAAAAAAAAAAAABFAF6760004BEFF),
    .INIT_16(256'hFFFFFFFE202AAAAAAAAAAABFAFA953FEEFC3AAAAAAAAAAAAAAAEFA8A44051FFF),
    .INIT_17(256'hFFFFFFFB8BFAAAAAAAABEBF07BEAB47FFACF2AAAAAAAAAAAFAB1FEBDE94127FF),
    .INIT_18(256'hFFFFFFE3FABEAAAAAAFF4FFF92AFFFFFFFFAEEAAAAAAAAABBF96FFFFF490CBFF),
    .INIT_19(256'hFFFFEDA673D6AAAAABDAC0FFFFFFFFFFFFFFCFAAAAAAAAAAA3F67FFFFEB2BBFF),
    .INIT_1A(256'hFFFE3F3D8E8AAAAAABB3FFFFFFFFFFFFFFFFE6EAAAAAAAAFFA1CBFFFFFFA80FF),
    .INIT_1B(256'h503F9AA6BE9EAAAAABE3FFFFFFFFFFFFFFFFE1AAAAAAAAAA2551DFFFFFFFFFFF),
    .INIT_1C(256'h6152BFEFFF9CAAAAAB80F87FEE01701554FFF02AAAAAAAABE9157FFFFFFFFF85),
    .INIT_1D(256'hAABFFEFFFF42AAAAAAA7E55555551555500FA652AAAAAAB9B54ACFFFFFFFFF80),
    .INIT_1E(256'hFFFFFFFFFE576AAAAAB115414504005550112957AAAAAABED7273FFFFFFFFFAA),
    .INIT_1F(256'hFFFFFFFFFB45AAAAAAA5541FFFFFBFFABEC16152AAAAAAF17EF54FFFFFFFFFFF),
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
    .csa({open_n5310,\U4/Addr [14:13]}),
    .dia({open_n5314,open_n5315,open_n5316,open_n5317,open_n5318,open_n5319,open_n5320,1'b0,open_n5321}),
    .rsta(nRST_pad),
    .doa({open_n5336,open_n5337,open_n5338,open_n5339,open_n5340,open_n5341,open_n5342,open_n5343,\U4/ROM0/inst_doa_i2_006 }));
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
    .INIT_00(256'hFFFFE6EE9FF9FFFFFFFB517FF9E7EFFA9F0BE87BFFFFFFFE5FFFEFF4AFFFFFFF),
    .INIT_01(256'hFFFFEEFECBFF7FFFFFFE54FFFEB3FBA66C7FFC7AFFFFFFFE4FFFFA95EFFFFFFF),
    .INIT_02(256'hFFFFE9EA9BFE3FFFFFFFC7FFEEBA2EB3C4FFED7EFFFFFFFE7FFFAC0CF7FFFFFF),
    .INIT_03(256'hFFFFF8EBDBFA7FFFFFFFEFFFFFEE6AF66DFFF92DFFFFFFFC7FFFE839F7FFFFFF),
    .INIT_04(256'hFFFFFFBB63FFDFFFFFFFFFFFFEAEECE8BBFFE945FFFFFFFDBFFFACBDB3FFFFFF),
    .INIT_05(256'hFFFFFE3A77FFA7FFFFFFFFFFBFFFFFFBFFFFE943FFFFFFEDFFFFA8A1A3CBFFFF),
    .INIT_06(256'hFFFFFF2F77FFE8FFFFFFFFFEFFFFFFFAEFFFE953FFFFFFE0FFFEA4B4B7C352FF),
    .INIT_07(256'hFFFFFFDF6BFFFA3FFFFFFFEFFFFFFFFFEFFFE917FFFFFFF7FFFFA6A4F7F3BFFF),
    .INIT_08(256'hFFFFFFCB6FFFFFFFFFFFFAAFFFFFFFFFBFFFFE4FFFFFFFAFFFFBB3B6A3F9FFFF),
    .INIT_09(256'hFFFFFFA21EFFFFFDBFFFFEFFFFFFFFFFEFFFFFFFFFFFFE9FFFFF43B2EFE8FFFF),
    .INIT_0A(256'hFFFFFFF31EFFFFFFD0EABFFFFFFFFFFFFFFFFFFFFFFFFEBFFFFA5AF6CBFF3FFF),
    .INIT_0B(256'hFFFFFFECB8FFFFFFEEAAFFFFFFFFFFFFEDFFFFFFFFFFFA7FFFFA5AEE98BEDFFF),
    .INIT_0C(256'hFFFFFFFEBDFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFABFFFF80AEA493FDFFF),
    .INIT_0D(256'hFFFFFFFFFCFFFFFFFFFFFFFFFFFEFFFFFF9FFFFFFFFFFDFFFFED6BEB7AB7E7FF),
    .INIT_0E(256'hFFFFFFFFA9FFFFFFFFFFFFFFFFFBFFFFFFF7FFFFFFFFE7FFFFB99BF9FE7CA7FF),
    .INIT_0F(256'hFFFFFFFF8EFFFFFFFFFFFFFFFFAEFFFFFFFCFFFFFFFFBFFFFFF04EB2FF7A39FF),
    .INIT_10(256'hFFFFFFFE9FBFFFFFFFFFFFFFFFAEFFFFFFFE3FFFFFFFDFFFFFA0BE83FFCECCFF),
    .INIT_11(256'hFFFFFFFE24BFFFFFFFFFFFFFFFAAFFFFFFFFD3FFFFE87FFFFED2BA0FFFEFE27F),
    .INIT_12(256'hFFFFFFFDA93FFFFFFFFFFFFFFFABFFFFFFFFAD6EEA93FFFFFE8EA93FFFF3E8FF),
    .INIT_13(256'hFFFFFE8B4B7FFFFFFFFFFFFFFFFAFFFFFFFFFFC050AFFFFFFF7FB0FFFFEFFF7F),
    .INIT_14(256'hFFFFB845DA7FFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFEE84BFFFFAFE7F),
    .INIT_15(256'hFFFFF0BE9FAFFFFFFFFFFFFFFFFFAEBFBFFFFFFFFFFFFFFFFEFB095AFFFB7FFF),
    .INIT_16(256'hFFFFFFFF8A8FFFFFFFFFFFFFAFEEE954056BFFFFFFFFFFFFFFED7B75EFFEBFFF),
    .INIT_17(256'hFFFFFFFA295FFFFFFFFFEBBBC1444FBBFAE5BFFFFFFFFFFFFFADFEBE53FF8FFF),
    .INIT_18(256'hFFFFFFF924CFFFFFFFFBE1456BBFFFFFFFFF0FFFFFFFFFFFB7A0FFFFBB3EE3FF),
    .INIT_19(256'hFFFFFE1DCAAFFFFFFFA47FBFFFFFFFFFFFFFB7FFFFFFFFFEDB9DFFFFFFBC41FF),
    .INIT_1A(256'hFFFBC0AD6EA3FFFFFF8BFFFFFFFFFFFFFFFFECFFFFFFFFFEDBAB7FFFFFFEAFFF),
    .INIT_1B(256'hFFD16AA9BFE7FFFFFF8BFFFFFFFFFFFFFFFFFA3FFFFFFFFB9EEA3FFFFFFFFFFF),
    .INIT_1C(256'hCAFEBFEFFEE2FFFFFFEEEA8014EFFEEAEFBFEF0FFFFFFFFB53B0DFFFFFFFFFFF),
    .INIT_1D(256'hAABFFFFFFFA8FFFFFE944555555515555047FC5BFFFFFFFF3FF15FFFFFFFFFAA),
    .INIT_1E(256'hFFFFFFFFFFBDFFFFFE910000000000000015F003FFFFFFF87CBD97FFFFFFFFAA),
    .INIT_1F(256'hFFFFFFFFFEB93FFFFEC000055555555015001010FFFFFFEBCC4F23FFFFFFFFFF),
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
    .csa({open_n5369,\U4/Addr [14:13]}),
    .dia({open_n5373,open_n5374,open_n5375,open_n5376,open_n5377,open_n5378,open_n5379,1'b0,open_n5380}),
    .rsta(nRST_pad),
    .doa({open_n5395,open_n5396,open_n5397,open_n5398,open_n5399,open_n5400,open_n5401,open_n5402,\U4/ROM0/inst_doa_i2_007 }));
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
    .INIT_00(256'h5555555555FD82BEFE8FEBC000501055405EEFEBEFFFAFF68AA2EBFFFFFFFFD5),
    .INIT_01(256'h5555555557A98EBEFEBFAA15555555555545BFFDDFFFAEEBECACB9BFFFFFFFD5),
    .INIT_02(256'h5555555542AA8CBEFFFFAD555555555555541FAA5FFFAE4AA97726FFFFFFFFD5),
    .INIT_03(256'h5555555557F6F02FEEBEE15555555555555512EFBFFFAC0AF9553409FFFFFFD5),
    .INIT_04(256'h555555555FCEB9EFEF7EDAA555555555555470EF47FEACFAFC15551B0FFFFFD5),
    .INIT_05(256'h555555554AAAB95BEF7BABF355555555558F99AB27FFA5AAB495555670FFFFD5),
    .INIT_06(256'h555555555B0AAFA2AB7B6FF955555555577FA47E82FF54AAAB055555736FFFD5),
    .INIT_07(256'h555555553BDEAB94AADE7BFBB555555555FFF97B46F966AAAC455555463CE3D5),
    .INIT_08(256'h555555557F7AAAE538EFFFFED4D5555D4BFFF8B90AF586AAB9555555553C95D5),
    .INIT_09(256'h555555557F2AAEE18C4B7FFFBA500047BFFFFDBAFE9236AAFA7555555554E955),
    .INIT_0A(256'h555555552B3EAED5E6EC3FFFFAFFFFABFFFFAAAEE754F3ABEB755555555555D5),
    .INIT_0B(256'h55555555296AAF93AEDE7FFFFFFFFFFFFFFFB6EE3913B6AAAD35555555555555),
    .INIT_0C(256'h555555543BEAAFC2DFEB1FFFFFFFFFFFFFFEAEEF659FB6AAAF85555555555555),
    .INIT_0D(256'h55555554292AABE7F87D56BFFFFFFFFFFFAB83FB9E7FB7AABA6D555555555555),
    .INIT_0E(256'h555555503CAAABA7F981FC3ABFFFFAAEBFEE6AE859FFF3AABD8D555555555555),
    .INIT_0F(256'h5555555135EAAFE7FD4850812AAAABFC156A83EEE3FFE7AAAA5D555555555555),
    .INIT_10(256'h555555557FAAAFC7FBBA7E1ABF7FABEAAF5D9CA347FFE7AAE61D555555555555),
    .INIT_11(256'h5555555404AAAF87FE015FB4D55413E282FEFF1657FFA1AAB2BD555555555555),
    .INIT_12(256'h5555555502AAABD7FF1B4FFFEAFFFFFFFFFFFF3F1FFFA1ABC43D555555555555),
    .INIT_13(256'h555555546EAAAB97FF8AADFFFFFFFFFFFFFFF09F5FFFA5AFD06D555555555555),
    .INIT_14(256'h5555555485AAAF97FF8BE2FFFFFFFFFFFFFEBA6C7FFFA1AA5575555555555555),
    .INIT_15(256'h55555555A8EAAE97FFBFF887FFFFFFFFFFEAA0793FFFA5B95435555555555555),
    .INIT_16(256'h55555554243AAE97FFF5FEF17FB01BA113D098F5FFFFB3ED5405555555555555),
    .INIT_17(256'h555555552D1EAAEFFFE1EC14640552FAACDC43F0FFFFB3E55485555555555555),
    .INIT_18(256'h55555552FD56AAEFFFEDBE25E4010001559B4F97FFFFA69554D5555555555555),
    .INIT_19(256'h555555564D53AEEFFFFCFA567B8FFEC25129AF87FFFFE15554B5555555555555),
    .INIT_1A(256'h55555552B554FEAFFFFCEB94C3D0013316C83E1FFFFFE2D554F5555555555555),
    .INIT_1B(256'h5555555055555EAFFFFE4BB4005080BD2AD6AFDFFFFFF0D55475555555555555),
    .INIT_1C(256'h00151157800053EFFFFE1EE4D156FB902BC67C7FFFFFB955542C051040000055),
    .INIT_1D(256'h10001412D444146FFFFEAEAA2800502A02D4BF7FFFFEFD555448150000110001),
    .INIT_1E(256'h410054024141056FFFFF9EE12A802ABA423FE1FFFFFE735554A8010044011104),
    .INIT_1F(256'h1155554D3415536FFFFFC6B880000000014AE9FFFFF9725554D3454511445440),
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
    .csa({open_n5428,\U4/Addr [14:13]}),
    .dia({open_n5432,open_n5433,open_n5434,open_n5435,open_n5436,open_n5437,open_n5438,1'b0,open_n5439}),
    .rsta(nRST_pad),
    .doa({open_n5454,open_n5455,open_n5456,open_n5457,open_n5458,open_n5459,open_n5460,open_n5461,\U4/ROM0/inst_doa_i3_000 }));
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
    .INIT_00(256'hFFFFFFFFFA5B8D555460003FFFAFEFAABFB040015555554D665E8BFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFC416555544005EAAAAAAAAAAABB0004B555547D79ED2CBFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFD140B55550012AAAAAAAAAAAAABA000B555553541BBAB37FFFFFFFF),
    .INIT_03(256'hFFFFFFFFE97D58D555001BAAAAAAAAAAAAAAE800155550D54BFFBEF8FFFFFFFF),
    .INIT_04(256'hFFFFFFFFF16D435554403AAAAAAAAAAAAAAF8A014D5542C55CFFFFA99FFFFFFF),
    .INIT_05(256'hFFFFFFFFF50554B554406BF8AAAAAAAAAA7FA7016D550655407FFFFBECFFFFFF),
    .INIT_06(256'hFFFFFFFFA53555BD5140EFFEAAAAAAAAA9FFAB902D551A55456FFFFFAEB3FFFF),
    .INIT_07(256'hFFFFFFFF85F1557350C0FBFE0AAAAAAAABFFFEC16D50645553AFFFFFEB8F9FFF),
    .INIT_08(256'hFFFFFFFFC5F55510C3C4FFFFEA2AAAA2FBFFFF65A551D455577FFFFFFFAF1FFF),
    .INIT_09(256'hFFFFFFFFC495511536C0FFFFBEFFFFEBBFFFFB0575471455123FFFFFFFFEAB7F),
    .INIT_0A(256'hFFFFFFFFD0C151554DE2BFFFFAFFFFABFFFFBDC06808155413BFFFFFFFFFFEFF),
    .INIT_0B(256'hFFFFFFFFD1D5515501EDFFFFFFFFFFFFFFFFBC012020515554BFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFD3D551154580BFFFFFFFFFFFFFFEE30170405155516FFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFD755557014C6BEBFFFFFFFFFFFABE811DD00515541CFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFBC3555570040A52FABFFFFAAEBFFBCC05A4001555468FFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFAC715513005FC333AFFFFFEAABE81281768001555520FFFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFECF555170004AFB750080015554EE3A45500015550A0FFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFEBD5551700108BFECAAABFAF13BFEFE88B00053555B6FFFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFD555530013537FFFFFFFFFFFFFFFF45400053542EEFFFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFECD555530004541FFFFFFFFFFFFFFF914800053517BEFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFED2555130004845BFFFFFFFFFFFFF9BD500005755FFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFEF3155130000406EFFFFFFFFFFFFCF35640005743FEBFFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFEBFC55130000112BCC015504ABD5E8E5000004317FE9FFFFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFEAFE15540001314C35AAAAFFAAB68194D0000471FFEDFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFA6FE95540000445A1CD0000000FCA2D400000573FFECFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFA4FF851400001C52720CFFE92AC28D530000010FFFE8FFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFA9FFE0140000555649625547C82CDF540000010FFFE8FFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFEFFFFA14000015568053BEE482AC75540000012FFFE8FFFFFFFFFFFFF),
    .INIT_1C(256'hFFFFFFFCBFFFEC0000017108D007AEC02BD05100000047FFFE87FFEFBFFFFFFF),
    .INIT_1D(256'hEFFFFFFC6BBBFE800000110E2800002A028A5500000157FFFEC7EEFFFFEEFFFF),
    .INIT_1E(256'hFFFFFFEE7FFFFF8000005D522A802ABA022144000000CBFFFEA7FEFFBBFFFFFB),
    .INIT_1F(256'hBBFFFFEEBEBFFB9000004D56800000000069500000029EFFFEEBEFEFBBEEFEFF),
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
    .csa({open_n5487,\U4/Addr [14:13]}),
    .dia({open_n5491,open_n5492,open_n5493,open_n5494,open_n5495,open_n5496,open_n5497,1'b0,open_n5498}),
    .rsta(nRST_pad),
    .doa({open_n5513,open_n5514,open_n5515,open_n5516,open_n5517,open_n5518,open_n5519,open_n5520,\U4/ROM0/inst_doa_i3_001 }));
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
    .INIT_00(256'hAAAAAAAAABF13AAAABD555000000000000151554AAAAAAA38DE575FFFFFFFFAA),
    .INIT_01(256'hAAAAAAAAAFE39AAAABD5540000000000000155516AAAAB97D37B5B7FFFFFFFAA),
    .INIT_02(256'hAAAAAAAAAFF6B6AAAAD5500000000000000015546AAAAB9FE26E8FDFFFFFFFAA),
    .INIT_03(256'hAAAAAAAAAFC7E3AAAAD5440000000000000005556AAAAA3FF02AEBB3FFFFFFAA),
    .INIT_04(256'hAAAAAAAABF87F8AAAA95104000000000000001547AAAA97FF02AAAFE7FFFFFAA),
    .INIT_05(256'hAAAAAAAABF9FFA6AAA95414000000000001541541AAABDFFE92AAAAEC3FFFFAA),
    .INIT_06(256'hAAAAAAAABE9FFF5AAF94455000000000005510451AABF0FFFC3AAAAAEC5FFFAA),
    .INIT_07(256'hAAAAAAAABF1FFF9EAF15515400000000055550545AAB84FFF83AAAAABEF16FAA),
    .INIT_08(256'hAAAAAAAAFE5FFFE3AE155555000000001155515A1ABE04FFF8AAAAAAAAFBA12A),
    .INIT_09(256'hAAAAAAAAFE7FFFE0EA115555150000151555517F8AF844FFFCEAAAAAAAABFAAA),
    .INIT_0A(256'hAAAAAAAAFE7FFFA03A111555505555015555157F9BE145FFF86AAAAAAAAAABAA),
    .INIT_0B(256'hAAAAAAAAFA7FFFA45E74555555555555555505FECF8545FFFA6AAAAAAAAAAAAA),
    .INIT_0C(256'hAAAAAAAAFD7FFFA51278555555555555555445FF9F1545FFFF3AAAAAAAAAAAAA),
    .INIT_0D(256'hAAAAAAAAF8FFFFC54078041555555555550107EE605545FFFA7AAAAAAAAAAAAA),
    .INIT_0E(256'hAAAAAAAEF9FFFFC5512D515015555004155457FA115545FFFB7AAAAAAAAAAAAA),
    .INIT_0F(256'hAAAAAAAEE9FFFFC55012A9055555555540010FF9455545FFFEBAAAAAAAAAAAAA),
    .INIT_10(256'hAAAAAAAAF5FFFF855574FE950000015554113BECA55545FFEFBAAAAAAAAAAAAA),
    .INIT_11(256'hAAAAAAABA3FFFF85542A3FEB0000054FAFFFFEA6855541FFEFDAAAAAAAAAAAAA),
    .INIT_12(256'hAAAAAAAAA7FFFF85541E9FFFFFFFFFFFFFFFFEDE955541FFBADAAAAAAAAAAAAA),
    .INIT_13(256'hAAAAAAABF7FFFF85551FE3FFFFFFFFFFFFFFEB3E155541FFAEDAAAAAAAAAAAAA),
    .INIT_14(256'hAAAAAAABABFFFF855513ED7FFFFFFFFFFFFFE47A555541FEAACAAAAAAAAAAAAA),
    .INIT_15(256'hAAAAAAABDFFFFF855557F90FFFFFFFFFFFFF18F8555541FAAB8AAAAAAAAAAAAA),
    .INIT_16(256'hAAAAAAABCAFFFF855543FD52FFEAAFEABEE160E9555545FAABAAAAAAAAAAAAAA),
    .INIT_17(256'hAAAAAAAADABFFFD55541FA78400000055057F7E1555545EAABAAAAAAAAAAAAAA),
    .INIT_18(256'hAAAAAAAFDAAFFFD55551FE5E07FFFFFFE47597A5555545AAABAAAAAAAAAAAAAA),
    .INIT_19(256'hAAAAAAAEBAABFFD555517E99D570017C47D75F85555542AAABEAAAAAAAAAAAAA),
    .INIT_1A(256'hAAAAAAAF2AAAFFD555517F9B791FFF947D375E95555547AAABEAAAAAAAAAAAAA),
    .INIT_1B(256'hAAAAAAAB2AAABFD555543FC7FF900547D5397F15555543AAABEAAAAAAAAAAAAA),
    .INIT_1C(256'hAAAAAAAF6AAAAFD555541FE72FF8017FD43CFA55555552AAABEAAAAAAAAAAAAA),
    .INIT_1D(256'hAAAAAAAFAAAAAAD555555FB1D7FFFFD5FD60FC55555552AAABAAAAAAAAAAAAAA),
    .INIT_1E(256'hAAAAAABDAAAAAAD5555517E9D57FD545FDD7E955555446AAAB8AAAAAAAAAAAAA),
    .INIT_1F(256'hEEAAAAB8EBEAAED5555507F97FFFFFFFFFC3F555555047AAAB8EBABAEEBBABAA),
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
    .csa({open_n5546,\U4/Addr [14:13]}),
    .dia({open_n5550,open_n5551,open_n5552,open_n5553,open_n5554,open_n5555,open_n5556,1'b0,open_n5557}),
    .rsta(nRST_pad),
    .doa({open_n5572,open_n5573,open_n5574,open_n5575,open_n5576,open_n5577,open_n5578,open_n5579,\U4/ROM0/inst_doa_i3_002 }));
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
    .INIT_00(256'hFFFFFFFFFC9522AAA2808857FFFFFFFFFF6A88AAAAAAAAB0741F3FFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFA9A6AAAAAA8AB7FF557FFFFF5FC00A90AAAAA72595051DFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFF20B32AAAA8AADF7FFFFFFFFFFD5E229AAAAA16211FF366FFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFA7AB2222A0AB5FFFFFFFFFFFFFFF8AAAAAAA3823DFFDF51FFFFFFFF),
    .INIT_04(256'hFFFFFFFFEAE80C82A8AAF87FFFFFFFFFFFFD7E2AC2AA85AA3B5FFFF1B7FFFFFF),
    .INIT_05(256'hFFFFFFFFC0602BAAA88AE1D7FFFFFFFFFFF7FC8A42AA188A8A5FFFFD7B7FFFFF),
    .INIT_06(256'hFFFFFFFFE8C00B60A90945FDFFFFFFFFFF7F970A42AB4DA000D7FFFFF5E7FFFF),
    .INIT_07(256'hFFFFFFFFC9EA82D8A98BDBF5FFFFFFFFFF5FDF28A2A963000777FFFFFF1F35FF),
    .INIT_08(256'hFFFFFFFFABE80020A989DFFD7FFFFFFF71FFDE496A952B808CFFFFFFFFDE1FFF),
    .INIT_09(256'hFFFFFFFF890000000B27DFFF1DDD557797FF5E80E2FEA920AC7FFFFFFFFF747F),
    .INIT_0A(256'hFFFFFFFF810A800883451FFFF057FF81DFFF1120E1D220A0A3FFFFFFFFFFFF7F),
    .INIT_0B(256'hFFFFFFFF01AA0022AB195FFFFFFFD5FD7FFF10006760288003DFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFF0DA000A2AB0DF5FFFFFFFFFD7FD65683DCA82A8002D7FFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFF268000C2A107FC1FFFFFFFFFFF03D203782A8A200D37FFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFF862002C2A89C0FF21555500415FD3A8BE02AA880AD97FFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFF8EA002E2ABFACE5D57FFFD5F5DDE7A0C50AAA082243FFFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFF9E8002E2A89D7E60FFFFFC28297C5EAA02AAA2A0361FFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFD20002C2AA137FF17FFF5DEAFD7F7731EAAAA4A09C5FFFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFD02000EAAACAE7FFF57FFFFFFFFFFE002AAA848AFF5FFFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFF308000CAAA8039FFFFFFFFFFFFFDF0ABAAAA86A2FF77FFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFF068002CAAA94A3DFFFFFFFFFFF7F1F028AAAA4A97FFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFC420024AAA8AADDFFFFFFFFFFFF3568EAAAAAE8DFF3FFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFF570A024AAAAAAD4B00A8803D42DFDF8A2AAAACA7FF97FFFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFFD7CA8022AAA4A15E3D5F57F5D63548382AAAACB7FF1FFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFC7FFA0022AAAA895F37D7F7F5F9D57A0AAAAAA65FFF3FFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFE37FCA222AAAB207DEB5557553D5508C2AAAAA1FFFF1FFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFD5FFF2A02AAAA225D545D55C97D546A0AAAAAA17FFF3FFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFDFFFFEA02AAAA2A7555C750BDF55C22AAAAAAAD7FFF3FFFFFFFFFFFFF),
    .INIT_1C(256'h5557D57BD55578A2AAAA4A3D5555FDD55752222AAAAAADFFFF1757DD7555557F),
    .INIT_1D(256'h5D555F5A7F775F22AAAA807D55557D55555FA2AAAAAAAFFFFF155FDD555FD555),
    .INIT_1E(256'h5555775CF555D7A2AAAA1A8DD5555555754A00AAAAAB3DFFFF3D55D5775DD5D7),
    .INIT_1F(256'hFFFFFFF5DFDFFDA2AAAAB207D5555555552602AAAAADBFFFFF7DFFFFFFFFFF55),
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
    .csa({open_n5605,\U4/Addr [14:13]}),
    .dia({open_n5609,open_n5610,open_n5611,open_n5612,open_n5613,open_n5614,open_n5615,1'b0,open_n5616}),
    .rsta(nRST_pad),
    .doa({open_n5631,open_n5632,open_n5633,open_n5634,open_n5635,open_n5636,open_n5637,open_n5638,\U4/ROM0/inst_doa_i3_003 }));
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
    .INIT_00(256'hFFFFFFFFFD6857FFFFA2020AAAAAAAAAAA8A02037FFFFFCF9B6041FFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFF6F9FFFFF8200AAA002AAAAA0AAAA00DFFFFFA7A6F69E5FFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFDCDC5FFFF0002A2AAAAAAAAAA80A880FFFFF43DE4DDF59FFFFFFFFF),
    .INIT_03(256'hFFFFFFFFF5AF6577FF202A2AAAAAAAAAAAAAA200DFFFF6FDE0FFDF6D7FFFFFFF),
    .INIT_04(256'hFFFFFFFFFDBFF357FD8007AAAAAAAAAAAAA82A8017FFD275EA7FFFF4FFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFB7DE7FFD803E2AAAAAAAAAAA802AA037FF4B75707FFFFDA57FFFFF),
    .INIT_06(256'hFFFFFFFFD79FF637FC02BA00AAAAAAAAAA806A8017FE0BDFF2F7FFFFD21DFFFF),
    .INIT_07(256'hFFFFFFFFD6BD7D8DFC022408AAAAAAAAAAA02288B7FC2B7FF8D7FFFFFDC2DFFF),
    .INIT_08(256'hFFFFFFFFF6BFFFC77C82A0020AAAAAAA0600229E3FC00BFF7BFFFFFFFFD7CAFF),
    .INIT_09(256'hFFFFFFFFF65FFFC95E28A000E0A0000A6800A07FBFA28BDF595FFFFFFFFF55FF),
    .INIT_0A(256'hFFFFFFFFFC757FE8568AE0000FA8007E2000E27F360A0BDF5EDFFFFFFFFFFF7F),
    .INIT_0B(256'hFFFFFFFFFCF5FFC896C8200000002A028000E3FF18280BFFFE5FFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFF8FFFFC82EF08A0000000002802983FE002009FFFCF7FFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFD9FFFF8800D823E00000000000FE05FEA20029DFF4F7FFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFF71DFFDA802522A8FEAAAAFFBEA002F7C0A800BFF5657FFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFF73DFFD8802AF72A28000000AA0A0B5FA00000BFDDD57FFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFF63FFFDA800617D0A8000002A8208DD73E8000BDFD557FFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFCFFFFDA800D4DFFCAAAA029DDDFF7FCDA80009DF7DB7FFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFEFDFFF88009F9FFFFFFFFFFFFFFFFF1F800029F55F37FFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFF677FFF880037CFFFFFFFFFFFFFFFF6DE000029DDFFB7FFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFF7D7FFD88002572FFFFFFFFFFFFFFEA7E00000BD7FFBFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFF3DDFFD8800075097FFFFFFFFFFFE03F8000003F5FF7FFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFF1FF5FD880005DA2F5F55D7F7F70289F8000001DFFFDFFFFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFF17F57FA00009DC080000AAA000A805E2800003DFFF77FFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFD37F5FFA00003762020000000200007E000000BDFFF77FFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFD77FD5DA00000FF8022800002A800978800000D7FFF57FFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFC5FFF55A00002FD880228008AA000BFA000000D7FFF57FFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFEFFFFD5A00000FDA800A0A22820007EA000000D7FFF57FFFFFFFFFFFF),
    .INIT_1C(256'hFFFFFFFE5FFFF7000000BDC80002288000037C80000007FFFF57FFF7DFFFFFFF),
    .INIT_1D(256'hF7FFFFFD75DDFF0000001FE0000000000001DA8000002FFFFF77F777FFF57FFF),
    .INIT_1E(256'hFFFFFFFBFFFFFF800000AF7800000000202DF200000025FFFF7FFF7FDDF7FFFD),
    .INIT_1F(256'hFFFFFFF35FDFFD88000027FA800000000037EA0000000DFFFF35FFFFFFFFFF7F),
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
    .csa({open_n5664,\U4/Addr [14:13]}),
    .dia({open_n5668,open_n5669,open_n5670,open_n5671,open_n5672,open_n5673,open_n5674,1'b0,open_n5675}),
    .rsta(nRST_pad),
    .doa({open_n5690,open_n5691,open_n5692,open_n5693,open_n5694,open_n5695,open_n5696,open_n5697,\U4/ROM0/inst_doa_i3_004 }));
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
    .INIT_00(256'h0000000014E82955540AEB2AFFFAFFFFEEB2BAAE1555555F9EF6EAEFFFFFFF80),
    .INIT_01(256'h0000000006FBA515541AA8AAA002AAAAA0EB6ABF35554472BDEDECBAFFFFFF80),
    .INIT_02(256'h0000000007AED755551AE6A3EEBFFFAAFE808AAB15550BCAF46773BFBFFFFF80),
    .INIT_03(256'h0000000013E3EE8D512ABC2FAAABFEAAAEAABAFB85554E1FBC41218DFFFFFF80),
    .INIT_04(256'h000000000EDFE82D53ABBA8BAAAAAAAAABAC78BFAD5526BFBD40015B5FFFFF80),
    .INIT_05(256'h000000004EEBFC9152AF4EF6AAAAAAAAABCE9A2BED5480BFE590004624FFFF80),
    .INIT_06(256'h000000014A0FFB6957ABBEACFEAAAAAEAE2AF2DEFC5135FFAB180001376FFF80),
    .INIT_07(256'h000000004E8FFEF6566E3AABEFAAAAAAACAABF9E0D45F77FBC5800001378B780),
    .INIT_08(256'h000000007F7FFEAB92BC6AAB8BAAAABB5EABFB59D42667FFEC00000000389580),
    .INIT_09(256'h000000007F3FFEE2309F6AAAFE055451EAABFF6EB53F76FFFB3000000010ED00),
    .INIT_0A(256'h000000012B2BFE878DEB6AAAAAABFFBAAAABA93FADF9E3FFEE30000000000580),
    .INIT_0B(256'h00000001783FFFD2209E6EAAAEAAAAAAAAABB4EAD787E7FFEC20000000000000),
    .INIT_0C(256'h000000006ABFFF87CBEE9AAAAAAAAAAAAAAEBEAF0A5FA3FFFAD8000000000000),
    .INIT_0D(256'h000000057D3FFFC6BF0EF7AAAAAAAAAAAABF8EBA96FFE6FFFD68000000000000),
    .INIT_0E(256'h0000000578FFFEE6BD87073AFAAAAFFBAFBB0EABB9AAF2FFECE8000000000000),
    .INIT_0F(256'h0000000430FFFEA6AC491D357EAAAAA415EB02FE52AAF7FFEA18000000000000),
    .INIT_10(256'h000000047AFFFE86AEEB7FF57EFFFFD500AE98B607AAF6FFA798000000000000),
    .INIT_11(256'h0000000100FFFED7AE051FF2D001ABC7C3FAEE56A6AAE0FFB2E8000000000000),
    .INIT_12(256'h0000000153FFFA87AF0E5EFFBFEABFFFFFFFFFCB0AAAF5FE9538000000000000),
    .INIT_13(256'h00000001AFFFFAD7AEDEFDFFFFFFFFFFFFFFF8CA5AAAE1FF8428000000000000),
    .INIT_14(256'h0000000190FFFE97AB9DF6BAFFFBFFFFEFFFAEE96AAAF5FE1020000000000000),
    .INIT_15(256'h00000001AEBFFF92ABAFFBB7FFFFFFFFFFFE5D6C6AAAF5E811F0000000000000),
    .INIT_16(256'h00000001B02FFF92AAB4EE404EFB2AF5039F2BE1AEAAF2BC0540000000000000),
    .INIT_17(256'h00000000394FFBEEAAF4EEA2DABABFB50286A2A4EAAAE6B400D4000000000000),
    .INIT_18(256'h00000003B857FBFEAAF8BBCB6BFBEAAB9A3EFB92AAAAF7900080000000000000),
    .INIT_19(256'h000000064804FEBAAABDBB6ED27FFFEC9FFB4A96AAAAB00400E1010000000000),
    .INIT_1A(256'h00000002D0013EFAAABDBEA3AA62AA049FBB7F0AAAAAA78400A1010000000000),
    .INIT_1B(256'h0000000100011EBAAAAA1BBAAB2EF84FDFA97B9AAAAAA08401A4001044000000),
    .INIT_1C(256'h01551543E45547FAAAAB5EF3AAE93D6AFFBE786AAAABFD0001B4050100000000),
    .INIT_1D(256'h155104568044113AAAABAAFCFAAAFAFEAFB9FB6AAAABE80001D4051145554011),
    .INIT_1E(256'h555014534541057AAAABDBB3FFAAFFFE8E9BE1BAAAAE720000FD101040515140),
    .INIT_1F(256'h5455540C2174126FAFFE87BC2AAAAAAAAA86FDFEBFF9775554821110441545C0),
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
    .csa({open_n5723,\U4/Addr [14:13]}),
    .dia({open_n5727,open_n5728,open_n5729,open_n5730,open_n5731,open_n5732,open_n5733,1'b0,open_n5734}),
    .rsta(nRST_pad),
    .doa({open_n5749,open_n5750,open_n5751,open_n5752,open_n5753,open_n5754,open_n5755,open_n5756,\U4/ROM0/inst_doa_i3_005 }));
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
    .INIT_00(256'hFFFFFFFFFB1F0AAAABA551BFAAAFAAAAABFC0554EAAAAAF8361EDFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFF9127AAAABE543EAA002AAAAA0BE95552AAAABA57DA829BFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFED1512AAABA50AA2AAAAAAAAAA81B551AAAAAE6059BAEE77FFFFFFFF),
    .INIT_03(256'hFFFFFFFFEC7D18AAAED5482AAAAAAAAAAAAAED553AAABD854BFFBFA9FFFFFFFF),
    .INIT_04(256'hFFFFFFFFF53956EAAF14710AAAAAAAAAAAAD6B554AAAEED548BFFEE9CFFFFFFF),
    .INIT_05(256'hFFFFFFFFA44141AAAF11C406AAAAAAAAABD05F952AABA715103FFFBAFCFFFFFF),
    .INIT_06(256'hFFFFFFFFF125557AAE109400AAAAAAAAAE0003E42AAFDF55013FFFFFEBE7FFFF),
    .INIT_07(256'hFFFFFFFFF1F55522AE511005EAAAAAAAAC0012E16ABE75D516FFFFFFFE9ECBFF),
    .INIT_08(256'hFFFFFFFF90E55454AA8200000BAAAABA40015781FAF95555577FFFFFFFAE0BFF),
    .INIT_09(256'hFFFFFFFF90955405ABC7000011100141000153C16A821155426FFFFFFFEEAA7F),
    .INIT_0A(256'hFFFFFFFE809554542AA2000000015500000112546F18505547EFFFFFFFFFFEFF),
    .INIT_0B(256'hFFFFFFFEC1D554404EBB040004000000000107511861545541BFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFED3D554454486C0000000000000045F5051951455553FFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFC715544545E2A40000000000000148519155555557CFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFC6555525510EAB500000000005417945F155415553CFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFF9755556555FC73B10155500544FFFC43C9554155424FFFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFF9F555565510EFE6EFEFFFAFFEFFB3B41455545554B0FFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFAC5555255409FFBDEFFFBBC02AFEFE98155543550A7FFFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFF9555175553177FFEABFFFFFFFFFFF64155553557EAFFFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFC9555135550055FFFFFFFFFFFFFFFD15D55547547EEFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFE97555535550F01BFFFFFFFFFFFFEDF8515555754EFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFEA6555435551157EFFFFFFFFFFFE8571755555353EFEFFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFBE9554355555565DE514444FEC1F5E1455555343FB8FFFFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFFAFF55045554344C77AAFFAF0067048585555575FFEDFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFA6FE9504555451585190000010E552C155555563FFEDFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFA4FFF54455554D1354D555515B8513125555551FBFE9EFEFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFAFFFFD4055554542112A5545F8514A115555540FBFEDEFEFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFBFFFFF4055554403C047AEAE855049555555552FBFFDFFFEFBBFFFFFF),
    .INIT_1C(256'hAAAAAABCEEAAB9455554341D00002D0055040455555447FFFF9AAABBEAAAAAFF),
    .INIT_1D(256'hBFEBBAEC7EEEAEC55554000C50000054054F4555555557FFFF9ABBBBEFFFEAAA),
    .INIT_1E(256'hAAAAEAFB6EAAAFC555555D02550055540454015555548BFFFEF7BBBAEEBAEAEE),
    .INIT_1F(256'hFFFFFFEBBFFFFBC555554D0300000000017405555552CFFFFEFBFFFFFFFFFFAA),
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
    .csa({open_n5782,\U4/Addr [14:13]}),
    .dia({open_n5786,open_n5787,open_n5788,open_n5789,open_n5790,open_n5791,open_n5792,1'b0,open_n5793}),
    .rsta(nRST_pad),
    .doa({open_n5808,open_n5809,open_n5810,open_n5811,open_n5812,open_n5813,open_n5814,open_n5815,\U4/ROM0/inst_doa_i3_006 }));
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
    .INIT_00(256'hFFFFFFFFFAF1EFFFFF8000000000000000100001FFFFFFB3D8E021FFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFEF1DFFFFFC004000AA800000A010005BFFFFF9FC26F1E3FFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFAB3ABFFFEC0100800000000002A00003FFFFE9FB33BCB9FFFFFFFFF),
    .INIT_03(256'hFFFFFFFFEBD6F6FFFE80078000000000000000007FFFFE7AE17FBFF2FFFFFFFF),
    .INIT_04(256'hFFFFFFFFFBD6A9FFFF800FA0000000000002C0012FFFEC6AF47FFFEB7FFFFFFF),
    .INIT_05(256'hFFFFFFFFFBCEBF3FFF803BFC00000000012FF1010FFFA8EAE87FFFFBC2FFFFFF),
    .INIT_06(256'hFFFFFFFFAF9AAF8FFE806BFA0000000005FFF8004FFFA1AAED7FFFFFAC1BFFFF),
    .INIT_07(256'hFFFFFFFFEF5AABCBFFC1EFFB4000000007FFE8510FFE85AAE93FFFFFFBA53FFF),
    .INIT_08(256'hFFFFFFFFEF5AABB6FA04FFFEE1000010AFFEA87F1FFAD5AAB9FFFFFFFFAFB57F),
    .INIT_09(256'hFFFFFFFFEE2AABB4BB45FFFFEBEAAABAFFFEA93F9FE915AAB8BFFFFFFFFEABFF),
    .INIT_0A(256'hFFFFFFFFFA6AABF46E01FFFFFFFEAAFFFFFEEDEA8AB415AABD3FFFFFFFFFFEFF),
    .INIT_0B(256'hFFFFFFFFBB6AABB41E24FBFFFBFFFFFFFFFEFCAFEA9011AABE3FFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFB96AABB0526C7FFFFFFFFFFFFFFBB1AEAB4051AAAB7FFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFEB9EAABF0047C1BFFFFFFFFFFFFFEA3AE290011AAAE6FFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFEA9AAABD0042C51AFFFFFFFFFFAAAC6BF440015AAAE6FFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFEEDAAAB900556B80FAAAAAAAFFA540BB9600015AABAAFFFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFEE5AAABD00070FB915455550014443EEDF00015AAABAFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFB7AAABD0012A3FEE0000507BBBFEFFA2900011AAFB8FFFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFA6AAAF90011F8FFFFFFFFFFFFFFFFFDFC00001AABECFFFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFE6AAAF90004FB3FFFFFFFFFFFFFFFB3E000011ABFFCFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFEEAAAAB900046ED7FFFFFFFFFFFFFA17E000001ABFFDFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFEDFAAAB900006AC4FFFFFFFFFFFFFA8F8000005ABFFDFFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFF8FEAAB900003B9E6FABFEBEAAEB5A5F8000001BFFFBFFFFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFE8FAAAFC00011BF2D5555500FFC1AA3E5000001AFFEAFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFACFEAAFC00004EF6A86AAAAAAB1BEC7E0000005BFFEEFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFAEFFEABC000016ECEF1BFFFAF12FBCF90000002FFFEAFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFA7FFFABC000056BCBA94AAAA52FBA5EC0000012FFFEAFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFF7FFFABC000017FD2AAC45142FFAB6F40000012FFFFAFFFFFFFFFFFFF),
    .INIT_1C(256'hFFFFFFFE7BFFEE8000015BA3AAAE83AAFFA8FB00000003FFFFBFFFEEBFFFFFFF),
    .INIT_1D(256'hEABEFFBAEBBBFE8000001FE2FAAAAAFEAFB1BD00000057FFFFFFEEEEBAAABFFF),
    .INIT_1E(256'hFFFFFFBDFBFFFF80000016FCFFAAFFFEAEE3EC00000043FFFEDAEEEFBBEFBFBB),
    .INIT_1F(256'hFFFFFFECBFFFFB90000046FDAAAAAAAAAA9FF400000013FFFECBFFFFFFFFFFFF),
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
    .csa({open_n5841,\U4/Addr [14:13]}),
    .dia({open_n5845,open_n5846,open_n5847,open_n5848,open_n5849,open_n5850,open_n5851,1'b0,open_n5852}),
    .rsta(nRST_pad),
    .doa({open_n5867,open_n5868,open_n5869,open_n5870,open_n5871,open_n5872,open_n5873,open_n5874,\U4/ROM0/inst_doa_i3_007 }));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add0/ucin_al_u364"),
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
    \U4/add0/u11_al_u367  (
    .a({\U4/AddrCtrl [13],\U4/AddrCtrl [11]}),
    .b({\U4/AddrCtrl [14],\U4/AddrCtrl [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add0/c11 ),
    .f({\U4/n1 [13],\U4/n1 [11]}),
    .fco(\U4/add0/c15 ),
    .fx({\U4/n1 [14],\U4/n1 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add0/ucin_al_u364"),
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
    \U4/add0/u15_al_u368  (
    .a({open_n5902,\U4/AddrCtrl [15]}),
    .c(2'b00),
    .d({open_n5907,1'b0}),
    .fci(\U4/add0/c15 ),
    .f({open_n5924,\U4/n1 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add0/ucin_al_u364"),
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
    \U4/add0/u3_al_u365  (
    .a({\U4/AddrCtrl [5],\U4/AddrCtrl [3]}),
    .b({\U4/AddrCtrl [6],\U4/AddrCtrl [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add0/c3 ),
    .f({\U4/n1 [5],\U4/n1 [3]}),
    .fco(\U4/add0/c7 ),
    .fx({\U4/n1 [6],\U4/n1 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add0/ucin_al_u364"),
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
    \U4/add0/u7_al_u366  (
    .a({\U4/AddrCtrl [9],\U4/AddrCtrl [7]}),
    .b({\U4/AddrCtrl [10],\U4/AddrCtrl [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add0/c7 ),
    .f({\U4/n1 [9],\U4/n1 [7]}),
    .fco(\U4/add0/c11 ),
    .fx({\U4/n1 [10],\U4/n1 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add0/ucin_al_u364"),
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
    \U4/add0/ucin_al_u364  (
    .a({\U4/AddrCtrl [1],1'b0}),
    .b({\U4/AddrCtrl [2],\U4/AddrCtrl [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U4/n1 [1],open_n5983}),
    .fco(\U4/add0/c3 ),
    .fx({\U4/n1 [2],\U4/n1 [0]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add1/ucin_al_u369"),
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
    \U4/add1/u11_al_u372  (
    .a({\U4/Addr [13],\U4/Addr [11]}),
    .b({\U4/Addr [14],\U4/Addr [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add1/c11 ),
    .f({\U4/n5 [13],\U4/n5 [11]}),
    .fx({\U4/n5 [14],\U4/n5 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add1/ucin_al_u369"),
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
    \U4/add1/u3_al_u370  (
    .a({\U4/Addr [5],\U4/Addr [3]}),
    .b({\U4/Addr [6],\U4/Addr [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add1/c3 ),
    .f({\U4/n5 [5],\U4/n5 [3]}),
    .fco(\U4/add1/c7 ),
    .fx({\U4/n5 [6],\U4/n5 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add1/ucin_al_u369"),
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
    \U4/add1/u7_al_u371  (
    .a({\U4/Addr [9],\U4/Addr [7]}),
    .b({\U4/Addr [10],\U4/Addr [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U4/add1/c7 ),
    .f({\U4/n5 [9],\U4/n5 [7]}),
    .fco(\U4/add1/c11 ),
    .fx({\U4/n5 [10],\U4/n5 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("U4/add1/ucin_al_u369"),
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
    \U4/add1/ucin_al_u369  (
    .a({\U4/Addr [1],1'b0}),
    .b({\U4/Addr [2],\U4/Addr [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U4/n5 [1],open_n6058}),
    .fco(\U4/add1/c3 ),
    .fx({\U4/n5 [2],\U4/n5 [0]}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt0_0|U4/lt0_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt0_0|U4/lt0_cin  (
    .a({\U4/AddrCtrl [0],1'b0}),
    .b({1'b1,open_n6061}),
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
    .b(2'b00),
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
    .b(2'b11),
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
    .b(2'b11),
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
    .b(2'b11),
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
    .b(2'b01),
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
    .f({\U4/n4 ,open_n6273}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_0|U4/lt1_cin  (
    .a({\U4/AddrCtrl [0],1'b0}),
    .b({1'b0,open_n6279}),
    .fco(\U4/lt1_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_10|U4/lt1_9  (
    .a(\U4/AddrCtrl [10:9]),
    .b(2'b11),
    .fci(\U4/lt1_c9 ),
    .fco(\U4/lt1_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_12|U4/lt1_11  (
    .a(\U4/AddrCtrl [12:11]),
    .b(2'b00),
    .fci(\U4/lt1_c11 ),
    .fco(\U4/lt1_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_14|U4/lt1_13  (
    .a(\U4/AddrCtrl [14:13]),
    .b(2'b00),
    .fci(\U4/lt1_c13 ),
    .fco(\U4/lt1_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_2|U4/lt1_1  (
    .a(\U4/AddrCtrl [2:1]),
    .b(2'b00),
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
    .a(\U4/AddrCtrl [4:3]),
    .b(2'b00),
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
    .a(\U4/AddrCtrl [6:5]),
    .b(2'b10),
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
    .a(\U4/AddrCtrl [8:7]),
    .b(2'b00),
    .fci(\U4/lt1_c7 ),
    .fco(\U4/lt1_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt1_0|U4/lt1_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt1_cout|U4/lt1_15  (
    .a({1'b0,\U4/AddrCtrl [15]}),
    .b(2'b10),
    .fci(\U4/lt1_c15 ),
    .f({\U4/n8 ,open_n6491}));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_0|U4/lt2_cin  (
    .a({\U4/AddrCtrl [0],1'b0}),
    .b({1'b0,open_n6497}),
    .fco(\U4/lt2_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_10|U4/lt2_9  (
    .a(\U4/AddrCtrl [10:9]),
    .b(2'b00),
    .fci(\U4/lt2_c9 ),
    .fco(\U4/lt2_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_12|U4/lt2_11  (
    .a(\U4/AddrCtrl [12:11]),
    .b(2'b00),
    .fci(\U4/lt2_c11 ),
    .fco(\U4/lt2_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_14|U4/lt2_13  (
    .a(\U4/AddrCtrl [14:13]),
    .b(2'b00),
    .fci(\U4/lt2_c13 ),
    .fco(\U4/lt2_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_2|U4/lt2_1  (
    .a(\U4/AddrCtrl [2:1]),
    .b(2'b00),
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
    .a(\U4/AddrCtrl [4:3]),
    .b(2'b00),
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
    .a(\U4/AddrCtrl [6:5]),
    .b(2'b00),
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
    .a(\U4/AddrCtrl [8:7]),
    .b(2'b10),
    .fci(\U4/lt2_c7 ),
    .fco(\U4/lt2_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/lt2_0|U4/lt2_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U4/lt2_cout|U4/lt2_15  (
    .a({1'b0,\U4/AddrCtrl [15]}),
    .b(2'b10),
    .fci(\U4/lt2_c15 ),
    .f({\U4/n12 ,open_n6709}));
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  EG_PHY_LSLICE #(
    //.LUTF0("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTF1("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG0("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG1("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0100010101000000),
    .INIT_LUTF1(16'b0100010101000000),
    .INIT_LUTG0(16'b0100010101000000),
    .INIT_LUTG1(16'b0100010101000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg0_b0|U4/reg0_b14  (
    .a({LCD_SYNC_pad,LCD_SYNC_pad}),
    .b({\U4/n5 [0],\U4/n5 [14]}),
    .c({\U4/n4 ,\U4/n4 }),
    .clk(CLK_100M),
    .d({\U4/Addr [0],\U4/Addr [14]}),
    .sr(nRST_pad),
    .q({\U4/Addr [0],\U4/Addr [14]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  EG_PHY_LSLICE #(
    //.LUTF0("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTF1("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG0("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG1("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0100010101000000),
    .INIT_LUTF1(16'b0100010101000000),
    .INIT_LUTG0(16'b0100010101000000),
    .INIT_LUTG1(16'b0100010101000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg0_b10|U4/reg0_b13  (
    .a({LCD_SYNC_pad,LCD_SYNC_pad}),
    .b({\U4/n5 [10],\U4/n5 [13]}),
    .c({\U4/n4 ,\U4/n4 }),
    .clk(CLK_100M),
    .d({\U4/Addr [10],\U4/Addr [13]}),
    .sr(nRST_pad),
    .q({\U4/Addr [10],\U4/Addr [13]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  EG_PHY_LSLICE #(
    //.LUTF0("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTF1("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG0("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG1("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0100010101000000),
    .INIT_LUTF1(16'b0100010101000000),
    .INIT_LUTG0(16'b0100010101000000),
    .INIT_LUTG1(16'b0100010101000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg0_b11|U4/reg0_b9  (
    .a({LCD_SYNC_pad,LCD_SYNC_pad}),
    .b({\U4/n5 [11],\U4/n5 [9]}),
    .c({\U4/n4 ,\U4/n4 }),
    .clk(CLK_100M),
    .d({\U4/Addr [11],\U4/Addr [9]}),
    .sr(nRST_pad),
    .q({\U4/Addr [11],\U4/Addr [9]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  EG_PHY_LSLICE #(
    //.LUTF0("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTF1("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG0("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG1("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0100010101000000),
    .INIT_LUTF1(16'b0100010101000000),
    .INIT_LUTG0(16'b0100010101000000),
    .INIT_LUTG1(16'b0100010101000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg0_b12|U4/reg0_b8  (
    .a({LCD_SYNC_pad,LCD_SYNC_pad}),
    .b({\U4/n5 [12],\U4/n5 [8]}),
    .c({\U4/n4 ,\U4/n4 }),
    .clk(CLK_100M),
    .d({\U4/Addr [12],\U4/Addr [8]}),
    .sr(nRST_pad),
    .q({\U4/Addr [12],\U4/Addr [8]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  EG_PHY_LSLICE #(
    //.LUTF0("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTF1("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG0("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG1("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0100010101000000),
    .INIT_LUTF1(16'b0100010101000000),
    .INIT_LUTG0(16'b0100010101000000),
    .INIT_LUTG1(16'b0100010101000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg0_b1|U4/reg0_b7  (
    .a({LCD_SYNC_pad,LCD_SYNC_pad}),
    .b({\U4/n5 [1],\U4/n5 [7]}),
    .c({\U4/n4 ,\U4/n4 }),
    .clk(CLK_100M),
    .d({\U4/Addr [1],\U4/Addr [7]}),
    .sr(nRST_pad),
    .q({\U4/Addr [1],\U4/Addr [7]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  EG_PHY_LSLICE #(
    //.LUTF0("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTF1("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG0("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG1("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0100010101000000),
    .INIT_LUTF1(16'b0100010101000000),
    .INIT_LUTG0(16'b0100010101000000),
    .INIT_LUTG1(16'b0100010101000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg0_b2|U4/reg0_b6  (
    .a({LCD_SYNC_pad,LCD_SYNC_pad}),
    .b({\U4/n5 [2],\U4/n5 [6]}),
    .c({\U4/n4 ,\U4/n4 }),
    .clk(CLK_100M),
    .d({\U4/Addr [2],\U4/Addr [6]}),
    .sr(nRST_pad),
    .q({\U4/Addr [2],\U4/Addr [6]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  EG_PHY_LSLICE #(
    //.LUTF0("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTF1("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG0("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG1("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0100010101000000),
    .INIT_LUTF1(16'b0100010101000000),
    .INIT_LUTG0(16'b0100010101000000),
    .INIT_LUTG1(16'b0100010101000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg0_b3|U4/reg0_b5  (
    .a({LCD_SYNC_pad,LCD_SYNC_pad}),
    .b({\U4/n5 [3],\U4/n5 [5]}),
    .c({\U4/n4 ,\U4/n4 }),
    .clk(CLK_100M),
    .d({\U4/Addr [3],\U4/Addr [5]}),
    .sr(nRST_pad),
    .q({\U4/Addr [3],\U4/Addr [5]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
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
    \U4/reg1_b0|U4/reg1_b9  (
    .c({\U4/n1 [0],\U4/n1 [9]}),
    .clk(CLK_100M),
    .d({\U4/mux1_b0_sel_is_0_o ,\U4/mux1_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\U4/AddrCtrl [0],\U4/AddrCtrl [9]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
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
    \U4/reg1_b10|U4/reg1_b8  (
    .c({\U4/n1 [10],\U4/n1 [8]}),
    .clk(CLK_100M),
    .d({\U4/mux1_b0_sel_is_0_o ,\U4/mux1_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\U4/AddrCtrl [10],\U4/AddrCtrl [8]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
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
    \U4/reg1_b11|U4/reg1_b7  (
    .c({\U4/n1 [11],\U4/n1 [7]}),
    .clk(CLK_100M),
    .d({\U4/mux1_b0_sel_is_0_o ,\U4/mux1_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\U4/AddrCtrl [11],\U4/AddrCtrl [7]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
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
    \U4/reg1_b12|U4/reg1_b6  (
    .c({\U4/n1 [12],\U4/n1 [6]}),
    .clk(CLK_100M),
    .d({\U4/mux1_b0_sel_is_0_o ,\U4/mux1_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\U4/AddrCtrl [12],\U4/AddrCtrl [6]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
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
    \U4/reg1_b13|U4/reg1_b5  (
    .c({\U4/n1 [13],\U4/n1 [5]}),
    .clk(CLK_100M),
    .d({\U4/mux1_b0_sel_is_0_o ,\U4/mux1_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\U4/AddrCtrl [13],\U4/AddrCtrl [5]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
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
    \U4/reg1_b14|U4/reg1_b4  (
    .c({\U4/n1 [14],\U4/n1 [4]}),
    .clk(CLK_100M),
    .d({\U4/mux1_b0_sel_is_0_o ,\U4/mux1_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\U4/AddrCtrl [14],\U4/AddrCtrl [4]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
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
    \U4/reg1_b15|U4/reg1_b3  (
    .c({\U4/n1 [15],\U4/n1 [3]}),
    .clk(CLK_100M),
    .d({\U4/mux1_b0_sel_is_0_o ,\U4/mux1_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\U4/AddrCtrl [15],\U4/AddrCtrl [3]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
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
    \U4/reg1_b1|U4/reg1_b2  (
    .c({\U4/n1 [1],\U4/n1 [2]}),
    .clk(CLK_100M),
    .d({\U4/mux1_b0_sel_is_0_o ,\U4/mux1_b0_sel_is_0_o }),
    .sr(nRST_pad),
    .q({\U4/AddrCtrl [1],\U4/AddrCtrl [2]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*B*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*B*D)"),
    //.LUTG1("(~C*D)"),
    .INIT_LUTF0(16'b0000110000000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000110000000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u125|_al_u143  (
    .b({open_n7079,\D1/n21 }),
    .c({FIFO_EMPTY,FIFO_EMPTY}),
    .d({FIFO_DO[3],\D1/n22 }),
    .f({LCD_B_pad[6],FIFO_RE}));
  EG_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~D)"),
    //.LUTG1("(~C*D)"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000000011111111),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u126|_al_u331  (
    .c({FIFO_EMPTY,open_n7108}),
    .d({FIFO_DO[2],FIFO_EMPTY}),
    .f({LCD_B_pad[5],LCD_B_pad[2]}));
  EG_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("(~C*D)"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b0000111100000000),
    .MODE("LOGIC"))
    \_al_u127|_al_u140  (
    .c({FIFO_EMPTY,FIFO_DO[12]}),
    .d({FIFO_DO[1],FIFO_EMPTY}),
    .f({LCD_B_pad[4],LCD_R_pad[4]}));
  EG_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("(~C*D)"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b0000111100000000),
    .MODE("LOGIC"))
    \_al_u128|_al_u139  (
    .c({FIFO_EMPTY,FIFO_DO[13]}),
    .d({FIFO_DO[0],FIFO_EMPTY}),
    .f({LCD_B_pad[3],LCD_R_pad[5]}));
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
    \_al_u129|_al_u138  (
    .c({FIFO_EMPTY,FIFO_DO[14]}),
    .d({FIFO_DO[10],FIFO_EMPTY}),
    .f({LCD_G_pad[7],LCD_R_pad[6]}));
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
    \_al_u130|_al_u137  (
    .c({FIFO_EMPTY,FIFO_DO[15]}),
    .d({FIFO_DO[9],FIFO_EMPTY}),
    .f({LCD_G_pad[6],LCD_R_pad[7]}));
  EG_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(~C*D)"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b0000111100000000),
    .MODE("LOGIC"))
    \_al_u131|_al_u136  (
    .c({FIFO_EMPTY,FIFO_DO[4]}),
    .d({FIFO_DO[8],FIFO_EMPTY}),
    .f({LCD_G_pad[5],LCD_B_pad[7]}));
  EG_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("~(~C*~D)"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"))
    \_al_u132|_al_u135  (
    .c({FIFO_EMPTY,FIFO_DO[5]}),
    .d({FIFO_DO[11],FIFO_EMPTY}),
    .f({LCD_R_pad[3],LCD_G_pad[2]}));
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u133|_al_u134  (
    .c(FIFO_DO[7:6]),
    .d({FIFO_EMPTY,FIFO_EMPTY}),
    .f(LCD_G_pad[4:3]));
  EG_PHY_LSLICE #(
    //.LUTF0("~(C*D)"),
    //.LUTG0("~(C*D)"),
    .INIT_LUTF0(16'b0000111111111111),
    .INIT_LUTG0(16'b0000111111111111),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    _al_u141 (
    .c({open_n7317,\D1/n10 }),
    .d({open_n7320,\D1/n9 }),
    .f({open_n7338,LCD_HYNC_pad}));
  EG_PHY_MSLICE #(
    //.LUT0("(D*C*B*A)"),
    //.LUT1("~(C*D)"),
    .INIT_LUT0(16'b1000000000000000),
    .INIT_LUT1(16'b0000111111111111),
    .MODE("LOGIC"))
    \_al_u142|_al_u233  (
    .a({open_n7344,_al_u229_o}),
    .b({open_n7345,_al_u230_o}),
    .c({\D1/n13 ,_al_u231_o}),
    .d({\D1/n12 ,_al_u232_o}),
    .f({LCD_SYNC_pad,_al_u233_o}));
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
  EG_PHY_LSLICE #(
    //.LUTF0("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTF1("(~C*~D)"),
    //.LUTG0("(~A*(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C))"),
    //.LUTG1("(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0100010101000000),
    .INIT_LUTF1(16'b0000000000001111),
    .INIT_LUTG0(16'b0100010101000000),
    .INIT_LUTG1(16'b0000000000001111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u144|U4/reg0_b4  (
    .a({open_n7366,LCD_SYNC_pad}),
    .b({open_n7367,\U4/n5 [4]}),
    .c({LCD_SYNC_pad,\U4/n4 }),
    .clk(CLK_100M),
    .d({LCD_HYNC_pad,\U4/Addr [4]}),
    .sr(nRST_pad),
    .f({\U4/mux1_b0_sel_is_0_o ,open_n7385}),
    .q({open_n7389,\U4/Addr [4]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/LCDCTRL.v(44)
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
    \_al_u177|_al_u224  (
    .a({\D1/n15 ,\D1/PixelCount [12]}),
    .b({\D1/n16 ,\D1/PixelCount [13]}),
    .c({\D1/n18 ,\D1/PixelCount [14]}),
    .d({\D1/n20 ,\D1/PixelCount [15]}),
    .f({GPIO_pad,_al_u224_o}));
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
    \_al_u178|_al_u196  (
    .a({\U4/Addr_piped [0],\U4/Addr_piped [0]}),
    .b({\U4/Addr_piped [1],\U4/Addr_piped [1]}),
    .c({\U4/ROM0/inst_doa_i2_000 ,\U4/ROM0/inst_doa_i2_006 }),
    .d({\U4/ROM0/inst_doa_i3_000 ,\U4/ROM0/inst_doa_i3_006 }),
    .f({_al_u178_o,_al_u196_o}));
  EG_PHY_LSLICE #(
    //.LUTF0("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTF1("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTG0("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTG1("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    .INIT_LUTF0(16'b0000010010001100),
    .INIT_LUTF1(16'b0000000100100011),
    .INIT_LUTG0(16'b0000010010001100),
    .INIT_LUTG1(16'b0000000100100011),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u179|_al_u193  (
    .a({\U4/Addr_piped [0],\U4/Addr_piped [0]}),
    .b({\U4/Addr_piped [1],\U4/Addr_piped [1]}),
    .c({\U4/ROM0/inst_doa_i0_000 ,\U4/ROM0/inst_doa_i2_005 }),
    .d({\U4/ROM0/inst_doa_i1_000 ,\U4/ROM0/inst_doa_i3_005 }),
    .f({_al_u179_o,_al_u193_o}));
  EG_PHY_MSLICE #(
    //.LUT0("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUT1("~(C*~(~B*~D))"),
    .INIT_LUT0(16'b0000010010001100),
    .INIT_LUT1(16'b0000111100111111),
    .MODE("LOGIC"))
    \_al_u180|_al_u184  (
    .a({open_n7462,\U4/Addr_piped [0]}),
    .b({_al_u179_o,\U4/Addr_piped [1]}),
    .c({\U4/n12 ,\U4/ROM0/inst_doa_i2_002 }),
    .d({_al_u178_o,\U4/ROM0/inst_doa_i3_002 }),
    .f({FIFO_DI[0],_al_u184_o}));
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
    \_al_u181|_al_u190  (
    .a({\U4/Addr_piped [0],\U4/Addr_piped [0]}),
    .b({\U4/Addr_piped [1],\U4/Addr_piped [1]}),
    .c({\U4/ROM0/inst_doa_i2_001 ,\U4/ROM0/inst_doa_i2_004 }),
    .d({\U4/ROM0/inst_doa_i3_001 ,\U4/ROM0/inst_doa_i3_004 }),
    .f({_al_u181_o,_al_u190_o}));
  EG_PHY_LSLICE #(
    //.LUTF0("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTF1("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTG0("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTG1("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    .INIT_LUTF0(16'b0000010010001100),
    .INIT_LUTF1(16'b0000000100100011),
    .INIT_LUTG0(16'b0000010010001100),
    .INIT_LUTG1(16'b0000000100100011),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u182|_al_u187  (
    .a({\U4/Addr_piped [0],\U4/Addr_piped [0]}),
    .b({\U4/Addr_piped [1],\U4/Addr_piped [1]}),
    .c({\U4/ROM0/inst_doa_i0_001 ,\U4/ROM0/inst_doa_i2_003 }),
    .d({\U4/ROM0/inst_doa_i1_001 ,\U4/ROM0/inst_doa_i3_003 }),
    .f({_al_u182_o,_al_u187_o}));
  EG_PHY_MSLICE #(
    //.LUT0("(C*D)"),
    //.LUT1("~(C*~(~B*~D))"),
    .INIT_LUT0(16'b1111000000000000),
    .INIT_LUT1(16'b0000111100111111),
    .MODE("LOGIC"))
    \_al_u183|_al_u145  (
    .b({_al_u182_o,open_n7533}),
    .c({\U4/n12 ,\U4/n8 }),
    .d({_al_u181_o,\U4/mux1_b0_sel_is_0_o }),
    .f({FIFO_DI[1],FIFO_WE}));
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTF1("~(C*~(~B*~D))"),
    //.LUTG0("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTG1("~(C*~(~B*~D))"),
    .INIT_LUTF0(16'b0000000100100011),
    .INIT_LUTF1(16'b0000111100111111),
    .INIT_LUTG0(16'b0000000100100011),
    .INIT_LUTG1(16'b0000111100111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u186|_al_u185  (
    .a({open_n7554,\U4/Addr_piped [0]}),
    .b({_al_u185_o,\U4/Addr_piped [1]}),
    .c({\U4/n12 ,\U4/ROM0/inst_doa_i0_002 }),
    .d({_al_u184_o,\U4/ROM0/inst_doa_i1_002 }),
    .f({FIFO_DI[2],_al_u185_o}));
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTF1("~(C*~(~B*~D))"),
    //.LUTG0("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTG1("~(C*~(~B*~D))"),
    .INIT_LUTF0(16'b0000000100100011),
    .INIT_LUTF1(16'b0000111100111111),
    .INIT_LUTG0(16'b0000000100100011),
    .INIT_LUTG1(16'b0000111100111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u189|_al_u188  (
    .a({open_n7579,\U4/Addr_piped [0]}),
    .b({_al_u188_o,\U4/Addr_piped [1]}),
    .c({\U4/n12 ,\U4/ROM0/inst_doa_i0_003 }),
    .d({_al_u187_o,\U4/ROM0/inst_doa_i1_003 }),
    .f({FIFO_DI[3],_al_u188_o}));
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTF1("~(C*~(~B*~D))"),
    //.LUTG0("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTG1("~(C*~(~B*~D))"),
    .INIT_LUTF0(16'b0000000100100011),
    .INIT_LUTF1(16'b0000111100111111),
    .INIT_LUTG0(16'b0000000100100011),
    .INIT_LUTG1(16'b0000111100111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u192|_al_u191  (
    .a({open_n7604,\U4/Addr_piped [0]}),
    .b({_al_u191_o,\U4/Addr_piped [1]}),
    .c({\U4/n12 ,\U4/ROM0/inst_doa_i0_004 }),
    .d({_al_u190_o,\U4/ROM0/inst_doa_i1_004 }),
    .f({FIFO_DI[4],_al_u191_o}));
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTF1("~(C*~(~B*~D))"),
    //.LUTG0("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTG1("~(C*~(~B*~D))"),
    .INIT_LUTF0(16'b0000000100100011),
    .INIT_LUTF1(16'b0000111100111111),
    .INIT_LUTG0(16'b0000000100100011),
    .INIT_LUTG1(16'b0000111100111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u195|_al_u194  (
    .a({open_n7629,\U4/Addr_piped [0]}),
    .b({_al_u194_o,\U4/Addr_piped [1]}),
    .c({\U4/n12 ,\U4/ROM0/inst_doa_i0_005 }),
    .d({_al_u193_o,\U4/ROM0/inst_doa_i1_005 }),
    .f({FIFO_DI[5],_al_u194_o}));
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTF1("~(C*~(~B*~D))"),
    //.LUTG0("(~B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTG1("~(C*~(~B*~D))"),
    .INIT_LUTF0(16'b0000000100100011),
    .INIT_LUTF1(16'b0000111100111111),
    .INIT_LUTG0(16'b0000000100100011),
    .INIT_LUTG1(16'b0000111100111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u198|_al_u197  (
    .a({open_n7654,\U4/Addr_piped [0]}),
    .b({_al_u197_o,\U4/Addr_piped [1]}),
    .c({\U4/n12 ,\U4/ROM0/inst_doa_i0_006 }),
    .d({_al_u196_o,\U4/ROM0/inst_doa_i1_006 }),
    .f({FIFO_DI[6],_al_u197_o}));
  EG_PHY_LSLICE #(
    //.LUTF0("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTF1("~(C*~(~B*~D))"),
    //.LUTG0("(B*~(C*~(D)*~(A)+C*D*~(A)+~(C)*D*A+C*D*A))"),
    //.LUTG1("~(C*~(~B*~D))"),
    .INIT_LUTF0(16'b0000010010001100),
    .INIT_LUTF1(16'b0000111100111111),
    .INIT_LUTG0(16'b0000010010001100),
    .INIT_LUTG1(16'b0000111100111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u201|_al_u199  (
    .a({open_n7679,\U4/Addr_piped [0]}),
    .b({_al_u200_o,\U4/Addr_piped [1]}),
    .c({\U4/n12 ,\U4/ROM0/inst_doa_i2_007 }),
    .d({_al_u199_o,\U4/ROM0/inst_doa_i3_007 }),
    .f({FIFO_DI[7],_al_u199_o}));
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u202|U1/reg0_b3  (
    .a({\U1/Count [27],open_n7704}),
    .b({\U1/Count [28],_al_u211_o}),
    .c({\U1/Count [29],\U1/n3 [3]}),
    .clk(LCD_CLK_pad),
    .d({\U1/Count [3],_al_u206_o}),
    .sr(nRST_pad),
    .f({_al_u202_o,open_n7722}),
    .q({open_n7726,\U1/Count [3]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(~D*~C*B*A)"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(~D*~C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0000000000001000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0000000000001000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u203|U1/reg0_b26  (
    .a({\U1/Count [23],open_n7727}),
    .b({\U1/Count [24],_al_u211_o}),
    .c({\U1/Count [25],\U1/n3 [26]}),
    .clk(LCD_CLK_pad),
    .d({\U1/Count [26],_al_u206_o}),
    .sr(nRST_pad),
    .f({_al_u203_o,open_n7745}),
    .q({open_n7749,\U1/Count [26]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(D*~C*~B*A)"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(D*~C*~B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0000001000000000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0000001000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u204|U1/reg0_b9  (
    .a({\U1/Count [6],open_n7750}),
    .b({\U1/Count [7],_al_u211_o}),
    .c({\U1/Count [8],\U1/n3 [9]}),
    .clk(LCD_CLK_pad),
    .d({\U1/Count [9],_al_u206_o}),
    .sr(nRST_pad),
    .f({_al_u204_o,open_n7768}),
    .q({open_n7772,\U1/Count [9]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u205|U1/reg0_b5  (
    .a({\U1/Count [30],open_n7773}),
    .b({\U1/Count [31],_al_u211_o}),
    .c({\U1/Count [4],\U1/n3 [5]}),
    .clk(LCD_CLK_pad),
    .d({\U1/Count [5],_al_u206_o}),
    .sr(nRST_pad),
    .f({_al_u205_o,open_n7791}),
    .q({open_n7795,\U1/Count [5]}));  // source/CLK_MOD.v(32)
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
    \_al_u206|U2/CLK_OUT_reg  (
    .a({_al_u202_o,open_n7796}),
    .b({_al_u203_o,open_n7797}),
    .c({_al_u204_o,open_n7798}),
    .ce(\U2/n1 ),
    .clk(clk_pad),
    .d({_al_u205_o,LED_pad[2]}),
    .sr(nRST_pad),
    .f({_al_u206_o,open_n7815}),
    .q({open_n7819,LED_pad[2]}));  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(D*C*B*A)"),
    //.LUTF1("(D*~C*~B*~A)"),
    //.LUTG0("(D*C*B*A)"),
    //.LUTG1("(D*~C*~B*~A)"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b0000000100000000),
    .INIT_LUTG0(16'b1000000000000000),
    .INIT_LUTG1(16'b0000000100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u207|_al_u211  (
    .a({\U1/Count [12],_al_u207_o}),
    .b({\U1/Count [13],_al_u208_o}),
    .c({\U1/Count [14],_al_u209_o}),
    .d({\U1/Count [15],_al_u210_o}),
    .f({_al_u207_o,_al_u211_o}));
  EG_PHY_LSLICE #(
    //.LUTF0("(~D*C*B*A)"),
    //.LUTF1("(D*~C*~B*~A)"),
    //.LUTG0("(~D*C*B*A)"),
    //.LUTG1("(D*~C*~B*~A)"),
    .INIT_LUTF0(16'b0000000010000000),
    .INIT_LUTF1(16'b0000000100000000),
    .INIT_LUTG0(16'b0000000010000000),
    .INIT_LUTG1(16'b0000000100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u208|_al_u210  (
    .a({\U1/Count [0],\U1/Count [16]}),
    .b({\U1/Count [1],\U1/Count [17]}),
    .c({\U1/Count [10],\U1/Count [18]}),
    .d({\U1/Count [11],\U1/Count [19]}),
    .f({_al_u208_o,_al_u210_o}));
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(D*C*B*~A)"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(D*C*B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0100000000000000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0100000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u209|U1/reg0_b22  (
    .a({\U1/Count [2],open_n7868}),
    .b({\U1/Count [20],_al_u211_o}),
    .c({\U1/Count [21],\U1/n3 [22]}),
    .clk(LCD_CLK_pad),
    .d({\U1/Count [22],_al_u206_o}),
    .sr(nRST_pad),
    .f({_al_u209_o,open_n7886}),
    .q({open_n7890,\U1/Count [22]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u212|U1/reg0_b2  (
    .b({open_n7893,_al_u211_o}),
    .c({_al_u211_o,\U1/n3 [2]}),
    .clk(LCD_CLK_pad),
    .d({_al_u206_o,_al_u206_o}),
    .sr(nRST_pad),
    .f({\U1/n1 ,open_n7911}),
    .q({open_n7915,\U1/Count [2]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u213|U2/reg0_b3  (
    .a({\U2/Count [27],open_n7916}),
    .b({\U2/Count [28],_al_u222_o}),
    .c({\U2/Count [29],\U2/n3 [3]}),
    .clk(clk_pad),
    .d({\U2/Count [3],_al_u217_o}),
    .sr(nRST_pad),
    .f({_al_u213_o,open_n7934}),
    .q({open_n7938,\U2/Count [3]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(~D*~C*B*~A)"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(~D*~C*B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0000000000000100),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0000000000000100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u214|U2/reg0_b26  (
    .a({\U2/Count [23],open_n7939}),
    .b({\U2/Count [24],_al_u222_o}),
    .c({\U2/Count [25],\U2/n3 [26]}),
    .clk(clk_pad),
    .d({\U2/Count [26],_al_u217_o}),
    .sr(nRST_pad),
    .f({_al_u214_o,open_n7957}),
    .q({open_n7961,\U2/Count [26]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(D*~C*~B*~A)"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0000000100000000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0000000100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u215|U2/reg0_b9  (
    .a({\U2/Count [6],open_n7962}),
    .b({\U2/Count [7],_al_u222_o}),
    .c({\U2/Count [8],\U2/n3 [9]}),
    .clk(clk_pad),
    .d({\U2/Count [9],_al_u217_o}),
    .sr(nRST_pad),
    .f({_al_u215_o,open_n7980}),
    .q({open_n7984,\U2/Count [9]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u216|U2/reg0_b5  (
    .a({\U2/Count [30],open_n7985}),
    .b({\U2/Count [31],_al_u222_o}),
    .c({\U2/Count [4],\U2/n3 [5]}),
    .clk(clk_pad),
    .d({\U2/Count [5],_al_u217_o}),
    .sr(nRST_pad),
    .f({_al_u216_o,open_n8003}),
    .q({open_n8007,\U2/Count [5]}));  // source/CLK_MOD.v(32)
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
    \_al_u217|U1/CLK_OUT_reg  (
    .a({_al_u213_o,open_n8008}),
    .b({_al_u214_o,open_n8009}),
    .c({_al_u215_o,open_n8010}),
    .ce(\U1/n1 ),
    .clk(LCD_CLK_pad),
    .d({_al_u216_o,LED_pad[1]}),
    .sr(nRST_pad),
    .f({_al_u217_o,open_n8027}),
    .q({open_n8031,LED_pad[1]}));  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(D*C*B*A)"),
    //.LUTF1("(~D*~C*B*A)"),
    //.LUTG0("(D*C*B*A)"),
    //.LUTG1("(~D*~C*B*A)"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b0000000000001000),
    .INIT_LUTG0(16'b1000000000000000),
    .INIT_LUTG1(16'b0000000000001000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u218|_al_u222  (
    .a({\U2/Count [12],_al_u218_o}),
    .b({\U2/Count [13],_al_u219_o}),
    .c({\U2/Count [14],_al_u220_o}),
    .d({\U2/Count [15],_al_u221_o}),
    .f({_al_u218_o,_al_u222_o}));
  EG_PHY_MSLICE #(
    //.LUT0("(D*C*B*~A)"),
    //.LUT1("(~D*C*~B*~A)"),
    .INIT_LUT0(16'b0100000000000000),
    .INIT_LUT1(16'b0000000000010000),
    .MODE("LOGIC"))
    \_al_u219|_al_u221  (
    .a({\U2/Count [0],\U2/Count [16]}),
    .b({\U2/Count [1],\U2/Count [17]}),
    .c({\U2/Count [10],\U2/Count [18]}),
    .d({\U2/Count [11],\U2/Count [19]}),
    .f({_al_u219_o,_al_u221_o}));
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(D*C*~B*~A)"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(D*C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0001000000000000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0001000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u220|U2/reg0_b22  (
    .a({\U2/Count [2],open_n8076}),
    .b({\U2/Count [20],_al_u222_o}),
    .c({\U2/Count [21],\U2/n3 [22]}),
    .clk(clk_pad),
    .d({\U2/Count [22],_al_u217_o}),
    .sr(nRST_pad),
    .f({_al_u220_o,open_n8094}),
    .q({open_n8098,\U2/Count [22]}));  // source/CLK_MOD.v(32)
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u223|U2/reg0_b2  (
    .b({open_n8101,_al_u222_o}),
    .c({_al_u222_o,\U2/n3 [2]}),
    .clk(clk_pad),
    .d({_al_u217_o,_al_u217_o}),
    .sr(nRST_pad),
    .f({\U2/n1 ,open_n8119}),
    .q({open_n8123,\U2/Count [2]}));  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D*C*~B*~A)"),
    //.LUTF1("(~D*C*~B*~A)"),
    //.LUTG0("(~D*C*~B*~A)"),
    //.LUTG1("(~D*C*~B*~A)"),
    .INIT_LUTF0(16'b0000000000010000),
    .INIT_LUTF1(16'b0000000000010000),
    .INIT_LUTG0(16'b0000000000010000),
    .INIT_LUTG1(16'b0000000000010000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u225|_al_u226  (
    .a({\D1/PixelCount [0],\D1/PixelCount [6]}),
    .b({\D1/PixelCount [1],\D1/PixelCount [7]}),
    .c({\D1/PixelCount [10],\D1/PixelCount [8]}),
    .d({\D1/PixelCount [11],\D1/PixelCount [9]}),
    .f({_al_u225_o,_al_u226_o}));
  EG_PHY_LSLICE #(
    //.LUTF0("(D*~C*~B*~A)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(D*~C*~B*~A)"),
    //.LUTG1("(D*C*B*A)"),
    .INIT_LUTF0(16'b0000000100000000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b0000000100000000),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u228|_al_u227  (
    .a({_al_u224_o,\D1/PixelCount [2]}),
    .b({_al_u225_o,\D1/PixelCount [3]}),
    .c({_al_u226_o,\D1/PixelCount [4]}),
    .d({_al_u227_o,\D1/PixelCount [5]}),
    .f({_al_u228_o,_al_u227_o}));
  // source/VGAMod.v(55)
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
    \_al_u229|D1/reg1_b15  (
    .a({\D1/LineCount [12],open_n8172}),
    .b({\D1/LineCount [13],\D1/n2 [15]}),
    .c({\D1/LineCount [14],\D1/LineCount [15]}),
    .clk(LCD_CLK_pad),
    .d({\D1/LineCount [15],_al_u228_o}),
    .sr(nRST_pad),
    .f({_al_u229_o,open_n8190}),
    .q({open_n8194,\D1/LineCount [15]}));  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
  EG_PHY_LSLICE #(
    //.LUTF0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTF1("(~D*~C*B*~A)"),
    //.LUTG0("((D*~B)*~(C)*~(A)+(D*~B)*C*~(A)+~((D*~B))*C*A+(D*~B)*C*A)"),
    //.LUTG1("(~D*~C*B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1011000110100000),
    .INIT_LUTF1(16'b0000000000000100),
    .INIT_LUTG0(16'b1011000110100000),
    .INIT_LUTG1(16'b0000000000000100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u230|D1/reg1_b1  (
    .a({\D1/LineCount [0],_al_u228_o}),
    .b({\D1/LineCount [1],_al_u233_o}),
    .c({\D1/LineCount [10],\D1/n2 [1]}),
    .clk(LCD_CLK_pad),
    .d({\D1/LineCount [11],\D1/LineCount [1]}),
    .sr(nRST_pad),
    .f({_al_u230_o,open_n8212}),
    .q({open_n8216,\D1/LineCount [1]}));  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
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
    \_al_u231|D1/reg1_b9  (
    .a({\D1/LineCount [6],_al_u228_o}),
    .b({\D1/LineCount [7],_al_u233_o}),
    .c({\D1/LineCount [8],\D1/n2 [9]}),
    .clk(LCD_CLK_pad),
    .d({\D1/LineCount [9],\D1/LineCount [9]}),
    .sr(nRST_pad),
    .f({_al_u231_o,open_n8234}),
    .q({open_n8238,\D1/LineCount [9]}));  // source/VGAMod.v(55)
  // source/VGAMod.v(55)
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
    \_al_u232|D1/reg1_b5  (
    .a({\D1/LineCount [2],_al_u228_o}),
    .b({\D1/LineCount [3],_al_u233_o}),
    .c({\D1/LineCount [4],\D1/n2 [5]}),
    .clk(LCD_CLK_pad),
    .d({\D1/LineCount [5],\D1/LineCount [5]}),
    .sr(nRST_pad),
    .f({_al_u232_o,open_n8256}),
    .q({open_n8260,\D1/LineCount [5]}));  // source/VGAMod.v(55)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTF1("(~D)"),
    //.LUTG0("(~D)"),
    //.LUTG1("(~D)"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTF1(16'b0000000011111111),
    .INIT_LUTG0(16'b0000000011111111),
    .INIT_LUTG1(16'b0000000011111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u332|_al_u330  (
    .d({\FIFO0/logic_fifo_full ,FIFO_EMPTY}),
    .f({\FIFO0/logic_fifo_full_neg ,\D1/n24 }));
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
    .do({open_n8292,open_n8293,open_n8294,GPIO_pad}),
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
    .do({open_n8309,open_n8310,open_n8311,1'b1}),
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
    .do({open_n8326,open_n8327,open_n8328,LCD_B_pad[7]}),
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
    .do({open_n8343,open_n8344,open_n8345,LCD_B_pad[6]}),
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
    .do({open_n8360,open_n8361,open_n8362,LCD_B_pad[5]}),
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
    .do({open_n8377,open_n8378,open_n8379,LCD_B_pad[4]}),
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
    .do({open_n8394,open_n8395,open_n8396,LCD_B_pad[3]}),
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
    .do({open_n8411,open_n8412,open_n8413,LCD_B_pad[2]}),
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
    .do({open_n8428,open_n8429,open_n8430,LCD_B_pad[2]}),
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
    .do({open_n8445,open_n8446,open_n8447,LCD_B_pad[2]}),
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
    .do({open_n8462,open_n8463,open_n8464,LCD_CLK_pad}),
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
    .do({open_n8479,open_n8480,open_n8481,GPIO_pad}),
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
    .do({open_n8496,open_n8497,open_n8498,LCD_G_pad[7]}),
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
    .do({open_n8513,open_n8514,open_n8515,LCD_G_pad[6]}),
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
    .do({open_n8530,open_n8531,open_n8532,LCD_G_pad[5]}),
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
    .do({open_n8547,open_n8548,open_n8549,LCD_G_pad[4]}),
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
    .do({open_n8564,open_n8565,open_n8566,LCD_G_pad[3]}),
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
    .do({open_n8581,open_n8582,open_n8583,LCD_G_pad[2]}),
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
    .do({open_n8598,open_n8599,open_n8600,LCD_B_pad[2]}),
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
    .do({open_n8615,open_n8616,open_n8617,LCD_B_pad[2]}),
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
    .do({open_n8632,open_n8633,open_n8634,LCD_HYNC_pad}),
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
    .do({open_n8649,open_n8650,open_n8651,LCD_R_pad[7]}),
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
    .do({open_n8666,open_n8667,open_n8668,LCD_R_pad[6]}),
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
    .do({open_n8683,open_n8684,open_n8685,LCD_R_pad[5]}),
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
    .do({open_n8700,open_n8701,open_n8702,LCD_R_pad[4]}),
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
    .do({open_n8717,open_n8718,open_n8719,LCD_R_pad[3]}),
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
    .do({open_n8734,open_n8735,open_n8736,1'b1}),
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
    .do({open_n8751,open_n8752,open_n8753,1'b1}),
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
    .do({open_n8768,open_n8769,open_n8770,1'b1}),
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
    .do({open_n8785,open_n8786,open_n8787,LCD_SYNC_pad}),
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
    .do({open_n8802,open_n8803,open_n8804,LED_pad[2]}),
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
    .do({open_n8819,open_n8820,open_n8821,LED_pad[1]}),
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
    .do({open_n8836,open_n8837,open_n8838,1'b1}),
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

