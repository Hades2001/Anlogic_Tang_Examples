// Verilog netlist created by TD v4.4.433
// Thu May  9 16:42:18 2019

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

  wire [15:0] \D1/LineCount ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(24)
  wire [15:0] \D1/PixelCount ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(23)
  wire [15:0] \D1/n2 ;
  wire [15:0] \D1/n4 ;
  wire [15:0] FIFO_DO;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(57)
  wire [7:0] LCD_B_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(34)
  wire [7:0] LCD_G_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(33)
  wire [7:0] LCD_R_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(32)
  wire [2:0] LED_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(24)
  wire [31:0] \U1/Count ;  // source/CLK_MOD.v(15)
  wire [31:0] \U1/n3 ;
  wire [31:0] \U2/Count ;  // source/CLK_MOD.v(15)
  wire [31:0] \U2/n3 ;
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
  wire FIFO_EMPTY;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(55)
  wire FIFO_FULL;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(56)
  wire FIFO_FULL_neg;
  wire FIFO_RE;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(53)
  wire GPIO_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(26)
  wire LCD_CLK_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(28)
  wire LCD_HYNC_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(29)
  wire LCD_SYNC_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(30)
  wire \PLL1/clk0_buf ;  // al_ip/LCDPLL.v(36)
  wire PixeClk;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(39)
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
  wire _al_u100_o;
  wire _al_u102_o;
  wire _al_u103_o;
  wire _al_u104_o;
  wire _al_u105_o;
  wire _al_u106_o;
  wire _al_u107_o;
  wire _al_u108_o;
  wire _al_u109_o;
  wire _al_u110_o;
  wire _al_u111_o;
  wire _al_u80_o;
  wire _al_u81_o;
  wire _al_u82_o;
  wire _al_u83_o;
  wire _al_u84_o;
  wire _al_u85_o;
  wire _al_u86_o;
  wire _al_u87_o;
  wire _al_u88_o;
  wire _al_u89_o;
  wire _al_u91_o;
  wire _al_u92_o;
  wire _al_u93_o;
  wire _al_u94_o;
  wire _al_u95_o;
  wire _al_u96_o;
  wire _al_u97_o;
  wire _al_u98_o;
  wire _al_u99_o;
  wire clk_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(21)
  wire nRST_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(22)

  EG_PHY_LSLICE #(
    //.MACRO("D1/add0/ucin_al_u232"),
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
    \D1/add0/u11_al_u235  (
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
    //.MACRO("D1/add0/ucin_al_u232"),
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
    \D1/add0/u15_al_u236  (
    .a({open_n18,\D1/LineCount [15]}),
    .c(2'b00),
    .d({open_n23,1'b0}),
    .fci(\D1/add0/c15 ),
    .f({open_n40,\D1/n2 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("D1/add0/ucin_al_u232"),
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
    \D1/add0/u3_al_u233  (
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
    //.MACRO("D1/add0/ucin_al_u232"),
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
    \D1/add0/u7_al_u234  (
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
    //.MACRO("D1/add0/ucin_al_u232"),
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
    \D1/add0/ucin_al_u232  (
    .a({\D1/LineCount [1],1'b0}),
    .b({\D1/LineCount [2],\D1/LineCount [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\D1/n2 [1],open_n99}),
    .fco(\D1/add0/c3 ),
    .fx({\D1/n2 [2],\D1/n2 [0]}));
  EG_PHY_LSLICE #(
    //.MACRO("D1/add1/ucin_al_u237"),
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
    \D1/add1/u11_al_u240  (
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
    //.MACRO("D1/add1/ucin_al_u237"),
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
    \D1/add1/u15_al_u241  (
    .a({open_n120,\D1/PixelCount [15]}),
    .c(2'b00),
    .d({open_n125,1'b0}),
    .fci(\D1/add1/c15 ),
    .f({open_n142,\D1/n4 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("D1/add1/ucin_al_u237"),
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
    \D1/add1/u3_al_u238  (
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
    //.MACRO("D1/add1/ucin_al_u237"),
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
    \D1/add1/u7_al_u239  (
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
    //.MACRO("D1/add1/ucin_al_u237"),
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
    \D1/add1/ucin_al_u237  (
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
    .a(2'b10),
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
    .a(2'b00),
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
    .a(2'b00),
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
    .a(2'b10),
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
    .b(2'b01),
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
    .a(2'b11),
    .b({\D1/LineCount [0],open_n640}),
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
    .a(2'b11),
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
    .a(2'b01),
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
    .a(2'b01),
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
    .f({\D1/n12 ,open_n852}));
  EG_PHY_MSLICE #(
    //.MACRO("D1/lt3_0|D1/lt3_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \D1/lt3_0|D1/lt3_cin  (
    .a({\D1/LineCount [0],1'b0}),
    .b({1'b1,open_n858}),
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
    .a(\D1/LineCount [4:3]),
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
    .f({\D1/n13 ,open_n1070}));
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
    .f({\D1/n15 ,open_n1288}));
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
    .f({\D1/n16 ,open_n1506}));
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
    .f({\D1/n18 ,open_n1724}));
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
    .f({\D1/n20 ,open_n1942}));
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
    .f({\D1/n21 ,open_n2160}));
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
    .f({\D1/n22 ,open_n2378}));
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
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
    .a({open_n2384,_al_u106_o}),
    .b({_al_u111_o,_al_u111_o}),
    .c({\D1/n4 [0],\D1/n2 [4]}),
    .clk(PixeClk),
    .d({_al_u106_o,\D1/LineCount [4]}),
    .sr(nRST_pad),
    .q({\D1/PixelCount [0],\D1/LineCount [4]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
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
    .a({open_n2407,_al_u106_o}),
    .b({_al_u111_o,_al_u111_o}),
    .c({\D1/n4 [10],\D1/n2 [3]}),
    .clk(PixeClk),
    .d({_al_u106_o,\D1/LineCount [3]}),
    .sr(nRST_pad),
    .q({\D1/PixelCount [10],\D1/LineCount [3]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
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
    \D1/reg0_b11|D1/reg0_b8  (
    .b({_al_u111_o,_al_u111_o}),
    .c({\D1/n4 [11],\D1/n4 [8]}),
    .clk(PixeClk),
    .d({_al_u106_o,_al_u106_o}),
    .sr(nRST_pad),
    .q({\D1/PixelCount [11],\D1/PixelCount [8]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
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
    \D1/reg0_b12|D1/reg0_b7  (
    .b({_al_u111_o,_al_u111_o}),
    .c({\D1/n4 [12],\D1/n4 [7]}),
    .clk(PixeClk),
    .d({_al_u106_o,_al_u106_o}),
    .sr(nRST_pad),
    .q({\D1/PixelCount [12],\D1/PixelCount [7]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
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
    \D1/reg0_b13|D1/reg0_b6  (
    .b({_al_u111_o,_al_u111_o}),
    .c({\D1/n4 [13],\D1/n4 [6]}),
    .clk(PixeClk),
    .d({_al_u106_o,_al_u106_o}),
    .sr(nRST_pad),
    .q({\D1/PixelCount [13],\D1/PixelCount [6]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
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
    \D1/reg0_b14|D1/reg0_b4  (
    .b({_al_u111_o,_al_u111_o}),
    .c({\D1/n4 [14],\D1/n4 [4]}),
    .clk(PixeClk),
    .d({_al_u106_o,_al_u106_o}),
    .sr(nRST_pad),
    .q({\D1/PixelCount [14],\D1/PixelCount [4]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
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
    \D1/reg0_b15|D1/reg0_b3  (
    .b({_al_u111_o,_al_u111_o}),
    .c({\D1/n4 [15],\D1/n4 [3]}),
    .clk(PixeClk),
    .d({_al_u106_o,_al_u106_o}),
    .sr(nRST_pad),
    .q({\D1/PixelCount [15],\D1/PixelCount [3]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
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
    \D1/reg0_b1|D1/reg0_b2  (
    .b({_al_u111_o,_al_u111_o}),
    .c({\D1/n4 [1],\D1/n4 [2]}),
    .clk(PixeClk),
    .d({_al_u106_o,_al_u106_o}),
    .sr(nRST_pad),
    .q({\D1/PixelCount [1],\D1/PixelCount [2]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
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
    .clk(PixeClk),
    .d({_al_u106_o,_al_u106_o}),
    .sr(nRST_pad),
    .q({\D1/LineCount [0],\D1/LineCount [8]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
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
    .clk(PixeClk),
    .d({_al_u106_o,_al_u106_o}),
    .sr(nRST_pad),
    .q({\D1/LineCount [10],\D1/LineCount [7]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
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
    .clk(PixeClk),
    .d({_al_u106_o,_al_u106_o}),
    .sr(nRST_pad),
    .q({\D1/LineCount [11],\D1/LineCount [6]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
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
    .clk(PixeClk),
    .d({_al_u106_o,_al_u106_o}),
    .sr(nRST_pad),
    .q({\D1/LineCount [12],\D1/LineCount [2]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
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
    .clk(PixeClk),
    .d({_al_u106_o,_al_u106_o}),
    .sr(nRST_pad),
    .q({\D1/LineCount [13],\D1/LineCount [14]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
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
    .clkr(PixeClk),
    .clkw(clk_pad),
    .csr({2'b11,\D1/n24 }),
    .csw({2'b11,FIFO_FULL_neg}),
    .dia({open_n2694,open_n2695,open_n2696,open_n2697,open_n2698,4'b1111}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(FIFO_RE),
    .rprst(\D1/n0 ),
    .rst(\D1/n0 ),
    .we(FIFO_FULL_neg),
    .dob({open_n2719,FIFO_DO[3:0],FIFO_DO[11:8]}),
    .empty_flag(FIFO_EMPTY),
    .full_flag(FIFO_FULL));
  EG_PHY_GCLK \PLL1/bufg_feedback  (
    .clki(\PLL1/clk0_buf ),
    .clko(PixeClk));  // al_ip/LCDPLL.v(38)
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
    .fbclk(PixeClk),
    .psclk(1'b0),
    .psclksel(3'b000),
    .psdown(1'b0),
    .psstep(1'b0),
    .refclk(clk_pad),
    .reset(1'b0),
    .stdby(1'b0),
    .clkc({open_n2720,open_n2721,open_n2722,LCD_CLK_pad,\PLL1/clk0_buf }));  // al_ip/LCDPLL.v(69)
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u214"),
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
    \U1/add0/u11_al_u217  (
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
    //.MACRO("U1/add0/ucin_al_u214"),
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
    \U1/add0/u15_al_u218  (
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
    //.MACRO("U1/add0/ucin_al_u214"),
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
    \U1/add0/u19_al_u219  (
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
    //.MACRO("U1/add0/ucin_al_u214"),
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
    \U1/add0/u23_al_u220  (
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
    //.MACRO("U1/add0/ucin_al_u214"),
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
    \U1/add0/u27_al_u221  (
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
    //.MACRO("U1/add0/ucin_al_u214"),
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
    \U1/add0/u31_al_u222  (
    .a({open_n2823,\U1/Count [31]}),
    .c(2'b00),
    .d({open_n2828,1'b0}),
    .fci(\U1/add0/c31 ),
    .f({open_n2845,\U1/n3 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u214"),
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
    \U1/add0/u3_al_u215  (
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
    //.MACRO("U1/add0/ucin_al_u214"),
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
    \U1/add0/u7_al_u216  (
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
    //.MACRO("U1/add0/ucin_al_u214"),
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
    \U1/add0/ucin_al_u214  (
    .a({\U1/Count [1],1'b0}),
    .b({\U1/Count [2],\U1/Count [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U1/n3 [1],open_n2904}),
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
    .b({_al_u89_o,_al_u89_o}),
    .c({\U1/n3 [0],\U1/n3 [8]}),
    .clk(PixeClk),
    .d({_al_u84_o,_al_u84_o}),
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
    .b({_al_u89_o,_al_u89_o}),
    .c({\U1/n3 [10],\U1/n3 [7]}),
    .clk(PixeClk),
    .d({_al_u84_o,_al_u84_o}),
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
    .b({_al_u89_o,_al_u89_o}),
    .c({\U1/n3 [11],\U1/n3 [6]}),
    .clk(PixeClk),
    .d({_al_u84_o,_al_u84_o}),
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
    .b({_al_u89_o,_al_u89_o}),
    .c({\U1/n3 [12],\U1/n3 [4]}),
    .clk(PixeClk),
    .d({_al_u84_o,_al_u84_o}),
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
    .b({_al_u89_o,_al_u89_o}),
    .c({\U1/n3 [13],\U1/n3 [31]}),
    .clk(PixeClk),
    .d({_al_u84_o,_al_u84_o}),
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
    .b({_al_u89_o,_al_u89_o}),
    .c({\U1/n3 [14],\U1/n3 [30]}),
    .clk(PixeClk),
    .d({_al_u84_o,_al_u84_o}),
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
    .b({_al_u89_o,_al_u89_o}),
    .c({\U1/n3 [15],\U1/n3 [29]}),
    .clk(PixeClk),
    .d({_al_u84_o,_al_u84_o}),
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
    .b({_al_u89_o,_al_u89_o}),
    .c({\U1/n3 [16],\U1/n3 [28]}),
    .clk(PixeClk),
    .d({_al_u84_o,_al_u84_o}),
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
    .b({_al_u89_o,_al_u89_o}),
    .c({\U1/n3 [17],\U1/n3 [27]}),
    .clk(PixeClk),
    .d({_al_u84_o,_al_u84_o}),
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
    .b({_al_u89_o,_al_u89_o}),
    .c({\U1/n3 [18],\U1/n3 [25]}),
    .clk(PixeClk),
    .d({_al_u84_o,_al_u84_o}),
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
    .b({_al_u89_o,_al_u89_o}),
    .c({\U1/n3 [19],\U1/n3 [24]}),
    .clk(PixeClk),
    .d({_al_u84_o,_al_u84_o}),
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
    .b({_al_u89_o,_al_u89_o}),
    .c({\U1/n3 [1],\U1/n3 [23]}),
    .clk(PixeClk),
    .d({_al_u84_o,_al_u84_o}),
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
    .b({_al_u89_o,_al_u89_o}),
    .c({\U1/n3 [20],\U1/n3 [21]}),
    .clk(PixeClk),
    .d({_al_u84_o,_al_u84_o}),
    .sr(nRST_pad),
    .q({\U1/Count [20],\U1/Count [21]}));  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u223"),
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
    \U2/add0/u11_al_u226  (
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
    //.MACRO("U2/add0/ucin_al_u223"),
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
    \U2/add0/u15_al_u227  (
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
    //.MACRO("U2/add0/ucin_al_u223"),
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
    \U2/add0/u19_al_u228  (
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
    //.MACRO("U2/add0/ucin_al_u223"),
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
    \U2/add0/u23_al_u229  (
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
    //.MACRO("U2/add0/ucin_al_u223"),
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
    \U2/add0/u27_al_u230  (
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
    //.MACRO("U2/add0/ucin_al_u223"),
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
    \U2/add0/u31_al_u231  (
    .a({open_n3309,\U2/Count [31]}),
    .c(2'b00),
    .d({open_n3314,1'b0}),
    .fci(\U2/add0/c31 ),
    .f({open_n3331,\U2/n3 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u223"),
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
    \U2/add0/u3_al_u224  (
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
    //.MACRO("U2/add0/ucin_al_u223"),
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
    \U2/add0/u7_al_u225  (
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
    //.MACRO("U2/add0/ucin_al_u223"),
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
    \U2/add0/ucin_al_u223  (
    .a({\U2/Count [1],1'b0}),
    .b({\U2/Count [2],\U2/Count [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U2/n3 [1],open_n3390}),
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
    .b({_al_u100_o,_al_u100_o}),
    .c({\U2/n3 [0],\U2/n3 [8]}),
    .clk(clk_pad),
    .d({_al_u95_o,_al_u95_o}),
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
    .b({_al_u100_o,_al_u100_o}),
    .c({\U2/n3 [10],\U2/n3 [7]}),
    .clk(clk_pad),
    .d({_al_u95_o,_al_u95_o}),
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
    .b({_al_u100_o,_al_u100_o}),
    .c({\U2/n3 [11],\U2/n3 [6]}),
    .clk(clk_pad),
    .d({_al_u95_o,_al_u95_o}),
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
    .b({_al_u100_o,_al_u100_o}),
    .c({\U2/n3 [12],\U2/n3 [4]}),
    .clk(clk_pad),
    .d({_al_u95_o,_al_u95_o}),
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
    .b({_al_u100_o,_al_u100_o}),
    .c({\U2/n3 [13],\U2/n3 [31]}),
    .clk(clk_pad),
    .d({_al_u95_o,_al_u95_o}),
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
    .b({_al_u100_o,_al_u100_o}),
    .c({\U2/n3 [14],\U2/n3 [30]}),
    .clk(clk_pad),
    .d({_al_u95_o,_al_u95_o}),
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
    .b({_al_u100_o,_al_u100_o}),
    .c({\U2/n3 [15],\U2/n3 [29]}),
    .clk(clk_pad),
    .d({_al_u95_o,_al_u95_o}),
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
    .b({_al_u100_o,_al_u100_o}),
    .c({\U2/n3 [16],\U2/n3 [28]}),
    .clk(clk_pad),
    .d({_al_u95_o,_al_u95_o}),
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
    .b({_al_u100_o,_al_u100_o}),
    .c({\U2/n3 [17],\U2/n3 [27]}),
    .clk(clk_pad),
    .d({_al_u95_o,_al_u95_o}),
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
    .b({_al_u100_o,_al_u100_o}),
    .c({\U2/n3 [18],\U2/n3 [25]}),
    .clk(clk_pad),
    .d({_al_u95_o,_al_u95_o}),
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
    .b({_al_u100_o,_al_u100_o}),
    .c({\U2/n3 [19],\U2/n3 [24]}),
    .clk(clk_pad),
    .d({_al_u95_o,_al_u95_o}),
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
    .b({_al_u100_o,_al_u100_o}),
    .c({\U2/n3 [1],\U2/n3 [23]}),
    .clk(clk_pad),
    .d({_al_u95_o,_al_u95_o}),
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
    .b({_al_u100_o,_al_u100_o}),
    .c({\U2/n3 [20],\U2/n3 [21]}),
    .clk(clk_pad),
    .d({_al_u95_o,_al_u95_o}),
    .sr(nRST_pad),
    .q({\U2/Count [20],\U2/Count [21]}));  // source/CLK_MOD.v(32)
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
    \_al_u100|_al_u95  (
    .a({_al_u96_o,_al_u91_o}),
    .b({_al_u97_o,_al_u92_o}),
    .c({_al_u98_o,_al_u93_o}),
    .d({_al_u99_o,_al_u94_o}),
    .f({_al_u100_o,_al_u95_o}));
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
    \_al_u101|U2/reg0_b2  (
    .b({open_n3731,_al_u100_o}),
    .c({_al_u100_o,\U2/n3 [2]}),
    .clk(clk_pad),
    .d({_al_u95_o,_al_u95_o}),
    .sr(nRST_pad),
    .f({\U2/n1 ,open_n3749}),
    .q({open_n3753,\U2/Count [2]}));  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(D*C*B*A)"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(D*C*B*A)"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b1000000000000000),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u102|_al_u106  (
    .a({\D1/PixelCount [12],_al_u102_o}),
    .b({\D1/PixelCount [13],_al_u103_o}),
    .c({\D1/PixelCount [14],_al_u104_o}),
    .d({\D1/PixelCount [15],_al_u105_o}),
    .f({_al_u102_o,_al_u106_o}));
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~B*~D)"),
    //.LUTF1("(~D*C*~B*~A)"),
    //.LUTG0("(C*~B*~D)"),
    //.LUTG1("(~D*C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000110000),
    .INIT_LUTF1(16'b0000000000010000),
    .INIT_LUTG0(16'b0000000000110000),
    .INIT_LUTG1(16'b0000000000010000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u104|D1/reg0_b9  (
    .a({\D1/PixelCount [6],open_n3778}),
    .b({\D1/PixelCount [7],_al_u111_o}),
    .c({\D1/PixelCount [8],\D1/n4 [9]}),
    .clk(PixeClk),
    .d({\D1/PixelCount [9],_al_u106_o}),
    .sr(nRST_pad),
    .f({_al_u104_o,open_n3796}),
    .q({open_n3800,\D1/PixelCount [9]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~B*~D)"),
    //.LUTF1("(D*~C*~B*~A)"),
    //.LUTG0("(C*~B*~D)"),
    //.LUTG1("(D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000110000),
    .INIT_LUTF1(16'b0000000100000000),
    .INIT_LUTG0(16'b0000000000110000),
    .INIT_LUTG1(16'b0000000100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u105|D1/reg0_b5  (
    .a({\D1/PixelCount [2],open_n3801}),
    .b({\D1/PixelCount [3],_al_u111_o}),
    .c({\D1/PixelCount [4],\D1/n4 [5]}),
    .clk(PixeClk),
    .d({\D1/PixelCount [5],_al_u106_o}),
    .sr(nRST_pad),
    .f({_al_u105_o,open_n3819}),
    .q({open_n3823,\D1/PixelCount [5]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
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
    \_al_u107|D1/reg1_b15  (
    .a({\D1/LineCount [12],open_n3824}),
    .b({\D1/LineCount [13],\D1/n2 [15]}),
    .c({\D1/LineCount [14],\D1/LineCount [15]}),
    .clk(PixeClk),
    .d({\D1/LineCount [15],_al_u106_o}),
    .sr(nRST_pad),
    .f({_al_u107_o,open_n3842}),
    .q({open_n3846,\D1/LineCount [15]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
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
    \_al_u108|D1/reg1_b1  (
    .a({\D1/LineCount [0],_al_u106_o}),
    .b({\D1/LineCount [1],_al_u111_o}),
    .c({\D1/LineCount [10],\D1/n2 [1]}),
    .clk(PixeClk),
    .d({\D1/LineCount [11],\D1/LineCount [1]}),
    .sr(nRST_pad),
    .f({_al_u108_o,open_n3864}),
    .q({open_n3868,\D1/LineCount [1]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
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
    \_al_u109|D1/reg1_b9  (
    .a({\D1/LineCount [6],_al_u106_o}),
    .b({\D1/LineCount [7],_al_u111_o}),
    .c({\D1/LineCount [8],\D1/n2 [9]}),
    .clk(PixeClk),
    .d({\D1/LineCount [9],\D1/LineCount [9]}),
    .sr(nRST_pad),
    .f({_al_u109_o,open_n3886}),
    .q({open_n3890,\D1/LineCount [9]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
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
    \_al_u110|D1/reg1_b5  (
    .a({\D1/LineCount [2],_al_u106_o}),
    .b({\D1/LineCount [3],_al_u111_o}),
    .c({\D1/LineCount [4],\D1/n2 [5]}),
    .clk(PixeClk),
    .d({\D1/LineCount [5],\D1/LineCount [5]}),
    .sr(nRST_pad),
    .f({_al_u110_o,open_n3908}),
    .q({open_n3912,\D1/LineCount [5]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/VGAMod.v(53)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D*C*~B*~A)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(~D*C*~B*~A)"),
    //.LUTG1("(D*C*B*A)"),
    .INIT_LUTF0(16'b0000000000010000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b0000000000010000),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u111|_al_u103  (
    .a({_al_u107_o,\D1/PixelCount [0]}),
    .b({_al_u108_o,\D1/PixelCount [1]}),
    .c({_al_u109_o,\D1/PixelCount [10]}),
    .d({_al_u110_o,\D1/PixelCount [11]}),
    .f({_al_u111_o,_al_u103_o}));
  EG_PHY_MSLICE #(
    //.LUT0("(~C*B*D)"),
    //.LUT1("(~D)"),
    .INIT_LUT0(16'b0000110000000000),
    .INIT_LUT1(16'b0000000011111111),
    .MODE("LOGIC"))
    \_al_u208|_al_u78  (
    .b({open_n3939,\D1/n22 }),
    .c({open_n3940,FIFO_EMPTY}),
    .d({FIFO_EMPTY,\D1/n21 }),
    .f({\D1/n24 ,FIFO_RE}));
  EG_PHY_MSLICE #(
    //.LUT0("(D*~C*~B*~A)"),
    //.LUT1("(~D)"),
    .INIT_LUT0(16'b0000000100000000),
    .INIT_LUT1(16'b0000000011111111),
    .MODE("LOGIC"))
    \_al_u210|_al_u86  (
    .a({open_n3961,\U1/Count [0]}),
    .b({open_n3962,\U1/Count [1]}),
    .c({open_n3963,\U1/Count [10]}),
    .d({FIFO_FULL,\U1/Count [11]}),
    .f({FIFO_FULL_neg,_al_u86_o}));
  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTF1("(~D)"),
    //.LUTG0("(~D)"),
    //.LUTG1("(~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTF1(16'b0000000011111111),
    .INIT_LUTG0(16'b0000000011111111),
    .INIT_LUTG1(16'b0000000011111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u213|U1/CLK_OUT_reg  (
    .ce(\U1/n1 ),
    .clk(PixeClk),
    .d({nRST_pad,LED_pad[1]}),
    .sr(nRST_pad),
    .f({\D1/n0 ,open_n4006}),
    .q({open_n4010,LED_pad[1]}));  // source/CLK_MOD.v(32)
  EG_PHY_PAD #(
    //.LOCATION("C15"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u30 (
    .do({open_n4012,open_n4013,open_n4014,GPIO_pad}),
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
    _al_u31 (
    .do({open_n4029,open_n4030,open_n4031,1'b1}),
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
    _al_u32 (
    .do({open_n4046,open_n4047,open_n4048,LCD_B_pad[3]}),
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
    _al_u33 (
    .do({open_n4063,open_n4064,open_n4065,LCD_G_pad[4]}),
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
    _al_u34 (
    .do({open_n4080,open_n4081,open_n4082,LCD_G_pad[3]}),
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
    _al_u35 (
    .do({open_n4097,open_n4098,open_n4099,LCD_G_pad[2]}),
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
    _al_u36 (
    .do({open_n4114,open_n4115,open_n4116,LCD_B_pad[3]}),
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
    _al_u37 (
    .do({open_n4131,open_n4132,open_n4133,LCD_B_pad[2]}),
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
    _al_u38 (
    .do({open_n4148,open_n4149,open_n4150,LCD_B_pad[2]}),
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
    _al_u39 (
    .do({open_n4165,open_n4166,open_n4167,LCD_B_pad[2]}),
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
    _al_u40 (
    .do({open_n4182,open_n4183,open_n4184,LCD_CLK_pad}),
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
    _al_u41 (
    .do({open_n4199,open_n4200,open_n4201,GPIO_pad}),
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
    _al_u42 (
    .do({open_n4216,open_n4217,open_n4218,LCD_G_pad[7]}),
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
    _al_u43 (
    .do({open_n4233,open_n4234,open_n4235,LCD_G_pad[6]}),
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
    _al_u44 (
    .do({open_n4250,open_n4251,open_n4252,LCD_G_pad[5]}),
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
    _al_u45 (
    .do({open_n4267,open_n4268,open_n4269,LCD_G_pad[4]}),
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
    _al_u46 (
    .do({open_n4284,open_n4285,open_n4286,LCD_G_pad[3]}),
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
    _al_u47 (
    .do({open_n4301,open_n4302,open_n4303,LCD_G_pad[2]}),
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
    _al_u48 (
    .do({open_n4318,open_n4319,open_n4320,LCD_B_pad[2]}),
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
    _al_u49 (
    .do({open_n4335,open_n4336,open_n4337,LCD_B_pad[2]}),
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
    _al_u50 (
    .do({open_n4352,open_n4353,open_n4354,LCD_HYNC_pad}),
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
    _al_u51 (
    .do({open_n4369,open_n4370,open_n4371,LCD_R_pad[3]}),
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
    _al_u52 (
    .do({open_n4386,open_n4387,open_n4388,LCD_R_pad[6]}),
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
    _al_u53 (
    .do({open_n4403,open_n4404,open_n4405,LCD_R_pad[5]}),
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
    _al_u54 (
    .do({open_n4420,open_n4421,open_n4422,LCD_R_pad[4]}),
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
    _al_u55 (
    .do({open_n4437,open_n4438,open_n4439,LCD_R_pad[3]}),
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
    _al_u56 (
    .do({open_n4454,open_n4455,open_n4456,1'b1}),
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
    _al_u57 (
    .do({open_n4471,open_n4472,open_n4473,1'b1}),
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
    _al_u58 (
    .do({open_n4488,open_n4489,open_n4490,1'b1}),
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
    _al_u59 (
    .do({open_n4505,open_n4506,open_n4507,LCD_SYNC_pad}),
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
    _al_u60 (
    .do({open_n4522,open_n4523,open_n4524,LED_pad[2]}),
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
    _al_u61 (
    .do({open_n4539,open_n4540,open_n4541,LED_pad[1]}),
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
    _al_u62 (
    .do({open_n4556,open_n4557,open_n4558,1'b1}),
    .opad(LED[0]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(24)
  EG_PHY_PAD #(
    //.LOCATION("K14"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u63 (
    .ipad(clk),
    .di(clk_pad));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(21)
  EG_PHY_PAD #(
    //.LOCATION("K16"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u64 (
    .ipad(nRST),
    .di(nRST_pad));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LCD_Examples/source/TOP.v(22)
  EG_PHY_MSLICE #(
    //.LUT0("(~D)"),
    //.LUT1("(~C*D)"),
    .INIT_LUT0(16'b0000000011111111),
    .INIT_LUT1(16'b0000111100000000),
    .MODE("LOGIC"))
    \_al_u65|_al_u209  (
    .c({FIFO_EMPTY,open_n4610}),
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
    \_al_u66|_al_u75  (
    .c({FIFO_EMPTY,FIFO_EMPTY}),
    .d({FIFO_DO[10],FIFO_DO[11]}),
    .f({LCD_G_pad[7],LCD_R_pad[3]}));
  EG_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("(~C*D)"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b0000111100000000),
    .MODE("LOGIC"))
    \_al_u67|_al_u73  (
    .c({FIFO_EMPTY,FIFO_EMPTY}),
    .d({FIFO_DO[9],FIFO_DO[9]}),
    .f({LCD_G_pad[6],LCD_R_pad[5]}));
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
    \_al_u68|_al_u74  (
    .c({FIFO_EMPTY,FIFO_EMPTY}),
    .d({FIFO_DO[8],FIFO_DO[8]}),
    .f({LCD_G_pad[5],LCD_R_pad[4]}));
  EG_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("(~C*D)"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b0000111100000000),
    .MODE("LOGIC"))
    \_al_u69|_al_u72  (
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
    \_al_u70|_al_u71  (
    .c({FIFO_EMPTY,FIFO_EMPTY}),
    .d(FIFO_DO[2:1]),
    .f(LCD_G_pad[3:2]));
  EG_PHY_LSLICE #(
    //.LUTF0("(D*C*B*A)"),
    //.LUTF1("~(C*D)"),
    //.LUTG0("(D*C*B*A)"),
    //.LUTG1("~(C*D)"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b0000111111111111),
    .INIT_LUTG0(16'b1000000000000000),
    .INIT_LUTG1(16'b0000111111111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u76|_al_u79  (
    .a({open_n4763,\D1/n15 }),
    .b({open_n4764,\D1/n16 }),
    .c({\D1/n10 ,\D1/n18 }),
    .d({\D1/n9 ,\D1/n20 }),
    .f({LCD_HYNC_pad,GPIO_pad}));
  EG_PHY_LSLICE #(
    //.LUTF0("~(C*D)"),
    //.LUTG0("~(C*D)"),
    .INIT_LUTF0(16'b0000111111111111),
    .INIT_LUTG0(16'b0000111111111111),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    _al_u77 (
    .c({open_n4793,\D1/n13 }),
    .d({open_n4796,\D1/n12 }),
    .f({open_n4814,LCD_SYNC_pad}));
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
    \_al_u80|U1/reg0_b3  (
    .a({\U1/Count [27],open_n4820}),
    .b({\U1/Count [28],_al_u89_o}),
    .c({\U1/Count [29],\U1/n3 [3]}),
    .clk(PixeClk),
    .d({\U1/Count [3],_al_u84_o}),
    .sr(nRST_pad),
    .f({_al_u80_o,open_n4838}),
    .q({open_n4842,\U1/Count [3]}));  // source/CLK_MOD.v(32)
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
    \_al_u81|U1/reg0_b26  (
    .a({\U1/Count [23],open_n4843}),
    .b({\U1/Count [24],_al_u89_o}),
    .c({\U1/Count [25],\U1/n3 [26]}),
    .clk(PixeClk),
    .d({\U1/Count [26],_al_u84_o}),
    .sr(nRST_pad),
    .f({_al_u81_o,open_n4861}),
    .q({open_n4865,\U1/Count [26]}));  // source/CLK_MOD.v(32)
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
    \_al_u82|U1/reg0_b9  (
    .a({\U1/Count [6],open_n4866}),
    .b({\U1/Count [7],_al_u89_o}),
    .c({\U1/Count [8],\U1/n3 [9]}),
    .clk(PixeClk),
    .d({\U1/Count [9],_al_u84_o}),
    .sr(nRST_pad),
    .f({_al_u82_o,open_n4884}),
    .q({open_n4888,\U1/Count [9]}));  // source/CLK_MOD.v(32)
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
    \_al_u83|U1/reg0_b5  (
    .a({\U1/Count [30],open_n4889}),
    .b({\U1/Count [31],_al_u89_o}),
    .c({\U1/Count [4],\U1/n3 [5]}),
    .clk(PixeClk),
    .d({\U1/Count [5],_al_u84_o}),
    .sr(nRST_pad),
    .f({_al_u83_o,open_n4907}),
    .q({open_n4911,\U1/Count [5]}));  // source/CLK_MOD.v(32)
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
    \_al_u84|U2/CLK_OUT_reg  (
    .a({_al_u80_o,open_n4912}),
    .b({_al_u81_o,open_n4913}),
    .c({_al_u82_o,open_n4914}),
    .ce(\U2/n1 ),
    .clk(clk_pad),
    .d({_al_u83_o,LED_pad[2]}),
    .sr(nRST_pad),
    .f({_al_u84_o,open_n4931}),
    .q({open_n4935,LED_pad[2]}));  // source/CLK_MOD.v(32)
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
    \_al_u85|_al_u89  (
    .a({\U1/Count [12],_al_u85_o}),
    .b({\U1/Count [13],_al_u86_o}),
    .c({\U1/Count [14],_al_u87_o}),
    .d({\U1/Count [15],_al_u88_o}),
    .f({_al_u85_o,_al_u89_o}));
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
    \_al_u87|U1/reg0_b22  (
    .a({\U1/Count [2],open_n4960}),
    .b({\U1/Count [20],_al_u89_o}),
    .c({\U1/Count [21],\U1/n3 [22]}),
    .clk(PixeClk),
    .d({\U1/Count [22],_al_u84_o}),
    .sr(nRST_pad),
    .f({_al_u87_o,open_n4978}),
    .q({open_n4982,\U1/Count [22]}));  // source/CLK_MOD.v(32)
  EG_PHY_MSLICE #(
    //.LUT0("(~D*C*~B*~A)"),
    //.LUT1("(~D*C*B*A)"),
    .INIT_LUT0(16'b0000000000010000),
    .INIT_LUT1(16'b0000000010000000),
    .MODE("LOGIC"))
    \_al_u88|_al_u97  (
    .a({\U1/Count [16],\U2/Count [0]}),
    .b({\U1/Count [17],\U2/Count [1]}),
    .c({\U1/Count [18],\U2/Count [10]}),
    .d({\U1/Count [19],\U2/Count [11]}),
    .f({_al_u88_o,_al_u97_o}));
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
    \_al_u90|U1/reg0_b2  (
    .b({open_n5005,_al_u89_o}),
    .c({_al_u89_o,\U1/n3 [2]}),
    .clk(PixeClk),
    .d({_al_u84_o,_al_u84_o}),
    .sr(nRST_pad),
    .f({\U1/n1 ,open_n5023}),
    .q({open_n5027,\U1/Count [2]}));  // source/CLK_MOD.v(32)
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
    \_al_u91|U2/reg0_b3  (
    .a({\U2/Count [27],open_n5028}),
    .b({\U2/Count [28],_al_u100_o}),
    .c({\U2/Count [29],\U2/n3 [3]}),
    .clk(clk_pad),
    .d({\U2/Count [3],_al_u95_o}),
    .sr(nRST_pad),
    .f({_al_u91_o,open_n5046}),
    .q({open_n5050,\U2/Count [3]}));  // source/CLK_MOD.v(32)
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
    \_al_u92|U2/reg0_b26  (
    .a({\U2/Count [23],open_n5051}),
    .b({\U2/Count [24],_al_u100_o}),
    .c({\U2/Count [25],\U2/n3 [26]}),
    .clk(clk_pad),
    .d({\U2/Count [26],_al_u95_o}),
    .sr(nRST_pad),
    .f({_al_u92_o,open_n5069}),
    .q({open_n5073,\U2/Count [26]}));  // source/CLK_MOD.v(32)
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
    \_al_u93|U2/reg0_b9  (
    .a({\U2/Count [6],open_n5074}),
    .b({\U2/Count [7],_al_u100_o}),
    .c({\U2/Count [8],\U2/n3 [9]}),
    .clk(clk_pad),
    .d({\U2/Count [9],_al_u95_o}),
    .sr(nRST_pad),
    .f({_al_u93_o,open_n5092}),
    .q({open_n5096,\U2/Count [9]}));  // source/CLK_MOD.v(32)
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
    \_al_u94|U2/reg0_b5  (
    .a({\U2/Count [30],open_n5097}),
    .b({\U2/Count [31],_al_u100_o}),
    .c({\U2/Count [4],\U2/n3 [5]}),
    .clk(clk_pad),
    .d({\U2/Count [5],_al_u95_o}),
    .sr(nRST_pad),
    .f({_al_u94_o,open_n5115}),
    .q({open_n5119,\U2/Count [5]}));  // source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(D*C*B*~A)"),
    //.LUTF1("(~D*~C*B*A)"),
    //.LUTG0("(D*C*B*~A)"),
    //.LUTG1("(~D*~C*B*A)"),
    .INIT_LUTF0(16'b0100000000000000),
    .INIT_LUTF1(16'b0000000000001000),
    .INIT_LUTG0(16'b0100000000000000),
    .INIT_LUTG1(16'b0000000000001000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u96|_al_u99  (
    .a({\U2/Count [12],\U2/Count [16]}),
    .b({\U2/Count [13],\U2/Count [17]}),
    .c({\U2/Count [14],\U2/Count [18]}),
    .d({\U2/Count [15],\U2/Count [19]}),
    .f({_al_u96_o,_al_u99_o}));
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
    \_al_u98|U2/reg0_b22  (
    .a({\U2/Count [2],open_n5144}),
    .b({\U2/Count [20],_al_u100_o}),
    .c({\U2/Count [21],\U2/n3 [22]}),
    .clk(clk_pad),
    .d({\U2/Count [22],_al_u95_o}),
    .sr(nRST_pad),
    .f({_al_u98_o,open_n5162}),
    .q({open_n5166,\U2/Count [22]}));  // source/CLK_MOD.v(32)
  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();

endmodule 

