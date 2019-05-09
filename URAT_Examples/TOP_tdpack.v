// Verilog netlist created by TD v4.4.433
// Thu May  9 15:32:59 2019

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

  wire [31:0] \C1/Count ;  // Source/CLK_MOD.v(15)
  wire [31:0] \C1/n3 ;
  wire [7:0] FIFO_DI;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(62)
  wire [7:0] FIFO_DO;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(61)
  wire [2:0] LEDs_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(15)
  wire [15:0] \U1/B_PWM/PWMCount ;  // Source/PWM.v(15)
  wire [15:0] \U1/B_PWM/n2 ;
  wire [31:0] \U1/Count_LED ;  // Source/LEDRGBCtrl.v(9)
  wire [15:0] \U1/G_PWM/PWMCount ;  // Source/PWM.v(15)
  wire [15:0] \U1/G_PWM/n2 ;
  wire [31:0] \U1/PWM_BData ;  // Source/LEDRGBCtrl.v(25)
  wire [31:0] \U1/PWM_GData ;  // Source/LEDRGBCtrl.v(24)
  wire [31:0] \U1/PWM_RData ;  // Source/LEDRGBCtrl.v(23)
  wire [15:0] \U1/R_PWM/PWMCount ;  // Source/PWM.v(15)
  wire [15:0] \U1/R_PWM/n2 ;
  wire [31:0] \U1/n12 ;
  wire [31:0] \U1/n14 ;
  wire [31:0] \U1/n16 ;
  wire [31:0] \U1/n17 ;
  wire [31:0] \U1/n2 ;
  wire [31:0] \U1/n8 ;
  wire [7:0] \U2/Count ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(16)
  wire [7:0] \U2/SendBuff ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(18)
  wire [3:0] \U2/UART_FSM ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(33)
  wire [7:0] \U2/n16 ;
  wire [6:0] \U3/Addr ;  // Source/UART_CTRL.v(13)
  wire [6:0] \U3/n2 ;
  wire \C1/add0/c11 ;
  wire \C1/add0/c15 ;
  wire \C1/add0/c19 ;
  wire \C1/add0/c23 ;
  wire \C1/add0/c27 ;
  wire \C1/add0/c3 ;
  wire \C1/add0/c31 ;
  wire \C1/add0/c7 ;
  wire \C1/n0 ;
  wire \C1/n1 ;
  wire CLK_24M_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(12)
  wire CLK_50M;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(20)
  wire FIFO_CLK_R;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(55)
  wire FIFO_EMPTY;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(59)
  wire FIFO_EMPTY_neg;
  wire FIFO_FULL;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(60)
  wire FIFO_FULL_neg;
  wire FIFO_RE;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(57)
  wire \Pll/clk0_buf ;  // al_ip/SysPll.v(39)
  wire \Pll/clk0_out ;  // al_ip/SysPll.v(34)
  wire \U1/B_PWM/add0/c11 ;
  wire \U1/B_PWM/add0/c15 ;
  wire \U1/B_PWM/add0/c3 ;
  wire \U1/B_PWM/add0/c7 ;
  wire \U1/B_PWM/lt0_c1 ;
  wire \U1/B_PWM/lt0_c11 ;
  wire \U1/B_PWM/lt0_c13 ;
  wire \U1/B_PWM/lt0_c15 ;
  wire \U1/B_PWM/lt0_c3 ;
  wire \U1/B_PWM/lt0_c5 ;
  wire \U1/B_PWM/lt0_c7 ;
  wire \U1/B_PWM/lt0_c9 ;
  wire \U1/B_PWM/lt1_c1 ;
  wire \U1/B_PWM/lt1_c11 ;
  wire \U1/B_PWM/lt1_c13 ;
  wire \U1/B_PWM/lt1_c15 ;
  wire \U1/B_PWM/lt1_c3 ;
  wire \U1/B_PWM/lt1_c5 ;
  wire \U1/B_PWM/lt1_c7 ;
  wire \U1/B_PWM/lt1_c9 ;
  wire \U1/B_PWM/n1 ;
  wire \U1/B_PWM/n4 ;
  wire \U1/G_PWM/add0/c11 ;
  wire \U1/G_PWM/add0/c15 ;
  wire \U1/G_PWM/add0/c3 ;
  wire \U1/G_PWM/add0/c7 ;
  wire \U1/G_PWM/lt0_c1 ;
  wire \U1/G_PWM/lt0_c11 ;
  wire \U1/G_PWM/lt0_c13 ;
  wire \U1/G_PWM/lt0_c15 ;
  wire \U1/G_PWM/lt0_c3 ;
  wire \U1/G_PWM/lt0_c5 ;
  wire \U1/G_PWM/lt0_c7 ;
  wire \U1/G_PWM/lt0_c9 ;
  wire \U1/G_PWM/lt1_c1 ;
  wire \U1/G_PWM/lt1_c11 ;
  wire \U1/G_PWM/lt1_c13 ;
  wire \U1/G_PWM/lt1_c15 ;
  wire \U1/G_PWM/lt1_c3 ;
  wire \U1/G_PWM/lt1_c5 ;
  wire \U1/G_PWM/lt1_c7 ;
  wire \U1/G_PWM/lt1_c9 ;
  wire \U1/G_PWM/n1 ;
  wire \U1/G_PWM/n4 ;
  wire \U1/R_PWM/add0/c11 ;
  wire \U1/R_PWM/add0/c15 ;
  wire \U1/R_PWM/add0/c3 ;
  wire \U1/R_PWM/add0/c7 ;
  wire \U1/R_PWM/lt0_c1 ;
  wire \U1/R_PWM/lt0_c11 ;
  wire \U1/R_PWM/lt0_c13 ;
  wire \U1/R_PWM/lt0_c15 ;
  wire \U1/R_PWM/lt0_c3 ;
  wire \U1/R_PWM/lt0_c5 ;
  wire \U1/R_PWM/lt0_c7 ;
  wire \U1/R_PWM/lt0_c9 ;
  wire \U1/R_PWM/lt1_c1 ;
  wire \U1/R_PWM/lt1_c11 ;
  wire \U1/R_PWM/lt1_c13 ;
  wire \U1/R_PWM/lt1_c15 ;
  wire \U1/R_PWM/lt1_c3 ;
  wire \U1/R_PWM/lt1_c5 ;
  wire \U1/R_PWM/lt1_c7 ;
  wire \U1/R_PWM/lt1_c9 ;
  wire \U1/R_PWM/n1 ;
  wire \U1/R_PWM/n4 ;
  wire \U1/add0/c11 ;
  wire \U1/add0/c15 ;
  wire \U1/add0/c19 ;
  wire \U1/add0/c23 ;
  wire \U1/add0/c27 ;
  wire \U1/add0/c3 ;
  wire \U1/add0/c31 ;
  wire \U1/add0/c7 ;
  wire \U1/lt0_c1 ;
  wire \U1/lt0_c11 ;
  wire \U1/lt0_c13 ;
  wire \U1/lt0_c15 ;
  wire \U1/lt0_c17 ;
  wire \U1/lt0_c19 ;
  wire \U1/lt0_c21 ;
  wire \U1/lt0_c23 ;
  wire \U1/lt0_c25 ;
  wire \U1/lt0_c27 ;
  wire \U1/lt0_c29 ;
  wire \U1/lt0_c3 ;
  wire \U1/lt0_c31 ;
  wire \U1/lt0_c5 ;
  wire \U1/lt0_c7 ;
  wire \U1/lt0_c9 ;
  wire \U1/lt1_c1 ;
  wire \U1/lt1_c11 ;
  wire \U1/lt1_c13 ;
  wire \U1/lt1_c15 ;
  wire \U1/lt1_c17 ;
  wire \U1/lt1_c19 ;
  wire \U1/lt1_c21 ;
  wire \U1/lt1_c23 ;
  wire \U1/lt1_c25 ;
  wire \U1/lt1_c27 ;
  wire \U1/lt1_c29 ;
  wire \U1/lt1_c3 ;
  wire \U1/lt1_c31 ;
  wire \U1/lt1_c5 ;
  wire \U1/lt1_c7 ;
  wire \U1/lt1_c9 ;
  wire \U1/lt2_c1 ;
  wire \U1/lt2_c11 ;
  wire \U1/lt2_c13 ;
  wire \U1/lt2_c15 ;
  wire \U1/lt2_c17 ;
  wire \U1/lt2_c19 ;
  wire \U1/lt2_c21 ;
  wire \U1/lt2_c23 ;
  wire \U1/lt2_c25 ;
  wire \U1/lt2_c27 ;
  wire \U1/lt2_c29 ;
  wire \U1/lt2_c3 ;
  wire \U1/lt2_c31 ;
  wire \U1/lt2_c5 ;
  wire \U1/lt2_c7 ;
  wire \U1/lt2_c9 ;
  wire \U1/lt3_c1 ;
  wire \U1/lt3_c11 ;
  wire \U1/lt3_c13 ;
  wire \U1/lt3_c15 ;
  wire \U1/lt3_c17 ;
  wire \U1/lt3_c19 ;
  wire \U1/lt3_c21 ;
  wire \U1/lt3_c23 ;
  wire \U1/lt3_c25 ;
  wire \U1/lt3_c27 ;
  wire \U1/lt3_c29 ;
  wire \U1/lt3_c3 ;
  wire \U1/lt3_c31 ;
  wire \U1/lt3_c5 ;
  wire \U1/lt3_c7 ;
  wire \U1/lt3_c9 ;
  wire \U1/lt4_c1 ;
  wire \U1/lt4_c11 ;
  wire \U1/lt4_c13 ;
  wire \U1/lt4_c15 ;
  wire \U1/lt4_c17 ;
  wire \U1/lt4_c19 ;
  wire \U1/lt4_c21 ;
  wire \U1/lt4_c23 ;
  wire \U1/lt4_c25 ;
  wire \U1/lt4_c27 ;
  wire \U1/lt4_c29 ;
  wire \U1/lt4_c3 ;
  wire \U1/lt4_c31 ;
  wire \U1/lt4_c5 ;
  wire \U1/lt4_c7 ;
  wire \U1/lt4_c9 ;
  wire \U1/lt5_c1 ;
  wire \U1/lt5_c11 ;
  wire \U1/lt5_c13 ;
  wire \U1/lt5_c15 ;
  wire \U1/lt5_c17 ;
  wire \U1/lt5_c19 ;
  wire \U1/lt5_c21 ;
  wire \U1/lt5_c23 ;
  wire \U1/lt5_c25 ;
  wire \U1/lt5_c27 ;
  wire \U1/lt5_c29 ;
  wire \U1/lt5_c3 ;
  wire \U1/lt5_c31 ;
  wire \U1/lt5_c5 ;
  wire \U1/lt5_c7 ;
  wire \U1/lt5_c9 ;
  wire \U1/n1 ;
  wire \U1/n10 ;
  wire \U1/n11 ;
  wire \U1/n13 ;
  wire \U1/n4 ;
  wire \U1/n5 ;
  wire \U1/n6 ;
  wire \U1/n7 ;
  wire \U1/sub0/c11 ;
  wire \U1/sub0/c15 ;
  wire \U1/sub0/c19 ;
  wire \U1/sub0/c23 ;
  wire \U1/sub0/c27 ;
  wire \U1/sub0/c3 ;
  wire \U1/sub0/c31 ;
  wire \U1/sub0/c7 ;
  wire \U1/sub1/c11 ;
  wire \U1/sub1/c15 ;
  wire \U1/sub1/c19 ;
  wire \U1/sub1/c23 ;
  wire \U1/sub1/c27 ;
  wire \U1/sub1/c3 ;
  wire \U1/sub1/c31 ;
  wire \U1/sub1/c7 ;
  wire \U1/sub2/c11 ;
  wire \U1/sub2/c15 ;
  wire \U1/sub2/c19 ;
  wire \U1/sub2/c23 ;
  wire \U1/sub2/c27 ;
  wire \U1/sub2/c3 ;
  wire \U1/sub2/c31 ;
  wire \U1/sub2/c7 ;
  wire \U1/sub3/c11 ;
  wire \U1/sub3/c15 ;
  wire \U1/sub3/c19 ;
  wire \U1/sub3/c23 ;
  wire \U1/sub3/c27 ;
  wire \U1/sub3/c3 ;
  wire \U1/sub3/c31 ;
  wire \U1/sub3/c7 ;
  wire \U1/sub4/c11 ;
  wire \U1/sub4/c15 ;
  wire \U1/sub4/c19 ;
  wire \U1/sub4/c23 ;
  wire \U1/sub4/c27 ;
  wire \U1/sub4/c3 ;
  wire \U1/sub4/c31 ;
  wire \U1/sub4/c7 ;
  wire \U2/add0/c3 ;
  wire \U2/add0/c7 ;
  wire \U2/lt0_c1 ;
  wire \U2/lt0_c3 ;
  wire \U2/lt0_c5 ;
  wire \U2/lt0_c7 ;
  wire \U2/mux11_sel_is_2_o ;
  wire \U2/mux13_b7_sel_is_2_o ;
  wire \U2/n15 ;
  wire \U3/add0/c3 ;
  wire \U3/lt0_c1 ;
  wire \U3/lt0_c3 ;
  wire \U3/lt0_c5 ;
  wire \U3/lt0_c7 ;
  wire \U3/n1 ;
  wire UART_CLK;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(43)
  wire UART_TX_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(16)
  wire _al_u163_o;
  wire _al_u165_o;
  wire _al_u167_o;
  wire _al_u168_o;
  wire _al_u169_o;
  wire _al_u170_o;
  wire _al_u172_o;
  wire _al_u173_o;
  wire _al_u174_o;
  wire _al_u175_o;
  wire _al_u177_o;
  wire _al_u178_o;
  wire _al_u179_o;
  wire _al_u181_o;
  wire _al_u183_o;
  wire _al_u184_o;
  wire _al_u186_o;
  wire _al_u188_o;
  wire _al_u190_o;
  wire _al_u192_o;
  wire _al_u194_o;
  wire _al_u195_o;
  wire _al_u196_o;
  wire _al_u197_o;
  wire _al_u206_o;
  wire _al_u207_o;
  wire _al_u208_o;
  wire _al_u209_o;
  wire _al_u210_o;
  wire _al_u211_o;
  wire _al_u212_o;
  wire _al_u213_o;
  wire _al_u214_o;
  wire _al_u215_o;
  wire _al_u249_o;
  wire _al_u252_o;
  wire _al_u254_o;
  wire _al_u255_o;
  wire nRST_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(13)

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
    \C1/CLK_OUT_reg  (
    .ce(\C1/n1 ),
    .clk(CLK_50M),
    .d({open_n6,UART_CLK}),
    .sr(nRST_pad),
    .q({open_n28,UART_CLK}));  // Source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.MACRO("C1/add0/ucin_al_u265"),
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
    \C1/add0/u11_al_u268  (
    .a({\C1/Count [13],\C1/Count [11]}),
    .b({\C1/Count [14],\C1/Count [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\C1/add0/c11 ),
    .f({\C1/n3 [13],\C1/n3 [11]}),
    .fco(\C1/add0/c15 ),
    .fx({\C1/n3 [14],\C1/n3 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("C1/add0/ucin_al_u265"),
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
    \C1/add0/u15_al_u269  (
    .a({\C1/Count [17],\C1/Count [15]}),
    .b({\C1/Count [18],\C1/Count [16]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\C1/add0/c15 ),
    .f({\C1/n3 [17],\C1/n3 [15]}),
    .fco(\C1/add0/c19 ),
    .fx({\C1/n3 [18],\C1/n3 [16]}));
  EG_PHY_LSLICE #(
    //.MACRO("C1/add0/ucin_al_u265"),
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
    \C1/add0/u19_al_u270  (
    .a({\C1/Count [21],\C1/Count [19]}),
    .b({\C1/Count [22],\C1/Count [20]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\C1/add0/c19 ),
    .f({\C1/n3 [21],\C1/n3 [19]}),
    .fco(\C1/add0/c23 ),
    .fx({\C1/n3 [22],\C1/n3 [20]}));
  EG_PHY_LSLICE #(
    //.MACRO("C1/add0/ucin_al_u265"),
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
    \C1/add0/u23_al_u271  (
    .a({\C1/Count [25],\C1/Count [23]}),
    .b({\C1/Count [26],\C1/Count [24]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\C1/add0/c23 ),
    .f({\C1/n3 [25],\C1/n3 [23]}),
    .fco(\C1/add0/c27 ),
    .fx({\C1/n3 [26],\C1/n3 [24]}));
  EG_PHY_LSLICE #(
    //.MACRO("C1/add0/ucin_al_u265"),
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
    \C1/add0/u27_al_u272  (
    .a({\C1/Count [29],\C1/Count [27]}),
    .b({\C1/Count [30],\C1/Count [28]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\C1/add0/c27 ),
    .f({\C1/n3 [29],\C1/n3 [27]}),
    .fco(\C1/add0/c31 ),
    .fx({\C1/n3 [30],\C1/n3 [28]}));
  EG_PHY_LSLICE #(
    //.MACRO("C1/add0/ucin_al_u265"),
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
    \C1/add0/u31_al_u273  (
    .a({open_n119,\C1/Count [31]}),
    .c(2'b00),
    .d({open_n124,1'b0}),
    .fci(\C1/add0/c31 ),
    .f({open_n141,\C1/n3 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("C1/add0/ucin_al_u265"),
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
    \C1/add0/u3_al_u266  (
    .a({\C1/Count [5],\C1/Count [3]}),
    .b({\C1/Count [6],\C1/Count [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\C1/add0/c3 ),
    .f({\C1/n3 [5],\C1/n3 [3]}),
    .fco(\C1/add0/c7 ),
    .fx({\C1/n3 [6],\C1/n3 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("C1/add0/ucin_al_u265"),
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
    \C1/add0/u7_al_u267  (
    .a({\C1/Count [9],\C1/Count [7]}),
    .b({\C1/Count [10],\C1/Count [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\C1/add0/c7 ),
    .f({\C1/n3 [9],\C1/n3 [7]}),
    .fco(\C1/add0/c11 ),
    .fx({\C1/n3 [10],\C1/n3 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("C1/add0/ucin_al_u265"),
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
    \C1/add0/ucin_al_u265  (
    .a({\C1/Count [1],1'b0}),
    .b({\C1/Count [2],\C1/Count [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\C1/n3 [1],open_n200}),
    .fco(\C1/add0/c3 ),
    .fx({\C1/n3 [2],\C1/n3 [0]}));
  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
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
    \C1/reg0_b0|C1/reg0_b8  (
    .b({_al_u215_o,_al_u215_o}),
    .c({\C1/n3 [0],\C1/n3 [8]}),
    .clk(CLK_50M),
    .d({_al_u210_o,_al_u210_o}),
    .sr(nRST_pad),
    .q({\C1/Count [0],\C1/Count [8]}));  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
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
    \C1/reg0_b10|C1/reg0_b7  (
    .b({_al_u215_o,_al_u215_o}),
    .c({\C1/n3 [10],\C1/n3 [7]}),
    .clk(CLK_50M),
    .d({_al_u210_o,_al_u210_o}),
    .sr(nRST_pad),
    .q({\C1/Count [10],\C1/Count [7]}));  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
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
    \C1/reg0_b11|C1/reg0_b6  (
    .b({_al_u215_o,_al_u215_o}),
    .c({\C1/n3 [11],\C1/n3 [6]}),
    .clk(CLK_50M),
    .d({_al_u210_o,_al_u210_o}),
    .sr(nRST_pad),
    .q({\C1/Count [11],\C1/Count [6]}));  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
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
    \C1/reg0_b12|C1/reg0_b4  (
    .b({_al_u215_o,_al_u215_o}),
    .c({\C1/n3 [12],\C1/n3 [4]}),
    .clk(CLK_50M),
    .d({_al_u210_o,_al_u210_o}),
    .sr(nRST_pad),
    .q({\C1/Count [12],\C1/Count [4]}));  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
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
    \C1/reg0_b13|C1/reg0_b31  (
    .b({_al_u215_o,_al_u215_o}),
    .c({\C1/n3 [13],\C1/n3 [31]}),
    .clk(CLK_50M),
    .d({_al_u210_o,_al_u210_o}),
    .sr(nRST_pad),
    .q({\C1/Count [13],\C1/Count [31]}));  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
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
    \C1/reg0_b14|C1/reg0_b30  (
    .b({_al_u215_o,_al_u215_o}),
    .c({\C1/n3 [14],\C1/n3 [30]}),
    .clk(CLK_50M),
    .d({_al_u210_o,_al_u210_o}),
    .sr(nRST_pad),
    .q({\C1/Count [14],\C1/Count [30]}));  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
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
    \C1/reg0_b15|C1/reg0_b29  (
    .b({_al_u215_o,_al_u215_o}),
    .c({\C1/n3 [15],\C1/n3 [29]}),
    .clk(CLK_50M),
    .d({_al_u210_o,_al_u210_o}),
    .sr(nRST_pad),
    .q({\C1/Count [15],\C1/Count [29]}));  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
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
    \C1/reg0_b16|C1/reg0_b28  (
    .b({_al_u215_o,_al_u215_o}),
    .c({\C1/n3 [16],\C1/n3 [28]}),
    .clk(CLK_50M),
    .d({_al_u210_o,_al_u210_o}),
    .sr(nRST_pad),
    .q({\C1/Count [16],\C1/Count [28]}));  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
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
    \C1/reg0_b17|C1/reg0_b27  (
    .b({_al_u215_o,_al_u215_o}),
    .c({\C1/n3 [17],\C1/n3 [27]}),
    .clk(CLK_50M),
    .d({_al_u210_o,_al_u210_o}),
    .sr(nRST_pad),
    .q({\C1/Count [17],\C1/Count [27]}));  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
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
    \C1/reg0_b18|C1/reg0_b25  (
    .b({_al_u215_o,_al_u215_o}),
    .c({\C1/n3 [18],\C1/n3 [25]}),
    .clk(CLK_50M),
    .d({_al_u210_o,_al_u210_o}),
    .sr(nRST_pad),
    .q({\C1/Count [18],\C1/Count [25]}));  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
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
    \C1/reg0_b19|C1/reg0_b24  (
    .b({_al_u215_o,_al_u215_o}),
    .c({\C1/n3 [19],\C1/n3 [24]}),
    .clk(CLK_50M),
    .d({_al_u210_o,_al_u210_o}),
    .sr(nRST_pad),
    .q({\C1/Count [19],\C1/Count [24]}));  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
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
    \C1/reg0_b1|C1/reg0_b23  (
    .b({_al_u215_o,_al_u215_o}),
    .c({\C1/n3 [1],\C1/n3 [23]}),
    .clk(CLK_50M),
    .d({_al_u210_o,_al_u210_o}),
    .sr(nRST_pad),
    .q({\C1/Count [1],\C1/Count [23]}));  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
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
    \C1/reg0_b20|C1/reg0_b21  (
    .b({_al_u215_o,_al_u215_o}),
    .c({\C1/n3 [20],\C1/n3 [21]}),
    .clk(CLK_50M),
    .d({_al_u210_o,_al_u210_o}),
    .sr(nRST_pad),
    .q({\C1/Count [20],\C1/Count [21]}));  // Source/CLK_MOD.v(32)
  EG_PHY_FIFO #(
    .AE(32'b00000000000000000000000001100000),
    .AEP1(32'b00000000000000000000000001110000),
    .AF(32'b00000000000000000001111110100000),
    .AFM1(32'b00000000000000000001111110010000),
    .ASYNC_RESET_RELEASE("SYNC"),
    .DATA_WIDTH_A("18"),
    .DATA_WIDTH_B("18"),
    .E(32'b00000000000000000000000000000000),
    .EP1(32'b00000000000000000000000000010000),
    .F(32'b00000000000000000010000000000000),
    .FM1(32'b00000000000000000001111111110000),
    .GSR("DISABLE"),
    .MODE("FIFO8K"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"))
    \FIFO0/logic_fifo_0  (
    .clkr(FIFO_CLK_R),
    .clkw(CLK_50M),
    .csr({2'b11,FIFO_EMPTY_neg}),
    .csw({2'b11,FIFO_FULL_neg}),
    .dia({open_n515,FIFO_DI}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(FIFO_RE),
    .rprst(\C1/n0 ),
    .rst(\C1/n0 ),
    .we(FIFO_FULL_neg),
    .doa({open_n527,FIFO_DO}),
    .empty_flag(FIFO_EMPTY),
    .full_flag(FIFO_FULL));
  EG_PHY_GCLK \Pll/bufg_feedback  (
    .clki(\Pll/clk0_buf ),
    .clko(\Pll/clk0_out ));  // al_ip/SysPll.v(41)
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
    .refclk(CLK_24M_pad),
    .reset(\C1/n0 ),
    .stdby(1'b0),
    .clkc({open_n537,open_n538,open_n539,CLK_50M,\Pll/clk0_buf }));  // al_ip/SysPll.v(76)
  EG_PHY_LSLICE #(
    //.MACRO("U1/B_PWM/add0/ucin_al_u328"),
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
    \U1/B_PWM/add0/u11_al_u331  (
    .a({\U1/B_PWM/PWMCount [13],\U1/B_PWM/PWMCount [11]}),
    .b({\U1/B_PWM/PWMCount [14],\U1/B_PWM/PWMCount [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/B_PWM/add0/c11 ),
    .f({\U1/B_PWM/n2 [13],\U1/B_PWM/n2 [11]}),
    .fco(\U1/B_PWM/add0/c15 ),
    .fx({\U1/B_PWM/n2 [14],\U1/B_PWM/n2 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/B_PWM/add0/ucin_al_u328"),
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
    \U1/B_PWM/add0/u15_al_u332  (
    .a({open_n568,\U1/B_PWM/PWMCount [15]}),
    .c(2'b00),
    .d({open_n573,1'b0}),
    .fci(\U1/B_PWM/add0/c15 ),
    .f({open_n590,\U1/B_PWM/n2 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/B_PWM/add0/ucin_al_u328"),
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
    \U1/B_PWM/add0/u3_al_u329  (
    .a({\U1/B_PWM/PWMCount [5],\U1/B_PWM/PWMCount [3]}),
    .b({\U1/B_PWM/PWMCount [6],\U1/B_PWM/PWMCount [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/B_PWM/add0/c3 ),
    .f({\U1/B_PWM/n2 [5],\U1/B_PWM/n2 [3]}),
    .fco(\U1/B_PWM/add0/c7 ),
    .fx({\U1/B_PWM/n2 [6],\U1/B_PWM/n2 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/B_PWM/add0/ucin_al_u328"),
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
    \U1/B_PWM/add0/u7_al_u330  (
    .a({\U1/B_PWM/PWMCount [9],\U1/B_PWM/PWMCount [7]}),
    .b({\U1/B_PWM/PWMCount [10],\U1/B_PWM/PWMCount [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/B_PWM/add0/c7 ),
    .f({\U1/B_PWM/n2 [9],\U1/B_PWM/n2 [7]}),
    .fco(\U1/B_PWM/add0/c11 ),
    .fx({\U1/B_PWM/n2 [10],\U1/B_PWM/n2 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/B_PWM/add0/ucin_al_u328"),
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
    \U1/B_PWM/add0/ucin_al_u328  (
    .a({\U1/B_PWM/PWMCount [1],1'b0}),
    .b({\U1/B_PWM/PWMCount [2],\U1/B_PWM/PWMCount [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U1/B_PWM/n2 [1],open_n649}),
    .fco(\U1/B_PWM/add0/c3 ),
    .fx({\U1/B_PWM/n2 [2],\U1/B_PWM/n2 [0]}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt0_0|U1/B_PWM/lt0_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt0_0|U1/B_PWM/lt0_cin  (
    .a(2'b01),
    .b({\U1/B_PWM/PWMCount [0],open_n652}),
    .fco(\U1/B_PWM/lt0_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt0_0|U1/B_PWM/lt0_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt0_10|U1/B_PWM/lt0_9  (
    .a(2'b01),
    .b(\U1/B_PWM/PWMCount [10:9]),
    .fci(\U1/B_PWM/lt0_c9 ),
    .fco(\U1/B_PWM/lt0_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt0_0|U1/B_PWM/lt0_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt0_12|U1/B_PWM/lt0_11  (
    .a(2'b00),
    .b(\U1/B_PWM/PWMCount [12:11]),
    .fci(\U1/B_PWM/lt0_c11 ),
    .fco(\U1/B_PWM/lt0_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt0_0|U1/B_PWM/lt0_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt0_14|U1/B_PWM/lt0_13  (
    .a(2'b00),
    .b(\U1/B_PWM/PWMCount [14:13]),
    .fci(\U1/B_PWM/lt0_c13 ),
    .fco(\U1/B_PWM/lt0_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt0_0|U1/B_PWM/lt0_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt0_2|U1/B_PWM/lt0_1  (
    .a(2'b00),
    .b(\U1/B_PWM/PWMCount [2:1]),
    .fci(\U1/B_PWM/lt0_c1 ),
    .fco(\U1/B_PWM/lt0_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt0_0|U1/B_PWM/lt0_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt0_4|U1/B_PWM/lt0_3  (
    .a(2'b01),
    .b(\U1/B_PWM/PWMCount [4:3]),
    .fci(\U1/B_PWM/lt0_c3 ),
    .fco(\U1/B_PWM/lt0_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt0_0|U1/B_PWM/lt0_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt0_6|U1/B_PWM/lt0_5  (
    .a(2'b11),
    .b(\U1/B_PWM/PWMCount [6:5]),
    .fci(\U1/B_PWM/lt0_c5 ),
    .fco(\U1/B_PWM/lt0_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt0_0|U1/B_PWM/lt0_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt0_8|U1/B_PWM/lt0_7  (
    .a(2'b11),
    .b(\U1/B_PWM/PWMCount [8:7]),
    .fci(\U1/B_PWM/lt0_c7 ),
    .fco(\U1/B_PWM/lt0_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt0_0|U1/B_PWM/lt0_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt0_cout|U1/B_PWM/lt0_15  (
    .a(2'b00),
    .b({1'b1,\U1/B_PWM/PWMCount [15]}),
    .fci(\U1/B_PWM/lt0_c15 ),
    .f({\U1/B_PWM/n1 ,open_n864}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt1_0|U1/B_PWM/lt1_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt1_0|U1/B_PWM/lt1_cin  (
    .a({\U1/B_PWM/PWMCount [0],1'b1}),
    .b({\U1/PWM_BData [16],open_n870}),
    .fco(\U1/B_PWM/lt1_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt1_0|U1/B_PWM/lt1_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt1_10|U1/B_PWM/lt1_9  (
    .a(\U1/B_PWM/PWMCount [10:9]),
    .b(\U1/PWM_BData [26:25]),
    .fci(\U1/B_PWM/lt1_c9 ),
    .fco(\U1/B_PWM/lt1_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt1_0|U1/B_PWM/lt1_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt1_12|U1/B_PWM/lt1_11  (
    .a(\U1/B_PWM/PWMCount [12:11]),
    .b(\U1/PWM_BData [28:27]),
    .fci(\U1/B_PWM/lt1_c11 ),
    .fco(\U1/B_PWM/lt1_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt1_0|U1/B_PWM/lt1_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt1_14|U1/B_PWM/lt1_13  (
    .a(\U1/B_PWM/PWMCount [14:13]),
    .b(\U1/PWM_BData [30:29]),
    .fci(\U1/B_PWM/lt1_c13 ),
    .fco(\U1/B_PWM/lt1_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt1_0|U1/B_PWM/lt1_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt1_2|U1/B_PWM/lt1_1  (
    .a(\U1/B_PWM/PWMCount [2:1]),
    .b(\U1/PWM_BData [18:17]),
    .fci(\U1/B_PWM/lt1_c1 ),
    .fco(\U1/B_PWM/lt1_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt1_0|U1/B_PWM/lt1_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt1_4|U1/B_PWM/lt1_3  (
    .a(\U1/B_PWM/PWMCount [4:3]),
    .b(\U1/PWM_BData [20:19]),
    .fci(\U1/B_PWM/lt1_c3 ),
    .fco(\U1/B_PWM/lt1_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt1_0|U1/B_PWM/lt1_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt1_6|U1/B_PWM/lt1_5  (
    .a(\U1/B_PWM/PWMCount [6:5]),
    .b(\U1/PWM_BData [22:21]),
    .fci(\U1/B_PWM/lt1_c5 ),
    .fco(\U1/B_PWM/lt1_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt1_0|U1/B_PWM/lt1_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt1_8|U1/B_PWM/lt1_7  (
    .a(\U1/B_PWM/PWMCount [8:7]),
    .b(\U1/PWM_BData [24:23]),
    .fci(\U1/B_PWM/lt1_c7 ),
    .fco(\U1/B_PWM/lt1_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/B_PWM/lt1_0|U1/B_PWM/lt1_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/B_PWM/lt1_cout|U1/B_PWM/lt1_15  (
    .a({1'b0,\U1/B_PWM/PWMCount [15]}),
    .b({1'b1,\U1/PWM_BData [31]}),
    .fci(\U1/B_PWM/lt1_c15 ),
    .f({\U1/B_PWM/n4 ,open_n1082}));
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/B_PWM/reg0_b0|U1/B_PWM/reg0_b9  (
    .c({\U1/B_PWM/n1 ,\U1/B_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/B_PWM/n2 [0],\U1/B_PWM/n2 [9]}),
    .sr(nRST_pad),
    .q({\U1/B_PWM/PWMCount [0],\U1/B_PWM/PWMCount [9]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/B_PWM/reg0_b10|U1/B_PWM/reg0_b8  (
    .c({\U1/B_PWM/n1 ,\U1/B_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/B_PWM/n2 [10],\U1/B_PWM/n2 [8]}),
    .sr(nRST_pad),
    .q({\U1/B_PWM/PWMCount [10],\U1/B_PWM/PWMCount [8]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/B_PWM/reg0_b11|U1/B_PWM/reg0_b7  (
    .c({\U1/B_PWM/n1 ,\U1/B_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/B_PWM/n2 [11],\U1/B_PWM/n2 [7]}),
    .sr(nRST_pad),
    .q({\U1/B_PWM/PWMCount [11],\U1/B_PWM/PWMCount [7]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/B_PWM/reg0_b12|U1/B_PWM/reg0_b6  (
    .c({\U1/B_PWM/n1 ,\U1/B_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/B_PWM/n2 [12],\U1/B_PWM/n2 [6]}),
    .sr(nRST_pad),
    .q({\U1/B_PWM/PWMCount [12],\U1/B_PWM/PWMCount [6]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/B_PWM/reg0_b13|U1/B_PWM/reg0_b5  (
    .c({\U1/B_PWM/n1 ,\U1/B_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/B_PWM/n2 [13],\U1/B_PWM/n2 [5]}),
    .sr(nRST_pad),
    .q({\U1/B_PWM/PWMCount [13],\U1/B_PWM/PWMCount [5]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/B_PWM/reg0_b14|U1/B_PWM/reg0_b4  (
    .c({\U1/B_PWM/n1 ,\U1/B_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/B_PWM/n2 [14],\U1/B_PWM/n2 [4]}),
    .sr(nRST_pad),
    .q({\U1/B_PWM/PWMCount [14],\U1/B_PWM/PWMCount [4]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/B_PWM/reg0_b15|U1/B_PWM/reg0_b3  (
    .c({\U1/B_PWM/n1 ,\U1/B_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/B_PWM/n2 [15],\U1/B_PWM/n2 [3]}),
    .sr(nRST_pad),
    .q({\U1/B_PWM/PWMCount [15],\U1/B_PWM/PWMCount [3]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/B_PWM/reg0_b1|U1/B_PWM/reg0_b2  (
    .c({\U1/B_PWM/n1 ,\U1/B_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/B_PWM/n2 [1],\U1/B_PWM/n2 [2]}),
    .sr(nRST_pad),
    .q({\U1/B_PWM/PWMCount [1],\U1/B_PWM/PWMCount [2]}));  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.MACRO("U1/G_PWM/add0/ucin_al_u333"),
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
    \U1/G_PWM/add0/u11_al_u336  (
    .a({\U1/G_PWM/PWMCount [13],\U1/G_PWM/PWMCount [11]}),
    .b({\U1/G_PWM/PWMCount [14],\U1/G_PWM/PWMCount [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/G_PWM/add0/c11 ),
    .f({\U1/G_PWM/n2 [13],\U1/G_PWM/n2 [11]}),
    .fco(\U1/G_PWM/add0/c15 ),
    .fx({\U1/G_PWM/n2 [14],\U1/G_PWM/n2 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/G_PWM/add0/ucin_al_u333"),
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
    \U1/G_PWM/add0/u15_al_u337  (
    .a({open_n1314,\U1/G_PWM/PWMCount [15]}),
    .c(2'b00),
    .d({open_n1319,1'b0}),
    .fci(\U1/G_PWM/add0/c15 ),
    .f({open_n1336,\U1/G_PWM/n2 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/G_PWM/add0/ucin_al_u333"),
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
    \U1/G_PWM/add0/u3_al_u334  (
    .a({\U1/G_PWM/PWMCount [5],\U1/G_PWM/PWMCount [3]}),
    .b({\U1/G_PWM/PWMCount [6],\U1/G_PWM/PWMCount [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/G_PWM/add0/c3 ),
    .f({\U1/G_PWM/n2 [5],\U1/G_PWM/n2 [3]}),
    .fco(\U1/G_PWM/add0/c7 ),
    .fx({\U1/G_PWM/n2 [6],\U1/G_PWM/n2 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/G_PWM/add0/ucin_al_u333"),
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
    \U1/G_PWM/add0/u7_al_u335  (
    .a({\U1/G_PWM/PWMCount [9],\U1/G_PWM/PWMCount [7]}),
    .b({\U1/G_PWM/PWMCount [10],\U1/G_PWM/PWMCount [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/G_PWM/add0/c7 ),
    .f({\U1/G_PWM/n2 [9],\U1/G_PWM/n2 [7]}),
    .fco(\U1/G_PWM/add0/c11 ),
    .fx({\U1/G_PWM/n2 [10],\U1/G_PWM/n2 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/G_PWM/add0/ucin_al_u333"),
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
    \U1/G_PWM/add0/ucin_al_u333  (
    .a({\U1/G_PWM/PWMCount [1],1'b0}),
    .b({\U1/G_PWM/PWMCount [2],\U1/G_PWM/PWMCount [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U1/G_PWM/n2 [1],open_n1395}),
    .fco(\U1/G_PWM/add0/c3 ),
    .fx({\U1/G_PWM/n2 [2],\U1/G_PWM/n2 [0]}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt0_0|U1/G_PWM/lt0_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt0_0|U1/G_PWM/lt0_cin  (
    .a(2'b01),
    .b({\U1/G_PWM/PWMCount [0],open_n1398}),
    .fco(\U1/G_PWM/lt0_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt0_0|U1/G_PWM/lt0_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt0_10|U1/G_PWM/lt0_9  (
    .a(2'b01),
    .b(\U1/G_PWM/PWMCount [10:9]),
    .fci(\U1/G_PWM/lt0_c9 ),
    .fco(\U1/G_PWM/lt0_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt0_0|U1/G_PWM/lt0_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt0_12|U1/G_PWM/lt0_11  (
    .a(2'b00),
    .b(\U1/G_PWM/PWMCount [12:11]),
    .fci(\U1/G_PWM/lt0_c11 ),
    .fco(\U1/G_PWM/lt0_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt0_0|U1/G_PWM/lt0_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt0_14|U1/G_PWM/lt0_13  (
    .a(2'b00),
    .b(\U1/G_PWM/PWMCount [14:13]),
    .fci(\U1/G_PWM/lt0_c13 ),
    .fco(\U1/G_PWM/lt0_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt0_0|U1/G_PWM/lt0_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt0_2|U1/G_PWM/lt0_1  (
    .a(2'b00),
    .b(\U1/G_PWM/PWMCount [2:1]),
    .fci(\U1/G_PWM/lt0_c1 ),
    .fco(\U1/G_PWM/lt0_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt0_0|U1/G_PWM/lt0_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt0_4|U1/G_PWM/lt0_3  (
    .a(2'b01),
    .b(\U1/G_PWM/PWMCount [4:3]),
    .fci(\U1/G_PWM/lt0_c3 ),
    .fco(\U1/G_PWM/lt0_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt0_0|U1/G_PWM/lt0_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt0_6|U1/G_PWM/lt0_5  (
    .a(2'b11),
    .b(\U1/G_PWM/PWMCount [6:5]),
    .fci(\U1/G_PWM/lt0_c5 ),
    .fco(\U1/G_PWM/lt0_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt0_0|U1/G_PWM/lt0_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt0_8|U1/G_PWM/lt0_7  (
    .a(2'b11),
    .b(\U1/G_PWM/PWMCount [8:7]),
    .fci(\U1/G_PWM/lt0_c7 ),
    .fco(\U1/G_PWM/lt0_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt0_0|U1/G_PWM/lt0_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt0_cout|U1/G_PWM/lt0_15  (
    .a(2'b00),
    .b({1'b1,\U1/G_PWM/PWMCount [15]}),
    .fci(\U1/G_PWM/lt0_c15 ),
    .f({\U1/G_PWM/n1 ,open_n1610}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt1_0|U1/G_PWM/lt1_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt1_0|U1/G_PWM/lt1_cin  (
    .a({\U1/G_PWM/PWMCount [0],1'b1}),
    .b({\U1/PWM_GData [16],open_n1616}),
    .fco(\U1/G_PWM/lt1_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt1_0|U1/G_PWM/lt1_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt1_10|U1/G_PWM/lt1_9  (
    .a(\U1/G_PWM/PWMCount [10:9]),
    .b(\U1/PWM_GData [26:25]),
    .fci(\U1/G_PWM/lt1_c9 ),
    .fco(\U1/G_PWM/lt1_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt1_0|U1/G_PWM/lt1_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt1_12|U1/G_PWM/lt1_11  (
    .a(\U1/G_PWM/PWMCount [12:11]),
    .b(\U1/PWM_GData [28:27]),
    .fci(\U1/G_PWM/lt1_c11 ),
    .fco(\U1/G_PWM/lt1_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt1_0|U1/G_PWM/lt1_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt1_14|U1/G_PWM/lt1_13  (
    .a(\U1/G_PWM/PWMCount [14:13]),
    .b(\U1/PWM_GData [30:29]),
    .fci(\U1/G_PWM/lt1_c13 ),
    .fco(\U1/G_PWM/lt1_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt1_0|U1/G_PWM/lt1_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt1_2|U1/G_PWM/lt1_1  (
    .a(\U1/G_PWM/PWMCount [2:1]),
    .b(\U1/PWM_GData [18:17]),
    .fci(\U1/G_PWM/lt1_c1 ),
    .fco(\U1/G_PWM/lt1_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt1_0|U1/G_PWM/lt1_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt1_4|U1/G_PWM/lt1_3  (
    .a(\U1/G_PWM/PWMCount [4:3]),
    .b(\U1/PWM_GData [20:19]),
    .fci(\U1/G_PWM/lt1_c3 ),
    .fco(\U1/G_PWM/lt1_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt1_0|U1/G_PWM/lt1_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt1_6|U1/G_PWM/lt1_5  (
    .a(\U1/G_PWM/PWMCount [6:5]),
    .b(\U1/PWM_GData [22:21]),
    .fci(\U1/G_PWM/lt1_c5 ),
    .fco(\U1/G_PWM/lt1_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt1_0|U1/G_PWM/lt1_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt1_8|U1/G_PWM/lt1_7  (
    .a(\U1/G_PWM/PWMCount [8:7]),
    .b(\U1/PWM_GData [24:23]),
    .fci(\U1/G_PWM/lt1_c7 ),
    .fco(\U1/G_PWM/lt1_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/G_PWM/lt1_0|U1/G_PWM/lt1_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/G_PWM/lt1_cout|U1/G_PWM/lt1_15  (
    .a({1'b0,\U1/G_PWM/PWMCount [15]}),
    .b({1'b1,\U1/PWM_GData [31]}),
    .fci(\U1/G_PWM/lt1_c15 ),
    .f({\U1/G_PWM/n4 ,open_n1828}));
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/G_PWM/reg0_b0|U1/G_PWM/reg0_b9  (
    .c({\U1/G_PWM/n1 ,\U1/G_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/G_PWM/n2 [0],\U1/G_PWM/n2 [9]}),
    .sr(nRST_pad),
    .q({\U1/G_PWM/PWMCount [0],\U1/G_PWM/PWMCount [9]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/G_PWM/reg0_b10|U1/G_PWM/reg0_b8  (
    .c({\U1/G_PWM/n1 ,\U1/G_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/G_PWM/n2 [10],\U1/G_PWM/n2 [8]}),
    .sr(nRST_pad),
    .q({\U1/G_PWM/PWMCount [10],\U1/G_PWM/PWMCount [8]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/G_PWM/reg0_b11|U1/G_PWM/reg0_b7  (
    .c({\U1/G_PWM/n1 ,\U1/G_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/G_PWM/n2 [11],\U1/G_PWM/n2 [7]}),
    .sr(nRST_pad),
    .q({\U1/G_PWM/PWMCount [11],\U1/G_PWM/PWMCount [7]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/G_PWM/reg0_b12|U1/G_PWM/reg0_b6  (
    .c({\U1/G_PWM/n1 ,\U1/G_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/G_PWM/n2 [12],\U1/G_PWM/n2 [6]}),
    .sr(nRST_pad),
    .q({\U1/G_PWM/PWMCount [12],\U1/G_PWM/PWMCount [6]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/G_PWM/reg0_b13|U1/G_PWM/reg0_b5  (
    .c({\U1/G_PWM/n1 ,\U1/G_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/G_PWM/n2 [13],\U1/G_PWM/n2 [5]}),
    .sr(nRST_pad),
    .q({\U1/G_PWM/PWMCount [13],\U1/G_PWM/PWMCount [5]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/G_PWM/reg0_b14|U1/G_PWM/reg0_b4  (
    .c({\U1/G_PWM/n1 ,\U1/G_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/G_PWM/n2 [14],\U1/G_PWM/n2 [4]}),
    .sr(nRST_pad),
    .q({\U1/G_PWM/PWMCount [14],\U1/G_PWM/PWMCount [4]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/G_PWM/reg0_b15|U1/G_PWM/reg0_b3  (
    .c({\U1/G_PWM/n1 ,\U1/G_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/G_PWM/n2 [15],\U1/G_PWM/n2 [3]}),
    .sr(nRST_pad),
    .q({\U1/G_PWM/PWMCount [15],\U1/G_PWM/PWMCount [3]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/G_PWM/reg0_b1|U1/G_PWM/reg0_b2  (
    .c({\U1/G_PWM/n1 ,\U1/G_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/G_PWM/n2 [1],\U1/G_PWM/n2 [2]}),
    .sr(nRST_pad),
    .q({\U1/G_PWM/PWMCount [1],\U1/G_PWM/PWMCount [2]}));  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.MACRO("U1/R_PWM/add0/ucin_al_u338"),
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
    \U1/R_PWM/add0/u11_al_u341  (
    .a({\U1/R_PWM/PWMCount [13],\U1/R_PWM/PWMCount [11]}),
    .b({\U1/R_PWM/PWMCount [14],\U1/R_PWM/PWMCount [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/R_PWM/add0/c11 ),
    .f({\U1/R_PWM/n2 [13],\U1/R_PWM/n2 [11]}),
    .fco(\U1/R_PWM/add0/c15 ),
    .fx({\U1/R_PWM/n2 [14],\U1/R_PWM/n2 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/R_PWM/add0/ucin_al_u338"),
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
    \U1/R_PWM/add0/u15_al_u342  (
    .a({open_n2060,\U1/R_PWM/PWMCount [15]}),
    .c(2'b00),
    .d({open_n2065,1'b0}),
    .fci(\U1/R_PWM/add0/c15 ),
    .f({open_n2082,\U1/R_PWM/n2 [15]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/R_PWM/add0/ucin_al_u338"),
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
    \U1/R_PWM/add0/u3_al_u339  (
    .a({\U1/R_PWM/PWMCount [5],\U1/R_PWM/PWMCount [3]}),
    .b({\U1/R_PWM/PWMCount [6],\U1/R_PWM/PWMCount [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/R_PWM/add0/c3 ),
    .f({\U1/R_PWM/n2 [5],\U1/R_PWM/n2 [3]}),
    .fco(\U1/R_PWM/add0/c7 ),
    .fx({\U1/R_PWM/n2 [6],\U1/R_PWM/n2 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/R_PWM/add0/ucin_al_u338"),
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
    \U1/R_PWM/add0/u7_al_u340  (
    .a({\U1/R_PWM/PWMCount [9],\U1/R_PWM/PWMCount [7]}),
    .b({\U1/R_PWM/PWMCount [10],\U1/R_PWM/PWMCount [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/R_PWM/add0/c7 ),
    .f({\U1/R_PWM/n2 [9],\U1/R_PWM/n2 [7]}),
    .fco(\U1/R_PWM/add0/c11 ),
    .fx({\U1/R_PWM/n2 [10],\U1/R_PWM/n2 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/R_PWM/add0/ucin_al_u338"),
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
    \U1/R_PWM/add0/ucin_al_u338  (
    .a({\U1/R_PWM/PWMCount [1],1'b0}),
    .b({\U1/R_PWM/PWMCount [2],\U1/R_PWM/PWMCount [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U1/R_PWM/n2 [1],open_n2141}),
    .fco(\U1/R_PWM/add0/c3 ),
    .fx({\U1/R_PWM/n2 [2],\U1/R_PWM/n2 [0]}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt0_0|U1/R_PWM/lt0_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt0_0|U1/R_PWM/lt0_cin  (
    .a(2'b01),
    .b({\U1/R_PWM/PWMCount [0],open_n2144}),
    .fco(\U1/R_PWM/lt0_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt0_0|U1/R_PWM/lt0_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt0_10|U1/R_PWM/lt0_9  (
    .a(2'b01),
    .b(\U1/R_PWM/PWMCount [10:9]),
    .fci(\U1/R_PWM/lt0_c9 ),
    .fco(\U1/R_PWM/lt0_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt0_0|U1/R_PWM/lt0_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt0_12|U1/R_PWM/lt0_11  (
    .a(2'b00),
    .b(\U1/R_PWM/PWMCount [12:11]),
    .fci(\U1/R_PWM/lt0_c11 ),
    .fco(\U1/R_PWM/lt0_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt0_0|U1/R_PWM/lt0_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt0_14|U1/R_PWM/lt0_13  (
    .a(2'b00),
    .b(\U1/R_PWM/PWMCount [14:13]),
    .fci(\U1/R_PWM/lt0_c13 ),
    .fco(\U1/R_PWM/lt0_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt0_0|U1/R_PWM/lt0_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt0_2|U1/R_PWM/lt0_1  (
    .a(2'b00),
    .b(\U1/R_PWM/PWMCount [2:1]),
    .fci(\U1/R_PWM/lt0_c1 ),
    .fco(\U1/R_PWM/lt0_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt0_0|U1/R_PWM/lt0_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt0_4|U1/R_PWM/lt0_3  (
    .a(2'b01),
    .b(\U1/R_PWM/PWMCount [4:3]),
    .fci(\U1/R_PWM/lt0_c3 ),
    .fco(\U1/R_PWM/lt0_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt0_0|U1/R_PWM/lt0_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt0_6|U1/R_PWM/lt0_5  (
    .a(2'b11),
    .b(\U1/R_PWM/PWMCount [6:5]),
    .fci(\U1/R_PWM/lt0_c5 ),
    .fco(\U1/R_PWM/lt0_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt0_0|U1/R_PWM/lt0_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt0_8|U1/R_PWM/lt0_7  (
    .a(2'b11),
    .b(\U1/R_PWM/PWMCount [8:7]),
    .fci(\U1/R_PWM/lt0_c7 ),
    .fco(\U1/R_PWM/lt0_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt0_0|U1/R_PWM/lt0_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt0_cout|U1/R_PWM/lt0_15  (
    .a(2'b00),
    .b({1'b1,\U1/R_PWM/PWMCount [15]}),
    .fci(\U1/R_PWM/lt0_c15 ),
    .f({\U1/R_PWM/n1 ,open_n2356}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt1_0|U1/R_PWM/lt1_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt1_0|U1/R_PWM/lt1_cin  (
    .a({\U1/R_PWM/PWMCount [0],1'b1}),
    .b({\U1/PWM_RData [16],open_n2362}),
    .fco(\U1/R_PWM/lt1_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt1_0|U1/R_PWM/lt1_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt1_10|U1/R_PWM/lt1_9  (
    .a(\U1/R_PWM/PWMCount [10:9]),
    .b(\U1/PWM_RData [26:25]),
    .fci(\U1/R_PWM/lt1_c9 ),
    .fco(\U1/R_PWM/lt1_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt1_0|U1/R_PWM/lt1_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt1_12|U1/R_PWM/lt1_11  (
    .a(\U1/R_PWM/PWMCount [12:11]),
    .b(\U1/PWM_RData [28:27]),
    .fci(\U1/R_PWM/lt1_c11 ),
    .fco(\U1/R_PWM/lt1_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt1_0|U1/R_PWM/lt1_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt1_14|U1/R_PWM/lt1_13  (
    .a(\U1/R_PWM/PWMCount [14:13]),
    .b(\U1/PWM_RData [30:29]),
    .fci(\U1/R_PWM/lt1_c13 ),
    .fco(\U1/R_PWM/lt1_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt1_0|U1/R_PWM/lt1_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt1_2|U1/R_PWM/lt1_1  (
    .a(\U1/R_PWM/PWMCount [2:1]),
    .b(\U1/PWM_RData [18:17]),
    .fci(\U1/R_PWM/lt1_c1 ),
    .fco(\U1/R_PWM/lt1_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt1_0|U1/R_PWM/lt1_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt1_4|U1/R_PWM/lt1_3  (
    .a(\U1/R_PWM/PWMCount [4:3]),
    .b(\U1/PWM_RData [20:19]),
    .fci(\U1/R_PWM/lt1_c3 ),
    .fco(\U1/R_PWM/lt1_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt1_0|U1/R_PWM/lt1_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt1_6|U1/R_PWM/lt1_5  (
    .a(\U1/R_PWM/PWMCount [6:5]),
    .b(\U1/PWM_RData [22:21]),
    .fci(\U1/R_PWM/lt1_c5 ),
    .fco(\U1/R_PWM/lt1_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt1_0|U1/R_PWM/lt1_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt1_8|U1/R_PWM/lt1_7  (
    .a(\U1/R_PWM/PWMCount [8:7]),
    .b(\U1/PWM_RData [24:23]),
    .fci(\U1/R_PWM/lt1_c7 ),
    .fco(\U1/R_PWM/lt1_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/R_PWM/lt1_0|U1/R_PWM/lt1_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/R_PWM/lt1_cout|U1/R_PWM/lt1_15  (
    .a({1'b0,\U1/R_PWM/PWMCount [15]}),
    .b({1'b1,\U1/PWM_RData [31]}),
    .fci(\U1/R_PWM/lt1_c15 ),
    .f({\U1/R_PWM/n4 ,open_n2574}));
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/R_PWM/reg0_b0|U1/R_PWM/reg0_b9  (
    .c({\U1/R_PWM/n1 ,\U1/R_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/R_PWM/n2 [0],\U1/R_PWM/n2 [9]}),
    .sr(nRST_pad),
    .q({\U1/R_PWM/PWMCount [0],\U1/R_PWM/PWMCount [9]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/R_PWM/reg0_b10|U1/R_PWM/reg0_b8  (
    .c({\U1/R_PWM/n1 ,\U1/R_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/R_PWM/n2 [10],\U1/R_PWM/n2 [8]}),
    .sr(nRST_pad),
    .q({\U1/R_PWM/PWMCount [10],\U1/R_PWM/PWMCount [8]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/R_PWM/reg0_b11|U1/R_PWM/reg0_b7  (
    .c({\U1/R_PWM/n1 ,\U1/R_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/R_PWM/n2 [11],\U1/R_PWM/n2 [7]}),
    .sr(nRST_pad),
    .q({\U1/R_PWM/PWMCount [11],\U1/R_PWM/PWMCount [7]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/R_PWM/reg0_b12|U1/R_PWM/reg0_b6  (
    .c({\U1/R_PWM/n1 ,\U1/R_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/R_PWM/n2 [12],\U1/R_PWM/n2 [6]}),
    .sr(nRST_pad),
    .q({\U1/R_PWM/PWMCount [12],\U1/R_PWM/PWMCount [6]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/R_PWM/reg0_b13|U1/R_PWM/reg0_b5  (
    .c({\U1/R_PWM/n1 ,\U1/R_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/R_PWM/n2 [13],\U1/R_PWM/n2 [5]}),
    .sr(nRST_pad),
    .q({\U1/R_PWM/PWMCount [13],\U1/R_PWM/PWMCount [5]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/R_PWM/reg0_b14|U1/R_PWM/reg0_b4  (
    .c({\U1/R_PWM/n1 ,\U1/R_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/R_PWM/n2 [14],\U1/R_PWM/n2 [4]}),
    .sr(nRST_pad),
    .q({\U1/R_PWM/PWMCount [14],\U1/R_PWM/PWMCount [4]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/R_PWM/reg0_b15|U1/R_PWM/reg0_b3  (
    .c({\U1/R_PWM/n1 ,\U1/R_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/R_PWM/n2 [15],\U1/R_PWM/n2 [3]}),
    .sr(nRST_pad),
    .q({\U1/R_PWM/PWMCount [15],\U1/R_PWM/PWMCount [3]}));  // Source/PWM.v(26)
  // Source/PWM.v(26)
  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/R_PWM/reg0_b1|U1/R_PWM/reg0_b2  (
    .c({\U1/R_PWM/n1 ,\U1/R_PWM/n1 }),
    .clk(CLK_50M),
    .d({\U1/R_PWM/n2 [1],\U1/R_PWM/n2 [2]}),
    .sr(nRST_pad),
    .q({\U1/R_PWM/PWMCount [1],\U1/R_PWM/PWMCount [2]}));  // Source/PWM.v(26)
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u274"),
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
    \U1/add0/u11_al_u277  (
    .a({\U1/Count_LED [13],\U1/Count_LED [11]}),
    .b({\U1/Count_LED [14],\U1/Count_LED [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c11 ),
    .f({\U1/n2 [13],\U1/n2 [11]}),
    .fco(\U1/add0/c15 ),
    .fx({\U1/n2 [14],\U1/n2 [12]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u274"),
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
    \U1/add0/u15_al_u278  (
    .a({\U1/Count_LED [17],\U1/Count_LED [15]}),
    .b({\U1/Count_LED [18],\U1/Count_LED [16]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c15 ),
    .f({\U1/n2 [17],\U1/n2 [15]}),
    .fco(\U1/add0/c19 ),
    .fx({\U1/n2 [18],\U1/n2 [16]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u274"),
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
    \U1/add0/u19_al_u279  (
    .a({\U1/Count_LED [21],\U1/Count_LED [19]}),
    .b({\U1/Count_LED [22],\U1/Count_LED [20]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c19 ),
    .f({\U1/n2 [21],\U1/n2 [19]}),
    .fco(\U1/add0/c23 ),
    .fx({\U1/n2 [22],\U1/n2 [20]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u274"),
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
    \U1/add0/u23_al_u280  (
    .a({\U1/Count_LED [25],\U1/Count_LED [23]}),
    .b({\U1/Count_LED [26],\U1/Count_LED [24]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c23 ),
    .f({\U1/n2 [25],\U1/n2 [23]}),
    .fco(\U1/add0/c27 ),
    .fx({\U1/n2 [26],\U1/n2 [24]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u274"),
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
    \U1/add0/u27_al_u281  (
    .a({\U1/Count_LED [29],\U1/Count_LED [27]}),
    .b({\U1/Count_LED [30],\U1/Count_LED [28]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c27 ),
    .f({\U1/n2 [29],\U1/n2 [27]}),
    .fco(\U1/add0/c31 ),
    .fx({\U1/n2 [30],\U1/n2 [28]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u274"),
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
    \U1/add0/u31_al_u282  (
    .a({open_n2878,\U1/Count_LED [31]}),
    .c(2'b00),
    .d({open_n2883,1'b0}),
    .fci(\U1/add0/c31 ),
    .f({open_n2900,\U1/n2 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u274"),
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
    \U1/add0/u3_al_u275  (
    .a({\U1/Count_LED [5],\U1/Count_LED [3]}),
    .b({\U1/Count_LED [6],\U1/Count_LED [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c3 ),
    .f({\U1/n2 [5],\U1/n2 [3]}),
    .fco(\U1/add0/c7 ),
    .fx({\U1/n2 [6],\U1/n2 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u274"),
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
    \U1/add0/u7_al_u276  (
    .a({\U1/Count_LED [9],\U1/Count_LED [7]}),
    .b({\U1/Count_LED [10],\U1/Count_LED [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0/c7 ),
    .f({\U1/n2 [9],\U1/n2 [7]}),
    .fco(\U1/add0/c11 ),
    .fx({\U1/n2 [10],\U1/n2 [8]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0/ucin_al_u274"),
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
    \U1/add0/ucin_al_u274  (
    .a({\U1/Count_LED [1],1'b0}),
    .b({\U1/Count_LED [2],\U1/Count_LED [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U1/n2 [1],open_n2959}),
    .fco(\U1/add0/c3 ),
    .fx({\U1/n2 [2],\U1/n2 [0]}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_0|U1/lt0_cin  (
    .a(2'b01),
    .b({\U1/Count_LED [0],open_n2962}),
    .fco(\U1/lt0_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_10|U1/lt0_9  (
    .a(2'b00),
    .b(\U1/Count_LED [10:9]),
    .fci(\U1/lt0_c9 ),
    .fco(\U1/lt0_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_12|U1/lt0_11  (
    .a(2'b00),
    .b(\U1/Count_LED [12:11]),
    .fci(\U1/lt0_c11 ),
    .fco(\U1/lt0_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_14|U1/lt0_13  (
    .a(2'b00),
    .b(\U1/Count_LED [14:13]),
    .fci(\U1/lt0_c13 ),
    .fco(\U1/lt0_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_16|U1/lt0_15  (
    .a(2'b00),
    .b(\U1/Count_LED [16:15]),
    .fci(\U1/lt0_c15 ),
    .fco(\U1/lt0_c17 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y4Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_18|U1/lt0_17  (
    .a(2'b00),
    .b(\U1/Count_LED [18:17]),
    .fci(\U1/lt0_c17 ),
    .fco(\U1/lt0_c19 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y5Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_20|U1/lt0_19  (
    .a(2'b11),
    .b(\U1/Count_LED [20:19]),
    .fci(\U1/lt0_c19 ),
    .fco(\U1/lt0_c21 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y5Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_22|U1/lt0_21  (
    .a(2'b01),
    .b(\U1/Count_LED [22:21]),
    .fci(\U1/lt0_c21 ),
    .fco(\U1/lt0_c23 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y6Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_24|U1/lt0_23  (
    .a(2'b11),
    .b(\U1/Count_LED [24:23]),
    .fci(\U1/lt0_c23 ),
    .fco(\U1/lt0_c25 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y6Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_26|U1/lt0_25  (
    .a(2'b01),
    .b(\U1/Count_LED [26:25]),
    .fci(\U1/lt0_c25 ),
    .fco(\U1/lt0_c27 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y7Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_28|U1/lt0_27  (
    .a(2'b01),
    .b(\U1/Count_LED [28:27]),
    .fci(\U1/lt0_c27 ),
    .fco(\U1/lt0_c29 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_2|U1/lt0_1  (
    .a(2'b00),
    .b(\U1/Count_LED [2:1]),
    .fci(\U1/lt0_c1 ),
    .fco(\U1/lt0_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y7Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_30|U1/lt0_29  (
    .a(2'b00),
    .b(\U1/Count_LED [30:29]),
    .fci(\U1/lt0_c29 ),
    .fco(\U1/lt0_c31 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_4|U1/lt0_3  (
    .a(2'b00),
    .b(\U1/Count_LED [4:3]),
    .fci(\U1/lt0_c3 ),
    .fco(\U1/lt0_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_6|U1/lt0_5  (
    .a(2'b00),
    .b(\U1/Count_LED [6:5]),
    .fci(\U1/lt0_c5 ),
    .fco(\U1/lt0_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_8|U1/lt0_7  (
    .a(2'b00),
    .b(\U1/Count_LED [8:7]),
    .fci(\U1/lt0_c7 ),
    .fco(\U1/lt0_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt0_0|U1/lt0_cin"),
    //.R_POSITION("X0Y8Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt0_cout|U1/lt0_31  (
    .a(2'b00),
    .b({1'b1,\U1/Count_LED [31]}),
    .fci(\U1/lt0_c31 ),
    .f({\U1/n1 ,open_n3366}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_0|U1/lt1_cin  (
    .a({\U1/Count_LED [0],1'b1}),
    .b({1'b0,open_n3372}),
    .fco(\U1/lt1_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_10|U1/lt1_9  (
    .a(\U1/Count_LED [10:9]),
    .b(2'b00),
    .fci(\U1/lt1_c9 ),
    .fco(\U1/lt1_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_12|U1/lt1_11  (
    .a(\U1/Count_LED [12:11]),
    .b(2'b00),
    .fci(\U1/lt1_c11 ),
    .fco(\U1/lt1_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_14|U1/lt1_13  (
    .a(\U1/Count_LED [14:13]),
    .b(2'b00),
    .fci(\U1/lt1_c13 ),
    .fco(\U1/lt1_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_16|U1/lt1_15  (
    .a(\U1/Count_LED [16:15]),
    .b(2'b00),
    .fci(\U1/lt1_c15 ),
    .fco(\U1/lt1_c17 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y4Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_18|U1/lt1_17  (
    .a(\U1/Count_LED [18:17]),
    .b(2'b00),
    .fci(\U1/lt1_c17 ),
    .fco(\U1/lt1_c19 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y5Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_20|U1/lt1_19  (
    .a(\U1/Count_LED [20:19]),
    .b(2'b01),
    .fci(\U1/lt1_c19 ),
    .fco(\U1/lt1_c21 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y5Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_22|U1/lt1_21  (
    .a(\U1/Count_LED [22:21]),
    .b(2'b11),
    .fci(\U1/lt1_c21 ),
    .fco(\U1/lt1_c23 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y6Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_24|U1/lt1_23  (
    .a(\U1/Count_LED [24:23]),
    .b(2'b11),
    .fci(\U1/lt1_c23 ),
    .fco(\U1/lt1_c25 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y6Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_26|U1/lt1_25  (
    .a(\U1/Count_LED [26:25]),
    .b(2'b01),
    .fci(\U1/lt1_c25 ),
    .fco(\U1/lt1_c27 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y7Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_28|U1/lt1_27  (
    .a(\U1/Count_LED [28:27]),
    .b(2'b00),
    .fci(\U1/lt1_c27 ),
    .fco(\U1/lt1_c29 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_2|U1/lt1_1  (
    .a(\U1/Count_LED [2:1]),
    .b(2'b00),
    .fci(\U1/lt1_c1 ),
    .fco(\U1/lt1_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y7Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_30|U1/lt1_29  (
    .a(\U1/Count_LED [30:29]),
    .b(2'b00),
    .fci(\U1/lt1_c29 ),
    .fco(\U1/lt1_c31 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_4|U1/lt1_3  (
    .a(\U1/Count_LED [4:3]),
    .b(2'b00),
    .fci(\U1/lt1_c3 ),
    .fco(\U1/lt1_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_6|U1/lt1_5  (
    .a(\U1/Count_LED [6:5]),
    .b(2'b00),
    .fci(\U1/lt1_c5 ),
    .fco(\U1/lt1_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_8|U1/lt1_7  (
    .a(\U1/Count_LED [8:7]),
    .b(2'b00),
    .fci(\U1/lt1_c7 ),
    .fco(\U1/lt1_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt1_0|U1/lt1_cin"),
    //.R_POSITION("X0Y8Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt1_cout|U1/lt1_31  (
    .a({1'b0,\U1/Count_LED [31]}),
    .b(2'b10),
    .fci(\U1/lt1_c31 ),
    .f({\U1/n4 ,open_n3776}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_0|U1/lt2_cin  (
    .a(2'b00),
    .b({\U1/Count_LED [0],open_n3782}),
    .fco(\U1/lt2_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_10|U1/lt2_9  (
    .a(2'b00),
    .b(\U1/Count_LED [10:9]),
    .fci(\U1/lt2_c9 ),
    .fco(\U1/lt2_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_12|U1/lt2_11  (
    .a(2'b00),
    .b(\U1/Count_LED [12:11]),
    .fci(\U1/lt2_c11 ),
    .fco(\U1/lt2_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_14|U1/lt2_13  (
    .a(2'b00),
    .b(\U1/Count_LED [14:13]),
    .fci(\U1/lt2_c13 ),
    .fco(\U1/lt2_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_16|U1/lt2_15  (
    .a(2'b00),
    .b(\U1/Count_LED [16:15]),
    .fci(\U1/lt2_c15 ),
    .fco(\U1/lt2_c17 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y4Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_18|U1/lt2_17  (
    .a(2'b00),
    .b(\U1/Count_LED [18:17]),
    .fci(\U1/lt2_c17 ),
    .fco(\U1/lt2_c19 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y5Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_20|U1/lt2_19  (
    .a(2'b01),
    .b(\U1/Count_LED [20:19]),
    .fci(\U1/lt2_c19 ),
    .fco(\U1/lt2_c21 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y5Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_22|U1/lt2_21  (
    .a(2'b11),
    .b(\U1/Count_LED [22:21]),
    .fci(\U1/lt2_c21 ),
    .fco(\U1/lt2_c23 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y6Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_24|U1/lt2_23  (
    .a(2'b11),
    .b(\U1/Count_LED [24:23]),
    .fci(\U1/lt2_c23 ),
    .fco(\U1/lt2_c25 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y6Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_26|U1/lt2_25  (
    .a(2'b01),
    .b(\U1/Count_LED [26:25]),
    .fci(\U1/lt2_c25 ),
    .fco(\U1/lt2_c27 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y7Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_28|U1/lt2_27  (
    .a(2'b00),
    .b(\U1/Count_LED [28:27]),
    .fci(\U1/lt2_c27 ),
    .fco(\U1/lt2_c29 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_2|U1/lt2_1  (
    .a(2'b00),
    .b(\U1/Count_LED [2:1]),
    .fci(\U1/lt2_c1 ),
    .fco(\U1/lt2_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y7Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_30|U1/lt2_29  (
    .a(2'b00),
    .b(\U1/Count_LED [30:29]),
    .fci(\U1/lt2_c29 ),
    .fco(\U1/lt2_c31 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_4|U1/lt2_3  (
    .a(2'b00),
    .b(\U1/Count_LED [4:3]),
    .fci(\U1/lt2_c3 ),
    .fco(\U1/lt2_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_6|U1/lt2_5  (
    .a(2'b00),
    .b(\U1/Count_LED [6:5]),
    .fci(\U1/lt2_c5 ),
    .fco(\U1/lt2_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_8|U1/lt2_7  (
    .a(2'b00),
    .b(\U1/Count_LED [8:7]),
    .fci(\U1/lt2_c7 ),
    .fco(\U1/lt2_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt2_0|U1/lt2_cin"),
    //.R_POSITION("X0Y8Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt2_cout|U1/lt2_31  (
    .a(2'b00),
    .b({1'b1,\U1/Count_LED [31]}),
    .fci(\U1/lt2_c31 ),
    .f({\U1/n5 ,open_n4186}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_0|U1/lt3_cin  (
    .a({\U1/Count_LED [0],1'b1}),
    .b({1'b0,open_n4192}),
    .fco(\U1/lt3_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_10|U1/lt3_9  (
    .a(\U1/Count_LED [10:9]),
    .b(2'b00),
    .fci(\U1/lt3_c9 ),
    .fco(\U1/lt3_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_12|U1/lt3_11  (
    .a(\U1/Count_LED [12:11]),
    .b(2'b00),
    .fci(\U1/lt3_c11 ),
    .fco(\U1/lt3_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_14|U1/lt3_13  (
    .a(\U1/Count_LED [14:13]),
    .b(2'b00),
    .fci(\U1/lt3_c13 ),
    .fco(\U1/lt3_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_16|U1/lt3_15  (
    .a(\U1/Count_LED [16:15]),
    .b(2'b00),
    .fci(\U1/lt3_c15 ),
    .fco(\U1/lt3_c17 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y4Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_18|U1/lt3_17  (
    .a(\U1/Count_LED [18:17]),
    .b(2'b00),
    .fci(\U1/lt3_c17 ),
    .fco(\U1/lt3_c19 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y5Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_20|U1/lt3_19  (
    .a(\U1/Count_LED [20:19]),
    .b(2'b10),
    .fci(\U1/lt3_c19 ),
    .fco(\U1/lt3_c21 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y5Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_22|U1/lt3_21  (
    .a(\U1/Count_LED [22:21]),
    .b(2'b10),
    .fci(\U1/lt3_c21 ),
    .fco(\U1/lt3_c23 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y6Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_24|U1/lt3_23  (
    .a(\U1/Count_LED [24:23]),
    .b(2'b11),
    .fci(\U1/lt3_c23 ),
    .fco(\U1/lt3_c25 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y6Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_26|U1/lt3_25  (
    .a(\U1/Count_LED [26:25]),
    .b(2'b11),
    .fci(\U1/lt3_c25 ),
    .fco(\U1/lt3_c27 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y7Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_28|U1/lt3_27  (
    .a(\U1/Count_LED [28:27]),
    .b(2'b00),
    .fci(\U1/lt3_c27 ),
    .fco(\U1/lt3_c29 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_2|U1/lt3_1  (
    .a(\U1/Count_LED [2:1]),
    .b(2'b00),
    .fci(\U1/lt3_c1 ),
    .fco(\U1/lt3_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y7Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_30|U1/lt3_29  (
    .a(\U1/Count_LED [30:29]),
    .b(2'b00),
    .fci(\U1/lt3_c29 ),
    .fco(\U1/lt3_c31 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_4|U1/lt3_3  (
    .a(\U1/Count_LED [4:3]),
    .b(2'b00),
    .fci(\U1/lt3_c3 ),
    .fco(\U1/lt3_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_6|U1/lt3_5  (
    .a(\U1/Count_LED [6:5]),
    .b(2'b00),
    .fci(\U1/lt3_c5 ),
    .fco(\U1/lt3_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_8|U1/lt3_7  (
    .a(\U1/Count_LED [8:7]),
    .b(2'b00),
    .fci(\U1/lt3_c7 ),
    .fco(\U1/lt3_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt3_0|U1/lt3_cin"),
    //.R_POSITION("X0Y8Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt3_cout|U1/lt3_31  (
    .a({1'b0,\U1/Count_LED [31]}),
    .b(2'b10),
    .fci(\U1/lt3_c31 ),
    .f({\U1/n6 ,open_n4596}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_0|U1/lt4_cin  (
    .a(2'b01),
    .b({\U1/Count_LED [0],open_n4602}),
    .fco(\U1/lt4_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_10|U1/lt4_9  (
    .a(2'b00),
    .b(\U1/Count_LED [10:9]),
    .fci(\U1/lt4_c9 ),
    .fco(\U1/lt4_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_12|U1/lt4_11  (
    .a(2'b00),
    .b(\U1/Count_LED [12:11]),
    .fci(\U1/lt4_c11 ),
    .fco(\U1/lt4_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_14|U1/lt4_13  (
    .a(2'b00),
    .b(\U1/Count_LED [14:13]),
    .fci(\U1/lt4_c13 ),
    .fco(\U1/lt4_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_16|U1/lt4_15  (
    .a(2'b00),
    .b(\U1/Count_LED [16:15]),
    .fci(\U1/lt4_c15 ),
    .fco(\U1/lt4_c17 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y4Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_18|U1/lt4_17  (
    .a(2'b00),
    .b(\U1/Count_LED [18:17]),
    .fci(\U1/lt4_c17 ),
    .fco(\U1/lt4_c19 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y5Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_20|U1/lt4_19  (
    .a(2'b01),
    .b(\U1/Count_LED [20:19]),
    .fci(\U1/lt4_c19 ),
    .fco(\U1/lt4_c21 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y5Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_22|U1/lt4_21  (
    .a(2'b11),
    .b(\U1/Count_LED [22:21]),
    .fci(\U1/lt4_c21 ),
    .fco(\U1/lt4_c23 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y6Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_24|U1/lt4_23  (
    .a(2'b11),
    .b(\U1/Count_LED [24:23]),
    .fci(\U1/lt4_c23 ),
    .fco(\U1/lt4_c25 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y6Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_26|U1/lt4_25  (
    .a(2'b01),
    .b(\U1/Count_LED [26:25]),
    .fci(\U1/lt4_c25 ),
    .fco(\U1/lt4_c27 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y7Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_28|U1/lt4_27  (
    .a(2'b00),
    .b(\U1/Count_LED [28:27]),
    .fci(\U1/lt4_c27 ),
    .fco(\U1/lt4_c29 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_2|U1/lt4_1  (
    .a(2'b00),
    .b(\U1/Count_LED [2:1]),
    .fci(\U1/lt4_c1 ),
    .fco(\U1/lt4_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y7Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_30|U1/lt4_29  (
    .a(2'b00),
    .b(\U1/Count_LED [30:29]),
    .fci(\U1/lt4_c29 ),
    .fco(\U1/lt4_c31 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_4|U1/lt4_3  (
    .a(2'b00),
    .b(\U1/Count_LED [4:3]),
    .fci(\U1/lt4_c3 ),
    .fco(\U1/lt4_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_6|U1/lt4_5  (
    .a(2'b00),
    .b(\U1/Count_LED [6:5]),
    .fci(\U1/lt4_c5 ),
    .fco(\U1/lt4_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_8|U1/lt4_7  (
    .a(2'b00),
    .b(\U1/Count_LED [8:7]),
    .fci(\U1/lt4_c7 ),
    .fco(\U1/lt4_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt4_0|U1/lt4_cin"),
    //.R_POSITION("X0Y8Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt4_cout|U1/lt4_31  (
    .a(2'b00),
    .b({1'b1,\U1/Count_LED [31]}),
    .fci(\U1/lt4_c31 ),
    .f({\U1/n10 ,open_n5006}));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_0|U1/lt5_cin  (
    .a(2'b00),
    .b({\U1/Count_LED [0],open_n5012}),
    .fco(\U1/lt5_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_10|U1/lt5_9  (
    .a(2'b00),
    .b(\U1/Count_LED [10:9]),
    .fci(\U1/lt5_c9 ),
    .fco(\U1/lt5_c11 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_12|U1/lt5_11  (
    .a(2'b00),
    .b(\U1/Count_LED [12:11]),
    .fci(\U1/lt5_c11 ),
    .fco(\U1/lt5_c13 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_14|U1/lt5_13  (
    .a(2'b00),
    .b(\U1/Count_LED [14:13]),
    .fci(\U1/lt5_c13 ),
    .fco(\U1/lt5_c15 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_16|U1/lt5_15  (
    .a(2'b00),
    .b(\U1/Count_LED [16:15]),
    .fci(\U1/lt5_c15 ),
    .fco(\U1/lt5_c17 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y4Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_18|U1/lt5_17  (
    .a(2'b00),
    .b(\U1/Count_LED [18:17]),
    .fci(\U1/lt5_c17 ),
    .fco(\U1/lt5_c19 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y5Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_20|U1/lt5_19  (
    .a(2'b10),
    .b(\U1/Count_LED [20:19]),
    .fci(\U1/lt5_c19 ),
    .fco(\U1/lt5_c21 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y5Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_22|U1/lt5_21  (
    .a(2'b10),
    .b(\U1/Count_LED [22:21]),
    .fci(\U1/lt5_c21 ),
    .fco(\U1/lt5_c23 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y6Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_24|U1/lt5_23  (
    .a(2'b11),
    .b(\U1/Count_LED [24:23]),
    .fci(\U1/lt5_c23 ),
    .fco(\U1/lt5_c25 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y6Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_26|U1/lt5_25  (
    .a(2'b11),
    .b(\U1/Count_LED [26:25]),
    .fci(\U1/lt5_c25 ),
    .fco(\U1/lt5_c27 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y7Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_28|U1/lt5_27  (
    .a(2'b00),
    .b(\U1/Count_LED [28:27]),
    .fci(\U1/lt5_c27 ),
    .fco(\U1/lt5_c29 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_2|U1/lt5_1  (
    .a(2'b00),
    .b(\U1/Count_LED [2:1]),
    .fci(\U1/lt5_c1 ),
    .fco(\U1/lt5_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y7Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_30|U1/lt5_29  (
    .a(2'b00),
    .b(\U1/Count_LED [30:29]),
    .fci(\U1/lt5_c29 ),
    .fco(\U1/lt5_c31 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_4|U1/lt5_3  (
    .a(2'b00),
    .b(\U1/Count_LED [4:3]),
    .fci(\U1/lt5_c3 ),
    .fco(\U1/lt5_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_6|U1/lt5_5  (
    .a(2'b00),
    .b(\U1/Count_LED [6:5]),
    .fci(\U1/lt5_c5 ),
    .fco(\U1/lt5_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_8|U1/lt5_7  (
    .a(2'b00),
    .b(\U1/Count_LED [8:7]),
    .fci(\U1/lt5_c7 ),
    .fco(\U1/lt5_c9 ));
  EG_PHY_MSLICE #(
    //.MACRO("U1/lt5_0|U1/lt5_cin"),
    //.R_POSITION("X0Y8Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U1/lt5_cout|U1/lt5_31  (
    .a(2'b00),
    .b({1'b1,\U1/Count_LED [31]}),
    .fci(\U1/lt5_c31 ),
    .f({\U1/n13 ,open_n5416}));
  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b0|U1/reg0_b9  (
    .c({\U1/n1 ,\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n2 [0],\U1/n2 [9]}),
    .sr(nRST_pad),
    .q({\U1/Count_LED [0],\U1/Count_LED [9]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b10|U1/reg0_b8  (
    .c({\U1/n1 ,\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n2 [10],\U1/n2 [8]}),
    .sr(nRST_pad),
    .q({\U1/Count_LED [10],\U1/Count_LED [8]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b11|U1/reg0_b7  (
    .c({\U1/n1 ,\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n2 [11],\U1/n2 [7]}),
    .sr(nRST_pad),
    .q({\U1/Count_LED [11],\U1/Count_LED [7]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b12|U1/reg0_b6  (
    .c({\U1/n1 ,\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n2 [12],\U1/n2 [6]}),
    .sr(nRST_pad),
    .q({\U1/Count_LED [12],\U1/Count_LED [6]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b13|U1/reg0_b5  (
    .c({\U1/n1 ,\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n2 [13],\U1/n2 [5]}),
    .sr(nRST_pad),
    .q({\U1/Count_LED [13],\U1/Count_LED [5]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b14|U1/reg0_b4  (
    .c({\U1/n1 ,\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n2 [14],\U1/n2 [4]}),
    .sr(nRST_pad),
    .q({\U1/Count_LED [14],\U1/Count_LED [4]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b15|U1/reg0_b3  (
    .c({\U1/n1 ,\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n2 [15],\U1/n2 [3]}),
    .sr(nRST_pad),
    .q({\U1/Count_LED [15],\U1/Count_LED [3]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_b1|U1/reg0_b2  (
    .c({\U1/n1 ,\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n2 [1],\U1/n2 [2]}),
    .sr(nRST_pad),
    .q({\U1/Count_LED [1],\U1/Count_LED [2]}));  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub0/ucin_al_u283"),
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
    \U1/sub0/u11_al_u286  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [13],\U1/Count_LED [11]}),
    .e({\U1/Count_LED [14],\U1/Count_LED [12]}),
    .fci(\U1/sub0/c11 ),
    .fco(\U1/sub0/c15 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub0/ucin_al_u283"),
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
    \U1/sub0/u15_al_u287  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [17],\U1/Count_LED [15]}),
    .e({\U1/Count_LED [18],\U1/Count_LED [16]}),
    .fci(\U1/sub0/c15 ),
    .f({\U1/n8 [17],open_n5668}),
    .fco(\U1/sub0/c19 ),
    .fx({\U1/n8 [18],\U1/n8 [16]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub0/ucin_al_u283"),
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
    \U1/sub0/u19_al_u288  (
    .a(2'b00),
    .b(2'b11),
    .c(2'b11),
    .d({\U1/Count_LED [21],\U1/Count_LED [19]}),
    .e({\U1/Count_LED [22],\U1/Count_LED [20]}),
    .fci(\U1/sub0/c19 ),
    .f({\U1/n8 [21],\U1/n8 [19]}),
    .fco(\U1/sub0/c23 ),
    .fx({\U1/n8 [22],\U1/n8 [20]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub0/ucin_al_u283"),
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
    \U1/sub0/u23_al_u289  (
    .a(2'b11),
    .b(2'b11),
    .c(2'b11),
    .d({\U1/Count_LED [25],\U1/Count_LED [23]}),
    .e({\U1/Count_LED [26],\U1/Count_LED [24]}),
    .fci(\U1/sub0/c23 ),
    .f({\U1/n8 [25],\U1/n8 [23]}),
    .fco(\U1/sub0/c27 ),
    .fx({\U1/n8 [26],\U1/n8 [24]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub0/ucin_al_u283"),
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
    \U1/sub0/u27_al_u290  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [29],\U1/Count_LED [27]}),
    .e({\U1/Count_LED [30],\U1/Count_LED [28]}),
    .fci(\U1/sub0/c27 ),
    .f({\U1/n8 [29],\U1/n8 [27]}),
    .fco(\U1/sub0/c31 ),
    .fx({\U1/n8 [30],\U1/n8 [28]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub0/ucin_al_u283"),
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
    \U1/sub0/u31_al_u291  (
    .a({open_n5725,1'b0}),
    .c(2'b11),
    .d({open_n5730,\U1/Count_LED [31]}),
    .fci(\U1/sub0/c31 ),
    .f({open_n5747,\U1/n8 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub0/ucin_al_u283"),
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
    \U1/sub0/u3_al_u284  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [5],\U1/Count_LED [3]}),
    .e({\U1/Count_LED [6],\U1/Count_LED [4]}),
    .fci(\U1/sub0/c3 ),
    .fco(\U1/sub0/c7 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub0/ucin_al_u283"),
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
    \U1/sub0/u7_al_u285  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [9],\U1/Count_LED [7]}),
    .e({\U1/Count_LED [10],\U1/Count_LED [8]}),
    .fci(\U1/sub0/c7 ),
    .fco(\U1/sub0/c11 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub0/ucin_al_u283"),
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
    \U1/sub0/ucin_al_u283  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [1],1'b1}),
    .e({\U1/Count_LED [2],\U1/Count_LED [0]}),
    .fco(\U1/sub0/c3 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub1/ucin_al_u292"),
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
    \U1/sub1/u11_al_u295  (
    .a({\U1/Count_LED [13],\U1/Count_LED [11]}),
    .b({\U1/Count_LED [14],\U1/Count_LED [12]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/sub1/c11 ),
    .fco(\U1/sub1/c15 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub1/ucin_al_u292"),
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
    \U1/sub1/u15_al_u296  (
    .a({\U1/Count_LED [17],\U1/Count_LED [15]}),
    .b({\U1/Count_LED [18],\U1/Count_LED [16]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/sub1/c15 ),
    .f({\U1/n12 [17],open_n5858}),
    .fco(\U1/sub1/c19 ),
    .fx({\U1/n12 [18],\U1/n12 [16]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub1/ucin_al_u292"),
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
    \U1/sub1/u19_al_u297  (
    .a({\U1/Count_LED [21],\U1/Count_LED [19]}),
    .b({\U1/Count_LED [22],\U1/Count_LED [20]}),
    .c(2'b11),
    .d(2'b11),
    .e(2'b10),
    .fci(\U1/sub1/c19 ),
    .f({\U1/n12 [21],\U1/n12 [19]}),
    .fco(\U1/sub1/c23 ),
    .fx({\U1/n12 [22],\U1/n12 [20]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub1/ucin_al_u292"),
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
    \U1/sub1/u23_al_u298  (
    .a({\U1/Count_LED [25],\U1/Count_LED [23]}),
    .b({\U1/Count_LED [26],\U1/Count_LED [24]}),
    .c(2'b11),
    .d(2'b11),
    .e(2'b01),
    .fci(\U1/sub1/c23 ),
    .f({\U1/n12 [25],\U1/n12 [23]}),
    .fco(\U1/sub1/c27 ),
    .fx({\U1/n12 [26],\U1/n12 [24]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub1/ucin_al_u292"),
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
    \U1/sub1/u27_al_u299  (
    .a({\U1/Count_LED [29],\U1/Count_LED [27]}),
    .b({\U1/Count_LED [30],\U1/Count_LED [28]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/sub1/c27 ),
    .f({\U1/n12 [29],\U1/n12 [27]}),
    .fco(\U1/sub1/c31 ),
    .fx({\U1/n12 [30],\U1/n12 [28]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub1/ucin_al_u292"),
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
    \U1/sub1/u31_al_u300  (
    .a({open_n5915,\U1/Count_LED [31]}),
    .c(2'b11),
    .d({open_n5920,1'b0}),
    .fci(\U1/sub1/c31 ),
    .f({open_n5937,\U1/n12 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub1/ucin_al_u292"),
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
    \U1/sub1/u3_al_u293  (
    .a({\U1/Count_LED [5],\U1/Count_LED [3]}),
    .b({\U1/Count_LED [6],\U1/Count_LED [4]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/sub1/c3 ),
    .fco(\U1/sub1/c7 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub1/ucin_al_u292"),
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
    \U1/sub1/u7_al_u294  (
    .a({\U1/Count_LED [9],\U1/Count_LED [7]}),
    .b({\U1/Count_LED [10],\U1/Count_LED [8]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/sub1/c7 ),
    .fco(\U1/sub1/c11 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub1/ucin_al_u292"),
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
    \U1/sub1/ucin_al_u292  (
    .a({\U1/Count_LED [1],1'b0}),
    .b({\U1/Count_LED [2],\U1/Count_LED [0]}),
    .c(2'b11),
    .d(2'b01),
    .e(2'b00),
    .fco(\U1/sub1/c3 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub2/ucin_al_u301"),
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
    \U1/sub2/u11_al_u304  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [13],\U1/Count_LED [11]}),
    .e({\U1/Count_LED [14],\U1/Count_LED [12]}),
    .fci(\U1/sub2/c11 ),
    .fco(\U1/sub2/c15 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub2/ucin_al_u301"),
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
    \U1/sub2/u15_al_u305  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [17],\U1/Count_LED [15]}),
    .e({\U1/Count_LED [18],\U1/Count_LED [16]}),
    .fci(\U1/sub2/c15 ),
    .f({\U1/n14 [17],open_n6048}),
    .fco(\U1/sub2/c19 ),
    .fx({\U1/n14 [18],\U1/n14 [16]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub2/ucin_al_u301"),
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
    \U1/sub2/u19_al_u306  (
    .a(2'b11),
    .b(2'b01),
    .c(2'b11),
    .d({\U1/Count_LED [21],\U1/Count_LED [19]}),
    .e({\U1/Count_LED [22],\U1/Count_LED [20]}),
    .fci(\U1/sub2/c19 ),
    .f({\U1/n14 [21],\U1/n14 [19]}),
    .fco(\U1/sub2/c23 ),
    .fx({\U1/n14 [22],\U1/n14 [20]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub2/ucin_al_u301"),
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
    \U1/sub2/u23_al_u307  (
    .a(2'b11),
    .b(2'b01),
    .c(2'b11),
    .d({\U1/Count_LED [25],\U1/Count_LED [23]}),
    .e({\U1/Count_LED [26],\U1/Count_LED [24]}),
    .fci(\U1/sub2/c23 ),
    .f({\U1/n14 [25],\U1/n14 [23]}),
    .fco(\U1/sub2/c27 ),
    .fx({\U1/n14 [26],\U1/n14 [24]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub2/ucin_al_u301"),
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
    \U1/sub2/u27_al_u308  (
    .a(2'b01),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [29],\U1/Count_LED [27]}),
    .e({\U1/Count_LED [30],\U1/Count_LED [28]}),
    .fci(\U1/sub2/c27 ),
    .f({\U1/n14 [29],\U1/n14 [27]}),
    .fco(\U1/sub2/c31 ),
    .fx({\U1/n14 [30],\U1/n14 [28]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub2/ucin_al_u301"),
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
    \U1/sub2/u31_al_u309  (
    .a({open_n6105,1'b0}),
    .c(2'b11),
    .d({open_n6110,\U1/Count_LED [31]}),
    .fci(\U1/sub2/c31 ),
    .f({open_n6127,\U1/n14 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub2/ucin_al_u301"),
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
    \U1/sub2/u3_al_u302  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [5],\U1/Count_LED [3]}),
    .e({\U1/Count_LED [6],\U1/Count_LED [4]}),
    .fci(\U1/sub2/c3 ),
    .fco(\U1/sub2/c7 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub2/ucin_al_u301"),
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
    \U1/sub2/u7_al_u303  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [9],\U1/Count_LED [7]}),
    .e({\U1/Count_LED [10],\U1/Count_LED [8]}),
    .fci(\U1/sub2/c7 ),
    .fco(\U1/sub2/c11 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub2/ucin_al_u301"),
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
    \U1/sub2/ucin_al_u301  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [1],1'b1}),
    .e({\U1/Count_LED [2],\U1/Count_LED [0]}),
    .fco(\U1/sub2/c3 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub3/ucin_al_u310"),
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
    \U1/sub3/u11_al_u313  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [13],\U1/Count_LED [11]}),
    .e({\U1/Count_LED [14],\U1/Count_LED [12]}),
    .fci(\U1/sub3/c11 ),
    .fco(\U1/sub3/c15 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub3/ucin_al_u310"),
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
    \U1/sub3/u15_al_u314  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [17],\U1/Count_LED [15]}),
    .e({\U1/Count_LED [18],\U1/Count_LED [16]}),
    .fci(\U1/sub3/c15 ),
    .f({\U1/n16 [17],open_n6238}),
    .fco(\U1/sub3/c19 ),
    .fx({\U1/n16 [18],\U1/n16 [16]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub3/ucin_al_u310"),
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
    \U1/sub3/u19_al_u315  (
    .a(2'b11),
    .b(2'b10),
    .c(2'b11),
    .d({\U1/Count_LED [21],\U1/Count_LED [19]}),
    .e({\U1/Count_LED [22],\U1/Count_LED [20]}),
    .fci(\U1/sub3/c19 ),
    .f({\U1/n16 [21],\U1/n16 [19]}),
    .fco(\U1/sub3/c23 ),
    .fx({\U1/n16 [22],\U1/n16 [20]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub3/ucin_al_u310"),
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
    \U1/sub3/u23_al_u316  (
    .a(2'b11),
    .b(2'b01),
    .c(2'b11),
    .d({\U1/Count_LED [25],\U1/Count_LED [23]}),
    .e({\U1/Count_LED [26],\U1/Count_LED [24]}),
    .fci(\U1/sub3/c23 ),
    .f({\U1/n16 [25],\U1/n16 [23]}),
    .fco(\U1/sub3/c27 ),
    .fx({\U1/n16 [26],\U1/n16 [24]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub3/ucin_al_u310"),
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
    \U1/sub3/u27_al_u317  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [29],\U1/Count_LED [27]}),
    .e({\U1/Count_LED [30],\U1/Count_LED [28]}),
    .fci(\U1/sub3/c27 ),
    .f({\U1/n16 [29],\U1/n16 [27]}),
    .fco(\U1/sub3/c31 ),
    .fx({\U1/n16 [30],\U1/n16 [28]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub3/ucin_al_u310"),
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
    \U1/sub3/u31_al_u318  (
    .a({open_n6295,1'b0}),
    .c(2'b11),
    .d({open_n6300,\U1/Count_LED [31]}),
    .fci(\U1/sub3/c31 ),
    .f({open_n6317,\U1/n16 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub3/ucin_al_u310"),
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
    \U1/sub3/u3_al_u311  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [5],\U1/Count_LED [3]}),
    .e({\U1/Count_LED [6],\U1/Count_LED [4]}),
    .fci(\U1/sub3/c3 ),
    .fco(\U1/sub3/c7 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub3/ucin_al_u310"),
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
    \U1/sub3/u7_al_u312  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [9],\U1/Count_LED [7]}),
    .e({\U1/Count_LED [10],\U1/Count_LED [8]}),
    .fci(\U1/sub3/c7 ),
    .fco(\U1/sub3/c11 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub3/ucin_al_u310"),
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
    \U1/sub3/ucin_al_u310  (
    .a(2'b00),
    .b(2'b00),
    .c(2'b11),
    .d({\U1/Count_LED [1],1'b1}),
    .e({\U1/Count_LED [2],\U1/Count_LED [0]}),
    .fco(\U1/sub3/c3 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub4/ucin_al_u319"),
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
    \U1/sub4/u11_al_u322  (
    .a({\U1/Count_LED [13],\U1/Count_LED [11]}),
    .b({\U1/Count_LED [14],\U1/Count_LED [12]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/sub4/c11 ),
    .fco(\U1/sub4/c15 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub4/ucin_al_u319"),
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
    \U1/sub4/u15_al_u323  (
    .a({\U1/Count_LED [17],\U1/Count_LED [15]}),
    .b({\U1/Count_LED [18],\U1/Count_LED [16]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/sub4/c15 ),
    .f({\U1/n17 [17],open_n6428}),
    .fco(\U1/sub4/c19 ),
    .fx({\U1/n17 [18],\U1/n17 [16]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub4/ucin_al_u319"),
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
    \U1/sub4/u19_al_u324  (
    .a({\U1/Count_LED [21],\U1/Count_LED [19]}),
    .b({\U1/Count_LED [22],\U1/Count_LED [20]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b11),
    .fci(\U1/sub4/c19 ),
    .f({\U1/n17 [21],\U1/n17 [19]}),
    .fco(\U1/sub4/c23 ),
    .fx({\U1/n17 [22],\U1/n17 [20]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub4/ucin_al_u319"),
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
    \U1/sub4/u23_al_u325  (
    .a({\U1/Count_LED [25],\U1/Count_LED [23]}),
    .b({\U1/Count_LED [26],\U1/Count_LED [24]}),
    .c(2'b11),
    .d(2'b11),
    .e(2'b11),
    .fci(\U1/sub4/c23 ),
    .f({\U1/n17 [25],\U1/n17 [23]}),
    .fco(\U1/sub4/c27 ),
    .fx({\U1/n17 [26],\U1/n17 [24]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub4/ucin_al_u319"),
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
    \U1/sub4/u27_al_u326  (
    .a({\U1/Count_LED [29],\U1/Count_LED [27]}),
    .b({\U1/Count_LED [30],\U1/Count_LED [28]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/sub4/c27 ),
    .f({\U1/n17 [29],\U1/n17 [27]}),
    .fco(\U1/sub4/c31 ),
    .fx({\U1/n17 [30],\U1/n17 [28]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub4/ucin_al_u319"),
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
    \U1/sub4/u31_al_u327  (
    .a({open_n6485,\U1/Count_LED [31]}),
    .c(2'b11),
    .d({open_n6490,1'b0}),
    .fci(\U1/sub4/c31 ),
    .f({open_n6507,\U1/n17 [31]}));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub4/ucin_al_u319"),
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
    \U1/sub4/u3_al_u320  (
    .a({\U1/Count_LED [5],\U1/Count_LED [3]}),
    .b({\U1/Count_LED [6],\U1/Count_LED [4]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/sub4/c3 ),
    .fco(\U1/sub4/c7 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub4/ucin_al_u319"),
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
    \U1/sub4/u7_al_u321  (
    .a({\U1/Count_LED [9],\U1/Count_LED [7]}),
    .b({\U1/Count_LED [10],\U1/Count_LED [8]}),
    .c(2'b11),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/sub4/c7 ),
    .fco(\U1/sub4/c11 ));
  EG_PHY_LSLICE #(
    //.MACRO("U1/sub4/ucin_al_u319"),
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
    \U1/sub4/ucin_al_u319  (
    .a({\U1/Count_LED [1],1'b0}),
    .b({\U1/Count_LED [2],\U1/Count_LED [0]}),
    .c(2'b11),
    .d(2'b01),
    .e(2'b00),
    .fco(\U1/sub4/c3 ));
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u343"),
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
    \U2/add0/u3_al_u344  (
    .a({\U2/Count [5],\U2/Count [3]}),
    .b({\U2/Count [6],\U2/Count [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U2/add0/c3 ),
    .f({\U2/n16 [5],\U2/n16 [3]}),
    .fco(\U2/add0/c7 ),
    .fx({\U2/n16 [6],\U2/n16 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u343"),
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
    \U2/add0/u7_al_u345  (
    .a({open_n6598,\U2/Count [7]}),
    .c(2'b00),
    .d({open_n6603,1'b0}),
    .fci(\U2/add0/c7 ),
    .f({open_n6620,\U2/n16 [7]}));
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0/ucin_al_u343"),
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
    \U2/add0/ucin_al_u343  (
    .a({\U2/Count [1],1'b0}),
    .b({\U2/Count [2],\U2/Count [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U2/n16 [1],open_n6643}),
    .fco(\U2/add0/c3 ),
    .fx({\U2/n16 [2],\U2/n16 [0]}));
  EG_PHY_MSLICE #(
    //.MACRO("U2/lt0_0|U2/lt0_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U2/lt0_0|U2/lt0_cin  (
    .a({\U2/Count [0],1'b0}),
    .b({1'b1,open_n6646}),
    .fco(\U2/lt0_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U2/lt0_0|U2/lt0_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U2/lt0_2|U2/lt0_1  (
    .a(\U2/Count [2:1]),
    .b(2'b11),
    .fci(\U2/lt0_c1 ),
    .fco(\U2/lt0_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U2/lt0_0|U2/lt0_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U2/lt0_4|U2/lt0_3  (
    .a(\U2/Count [4:3]),
    .b(2'b00),
    .fci(\U2/lt0_c3 ),
    .fco(\U2/lt0_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U2/lt0_0|U2/lt0_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U2/lt0_6|U2/lt0_5  (
    .a(\U2/Count [6:5]),
    .b(2'b00),
    .fci(\U2/lt0_c5 ),
    .fco(\U2/lt0_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U2/lt0_0|U2/lt0_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U2/lt0_cout|U2/lt0_7  (
    .a({1'b0,\U2/Count [7]}),
    .b(2'b10),
    .fci(\U2/lt0_c7 ),
    .f({\U2/n15 ,open_n6762}));
  EG_PHY_MSLICE #(
    //.LUT0("(~D)"),
    //.LUT1("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011111111),
    .INIT_LUT1(16'b1100110011110000),
    .MODE("LOGIC"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U2/reg1_b0|_al_u263  (
    .b({_al_u179_o,open_n6770}),
    .c({\U2/SendBuff [0],open_n6771}),
    .ce(\C1/n0 ),
    .clk(UART_CLK),
    .d({_al_u178_o,nRST_pad}),
    .f({open_n6785,\C1/n0 }),
    .q({\U2/SendBuff [0],open_n6789}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_LSLICE #(
    //.LUTF0("~(~(C*B)*~(D*~A))"),
    //.LUTF1("~(~(C*B)*~(D*~A))"),
    //.LUTG0("~(~(C*B)*~(D*~A))"),
    //.LUTG1("~(~(C*B)*~(D*~A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1101010111000000),
    .INIT_LUTF1(16'b1101010111000000),
    .INIT_LUTG0(16'b1101010111000000),
    .INIT_LUTG1(16'b1101010111000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg2_b0|U2/reg2_b7  (
    .a({_al_u196_o,_al_u196_o}),
    .b({_al_u197_o,_al_u197_o}),
    .c({\U2/n16 [0],\U2/n16 [7]}),
    .clk(UART_CLK),
    .d({\U2/Count [0],\U2/Count [7]}),
    .sr(nRST_pad),
    .q({\U2/Count [0],\U2/Count [7]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_LSLICE #(
    //.LUTF0("~(~(C*B)*~(D*~A))"),
    //.LUTF1("~(~(C*B)*~(D*~A))"),
    //.LUTG0("~(~(C*B)*~(D*~A))"),
    //.LUTG1("~(~(C*B)*~(D*~A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1101010111000000),
    .INIT_LUTF1(16'b1101010111000000),
    .INIT_LUTG0(16'b1101010111000000),
    .INIT_LUTG1(16'b1101010111000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg2_b1|U2/reg2_b6  (
    .a({_al_u196_o,_al_u196_o}),
    .b({_al_u197_o,_al_u197_o}),
    .c({\U2/n16 [1],\U2/n16 [6]}),
    .clk(UART_CLK),
    .d({\U2/Count [1],\U2/Count [6]}),
    .sr(nRST_pad),
    .q({\U2/Count [1],\U2/Count [6]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_LSLICE #(
    //.LUTF0("~(~(C*B)*~(D*~A))"),
    //.LUTF1("~(~(C*B)*~(D*~A))"),
    //.LUTG0("~(~(C*B)*~(D*~A))"),
    //.LUTG1("~(~(C*B)*~(D*~A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1101010111000000),
    .INIT_LUTF1(16'b1101010111000000),
    .INIT_LUTG0(16'b1101010111000000),
    .INIT_LUTG1(16'b1101010111000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg2_b2|U2/reg2_b5  (
    .a({_al_u196_o,_al_u196_o}),
    .b({_al_u197_o,_al_u197_o}),
    .c({\U2/n16 [2],\U2/n16 [5]}),
    .clk(UART_CLK),
    .d({\U2/Count [2],\U2/Count [5]}),
    .sr(nRST_pad),
    .q({\U2/Count [2],\U2/Count [5]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_LSLICE #(
    //.LUTF0("~(~(C*B)*~(D*~A))"),
    //.LUTF1("~(~(C*B)*~(D*~A))"),
    //.LUTG0("~(~(C*B)*~(D*~A))"),
    //.LUTG1("~(~(C*B)*~(D*~A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1101010111000000),
    .INIT_LUTF1(16'b1101010111000000),
    .INIT_LUTG0(16'b1101010111000000),
    .INIT_LUTG1(16'b1101010111000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg2_b3|U2/reg2_b4  (
    .a({_al_u196_o,_al_u196_o}),
    .b({_al_u197_o,_al_u197_o}),
    .c({\U2/n16 [3],\U2/n16 [4]}),
    .clk(UART_CLK),
    .d({\U2/Count [3],\U2/Count [4]}),
    .sr(nRST_pad),
    .q({\U2/Count [3],\U2/Count [4]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  // address_offset=0;data_offset=0;depth=64;width=8;num_section=1;width_per_section=8;section_size=8;working_depth=1024;working_width=9;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.RID("0x0004"),
    //.WID("0x0004"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("1"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("9"),
    .DATA_WIDTH_B("9"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000009000800080706050403020101),
    .INIT_01(256'h1110000000000000000000000000000000000000000000000000000000000000),
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
    \U3/ROM1/inst_64x8_sub_000000_000  (
    .addra({4'b0000,\U3/Addr [5:0],3'b111}),
    .clka(CLK_50M),
    .dia({open_n6900,8'b00000000}),
    .rsta(nRST_pad),
    .doa({open_n6915,FIFO_DI}));
  EG_PHY_LSLICE #(
    //.MACRO("U3/add0/ucin_al_u346"),
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
    \U3/add0/u3_al_u347  (
    .a({\U3/Addr [5],\U3/Addr [3]}),
    .b({\U3/Addr [6],\U3/Addr [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U3/add0/c3 ),
    .f({\U3/n2 [5],\U3/n2 [3]}),
    .fx({\U3/n2 [6],\U3/n2 [4]}));
  EG_PHY_LSLICE #(
    //.MACRO("U3/add0/ucin_al_u346"),
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
    \U3/add0/ucin_al_u346  (
    .a({\U3/Addr [1],1'b0}),
    .b({\U3/Addr [2],\U3/Addr [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U3/n2 [1],open_n6961}),
    .fco(\U3/add0/c3 ),
    .fx({\U3/n2 [2],\U3/n2 [0]}));
  EG_PHY_MSLICE #(
    //.MACRO("U3/lt0_0|U3/lt0_cin"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("A_LE_B_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U3/lt0_0|U3/lt0_cin  (
    .a(2'b01),
    .b({\U3/Addr [0],open_n6964}),
    .fco(\U3/lt0_c1 ));
  EG_PHY_MSLICE #(
    //.MACRO("U3/lt0_0|U3/lt0_cin"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U3/lt0_2|U3/lt0_1  (
    .a(2'b00),
    .b(\U3/Addr [2:1]),
    .fci(\U3/lt0_c1 ),
    .fco(\U3/lt0_c3 ));
  EG_PHY_MSLICE #(
    //.MACRO("U3/lt0_0|U3/lt0_cin"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U3/lt0_4|U3/lt0_3  (
    .a(2'b00),
    .b(\U3/Addr [4:3]),
    .fci(\U3/lt0_c3 ),
    .fco(\U3/lt0_c5 ));
  EG_PHY_MSLICE #(
    //.MACRO("U3/lt0_0|U3/lt0_cin"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U3/lt0_6|U3/lt0_5  (
    .a(2'b10),
    .b(\U3/Addr [6:5]),
    .fci(\U3/lt0_c5 ),
    .fco(\U3/lt0_c7 ));
  EG_PHY_MSLICE #(
    //.MACRO("U3/lt0_0|U3/lt0_cin"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("A_LE_B"),
    .INIT_LUT0(16'b1001100110011100),
    .INIT_LUT1(16'b1001100110011100),
    .MODE("RIPPLE"))
    \U3/lt0_cout_al_u348  (
    .a({open_n7062,1'b0}),
    .b({open_n7063,1'b1}),
    .fci(\U3/lt0_c7 ),
    .f({open_n7082,\U3/n1 }));
  // Source/UART_CTRL.v(24)
  // Source/UART_CTRL.v(24)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    //.LUTF1("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    //.LUTG0("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    //.LUTG1("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111000000100),
    .INIT_LUTF1(16'b0000111000000100),
    .INIT_LUTG0(16'b0000111000000100),
    .INIT_LUTG1(16'b0000111000000100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U3/reg0_b0|U3/reg0_b5  (
    .a({FIFO_FULL,FIFO_FULL}),
    .b({\U3/n2 [0],\U3/n2 [5]}),
    .c({\U3/n1 ,\U3/n1 }),
    .clk(CLK_50M),
    .d({\U3/Addr [0],\U3/Addr [5]}),
    .sr(nRST_pad),
    .q({\U3/Addr [0],\U3/Addr [5]}));  // Source/UART_CTRL.v(24)
  // Source/UART_CTRL.v(24)
  // Source/UART_CTRL.v(24)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    //.LUTF1("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    //.LUTG0("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    //.LUTG1("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111000000100),
    .INIT_LUTF1(16'b0000111000000100),
    .INIT_LUTG0(16'b0000111000000100),
    .INIT_LUTG1(16'b0000111000000100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U3/reg0_b1|U3/reg0_b4  (
    .a({FIFO_FULL,FIFO_FULL}),
    .b({\U3/n2 [1],\U3/n2 [4]}),
    .c({\U3/n1 ,\U3/n1 }),
    .clk(CLK_50M),
    .d({\U3/Addr [1],\U3/Addr [4]}),
    .sr(nRST_pad),
    .q({\U3/Addr [1],\U3/Addr [4]}));  // Source/UART_CTRL.v(24)
  // Source/UART_CTRL.v(24)
  // Source/UART_CTRL.v(24)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    //.LUTF1("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    //.LUTG0("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    //.LUTG1("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111000000100),
    .INIT_LUTF1(16'b0000111000000100),
    .INIT_LUTG0(16'b0000111000000100),
    .INIT_LUTG1(16'b0000111000000100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U3/reg0_b2|U3/reg0_b3  (
    .a({FIFO_FULL,FIFO_FULL}),
    .b({\U3/n2 [2],\U3/n2 [3]}),
    .c({\U3/n1 ,\U3/n1 }),
    .clk(CLK_50M),
    .d({\U3/Addr [2],\U3/Addr [3]}),
    .sr(nRST_pad),
    .q({\U3/Addr [2],\U3/Addr [3]}));  // Source/UART_CTRL.v(24)
  EG_PHY_MSLICE #(
    //.LUT0("(C*D)"),
    //.LUT1("(C*D)"),
    .INIT_LUT0(16'b1111000000000000),
    .INIT_LUT1(16'b1111000000000000),
    .MODE("LOGIC"))
    \_al_u106|_al_u146  (
    .c({\U1/n10 ,\U1/n6 }),
    .d({\U1/n6 ,\U1/n5 }),
    .f({\U1/n11 ,\U1/n7 }));
  EG_PHY_MSLICE #(
    //.LUT0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUT1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUT0(16'b1110010010100000),
    .INIT_LUT1(16'b1110010010100000),
    .MODE("LOGIC"))
    \_al_u107|_al_u122  (
    .a({\U1/n11 ,\U1/n11 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n12 [16],\U1/n12 [31]}),
    .d({\U1/n14 [16],\U1/n14 [31]}),
    .f({\U1/PWM_GData [16],\U1/PWM_GData [31]}));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u108|_al_u121  (
    .a({\U1/n11 ,\U1/n11 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n12 [17],\U1/n12 [30]}),
    .d({\U1/n14 [17],\U1/n14 [30]}),
    .f({\U1/PWM_GData [17],\U1/PWM_GData [30]}));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u109|_al_u120  (
    .a({\U1/n11 ,\U1/n11 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n12 [18],\U1/n12 [29]}),
    .d({\U1/n14 [18],\U1/n14 [29]}),
    .f({\U1/PWM_GData [18],\U1/PWM_GData [29]}));
  EG_PHY_MSLICE #(
    //.LUT0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUT1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUT0(16'b1110010010100000),
    .INIT_LUT1(16'b1110010010100000),
    .MODE("LOGIC"))
    \_al_u110|_al_u119  (
    .a({\U1/n11 ,\U1/n11 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n12 [19],\U1/n12 [28]}),
    .d({\U1/n14 [19],\U1/n14 [28]}),
    .f({\U1/PWM_GData [19],\U1/PWM_GData [28]}));
  EG_PHY_MSLICE #(
    //.LUT0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUT1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUT0(16'b1110010010100000),
    .INIT_LUT1(16'b1110010010100000),
    .MODE("LOGIC"))
    \_al_u111|_al_u118  (
    .a({\U1/n11 ,\U1/n11 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n12 [20],\U1/n12 [27]}),
    .d({\U1/n14 [20],\U1/n14 [27]}),
    .f({\U1/PWM_GData [20],\U1/PWM_GData [27]}));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u112|_al_u117  (
    .a({\U1/n11 ,\U1/n11 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n12 [21],\U1/n12 [26]}),
    .d({\U1/n14 [21],\U1/n14 [26]}),
    .f({\U1/PWM_GData [21],\U1/PWM_GData [26]}));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u113|_al_u116  (
    .a({\U1/n11 ,\U1/n11 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n12 [22],\U1/n12 [25]}),
    .d({\U1/n14 [22],\U1/n14 [25]}),
    .f({\U1/PWM_GData [22],\U1/PWM_GData [25]}));
  EG_PHY_MSLICE #(
    //.LUT0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUT1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUT0(16'b1110010010100000),
    .INIT_LUT1(16'b1110010010100000),
    .MODE("LOGIC"))
    \_al_u114|_al_u115  (
    .a({\U1/n11 ,\U1/n11 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n12 [23],\U1/n12 [24]}),
    .d({\U1/n14 [23],\U1/n14 [24]}),
    .f({\U1/PWM_GData [23],\U1/PWM_GData [24]}));
  EG_PHY_MSLICE #(
    //.LUT0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUT1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUT0(16'b1110010010100000),
    .INIT_LUT1(16'b1110010010100000),
    .MODE("LOGIC"))
    \_al_u123|_al_u138  (
    .a({\U1/n4 ,\U1/n4 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n16 [16],\U1/n16 [31]}),
    .d({\U1/n17 [16],\U1/n17 [31]}),
    .f({\U1/PWM_BData [16],\U1/PWM_BData [31]}));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u124|_al_u137  (
    .a({\U1/n4 ,\U1/n4 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n16 [17],\U1/n16 [30]}),
    .d({\U1/n17 [17],\U1/n17 [30]}),
    .f({\U1/PWM_BData [17],\U1/PWM_BData [30]}));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u125|_al_u136  (
    .a({\U1/n4 ,\U1/n4 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n16 [18],\U1/n16 [29]}),
    .d({\U1/n17 [18],\U1/n17 [29]}),
    .f({\U1/PWM_BData [18],\U1/PWM_BData [29]}));
  EG_PHY_MSLICE #(
    //.LUT0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUT1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUT0(16'b1110010010100000),
    .INIT_LUT1(16'b1110010010100000),
    .MODE("LOGIC"))
    \_al_u126|_al_u135  (
    .a({\U1/n4 ,\U1/n4 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n16 [19],\U1/n16 [28]}),
    .d({\U1/n17 [19],\U1/n17 [28]}),
    .f({\U1/PWM_BData [19],\U1/PWM_BData [28]}));
  EG_PHY_MSLICE #(
    //.LUT0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUT1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUT0(16'b1110010010100000),
    .INIT_LUT1(16'b1110010010100000),
    .MODE("LOGIC"))
    \_al_u127|_al_u134  (
    .a({\U1/n4 ,\U1/n4 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n16 [20],\U1/n16 [27]}),
    .d({\U1/n17 [20],\U1/n17 [27]}),
    .f({\U1/PWM_BData [20],\U1/PWM_BData [27]}));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u128|_al_u133  (
    .a({\U1/n4 ,\U1/n4 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n16 [21],\U1/n16 [26]}),
    .d({\U1/n17 [21],\U1/n17 [26]}),
    .f({\U1/PWM_BData [21],\U1/PWM_BData [26]}));
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTF1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUTG1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUTF0(16'b1110010010100000),
    .INIT_LUTF1(16'b1110010010100000),
    .INIT_LUTG0(16'b1110010010100000),
    .INIT_LUTG1(16'b1110010010100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u129|_al_u132  (
    .a({\U1/n4 ,\U1/n4 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n16 [22],\U1/n16 [25]}),
    .d({\U1/n17 [22],\U1/n17 [25]}),
    .f({\U1/PWM_BData [22],\U1/PWM_BData [25]}));
  EG_PHY_MSLICE #(
    //.LUT0("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    //.LUT1("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT_LUT0(16'b1110010010100000),
    .INIT_LUT1(16'b1110010010100000),
    .MODE("LOGIC"))
    \_al_u130|_al_u131  (
    .a({\U1/n4 ,\U1/n4 }),
    .b({\U1/n13 ,\U1/n13 }),
    .c({\U1/n16 [23],\U1/n16 [24]}),
    .d({\U1/n17 [23],\U1/n17 [24]}),
    .f({\U1/PWM_BData [23],\U1/PWM_BData [24]}));
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u147|U1/reg0_b31  (
    .a({\U1/n7 ,open_n7530}),
    .b({\U1/n4 ,open_n7531}),
    .c({\U1/Count_LED [31],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [31],\U1/n2 [31]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [31],open_n7549}),
    .q({open_n7553,\U1/Count_LED [31]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u148|U1/reg0_b30  (
    .a({\U1/n7 ,open_n7554}),
    .b({\U1/n4 ,open_n7555}),
    .c({\U1/Count_LED [30],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [30],\U1/n2 [30]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [30],open_n7573}),
    .q({open_n7577,\U1/Count_LED [30]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u149|U1/reg0_b29  (
    .a({\U1/n7 ,open_n7578}),
    .b({\U1/n4 ,open_n7579}),
    .c({\U1/Count_LED [29],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [29],\U1/n2 [29]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [29],open_n7597}),
    .q({open_n7601,\U1/Count_LED [29]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u150|U1/reg0_b28  (
    .a({\U1/n7 ,open_n7602}),
    .b({\U1/n4 ,open_n7603}),
    .c({\U1/Count_LED [28],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [28],\U1/n2 [28]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [28],open_n7621}),
    .q({open_n7625,\U1/Count_LED [28]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u151|U1/reg0_b27  (
    .a({\U1/n7 ,open_n7626}),
    .b({\U1/n4 ,open_n7627}),
    .c({\U1/Count_LED [27],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [27],\U1/n2 [27]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [27],open_n7645}),
    .q({open_n7649,\U1/Count_LED [27]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u152|U1/reg0_b26  (
    .a({\U1/n7 ,open_n7650}),
    .b({\U1/n4 ,open_n7651}),
    .c({\U1/Count_LED [26],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [26],\U1/n2 [26]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [26],open_n7669}),
    .q({open_n7673,\U1/Count_LED [26]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u153|U1/reg0_b25  (
    .a({\U1/n7 ,open_n7674}),
    .b({\U1/n4 ,open_n7675}),
    .c({\U1/Count_LED [25],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [25],\U1/n2 [25]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [25],open_n7693}),
    .q({open_n7697,\U1/Count_LED [25]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u154|U1/reg0_b24  (
    .a({\U1/n7 ,open_n7698}),
    .b({\U1/n4 ,open_n7699}),
    .c({\U1/Count_LED [24],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [24],\U1/n2 [24]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [24],open_n7717}),
    .q({open_n7721,\U1/Count_LED [24]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u155|U1/reg0_b23  (
    .a({\U1/n7 ,open_n7722}),
    .b({\U1/n4 ,open_n7723}),
    .c({\U1/Count_LED [23],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [23],\U1/n2 [23]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [23],open_n7741}),
    .q({open_n7745,\U1/Count_LED [23]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u156|U1/reg0_b22  (
    .a({\U1/n7 ,open_n7746}),
    .b({\U1/n4 ,open_n7747}),
    .c({\U1/Count_LED [22],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [22],\U1/n2 [22]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [22],open_n7765}),
    .q({open_n7769,\U1/Count_LED [22]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u157|U1/reg0_b21  (
    .a({\U1/n7 ,open_n7770}),
    .b({\U1/n4 ,open_n7771}),
    .c({\U1/Count_LED [21],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [21],\U1/n2 [21]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [21],open_n7789}),
    .q({open_n7793,\U1/Count_LED [21]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u158|U1/reg0_b20  (
    .a({\U1/n7 ,open_n7794}),
    .b({\U1/n4 ,open_n7795}),
    .c({\U1/Count_LED [20],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [20],\U1/n2 [20]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [20],open_n7813}),
    .q({open_n7817,\U1/Count_LED [20]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u159|U1/reg0_b19  (
    .a({\U1/n7 ,open_n7818}),
    .b({\U1/n4 ,open_n7819}),
    .c({\U1/Count_LED [19],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [19],\U1/n2 [19]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [19],open_n7837}),
    .q({open_n7841,\U1/Count_LED [19]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u160|U1/reg0_b18  (
    .a({\U1/n7 ,open_n7842}),
    .b({\U1/n4 ,open_n7843}),
    .c({\U1/Count_LED [18],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [18],\U1/n2 [18]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [18],open_n7861}),
    .q({open_n7865,\U1/Count_LED [18]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u161|U1/reg0_b17  (
    .a({\U1/n7 ,open_n7866}),
    .b({\U1/n4 ,open_n7867}),
    .c({\U1/Count_LED [17],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [17],\U1/n2 [17]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [17],open_n7885}),
    .q({open_n7889,\U1/Count_LED [17]}));  // Source/LEDRGBCtrl.v(20)
  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b1110001011000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b1110001011000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u162|U1/reg0_b16  (
    .a({\U1/n7 ,open_n7890}),
    .b({\U1/n4 ,open_n7891}),
    .c({\U1/Count_LED [16],\U1/n1 }),
    .clk(CLK_50M),
    .d({\U1/n8 [16],\U1/n2 [16]}),
    .sr(nRST_pad),
    .f({\U1/PWM_RData [16],open_n7909}),
    .q({open_n7913,\U1/Count_LED [16]}));  // Source/LEDRGBCtrl.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D*C*B*A)"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~D*C*B*A)"),
    //.LUTG1("(~C*D)"),
    .INIT_LUTF0(16'b0000000010000000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000000010000000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u163|_al_u197  (
    .a({open_n7914,_al_u163_o}),
    .b({open_n7915,\U2/n15 }),
    .c({\U2/UART_FSM [3],\U2/UART_FSM [0]}),
    .d(\U2/UART_FSM [2:1]),
    .f({_al_u163_o,_al_u197_o}));
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_LSLICE #(
    //.LUTF0("(~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+~(A)*B*C*~(D)+~(A)*~(B)*~(C)*D)"),
    //.LUTF1("(~D*~C*B*~A)"),
    //.LUTG0("(~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+~(A)*B*C*~(D)+~(A)*~(B)*~(C)*D)"),
    //.LUTG1("(~D*~C*B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000101110000),
    .INIT_LUTF1(16'b0000000000000100),
    .INIT_LUTG0(16'b0000000101110000),
    .INIT_LUTG1(16'b0000000000000100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u165|U2/reg0_b2  (
    .a({\U2/UART_FSM [0],\U2/UART_FSM [0]}),
    .b({\U2/UART_FSM [1],\U2/UART_FSM [1]}),
    .c({\U2/UART_FSM [2],\U2/UART_FSM [2]}),
    .clk(UART_CLK),
    .d({\U2/UART_FSM [3],\U2/UART_FSM [3]}),
    .sr(nRST_pad),
    .f({_al_u165_o,open_n7957}),
    .q({open_n7961,\U2/UART_FSM [2]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTF1("(D*~(C*~B))"),
    //.LUTG0("(~D)"),
    //.LUTG1("(D*~(C*~B))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTF1(16'b1100111100000000),
    .INIT_LUTG0(16'b0000000011111111),
    .INIT_LUTG1(16'b1100111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u166|U2/FIFO_RE_reg  (
    .b({FIFO_EMPTY,open_n7964}),
    .c({FIFO_RE,open_n7965}),
    .ce(\U2/mux11_sel_is_2_o ),
    .clk(UART_CLK),
    .d({_al_u165_o,FIFO_EMPTY}),
    .sr(nRST_pad),
    .f({\U2/mux11_sel_is_2_o ,open_n7982}),
    .q({open_n7986,FIFO_RE}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_LSLICE #(
    //.LUTF0("(~A*(~(B)*C*~(D)+B*C*~(D)+~(B)*~(C)*D))"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~A*(~(B)*C*~(D)+B*C*~(D)+~(B)*~(C)*D))"),
    //.LUTG1("(~C*D)"),
    .INIT_LUTF0(16'b0000000101010000),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0000000101010000),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u167|_al_u175  (
    .a({open_n7987,UART_TX_pad}),
    .b({open_n7988,\U2/n15 }),
    .c(\U2/UART_FSM [2:1]),
    .d({\U2/UART_FSM [1],\U2/UART_FSM [2]}),
    .f({_al_u167_o,_al_u175_o}));
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_LSLICE #(
    //.LUTF0("~(~C*~A*~(D*B))"),
    //.LUTF1("(~D*(B*~(C)*~(A)+B*C*~(A)+~(B)*C*A+B*C*A))"),
    //.LUTG0("~(~C*~A*~(D*B))"),
    //.LUTG1("(~D*(B*~(C)*~(A)+B*C*~(A)+~(B)*C*A+B*C*A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111011111010),
    .INIT_LUTF1(16'b0000000011100100),
    .INIT_LUTG0(16'b1111111011111010),
    .INIT_LUTG1(16'b0000000011100100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u168|U2/FIFO_CLK_reg  (
    .a({_al_u167_o,_al_u168_o}),
    .b({FIFO_CLK_R,_al_u169_o}),
    .c({\U2/UART_FSM [0],_al_u170_o}),
    .clk(UART_CLK),
    .d({\U2/UART_FSM [3],\U2/UART_FSM [0]}),
    .sr(nRST_pad),
    .f({_al_u168_o,open_n8030}),
    .q({open_n8034,FIFO_CLK_R}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_MSLICE #(
    //.LUT0("(~C*~(~B*~D))"),
    //.LUT1("(C*~B*~D)"),
    .INIT_LUT0(16'b0000111100001100),
    .INIT_LUT1(16'b0000000000110000),
    .MODE("LOGIC"))
    \_al_u169|_al_u194  (
    .b(\U2/UART_FSM [2:1]),
    .c({\U2/UART_FSM [3],\U2/UART_FSM [3]}),
    .d(\U2/UART_FSM [1:0]),
    .f({_al_u169_o,_al_u194_o}));
  EG_PHY_LSLICE #(
    //.LUTF0("(D*~C*~(B*~A))"),
    //.LUTF1("(D*~(C*B))"),
    //.LUTG0("(D*~C*~(B*~A))"),
    //.LUTG1("(D*~(C*B))"),
    .INIT_LUTF0(16'b0000101100000000),
    .INIT_LUTF1(16'b0011111100000000),
    .INIT_LUTG0(16'b0000101100000000),
    .INIT_LUTG1(16'b0011111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u173|_al_u172  (
    .a({open_n8057,\U2/n15 }),
    .b({\U2/UART_FSM [0],\U2/UART_FSM [0]}),
    .c({\U2/SendBuff [0],\U2/UART_FSM [1]}),
    .d({_al_u172_o,\U2/UART_FSM [2]}),
    .f({_al_u173_o,_al_u172_o}));
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_LSLICE #(
    //.LUTF0("(~B*~(~D*~(~C*~A)))"),
    //.LUTF1("(~C*D)"),
    //.LUTG0("(~B*~(~D*~(~C*~A)))"),
    //.LUTG1("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011001100000001),
    .INIT_LUTF1(16'b0000111100000000),
    .INIT_LUTG0(16'b0011001100000001),
    .INIT_LUTG1(16'b0000111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u174|U2/UART_TX_reg_reg  (
    .a({open_n8082,_al_u173_o}),
    .b({open_n8083,_al_u174_o}),
    .c({UART_TX_pad,_al_u175_o}),
    .clk(UART_CLK),
    .d({_al_u169_o,\U2/UART_FSM [3]}),
    .sr(nRST_pad),
    .f({_al_u174_o,open_n8101}),
    .q({open_n8105,UART_TX_pad}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_MSLICE #(
    //.LUT0("(D*A*~(~C*~B))"),
    //.LUT1("(~C*B*~D)"),
    .INIT_LUT0(16'b1010100000000000),
    .INIT_LUT1(16'b0000000000001100),
    .MODE("LOGIC"))
    \_al_u177|_al_u170  (
    .a({open_n8106,FIFO_CLK_R}),
    .b(\U2/UART_FSM [2:1]),
    .c(\U2/UART_FSM [3:2]),
    .d({\U2/UART_FSM [1],\U2/UART_FSM [3]}),
    .f({_al_u177_o,_al_u170_o}));
  EG_PHY_LSLICE #(
    //.LUTF0("(D*~(C*~B))"),
    //.LUTF1("(D*~(C*~B))"),
    //.LUTG0("(D*~(C*~B))"),
    //.LUTG1("(D*~(C*~B))"),
    .INIT_LUTF0(16'b1100111100000000),
    .INIT_LUTF1(16'b1100111100000000),
    .INIT_LUTG0(16'b1100111100000000),
    .INIT_LUTG1(16'b1100111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u178|_al_u183  (
    .b({\U2/n15 ,\U2/n15 }),
    .c({\U2/UART_FSM [0],\U2/UART_FSM [0]}),
    .d({_al_u177_o,_al_u177_o}),
    .f({_al_u178_o,_al_u183_o}));
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_MSLICE #(
    //.LUT0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUT1("(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1100110011110000),
    .INIT_LUT1(16'b1111001111000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u179|U2/reg1_b1  (
    .b({\U2/UART_FSM [0],_al_u181_o}),
    .c({\U2/SendBuff [1],\U2/SendBuff [1]}),
    .ce(\C1/n0 ),
    .clk(UART_CLK),
    .d({FIFO_DO[0],_al_u178_o}),
    .f({_al_u179_o,open_n8168}),
    .q({open_n8172,\U2/SendBuff [1]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_MSLICE #(
    //.LUT0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUT1("(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1100110011110000),
    .INIT_LUT1(16'b1111001111000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u181|U2/reg1_b2  (
    .b({\U2/UART_FSM [0],_al_u184_o}),
    .c({\U2/SendBuff [2],\U2/SendBuff [2]}),
    .ce(\C1/n0 ),
    .clk(UART_CLK),
    .d({FIFO_DO[1],_al_u183_o}),
    .f({_al_u181_o,open_n8188}),
    .q({open_n8192,\U2/SendBuff [2]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_MSLICE #(
    //.LUT0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUT1("(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1100110011110000),
    .INIT_LUT1(16'b1111001111000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u184|U2/reg1_b3  (
    .b({\U2/UART_FSM [0],_al_u186_o}),
    .c({\U2/SendBuff [3],\U2/SendBuff [3]}),
    .ce(\C1/n0 ),
    .clk(UART_CLK),
    .d({FIFO_DO[2],_al_u183_o}),
    .f({_al_u184_o,open_n8208}),
    .q({open_n8212,\U2/SendBuff [3]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTF1("(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B)"),
    //.LUTG0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG1("(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100110011110000),
    .INIT_LUTF1(16'b1111001111000000),
    .INIT_LUTG0(16'b1100110011110000),
    .INIT_LUTG1(16'b1111001111000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u186|U2/reg1_b4  (
    .b({\U2/UART_FSM [0],_al_u188_o}),
    .c({\U2/SendBuff [4],\U2/SendBuff [4]}),
    .ce(\C1/n0 ),
    .clk(UART_CLK),
    .d({FIFO_DO[3],_al_u183_o}),
    .f({_al_u186_o,open_n8232}),
    .q({open_n8236,\U2/SendBuff [4]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTF1("(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B)"),
    //.LUTG0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG1("(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100110011110000),
    .INIT_LUTF1(16'b1111001111000000),
    .INIT_LUTG0(16'b1100110011110000),
    .INIT_LUTG1(16'b1111001111000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u188|U2/reg1_b5  (
    .b({\U2/UART_FSM [0],_al_u190_o}),
    .c({\U2/SendBuff [5],\U2/SendBuff [5]}),
    .ce(\C1/n0 ),
    .clk(UART_CLK),
    .d({FIFO_DO[4],_al_u183_o}),
    .f({_al_u188_o,open_n8256}),
    .q({open_n8260,\U2/SendBuff [5]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_PAD #(
    //.LOCATION("K14"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u19 (
    .ipad(CLK_24M),
    .di(CLK_24M_pad));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(12)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTF1("(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B)"),
    //.LUTG0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG1("(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B)"),
    .CEMUX("INV"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100110011110000),
    .INIT_LUTF1(16'b1111001111000000),
    .INIT_LUTG0(16'b1100110011110000),
    .INIT_LUTG1(16'b1111001111000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u190|U2/reg1_b6  (
    .b({\U2/UART_FSM [0],_al_u192_o}),
    .c({\U2/SendBuff [6],\U2/SendBuff [6]}),
    .ce(\C1/n0 ),
    .clk(UART_CLK),
    .d({FIFO_DO[5],_al_u178_o}),
    .f({_al_u190_o,open_n8297}),
    .q({open_n8301,\U2/SendBuff [6]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_LSLICE #(
    //.LUTF0("(D*~C*~B*A)"),
    //.LUTF1("(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B)"),
    //.LUTG0("(D*~C*~B*A)"),
    //.LUTG1("(D*~(C)*~(B)+D*C*~(B)+~(D)*C*B+D*C*B)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000001000000000),
    .INIT_LUTF1(16'b1111001111000000),
    .INIT_LUTG0(16'b0000001000000000),
    .INIT_LUTG1(16'b1111001111000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \_al_u192|U2/reg1_b7  (
    .a({open_n8302,_al_u163_o}),
    .b({\U2/UART_FSM [0],\U2/UART_FSM [0]}),
    .c({\U2/SendBuff [7],\U2/UART_FSM [1]}),
    .ce(\U2/mux13_b7_sel_is_2_o ),
    .clk(UART_CLK),
    .d({FIFO_DO[6],nRST_pad}),
    .mi({open_n8306,FIFO_DO[7]}),
    .f({_al_u192_o,\U2/mux13_b7_sel_is_2_o }),
    .q({open_n8322,\U2/SendBuff [7]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_MSLICE #(
    //.LUT0("(~C*(A*~(B)*~(D)+~(A)*B*~(D)+A*B*~(D)+~(A)*~(B)*D+A*~(B)*D))"),
    //.LUT1("(~B*~(A*~(~D*C)))"),
    .INIT_LUT0(16'b0000001100001110),
    .INIT_LUT1(16'b0001000100110001),
    .MODE("LOGIC"))
    \_al_u196|_al_u195  (
    .a({_al_u194_o,\U2/UART_FSM [0]}),
    .b({_al_u195_o,\U2/UART_FSM [1]}),
    .c({\U2/n15 ,\U2/UART_FSM [2]}),
    .d({\U2/UART_FSM [1],\U2/UART_FSM [3]}),
    .f({_al_u196_o,_al_u195_o}));
  EG_PHY_PAD #(
    //.LOCATION("C15"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u20 (
    .do({open_n8344,open_n8345,open_n8346,1'b0}),
    .opad(GPIO));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(17)
  // Source/CLK_MOD.v(32)
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
    \_al_u206|C1/reg0_b3  (
    .a({\C1/Count [27],open_n8360}),
    .b({\C1/Count [28],_al_u215_o}),
    .c({\C1/Count [29],\C1/n3 [3]}),
    .clk(CLK_50M),
    .d({\C1/Count [3],_al_u210_o}),
    .sr(nRST_pad),
    .f({_al_u206_o,open_n8378}),
    .q({open_n8382,\C1/Count [3]}));  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
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
    \_al_u207|C1/reg0_b26  (
    .a({\C1/Count [23],open_n8383}),
    .b({\C1/Count [24],_al_u215_o}),
    .c({\C1/Count [25],\C1/n3 [26]}),
    .clk(CLK_50M),
    .d({\C1/Count [26],_al_u210_o}),
    .sr(nRST_pad),
    .f({_al_u207_o,open_n8401}),
    .q({open_n8405,\C1/Count [26]}));  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
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
    \_al_u208|C1/reg0_b9  (
    .a({\C1/Count [6],open_n8406}),
    .b({\C1/Count [7],_al_u215_o}),
    .c({\C1/Count [8],\C1/n3 [9]}),
    .clk(CLK_50M),
    .d({\C1/Count [9],_al_u210_o}),
    .sr(nRST_pad),
    .f({_al_u208_o,open_n8424}),
    .q({open_n8428,\C1/Count [9]}));  // Source/CLK_MOD.v(32)
  // Source/CLK_MOD.v(32)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B*D))"),
    //.LUTF1("(~D*C*~B*~A)"),
    //.LUTG0("(C*~(B*D))"),
    //.LUTG1("(~D*C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0011000011110000),
    .INIT_LUTF1(16'b0000000000010000),
    .INIT_LUTG0(16'b0011000011110000),
    .INIT_LUTG1(16'b0000000000010000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u209|C1/reg0_b5  (
    .a({\C1/Count [30],open_n8429}),
    .b({\C1/Count [31],_al_u215_o}),
    .c({\C1/Count [4],\C1/n3 [5]}),
    .clk(CLK_50M),
    .d({\C1/Count [5],_al_u210_o}),
    .sr(nRST_pad),
    .f({_al_u209_o,open_n8447}),
    .q({open_n8451,\C1/Count [5]}));  // Source/CLK_MOD.v(32)
  EG_PHY_PAD #(
    //.LOCATION("R3"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u21 (
    .do({open_n8453,open_n8454,open_n8455,LEDs_pad[2]}),
    .opad(LEDs[2]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(15)
  EG_PHY_MSLICE #(
    //.LUT0("(D*C*B*A)"),
    //.LUT1("(~D*~C*~B*~A)"),
    .INIT_LUT0(16'b1000000000000000),
    .INIT_LUT1(16'b0000000000000001),
    .MODE("LOGIC"))
    \_al_u211|_al_u215  (
    .a({\C1/Count [12],_al_u211_o}),
    .b({\C1/Count [13],_al_u212_o}),
    .c({\C1/Count [14],_al_u213_o}),
    .d({\C1/Count [15],_al_u214_o}),
    .f({_al_u211_o,_al_u215_o}));
  // Source/CLK_MOD.v(32)
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
    \_al_u213|C1/reg0_b22  (
    .a({\C1/Count [2],open_n8489}),
    .b({\C1/Count [20],_al_u215_o}),
    .c({\C1/Count [21],\C1/n3 [22]}),
    .clk(CLK_50M),
    .d({\C1/Count [22],_al_u210_o}),
    .sr(nRST_pad),
    .f({_al_u213_o,open_n8507}),
    .q({open_n8511,\C1/Count [22]}));  // Source/CLK_MOD.v(32)
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
    \_al_u214|_al_u210  (
    .a({\C1/Count [16],_al_u206_o}),
    .b({\C1/Count [17],_al_u207_o}),
    .c({\C1/Count [18],_al_u208_o}),
    .d({\C1/Count [19],_al_u209_o}),
    .f({_al_u214_o,_al_u210_o}));
  // Source/CLK_MOD.v(32)
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
    \_al_u216|C1/reg0_b2  (
    .b({open_n8538,_al_u215_o}),
    .c({_al_u215_o,\C1/n3 [2]}),
    .clk(CLK_50M),
    .d({_al_u210_o,_al_u210_o}),
    .sr(nRST_pad),
    .f({\C1/n1 ,open_n8556}),
    .q({open_n8560,\C1/Count [2]}));  // Source/CLK_MOD.v(32)
  EG_PHY_PAD #(
    //.LOCATION("P13"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u22 (
    .do({open_n8562,open_n8563,open_n8564,LEDs_pad[1]}),
    .opad(LEDs[1]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(15)
  EG_PHY_PAD #(
    //.LOCATION("J14"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u23 (
    .do({open_n8579,open_n8580,open_n8581,LEDs_pad[0]}),
    .opad(LEDs[0]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(15)
  EG_PHY_PAD #(
    //.LOCATION("C16"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u24 (
    .do({open_n8596,open_n8597,open_n8598,UART_TX_pad}),
    .opad(UART_TX));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(16)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_LSLICE #(
    //.LUTF0("((D*B)*~(A)*~(C)+(D*B)*A*~(C)+~((D*B))*A*C+(D*B)*A*C)"),
    //.LUTF1("(~C*~B*D)"),
    //.LUTG0("((D*B)*~(A)*~(C)+(D*B)*A*~(C)+~((D*B))*A*C+(D*B)*A*C)"),
    //.LUTG1("(~C*~B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010110010100000),
    .INIT_LUTF1(16'b0000001100000000),
    .INIT_LUTG0(16'b1010110010100000),
    .INIT_LUTG1(16'b0000001100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u249|U2/reg0_b3  (
    .a({open_n8612,_al_u169_o}),
    .b({\U2/UART_FSM [2],_al_u249_o}),
    .c({\U2/UART_FSM [3],\U2/UART_FSM [0]}),
    .clk(UART_CLK),
    .d({FIFO_RE,\U2/UART_FSM [1]}),
    .sr(nRST_pad),
    .f({_al_u249_o,open_n8630}),
    .q({open_n8634,\U2/UART_FSM [3]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_PAD #(
    //.LOCATION("K16"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u25 (
    .ipad(nRST),
    .di(nRST_pad));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(13)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_LSLICE #(
    //.LUTF0("(~A*~(B*~(~D*C)))"),
    //.LUTF1("(~D*A*~(~C*~B))"),
    //.LUTG0("(~A*~(B*~(~D*C)))"),
    //.LUTG1("(~D*A*~(~C*~B))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0001000101010001),
    .INIT_LUTF1(16'b0000000010101000),
    .INIT_LUTG0(16'b0001000101010001),
    .INIT_LUTG1(16'b0000000010101000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u252|U2/reg0_b0  (
    .a({\U2/UART_FSM [0],_al_u169_o}),
    .b({\U2/UART_FSM [1],_al_u252_o}),
    .c({\U2/UART_FSM [2],\U2/n15 }),
    .clk(UART_CLK),
    .d({\U2/UART_FSM [3],\U2/UART_FSM [1]}),
    .sr(nRST_pad),
    .f({_al_u252_o,open_n8669}),
    .q({open_n8673,\U2/UART_FSM [0]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*~B*~D)"),
    //.LUTF1("(~C*~B*~D)"),
    //.LUTG0("(~C*~B*~D)"),
    //.LUTG1("(~C*~B*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000011),
    .INIT_LUTF1(16'b0000000000000011),
    .INIT_LUTG0(16'b0000000000000011),
    .INIT_LUTG1(16'b0000000000000011),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u255|U2/reg0_b1  (
    .b({\U2/UART_FSM [0],_al_u172_o}),
    .c({\U2/UART_FSM [2],\U2/UART_FSM [3]}),
    .clk(UART_CLK),
    .d({_al_u254_o,_al_u255_o}),
    .sr(nRST_pad),
    .f({_al_u255_o,open_n8693}),
    .q({open_n8697,\U2/UART_FSM [1]}));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  EG_PHY_MSLICE #(
    //.LUT0("(C*~B*~D)"),
    //.LUT1("(~D)"),
    .INIT_LUT0(16'b0000000000110000),
    .INIT_LUT1(16'b0000000011111111),
    .MODE("LOGIC"))
    \_al_u258|_al_u254  (
    .b({open_n8700,FIFO_RE}),
    .c({open_n8701,\U2/UART_FSM [1]}),
    .d({FIFO_EMPTY,FIFO_EMPTY}),
    .f({FIFO_EMPTY_neg,_al_u254_o}));
  // Source/UART_CTRL.v(24)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    //.LUTF1("(~D)"),
    //.LUTG0("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    //.LUTG1("(~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111000000100),
    .INIT_LUTF1(16'b0000000011111111),
    .INIT_LUTG0(16'b0000111000000100),
    .INIT_LUTG1(16'b0000000011111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \_al_u259|U3/reg0_b6  (
    .a({open_n8722,FIFO_FULL}),
    .b({open_n8723,\U3/n2 [6]}),
    .c({open_n8724,\U3/n1 }),
    .clk(CLK_50M),
    .d({FIFO_FULL,\U3/Addr [6]}),
    .sr(nRST_pad),
    .f({FIFO_FULL_neg,open_n8742}),
    .q({open_n8746,\U3/Addr [6]}));  // Source/UART_CTRL.v(24)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D*~C*~B*A)"),
    //.LUTF1("(~D)"),
    //.LUTG0("(~D*~C*~B*A)"),
    //.LUTG1("(~D)"),
    .INIT_LUTF0(16'b0000000000000010),
    .INIT_LUTF1(16'b0000000011111111),
    .INIT_LUTG0(16'b0000000000000010),
    .INIT_LUTG1(16'b0000000011111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \_al_u260|_al_u212  (
    .a({open_n8747,\C1/Count [0]}),
    .b({open_n8748,\C1/Count [1]}),
    .c({open_n8749,\C1/Count [10]}),
    .d({\U1/B_PWM/n4 ,\C1/Count [11]}),
    .f({LEDs_pad[2],_al_u212_o}));
  EG_PHY_MSLICE #(
    //.LUT0("(~D)"),
    .INIT_LUT0(16'b0000000011111111),
    .MODE("LOGIC"))
    _al_u261 (
    .d({open_n8782,\U1/G_PWM/n4 }),
    .f({open_n8796,LEDs_pad[1]}));
  EG_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTG0("(~D)"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTG0(16'b0000000011111111),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    _al_u262 (
    .d({open_n8810,\U1/R_PWM/n4 }),
    .f({open_n8828,LEDs_pad[0]}));
  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();

endmodule 

