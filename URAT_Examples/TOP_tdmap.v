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
  wire [31:0] \C1/n5 ;
  wire [7:0] FIFO_DI;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(62)
  wire [7:0] FIFO_DO;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(61)
  wire [2:0] LEDs_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(15)
  wire [15:0] \U1/B_PWM/PWMCount ;  // Source/PWM.v(15)
  wire [15:0] \U1/B_PWM/n2 ;
  wire [15:0] \U1/B_PWM/n3 ;
  wire [31:0] \U1/Count_LED ;  // Source/LEDRGBCtrl.v(9)
  wire [15:0] \U1/G_PWM/PWMCount ;  // Source/PWM.v(15)
  wire [15:0] \U1/G_PWM/n2 ;
  wire [15:0] \U1/G_PWM/n3 ;
  wire [31:0] \U1/PWM_BData ;  // Source/LEDRGBCtrl.v(25)
  wire [31:0] \U1/PWM_GData ;  // Source/LEDRGBCtrl.v(24)
  wire [31:0] \U1/PWM_RData ;  // Source/LEDRGBCtrl.v(23)
  wire [15:0] \U1/R_PWM/PWMCount ;  // Source/PWM.v(15)
  wire [15:0] \U1/R_PWM/n2 ;
  wire [15:0] \U1/R_PWM/n3 ;
  wire [31:0] \U1/n12 ;
  wire [31:0] \U1/n14 ;
  wire [31:0] \U1/n16 ;
  wire [31:0] \U1/n17 ;
  wire [31:0] \U1/n2 ;
  wire [31:0] \U1/n3 ;
  wire [31:0] \U1/n8 ;
  wire [7:0] \U2/Count ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(16)
  wire [7:0] \U2/SendBuff ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(18)
  wire [3:0] \U2/UART_FSM ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(33)
  wire [7:0] \U2/n16 ;
  wire [3:0] \U2/n21 ;
  wire [7:0] \U2/n22 ;
  wire [7:0] \U2/n25 ;
  wire [6:0] \U3/Addr ;  // Source/UART_CTRL.v(13)
  wire [6:0] \U3/n2 ;
  wire [6:0] \U3/n4 ;
  wire \C1/add0/c0 ;
  wire \C1/add0/c1 ;
  wire \C1/add0/c10 ;
  wire \C1/add0/c11 ;
  wire \C1/add0/c12 ;
  wire \C1/add0/c13 ;
  wire \C1/add0/c14 ;
  wire \C1/add0/c15 ;
  wire \C1/add0/c16 ;
  wire \C1/add0/c17 ;
  wire \C1/add0/c18 ;
  wire \C1/add0/c19 ;
  wire \C1/add0/c2 ;
  wire \C1/add0/c20 ;
  wire \C1/add0/c21 ;
  wire \C1/add0/c22 ;
  wire \C1/add0/c23 ;
  wire \C1/add0/c24 ;
  wire \C1/add0/c25 ;
  wire \C1/add0/c26 ;
  wire \C1/add0/c27 ;
  wire \C1/add0/c28 ;
  wire \C1/add0/c29 ;
  wire \C1/add0/c3 ;
  wire \C1/add0/c30 ;
  wire \C1/add0/c31 ;
  wire \C1/add0/c4 ;
  wire \C1/add0/c5 ;
  wire \C1/add0/c6 ;
  wire \C1/add0/c7 ;
  wire \C1/add0/c8 ;
  wire \C1/add0/c9 ;
  wire \C1/n0 ;
  wire \C1/n1 ;
  wire \C1/n2 ;
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
  wire \U1/B_PWM/add0/c0 ;
  wire \U1/B_PWM/add0/c1 ;
  wire \U1/B_PWM/add0/c10 ;
  wire \U1/B_PWM/add0/c11 ;
  wire \U1/B_PWM/add0/c12 ;
  wire \U1/B_PWM/add0/c13 ;
  wire \U1/B_PWM/add0/c14 ;
  wire \U1/B_PWM/add0/c15 ;
  wire \U1/B_PWM/add0/c2 ;
  wire \U1/B_PWM/add0/c3 ;
  wire \U1/B_PWM/add0/c4 ;
  wire \U1/B_PWM/add0/c5 ;
  wire \U1/B_PWM/add0/c6 ;
  wire \U1/B_PWM/add0/c7 ;
  wire \U1/B_PWM/add0/c8 ;
  wire \U1/B_PWM/add0/c9 ;
  wire \U1/B_PWM/lt0_c0 ;
  wire \U1/B_PWM/lt0_c1 ;
  wire \U1/B_PWM/lt0_c10 ;
  wire \U1/B_PWM/lt0_c11 ;
  wire \U1/B_PWM/lt0_c12 ;
  wire \U1/B_PWM/lt0_c13 ;
  wire \U1/B_PWM/lt0_c14 ;
  wire \U1/B_PWM/lt0_c15 ;
  wire \U1/B_PWM/lt0_c16 ;
  wire \U1/B_PWM/lt0_c2 ;
  wire \U1/B_PWM/lt0_c3 ;
  wire \U1/B_PWM/lt0_c4 ;
  wire \U1/B_PWM/lt0_c5 ;
  wire \U1/B_PWM/lt0_c6 ;
  wire \U1/B_PWM/lt0_c7 ;
  wire \U1/B_PWM/lt0_c8 ;
  wire \U1/B_PWM/lt0_c9 ;
  wire \U1/B_PWM/lt1_c0 ;
  wire \U1/B_PWM/lt1_c1 ;
  wire \U1/B_PWM/lt1_c10 ;
  wire \U1/B_PWM/lt1_c11 ;
  wire \U1/B_PWM/lt1_c12 ;
  wire \U1/B_PWM/lt1_c13 ;
  wire \U1/B_PWM/lt1_c14 ;
  wire \U1/B_PWM/lt1_c15 ;
  wire \U1/B_PWM/lt1_c16 ;
  wire \U1/B_PWM/lt1_c2 ;
  wire \U1/B_PWM/lt1_c3 ;
  wire \U1/B_PWM/lt1_c4 ;
  wire \U1/B_PWM/lt1_c5 ;
  wire \U1/B_PWM/lt1_c6 ;
  wire \U1/B_PWM/lt1_c7 ;
  wire \U1/B_PWM/lt1_c8 ;
  wire \U1/B_PWM/lt1_c9 ;
  wire \U1/B_PWM/n1 ;
  wire \U1/B_PWM/n4 ;
  wire \U1/G_PWM/add0/c0 ;
  wire \U1/G_PWM/add0/c1 ;
  wire \U1/G_PWM/add0/c10 ;
  wire \U1/G_PWM/add0/c11 ;
  wire \U1/G_PWM/add0/c12 ;
  wire \U1/G_PWM/add0/c13 ;
  wire \U1/G_PWM/add0/c14 ;
  wire \U1/G_PWM/add0/c15 ;
  wire \U1/G_PWM/add0/c2 ;
  wire \U1/G_PWM/add0/c3 ;
  wire \U1/G_PWM/add0/c4 ;
  wire \U1/G_PWM/add0/c5 ;
  wire \U1/G_PWM/add0/c6 ;
  wire \U1/G_PWM/add0/c7 ;
  wire \U1/G_PWM/add0/c8 ;
  wire \U1/G_PWM/add0/c9 ;
  wire \U1/G_PWM/lt0_c0 ;
  wire \U1/G_PWM/lt0_c1 ;
  wire \U1/G_PWM/lt0_c10 ;
  wire \U1/G_PWM/lt0_c11 ;
  wire \U1/G_PWM/lt0_c12 ;
  wire \U1/G_PWM/lt0_c13 ;
  wire \U1/G_PWM/lt0_c14 ;
  wire \U1/G_PWM/lt0_c15 ;
  wire \U1/G_PWM/lt0_c16 ;
  wire \U1/G_PWM/lt0_c2 ;
  wire \U1/G_PWM/lt0_c3 ;
  wire \U1/G_PWM/lt0_c4 ;
  wire \U1/G_PWM/lt0_c5 ;
  wire \U1/G_PWM/lt0_c6 ;
  wire \U1/G_PWM/lt0_c7 ;
  wire \U1/G_PWM/lt0_c8 ;
  wire \U1/G_PWM/lt0_c9 ;
  wire \U1/G_PWM/lt1_c0 ;
  wire \U1/G_PWM/lt1_c1 ;
  wire \U1/G_PWM/lt1_c10 ;
  wire \U1/G_PWM/lt1_c11 ;
  wire \U1/G_PWM/lt1_c12 ;
  wire \U1/G_PWM/lt1_c13 ;
  wire \U1/G_PWM/lt1_c14 ;
  wire \U1/G_PWM/lt1_c15 ;
  wire \U1/G_PWM/lt1_c16 ;
  wire \U1/G_PWM/lt1_c2 ;
  wire \U1/G_PWM/lt1_c3 ;
  wire \U1/G_PWM/lt1_c4 ;
  wire \U1/G_PWM/lt1_c5 ;
  wire \U1/G_PWM/lt1_c6 ;
  wire \U1/G_PWM/lt1_c7 ;
  wire \U1/G_PWM/lt1_c8 ;
  wire \U1/G_PWM/lt1_c9 ;
  wire \U1/G_PWM/n1 ;
  wire \U1/G_PWM/n4 ;
  wire \U1/R_PWM/add0/c0 ;
  wire \U1/R_PWM/add0/c1 ;
  wire \U1/R_PWM/add0/c10 ;
  wire \U1/R_PWM/add0/c11 ;
  wire \U1/R_PWM/add0/c12 ;
  wire \U1/R_PWM/add0/c13 ;
  wire \U1/R_PWM/add0/c14 ;
  wire \U1/R_PWM/add0/c15 ;
  wire \U1/R_PWM/add0/c2 ;
  wire \U1/R_PWM/add0/c3 ;
  wire \U1/R_PWM/add0/c4 ;
  wire \U1/R_PWM/add0/c5 ;
  wire \U1/R_PWM/add0/c6 ;
  wire \U1/R_PWM/add0/c7 ;
  wire \U1/R_PWM/add0/c8 ;
  wire \U1/R_PWM/add0/c9 ;
  wire \U1/R_PWM/lt0_c0 ;
  wire \U1/R_PWM/lt0_c1 ;
  wire \U1/R_PWM/lt0_c10 ;
  wire \U1/R_PWM/lt0_c11 ;
  wire \U1/R_PWM/lt0_c12 ;
  wire \U1/R_PWM/lt0_c13 ;
  wire \U1/R_PWM/lt0_c14 ;
  wire \U1/R_PWM/lt0_c15 ;
  wire \U1/R_PWM/lt0_c16 ;
  wire \U1/R_PWM/lt0_c2 ;
  wire \U1/R_PWM/lt0_c3 ;
  wire \U1/R_PWM/lt0_c4 ;
  wire \U1/R_PWM/lt0_c5 ;
  wire \U1/R_PWM/lt0_c6 ;
  wire \U1/R_PWM/lt0_c7 ;
  wire \U1/R_PWM/lt0_c8 ;
  wire \U1/R_PWM/lt0_c9 ;
  wire \U1/R_PWM/lt1_c0 ;
  wire \U1/R_PWM/lt1_c1 ;
  wire \U1/R_PWM/lt1_c10 ;
  wire \U1/R_PWM/lt1_c11 ;
  wire \U1/R_PWM/lt1_c12 ;
  wire \U1/R_PWM/lt1_c13 ;
  wire \U1/R_PWM/lt1_c14 ;
  wire \U1/R_PWM/lt1_c15 ;
  wire \U1/R_PWM/lt1_c16 ;
  wire \U1/R_PWM/lt1_c2 ;
  wire \U1/R_PWM/lt1_c3 ;
  wire \U1/R_PWM/lt1_c4 ;
  wire \U1/R_PWM/lt1_c5 ;
  wire \U1/R_PWM/lt1_c6 ;
  wire \U1/R_PWM/lt1_c7 ;
  wire \U1/R_PWM/lt1_c8 ;
  wire \U1/R_PWM/lt1_c9 ;
  wire \U1/R_PWM/n1 ;
  wire \U1/R_PWM/n4 ;
  wire \U1/add0/c0 ;
  wire \U1/add0/c1 ;
  wire \U1/add0/c10 ;
  wire \U1/add0/c11 ;
  wire \U1/add0/c12 ;
  wire \U1/add0/c13 ;
  wire \U1/add0/c14 ;
  wire \U1/add0/c15 ;
  wire \U1/add0/c16 ;
  wire \U1/add0/c17 ;
  wire \U1/add0/c18 ;
  wire \U1/add0/c19 ;
  wire \U1/add0/c2 ;
  wire \U1/add0/c20 ;
  wire \U1/add0/c21 ;
  wire \U1/add0/c22 ;
  wire \U1/add0/c23 ;
  wire \U1/add0/c24 ;
  wire \U1/add0/c25 ;
  wire \U1/add0/c26 ;
  wire \U1/add0/c27 ;
  wire \U1/add0/c28 ;
  wire \U1/add0/c29 ;
  wire \U1/add0/c3 ;
  wire \U1/add0/c30 ;
  wire \U1/add0/c31 ;
  wire \U1/add0/c4 ;
  wire \U1/add0/c5 ;
  wire \U1/add0/c6 ;
  wire \U1/add0/c7 ;
  wire \U1/add0/c8 ;
  wire \U1/add0/c9 ;
  wire \U1/lt0_c0 ;
  wire \U1/lt0_c1 ;
  wire \U1/lt0_c10 ;
  wire \U1/lt0_c11 ;
  wire \U1/lt0_c12 ;
  wire \U1/lt0_c13 ;
  wire \U1/lt0_c14 ;
  wire \U1/lt0_c15 ;
  wire \U1/lt0_c16 ;
  wire \U1/lt0_c17 ;
  wire \U1/lt0_c18 ;
  wire \U1/lt0_c19 ;
  wire \U1/lt0_c2 ;
  wire \U1/lt0_c20 ;
  wire \U1/lt0_c21 ;
  wire \U1/lt0_c22 ;
  wire \U1/lt0_c23 ;
  wire \U1/lt0_c24 ;
  wire \U1/lt0_c25 ;
  wire \U1/lt0_c26 ;
  wire \U1/lt0_c27 ;
  wire \U1/lt0_c28 ;
  wire \U1/lt0_c29 ;
  wire \U1/lt0_c3 ;
  wire \U1/lt0_c30 ;
  wire \U1/lt0_c31 ;
  wire \U1/lt0_c32 ;
  wire \U1/lt0_c4 ;
  wire \U1/lt0_c5 ;
  wire \U1/lt0_c6 ;
  wire \U1/lt0_c7 ;
  wire \U1/lt0_c8 ;
  wire \U1/lt0_c9 ;
  wire \U1/lt1_c0 ;
  wire \U1/lt1_c1 ;
  wire \U1/lt1_c10 ;
  wire \U1/lt1_c11 ;
  wire \U1/lt1_c12 ;
  wire \U1/lt1_c13 ;
  wire \U1/lt1_c14 ;
  wire \U1/lt1_c15 ;
  wire \U1/lt1_c16 ;
  wire \U1/lt1_c17 ;
  wire \U1/lt1_c18 ;
  wire \U1/lt1_c19 ;
  wire \U1/lt1_c2 ;
  wire \U1/lt1_c20 ;
  wire \U1/lt1_c21 ;
  wire \U1/lt1_c22 ;
  wire \U1/lt1_c23 ;
  wire \U1/lt1_c24 ;
  wire \U1/lt1_c25 ;
  wire \U1/lt1_c26 ;
  wire \U1/lt1_c27 ;
  wire \U1/lt1_c28 ;
  wire \U1/lt1_c29 ;
  wire \U1/lt1_c3 ;
  wire \U1/lt1_c30 ;
  wire \U1/lt1_c31 ;
  wire \U1/lt1_c32 ;
  wire \U1/lt1_c4 ;
  wire \U1/lt1_c5 ;
  wire \U1/lt1_c6 ;
  wire \U1/lt1_c7 ;
  wire \U1/lt1_c8 ;
  wire \U1/lt1_c9 ;
  wire \U1/lt2_c0 ;
  wire \U1/lt2_c1 ;
  wire \U1/lt2_c10 ;
  wire \U1/lt2_c11 ;
  wire \U1/lt2_c12 ;
  wire \U1/lt2_c13 ;
  wire \U1/lt2_c14 ;
  wire \U1/lt2_c15 ;
  wire \U1/lt2_c16 ;
  wire \U1/lt2_c17 ;
  wire \U1/lt2_c18 ;
  wire \U1/lt2_c19 ;
  wire \U1/lt2_c2 ;
  wire \U1/lt2_c20 ;
  wire \U1/lt2_c21 ;
  wire \U1/lt2_c22 ;
  wire \U1/lt2_c23 ;
  wire \U1/lt2_c24 ;
  wire \U1/lt2_c25 ;
  wire \U1/lt2_c26 ;
  wire \U1/lt2_c27 ;
  wire \U1/lt2_c28 ;
  wire \U1/lt2_c29 ;
  wire \U1/lt2_c3 ;
  wire \U1/lt2_c30 ;
  wire \U1/lt2_c31 ;
  wire \U1/lt2_c32 ;
  wire \U1/lt2_c4 ;
  wire \U1/lt2_c5 ;
  wire \U1/lt2_c6 ;
  wire \U1/lt2_c7 ;
  wire \U1/lt2_c8 ;
  wire \U1/lt2_c9 ;
  wire \U1/lt3_c0 ;
  wire \U1/lt3_c1 ;
  wire \U1/lt3_c10 ;
  wire \U1/lt3_c11 ;
  wire \U1/lt3_c12 ;
  wire \U1/lt3_c13 ;
  wire \U1/lt3_c14 ;
  wire \U1/lt3_c15 ;
  wire \U1/lt3_c16 ;
  wire \U1/lt3_c17 ;
  wire \U1/lt3_c18 ;
  wire \U1/lt3_c19 ;
  wire \U1/lt3_c2 ;
  wire \U1/lt3_c20 ;
  wire \U1/lt3_c21 ;
  wire \U1/lt3_c22 ;
  wire \U1/lt3_c23 ;
  wire \U1/lt3_c24 ;
  wire \U1/lt3_c25 ;
  wire \U1/lt3_c26 ;
  wire \U1/lt3_c27 ;
  wire \U1/lt3_c28 ;
  wire \U1/lt3_c29 ;
  wire \U1/lt3_c3 ;
  wire \U1/lt3_c30 ;
  wire \U1/lt3_c31 ;
  wire \U1/lt3_c32 ;
  wire \U1/lt3_c4 ;
  wire \U1/lt3_c5 ;
  wire \U1/lt3_c6 ;
  wire \U1/lt3_c7 ;
  wire \U1/lt3_c8 ;
  wire \U1/lt3_c9 ;
  wire \U1/lt4_c0 ;
  wire \U1/lt4_c1 ;
  wire \U1/lt4_c10 ;
  wire \U1/lt4_c11 ;
  wire \U1/lt4_c12 ;
  wire \U1/lt4_c13 ;
  wire \U1/lt4_c14 ;
  wire \U1/lt4_c15 ;
  wire \U1/lt4_c16 ;
  wire \U1/lt4_c17 ;
  wire \U1/lt4_c18 ;
  wire \U1/lt4_c19 ;
  wire \U1/lt4_c2 ;
  wire \U1/lt4_c20 ;
  wire \U1/lt4_c21 ;
  wire \U1/lt4_c22 ;
  wire \U1/lt4_c23 ;
  wire \U1/lt4_c24 ;
  wire \U1/lt4_c25 ;
  wire \U1/lt4_c26 ;
  wire \U1/lt4_c27 ;
  wire \U1/lt4_c28 ;
  wire \U1/lt4_c29 ;
  wire \U1/lt4_c3 ;
  wire \U1/lt4_c30 ;
  wire \U1/lt4_c31 ;
  wire \U1/lt4_c32 ;
  wire \U1/lt4_c4 ;
  wire \U1/lt4_c5 ;
  wire \U1/lt4_c6 ;
  wire \U1/lt4_c7 ;
  wire \U1/lt4_c8 ;
  wire \U1/lt4_c9 ;
  wire \U1/lt5_c0 ;
  wire \U1/lt5_c1 ;
  wire \U1/lt5_c10 ;
  wire \U1/lt5_c11 ;
  wire \U1/lt5_c12 ;
  wire \U1/lt5_c13 ;
  wire \U1/lt5_c14 ;
  wire \U1/lt5_c15 ;
  wire \U1/lt5_c16 ;
  wire \U1/lt5_c17 ;
  wire \U1/lt5_c18 ;
  wire \U1/lt5_c19 ;
  wire \U1/lt5_c2 ;
  wire \U1/lt5_c20 ;
  wire \U1/lt5_c21 ;
  wire \U1/lt5_c22 ;
  wire \U1/lt5_c23 ;
  wire \U1/lt5_c24 ;
  wire \U1/lt5_c25 ;
  wire \U1/lt5_c26 ;
  wire \U1/lt5_c27 ;
  wire \U1/lt5_c28 ;
  wire \U1/lt5_c29 ;
  wire \U1/lt5_c3 ;
  wire \U1/lt5_c30 ;
  wire \U1/lt5_c31 ;
  wire \U1/lt5_c32 ;
  wire \U1/lt5_c4 ;
  wire \U1/lt5_c5 ;
  wire \U1/lt5_c6 ;
  wire \U1/lt5_c7 ;
  wire \U1/lt5_c8 ;
  wire \U1/lt5_c9 ;
  wire \U1/n1 ;
  wire \U1/n10 ;
  wire \U1/n11 ;
  wire \U1/n13 ;
  wire \U1/n4 ;
  wire \U1/n5 ;
  wire \U1/n6 ;
  wire \U1/n7 ;
  wire \U1/sub0/c0 ;
  wire \U1/sub0/c1 ;
  wire \U1/sub0/c10 ;
  wire \U1/sub0/c11 ;
  wire \U1/sub0/c12 ;
  wire \U1/sub0/c13 ;
  wire \U1/sub0/c14 ;
  wire \U1/sub0/c15 ;
  wire \U1/sub0/c16 ;
  wire \U1/sub0/c17 ;
  wire \U1/sub0/c18 ;
  wire \U1/sub0/c19 ;
  wire \U1/sub0/c2 ;
  wire \U1/sub0/c20 ;
  wire \U1/sub0/c21 ;
  wire \U1/sub0/c22 ;
  wire \U1/sub0/c23 ;
  wire \U1/sub0/c24 ;
  wire \U1/sub0/c25 ;
  wire \U1/sub0/c26 ;
  wire \U1/sub0/c27 ;
  wire \U1/sub0/c28 ;
  wire \U1/sub0/c29 ;
  wire \U1/sub0/c3 ;
  wire \U1/sub0/c30 ;
  wire \U1/sub0/c31 ;
  wire \U1/sub0/c4 ;
  wire \U1/sub0/c5 ;
  wire \U1/sub0/c6 ;
  wire \U1/sub0/c7 ;
  wire \U1/sub0/c8 ;
  wire \U1/sub0/c9 ;
  wire \U1/sub1/c0 ;
  wire \U1/sub1/c1 ;
  wire \U1/sub1/c10 ;
  wire \U1/sub1/c11 ;
  wire \U1/sub1/c12 ;
  wire \U1/sub1/c13 ;
  wire \U1/sub1/c14 ;
  wire \U1/sub1/c15 ;
  wire \U1/sub1/c16 ;
  wire \U1/sub1/c17 ;
  wire \U1/sub1/c18 ;
  wire \U1/sub1/c19 ;
  wire \U1/sub1/c2 ;
  wire \U1/sub1/c20 ;
  wire \U1/sub1/c21 ;
  wire \U1/sub1/c22 ;
  wire \U1/sub1/c23 ;
  wire \U1/sub1/c24 ;
  wire \U1/sub1/c25 ;
  wire \U1/sub1/c26 ;
  wire \U1/sub1/c27 ;
  wire \U1/sub1/c28 ;
  wire \U1/sub1/c29 ;
  wire \U1/sub1/c3 ;
  wire \U1/sub1/c30 ;
  wire \U1/sub1/c31 ;
  wire \U1/sub1/c4 ;
  wire \U1/sub1/c5 ;
  wire \U1/sub1/c6 ;
  wire \U1/sub1/c7 ;
  wire \U1/sub1/c8 ;
  wire \U1/sub1/c9 ;
  wire \U1/sub2/c0 ;
  wire \U1/sub2/c1 ;
  wire \U1/sub2/c10 ;
  wire \U1/sub2/c11 ;
  wire \U1/sub2/c12 ;
  wire \U1/sub2/c13 ;
  wire \U1/sub2/c14 ;
  wire \U1/sub2/c15 ;
  wire \U1/sub2/c16 ;
  wire \U1/sub2/c17 ;
  wire \U1/sub2/c18 ;
  wire \U1/sub2/c19 ;
  wire \U1/sub2/c2 ;
  wire \U1/sub2/c20 ;
  wire \U1/sub2/c21 ;
  wire \U1/sub2/c22 ;
  wire \U1/sub2/c23 ;
  wire \U1/sub2/c24 ;
  wire \U1/sub2/c25 ;
  wire \U1/sub2/c26 ;
  wire \U1/sub2/c27 ;
  wire \U1/sub2/c28 ;
  wire \U1/sub2/c29 ;
  wire \U1/sub2/c3 ;
  wire \U1/sub2/c30 ;
  wire \U1/sub2/c31 ;
  wire \U1/sub2/c4 ;
  wire \U1/sub2/c5 ;
  wire \U1/sub2/c6 ;
  wire \U1/sub2/c7 ;
  wire \U1/sub2/c8 ;
  wire \U1/sub2/c9 ;
  wire \U1/sub3/c0 ;
  wire \U1/sub3/c1 ;
  wire \U1/sub3/c10 ;
  wire \U1/sub3/c11 ;
  wire \U1/sub3/c12 ;
  wire \U1/sub3/c13 ;
  wire \U1/sub3/c14 ;
  wire \U1/sub3/c15 ;
  wire \U1/sub3/c16 ;
  wire \U1/sub3/c17 ;
  wire \U1/sub3/c18 ;
  wire \U1/sub3/c19 ;
  wire \U1/sub3/c2 ;
  wire \U1/sub3/c20 ;
  wire \U1/sub3/c21 ;
  wire \U1/sub3/c22 ;
  wire \U1/sub3/c23 ;
  wire \U1/sub3/c24 ;
  wire \U1/sub3/c25 ;
  wire \U1/sub3/c26 ;
  wire \U1/sub3/c27 ;
  wire \U1/sub3/c28 ;
  wire \U1/sub3/c29 ;
  wire \U1/sub3/c3 ;
  wire \U1/sub3/c30 ;
  wire \U1/sub3/c31 ;
  wire \U1/sub3/c4 ;
  wire \U1/sub3/c5 ;
  wire \U1/sub3/c6 ;
  wire \U1/sub3/c7 ;
  wire \U1/sub3/c8 ;
  wire \U1/sub3/c9 ;
  wire \U1/sub4/c0 ;
  wire \U1/sub4/c1 ;
  wire \U1/sub4/c10 ;
  wire \U1/sub4/c11 ;
  wire \U1/sub4/c12 ;
  wire \U1/sub4/c13 ;
  wire \U1/sub4/c14 ;
  wire \U1/sub4/c15 ;
  wire \U1/sub4/c16 ;
  wire \U1/sub4/c17 ;
  wire \U1/sub4/c18 ;
  wire \U1/sub4/c19 ;
  wire \U1/sub4/c2 ;
  wire \U1/sub4/c20 ;
  wire \U1/sub4/c21 ;
  wire \U1/sub4/c22 ;
  wire \U1/sub4/c23 ;
  wire \U1/sub4/c24 ;
  wire \U1/sub4/c25 ;
  wire \U1/sub4/c26 ;
  wire \U1/sub4/c27 ;
  wire \U1/sub4/c28 ;
  wire \U1/sub4/c29 ;
  wire \U1/sub4/c3 ;
  wire \U1/sub4/c30 ;
  wire \U1/sub4/c31 ;
  wire \U1/sub4/c4 ;
  wire \U1/sub4/c5 ;
  wire \U1/sub4/c6 ;
  wire \U1/sub4/c7 ;
  wire \U1/sub4/c8 ;
  wire \U1/sub4/c9 ;
  wire \U2/add0/c0 ;
  wire \U2/add0/c1 ;
  wire \U2/add0/c2 ;
  wire \U2/add0/c3 ;
  wire \U2/add0/c4 ;
  wire \U2/add0/c5 ;
  wire \U2/add0/c6 ;
  wire \U2/add0/c7 ;
  wire \U2/lt0_c0 ;
  wire \U2/lt0_c1 ;
  wire \U2/lt0_c2 ;
  wire \U2/lt0_c3 ;
  wire \U2/lt0_c4 ;
  wire \U2/lt0_c5 ;
  wire \U2/lt0_c6 ;
  wire \U2/lt0_c7 ;
  wire \U2/lt0_c8 ;
  wire \U2/mux11_sel_is_2_o ;
  wire \U2/mux13_b7_sel_is_2_o ;
  wire \U2/n12 ;
  wire \U2/n15 ;
  wire \U2/n23 ;
  wire \U2/n24 ;
  wire \U3/add0/c0 ;
  wire \U3/add0/c1 ;
  wire \U3/add0/c2 ;
  wire \U3/add0/c3 ;
  wire \U3/add0/c4 ;
  wire \U3/add0/c5 ;
  wire \U3/add0/c6 ;
  wire \U3/lt0_c0 ;
  wire \U3/lt0_c1 ;
  wire \U3/lt0_c2 ;
  wire \U3/lt0_c3 ;
  wire \U3/lt0_c4 ;
  wire \U3/lt0_c5 ;
  wire \U3/lt0_c6 ;
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

  reg_ar_as_w1 \C1/CLK_OUT_reg  (
    .clk(CLK_50M),
    .d(\C1/n2 ),
    .en(\C1/n1 ),
    .reset(1'b0),
    .set(~nRST_pad),
    .q(UART_CLK));  // Source/CLK_MOD.v(32)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u0  (
    .a(\C1/Count [0]),
    .b(1'b1),
    .c(\C1/add0/c0 ),
    .o({\C1/add0/c1 ,\C1/n3 [0]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u1  (
    .a(\C1/Count [1]),
    .b(1'b0),
    .c(\C1/add0/c1 ),
    .o({\C1/add0/c2 ,\C1/n3 [1]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u10  (
    .a(\C1/Count [10]),
    .b(1'b0),
    .c(\C1/add0/c10 ),
    .o({\C1/add0/c11 ,\C1/n3 [10]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u11  (
    .a(\C1/Count [11]),
    .b(1'b0),
    .c(\C1/add0/c11 ),
    .o({\C1/add0/c12 ,\C1/n3 [11]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u12  (
    .a(\C1/Count [12]),
    .b(1'b0),
    .c(\C1/add0/c12 ),
    .o({\C1/add0/c13 ,\C1/n3 [12]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u13  (
    .a(\C1/Count [13]),
    .b(1'b0),
    .c(\C1/add0/c13 ),
    .o({\C1/add0/c14 ,\C1/n3 [13]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u14  (
    .a(\C1/Count [14]),
    .b(1'b0),
    .c(\C1/add0/c14 ),
    .o({\C1/add0/c15 ,\C1/n3 [14]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u15  (
    .a(\C1/Count [15]),
    .b(1'b0),
    .c(\C1/add0/c15 ),
    .o({\C1/add0/c16 ,\C1/n3 [15]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u16  (
    .a(\C1/Count [16]),
    .b(1'b0),
    .c(\C1/add0/c16 ),
    .o({\C1/add0/c17 ,\C1/n3 [16]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u17  (
    .a(\C1/Count [17]),
    .b(1'b0),
    .c(\C1/add0/c17 ),
    .o({\C1/add0/c18 ,\C1/n3 [17]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u18  (
    .a(\C1/Count [18]),
    .b(1'b0),
    .c(\C1/add0/c18 ),
    .o({\C1/add0/c19 ,\C1/n3 [18]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u19  (
    .a(\C1/Count [19]),
    .b(1'b0),
    .c(\C1/add0/c19 ),
    .o({\C1/add0/c20 ,\C1/n3 [19]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u2  (
    .a(\C1/Count [2]),
    .b(1'b0),
    .c(\C1/add0/c2 ),
    .o({\C1/add0/c3 ,\C1/n3 [2]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u20  (
    .a(\C1/Count [20]),
    .b(1'b0),
    .c(\C1/add0/c20 ),
    .o({\C1/add0/c21 ,\C1/n3 [20]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u21  (
    .a(\C1/Count [21]),
    .b(1'b0),
    .c(\C1/add0/c21 ),
    .o({\C1/add0/c22 ,\C1/n3 [21]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u22  (
    .a(\C1/Count [22]),
    .b(1'b0),
    .c(\C1/add0/c22 ),
    .o({\C1/add0/c23 ,\C1/n3 [22]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u23  (
    .a(\C1/Count [23]),
    .b(1'b0),
    .c(\C1/add0/c23 ),
    .o({\C1/add0/c24 ,\C1/n3 [23]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u24  (
    .a(\C1/Count [24]),
    .b(1'b0),
    .c(\C1/add0/c24 ),
    .o({\C1/add0/c25 ,\C1/n3 [24]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u25  (
    .a(\C1/Count [25]),
    .b(1'b0),
    .c(\C1/add0/c25 ),
    .o({\C1/add0/c26 ,\C1/n3 [25]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u26  (
    .a(\C1/Count [26]),
    .b(1'b0),
    .c(\C1/add0/c26 ),
    .o({\C1/add0/c27 ,\C1/n3 [26]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u27  (
    .a(\C1/Count [27]),
    .b(1'b0),
    .c(\C1/add0/c27 ),
    .o({\C1/add0/c28 ,\C1/n3 [27]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u28  (
    .a(\C1/Count [28]),
    .b(1'b0),
    .c(\C1/add0/c28 ),
    .o({\C1/add0/c29 ,\C1/n3 [28]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u29  (
    .a(\C1/Count [29]),
    .b(1'b0),
    .c(\C1/add0/c29 ),
    .o({\C1/add0/c30 ,\C1/n3 [29]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u3  (
    .a(\C1/Count [3]),
    .b(1'b0),
    .c(\C1/add0/c3 ),
    .o({\C1/add0/c4 ,\C1/n3 [3]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u30  (
    .a(\C1/Count [30]),
    .b(1'b0),
    .c(\C1/add0/c30 ),
    .o({\C1/add0/c31 ,\C1/n3 [30]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u31  (
    .a(\C1/Count [31]),
    .b(1'b0),
    .c(\C1/add0/c31 ),
    .o({open_n0,\C1/n3 [31]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u4  (
    .a(\C1/Count [4]),
    .b(1'b0),
    .c(\C1/add0/c4 ),
    .o({\C1/add0/c5 ,\C1/n3 [4]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u5  (
    .a(\C1/Count [5]),
    .b(1'b0),
    .c(\C1/add0/c5 ),
    .o({\C1/add0/c6 ,\C1/n3 [5]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u6  (
    .a(\C1/Count [6]),
    .b(1'b0),
    .c(\C1/add0/c6 ),
    .o({\C1/add0/c7 ,\C1/n3 [6]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u7  (
    .a(\C1/Count [7]),
    .b(1'b0),
    .c(\C1/add0/c7 ),
    .o({\C1/add0/c8 ,\C1/n3 [7]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u8  (
    .a(\C1/Count [8]),
    .b(1'b0),
    .c(\C1/add0/c8 ),
    .o({\C1/add0/c9 ,\C1/n3 [8]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \C1/add0/u9  (
    .a(\C1/Count [9]),
    .b(1'b0),
    .c(\C1/add0/c9 ),
    .o({\C1/add0/c10 ,\C1/n3 [9]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \C1/add0/ucin  (
    .a(1'b0),
    .o({\C1/add0/c0 ,open_n3}));
  reg_ar_as_w1 \C1/reg0_b0  (
    .clk(CLK_50M),
    .d(\C1/n5 [0]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [0]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b1  (
    .clk(CLK_50M),
    .d(\C1/n5 [1]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [1]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b10  (
    .clk(CLK_50M),
    .d(\C1/n5 [10]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [10]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b11  (
    .clk(CLK_50M),
    .d(\C1/n5 [11]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [11]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b12  (
    .clk(CLK_50M),
    .d(\C1/n5 [12]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [12]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b13  (
    .clk(CLK_50M),
    .d(\C1/n5 [13]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [13]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b14  (
    .clk(CLK_50M),
    .d(\C1/n5 [14]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [14]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b15  (
    .clk(CLK_50M),
    .d(\C1/n5 [15]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [15]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b16  (
    .clk(CLK_50M),
    .d(\C1/n5 [16]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [16]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b17  (
    .clk(CLK_50M),
    .d(\C1/n5 [17]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [17]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b18  (
    .clk(CLK_50M),
    .d(\C1/n5 [18]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [18]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b19  (
    .clk(CLK_50M),
    .d(\C1/n5 [19]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [19]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b2  (
    .clk(CLK_50M),
    .d(\C1/n5 [2]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [2]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b20  (
    .clk(CLK_50M),
    .d(\C1/n5 [20]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [20]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b21  (
    .clk(CLK_50M),
    .d(\C1/n5 [21]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [21]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b22  (
    .clk(CLK_50M),
    .d(\C1/n5 [22]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [22]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b23  (
    .clk(CLK_50M),
    .d(\C1/n5 [23]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [23]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b24  (
    .clk(CLK_50M),
    .d(\C1/n5 [24]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [24]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b25  (
    .clk(CLK_50M),
    .d(\C1/n5 [25]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [25]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b26  (
    .clk(CLK_50M),
    .d(\C1/n5 [26]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [26]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b27  (
    .clk(CLK_50M),
    .d(\C1/n5 [27]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [27]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b28  (
    .clk(CLK_50M),
    .d(\C1/n5 [28]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [28]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b29  (
    .clk(CLK_50M),
    .d(\C1/n5 [29]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [29]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b3  (
    .clk(CLK_50M),
    .d(\C1/n5 [3]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [3]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b30  (
    .clk(CLK_50M),
    .d(\C1/n5 [30]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [30]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b31  (
    .clk(CLK_50M),
    .d(\C1/n5 [31]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [31]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b4  (
    .clk(CLK_50M),
    .d(\C1/n5 [4]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [4]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b5  (
    .clk(CLK_50M),
    .d(\C1/n5 [5]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [5]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b6  (
    .clk(CLK_50M),
    .d(\C1/n5 [6]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [6]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b7  (
    .clk(CLK_50M),
    .d(\C1/n5 [7]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [7]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b8  (
    .clk(CLK_50M),
    .d(\C1/n5 [8]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [8]));  // Source/CLK_MOD.v(32)
  reg_ar_as_w1 \C1/reg0_b9  (
    .clk(CLK_50M),
    .d(\C1/n5 [9]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\C1/Count [9]));  // Source/CLK_MOD.v(32)
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
    .dia({open_n4,FIFO_DI}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(FIFO_RE),
    .rprst(\C1/n0 ),
    .rst(\C1/n0 ),
    .we(FIFO_FULL_neg),
    .doa({open_n16,FIFO_DO}),
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
    .clkc({open_n26,open_n27,open_n28,CLK_50M,\Pll/clk0_buf }));  // al_ip/SysPll.v(76)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/B_PWM/add0/u0  (
    .a(\U1/B_PWM/PWMCount [0]),
    .b(1'b1),
    .c(\U1/B_PWM/add0/c0 ),
    .o({\U1/B_PWM/add0/c1 ,\U1/B_PWM/n2 [0]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/B_PWM/add0/u1  (
    .a(\U1/B_PWM/PWMCount [1]),
    .b(1'b0),
    .c(\U1/B_PWM/add0/c1 ),
    .o({\U1/B_PWM/add0/c2 ,\U1/B_PWM/n2 [1]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/B_PWM/add0/u10  (
    .a(\U1/B_PWM/PWMCount [10]),
    .b(1'b0),
    .c(\U1/B_PWM/add0/c10 ),
    .o({\U1/B_PWM/add0/c11 ,\U1/B_PWM/n2 [10]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/B_PWM/add0/u11  (
    .a(\U1/B_PWM/PWMCount [11]),
    .b(1'b0),
    .c(\U1/B_PWM/add0/c11 ),
    .o({\U1/B_PWM/add0/c12 ,\U1/B_PWM/n2 [11]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/B_PWM/add0/u12  (
    .a(\U1/B_PWM/PWMCount [12]),
    .b(1'b0),
    .c(\U1/B_PWM/add0/c12 ),
    .o({\U1/B_PWM/add0/c13 ,\U1/B_PWM/n2 [12]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/B_PWM/add0/u13  (
    .a(\U1/B_PWM/PWMCount [13]),
    .b(1'b0),
    .c(\U1/B_PWM/add0/c13 ),
    .o({\U1/B_PWM/add0/c14 ,\U1/B_PWM/n2 [13]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/B_PWM/add0/u14  (
    .a(\U1/B_PWM/PWMCount [14]),
    .b(1'b0),
    .c(\U1/B_PWM/add0/c14 ),
    .o({\U1/B_PWM/add0/c15 ,\U1/B_PWM/n2 [14]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/B_PWM/add0/u15  (
    .a(\U1/B_PWM/PWMCount [15]),
    .b(1'b0),
    .c(\U1/B_PWM/add0/c15 ),
    .o({open_n39,\U1/B_PWM/n2 [15]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/B_PWM/add0/u2  (
    .a(\U1/B_PWM/PWMCount [2]),
    .b(1'b0),
    .c(\U1/B_PWM/add0/c2 ),
    .o({\U1/B_PWM/add0/c3 ,\U1/B_PWM/n2 [2]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/B_PWM/add0/u3  (
    .a(\U1/B_PWM/PWMCount [3]),
    .b(1'b0),
    .c(\U1/B_PWM/add0/c3 ),
    .o({\U1/B_PWM/add0/c4 ,\U1/B_PWM/n2 [3]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/B_PWM/add0/u4  (
    .a(\U1/B_PWM/PWMCount [4]),
    .b(1'b0),
    .c(\U1/B_PWM/add0/c4 ),
    .o({\U1/B_PWM/add0/c5 ,\U1/B_PWM/n2 [4]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/B_PWM/add0/u5  (
    .a(\U1/B_PWM/PWMCount [5]),
    .b(1'b0),
    .c(\U1/B_PWM/add0/c5 ),
    .o({\U1/B_PWM/add0/c6 ,\U1/B_PWM/n2 [5]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/B_PWM/add0/u6  (
    .a(\U1/B_PWM/PWMCount [6]),
    .b(1'b0),
    .c(\U1/B_PWM/add0/c6 ),
    .o({\U1/B_PWM/add0/c7 ,\U1/B_PWM/n2 [6]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/B_PWM/add0/u7  (
    .a(\U1/B_PWM/PWMCount [7]),
    .b(1'b0),
    .c(\U1/B_PWM/add0/c7 ),
    .o({\U1/B_PWM/add0/c8 ,\U1/B_PWM/n2 [7]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/B_PWM/add0/u8  (
    .a(\U1/B_PWM/PWMCount [8]),
    .b(1'b0),
    .c(\U1/B_PWM/add0/c8 ),
    .o({\U1/B_PWM/add0/c9 ,\U1/B_PWM/n2 [8]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/B_PWM/add0/u9  (
    .a(\U1/B_PWM/PWMCount [9]),
    .b(1'b0),
    .c(\U1/B_PWM/add0/c9 ),
    .o({\U1/B_PWM/add0/c10 ,\U1/B_PWM/n2 [9]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \U1/B_PWM/add0/ucin  (
    .a(1'b0),
    .o({\U1/B_PWM/add0/c0 ,open_n42}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_0  (
    .a(1'b0),
    .b(\U1/B_PWM/PWMCount [0]),
    .c(\U1/B_PWM/lt0_c0 ),
    .o({\U1/B_PWM/lt0_c1 ,open_n43}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_1  (
    .a(1'b0),
    .b(\U1/B_PWM/PWMCount [1]),
    .c(\U1/B_PWM/lt0_c1 ),
    .o({\U1/B_PWM/lt0_c2 ,open_n44}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_10  (
    .a(1'b0),
    .b(\U1/B_PWM/PWMCount [10]),
    .c(\U1/B_PWM/lt0_c10 ),
    .o({\U1/B_PWM/lt0_c11 ,open_n45}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_11  (
    .a(1'b0),
    .b(\U1/B_PWM/PWMCount [11]),
    .c(\U1/B_PWM/lt0_c11 ),
    .o({\U1/B_PWM/lt0_c12 ,open_n46}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_12  (
    .a(1'b0),
    .b(\U1/B_PWM/PWMCount [12]),
    .c(\U1/B_PWM/lt0_c12 ),
    .o({\U1/B_PWM/lt0_c13 ,open_n47}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_13  (
    .a(1'b0),
    .b(\U1/B_PWM/PWMCount [13]),
    .c(\U1/B_PWM/lt0_c13 ),
    .o({\U1/B_PWM/lt0_c14 ,open_n48}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_14  (
    .a(1'b0),
    .b(\U1/B_PWM/PWMCount [14]),
    .c(\U1/B_PWM/lt0_c14 ),
    .o({\U1/B_PWM/lt0_c15 ,open_n49}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_15  (
    .a(1'b0),
    .b(\U1/B_PWM/PWMCount [15]),
    .c(\U1/B_PWM/lt0_c15 ),
    .o({\U1/B_PWM/lt0_c16 ,open_n50}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_2  (
    .a(1'b0),
    .b(\U1/B_PWM/PWMCount [2]),
    .c(\U1/B_PWM/lt0_c2 ),
    .o({\U1/B_PWM/lt0_c3 ,open_n51}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_3  (
    .a(1'b1),
    .b(\U1/B_PWM/PWMCount [3]),
    .c(\U1/B_PWM/lt0_c3 ),
    .o({\U1/B_PWM/lt0_c4 ,open_n52}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_4  (
    .a(1'b0),
    .b(\U1/B_PWM/PWMCount [4]),
    .c(\U1/B_PWM/lt0_c4 ),
    .o({\U1/B_PWM/lt0_c5 ,open_n53}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_5  (
    .a(1'b1),
    .b(\U1/B_PWM/PWMCount [5]),
    .c(\U1/B_PWM/lt0_c5 ),
    .o({\U1/B_PWM/lt0_c6 ,open_n54}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_6  (
    .a(1'b1),
    .b(\U1/B_PWM/PWMCount [6]),
    .c(\U1/B_PWM/lt0_c6 ),
    .o({\U1/B_PWM/lt0_c7 ,open_n55}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_7  (
    .a(1'b1),
    .b(\U1/B_PWM/PWMCount [7]),
    .c(\U1/B_PWM/lt0_c7 ),
    .o({\U1/B_PWM/lt0_c8 ,open_n56}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_8  (
    .a(1'b1),
    .b(\U1/B_PWM/PWMCount [8]),
    .c(\U1/B_PWM/lt0_c8 ),
    .o({\U1/B_PWM/lt0_c9 ,open_n57}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_9  (
    .a(1'b1),
    .b(\U1/B_PWM/PWMCount [9]),
    .c(\U1/B_PWM/lt0_c9 ),
    .o({\U1/B_PWM/lt0_c10 ,open_n58}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/B_PWM/lt0_cin  (
    .a(1'b1),
    .o({\U1/B_PWM/lt0_c0 ,open_n61}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/B_PWM/lt0_c16 ),
    .o({open_n62,\U1/B_PWM/n1 }));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_0  (
    .a(\U1/B_PWM/PWMCount [0]),
    .b(\U1/PWM_BData [16]),
    .c(\U1/B_PWM/lt1_c0 ),
    .o({\U1/B_PWM/lt1_c1 ,open_n63}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_1  (
    .a(\U1/B_PWM/PWMCount [1]),
    .b(\U1/PWM_BData [17]),
    .c(\U1/B_PWM/lt1_c1 ),
    .o({\U1/B_PWM/lt1_c2 ,open_n64}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_10  (
    .a(\U1/B_PWM/PWMCount [10]),
    .b(\U1/PWM_BData [26]),
    .c(\U1/B_PWM/lt1_c10 ),
    .o({\U1/B_PWM/lt1_c11 ,open_n65}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_11  (
    .a(\U1/B_PWM/PWMCount [11]),
    .b(\U1/PWM_BData [27]),
    .c(\U1/B_PWM/lt1_c11 ),
    .o({\U1/B_PWM/lt1_c12 ,open_n66}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_12  (
    .a(\U1/B_PWM/PWMCount [12]),
    .b(\U1/PWM_BData [28]),
    .c(\U1/B_PWM/lt1_c12 ),
    .o({\U1/B_PWM/lt1_c13 ,open_n67}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_13  (
    .a(\U1/B_PWM/PWMCount [13]),
    .b(\U1/PWM_BData [29]),
    .c(\U1/B_PWM/lt1_c13 ),
    .o({\U1/B_PWM/lt1_c14 ,open_n68}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_14  (
    .a(\U1/B_PWM/PWMCount [14]),
    .b(\U1/PWM_BData [30]),
    .c(\U1/B_PWM/lt1_c14 ),
    .o({\U1/B_PWM/lt1_c15 ,open_n69}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_15  (
    .a(\U1/B_PWM/PWMCount [15]),
    .b(\U1/PWM_BData [31]),
    .c(\U1/B_PWM/lt1_c15 ),
    .o({\U1/B_PWM/lt1_c16 ,open_n70}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_2  (
    .a(\U1/B_PWM/PWMCount [2]),
    .b(\U1/PWM_BData [18]),
    .c(\U1/B_PWM/lt1_c2 ),
    .o({\U1/B_PWM/lt1_c3 ,open_n71}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_3  (
    .a(\U1/B_PWM/PWMCount [3]),
    .b(\U1/PWM_BData [19]),
    .c(\U1/B_PWM/lt1_c3 ),
    .o({\U1/B_PWM/lt1_c4 ,open_n72}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_4  (
    .a(\U1/B_PWM/PWMCount [4]),
    .b(\U1/PWM_BData [20]),
    .c(\U1/B_PWM/lt1_c4 ),
    .o({\U1/B_PWM/lt1_c5 ,open_n73}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_5  (
    .a(\U1/B_PWM/PWMCount [5]),
    .b(\U1/PWM_BData [21]),
    .c(\U1/B_PWM/lt1_c5 ),
    .o({\U1/B_PWM/lt1_c6 ,open_n74}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_6  (
    .a(\U1/B_PWM/PWMCount [6]),
    .b(\U1/PWM_BData [22]),
    .c(\U1/B_PWM/lt1_c6 ),
    .o({\U1/B_PWM/lt1_c7 ,open_n75}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_7  (
    .a(\U1/B_PWM/PWMCount [7]),
    .b(\U1/PWM_BData [23]),
    .c(\U1/B_PWM/lt1_c7 ),
    .o({\U1/B_PWM/lt1_c8 ,open_n76}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_8  (
    .a(\U1/B_PWM/PWMCount [8]),
    .b(\U1/PWM_BData [24]),
    .c(\U1/B_PWM/lt1_c8 ),
    .o({\U1/B_PWM/lt1_c9 ,open_n77}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_9  (
    .a(\U1/B_PWM/PWMCount [9]),
    .b(\U1/PWM_BData [25]),
    .c(\U1/B_PWM/lt1_c9 ),
    .o({\U1/B_PWM/lt1_c10 ,open_n78}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/B_PWM/lt1_cin  (
    .a(1'b1),
    .o({\U1/B_PWM/lt1_c0 ,open_n81}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/B_PWM/lt1_c16 ),
    .o({open_n82,\U1/B_PWM/n4 }));
  reg_ar_as_w1 \U1/B_PWM/reg0_b0  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [0]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [0]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b1  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [1]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [1]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b10  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [10]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [10]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b11  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [11]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [11]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b12  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [12]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [12]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b13  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [13]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [13]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b14  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [14]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [14]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b15  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [15]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [15]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b2  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [2]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [2]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b3  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [3]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [3]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b4  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [4]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [4]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b5  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [5]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [5]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b6  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [6]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [6]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b7  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [7]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [7]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b8  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [8]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [8]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/B_PWM/reg0_b9  (
    .clk(CLK_50M),
    .d(\U1/B_PWM/n3 [9]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/B_PWM/PWMCount [9]));  // Source/PWM.v(26)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/G_PWM/add0/u0  (
    .a(\U1/G_PWM/PWMCount [0]),
    .b(1'b1),
    .c(\U1/G_PWM/add0/c0 ),
    .o({\U1/G_PWM/add0/c1 ,\U1/G_PWM/n2 [0]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/G_PWM/add0/u1  (
    .a(\U1/G_PWM/PWMCount [1]),
    .b(1'b0),
    .c(\U1/G_PWM/add0/c1 ),
    .o({\U1/G_PWM/add0/c2 ,\U1/G_PWM/n2 [1]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/G_PWM/add0/u10  (
    .a(\U1/G_PWM/PWMCount [10]),
    .b(1'b0),
    .c(\U1/G_PWM/add0/c10 ),
    .o({\U1/G_PWM/add0/c11 ,\U1/G_PWM/n2 [10]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/G_PWM/add0/u11  (
    .a(\U1/G_PWM/PWMCount [11]),
    .b(1'b0),
    .c(\U1/G_PWM/add0/c11 ),
    .o({\U1/G_PWM/add0/c12 ,\U1/G_PWM/n2 [11]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/G_PWM/add0/u12  (
    .a(\U1/G_PWM/PWMCount [12]),
    .b(1'b0),
    .c(\U1/G_PWM/add0/c12 ),
    .o({\U1/G_PWM/add0/c13 ,\U1/G_PWM/n2 [12]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/G_PWM/add0/u13  (
    .a(\U1/G_PWM/PWMCount [13]),
    .b(1'b0),
    .c(\U1/G_PWM/add0/c13 ),
    .o({\U1/G_PWM/add0/c14 ,\U1/G_PWM/n2 [13]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/G_PWM/add0/u14  (
    .a(\U1/G_PWM/PWMCount [14]),
    .b(1'b0),
    .c(\U1/G_PWM/add0/c14 ),
    .o({\U1/G_PWM/add0/c15 ,\U1/G_PWM/n2 [14]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/G_PWM/add0/u15  (
    .a(\U1/G_PWM/PWMCount [15]),
    .b(1'b0),
    .c(\U1/G_PWM/add0/c15 ),
    .o({open_n83,\U1/G_PWM/n2 [15]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/G_PWM/add0/u2  (
    .a(\U1/G_PWM/PWMCount [2]),
    .b(1'b0),
    .c(\U1/G_PWM/add0/c2 ),
    .o({\U1/G_PWM/add0/c3 ,\U1/G_PWM/n2 [2]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/G_PWM/add0/u3  (
    .a(\U1/G_PWM/PWMCount [3]),
    .b(1'b0),
    .c(\U1/G_PWM/add0/c3 ),
    .o({\U1/G_PWM/add0/c4 ,\U1/G_PWM/n2 [3]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/G_PWM/add0/u4  (
    .a(\U1/G_PWM/PWMCount [4]),
    .b(1'b0),
    .c(\U1/G_PWM/add0/c4 ),
    .o({\U1/G_PWM/add0/c5 ,\U1/G_PWM/n2 [4]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/G_PWM/add0/u5  (
    .a(\U1/G_PWM/PWMCount [5]),
    .b(1'b0),
    .c(\U1/G_PWM/add0/c5 ),
    .o({\U1/G_PWM/add0/c6 ,\U1/G_PWM/n2 [5]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/G_PWM/add0/u6  (
    .a(\U1/G_PWM/PWMCount [6]),
    .b(1'b0),
    .c(\U1/G_PWM/add0/c6 ),
    .o({\U1/G_PWM/add0/c7 ,\U1/G_PWM/n2 [6]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/G_PWM/add0/u7  (
    .a(\U1/G_PWM/PWMCount [7]),
    .b(1'b0),
    .c(\U1/G_PWM/add0/c7 ),
    .o({\U1/G_PWM/add0/c8 ,\U1/G_PWM/n2 [7]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/G_PWM/add0/u8  (
    .a(\U1/G_PWM/PWMCount [8]),
    .b(1'b0),
    .c(\U1/G_PWM/add0/c8 ),
    .o({\U1/G_PWM/add0/c9 ,\U1/G_PWM/n2 [8]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/G_PWM/add0/u9  (
    .a(\U1/G_PWM/PWMCount [9]),
    .b(1'b0),
    .c(\U1/G_PWM/add0/c9 ),
    .o({\U1/G_PWM/add0/c10 ,\U1/G_PWM/n2 [9]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \U1/G_PWM/add0/ucin  (
    .a(1'b0),
    .o({\U1/G_PWM/add0/c0 ,open_n86}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_0  (
    .a(1'b0),
    .b(\U1/G_PWM/PWMCount [0]),
    .c(\U1/G_PWM/lt0_c0 ),
    .o({\U1/G_PWM/lt0_c1 ,open_n87}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_1  (
    .a(1'b0),
    .b(\U1/G_PWM/PWMCount [1]),
    .c(\U1/G_PWM/lt0_c1 ),
    .o({\U1/G_PWM/lt0_c2 ,open_n88}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_10  (
    .a(1'b0),
    .b(\U1/G_PWM/PWMCount [10]),
    .c(\U1/G_PWM/lt0_c10 ),
    .o({\U1/G_PWM/lt0_c11 ,open_n89}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_11  (
    .a(1'b0),
    .b(\U1/G_PWM/PWMCount [11]),
    .c(\U1/G_PWM/lt0_c11 ),
    .o({\U1/G_PWM/lt0_c12 ,open_n90}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_12  (
    .a(1'b0),
    .b(\U1/G_PWM/PWMCount [12]),
    .c(\U1/G_PWM/lt0_c12 ),
    .o({\U1/G_PWM/lt0_c13 ,open_n91}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_13  (
    .a(1'b0),
    .b(\U1/G_PWM/PWMCount [13]),
    .c(\U1/G_PWM/lt0_c13 ),
    .o({\U1/G_PWM/lt0_c14 ,open_n92}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_14  (
    .a(1'b0),
    .b(\U1/G_PWM/PWMCount [14]),
    .c(\U1/G_PWM/lt0_c14 ),
    .o({\U1/G_PWM/lt0_c15 ,open_n93}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_15  (
    .a(1'b0),
    .b(\U1/G_PWM/PWMCount [15]),
    .c(\U1/G_PWM/lt0_c15 ),
    .o({\U1/G_PWM/lt0_c16 ,open_n94}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_2  (
    .a(1'b0),
    .b(\U1/G_PWM/PWMCount [2]),
    .c(\U1/G_PWM/lt0_c2 ),
    .o({\U1/G_PWM/lt0_c3 ,open_n95}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_3  (
    .a(1'b1),
    .b(\U1/G_PWM/PWMCount [3]),
    .c(\U1/G_PWM/lt0_c3 ),
    .o({\U1/G_PWM/lt0_c4 ,open_n96}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_4  (
    .a(1'b0),
    .b(\U1/G_PWM/PWMCount [4]),
    .c(\U1/G_PWM/lt0_c4 ),
    .o({\U1/G_PWM/lt0_c5 ,open_n97}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_5  (
    .a(1'b1),
    .b(\U1/G_PWM/PWMCount [5]),
    .c(\U1/G_PWM/lt0_c5 ),
    .o({\U1/G_PWM/lt0_c6 ,open_n98}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_6  (
    .a(1'b1),
    .b(\U1/G_PWM/PWMCount [6]),
    .c(\U1/G_PWM/lt0_c6 ),
    .o({\U1/G_PWM/lt0_c7 ,open_n99}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_7  (
    .a(1'b1),
    .b(\U1/G_PWM/PWMCount [7]),
    .c(\U1/G_PWM/lt0_c7 ),
    .o({\U1/G_PWM/lt0_c8 ,open_n100}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_8  (
    .a(1'b1),
    .b(\U1/G_PWM/PWMCount [8]),
    .c(\U1/G_PWM/lt0_c8 ),
    .o({\U1/G_PWM/lt0_c9 ,open_n101}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_9  (
    .a(1'b1),
    .b(\U1/G_PWM/PWMCount [9]),
    .c(\U1/G_PWM/lt0_c9 ),
    .o({\U1/G_PWM/lt0_c10 ,open_n102}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/G_PWM/lt0_cin  (
    .a(1'b1),
    .o({\U1/G_PWM/lt0_c0 ,open_n105}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/G_PWM/lt0_c16 ),
    .o({open_n106,\U1/G_PWM/n1 }));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_0  (
    .a(\U1/G_PWM/PWMCount [0]),
    .b(\U1/PWM_GData [16]),
    .c(\U1/G_PWM/lt1_c0 ),
    .o({\U1/G_PWM/lt1_c1 ,open_n107}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_1  (
    .a(\U1/G_PWM/PWMCount [1]),
    .b(\U1/PWM_GData [17]),
    .c(\U1/G_PWM/lt1_c1 ),
    .o({\U1/G_PWM/lt1_c2 ,open_n108}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_10  (
    .a(\U1/G_PWM/PWMCount [10]),
    .b(\U1/PWM_GData [26]),
    .c(\U1/G_PWM/lt1_c10 ),
    .o({\U1/G_PWM/lt1_c11 ,open_n109}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_11  (
    .a(\U1/G_PWM/PWMCount [11]),
    .b(\U1/PWM_GData [27]),
    .c(\U1/G_PWM/lt1_c11 ),
    .o({\U1/G_PWM/lt1_c12 ,open_n110}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_12  (
    .a(\U1/G_PWM/PWMCount [12]),
    .b(\U1/PWM_GData [28]),
    .c(\U1/G_PWM/lt1_c12 ),
    .o({\U1/G_PWM/lt1_c13 ,open_n111}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_13  (
    .a(\U1/G_PWM/PWMCount [13]),
    .b(\U1/PWM_GData [29]),
    .c(\U1/G_PWM/lt1_c13 ),
    .o({\U1/G_PWM/lt1_c14 ,open_n112}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_14  (
    .a(\U1/G_PWM/PWMCount [14]),
    .b(\U1/PWM_GData [30]),
    .c(\U1/G_PWM/lt1_c14 ),
    .o({\U1/G_PWM/lt1_c15 ,open_n113}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_15  (
    .a(\U1/G_PWM/PWMCount [15]),
    .b(\U1/PWM_GData [31]),
    .c(\U1/G_PWM/lt1_c15 ),
    .o({\U1/G_PWM/lt1_c16 ,open_n114}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_2  (
    .a(\U1/G_PWM/PWMCount [2]),
    .b(\U1/PWM_GData [18]),
    .c(\U1/G_PWM/lt1_c2 ),
    .o({\U1/G_PWM/lt1_c3 ,open_n115}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_3  (
    .a(\U1/G_PWM/PWMCount [3]),
    .b(\U1/PWM_GData [19]),
    .c(\U1/G_PWM/lt1_c3 ),
    .o({\U1/G_PWM/lt1_c4 ,open_n116}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_4  (
    .a(\U1/G_PWM/PWMCount [4]),
    .b(\U1/PWM_GData [20]),
    .c(\U1/G_PWM/lt1_c4 ),
    .o({\U1/G_PWM/lt1_c5 ,open_n117}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_5  (
    .a(\U1/G_PWM/PWMCount [5]),
    .b(\U1/PWM_GData [21]),
    .c(\U1/G_PWM/lt1_c5 ),
    .o({\U1/G_PWM/lt1_c6 ,open_n118}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_6  (
    .a(\U1/G_PWM/PWMCount [6]),
    .b(\U1/PWM_GData [22]),
    .c(\U1/G_PWM/lt1_c6 ),
    .o({\U1/G_PWM/lt1_c7 ,open_n119}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_7  (
    .a(\U1/G_PWM/PWMCount [7]),
    .b(\U1/PWM_GData [23]),
    .c(\U1/G_PWM/lt1_c7 ),
    .o({\U1/G_PWM/lt1_c8 ,open_n120}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_8  (
    .a(\U1/G_PWM/PWMCount [8]),
    .b(\U1/PWM_GData [24]),
    .c(\U1/G_PWM/lt1_c8 ),
    .o({\U1/G_PWM/lt1_c9 ,open_n121}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_9  (
    .a(\U1/G_PWM/PWMCount [9]),
    .b(\U1/PWM_GData [25]),
    .c(\U1/G_PWM/lt1_c9 ),
    .o({\U1/G_PWM/lt1_c10 ,open_n122}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/G_PWM/lt1_cin  (
    .a(1'b1),
    .o({\U1/G_PWM/lt1_c0 ,open_n125}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/G_PWM/lt1_c16 ),
    .o({open_n126,\U1/G_PWM/n4 }));
  reg_ar_as_w1 \U1/G_PWM/reg0_b0  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [0]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [0]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b1  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [1]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [1]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b10  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [10]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [10]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b11  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [11]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [11]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b12  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [12]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [12]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b13  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [13]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [13]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b14  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [14]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [14]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b15  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [15]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [15]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b2  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [2]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [2]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b3  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [3]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [3]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b4  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [4]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [4]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b5  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [5]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [5]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b6  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [6]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [6]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b7  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [7]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [7]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b8  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [8]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [8]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/G_PWM/reg0_b9  (
    .clk(CLK_50M),
    .d(\U1/G_PWM/n3 [9]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/G_PWM/PWMCount [9]));  // Source/PWM.v(26)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/R_PWM/add0/u0  (
    .a(\U1/R_PWM/PWMCount [0]),
    .b(1'b1),
    .c(\U1/R_PWM/add0/c0 ),
    .o({\U1/R_PWM/add0/c1 ,\U1/R_PWM/n2 [0]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/R_PWM/add0/u1  (
    .a(\U1/R_PWM/PWMCount [1]),
    .b(1'b0),
    .c(\U1/R_PWM/add0/c1 ),
    .o({\U1/R_PWM/add0/c2 ,\U1/R_PWM/n2 [1]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/R_PWM/add0/u10  (
    .a(\U1/R_PWM/PWMCount [10]),
    .b(1'b0),
    .c(\U1/R_PWM/add0/c10 ),
    .o({\U1/R_PWM/add0/c11 ,\U1/R_PWM/n2 [10]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/R_PWM/add0/u11  (
    .a(\U1/R_PWM/PWMCount [11]),
    .b(1'b0),
    .c(\U1/R_PWM/add0/c11 ),
    .o({\U1/R_PWM/add0/c12 ,\U1/R_PWM/n2 [11]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/R_PWM/add0/u12  (
    .a(\U1/R_PWM/PWMCount [12]),
    .b(1'b0),
    .c(\U1/R_PWM/add0/c12 ),
    .o({\U1/R_PWM/add0/c13 ,\U1/R_PWM/n2 [12]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/R_PWM/add0/u13  (
    .a(\U1/R_PWM/PWMCount [13]),
    .b(1'b0),
    .c(\U1/R_PWM/add0/c13 ),
    .o({\U1/R_PWM/add0/c14 ,\U1/R_PWM/n2 [13]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/R_PWM/add0/u14  (
    .a(\U1/R_PWM/PWMCount [14]),
    .b(1'b0),
    .c(\U1/R_PWM/add0/c14 ),
    .o({\U1/R_PWM/add0/c15 ,\U1/R_PWM/n2 [14]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/R_PWM/add0/u15  (
    .a(\U1/R_PWM/PWMCount [15]),
    .b(1'b0),
    .c(\U1/R_PWM/add0/c15 ),
    .o({open_n127,\U1/R_PWM/n2 [15]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/R_PWM/add0/u2  (
    .a(\U1/R_PWM/PWMCount [2]),
    .b(1'b0),
    .c(\U1/R_PWM/add0/c2 ),
    .o({\U1/R_PWM/add0/c3 ,\U1/R_PWM/n2 [2]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/R_PWM/add0/u3  (
    .a(\U1/R_PWM/PWMCount [3]),
    .b(1'b0),
    .c(\U1/R_PWM/add0/c3 ),
    .o({\U1/R_PWM/add0/c4 ,\U1/R_PWM/n2 [3]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/R_PWM/add0/u4  (
    .a(\U1/R_PWM/PWMCount [4]),
    .b(1'b0),
    .c(\U1/R_PWM/add0/c4 ),
    .o({\U1/R_PWM/add0/c5 ,\U1/R_PWM/n2 [4]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/R_PWM/add0/u5  (
    .a(\U1/R_PWM/PWMCount [5]),
    .b(1'b0),
    .c(\U1/R_PWM/add0/c5 ),
    .o({\U1/R_PWM/add0/c6 ,\U1/R_PWM/n2 [5]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/R_PWM/add0/u6  (
    .a(\U1/R_PWM/PWMCount [6]),
    .b(1'b0),
    .c(\U1/R_PWM/add0/c6 ),
    .o({\U1/R_PWM/add0/c7 ,\U1/R_PWM/n2 [6]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/R_PWM/add0/u7  (
    .a(\U1/R_PWM/PWMCount [7]),
    .b(1'b0),
    .c(\U1/R_PWM/add0/c7 ),
    .o({\U1/R_PWM/add0/c8 ,\U1/R_PWM/n2 [7]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/R_PWM/add0/u8  (
    .a(\U1/R_PWM/PWMCount [8]),
    .b(1'b0),
    .c(\U1/R_PWM/add0/c8 ),
    .o({\U1/R_PWM/add0/c9 ,\U1/R_PWM/n2 [8]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/R_PWM/add0/u9  (
    .a(\U1/R_PWM/PWMCount [9]),
    .b(1'b0),
    .c(\U1/R_PWM/add0/c9 ),
    .o({\U1/R_PWM/add0/c10 ,\U1/R_PWM/n2 [9]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \U1/R_PWM/add0/ucin  (
    .a(1'b0),
    .o({\U1/R_PWM/add0/c0 ,open_n130}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_0  (
    .a(1'b0),
    .b(\U1/R_PWM/PWMCount [0]),
    .c(\U1/R_PWM/lt0_c0 ),
    .o({\U1/R_PWM/lt0_c1 ,open_n131}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_1  (
    .a(1'b0),
    .b(\U1/R_PWM/PWMCount [1]),
    .c(\U1/R_PWM/lt0_c1 ),
    .o({\U1/R_PWM/lt0_c2 ,open_n132}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_10  (
    .a(1'b0),
    .b(\U1/R_PWM/PWMCount [10]),
    .c(\U1/R_PWM/lt0_c10 ),
    .o({\U1/R_PWM/lt0_c11 ,open_n133}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_11  (
    .a(1'b0),
    .b(\U1/R_PWM/PWMCount [11]),
    .c(\U1/R_PWM/lt0_c11 ),
    .o({\U1/R_PWM/lt0_c12 ,open_n134}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_12  (
    .a(1'b0),
    .b(\U1/R_PWM/PWMCount [12]),
    .c(\U1/R_PWM/lt0_c12 ),
    .o({\U1/R_PWM/lt0_c13 ,open_n135}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_13  (
    .a(1'b0),
    .b(\U1/R_PWM/PWMCount [13]),
    .c(\U1/R_PWM/lt0_c13 ),
    .o({\U1/R_PWM/lt0_c14 ,open_n136}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_14  (
    .a(1'b0),
    .b(\U1/R_PWM/PWMCount [14]),
    .c(\U1/R_PWM/lt0_c14 ),
    .o({\U1/R_PWM/lt0_c15 ,open_n137}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_15  (
    .a(1'b0),
    .b(\U1/R_PWM/PWMCount [15]),
    .c(\U1/R_PWM/lt0_c15 ),
    .o({\U1/R_PWM/lt0_c16 ,open_n138}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_2  (
    .a(1'b0),
    .b(\U1/R_PWM/PWMCount [2]),
    .c(\U1/R_PWM/lt0_c2 ),
    .o({\U1/R_PWM/lt0_c3 ,open_n139}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_3  (
    .a(1'b1),
    .b(\U1/R_PWM/PWMCount [3]),
    .c(\U1/R_PWM/lt0_c3 ),
    .o({\U1/R_PWM/lt0_c4 ,open_n140}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_4  (
    .a(1'b0),
    .b(\U1/R_PWM/PWMCount [4]),
    .c(\U1/R_PWM/lt0_c4 ),
    .o({\U1/R_PWM/lt0_c5 ,open_n141}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_5  (
    .a(1'b1),
    .b(\U1/R_PWM/PWMCount [5]),
    .c(\U1/R_PWM/lt0_c5 ),
    .o({\U1/R_PWM/lt0_c6 ,open_n142}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_6  (
    .a(1'b1),
    .b(\U1/R_PWM/PWMCount [6]),
    .c(\U1/R_PWM/lt0_c6 ),
    .o({\U1/R_PWM/lt0_c7 ,open_n143}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_7  (
    .a(1'b1),
    .b(\U1/R_PWM/PWMCount [7]),
    .c(\U1/R_PWM/lt0_c7 ),
    .o({\U1/R_PWM/lt0_c8 ,open_n144}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_8  (
    .a(1'b1),
    .b(\U1/R_PWM/PWMCount [8]),
    .c(\U1/R_PWM/lt0_c8 ),
    .o({\U1/R_PWM/lt0_c9 ,open_n145}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_9  (
    .a(1'b1),
    .b(\U1/R_PWM/PWMCount [9]),
    .c(\U1/R_PWM/lt0_c9 ),
    .o({\U1/R_PWM/lt0_c10 ,open_n146}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/R_PWM/lt0_cin  (
    .a(1'b1),
    .o({\U1/R_PWM/lt0_c0 ,open_n149}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/R_PWM/lt0_c16 ),
    .o({open_n150,\U1/R_PWM/n1 }));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_0  (
    .a(\U1/R_PWM/PWMCount [0]),
    .b(\U1/PWM_RData [16]),
    .c(\U1/R_PWM/lt1_c0 ),
    .o({\U1/R_PWM/lt1_c1 ,open_n151}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_1  (
    .a(\U1/R_PWM/PWMCount [1]),
    .b(\U1/PWM_RData [17]),
    .c(\U1/R_PWM/lt1_c1 ),
    .o({\U1/R_PWM/lt1_c2 ,open_n152}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_10  (
    .a(\U1/R_PWM/PWMCount [10]),
    .b(\U1/PWM_RData [26]),
    .c(\U1/R_PWM/lt1_c10 ),
    .o({\U1/R_PWM/lt1_c11 ,open_n153}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_11  (
    .a(\U1/R_PWM/PWMCount [11]),
    .b(\U1/PWM_RData [27]),
    .c(\U1/R_PWM/lt1_c11 ),
    .o({\U1/R_PWM/lt1_c12 ,open_n154}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_12  (
    .a(\U1/R_PWM/PWMCount [12]),
    .b(\U1/PWM_RData [28]),
    .c(\U1/R_PWM/lt1_c12 ),
    .o({\U1/R_PWM/lt1_c13 ,open_n155}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_13  (
    .a(\U1/R_PWM/PWMCount [13]),
    .b(\U1/PWM_RData [29]),
    .c(\U1/R_PWM/lt1_c13 ),
    .o({\U1/R_PWM/lt1_c14 ,open_n156}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_14  (
    .a(\U1/R_PWM/PWMCount [14]),
    .b(\U1/PWM_RData [30]),
    .c(\U1/R_PWM/lt1_c14 ),
    .o({\U1/R_PWM/lt1_c15 ,open_n157}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_15  (
    .a(\U1/R_PWM/PWMCount [15]),
    .b(\U1/PWM_RData [31]),
    .c(\U1/R_PWM/lt1_c15 ),
    .o({\U1/R_PWM/lt1_c16 ,open_n158}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_2  (
    .a(\U1/R_PWM/PWMCount [2]),
    .b(\U1/PWM_RData [18]),
    .c(\U1/R_PWM/lt1_c2 ),
    .o({\U1/R_PWM/lt1_c3 ,open_n159}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_3  (
    .a(\U1/R_PWM/PWMCount [3]),
    .b(\U1/PWM_RData [19]),
    .c(\U1/R_PWM/lt1_c3 ),
    .o({\U1/R_PWM/lt1_c4 ,open_n160}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_4  (
    .a(\U1/R_PWM/PWMCount [4]),
    .b(\U1/PWM_RData [20]),
    .c(\U1/R_PWM/lt1_c4 ),
    .o({\U1/R_PWM/lt1_c5 ,open_n161}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_5  (
    .a(\U1/R_PWM/PWMCount [5]),
    .b(\U1/PWM_RData [21]),
    .c(\U1/R_PWM/lt1_c5 ),
    .o({\U1/R_PWM/lt1_c6 ,open_n162}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_6  (
    .a(\U1/R_PWM/PWMCount [6]),
    .b(\U1/PWM_RData [22]),
    .c(\U1/R_PWM/lt1_c6 ),
    .o({\U1/R_PWM/lt1_c7 ,open_n163}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_7  (
    .a(\U1/R_PWM/PWMCount [7]),
    .b(\U1/PWM_RData [23]),
    .c(\U1/R_PWM/lt1_c7 ),
    .o({\U1/R_PWM/lt1_c8 ,open_n164}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_8  (
    .a(\U1/R_PWM/PWMCount [8]),
    .b(\U1/PWM_RData [24]),
    .c(\U1/R_PWM/lt1_c8 ),
    .o({\U1/R_PWM/lt1_c9 ,open_n165}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_9  (
    .a(\U1/R_PWM/PWMCount [9]),
    .b(\U1/PWM_RData [25]),
    .c(\U1/R_PWM/lt1_c9 ),
    .o({\U1/R_PWM/lt1_c10 ,open_n166}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/R_PWM/lt1_cin  (
    .a(1'b1),
    .o({\U1/R_PWM/lt1_c0 ,open_n169}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/R_PWM/lt1_c16 ),
    .o({open_n170,\U1/R_PWM/n4 }));
  reg_ar_as_w1 \U1/R_PWM/reg0_b0  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [0]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [0]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b1  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [1]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [1]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b10  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [10]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [10]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b11  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [11]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [11]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b12  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [12]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [12]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b13  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [13]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [13]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b14  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [14]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [14]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b15  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [15]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [15]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b2  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [2]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [2]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b3  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [3]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [3]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b4  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [4]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [4]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b5  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [5]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [5]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b6  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [6]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [6]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b7  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [7]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [7]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b8  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [8]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [8]));  // Source/PWM.v(26)
  reg_ar_as_w1 \U1/R_PWM/reg0_b9  (
    .clk(CLK_50M),
    .d(\U1/R_PWM/n3 [9]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/R_PWM/PWMCount [9]));  // Source/PWM.v(26)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u0  (
    .a(\U1/Count_LED [0]),
    .b(1'b1),
    .c(\U1/add0/c0 ),
    .o({\U1/add0/c1 ,\U1/n2 [0]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u1  (
    .a(\U1/Count_LED [1]),
    .b(1'b0),
    .c(\U1/add0/c1 ),
    .o({\U1/add0/c2 ,\U1/n2 [1]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u10  (
    .a(\U1/Count_LED [10]),
    .b(1'b0),
    .c(\U1/add0/c10 ),
    .o({\U1/add0/c11 ,\U1/n2 [10]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u11  (
    .a(\U1/Count_LED [11]),
    .b(1'b0),
    .c(\U1/add0/c11 ),
    .o({\U1/add0/c12 ,\U1/n2 [11]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u12  (
    .a(\U1/Count_LED [12]),
    .b(1'b0),
    .c(\U1/add0/c12 ),
    .o({\U1/add0/c13 ,\U1/n2 [12]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u13  (
    .a(\U1/Count_LED [13]),
    .b(1'b0),
    .c(\U1/add0/c13 ),
    .o({\U1/add0/c14 ,\U1/n2 [13]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u14  (
    .a(\U1/Count_LED [14]),
    .b(1'b0),
    .c(\U1/add0/c14 ),
    .o({\U1/add0/c15 ,\U1/n2 [14]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u15  (
    .a(\U1/Count_LED [15]),
    .b(1'b0),
    .c(\U1/add0/c15 ),
    .o({\U1/add0/c16 ,\U1/n2 [15]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u16  (
    .a(\U1/Count_LED [16]),
    .b(1'b0),
    .c(\U1/add0/c16 ),
    .o({\U1/add0/c17 ,\U1/n2 [16]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u17  (
    .a(\U1/Count_LED [17]),
    .b(1'b0),
    .c(\U1/add0/c17 ),
    .o({\U1/add0/c18 ,\U1/n2 [17]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u18  (
    .a(\U1/Count_LED [18]),
    .b(1'b0),
    .c(\U1/add0/c18 ),
    .o({\U1/add0/c19 ,\U1/n2 [18]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u19  (
    .a(\U1/Count_LED [19]),
    .b(1'b0),
    .c(\U1/add0/c19 ),
    .o({\U1/add0/c20 ,\U1/n2 [19]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u2  (
    .a(\U1/Count_LED [2]),
    .b(1'b0),
    .c(\U1/add0/c2 ),
    .o({\U1/add0/c3 ,\U1/n2 [2]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u20  (
    .a(\U1/Count_LED [20]),
    .b(1'b0),
    .c(\U1/add0/c20 ),
    .o({\U1/add0/c21 ,\U1/n2 [20]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u21  (
    .a(\U1/Count_LED [21]),
    .b(1'b0),
    .c(\U1/add0/c21 ),
    .o({\U1/add0/c22 ,\U1/n2 [21]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u22  (
    .a(\U1/Count_LED [22]),
    .b(1'b0),
    .c(\U1/add0/c22 ),
    .o({\U1/add0/c23 ,\U1/n2 [22]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u23  (
    .a(\U1/Count_LED [23]),
    .b(1'b0),
    .c(\U1/add0/c23 ),
    .o({\U1/add0/c24 ,\U1/n2 [23]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u24  (
    .a(\U1/Count_LED [24]),
    .b(1'b0),
    .c(\U1/add0/c24 ),
    .o({\U1/add0/c25 ,\U1/n2 [24]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u25  (
    .a(\U1/Count_LED [25]),
    .b(1'b0),
    .c(\U1/add0/c25 ),
    .o({\U1/add0/c26 ,\U1/n2 [25]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u26  (
    .a(\U1/Count_LED [26]),
    .b(1'b0),
    .c(\U1/add0/c26 ),
    .o({\U1/add0/c27 ,\U1/n2 [26]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u27  (
    .a(\U1/Count_LED [27]),
    .b(1'b0),
    .c(\U1/add0/c27 ),
    .o({\U1/add0/c28 ,\U1/n2 [27]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u28  (
    .a(\U1/Count_LED [28]),
    .b(1'b0),
    .c(\U1/add0/c28 ),
    .o({\U1/add0/c29 ,\U1/n2 [28]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u29  (
    .a(\U1/Count_LED [29]),
    .b(1'b0),
    .c(\U1/add0/c29 ),
    .o({\U1/add0/c30 ,\U1/n2 [29]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u3  (
    .a(\U1/Count_LED [3]),
    .b(1'b0),
    .c(\U1/add0/c3 ),
    .o({\U1/add0/c4 ,\U1/n2 [3]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u30  (
    .a(\U1/Count_LED [30]),
    .b(1'b0),
    .c(\U1/add0/c30 ),
    .o({\U1/add0/c31 ,\U1/n2 [30]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u31  (
    .a(\U1/Count_LED [31]),
    .b(1'b0),
    .c(\U1/add0/c31 ),
    .o({open_n171,\U1/n2 [31]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u4  (
    .a(\U1/Count_LED [4]),
    .b(1'b0),
    .c(\U1/add0/c4 ),
    .o({\U1/add0/c5 ,\U1/n2 [4]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u5  (
    .a(\U1/Count_LED [5]),
    .b(1'b0),
    .c(\U1/add0/c5 ),
    .o({\U1/add0/c6 ,\U1/n2 [5]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u6  (
    .a(\U1/Count_LED [6]),
    .b(1'b0),
    .c(\U1/add0/c6 ),
    .o({\U1/add0/c7 ,\U1/n2 [6]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u7  (
    .a(\U1/Count_LED [7]),
    .b(1'b0),
    .c(\U1/add0/c7 ),
    .o({\U1/add0/c8 ,\U1/n2 [7]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u8  (
    .a(\U1/Count_LED [8]),
    .b(1'b0),
    .c(\U1/add0/c8 ),
    .o({\U1/add0/c9 ,\U1/n2 [8]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U1/add0/u9  (
    .a(\U1/Count_LED [9]),
    .b(1'b0),
    .c(\U1/add0/c9 ),
    .o({\U1/add0/c10 ,\U1/n2 [9]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \U1/add0/ucin  (
    .a(1'b0),
    .o({\U1/add0/c0 ,open_n174}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_0  (
    .a(1'b0),
    .b(\U1/Count_LED [0]),
    .c(\U1/lt0_c0 ),
    .o({\U1/lt0_c1 ,open_n175}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_1  (
    .a(1'b0),
    .b(\U1/Count_LED [1]),
    .c(\U1/lt0_c1 ),
    .o({\U1/lt0_c2 ,open_n176}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_10  (
    .a(1'b0),
    .b(\U1/Count_LED [10]),
    .c(\U1/lt0_c10 ),
    .o({\U1/lt0_c11 ,open_n177}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_11  (
    .a(1'b0),
    .b(\U1/Count_LED [11]),
    .c(\U1/lt0_c11 ),
    .o({\U1/lt0_c12 ,open_n178}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_12  (
    .a(1'b0),
    .b(\U1/Count_LED [12]),
    .c(\U1/lt0_c12 ),
    .o({\U1/lt0_c13 ,open_n179}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_13  (
    .a(1'b0),
    .b(\U1/Count_LED [13]),
    .c(\U1/lt0_c13 ),
    .o({\U1/lt0_c14 ,open_n180}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_14  (
    .a(1'b0),
    .b(\U1/Count_LED [14]),
    .c(\U1/lt0_c14 ),
    .o({\U1/lt0_c15 ,open_n181}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_15  (
    .a(1'b0),
    .b(\U1/Count_LED [15]),
    .c(\U1/lt0_c15 ),
    .o({\U1/lt0_c16 ,open_n182}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_16  (
    .a(1'b0),
    .b(\U1/Count_LED [16]),
    .c(\U1/lt0_c16 ),
    .o({\U1/lt0_c17 ,open_n183}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_17  (
    .a(1'b0),
    .b(\U1/Count_LED [17]),
    .c(\U1/lt0_c17 ),
    .o({\U1/lt0_c18 ,open_n184}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_18  (
    .a(1'b0),
    .b(\U1/Count_LED [18]),
    .c(\U1/lt0_c18 ),
    .o({\U1/lt0_c19 ,open_n185}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_19  (
    .a(1'b1),
    .b(\U1/Count_LED [19]),
    .c(\U1/lt0_c19 ),
    .o({\U1/lt0_c20 ,open_n186}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_2  (
    .a(1'b0),
    .b(\U1/Count_LED [2]),
    .c(\U1/lt0_c2 ),
    .o({\U1/lt0_c3 ,open_n187}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_20  (
    .a(1'b1),
    .b(\U1/Count_LED [20]),
    .c(\U1/lt0_c20 ),
    .o({\U1/lt0_c21 ,open_n188}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_21  (
    .a(1'b1),
    .b(\U1/Count_LED [21]),
    .c(\U1/lt0_c21 ),
    .o({\U1/lt0_c22 ,open_n189}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_22  (
    .a(1'b0),
    .b(\U1/Count_LED [22]),
    .c(\U1/lt0_c22 ),
    .o({\U1/lt0_c23 ,open_n190}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_23  (
    .a(1'b1),
    .b(\U1/Count_LED [23]),
    .c(\U1/lt0_c23 ),
    .o({\U1/lt0_c24 ,open_n191}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_24  (
    .a(1'b1),
    .b(\U1/Count_LED [24]),
    .c(\U1/lt0_c24 ),
    .o({\U1/lt0_c25 ,open_n192}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_25  (
    .a(1'b1),
    .b(\U1/Count_LED [25]),
    .c(\U1/lt0_c25 ),
    .o({\U1/lt0_c26 ,open_n193}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_26  (
    .a(1'b0),
    .b(\U1/Count_LED [26]),
    .c(\U1/lt0_c26 ),
    .o({\U1/lt0_c27 ,open_n194}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_27  (
    .a(1'b1),
    .b(\U1/Count_LED [27]),
    .c(\U1/lt0_c27 ),
    .o({\U1/lt0_c28 ,open_n195}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_28  (
    .a(1'b0),
    .b(\U1/Count_LED [28]),
    .c(\U1/lt0_c28 ),
    .o({\U1/lt0_c29 ,open_n196}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_29  (
    .a(1'b0),
    .b(\U1/Count_LED [29]),
    .c(\U1/lt0_c29 ),
    .o({\U1/lt0_c30 ,open_n197}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_3  (
    .a(1'b0),
    .b(\U1/Count_LED [3]),
    .c(\U1/lt0_c3 ),
    .o({\U1/lt0_c4 ,open_n198}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_30  (
    .a(1'b0),
    .b(\U1/Count_LED [30]),
    .c(\U1/lt0_c30 ),
    .o({\U1/lt0_c31 ,open_n199}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_31  (
    .a(1'b0),
    .b(\U1/Count_LED [31]),
    .c(\U1/lt0_c31 ),
    .o({\U1/lt0_c32 ,open_n200}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_4  (
    .a(1'b0),
    .b(\U1/Count_LED [4]),
    .c(\U1/lt0_c4 ),
    .o({\U1/lt0_c5 ,open_n201}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_5  (
    .a(1'b0),
    .b(\U1/Count_LED [5]),
    .c(\U1/lt0_c5 ),
    .o({\U1/lt0_c6 ,open_n202}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_6  (
    .a(1'b0),
    .b(\U1/Count_LED [6]),
    .c(\U1/lt0_c6 ),
    .o({\U1/lt0_c7 ,open_n203}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_7  (
    .a(1'b0),
    .b(\U1/Count_LED [7]),
    .c(\U1/lt0_c7 ),
    .o({\U1/lt0_c8 ,open_n204}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_8  (
    .a(1'b0),
    .b(\U1/Count_LED [8]),
    .c(\U1/lt0_c8 ),
    .o({\U1/lt0_c9 ,open_n205}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_9  (
    .a(1'b0),
    .b(\U1/Count_LED [9]),
    .c(\U1/lt0_c9 ),
    .o({\U1/lt0_c10 ,open_n206}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/lt0_cin  (
    .a(1'b1),
    .o({\U1/lt0_c0 ,open_n209}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/lt0_c32 ),
    .o({open_n210,\U1/n1 }));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_0  (
    .a(\U1/Count_LED [0]),
    .b(1'b0),
    .c(\U1/lt1_c0 ),
    .o({\U1/lt1_c1 ,open_n211}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_1  (
    .a(\U1/Count_LED [1]),
    .b(1'b0),
    .c(\U1/lt1_c1 ),
    .o({\U1/lt1_c2 ,open_n212}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_10  (
    .a(\U1/Count_LED [10]),
    .b(1'b0),
    .c(\U1/lt1_c10 ),
    .o({\U1/lt1_c11 ,open_n213}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_11  (
    .a(\U1/Count_LED [11]),
    .b(1'b0),
    .c(\U1/lt1_c11 ),
    .o({\U1/lt1_c12 ,open_n214}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_12  (
    .a(\U1/Count_LED [12]),
    .b(1'b0),
    .c(\U1/lt1_c12 ),
    .o({\U1/lt1_c13 ,open_n215}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_13  (
    .a(\U1/Count_LED [13]),
    .b(1'b0),
    .c(\U1/lt1_c13 ),
    .o({\U1/lt1_c14 ,open_n216}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_14  (
    .a(\U1/Count_LED [14]),
    .b(1'b0),
    .c(\U1/lt1_c14 ),
    .o({\U1/lt1_c15 ,open_n217}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_15  (
    .a(\U1/Count_LED [15]),
    .b(1'b0),
    .c(\U1/lt1_c15 ),
    .o({\U1/lt1_c16 ,open_n218}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_16  (
    .a(\U1/Count_LED [16]),
    .b(1'b0),
    .c(\U1/lt1_c16 ),
    .o({\U1/lt1_c17 ,open_n219}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_17  (
    .a(\U1/Count_LED [17]),
    .b(1'b0),
    .c(\U1/lt1_c17 ),
    .o({\U1/lt1_c18 ,open_n220}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_18  (
    .a(\U1/Count_LED [18]),
    .b(1'b0),
    .c(\U1/lt1_c18 ),
    .o({\U1/lt1_c19 ,open_n221}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_19  (
    .a(\U1/Count_LED [19]),
    .b(1'b1),
    .c(\U1/lt1_c19 ),
    .o({\U1/lt1_c20 ,open_n222}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_2  (
    .a(\U1/Count_LED [2]),
    .b(1'b0),
    .c(\U1/lt1_c2 ),
    .o({\U1/lt1_c3 ,open_n223}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_20  (
    .a(\U1/Count_LED [20]),
    .b(1'b0),
    .c(\U1/lt1_c20 ),
    .o({\U1/lt1_c21 ,open_n224}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_21  (
    .a(\U1/Count_LED [21]),
    .b(1'b1),
    .c(\U1/lt1_c21 ),
    .o({\U1/lt1_c22 ,open_n225}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_22  (
    .a(\U1/Count_LED [22]),
    .b(1'b1),
    .c(\U1/lt1_c22 ),
    .o({\U1/lt1_c23 ,open_n226}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_23  (
    .a(\U1/Count_LED [23]),
    .b(1'b1),
    .c(\U1/lt1_c23 ),
    .o({\U1/lt1_c24 ,open_n227}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_24  (
    .a(\U1/Count_LED [24]),
    .b(1'b1),
    .c(\U1/lt1_c24 ),
    .o({\U1/lt1_c25 ,open_n228}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_25  (
    .a(\U1/Count_LED [25]),
    .b(1'b1),
    .c(\U1/lt1_c25 ),
    .o({\U1/lt1_c26 ,open_n229}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_26  (
    .a(\U1/Count_LED [26]),
    .b(1'b0),
    .c(\U1/lt1_c26 ),
    .o({\U1/lt1_c27 ,open_n230}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_27  (
    .a(\U1/Count_LED [27]),
    .b(1'b0),
    .c(\U1/lt1_c27 ),
    .o({\U1/lt1_c28 ,open_n231}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_28  (
    .a(\U1/Count_LED [28]),
    .b(1'b0),
    .c(\U1/lt1_c28 ),
    .o({\U1/lt1_c29 ,open_n232}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_29  (
    .a(\U1/Count_LED [29]),
    .b(1'b0),
    .c(\U1/lt1_c29 ),
    .o({\U1/lt1_c30 ,open_n233}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_3  (
    .a(\U1/Count_LED [3]),
    .b(1'b0),
    .c(\U1/lt1_c3 ),
    .o({\U1/lt1_c4 ,open_n234}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_30  (
    .a(\U1/Count_LED [30]),
    .b(1'b0),
    .c(\U1/lt1_c30 ),
    .o({\U1/lt1_c31 ,open_n235}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_31  (
    .a(\U1/Count_LED [31]),
    .b(1'b0),
    .c(\U1/lt1_c31 ),
    .o({\U1/lt1_c32 ,open_n236}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_4  (
    .a(\U1/Count_LED [4]),
    .b(1'b0),
    .c(\U1/lt1_c4 ),
    .o({\U1/lt1_c5 ,open_n237}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_5  (
    .a(\U1/Count_LED [5]),
    .b(1'b0),
    .c(\U1/lt1_c5 ),
    .o({\U1/lt1_c6 ,open_n238}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_6  (
    .a(\U1/Count_LED [6]),
    .b(1'b0),
    .c(\U1/lt1_c6 ),
    .o({\U1/lt1_c7 ,open_n239}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_7  (
    .a(\U1/Count_LED [7]),
    .b(1'b0),
    .c(\U1/lt1_c7 ),
    .o({\U1/lt1_c8 ,open_n240}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_8  (
    .a(\U1/Count_LED [8]),
    .b(1'b0),
    .c(\U1/lt1_c8 ),
    .o({\U1/lt1_c9 ,open_n241}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_9  (
    .a(\U1/Count_LED [9]),
    .b(1'b0),
    .c(\U1/lt1_c9 ),
    .o({\U1/lt1_c10 ,open_n242}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/lt1_cin  (
    .a(1'b1),
    .o({\U1/lt1_c0 ,open_n245}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/lt1_c32 ),
    .o({open_n246,\U1/n4 }));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_0  (
    .a(1'b0),
    .b(\U1/Count_LED [0]),
    .c(\U1/lt2_c0 ),
    .o({\U1/lt2_c1 ,open_n247}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_1  (
    .a(1'b0),
    .b(\U1/Count_LED [1]),
    .c(\U1/lt2_c1 ),
    .o({\U1/lt2_c2 ,open_n248}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_10  (
    .a(1'b0),
    .b(\U1/Count_LED [10]),
    .c(\U1/lt2_c10 ),
    .o({\U1/lt2_c11 ,open_n249}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_11  (
    .a(1'b0),
    .b(\U1/Count_LED [11]),
    .c(\U1/lt2_c11 ),
    .o({\U1/lt2_c12 ,open_n250}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_12  (
    .a(1'b0),
    .b(\U1/Count_LED [12]),
    .c(\U1/lt2_c12 ),
    .o({\U1/lt2_c13 ,open_n251}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_13  (
    .a(1'b0),
    .b(\U1/Count_LED [13]),
    .c(\U1/lt2_c13 ),
    .o({\U1/lt2_c14 ,open_n252}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_14  (
    .a(1'b0),
    .b(\U1/Count_LED [14]),
    .c(\U1/lt2_c14 ),
    .o({\U1/lt2_c15 ,open_n253}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_15  (
    .a(1'b0),
    .b(\U1/Count_LED [15]),
    .c(\U1/lt2_c15 ),
    .o({\U1/lt2_c16 ,open_n254}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_16  (
    .a(1'b0),
    .b(\U1/Count_LED [16]),
    .c(\U1/lt2_c16 ),
    .o({\U1/lt2_c17 ,open_n255}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_17  (
    .a(1'b0),
    .b(\U1/Count_LED [17]),
    .c(\U1/lt2_c17 ),
    .o({\U1/lt2_c18 ,open_n256}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_18  (
    .a(1'b0),
    .b(\U1/Count_LED [18]),
    .c(\U1/lt2_c18 ),
    .o({\U1/lt2_c19 ,open_n257}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_19  (
    .a(1'b1),
    .b(\U1/Count_LED [19]),
    .c(\U1/lt2_c19 ),
    .o({\U1/lt2_c20 ,open_n258}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_2  (
    .a(1'b0),
    .b(\U1/Count_LED [2]),
    .c(\U1/lt2_c2 ),
    .o({\U1/lt2_c3 ,open_n259}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_20  (
    .a(1'b0),
    .b(\U1/Count_LED [20]),
    .c(\U1/lt2_c20 ),
    .o({\U1/lt2_c21 ,open_n260}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_21  (
    .a(1'b1),
    .b(\U1/Count_LED [21]),
    .c(\U1/lt2_c21 ),
    .o({\U1/lt2_c22 ,open_n261}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_22  (
    .a(1'b1),
    .b(\U1/Count_LED [22]),
    .c(\U1/lt2_c22 ),
    .o({\U1/lt2_c23 ,open_n262}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_23  (
    .a(1'b1),
    .b(\U1/Count_LED [23]),
    .c(\U1/lt2_c23 ),
    .o({\U1/lt2_c24 ,open_n263}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_24  (
    .a(1'b1),
    .b(\U1/Count_LED [24]),
    .c(\U1/lt2_c24 ),
    .o({\U1/lt2_c25 ,open_n264}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_25  (
    .a(1'b1),
    .b(\U1/Count_LED [25]),
    .c(\U1/lt2_c25 ),
    .o({\U1/lt2_c26 ,open_n265}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_26  (
    .a(1'b0),
    .b(\U1/Count_LED [26]),
    .c(\U1/lt2_c26 ),
    .o({\U1/lt2_c27 ,open_n266}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_27  (
    .a(1'b0),
    .b(\U1/Count_LED [27]),
    .c(\U1/lt2_c27 ),
    .o({\U1/lt2_c28 ,open_n267}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_28  (
    .a(1'b0),
    .b(\U1/Count_LED [28]),
    .c(\U1/lt2_c28 ),
    .o({\U1/lt2_c29 ,open_n268}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_29  (
    .a(1'b0),
    .b(\U1/Count_LED [29]),
    .c(\U1/lt2_c29 ),
    .o({\U1/lt2_c30 ,open_n269}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_3  (
    .a(1'b0),
    .b(\U1/Count_LED [3]),
    .c(\U1/lt2_c3 ),
    .o({\U1/lt2_c4 ,open_n270}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_30  (
    .a(1'b0),
    .b(\U1/Count_LED [30]),
    .c(\U1/lt2_c30 ),
    .o({\U1/lt2_c31 ,open_n271}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_31  (
    .a(1'b0),
    .b(\U1/Count_LED [31]),
    .c(\U1/lt2_c31 ),
    .o({\U1/lt2_c32 ,open_n272}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_4  (
    .a(1'b0),
    .b(\U1/Count_LED [4]),
    .c(\U1/lt2_c4 ),
    .o({\U1/lt2_c5 ,open_n273}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_5  (
    .a(1'b0),
    .b(\U1/Count_LED [5]),
    .c(\U1/lt2_c5 ),
    .o({\U1/lt2_c6 ,open_n274}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_6  (
    .a(1'b0),
    .b(\U1/Count_LED [6]),
    .c(\U1/lt2_c6 ),
    .o({\U1/lt2_c7 ,open_n275}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_7  (
    .a(1'b0),
    .b(\U1/Count_LED [7]),
    .c(\U1/lt2_c7 ),
    .o({\U1/lt2_c8 ,open_n276}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_8  (
    .a(1'b0),
    .b(\U1/Count_LED [8]),
    .c(\U1/lt2_c8 ),
    .o({\U1/lt2_c9 ,open_n277}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_9  (
    .a(1'b0),
    .b(\U1/Count_LED [9]),
    .c(\U1/lt2_c9 ),
    .o({\U1/lt2_c10 ,open_n278}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/lt2_cin  (
    .a(1'b0),
    .o({\U1/lt2_c0 ,open_n281}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/lt2_c32 ),
    .o({open_n282,\U1/n5 }));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_0  (
    .a(\U1/Count_LED [0]),
    .b(1'b0),
    .c(\U1/lt3_c0 ),
    .o({\U1/lt3_c1 ,open_n283}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_1  (
    .a(\U1/Count_LED [1]),
    .b(1'b0),
    .c(\U1/lt3_c1 ),
    .o({\U1/lt3_c2 ,open_n284}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_10  (
    .a(\U1/Count_LED [10]),
    .b(1'b0),
    .c(\U1/lt3_c10 ),
    .o({\U1/lt3_c11 ,open_n285}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_11  (
    .a(\U1/Count_LED [11]),
    .b(1'b0),
    .c(\U1/lt3_c11 ),
    .o({\U1/lt3_c12 ,open_n286}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_12  (
    .a(\U1/Count_LED [12]),
    .b(1'b0),
    .c(\U1/lt3_c12 ),
    .o({\U1/lt3_c13 ,open_n287}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_13  (
    .a(\U1/Count_LED [13]),
    .b(1'b0),
    .c(\U1/lt3_c13 ),
    .o({\U1/lt3_c14 ,open_n288}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_14  (
    .a(\U1/Count_LED [14]),
    .b(1'b0),
    .c(\U1/lt3_c14 ),
    .o({\U1/lt3_c15 ,open_n289}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_15  (
    .a(\U1/Count_LED [15]),
    .b(1'b0),
    .c(\U1/lt3_c15 ),
    .o({\U1/lt3_c16 ,open_n290}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_16  (
    .a(\U1/Count_LED [16]),
    .b(1'b0),
    .c(\U1/lt3_c16 ),
    .o({\U1/lt3_c17 ,open_n291}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_17  (
    .a(\U1/Count_LED [17]),
    .b(1'b0),
    .c(\U1/lt3_c17 ),
    .o({\U1/lt3_c18 ,open_n292}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_18  (
    .a(\U1/Count_LED [18]),
    .b(1'b0),
    .c(\U1/lt3_c18 ),
    .o({\U1/lt3_c19 ,open_n293}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_19  (
    .a(\U1/Count_LED [19]),
    .b(1'b0),
    .c(\U1/lt3_c19 ),
    .o({\U1/lt3_c20 ,open_n294}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_2  (
    .a(\U1/Count_LED [2]),
    .b(1'b0),
    .c(\U1/lt3_c2 ),
    .o({\U1/lt3_c3 ,open_n295}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_20  (
    .a(\U1/Count_LED [20]),
    .b(1'b1),
    .c(\U1/lt3_c20 ),
    .o({\U1/lt3_c21 ,open_n296}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_21  (
    .a(\U1/Count_LED [21]),
    .b(1'b0),
    .c(\U1/lt3_c21 ),
    .o({\U1/lt3_c22 ,open_n297}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_22  (
    .a(\U1/Count_LED [22]),
    .b(1'b1),
    .c(\U1/lt3_c22 ),
    .o({\U1/lt3_c23 ,open_n298}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_23  (
    .a(\U1/Count_LED [23]),
    .b(1'b1),
    .c(\U1/lt3_c23 ),
    .o({\U1/lt3_c24 ,open_n299}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_24  (
    .a(\U1/Count_LED [24]),
    .b(1'b1),
    .c(\U1/lt3_c24 ),
    .o({\U1/lt3_c25 ,open_n300}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_25  (
    .a(\U1/Count_LED [25]),
    .b(1'b1),
    .c(\U1/lt3_c25 ),
    .o({\U1/lt3_c26 ,open_n301}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_26  (
    .a(\U1/Count_LED [26]),
    .b(1'b1),
    .c(\U1/lt3_c26 ),
    .o({\U1/lt3_c27 ,open_n302}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_27  (
    .a(\U1/Count_LED [27]),
    .b(1'b0),
    .c(\U1/lt3_c27 ),
    .o({\U1/lt3_c28 ,open_n303}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_28  (
    .a(\U1/Count_LED [28]),
    .b(1'b0),
    .c(\U1/lt3_c28 ),
    .o({\U1/lt3_c29 ,open_n304}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_29  (
    .a(\U1/Count_LED [29]),
    .b(1'b0),
    .c(\U1/lt3_c29 ),
    .o({\U1/lt3_c30 ,open_n305}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_3  (
    .a(\U1/Count_LED [3]),
    .b(1'b0),
    .c(\U1/lt3_c3 ),
    .o({\U1/lt3_c4 ,open_n306}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_30  (
    .a(\U1/Count_LED [30]),
    .b(1'b0),
    .c(\U1/lt3_c30 ),
    .o({\U1/lt3_c31 ,open_n307}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_31  (
    .a(\U1/Count_LED [31]),
    .b(1'b0),
    .c(\U1/lt3_c31 ),
    .o({\U1/lt3_c32 ,open_n308}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_4  (
    .a(\U1/Count_LED [4]),
    .b(1'b0),
    .c(\U1/lt3_c4 ),
    .o({\U1/lt3_c5 ,open_n309}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_5  (
    .a(\U1/Count_LED [5]),
    .b(1'b0),
    .c(\U1/lt3_c5 ),
    .o({\U1/lt3_c6 ,open_n310}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_6  (
    .a(\U1/Count_LED [6]),
    .b(1'b0),
    .c(\U1/lt3_c6 ),
    .o({\U1/lt3_c7 ,open_n311}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_7  (
    .a(\U1/Count_LED [7]),
    .b(1'b0),
    .c(\U1/lt3_c7 ),
    .o({\U1/lt3_c8 ,open_n312}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_8  (
    .a(\U1/Count_LED [8]),
    .b(1'b0),
    .c(\U1/lt3_c8 ),
    .o({\U1/lt3_c9 ,open_n313}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_9  (
    .a(\U1/Count_LED [9]),
    .b(1'b0),
    .c(\U1/lt3_c9 ),
    .o({\U1/lt3_c10 ,open_n314}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/lt3_cin  (
    .a(1'b1),
    .o({\U1/lt3_c0 ,open_n317}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/lt3_c32 ),
    .o({open_n318,\U1/n6 }));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_0  (
    .a(1'b0),
    .b(\U1/Count_LED [0]),
    .c(\U1/lt4_c0 ),
    .o({\U1/lt4_c1 ,open_n319}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_1  (
    .a(1'b0),
    .b(\U1/Count_LED [1]),
    .c(\U1/lt4_c1 ),
    .o({\U1/lt4_c2 ,open_n320}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_10  (
    .a(1'b0),
    .b(\U1/Count_LED [10]),
    .c(\U1/lt4_c10 ),
    .o({\U1/lt4_c11 ,open_n321}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_11  (
    .a(1'b0),
    .b(\U1/Count_LED [11]),
    .c(\U1/lt4_c11 ),
    .o({\U1/lt4_c12 ,open_n322}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_12  (
    .a(1'b0),
    .b(\U1/Count_LED [12]),
    .c(\U1/lt4_c12 ),
    .o({\U1/lt4_c13 ,open_n323}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_13  (
    .a(1'b0),
    .b(\U1/Count_LED [13]),
    .c(\U1/lt4_c13 ),
    .o({\U1/lt4_c14 ,open_n324}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_14  (
    .a(1'b0),
    .b(\U1/Count_LED [14]),
    .c(\U1/lt4_c14 ),
    .o({\U1/lt4_c15 ,open_n325}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_15  (
    .a(1'b0),
    .b(\U1/Count_LED [15]),
    .c(\U1/lt4_c15 ),
    .o({\U1/lt4_c16 ,open_n326}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_16  (
    .a(1'b0),
    .b(\U1/Count_LED [16]),
    .c(\U1/lt4_c16 ),
    .o({\U1/lt4_c17 ,open_n327}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_17  (
    .a(1'b0),
    .b(\U1/Count_LED [17]),
    .c(\U1/lt4_c17 ),
    .o({\U1/lt4_c18 ,open_n328}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_18  (
    .a(1'b0),
    .b(\U1/Count_LED [18]),
    .c(\U1/lt4_c18 ),
    .o({\U1/lt4_c19 ,open_n329}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_19  (
    .a(1'b1),
    .b(\U1/Count_LED [19]),
    .c(\U1/lt4_c19 ),
    .o({\U1/lt4_c20 ,open_n330}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_2  (
    .a(1'b0),
    .b(\U1/Count_LED [2]),
    .c(\U1/lt4_c2 ),
    .o({\U1/lt4_c3 ,open_n331}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_20  (
    .a(1'b0),
    .b(\U1/Count_LED [20]),
    .c(\U1/lt4_c20 ),
    .o({\U1/lt4_c21 ,open_n332}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_21  (
    .a(1'b1),
    .b(\U1/Count_LED [21]),
    .c(\U1/lt4_c21 ),
    .o({\U1/lt4_c22 ,open_n333}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_22  (
    .a(1'b1),
    .b(\U1/Count_LED [22]),
    .c(\U1/lt4_c22 ),
    .o({\U1/lt4_c23 ,open_n334}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_23  (
    .a(1'b1),
    .b(\U1/Count_LED [23]),
    .c(\U1/lt4_c23 ),
    .o({\U1/lt4_c24 ,open_n335}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_24  (
    .a(1'b1),
    .b(\U1/Count_LED [24]),
    .c(\U1/lt4_c24 ),
    .o({\U1/lt4_c25 ,open_n336}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_25  (
    .a(1'b1),
    .b(\U1/Count_LED [25]),
    .c(\U1/lt4_c25 ),
    .o({\U1/lt4_c26 ,open_n337}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_26  (
    .a(1'b0),
    .b(\U1/Count_LED [26]),
    .c(\U1/lt4_c26 ),
    .o({\U1/lt4_c27 ,open_n338}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_27  (
    .a(1'b0),
    .b(\U1/Count_LED [27]),
    .c(\U1/lt4_c27 ),
    .o({\U1/lt4_c28 ,open_n339}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_28  (
    .a(1'b0),
    .b(\U1/Count_LED [28]),
    .c(\U1/lt4_c28 ),
    .o({\U1/lt4_c29 ,open_n340}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_29  (
    .a(1'b0),
    .b(\U1/Count_LED [29]),
    .c(\U1/lt4_c29 ),
    .o({\U1/lt4_c30 ,open_n341}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_3  (
    .a(1'b0),
    .b(\U1/Count_LED [3]),
    .c(\U1/lt4_c3 ),
    .o({\U1/lt4_c4 ,open_n342}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_30  (
    .a(1'b0),
    .b(\U1/Count_LED [30]),
    .c(\U1/lt4_c30 ),
    .o({\U1/lt4_c31 ,open_n343}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_31  (
    .a(1'b0),
    .b(\U1/Count_LED [31]),
    .c(\U1/lt4_c31 ),
    .o({\U1/lt4_c32 ,open_n344}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_4  (
    .a(1'b0),
    .b(\U1/Count_LED [4]),
    .c(\U1/lt4_c4 ),
    .o({\U1/lt4_c5 ,open_n345}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_5  (
    .a(1'b0),
    .b(\U1/Count_LED [5]),
    .c(\U1/lt4_c5 ),
    .o({\U1/lt4_c6 ,open_n346}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_6  (
    .a(1'b0),
    .b(\U1/Count_LED [6]),
    .c(\U1/lt4_c6 ),
    .o({\U1/lt4_c7 ,open_n347}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_7  (
    .a(1'b0),
    .b(\U1/Count_LED [7]),
    .c(\U1/lt4_c7 ),
    .o({\U1/lt4_c8 ,open_n348}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_8  (
    .a(1'b0),
    .b(\U1/Count_LED [8]),
    .c(\U1/lt4_c8 ),
    .o({\U1/lt4_c9 ,open_n349}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_9  (
    .a(1'b0),
    .b(\U1/Count_LED [9]),
    .c(\U1/lt4_c9 ),
    .o({\U1/lt4_c10 ,open_n350}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/lt4_cin  (
    .a(1'b1),
    .o({\U1/lt4_c0 ,open_n353}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/lt4_c32 ),
    .o({open_n354,\U1/n10 }));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_0  (
    .a(1'b0),
    .b(\U1/Count_LED [0]),
    .c(\U1/lt5_c0 ),
    .o({\U1/lt5_c1 ,open_n355}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_1  (
    .a(1'b0),
    .b(\U1/Count_LED [1]),
    .c(\U1/lt5_c1 ),
    .o({\U1/lt5_c2 ,open_n356}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_10  (
    .a(1'b0),
    .b(\U1/Count_LED [10]),
    .c(\U1/lt5_c10 ),
    .o({\U1/lt5_c11 ,open_n357}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_11  (
    .a(1'b0),
    .b(\U1/Count_LED [11]),
    .c(\U1/lt5_c11 ),
    .o({\U1/lt5_c12 ,open_n358}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_12  (
    .a(1'b0),
    .b(\U1/Count_LED [12]),
    .c(\U1/lt5_c12 ),
    .o({\U1/lt5_c13 ,open_n359}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_13  (
    .a(1'b0),
    .b(\U1/Count_LED [13]),
    .c(\U1/lt5_c13 ),
    .o({\U1/lt5_c14 ,open_n360}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_14  (
    .a(1'b0),
    .b(\U1/Count_LED [14]),
    .c(\U1/lt5_c14 ),
    .o({\U1/lt5_c15 ,open_n361}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_15  (
    .a(1'b0),
    .b(\U1/Count_LED [15]),
    .c(\U1/lt5_c15 ),
    .o({\U1/lt5_c16 ,open_n362}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_16  (
    .a(1'b0),
    .b(\U1/Count_LED [16]),
    .c(\U1/lt5_c16 ),
    .o({\U1/lt5_c17 ,open_n363}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_17  (
    .a(1'b0),
    .b(\U1/Count_LED [17]),
    .c(\U1/lt5_c17 ),
    .o({\U1/lt5_c18 ,open_n364}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_18  (
    .a(1'b0),
    .b(\U1/Count_LED [18]),
    .c(\U1/lt5_c18 ),
    .o({\U1/lt5_c19 ,open_n365}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_19  (
    .a(1'b0),
    .b(\U1/Count_LED [19]),
    .c(\U1/lt5_c19 ),
    .o({\U1/lt5_c20 ,open_n366}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_2  (
    .a(1'b0),
    .b(\U1/Count_LED [2]),
    .c(\U1/lt5_c2 ),
    .o({\U1/lt5_c3 ,open_n367}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_20  (
    .a(1'b1),
    .b(\U1/Count_LED [20]),
    .c(\U1/lt5_c20 ),
    .o({\U1/lt5_c21 ,open_n368}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_21  (
    .a(1'b0),
    .b(\U1/Count_LED [21]),
    .c(\U1/lt5_c21 ),
    .o({\U1/lt5_c22 ,open_n369}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_22  (
    .a(1'b1),
    .b(\U1/Count_LED [22]),
    .c(\U1/lt5_c22 ),
    .o({\U1/lt5_c23 ,open_n370}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_23  (
    .a(1'b1),
    .b(\U1/Count_LED [23]),
    .c(\U1/lt5_c23 ),
    .o({\U1/lt5_c24 ,open_n371}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_24  (
    .a(1'b1),
    .b(\U1/Count_LED [24]),
    .c(\U1/lt5_c24 ),
    .o({\U1/lt5_c25 ,open_n372}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_25  (
    .a(1'b1),
    .b(\U1/Count_LED [25]),
    .c(\U1/lt5_c25 ),
    .o({\U1/lt5_c26 ,open_n373}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_26  (
    .a(1'b1),
    .b(\U1/Count_LED [26]),
    .c(\U1/lt5_c26 ),
    .o({\U1/lt5_c27 ,open_n374}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_27  (
    .a(1'b0),
    .b(\U1/Count_LED [27]),
    .c(\U1/lt5_c27 ),
    .o({\U1/lt5_c28 ,open_n375}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_28  (
    .a(1'b0),
    .b(\U1/Count_LED [28]),
    .c(\U1/lt5_c28 ),
    .o({\U1/lt5_c29 ,open_n376}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_29  (
    .a(1'b0),
    .b(\U1/Count_LED [29]),
    .c(\U1/lt5_c29 ),
    .o({\U1/lt5_c30 ,open_n377}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_3  (
    .a(1'b0),
    .b(\U1/Count_LED [3]),
    .c(\U1/lt5_c3 ),
    .o({\U1/lt5_c4 ,open_n378}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_30  (
    .a(1'b0),
    .b(\U1/Count_LED [30]),
    .c(\U1/lt5_c30 ),
    .o({\U1/lt5_c31 ,open_n379}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_31  (
    .a(1'b0),
    .b(\U1/Count_LED [31]),
    .c(\U1/lt5_c31 ),
    .o({\U1/lt5_c32 ,open_n380}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_4  (
    .a(1'b0),
    .b(\U1/Count_LED [4]),
    .c(\U1/lt5_c4 ),
    .o({\U1/lt5_c5 ,open_n381}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_5  (
    .a(1'b0),
    .b(\U1/Count_LED [5]),
    .c(\U1/lt5_c5 ),
    .o({\U1/lt5_c6 ,open_n382}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_6  (
    .a(1'b0),
    .b(\U1/Count_LED [6]),
    .c(\U1/lt5_c6 ),
    .o({\U1/lt5_c7 ,open_n383}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_7  (
    .a(1'b0),
    .b(\U1/Count_LED [7]),
    .c(\U1/lt5_c7 ),
    .o({\U1/lt5_c8 ,open_n384}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_8  (
    .a(1'b0),
    .b(\U1/Count_LED [8]),
    .c(\U1/lt5_c8 ),
    .o({\U1/lt5_c9 ,open_n385}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_9  (
    .a(1'b0),
    .b(\U1/Count_LED [9]),
    .c(\U1/lt5_c9 ),
    .o({\U1/lt5_c10 ,open_n386}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/lt5_cin  (
    .a(1'b0),
    .o({\U1/lt5_c0 ,open_n389}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/lt5_c32 ),
    .o({open_n390,\U1/n13 }));
  reg_ar_as_w1 \U1/reg0_b0  (
    .clk(CLK_50M),
    .d(\U1/n3 [0]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [0]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b1  (
    .clk(CLK_50M),
    .d(\U1/n3 [1]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [1]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b10  (
    .clk(CLK_50M),
    .d(\U1/n3 [10]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [10]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b11  (
    .clk(CLK_50M),
    .d(\U1/n3 [11]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [11]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b12  (
    .clk(CLK_50M),
    .d(\U1/n3 [12]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [12]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b13  (
    .clk(CLK_50M),
    .d(\U1/n3 [13]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [13]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b14  (
    .clk(CLK_50M),
    .d(\U1/n3 [14]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [14]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b15  (
    .clk(CLK_50M),
    .d(\U1/n3 [15]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [15]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b16  (
    .clk(CLK_50M),
    .d(\U1/n3 [16]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [16]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b17  (
    .clk(CLK_50M),
    .d(\U1/n3 [17]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [17]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b18  (
    .clk(CLK_50M),
    .d(\U1/n3 [18]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [18]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b19  (
    .clk(CLK_50M),
    .d(\U1/n3 [19]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [19]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b2  (
    .clk(CLK_50M),
    .d(\U1/n3 [2]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [2]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b20  (
    .clk(CLK_50M),
    .d(\U1/n3 [20]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [20]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b21  (
    .clk(CLK_50M),
    .d(\U1/n3 [21]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [21]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b22  (
    .clk(CLK_50M),
    .d(\U1/n3 [22]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [22]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b23  (
    .clk(CLK_50M),
    .d(\U1/n3 [23]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [23]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b24  (
    .clk(CLK_50M),
    .d(\U1/n3 [24]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [24]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b25  (
    .clk(CLK_50M),
    .d(\U1/n3 [25]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [25]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b26  (
    .clk(CLK_50M),
    .d(\U1/n3 [26]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [26]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b27  (
    .clk(CLK_50M),
    .d(\U1/n3 [27]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [27]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b28  (
    .clk(CLK_50M),
    .d(\U1/n3 [28]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [28]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b29  (
    .clk(CLK_50M),
    .d(\U1/n3 [29]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [29]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b3  (
    .clk(CLK_50M),
    .d(\U1/n3 [3]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [3]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b30  (
    .clk(CLK_50M),
    .d(\U1/n3 [30]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [30]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b31  (
    .clk(CLK_50M),
    .d(\U1/n3 [31]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [31]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b4  (
    .clk(CLK_50M),
    .d(\U1/n3 [4]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [4]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b5  (
    .clk(CLK_50M),
    .d(\U1/n3 [5]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [5]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b6  (
    .clk(CLK_50M),
    .d(\U1/n3 [6]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [6]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b7  (
    .clk(CLK_50M),
    .d(\U1/n3 [7]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [7]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b8  (
    .clk(CLK_50M),
    .d(\U1/n3 [8]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [8]));  // Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b9  (
    .clk(CLK_50M),
    .d(\U1/n3 [9]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [9]));  // Source/LEDRGBCtrl.v(20)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u0  (
    .a(1'b0),
    .b(\U1/Count_LED [0]),
    .c(\U1/sub0/c0 ),
    .o({\U1/sub0/c1 ,open_n391}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u1  (
    .a(1'b0),
    .b(\U1/Count_LED [1]),
    .c(\U1/sub0/c1 ),
    .o({\U1/sub0/c2 ,open_n392}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u10  (
    .a(1'b0),
    .b(\U1/Count_LED [10]),
    .c(\U1/sub0/c10 ),
    .o({\U1/sub0/c11 ,open_n393}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u11  (
    .a(1'b0),
    .b(\U1/Count_LED [11]),
    .c(\U1/sub0/c11 ),
    .o({\U1/sub0/c12 ,open_n394}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u12  (
    .a(1'b0),
    .b(\U1/Count_LED [12]),
    .c(\U1/sub0/c12 ),
    .o({\U1/sub0/c13 ,open_n395}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u13  (
    .a(1'b0),
    .b(\U1/Count_LED [13]),
    .c(\U1/sub0/c13 ),
    .o({\U1/sub0/c14 ,open_n396}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u14  (
    .a(1'b0),
    .b(\U1/Count_LED [14]),
    .c(\U1/sub0/c14 ),
    .o({\U1/sub0/c15 ,open_n397}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u15  (
    .a(1'b0),
    .b(\U1/Count_LED [15]),
    .c(\U1/sub0/c15 ),
    .o({\U1/sub0/c16 ,open_n398}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u16  (
    .a(1'b0),
    .b(\U1/Count_LED [16]),
    .c(\U1/sub0/c16 ),
    .o({\U1/sub0/c17 ,\U1/n8 [16]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u17  (
    .a(1'b0),
    .b(\U1/Count_LED [17]),
    .c(\U1/sub0/c17 ),
    .o({\U1/sub0/c18 ,\U1/n8 [17]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u18  (
    .a(1'b0),
    .b(\U1/Count_LED [18]),
    .c(\U1/sub0/c18 ),
    .o({\U1/sub0/c19 ,\U1/n8 [18]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u19  (
    .a(1'b0),
    .b(\U1/Count_LED [19]),
    .c(\U1/sub0/c19 ),
    .o({\U1/sub0/c20 ,\U1/n8 [19]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u2  (
    .a(1'b0),
    .b(\U1/Count_LED [2]),
    .c(\U1/sub0/c2 ),
    .o({\U1/sub0/c3 ,open_n399}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u20  (
    .a(1'b1),
    .b(\U1/Count_LED [20]),
    .c(\U1/sub0/c20 ),
    .o({\U1/sub0/c21 ,\U1/n8 [20]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u21  (
    .a(1'b0),
    .b(\U1/Count_LED [21]),
    .c(\U1/sub0/c21 ),
    .o({\U1/sub0/c22 ,\U1/n8 [21]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u22  (
    .a(1'b1),
    .b(\U1/Count_LED [22]),
    .c(\U1/sub0/c22 ),
    .o({\U1/sub0/c23 ,\U1/n8 [22]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u23  (
    .a(1'b1),
    .b(\U1/Count_LED [23]),
    .c(\U1/sub0/c23 ),
    .o({\U1/sub0/c24 ,\U1/n8 [23]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u24  (
    .a(1'b1),
    .b(\U1/Count_LED [24]),
    .c(\U1/sub0/c24 ),
    .o({\U1/sub0/c25 ,\U1/n8 [24]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u25  (
    .a(1'b1),
    .b(\U1/Count_LED [25]),
    .c(\U1/sub0/c25 ),
    .o({\U1/sub0/c26 ,\U1/n8 [25]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u26  (
    .a(1'b1),
    .b(\U1/Count_LED [26]),
    .c(\U1/sub0/c26 ),
    .o({\U1/sub0/c27 ,\U1/n8 [26]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u27  (
    .a(1'b0),
    .b(\U1/Count_LED [27]),
    .c(\U1/sub0/c27 ),
    .o({\U1/sub0/c28 ,\U1/n8 [27]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u28  (
    .a(1'b0),
    .b(\U1/Count_LED [28]),
    .c(\U1/sub0/c28 ),
    .o({\U1/sub0/c29 ,\U1/n8 [28]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u29  (
    .a(1'b0),
    .b(\U1/Count_LED [29]),
    .c(\U1/sub0/c29 ),
    .o({\U1/sub0/c30 ,\U1/n8 [29]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u3  (
    .a(1'b0),
    .b(\U1/Count_LED [3]),
    .c(\U1/sub0/c3 ),
    .o({\U1/sub0/c4 ,open_n400}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u30  (
    .a(1'b0),
    .b(\U1/Count_LED [30]),
    .c(\U1/sub0/c30 ),
    .o({\U1/sub0/c31 ,\U1/n8 [30]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u31  (
    .a(1'b0),
    .b(\U1/Count_LED [31]),
    .c(\U1/sub0/c31 ),
    .o({open_n401,\U1/n8 [31]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u4  (
    .a(1'b0),
    .b(\U1/Count_LED [4]),
    .c(\U1/sub0/c4 ),
    .o({\U1/sub0/c5 ,open_n402}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u5  (
    .a(1'b0),
    .b(\U1/Count_LED [5]),
    .c(\U1/sub0/c5 ),
    .o({\U1/sub0/c6 ,open_n403}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u6  (
    .a(1'b0),
    .b(\U1/Count_LED [6]),
    .c(\U1/sub0/c6 ),
    .o({\U1/sub0/c7 ,open_n404}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u7  (
    .a(1'b0),
    .b(\U1/Count_LED [7]),
    .c(\U1/sub0/c7 ),
    .o({\U1/sub0/c8 ,open_n405}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u8  (
    .a(1'b0),
    .b(\U1/Count_LED [8]),
    .c(\U1/sub0/c8 ),
    .o({\U1/sub0/c9 ,open_n406}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u9  (
    .a(1'b0),
    .b(\U1/Count_LED [9]),
    .c(\U1/sub0/c9 ),
    .o({\U1/sub0/c10 ,open_n407}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB_CARRY"))
    \U1/sub0/ucin  (
    .a(1'b0),
    .o({\U1/sub0/c0 ,open_n410}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u0  (
    .a(\U1/Count_LED [0]),
    .b(1'b0),
    .c(\U1/sub1/c0 ),
    .o({\U1/sub1/c1 ,open_n411}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u1  (
    .a(\U1/Count_LED [1]),
    .b(1'b0),
    .c(\U1/sub1/c1 ),
    .o({\U1/sub1/c2 ,open_n412}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u10  (
    .a(\U1/Count_LED [10]),
    .b(1'b0),
    .c(\U1/sub1/c10 ),
    .o({\U1/sub1/c11 ,open_n413}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u11  (
    .a(\U1/Count_LED [11]),
    .b(1'b0),
    .c(\U1/sub1/c11 ),
    .o({\U1/sub1/c12 ,open_n414}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u12  (
    .a(\U1/Count_LED [12]),
    .b(1'b0),
    .c(\U1/sub1/c12 ),
    .o({\U1/sub1/c13 ,open_n415}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u13  (
    .a(\U1/Count_LED [13]),
    .b(1'b0),
    .c(\U1/sub1/c13 ),
    .o({\U1/sub1/c14 ,open_n416}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u14  (
    .a(\U1/Count_LED [14]),
    .b(1'b0),
    .c(\U1/sub1/c14 ),
    .o({\U1/sub1/c15 ,open_n417}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u15  (
    .a(\U1/Count_LED [15]),
    .b(1'b0),
    .c(\U1/sub1/c15 ),
    .o({\U1/sub1/c16 ,open_n418}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u16  (
    .a(\U1/Count_LED [16]),
    .b(1'b0),
    .c(\U1/sub1/c16 ),
    .o({\U1/sub1/c17 ,\U1/n12 [16]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u17  (
    .a(\U1/Count_LED [17]),
    .b(1'b0),
    .c(\U1/sub1/c17 ),
    .o({\U1/sub1/c18 ,\U1/n12 [17]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u18  (
    .a(\U1/Count_LED [18]),
    .b(1'b0),
    .c(\U1/sub1/c18 ),
    .o({\U1/sub1/c19 ,\U1/n12 [18]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u19  (
    .a(\U1/Count_LED [19]),
    .b(1'b1),
    .c(\U1/sub1/c19 ),
    .o({\U1/sub1/c20 ,\U1/n12 [19]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u2  (
    .a(\U1/Count_LED [2]),
    .b(1'b0),
    .c(\U1/sub1/c2 ),
    .o({\U1/sub1/c3 ,open_n419}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u20  (
    .a(\U1/Count_LED [20]),
    .b(1'b0),
    .c(\U1/sub1/c20 ),
    .o({\U1/sub1/c21 ,\U1/n12 [20]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u21  (
    .a(\U1/Count_LED [21]),
    .b(1'b1),
    .c(\U1/sub1/c21 ),
    .o({\U1/sub1/c22 ,\U1/n12 [21]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u22  (
    .a(\U1/Count_LED [22]),
    .b(1'b1),
    .c(\U1/sub1/c22 ),
    .o({\U1/sub1/c23 ,\U1/n12 [22]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u23  (
    .a(\U1/Count_LED [23]),
    .b(1'b1),
    .c(\U1/sub1/c23 ),
    .o({\U1/sub1/c24 ,\U1/n12 [23]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u24  (
    .a(\U1/Count_LED [24]),
    .b(1'b1),
    .c(\U1/sub1/c24 ),
    .o({\U1/sub1/c25 ,\U1/n12 [24]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u25  (
    .a(\U1/Count_LED [25]),
    .b(1'b1),
    .c(\U1/sub1/c25 ),
    .o({\U1/sub1/c26 ,\U1/n12 [25]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u26  (
    .a(\U1/Count_LED [26]),
    .b(1'b0),
    .c(\U1/sub1/c26 ),
    .o({\U1/sub1/c27 ,\U1/n12 [26]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u27  (
    .a(\U1/Count_LED [27]),
    .b(1'b0),
    .c(\U1/sub1/c27 ),
    .o({\U1/sub1/c28 ,\U1/n12 [27]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u28  (
    .a(\U1/Count_LED [28]),
    .b(1'b0),
    .c(\U1/sub1/c28 ),
    .o({\U1/sub1/c29 ,\U1/n12 [28]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u29  (
    .a(\U1/Count_LED [29]),
    .b(1'b0),
    .c(\U1/sub1/c29 ),
    .o({\U1/sub1/c30 ,\U1/n12 [29]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u3  (
    .a(\U1/Count_LED [3]),
    .b(1'b0),
    .c(\U1/sub1/c3 ),
    .o({\U1/sub1/c4 ,open_n420}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u30  (
    .a(\U1/Count_LED [30]),
    .b(1'b0),
    .c(\U1/sub1/c30 ),
    .o({\U1/sub1/c31 ,\U1/n12 [30]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u31  (
    .a(\U1/Count_LED [31]),
    .b(1'b0),
    .c(\U1/sub1/c31 ),
    .o({open_n421,\U1/n12 [31]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u4  (
    .a(\U1/Count_LED [4]),
    .b(1'b0),
    .c(\U1/sub1/c4 ),
    .o({\U1/sub1/c5 ,open_n422}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u5  (
    .a(\U1/Count_LED [5]),
    .b(1'b0),
    .c(\U1/sub1/c5 ),
    .o({\U1/sub1/c6 ,open_n423}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u6  (
    .a(\U1/Count_LED [6]),
    .b(1'b0),
    .c(\U1/sub1/c6 ),
    .o({\U1/sub1/c7 ,open_n424}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u7  (
    .a(\U1/Count_LED [7]),
    .b(1'b0),
    .c(\U1/sub1/c7 ),
    .o({\U1/sub1/c8 ,open_n425}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u8  (
    .a(\U1/Count_LED [8]),
    .b(1'b0),
    .c(\U1/sub1/c8 ),
    .o({\U1/sub1/c9 ,open_n426}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u9  (
    .a(\U1/Count_LED [9]),
    .b(1'b0),
    .c(\U1/sub1/c9 ),
    .o({\U1/sub1/c10 ,open_n427}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB_CARRY"))
    \U1/sub1/ucin  (
    .a(1'b0),
    .o({\U1/sub1/c0 ,open_n430}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u0  (
    .a(1'b0),
    .b(\U1/Count_LED [0]),
    .c(\U1/sub2/c0 ),
    .o({\U1/sub2/c1 ,open_n431}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u1  (
    .a(1'b0),
    .b(\U1/Count_LED [1]),
    .c(\U1/sub2/c1 ),
    .o({\U1/sub2/c2 ,open_n432}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u10  (
    .a(1'b0),
    .b(\U1/Count_LED [10]),
    .c(\U1/sub2/c10 ),
    .o({\U1/sub2/c11 ,open_n433}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u11  (
    .a(1'b0),
    .b(\U1/Count_LED [11]),
    .c(\U1/sub2/c11 ),
    .o({\U1/sub2/c12 ,open_n434}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u12  (
    .a(1'b0),
    .b(\U1/Count_LED [12]),
    .c(\U1/sub2/c12 ),
    .o({\U1/sub2/c13 ,open_n435}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u13  (
    .a(1'b0),
    .b(\U1/Count_LED [13]),
    .c(\U1/sub2/c13 ),
    .o({\U1/sub2/c14 ,open_n436}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u14  (
    .a(1'b0),
    .b(\U1/Count_LED [14]),
    .c(\U1/sub2/c14 ),
    .o({\U1/sub2/c15 ,open_n437}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u15  (
    .a(1'b0),
    .b(\U1/Count_LED [15]),
    .c(\U1/sub2/c15 ),
    .o({\U1/sub2/c16 ,open_n438}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u16  (
    .a(1'b0),
    .b(\U1/Count_LED [16]),
    .c(\U1/sub2/c16 ),
    .o({\U1/sub2/c17 ,\U1/n14 [16]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u17  (
    .a(1'b0),
    .b(\U1/Count_LED [17]),
    .c(\U1/sub2/c17 ),
    .o({\U1/sub2/c18 ,\U1/n14 [17]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u18  (
    .a(1'b0),
    .b(\U1/Count_LED [18]),
    .c(\U1/sub2/c18 ),
    .o({\U1/sub2/c19 ,\U1/n14 [18]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u19  (
    .a(1'b1),
    .b(\U1/Count_LED [19]),
    .c(\U1/sub2/c19 ),
    .o({\U1/sub2/c20 ,\U1/n14 [19]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u2  (
    .a(1'b0),
    .b(\U1/Count_LED [2]),
    .c(\U1/sub2/c2 ),
    .o({\U1/sub2/c3 ,open_n439}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u20  (
    .a(1'b1),
    .b(\U1/Count_LED [20]),
    .c(\U1/sub2/c20 ),
    .o({\U1/sub2/c21 ,\U1/n14 [20]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u21  (
    .a(1'b1),
    .b(\U1/Count_LED [21]),
    .c(\U1/sub2/c21 ),
    .o({\U1/sub2/c22 ,\U1/n14 [21]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u22  (
    .a(1'b0),
    .b(\U1/Count_LED [22]),
    .c(\U1/sub2/c22 ),
    .o({\U1/sub2/c23 ,\U1/n14 [22]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u23  (
    .a(1'b1),
    .b(\U1/Count_LED [23]),
    .c(\U1/sub2/c23 ),
    .o({\U1/sub2/c24 ,\U1/n14 [23]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u24  (
    .a(1'b1),
    .b(\U1/Count_LED [24]),
    .c(\U1/sub2/c24 ),
    .o({\U1/sub2/c25 ,\U1/n14 [24]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u25  (
    .a(1'b1),
    .b(\U1/Count_LED [25]),
    .c(\U1/sub2/c25 ),
    .o({\U1/sub2/c26 ,\U1/n14 [25]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u26  (
    .a(1'b0),
    .b(\U1/Count_LED [26]),
    .c(\U1/sub2/c26 ),
    .o({\U1/sub2/c27 ,\U1/n14 [26]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u27  (
    .a(1'b1),
    .b(\U1/Count_LED [27]),
    .c(\U1/sub2/c27 ),
    .o({\U1/sub2/c28 ,\U1/n14 [27]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u28  (
    .a(1'b0),
    .b(\U1/Count_LED [28]),
    .c(\U1/sub2/c28 ),
    .o({\U1/sub2/c29 ,\U1/n14 [28]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u29  (
    .a(1'b0),
    .b(\U1/Count_LED [29]),
    .c(\U1/sub2/c29 ),
    .o({\U1/sub2/c30 ,\U1/n14 [29]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u3  (
    .a(1'b0),
    .b(\U1/Count_LED [3]),
    .c(\U1/sub2/c3 ),
    .o({\U1/sub2/c4 ,open_n440}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u30  (
    .a(1'b0),
    .b(\U1/Count_LED [30]),
    .c(\U1/sub2/c30 ),
    .o({\U1/sub2/c31 ,\U1/n14 [30]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u31  (
    .a(1'b0),
    .b(\U1/Count_LED [31]),
    .c(\U1/sub2/c31 ),
    .o({open_n441,\U1/n14 [31]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u4  (
    .a(1'b0),
    .b(\U1/Count_LED [4]),
    .c(\U1/sub2/c4 ),
    .o({\U1/sub2/c5 ,open_n442}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u5  (
    .a(1'b0),
    .b(\U1/Count_LED [5]),
    .c(\U1/sub2/c5 ),
    .o({\U1/sub2/c6 ,open_n443}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u6  (
    .a(1'b0),
    .b(\U1/Count_LED [6]),
    .c(\U1/sub2/c6 ),
    .o({\U1/sub2/c7 ,open_n444}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u7  (
    .a(1'b0),
    .b(\U1/Count_LED [7]),
    .c(\U1/sub2/c7 ),
    .o({\U1/sub2/c8 ,open_n445}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u8  (
    .a(1'b0),
    .b(\U1/Count_LED [8]),
    .c(\U1/sub2/c8 ),
    .o({\U1/sub2/c9 ,open_n446}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u9  (
    .a(1'b0),
    .b(\U1/Count_LED [9]),
    .c(\U1/sub2/c9 ),
    .o({\U1/sub2/c10 ,open_n447}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB_CARRY"))
    \U1/sub2/ucin  (
    .a(1'b0),
    .o({\U1/sub2/c0 ,open_n450}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u0  (
    .a(1'b0),
    .b(\U1/Count_LED [0]),
    .c(\U1/sub3/c0 ),
    .o({\U1/sub3/c1 ,open_n451}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u1  (
    .a(1'b0),
    .b(\U1/Count_LED [1]),
    .c(\U1/sub3/c1 ),
    .o({\U1/sub3/c2 ,open_n452}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u10  (
    .a(1'b0),
    .b(\U1/Count_LED [10]),
    .c(\U1/sub3/c10 ),
    .o({\U1/sub3/c11 ,open_n453}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u11  (
    .a(1'b0),
    .b(\U1/Count_LED [11]),
    .c(\U1/sub3/c11 ),
    .o({\U1/sub3/c12 ,open_n454}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u12  (
    .a(1'b0),
    .b(\U1/Count_LED [12]),
    .c(\U1/sub3/c12 ),
    .o({\U1/sub3/c13 ,open_n455}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u13  (
    .a(1'b0),
    .b(\U1/Count_LED [13]),
    .c(\U1/sub3/c13 ),
    .o({\U1/sub3/c14 ,open_n456}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u14  (
    .a(1'b0),
    .b(\U1/Count_LED [14]),
    .c(\U1/sub3/c14 ),
    .o({\U1/sub3/c15 ,open_n457}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u15  (
    .a(1'b0),
    .b(\U1/Count_LED [15]),
    .c(\U1/sub3/c15 ),
    .o({\U1/sub3/c16 ,open_n458}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u16  (
    .a(1'b0),
    .b(\U1/Count_LED [16]),
    .c(\U1/sub3/c16 ),
    .o({\U1/sub3/c17 ,\U1/n16 [16]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u17  (
    .a(1'b0),
    .b(\U1/Count_LED [17]),
    .c(\U1/sub3/c17 ),
    .o({\U1/sub3/c18 ,\U1/n16 [17]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u18  (
    .a(1'b0),
    .b(\U1/Count_LED [18]),
    .c(\U1/sub3/c18 ),
    .o({\U1/sub3/c19 ,\U1/n16 [18]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u19  (
    .a(1'b1),
    .b(\U1/Count_LED [19]),
    .c(\U1/sub3/c19 ),
    .o({\U1/sub3/c20 ,\U1/n16 [19]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u2  (
    .a(1'b0),
    .b(\U1/Count_LED [2]),
    .c(\U1/sub3/c2 ),
    .o({\U1/sub3/c3 ,open_n459}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u20  (
    .a(1'b0),
    .b(\U1/Count_LED [20]),
    .c(\U1/sub3/c20 ),
    .o({\U1/sub3/c21 ,\U1/n16 [20]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u21  (
    .a(1'b1),
    .b(\U1/Count_LED [21]),
    .c(\U1/sub3/c21 ),
    .o({\U1/sub3/c22 ,\U1/n16 [21]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u22  (
    .a(1'b1),
    .b(\U1/Count_LED [22]),
    .c(\U1/sub3/c22 ),
    .o({\U1/sub3/c23 ,\U1/n16 [22]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u23  (
    .a(1'b1),
    .b(\U1/Count_LED [23]),
    .c(\U1/sub3/c23 ),
    .o({\U1/sub3/c24 ,\U1/n16 [23]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u24  (
    .a(1'b1),
    .b(\U1/Count_LED [24]),
    .c(\U1/sub3/c24 ),
    .o({\U1/sub3/c25 ,\U1/n16 [24]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u25  (
    .a(1'b1),
    .b(\U1/Count_LED [25]),
    .c(\U1/sub3/c25 ),
    .o({\U1/sub3/c26 ,\U1/n16 [25]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u26  (
    .a(1'b0),
    .b(\U1/Count_LED [26]),
    .c(\U1/sub3/c26 ),
    .o({\U1/sub3/c27 ,\U1/n16 [26]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u27  (
    .a(1'b0),
    .b(\U1/Count_LED [27]),
    .c(\U1/sub3/c27 ),
    .o({\U1/sub3/c28 ,\U1/n16 [27]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u28  (
    .a(1'b0),
    .b(\U1/Count_LED [28]),
    .c(\U1/sub3/c28 ),
    .o({\U1/sub3/c29 ,\U1/n16 [28]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u29  (
    .a(1'b0),
    .b(\U1/Count_LED [29]),
    .c(\U1/sub3/c29 ),
    .o({\U1/sub3/c30 ,\U1/n16 [29]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u3  (
    .a(1'b0),
    .b(\U1/Count_LED [3]),
    .c(\U1/sub3/c3 ),
    .o({\U1/sub3/c4 ,open_n460}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u30  (
    .a(1'b0),
    .b(\U1/Count_LED [30]),
    .c(\U1/sub3/c30 ),
    .o({\U1/sub3/c31 ,\U1/n16 [30]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u31  (
    .a(1'b0),
    .b(\U1/Count_LED [31]),
    .c(\U1/sub3/c31 ),
    .o({open_n461,\U1/n16 [31]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u4  (
    .a(1'b0),
    .b(\U1/Count_LED [4]),
    .c(\U1/sub3/c4 ),
    .o({\U1/sub3/c5 ,open_n462}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u5  (
    .a(1'b0),
    .b(\U1/Count_LED [5]),
    .c(\U1/sub3/c5 ),
    .o({\U1/sub3/c6 ,open_n463}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u6  (
    .a(1'b0),
    .b(\U1/Count_LED [6]),
    .c(\U1/sub3/c6 ),
    .o({\U1/sub3/c7 ,open_n464}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u7  (
    .a(1'b0),
    .b(\U1/Count_LED [7]),
    .c(\U1/sub3/c7 ),
    .o({\U1/sub3/c8 ,open_n465}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u8  (
    .a(1'b0),
    .b(\U1/Count_LED [8]),
    .c(\U1/sub3/c8 ),
    .o({\U1/sub3/c9 ,open_n466}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u9  (
    .a(1'b0),
    .b(\U1/Count_LED [9]),
    .c(\U1/sub3/c9 ),
    .o({\U1/sub3/c10 ,open_n467}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB_CARRY"))
    \U1/sub3/ucin  (
    .a(1'b0),
    .o({\U1/sub3/c0 ,open_n470}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u0  (
    .a(\U1/Count_LED [0]),
    .b(1'b0),
    .c(\U1/sub4/c0 ),
    .o({\U1/sub4/c1 ,open_n471}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u1  (
    .a(\U1/Count_LED [1]),
    .b(1'b0),
    .c(\U1/sub4/c1 ),
    .o({\U1/sub4/c2 ,open_n472}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u10  (
    .a(\U1/Count_LED [10]),
    .b(1'b0),
    .c(\U1/sub4/c10 ),
    .o({\U1/sub4/c11 ,open_n473}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u11  (
    .a(\U1/Count_LED [11]),
    .b(1'b0),
    .c(\U1/sub4/c11 ),
    .o({\U1/sub4/c12 ,open_n474}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u12  (
    .a(\U1/Count_LED [12]),
    .b(1'b0),
    .c(\U1/sub4/c12 ),
    .o({\U1/sub4/c13 ,open_n475}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u13  (
    .a(\U1/Count_LED [13]),
    .b(1'b0),
    .c(\U1/sub4/c13 ),
    .o({\U1/sub4/c14 ,open_n476}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u14  (
    .a(\U1/Count_LED [14]),
    .b(1'b0),
    .c(\U1/sub4/c14 ),
    .o({\U1/sub4/c15 ,open_n477}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u15  (
    .a(\U1/Count_LED [15]),
    .b(1'b0),
    .c(\U1/sub4/c15 ),
    .o({\U1/sub4/c16 ,open_n478}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u16  (
    .a(\U1/Count_LED [16]),
    .b(1'b0),
    .c(\U1/sub4/c16 ),
    .o({\U1/sub4/c17 ,\U1/n17 [16]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u17  (
    .a(\U1/Count_LED [17]),
    .b(1'b0),
    .c(\U1/sub4/c17 ),
    .o({\U1/sub4/c18 ,\U1/n17 [17]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u18  (
    .a(\U1/Count_LED [18]),
    .b(1'b0),
    .c(\U1/sub4/c18 ),
    .o({\U1/sub4/c19 ,\U1/n17 [18]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u19  (
    .a(\U1/Count_LED [19]),
    .b(1'b0),
    .c(\U1/sub4/c19 ),
    .o({\U1/sub4/c20 ,\U1/n17 [19]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u2  (
    .a(\U1/Count_LED [2]),
    .b(1'b0),
    .c(\U1/sub4/c2 ),
    .o({\U1/sub4/c3 ,open_n479}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u20  (
    .a(\U1/Count_LED [20]),
    .b(1'b1),
    .c(\U1/sub4/c20 ),
    .o({\U1/sub4/c21 ,\U1/n17 [20]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u21  (
    .a(\U1/Count_LED [21]),
    .b(1'b0),
    .c(\U1/sub4/c21 ),
    .o({\U1/sub4/c22 ,\U1/n17 [21]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u22  (
    .a(\U1/Count_LED [22]),
    .b(1'b1),
    .c(\U1/sub4/c22 ),
    .o({\U1/sub4/c23 ,\U1/n17 [22]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u23  (
    .a(\U1/Count_LED [23]),
    .b(1'b1),
    .c(\U1/sub4/c23 ),
    .o({\U1/sub4/c24 ,\U1/n17 [23]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u24  (
    .a(\U1/Count_LED [24]),
    .b(1'b1),
    .c(\U1/sub4/c24 ),
    .o({\U1/sub4/c25 ,\U1/n17 [24]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u25  (
    .a(\U1/Count_LED [25]),
    .b(1'b1),
    .c(\U1/sub4/c25 ),
    .o({\U1/sub4/c26 ,\U1/n17 [25]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u26  (
    .a(\U1/Count_LED [26]),
    .b(1'b1),
    .c(\U1/sub4/c26 ),
    .o({\U1/sub4/c27 ,\U1/n17 [26]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u27  (
    .a(\U1/Count_LED [27]),
    .b(1'b0),
    .c(\U1/sub4/c27 ),
    .o({\U1/sub4/c28 ,\U1/n17 [27]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u28  (
    .a(\U1/Count_LED [28]),
    .b(1'b0),
    .c(\U1/sub4/c28 ),
    .o({\U1/sub4/c29 ,\U1/n17 [28]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u29  (
    .a(\U1/Count_LED [29]),
    .b(1'b0),
    .c(\U1/sub4/c29 ),
    .o({\U1/sub4/c30 ,\U1/n17 [29]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u3  (
    .a(\U1/Count_LED [3]),
    .b(1'b0),
    .c(\U1/sub4/c3 ),
    .o({\U1/sub4/c4 ,open_n480}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u30  (
    .a(\U1/Count_LED [30]),
    .b(1'b0),
    .c(\U1/sub4/c30 ),
    .o({\U1/sub4/c31 ,\U1/n17 [30]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u31  (
    .a(\U1/Count_LED [31]),
    .b(1'b0),
    .c(\U1/sub4/c31 ),
    .o({open_n481,\U1/n17 [31]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u4  (
    .a(\U1/Count_LED [4]),
    .b(1'b0),
    .c(\U1/sub4/c4 ),
    .o({\U1/sub4/c5 ,open_n482}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u5  (
    .a(\U1/Count_LED [5]),
    .b(1'b0),
    .c(\U1/sub4/c5 ),
    .o({\U1/sub4/c6 ,open_n483}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u6  (
    .a(\U1/Count_LED [6]),
    .b(1'b0),
    .c(\U1/sub4/c6 ),
    .o({\U1/sub4/c7 ,open_n484}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u7  (
    .a(\U1/Count_LED [7]),
    .b(1'b0),
    .c(\U1/sub4/c7 ),
    .o({\U1/sub4/c8 ,open_n485}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u8  (
    .a(\U1/Count_LED [8]),
    .b(1'b0),
    .c(\U1/sub4/c8 ),
    .o({\U1/sub4/c9 ,open_n486}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u9  (
    .a(\U1/Count_LED [9]),
    .b(1'b0),
    .c(\U1/sub4/c9 ),
    .o({\U1/sub4/c10 ,open_n487}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB_CARRY"))
    \U1/sub4/ucin  (
    .a(1'b0),
    .o({\U1/sub4/c0 ,open_n490}));
  reg_ar_as_w1 \U2/FIFO_CLK_reg  (
    .clk(UART_CLK),
    .d(\U2/n24 ),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(FIFO_CLK_R));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w1 \U2/FIFO_RE_reg  (
    .clk(UART_CLK),
    .d(\U2/n12 ),
    .en(\U2/mux11_sel_is_2_o ),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(FIFO_RE));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w1 \U2/UART_TX_reg_reg  (
    .clk(UART_CLK),
    .d(\U2/n23 ),
    .en(1'b1),
    .reset(1'b0),
    .set(~nRST_pad),
    .q(UART_TX_pad));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U2/add0/u0  (
    .a(\U2/Count [0]),
    .b(1'b1),
    .c(\U2/add0/c0 ),
    .o({\U2/add0/c1 ,\U2/n16 [0]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U2/add0/u1  (
    .a(\U2/Count [1]),
    .b(1'b0),
    .c(\U2/add0/c1 ),
    .o({\U2/add0/c2 ,\U2/n16 [1]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U2/add0/u2  (
    .a(\U2/Count [2]),
    .b(1'b0),
    .c(\U2/add0/c2 ),
    .o({\U2/add0/c3 ,\U2/n16 [2]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U2/add0/u3  (
    .a(\U2/Count [3]),
    .b(1'b0),
    .c(\U2/add0/c3 ),
    .o({\U2/add0/c4 ,\U2/n16 [3]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U2/add0/u4  (
    .a(\U2/Count [4]),
    .b(1'b0),
    .c(\U2/add0/c4 ),
    .o({\U2/add0/c5 ,\U2/n16 [4]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U2/add0/u5  (
    .a(\U2/Count [5]),
    .b(1'b0),
    .c(\U2/add0/c5 ),
    .o({\U2/add0/c6 ,\U2/n16 [5]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U2/add0/u6  (
    .a(\U2/Count [6]),
    .b(1'b0),
    .c(\U2/add0/c6 ),
    .o({\U2/add0/c7 ,\U2/n16 [6]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U2/add0/u7  (
    .a(\U2/Count [7]),
    .b(1'b0),
    .c(\U2/add0/c7 ),
    .o({open_n491,\U2/n16 [7]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \U2/add0/ucin  (
    .a(1'b0),
    .o({\U2/add0/c0 ,open_n494}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U2/lt0_0  (
    .a(\U2/Count [0]),
    .b(1'b1),
    .c(\U2/lt0_c0 ),
    .o({\U2/lt0_c1 ,open_n495}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U2/lt0_1  (
    .a(\U2/Count [1]),
    .b(1'b1),
    .c(\U2/lt0_c1 ),
    .o({\U2/lt0_c2 ,open_n496}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U2/lt0_2  (
    .a(\U2/Count [2]),
    .b(1'b1),
    .c(\U2/lt0_c2 ),
    .o({\U2/lt0_c3 ,open_n497}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U2/lt0_3  (
    .a(\U2/Count [3]),
    .b(1'b0),
    .c(\U2/lt0_c3 ),
    .o({\U2/lt0_c4 ,open_n498}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U2/lt0_4  (
    .a(\U2/Count [4]),
    .b(1'b0),
    .c(\U2/lt0_c4 ),
    .o({\U2/lt0_c5 ,open_n499}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U2/lt0_5  (
    .a(\U2/Count [5]),
    .b(1'b0),
    .c(\U2/lt0_c5 ),
    .o({\U2/lt0_c6 ,open_n500}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U2/lt0_6  (
    .a(\U2/Count [6]),
    .b(1'b0),
    .c(\U2/lt0_c6 ),
    .o({\U2/lt0_c7 ,open_n501}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U2/lt0_7  (
    .a(\U2/Count [7]),
    .b(1'b0),
    .c(\U2/lt0_c7 ),
    .o({\U2/lt0_c8 ,open_n502}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U2/lt0_cin  (
    .a(1'b0),
    .o({\U2/lt0_c0 ,open_n505}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U2/lt0_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U2/lt0_c8 ),
    .o({open_n506,\U2/n15 }));
  reg_ar_as_w1 \U2/reg0_b0  (
    .clk(UART_CLK),
    .d(\U2/n21 [0]),
    .en(1'b1),
    .reset(1'b0),
    .set(~nRST_pad),
    .q(\U2/UART_FSM [0]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w1 \U2/reg0_b1  (
    .clk(UART_CLK),
    .d(\U2/n21 [1]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U2/UART_FSM [1]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w1 \U2/reg0_b2  (
    .clk(UART_CLK),
    .d(\U2/n21 [2]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U2/UART_FSM [2]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w1 \U2/reg0_b3  (
    .clk(UART_CLK),
    .d(\U2/n21 [3]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U2/UART_FSM [3]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w1 \U2/reg1_b0  (
    .clk(UART_CLK),
    .d(\U2/n25 [0]),
    .en(~\C1/n0 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U2/SendBuff [0]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w1 \U2/reg1_b1  (
    .clk(UART_CLK),
    .d(\U2/n25 [1]),
    .en(~\C1/n0 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U2/SendBuff [1]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w1 \U2/reg1_b2  (
    .clk(UART_CLK),
    .d(\U2/n25 [2]),
    .en(~\C1/n0 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U2/SendBuff [2]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w1 \U2/reg1_b3  (
    .clk(UART_CLK),
    .d(\U2/n25 [3]),
    .en(~\C1/n0 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U2/SendBuff [3]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w1 \U2/reg1_b4  (
    .clk(UART_CLK),
    .d(\U2/n25 [4]),
    .en(~\C1/n0 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U2/SendBuff [4]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w1 \U2/reg1_b5  (
    .clk(UART_CLK),
    .d(\U2/n25 [5]),
    .en(~\C1/n0 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U2/SendBuff [5]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w1 \U2/reg1_b6  (
    .clk(UART_CLK),
    .d(\U2/n25 [6]),
    .en(~\C1/n0 ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U2/SendBuff [6]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w1 \U2/reg1_b7  (
    .clk(UART_CLK),
    .d(FIFO_DO[7]),
    .en(\U2/mux13_b7_sel_is_2_o ),
    .reset(1'b0),
    .set(1'b0),
    .q(\U2/SendBuff [7]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w1 \U2/reg2_b0  (
    .clk(UART_CLK),
    .d(\U2/n22 [0]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U2/Count [0]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w1 \U2/reg2_b1  (
    .clk(UART_CLK),
    .d(\U2/n22 [1]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U2/Count [1]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w1 \U2/reg2_b2  (
    .clk(UART_CLK),
    .d(\U2/n22 [2]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U2/Count [2]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w1 \U2/reg2_b3  (
    .clk(UART_CLK),
    .d(\U2/n22 [3]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U2/Count [3]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w1 \U2/reg2_b4  (
    .clk(UART_CLK),
    .d(\U2/n22 [4]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U2/Count [4]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w1 \U2/reg2_b5  (
    .clk(UART_CLK),
    .d(\U2/n22 [5]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U2/Count [5]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w1 \U2/reg2_b6  (
    .clk(UART_CLK),
    .d(\U2/n22 [6]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U2/Count [6]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  reg_ar_as_w1 \U2/reg2_b7  (
    .clk(UART_CLK),
    .d(\U2/n22 [7]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U2/Count [7]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/UARTSender.v(108)
  // address_offset=0;data_offset=0;depth=64;width=8;num_section=1;width_per_section=8;section_size=8;working_depth=1024;working_width=9;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
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
    .dia({open_n529,8'b00000000}),
    .rsta(nRST_pad),
    .doa({open_n544,FIFO_DI}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U3/add0/u0  (
    .a(\U3/Addr [0]),
    .b(1'b1),
    .c(\U3/add0/c0 ),
    .o({\U3/add0/c1 ,\U3/n2 [0]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U3/add0/u1  (
    .a(\U3/Addr [1]),
    .b(1'b0),
    .c(\U3/add0/c1 ),
    .o({\U3/add0/c2 ,\U3/n2 [1]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U3/add0/u2  (
    .a(\U3/Addr [2]),
    .b(1'b0),
    .c(\U3/add0/c2 ),
    .o({\U3/add0/c3 ,\U3/n2 [2]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U3/add0/u3  (
    .a(\U3/Addr [3]),
    .b(1'b0),
    .c(\U3/add0/c3 ),
    .o({\U3/add0/c4 ,\U3/n2 [3]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U3/add0/u4  (
    .a(\U3/Addr [4]),
    .b(1'b0),
    .c(\U3/add0/c4 ),
    .o({\U3/add0/c5 ,\U3/n2 [4]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U3/add0/u5  (
    .a(\U3/Addr [5]),
    .b(1'b0),
    .c(\U3/add0/c5 ),
    .o({\U3/add0/c6 ,\U3/n2 [5]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD"))
    \U3/add0/u6  (
    .a(\U3/Addr [6]),
    .b(1'b0),
    .c(\U3/add0/c6 ),
    .o({open_n554,\U3/n2 [6]}));
  AL_MAP_ADDER #(
    .ALUTYPE("ADD_CARRY"))
    \U3/add0/ucin  (
    .a(1'b0),
    .o({\U3/add0/c0 ,open_n557}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U3/lt0_0  (
    .a(1'b0),
    .b(\U3/Addr [0]),
    .c(\U3/lt0_c0 ),
    .o({\U3/lt0_c1 ,open_n558}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U3/lt0_1  (
    .a(1'b0),
    .b(\U3/Addr [1]),
    .c(\U3/lt0_c1 ),
    .o({\U3/lt0_c2 ,open_n559}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U3/lt0_2  (
    .a(1'b0),
    .b(\U3/Addr [2]),
    .c(\U3/lt0_c2 ),
    .o({\U3/lt0_c3 ,open_n560}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U3/lt0_3  (
    .a(1'b0),
    .b(\U3/Addr [3]),
    .c(\U3/lt0_c3 ),
    .o({\U3/lt0_c4 ,open_n561}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U3/lt0_4  (
    .a(1'b0),
    .b(\U3/Addr [4]),
    .c(\U3/lt0_c4 ),
    .o({\U3/lt0_c5 ,open_n562}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U3/lt0_5  (
    .a(1'b0),
    .b(\U3/Addr [5]),
    .c(\U3/lt0_c5 ),
    .o({\U3/lt0_c6 ,open_n563}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U3/lt0_6  (
    .a(1'b1),
    .b(\U3/Addr [6]),
    .c(\U3/lt0_c6 ),
    .o({\U3/lt0_c7 ,open_n564}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U3/lt0_cin  (
    .a(1'b1),
    .o({\U3/lt0_c0 ,open_n567}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U3/lt0_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U3/lt0_c7 ),
    .o({open_n568,\U3/n1 }));
  reg_ar_as_w1 \U3/reg0_b0  (
    .clk(CLK_50M),
    .d(\U3/n4 [0]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U3/Addr [0]));  // Source/UART_CTRL.v(24)
  reg_ar_as_w1 \U3/reg0_b1  (
    .clk(CLK_50M),
    .d(\U3/n4 [1]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U3/Addr [1]));  // Source/UART_CTRL.v(24)
  reg_ar_as_w1 \U3/reg0_b2  (
    .clk(CLK_50M),
    .d(\U3/n4 [2]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U3/Addr [2]));  // Source/UART_CTRL.v(24)
  reg_ar_as_w1 \U3/reg0_b3  (
    .clk(CLK_50M),
    .d(\U3/n4 [3]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U3/Addr [3]));  // Source/UART_CTRL.v(24)
  reg_ar_as_w1 \U3/reg0_b4  (
    .clk(CLK_50M),
    .d(\U3/n4 [4]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U3/Addr [4]));  // Source/UART_CTRL.v(24)
  reg_ar_as_w1 \U3/reg0_b5  (
    .clk(CLK_50M),
    .d(\U3/n4 [5]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U3/Addr [5]));  // Source/UART_CTRL.v(24)
  reg_ar_as_w1 \U3/reg0_b6  (
    .clk(CLK_50M),
    .d(\U3/n4 [6]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U3/Addr [6]));  // Source/UART_CTRL.v(24)
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u100 (
    .a(\U1/n2 [13]),
    .b(\U1/n1 ),
    .o(\U1/n3 [13]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u101 (
    .a(\U1/n2 [12]),
    .b(\U1/n1 ),
    .o(\U1/n3 [12]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u102 (
    .a(\U1/n2 [11]),
    .b(\U1/n1 ),
    .o(\U1/n3 [11]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u103 (
    .a(\U1/n2 [10]),
    .b(\U1/n1 ),
    .o(\U1/n3 [10]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u104 (
    .a(\U1/n2 [1]),
    .b(\U1/n1 ),
    .o(\U1/n3 [1]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u105 (
    .a(\U1/n2 [0]),
    .b(\U1/n1 ),
    .o(\U1/n3 [0]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    _al_u106 (
    .a(\U1/n6 ),
    .b(\U1/n10 ),
    .o(\U1/n11 ));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u107 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [16]),
    .d(\U1/n14 [16]),
    .o(\U1/PWM_GData [16]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u108 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [17]),
    .d(\U1/n14 [17]),
    .o(\U1/PWM_GData [17]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u109 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [18]),
    .d(\U1/n14 [18]),
    .o(\U1/PWM_GData [18]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u110 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [19]),
    .d(\U1/n14 [19]),
    .o(\U1/PWM_GData [19]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u111 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [20]),
    .d(\U1/n14 [20]),
    .o(\U1/PWM_GData [20]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u112 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [21]),
    .d(\U1/n14 [21]),
    .o(\U1/PWM_GData [21]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u113 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [22]),
    .d(\U1/n14 [22]),
    .o(\U1/PWM_GData [22]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u114 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [23]),
    .d(\U1/n14 [23]),
    .o(\U1/PWM_GData [23]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u115 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [24]),
    .d(\U1/n14 [24]),
    .o(\U1/PWM_GData [24]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u116 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [25]),
    .d(\U1/n14 [25]),
    .o(\U1/PWM_GData [25]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u117 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [26]),
    .d(\U1/n14 [26]),
    .o(\U1/PWM_GData [26]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u118 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [27]),
    .d(\U1/n14 [27]),
    .o(\U1/PWM_GData [27]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u119 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [28]),
    .d(\U1/n14 [28]),
    .o(\U1/PWM_GData [28]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u120 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [29]),
    .d(\U1/n14 [29]),
    .o(\U1/PWM_GData [29]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u121 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [30]),
    .d(\U1/n14 [30]),
    .o(\U1/PWM_GData [30]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u122 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [31]),
    .d(\U1/n14 [31]),
    .o(\U1/PWM_GData [31]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u123 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [16]),
    .d(\U1/n17 [16]),
    .o(\U1/PWM_BData [16]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u124 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [17]),
    .d(\U1/n17 [17]),
    .o(\U1/PWM_BData [17]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u125 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [18]),
    .d(\U1/n17 [18]),
    .o(\U1/PWM_BData [18]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u126 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [19]),
    .d(\U1/n17 [19]),
    .o(\U1/PWM_BData [19]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u127 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [20]),
    .d(\U1/n17 [20]),
    .o(\U1/PWM_BData [20]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u128 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [21]),
    .d(\U1/n17 [21]),
    .o(\U1/PWM_BData [21]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u129 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [22]),
    .d(\U1/n17 [22]),
    .o(\U1/PWM_BData [22]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u130 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [23]),
    .d(\U1/n17 [23]),
    .o(\U1/PWM_BData [23]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u131 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [24]),
    .d(\U1/n17 [24]),
    .o(\U1/PWM_BData [24]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u132 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [25]),
    .d(\U1/n17 [25]),
    .o(\U1/PWM_BData [25]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u133 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [26]),
    .d(\U1/n17 [26]),
    .o(\U1/PWM_BData [26]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u134 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [27]),
    .d(\U1/n17 [27]),
    .o(\U1/PWM_BData [27]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u135 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [28]),
    .d(\U1/n17 [28]),
    .o(\U1/PWM_BData [28]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u136 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [29]),
    .d(\U1/n17 [29]),
    .o(\U1/PWM_BData [29]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u137 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [30]),
    .d(\U1/n17 [30]),
    .o(\U1/PWM_BData [30]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u138 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [31]),
    .d(\U1/n17 [31]),
    .o(\U1/PWM_BData [31]));
  AL_MAP_LUT4 #(
    .EQN("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    .INIT(16'h0e04))
    _al_u139 (
    .a(FIFO_FULL),
    .b(\U3/n2 [0]),
    .c(\U3/n1 ),
    .d(\U3/Addr [0]),
    .o(\U3/n4 [0]));
  AL_MAP_LUT4 #(
    .EQN("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    .INIT(16'h0e04))
    _al_u140 (
    .a(FIFO_FULL),
    .b(\U3/n2 [1]),
    .c(\U3/n1 ),
    .d(\U3/Addr [1]),
    .o(\U3/n4 [1]));
  AL_MAP_LUT4 #(
    .EQN("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    .INIT(16'h0e04))
    _al_u141 (
    .a(FIFO_FULL),
    .b(\U3/n2 [2]),
    .c(\U3/n1 ),
    .d(\U3/Addr [2]),
    .o(\U3/n4 [2]));
  AL_MAP_LUT4 #(
    .EQN("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    .INIT(16'h0e04))
    _al_u142 (
    .a(FIFO_FULL),
    .b(\U3/n2 [3]),
    .c(\U3/n1 ),
    .d(\U3/Addr [3]),
    .o(\U3/n4 [3]));
  AL_MAP_LUT4 #(
    .EQN("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    .INIT(16'h0e04))
    _al_u143 (
    .a(FIFO_FULL),
    .b(\U3/n2 [4]),
    .c(\U3/n1 ),
    .d(\U3/Addr [4]),
    .o(\U3/n4 [4]));
  AL_MAP_LUT4 #(
    .EQN("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    .INIT(16'h0e04))
    _al_u144 (
    .a(FIFO_FULL),
    .b(\U3/n2 [5]),
    .c(\U3/n1 ),
    .d(\U3/Addr [5]),
    .o(\U3/n4 [5]));
  AL_MAP_LUT4 #(
    .EQN("(~C*(B*~(D)*~(A)+B*D*~(A)+~(B)*D*A+B*D*A))"),
    .INIT(16'h0e04))
    _al_u145 (
    .a(FIFO_FULL),
    .b(\U3/n2 [6]),
    .c(\U3/n1 ),
    .d(\U3/Addr [6]),
    .o(\U3/n4 [6]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    _al_u146 (
    .a(\U1/n5 ),
    .b(\U1/n6 ),
    .o(\U1/n7 ));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u147 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [31]),
    .d(\U1/n8 [31]),
    .o(\U1/PWM_RData [31]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u148 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [30]),
    .d(\U1/n8 [30]),
    .o(\U1/PWM_RData [30]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u149 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [29]),
    .d(\U1/n8 [29]),
    .o(\U1/PWM_RData [29]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u150 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [28]),
    .d(\U1/n8 [28]),
    .o(\U1/PWM_RData [28]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u151 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [27]),
    .d(\U1/n8 [27]),
    .o(\U1/PWM_RData [27]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u152 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [26]),
    .d(\U1/n8 [26]),
    .o(\U1/PWM_RData [26]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u153 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [25]),
    .d(\U1/n8 [25]),
    .o(\U1/PWM_RData [25]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u154 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [24]),
    .d(\U1/n8 [24]),
    .o(\U1/PWM_RData [24]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u155 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [23]),
    .d(\U1/n8 [23]),
    .o(\U1/PWM_RData [23]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u156 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [22]),
    .d(\U1/n8 [22]),
    .o(\U1/PWM_RData [22]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u157 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [21]),
    .d(\U1/n8 [21]),
    .o(\U1/PWM_RData [21]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u158 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [20]),
    .d(\U1/n8 [20]),
    .o(\U1/PWM_RData [20]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u159 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [19]),
    .d(\U1/n8 [19]),
    .o(\U1/PWM_RData [19]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u160 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [18]),
    .d(\U1/n8 [18]),
    .o(\U1/PWM_RData [18]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u161 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [17]),
    .d(\U1/n8 [17]),
    .o(\U1/PWM_RData [17]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u162 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [16]),
    .d(\U1/n8 [16]),
    .o(\U1/PWM_RData [16]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u163 (
    .a(\U2/UART_FSM [2]),
    .b(\U2/UART_FSM [3]),
    .o(_al_u163_o));
  AL_MAP_LUT4 #(
    .EQN("(D*~C*~B*A)"),
    .INIT(16'h0200))
    _al_u164 (
    .a(_al_u163_o),
    .b(\U2/UART_FSM [0]),
    .c(\U2/UART_FSM [1]),
    .d(nRST_pad),
    .o(\U2/mux13_b7_sel_is_2_o ));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*B*~A)"),
    .INIT(16'h0004))
    _al_u165 (
    .a(\U2/UART_FSM [0]),
    .b(\U2/UART_FSM [1]),
    .c(\U2/UART_FSM [2]),
    .d(\U2/UART_FSM [3]),
    .o(_al_u165_o));
  AL_MAP_LUT3 #(
    .EQN("(A*~(C*~B))"),
    .INIT(8'h8a))
    _al_u166 (
    .a(_al_u165_o),
    .b(FIFO_EMPTY),
    .c(FIFO_RE),
    .o(\U2/mux11_sel_is_2_o ));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u167 (
    .a(\U2/UART_FSM [1]),
    .b(\U2/UART_FSM [2]),
    .o(_al_u167_o));
  AL_MAP_LUT4 #(
    .EQN("(~D*(B*~(C)*~(A)+B*C*~(A)+~(B)*C*A+B*C*A))"),
    .INIT(16'h00e4))
    _al_u168 (
    .a(_al_u167_o),
    .b(FIFO_CLK_R),
    .c(\U2/UART_FSM [0]),
    .d(\U2/UART_FSM [3]),
    .o(_al_u168_o));
  AL_MAP_LUT3 #(
    .EQN("(C*~B*~A)"),
    .INIT(8'h10))
    _al_u169 (
    .a(\U2/UART_FSM [1]),
    .b(\U2/UART_FSM [2]),
    .c(\U2/UART_FSM [3]),
    .o(_al_u169_o));
  AL_MAP_LUT4 #(
    .EQN("(D*A*~(~C*~B))"),
    .INIT(16'ha800))
    _al_u170 (
    .a(FIFO_CLK_R),
    .b(\U2/UART_FSM [1]),
    .c(\U2/UART_FSM [2]),
    .d(\U2/UART_FSM [3]),
    .o(_al_u170_o));
  AL_MAP_LUT4 #(
    .EQN("~(~C*~A*~(D*B))"),
    .INIT(16'hfefa))
    _al_u171 (
    .a(_al_u168_o),
    .b(_al_u169_o),
    .c(_al_u170_o),
    .d(\U2/UART_FSM [0]),
    .o(\U2/n24 ));
  AL_MAP_LUT4 #(
    .EQN("(D*~C*~(B*~A))"),
    .INIT(16'h0b00))
    _al_u172 (
    .a(\U2/n15 ),
    .b(\U2/UART_FSM [0]),
    .c(\U2/UART_FSM [1]),
    .d(\U2/UART_FSM [2]),
    .o(_al_u172_o));
  AL_MAP_LUT3 #(
    .EQN("(A*~(C*B))"),
    .INIT(8'h2a))
    _al_u173 (
    .a(_al_u172_o),
    .b(\U2/UART_FSM [0]),
    .c(\U2/SendBuff [0]),
    .o(_al_u173_o));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u174 (
    .a(_al_u169_o),
    .b(UART_TX_pad),
    .o(_al_u174_o));
  AL_MAP_LUT4 #(
    .EQN("(~A*(~(B)*C*~(D)+B*C*~(D)+~(B)*~(C)*D))"),
    .INIT(16'h0150))
    _al_u175 (
    .a(UART_TX_pad),
    .b(\U2/n15 ),
    .c(\U2/UART_FSM [1]),
    .d(\U2/UART_FSM [2]),
    .o(_al_u175_o));
  AL_MAP_LUT4 #(
    .EQN("(~B*~(~D*~(~C*~A)))"),
    .INIT(16'h3301))
    _al_u176 (
    .a(_al_u173_o),
    .b(_al_u174_o),
    .c(_al_u175_o),
    .d(\U2/UART_FSM [3]),
    .o(\U2/n23 ));
  AL_MAP_LUT3 #(
    .EQN("(~C*B*~A)"),
    .INIT(8'h04))
    _al_u177 (
    .a(\U2/UART_FSM [1]),
    .b(\U2/UART_FSM [2]),
    .c(\U2/UART_FSM [3]),
    .o(_al_u177_o));
  AL_MAP_LUT3 #(
    .EQN("(A*~(C*~B))"),
    .INIT(8'h8a))
    _al_u178 (
    .a(_al_u177_o),
    .b(\U2/n15 ),
    .c(\U2/UART_FSM [0]),
    .o(_al_u178_o));
  AL_MAP_LUT3 #(
    .EQN("(A*~(C)*~(B)+A*C*~(B)+~(A)*C*B+A*C*B)"),
    .INIT(8'he2))
    _al_u179 (
    .a(FIFO_DO[0]),
    .b(\U2/UART_FSM [0]),
    .c(\U2/SendBuff [1]),
    .o(_al_u179_o));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    _al_u180 (
    .a(_al_u178_o),
    .b(_al_u179_o),
    .c(\U2/SendBuff [0]),
    .o(\U2/n25 [0]));
  AL_MAP_LUT3 #(
    .EQN("(A*~(C)*~(B)+A*C*~(B)+~(A)*C*B+A*C*B)"),
    .INIT(8'he2))
    _al_u181 (
    .a(FIFO_DO[1]),
    .b(\U2/UART_FSM [0]),
    .c(\U2/SendBuff [2]),
    .o(_al_u181_o));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    _al_u182 (
    .a(_al_u178_o),
    .b(_al_u181_o),
    .c(\U2/SendBuff [1]),
    .o(\U2/n25 [1]));
  AL_MAP_LUT3 #(
    .EQN("(A*~(C*~B))"),
    .INIT(8'h8a))
    _al_u183 (
    .a(_al_u177_o),
    .b(\U2/n15 ),
    .c(\U2/UART_FSM [0]),
    .o(_al_u183_o));
  AL_MAP_LUT3 #(
    .EQN("(A*~(C)*~(B)+A*C*~(B)+~(A)*C*B+A*C*B)"),
    .INIT(8'he2))
    _al_u184 (
    .a(FIFO_DO[2]),
    .b(\U2/UART_FSM [0]),
    .c(\U2/SendBuff [3]),
    .o(_al_u184_o));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    _al_u185 (
    .a(_al_u183_o),
    .b(_al_u184_o),
    .c(\U2/SendBuff [2]),
    .o(\U2/n25 [2]));
  AL_MAP_LUT3 #(
    .EQN("(A*~(C)*~(B)+A*C*~(B)+~(A)*C*B+A*C*B)"),
    .INIT(8'he2))
    _al_u186 (
    .a(FIFO_DO[3]),
    .b(\U2/UART_FSM [0]),
    .c(\U2/SendBuff [4]),
    .o(_al_u186_o));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    _al_u187 (
    .a(_al_u183_o),
    .b(_al_u186_o),
    .c(\U2/SendBuff [3]),
    .o(\U2/n25 [3]));
  AL_MAP_LUT3 #(
    .EQN("(A*~(C)*~(B)+A*C*~(B)+~(A)*C*B+A*C*B)"),
    .INIT(8'he2))
    _al_u188 (
    .a(FIFO_DO[4]),
    .b(\U2/UART_FSM [0]),
    .c(\U2/SendBuff [5]),
    .o(_al_u188_o));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    _al_u189 (
    .a(_al_u183_o),
    .b(_al_u188_o),
    .c(\U2/SendBuff [4]),
    .o(\U2/n25 [4]));
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
  AL_MAP_LUT3 #(
    .EQN("(A*~(C)*~(B)+A*C*~(B)+~(A)*C*B+A*C*B)"),
    .INIT(8'he2))
    _al_u190 (
    .a(FIFO_DO[5]),
    .b(\U2/UART_FSM [0]),
    .c(\U2/SendBuff [6]),
    .o(_al_u190_o));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    _al_u191 (
    .a(_al_u183_o),
    .b(_al_u190_o),
    .c(\U2/SendBuff [5]),
    .o(\U2/n25 [5]));
  AL_MAP_LUT3 #(
    .EQN("(A*~(C)*~(B)+A*C*~(B)+~(A)*C*B+A*C*B)"),
    .INIT(8'he2))
    _al_u192 (
    .a(FIFO_DO[6]),
    .b(\U2/UART_FSM [0]),
    .c(\U2/SendBuff [7]),
    .o(_al_u192_o));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    _al_u193 (
    .a(_al_u178_o),
    .b(_al_u192_o),
    .c(\U2/SendBuff [6]),
    .o(\U2/n25 [6]));
  AL_MAP_LUT3 #(
    .EQN("(~C*~(~B*~A))"),
    .INIT(8'h0e))
    _al_u194 (
    .a(\U2/UART_FSM [0]),
    .b(\U2/UART_FSM [1]),
    .c(\U2/UART_FSM [3]),
    .o(_al_u194_o));
  AL_MAP_LUT4 #(
    .EQN("(~C*(A*~(B)*~(D)+~(A)*B*~(D)+A*B*~(D)+~(A)*~(B)*D+A*~(B)*D))"),
    .INIT(16'h030e))
    _al_u195 (
    .a(\U2/UART_FSM [0]),
    .b(\U2/UART_FSM [1]),
    .c(\U2/UART_FSM [2]),
    .d(\U2/UART_FSM [3]),
    .o(_al_u195_o));
  AL_MAP_LUT4 #(
    .EQN("(~B*~(A*~(~D*C)))"),
    .INIT(16'h1131))
    _al_u196 (
    .a(_al_u194_o),
    .b(_al_u195_o),
    .c(\U2/n15 ),
    .d(\U2/UART_FSM [1]),
    .o(_al_u196_o));
  AL_MAP_LUT4 #(
    .EQN("(~D*C*B*A)"),
    .INIT(16'h0080))
    _al_u197 (
    .a(_al_u163_o),
    .b(\U2/n15 ),
    .c(\U2/UART_FSM [0]),
    .d(\U2/UART_FSM [1]),
    .o(_al_u197_o));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*~A))"),
    .INIT(16'hd5c0))
    _al_u198 (
    .a(_al_u196_o),
    .b(_al_u197_o),
    .c(\U2/n16 [0]),
    .d(\U2/Count [0]),
    .o(\U2/n22 [0]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*~A))"),
    .INIT(16'hd5c0))
    _al_u199 (
    .a(_al_u196_o),
    .b(_al_u197_o),
    .c(\U2/n16 [1]),
    .d(\U2/Count [1]),
    .o(\U2/n22 [1]));
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
    .do({open_n587,open_n588,open_n589,1'b0}),
    .opad(GPIO));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(17)
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*~A))"),
    .INIT(16'hd5c0))
    _al_u200 (
    .a(_al_u196_o),
    .b(_al_u197_o),
    .c(\U2/n16 [2]),
    .d(\U2/Count [2]),
    .o(\U2/n22 [2]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*~A))"),
    .INIT(16'hd5c0))
    _al_u201 (
    .a(_al_u196_o),
    .b(_al_u197_o),
    .c(\U2/n16 [3]),
    .d(\U2/Count [3]),
    .o(\U2/n22 [3]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*~A))"),
    .INIT(16'hd5c0))
    _al_u202 (
    .a(_al_u196_o),
    .b(_al_u197_o),
    .c(\U2/n16 [4]),
    .d(\U2/Count [4]),
    .o(\U2/n22 [4]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*~A))"),
    .INIT(16'hd5c0))
    _al_u203 (
    .a(_al_u196_o),
    .b(_al_u197_o),
    .c(\U2/n16 [5]),
    .d(\U2/Count [5]),
    .o(\U2/n22 [5]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*~A))"),
    .INIT(16'hd5c0))
    _al_u204 (
    .a(_al_u196_o),
    .b(_al_u197_o),
    .c(\U2/n16 [6]),
    .d(\U2/Count [6]),
    .o(\U2/n22 [6]));
  AL_MAP_LUT4 #(
    .EQN("~(~(C*B)*~(D*~A))"),
    .INIT(16'hd5c0))
    _al_u205 (
    .a(_al_u196_o),
    .b(_al_u197_o),
    .c(\U2/n16 [7]),
    .d(\U2/Count [7]),
    .o(\U2/n22 [7]));
  AL_MAP_LUT4 #(
    .EQN("(D*~C*~B*~A)"),
    .INIT(16'h0100))
    _al_u206 (
    .a(\C1/Count [27]),
    .b(\C1/Count [28]),
    .c(\C1/Count [29]),
    .d(\C1/Count [3]),
    .o(_al_u206_o));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*~A)"),
    .INIT(16'h0001))
    _al_u207 (
    .a(\C1/Count [23]),
    .b(\C1/Count [24]),
    .c(\C1/Count [25]),
    .d(\C1/Count [26]),
    .o(_al_u207_o));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*B*A)"),
    .INIT(16'h0008))
    _al_u208 (
    .a(\C1/Count [6]),
    .b(\C1/Count [7]),
    .c(\C1/Count [8]),
    .d(\C1/Count [9]),
    .o(_al_u208_o));
  AL_MAP_LUT4 #(
    .EQN("(~D*C*~B*~A)"),
    .INIT(16'h0010))
    _al_u209 (
    .a(\C1/Count [30]),
    .b(\C1/Count [31]),
    .c(\C1/Count [4]),
    .d(\C1/Count [5]),
    .o(_al_u209_o));
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
    .do({open_n604,open_n605,open_n606,LEDs_pad[2]}),
    .opad(LEDs[2]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(15)
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    _al_u210 (
    .a(_al_u206_o),
    .b(_al_u207_o),
    .c(_al_u208_o),
    .d(_al_u209_o),
    .o(_al_u210_o));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*~A)"),
    .INIT(16'h0001))
    _al_u211 (
    .a(\C1/Count [12]),
    .b(\C1/Count [13]),
    .c(\C1/Count [14]),
    .d(\C1/Count [15]),
    .o(_al_u211_o));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*A)"),
    .INIT(16'h0002))
    _al_u212 (
    .a(\C1/Count [0]),
    .b(\C1/Count [1]),
    .c(\C1/Count [10]),
    .d(\C1/Count [11]),
    .o(_al_u212_o));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*~A)"),
    .INIT(16'h0001))
    _al_u213 (
    .a(\C1/Count [2]),
    .b(\C1/Count [20]),
    .c(\C1/Count [21]),
    .d(\C1/Count [22]),
    .o(_al_u213_o));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*~A)"),
    .INIT(16'h0001))
    _al_u214 (
    .a(\C1/Count [16]),
    .b(\C1/Count [17]),
    .c(\C1/Count [18]),
    .d(\C1/Count [19]),
    .o(_al_u214_o));
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    _al_u215 (
    .a(_al_u211_o),
    .b(_al_u212_o),
    .c(_al_u213_o),
    .d(_al_u214_o),
    .o(_al_u215_o));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    _al_u216 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .o(\C1/n1 ));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u217 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [9]),
    .o(\C1/n5 [9]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u218 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [8]),
    .o(\C1/n5 [8]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u219 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [7]),
    .o(\C1/n5 [7]));
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
    .do({open_n621,open_n622,open_n623,LEDs_pad[1]}),
    .opad(LEDs[1]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(15)
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u220 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [6]),
    .o(\C1/n5 [6]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u221 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [5]),
    .o(\C1/n5 [5]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u222 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [4]),
    .o(\C1/n5 [4]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u223 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [31]),
    .o(\C1/n5 [31]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u224 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [30]),
    .o(\C1/n5 [30]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u225 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [3]),
    .o(\C1/n5 [3]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u226 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [29]),
    .o(\C1/n5 [29]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u227 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [28]),
    .o(\C1/n5 [28]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u228 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [27]),
    .o(\C1/n5 [27]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u229 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [26]),
    .o(\C1/n5 [26]));
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
    .do({open_n638,open_n639,open_n640,LEDs_pad[0]}),
    .opad(LEDs[0]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(15)
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u230 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [25]),
    .o(\C1/n5 [25]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u231 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [24]),
    .o(\C1/n5 [24]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u232 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [23]),
    .o(\C1/n5 [23]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u233 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [22]),
    .o(\C1/n5 [22]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u234 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [21]),
    .o(\C1/n5 [21]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u235 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [20]),
    .o(\C1/n5 [20]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u236 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [2]),
    .o(\C1/n5 [2]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u237 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [19]),
    .o(\C1/n5 [19]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u238 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [18]),
    .o(\C1/n5 [18]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u239 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [17]),
    .o(\C1/n5 [17]));
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
    .do({open_n655,open_n656,open_n657,UART_TX_pad}),
    .opad(UART_TX));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/URAT_Examples/Source/TOP.v(16)
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u240 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [16]),
    .o(\C1/n5 [16]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u241 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [15]),
    .o(\C1/n5 [15]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u242 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [14]),
    .o(\C1/n5 [14]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u243 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [13]),
    .o(\C1/n5 [13]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u244 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [12]),
    .o(\C1/n5 [12]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u245 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [11]),
    .o(\C1/n5 [11]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u246 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [10]),
    .o(\C1/n5 [10]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u247 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [1]),
    .o(\C1/n5 [1]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B*A))"),
    .INIT(8'h70))
    _al_u248 (
    .a(_al_u210_o),
    .b(_al_u215_o),
    .c(\C1/n3 [0]),
    .o(\C1/n5 [0]));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*A)"),
    .INIT(8'h02))
    _al_u249 (
    .a(FIFO_RE),
    .b(\U2/UART_FSM [2]),
    .c(\U2/UART_FSM [3]),
    .o(_al_u249_o));
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
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(A)*~(C)+(D*B)*A*~(C)+~((D*B))*A*C+(D*B)*A*C)"),
    .INIT(16'haca0))
    _al_u250 (
    .a(_al_u169_o),
    .b(_al_u249_o),
    .c(\U2/UART_FSM [0]),
    .d(\U2/UART_FSM [1]),
    .o(\U2/n21 [3]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+~(A)*B*C*~(D)+~(A)*~(B)*~(C)*D)"),
    .INIT(16'h0170))
    _al_u251 (
    .a(\U2/UART_FSM [0]),
    .b(\U2/UART_FSM [1]),
    .c(\U2/UART_FSM [2]),
    .d(\U2/UART_FSM [3]),
    .o(\U2/n21 [2]));
  AL_MAP_LUT4 #(
    .EQN("(~D*A*~(~C*~B))"),
    .INIT(16'h00a8))
    _al_u252 (
    .a(\U2/UART_FSM [0]),
    .b(\U2/UART_FSM [1]),
    .c(\U2/UART_FSM [2]),
    .d(\U2/UART_FSM [3]),
    .o(_al_u252_o));
  AL_MAP_LUT4 #(
    .EQN("(~A*~(B*~(~D*C)))"),
    .INIT(16'h1151))
    _al_u253 (
    .a(_al_u169_o),
    .b(_al_u252_o),
    .c(\U2/n15 ),
    .d(\U2/UART_FSM [1]),
    .o(\U2/n21 [0]));
  AL_MAP_LUT3 #(
    .EQN("(C*~B*~A)"),
    .INIT(8'h10))
    _al_u254 (
    .a(FIFO_EMPTY),
    .b(FIFO_RE),
    .c(\U2/UART_FSM [1]),
    .o(_al_u254_o));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*~A)"),
    .INIT(8'h01))
    _al_u255 (
    .a(_al_u254_o),
    .b(\U2/UART_FSM [0]),
    .c(\U2/UART_FSM [2]),
    .o(_al_u255_o));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*~A)"),
    .INIT(8'h01))
    _al_u256 (
    .a(_al_u255_o),
    .b(_al_u172_o),
    .c(\U2/UART_FSM [3]),
    .o(\U2/n21 [1]));
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    _al_u257 (
    .a(UART_CLK),
    .o(\C1/n2 ));
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    _al_u258 (
    .a(FIFO_EMPTY),
    .o(FIFO_EMPTY_neg));
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    _al_u259 (
    .a(FIFO_FULL),
    .o(FIFO_FULL_neg));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u26 (
    .a(\U1/B_PWM/n2 [9]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [9]));
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    _al_u260 (
    .a(\U1/B_PWM/n4 ),
    .o(LEDs_pad[2]));
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    _al_u261 (
    .a(\U1/G_PWM/n4 ),
    .o(LEDs_pad[1]));
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    _al_u262 (
    .a(\U1/R_PWM/n4 ),
    .o(LEDs_pad[0]));
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    _al_u263 (
    .a(nRST_pad),
    .o(\C1/n0 ));
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    _al_u264 (
    .a(FIFO_EMPTY),
    .o(\U2/n12 ));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u27 (
    .a(\U1/B_PWM/n2 [8]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [8]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u28 (
    .a(\U1/B_PWM/n2 [7]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [7]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u29 (
    .a(\U1/B_PWM/n2 [6]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [6]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u30 (
    .a(\U1/B_PWM/n2 [5]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [5]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u31 (
    .a(\U1/B_PWM/n2 [4]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [4]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u32 (
    .a(\U1/B_PWM/n2 [3]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [3]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u33 (
    .a(\U1/B_PWM/n2 [2]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [2]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u34 (
    .a(\U1/B_PWM/n2 [15]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [15]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u35 (
    .a(\U1/B_PWM/n2 [14]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [14]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u36 (
    .a(\U1/B_PWM/n2 [13]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [13]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u37 (
    .a(\U1/B_PWM/n2 [12]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [12]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u38 (
    .a(\U1/B_PWM/n2 [11]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [11]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u39 (
    .a(\U1/B_PWM/n2 [10]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [10]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u40 (
    .a(\U1/B_PWM/n2 [1]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [1]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u41 (
    .a(\U1/B_PWM/n2 [0]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [0]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u42 (
    .a(\U1/G_PWM/n2 [9]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [9]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u43 (
    .a(\U1/G_PWM/n2 [8]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [8]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u44 (
    .a(\U1/G_PWM/n2 [7]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [7]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u45 (
    .a(\U1/G_PWM/n2 [6]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [6]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u46 (
    .a(\U1/G_PWM/n2 [5]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [5]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u47 (
    .a(\U1/G_PWM/n2 [4]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [4]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u48 (
    .a(\U1/G_PWM/n2 [3]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [3]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u49 (
    .a(\U1/G_PWM/n2 [2]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [2]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u50 (
    .a(\U1/G_PWM/n2 [15]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [15]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u51 (
    .a(\U1/G_PWM/n2 [14]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [14]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u52 (
    .a(\U1/G_PWM/n2 [13]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [13]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u53 (
    .a(\U1/G_PWM/n2 [12]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [12]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u54 (
    .a(\U1/G_PWM/n2 [11]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [11]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u55 (
    .a(\U1/G_PWM/n2 [10]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [10]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u56 (
    .a(\U1/G_PWM/n2 [1]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [1]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u57 (
    .a(\U1/G_PWM/n2 [0]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [0]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u58 (
    .a(\U1/R_PWM/n2 [9]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [9]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u59 (
    .a(\U1/R_PWM/n2 [8]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [8]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u60 (
    .a(\U1/R_PWM/n2 [7]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [7]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u61 (
    .a(\U1/R_PWM/n2 [6]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [6]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u62 (
    .a(\U1/R_PWM/n2 [5]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [5]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u63 (
    .a(\U1/R_PWM/n2 [4]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [4]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u64 (
    .a(\U1/R_PWM/n2 [3]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [3]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u65 (
    .a(\U1/R_PWM/n2 [2]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [2]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u66 (
    .a(\U1/R_PWM/n2 [15]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [15]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u67 (
    .a(\U1/R_PWM/n2 [14]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [14]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u68 (
    .a(\U1/R_PWM/n2 [13]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [13]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u69 (
    .a(\U1/R_PWM/n2 [12]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [12]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u70 (
    .a(\U1/R_PWM/n2 [11]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [11]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u71 (
    .a(\U1/R_PWM/n2 [10]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [10]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u72 (
    .a(\U1/R_PWM/n2 [1]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [1]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u73 (
    .a(\U1/R_PWM/n2 [0]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [0]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u74 (
    .a(\U1/n2 [9]),
    .b(\U1/n1 ),
    .o(\U1/n3 [9]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u75 (
    .a(\U1/n2 [8]),
    .b(\U1/n1 ),
    .o(\U1/n3 [8]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u76 (
    .a(\U1/n2 [7]),
    .b(\U1/n1 ),
    .o(\U1/n3 [7]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u77 (
    .a(\U1/n2 [6]),
    .b(\U1/n1 ),
    .o(\U1/n3 [6]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u78 (
    .a(\U1/n2 [5]),
    .b(\U1/n1 ),
    .o(\U1/n3 [5]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u79 (
    .a(\U1/n2 [4]),
    .b(\U1/n1 ),
    .o(\U1/n3 [4]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u80 (
    .a(\U1/n2 [31]),
    .b(\U1/n1 ),
    .o(\U1/n3 [31]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u81 (
    .a(\U1/n2 [30]),
    .b(\U1/n1 ),
    .o(\U1/n3 [30]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u82 (
    .a(\U1/n2 [3]),
    .b(\U1/n1 ),
    .o(\U1/n3 [3]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u83 (
    .a(\U1/n2 [29]),
    .b(\U1/n1 ),
    .o(\U1/n3 [29]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u84 (
    .a(\U1/n2 [28]),
    .b(\U1/n1 ),
    .o(\U1/n3 [28]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u85 (
    .a(\U1/n2 [27]),
    .b(\U1/n1 ),
    .o(\U1/n3 [27]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u86 (
    .a(\U1/n2 [26]),
    .b(\U1/n1 ),
    .o(\U1/n3 [26]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u87 (
    .a(\U1/n2 [25]),
    .b(\U1/n1 ),
    .o(\U1/n3 [25]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u88 (
    .a(\U1/n2 [24]),
    .b(\U1/n1 ),
    .o(\U1/n3 [24]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u89 (
    .a(\U1/n2 [23]),
    .b(\U1/n1 ),
    .o(\U1/n3 [23]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u90 (
    .a(\U1/n2 [22]),
    .b(\U1/n1 ),
    .o(\U1/n3 [22]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u91 (
    .a(\U1/n2 [21]),
    .b(\U1/n1 ),
    .o(\U1/n3 [21]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u92 (
    .a(\U1/n2 [20]),
    .b(\U1/n1 ),
    .o(\U1/n3 [20]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u93 (
    .a(\U1/n2 [2]),
    .b(\U1/n1 ),
    .o(\U1/n3 [2]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u94 (
    .a(\U1/n2 [19]),
    .b(\U1/n1 ),
    .o(\U1/n3 [19]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u95 (
    .a(\U1/n2 [18]),
    .b(\U1/n1 ),
    .o(\U1/n3 [18]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u96 (
    .a(\U1/n2 [17]),
    .b(\U1/n1 ),
    .o(\U1/n3 [17]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u97 (
    .a(\U1/n2 [16]),
    .b(\U1/n1 ),
    .o(\U1/n3 [16]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u98 (
    .a(\U1/n2 [15]),
    .b(\U1/n1 ),
    .o(\U1/n3 [15]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u99 (
    .a(\U1/n2 [14]),
    .b(\U1/n1 ),
    .o(\U1/n3 [14]));
  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();

endmodule 

module reg_ar_as_w1
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input d;
  input en;
  input reset;
  input set;
  output q;

  parameter REGSET = "RESET";
  wire enout;

  AL_MUX u_en0 (
    .i0(q),
    .i1(d),
    .sel(en),
    .o(enout));
  AL_DFF #(
    .INI((REGSET == "SET") ? 1'b1 : 1'b0))
    u_seq0 (
    .clk(clk),
    .d(enout),
    .reset(reset),
    .set(set),
    .q(q));

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

