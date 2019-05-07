// Verilog netlist created by TD v4.4.433
// Tue May  7 16:09:35 2019

`timescale 1ns / 1ps
module TOP  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(1)
  (
  CLK_24M,
  nRST,
  GPIO,
  LEDs
  );

  input CLK_24M;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(11)
  input nRST;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(12)
  output GPIO;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(15)
  output [2:0] LEDs;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(14)

  wire [2:0] LEDs_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(14)
  wire [15:0] \U1/B_PWM/PWMCount ;  // Source/PWM.v(15)
  wire [15:0] \U1/B_PWM/n2 ;
  wire [15:0] \U1/B_PWM/n3 ;
  wire [31:0] \U1/Count_LED ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(9)
  wire [15:0] \U1/G_PWM/PWMCount ;  // Source/PWM.v(15)
  wire [15:0] \U1/G_PWM/n2 ;
  wire [15:0] \U1/G_PWM/n3 ;
  wire [31:0] \U1/PWM_BData ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(25)
  wire [31:0] \U1/PWM_GData ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(24)
  wire [31:0] \U1/PWM_RData ;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(23)
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
  wire CLK_24M_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(11)
  wire CLK_50M;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(18)
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
  wire \U1/B_PWM/n0 ;
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
  wire nRST_pad;  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(12)

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
    .reset(\U1/B_PWM/n0 ),
    .stdby(1'b0),
    .clkc({open_n0,open_n1,open_n2,CLK_50M,\Pll/clk0_buf }));  // al_ip/SysPll.v(76)
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
    .o({open_n13,\U1/B_PWM/n2 [15]}));
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
    .o({\U1/B_PWM/add0/c0 ,open_n16}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_0  (
    .a(1'b0),
    .b(\U1/B_PWM/PWMCount [0]),
    .c(\U1/B_PWM/lt0_c0 ),
    .o({\U1/B_PWM/lt0_c1 ,open_n17}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_1  (
    .a(1'b0),
    .b(\U1/B_PWM/PWMCount [1]),
    .c(\U1/B_PWM/lt0_c1 ),
    .o({\U1/B_PWM/lt0_c2 ,open_n18}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_10  (
    .a(1'b0),
    .b(\U1/B_PWM/PWMCount [10]),
    .c(\U1/B_PWM/lt0_c10 ),
    .o({\U1/B_PWM/lt0_c11 ,open_n19}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_11  (
    .a(1'b0),
    .b(\U1/B_PWM/PWMCount [11]),
    .c(\U1/B_PWM/lt0_c11 ),
    .o({\U1/B_PWM/lt0_c12 ,open_n20}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_12  (
    .a(1'b0),
    .b(\U1/B_PWM/PWMCount [12]),
    .c(\U1/B_PWM/lt0_c12 ),
    .o({\U1/B_PWM/lt0_c13 ,open_n21}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_13  (
    .a(1'b0),
    .b(\U1/B_PWM/PWMCount [13]),
    .c(\U1/B_PWM/lt0_c13 ),
    .o({\U1/B_PWM/lt0_c14 ,open_n22}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_14  (
    .a(1'b0),
    .b(\U1/B_PWM/PWMCount [14]),
    .c(\U1/B_PWM/lt0_c14 ),
    .o({\U1/B_PWM/lt0_c15 ,open_n23}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_15  (
    .a(1'b0),
    .b(\U1/B_PWM/PWMCount [15]),
    .c(\U1/B_PWM/lt0_c15 ),
    .o({\U1/B_PWM/lt0_c16 ,open_n24}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_2  (
    .a(1'b0),
    .b(\U1/B_PWM/PWMCount [2]),
    .c(\U1/B_PWM/lt0_c2 ),
    .o({\U1/B_PWM/lt0_c3 ,open_n25}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_3  (
    .a(1'b1),
    .b(\U1/B_PWM/PWMCount [3]),
    .c(\U1/B_PWM/lt0_c3 ),
    .o({\U1/B_PWM/lt0_c4 ,open_n26}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_4  (
    .a(1'b0),
    .b(\U1/B_PWM/PWMCount [4]),
    .c(\U1/B_PWM/lt0_c4 ),
    .o({\U1/B_PWM/lt0_c5 ,open_n27}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_5  (
    .a(1'b1),
    .b(\U1/B_PWM/PWMCount [5]),
    .c(\U1/B_PWM/lt0_c5 ),
    .o({\U1/B_PWM/lt0_c6 ,open_n28}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_6  (
    .a(1'b1),
    .b(\U1/B_PWM/PWMCount [6]),
    .c(\U1/B_PWM/lt0_c6 ),
    .o({\U1/B_PWM/lt0_c7 ,open_n29}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_7  (
    .a(1'b1),
    .b(\U1/B_PWM/PWMCount [7]),
    .c(\U1/B_PWM/lt0_c7 ),
    .o({\U1/B_PWM/lt0_c8 ,open_n30}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_8  (
    .a(1'b1),
    .b(\U1/B_PWM/PWMCount [8]),
    .c(\U1/B_PWM/lt0_c8 ),
    .o({\U1/B_PWM/lt0_c9 ,open_n31}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_9  (
    .a(1'b1),
    .b(\U1/B_PWM/PWMCount [9]),
    .c(\U1/B_PWM/lt0_c9 ),
    .o({\U1/B_PWM/lt0_c10 ,open_n32}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/B_PWM/lt0_cin  (
    .a(1'b1),
    .o({\U1/B_PWM/lt0_c0 ,open_n35}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt0_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/B_PWM/lt0_c16 ),
    .o({open_n36,\U1/B_PWM/n1 }));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_0  (
    .a(\U1/B_PWM/PWMCount [0]),
    .b(\U1/PWM_BData [16]),
    .c(\U1/B_PWM/lt1_c0 ),
    .o({\U1/B_PWM/lt1_c1 ,open_n37}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_1  (
    .a(\U1/B_PWM/PWMCount [1]),
    .b(\U1/PWM_BData [17]),
    .c(\U1/B_PWM/lt1_c1 ),
    .o({\U1/B_PWM/lt1_c2 ,open_n38}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_10  (
    .a(\U1/B_PWM/PWMCount [10]),
    .b(\U1/PWM_BData [26]),
    .c(\U1/B_PWM/lt1_c10 ),
    .o({\U1/B_PWM/lt1_c11 ,open_n39}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_11  (
    .a(\U1/B_PWM/PWMCount [11]),
    .b(\U1/PWM_BData [27]),
    .c(\U1/B_PWM/lt1_c11 ),
    .o({\U1/B_PWM/lt1_c12 ,open_n40}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_12  (
    .a(\U1/B_PWM/PWMCount [12]),
    .b(\U1/PWM_BData [28]),
    .c(\U1/B_PWM/lt1_c12 ),
    .o({\U1/B_PWM/lt1_c13 ,open_n41}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_13  (
    .a(\U1/B_PWM/PWMCount [13]),
    .b(\U1/PWM_BData [29]),
    .c(\U1/B_PWM/lt1_c13 ),
    .o({\U1/B_PWM/lt1_c14 ,open_n42}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_14  (
    .a(\U1/B_PWM/PWMCount [14]),
    .b(\U1/PWM_BData [30]),
    .c(\U1/B_PWM/lt1_c14 ),
    .o({\U1/B_PWM/lt1_c15 ,open_n43}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_15  (
    .a(\U1/B_PWM/PWMCount [15]),
    .b(\U1/PWM_BData [31]),
    .c(\U1/B_PWM/lt1_c15 ),
    .o({\U1/B_PWM/lt1_c16 ,open_n44}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_2  (
    .a(\U1/B_PWM/PWMCount [2]),
    .b(\U1/PWM_BData [18]),
    .c(\U1/B_PWM/lt1_c2 ),
    .o({\U1/B_PWM/lt1_c3 ,open_n45}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_3  (
    .a(\U1/B_PWM/PWMCount [3]),
    .b(\U1/PWM_BData [19]),
    .c(\U1/B_PWM/lt1_c3 ),
    .o({\U1/B_PWM/lt1_c4 ,open_n46}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_4  (
    .a(\U1/B_PWM/PWMCount [4]),
    .b(\U1/PWM_BData [20]),
    .c(\U1/B_PWM/lt1_c4 ),
    .o({\U1/B_PWM/lt1_c5 ,open_n47}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_5  (
    .a(\U1/B_PWM/PWMCount [5]),
    .b(\U1/PWM_BData [21]),
    .c(\U1/B_PWM/lt1_c5 ),
    .o({\U1/B_PWM/lt1_c6 ,open_n48}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_6  (
    .a(\U1/B_PWM/PWMCount [6]),
    .b(\U1/PWM_BData [22]),
    .c(\U1/B_PWM/lt1_c6 ),
    .o({\U1/B_PWM/lt1_c7 ,open_n49}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_7  (
    .a(\U1/B_PWM/PWMCount [7]),
    .b(\U1/PWM_BData [23]),
    .c(\U1/B_PWM/lt1_c7 ),
    .o({\U1/B_PWM/lt1_c8 ,open_n50}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_8  (
    .a(\U1/B_PWM/PWMCount [8]),
    .b(\U1/PWM_BData [24]),
    .c(\U1/B_PWM/lt1_c8 ),
    .o({\U1/B_PWM/lt1_c9 ,open_n51}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_9  (
    .a(\U1/B_PWM/PWMCount [9]),
    .b(\U1/PWM_BData [25]),
    .c(\U1/B_PWM/lt1_c9 ),
    .o({\U1/B_PWM/lt1_c10 ,open_n52}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/B_PWM/lt1_cin  (
    .a(1'b1),
    .o({\U1/B_PWM/lt1_c0 ,open_n55}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/B_PWM/lt1_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/B_PWM/lt1_c16 ),
    .o({open_n56,\U1/B_PWM/n4 }));
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
    .o({open_n57,\U1/G_PWM/n2 [15]}));
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
    .o({\U1/G_PWM/add0/c0 ,open_n60}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_0  (
    .a(1'b0),
    .b(\U1/G_PWM/PWMCount [0]),
    .c(\U1/G_PWM/lt0_c0 ),
    .o({\U1/G_PWM/lt0_c1 ,open_n61}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_1  (
    .a(1'b0),
    .b(\U1/G_PWM/PWMCount [1]),
    .c(\U1/G_PWM/lt0_c1 ),
    .o({\U1/G_PWM/lt0_c2 ,open_n62}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_10  (
    .a(1'b0),
    .b(\U1/G_PWM/PWMCount [10]),
    .c(\U1/G_PWM/lt0_c10 ),
    .o({\U1/G_PWM/lt0_c11 ,open_n63}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_11  (
    .a(1'b0),
    .b(\U1/G_PWM/PWMCount [11]),
    .c(\U1/G_PWM/lt0_c11 ),
    .o({\U1/G_PWM/lt0_c12 ,open_n64}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_12  (
    .a(1'b0),
    .b(\U1/G_PWM/PWMCount [12]),
    .c(\U1/G_PWM/lt0_c12 ),
    .o({\U1/G_PWM/lt0_c13 ,open_n65}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_13  (
    .a(1'b0),
    .b(\U1/G_PWM/PWMCount [13]),
    .c(\U1/G_PWM/lt0_c13 ),
    .o({\U1/G_PWM/lt0_c14 ,open_n66}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_14  (
    .a(1'b0),
    .b(\U1/G_PWM/PWMCount [14]),
    .c(\U1/G_PWM/lt0_c14 ),
    .o({\U1/G_PWM/lt0_c15 ,open_n67}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_15  (
    .a(1'b0),
    .b(\U1/G_PWM/PWMCount [15]),
    .c(\U1/G_PWM/lt0_c15 ),
    .o({\U1/G_PWM/lt0_c16 ,open_n68}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_2  (
    .a(1'b0),
    .b(\U1/G_PWM/PWMCount [2]),
    .c(\U1/G_PWM/lt0_c2 ),
    .o({\U1/G_PWM/lt0_c3 ,open_n69}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_3  (
    .a(1'b1),
    .b(\U1/G_PWM/PWMCount [3]),
    .c(\U1/G_PWM/lt0_c3 ),
    .o({\U1/G_PWM/lt0_c4 ,open_n70}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_4  (
    .a(1'b0),
    .b(\U1/G_PWM/PWMCount [4]),
    .c(\U1/G_PWM/lt0_c4 ),
    .o({\U1/G_PWM/lt0_c5 ,open_n71}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_5  (
    .a(1'b1),
    .b(\U1/G_PWM/PWMCount [5]),
    .c(\U1/G_PWM/lt0_c5 ),
    .o({\U1/G_PWM/lt0_c6 ,open_n72}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_6  (
    .a(1'b1),
    .b(\U1/G_PWM/PWMCount [6]),
    .c(\U1/G_PWM/lt0_c6 ),
    .o({\U1/G_PWM/lt0_c7 ,open_n73}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_7  (
    .a(1'b1),
    .b(\U1/G_PWM/PWMCount [7]),
    .c(\U1/G_PWM/lt0_c7 ),
    .o({\U1/G_PWM/lt0_c8 ,open_n74}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_8  (
    .a(1'b1),
    .b(\U1/G_PWM/PWMCount [8]),
    .c(\U1/G_PWM/lt0_c8 ),
    .o({\U1/G_PWM/lt0_c9 ,open_n75}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_9  (
    .a(1'b1),
    .b(\U1/G_PWM/PWMCount [9]),
    .c(\U1/G_PWM/lt0_c9 ),
    .o({\U1/G_PWM/lt0_c10 ,open_n76}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/G_PWM/lt0_cin  (
    .a(1'b1),
    .o({\U1/G_PWM/lt0_c0 ,open_n79}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt0_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/G_PWM/lt0_c16 ),
    .o({open_n80,\U1/G_PWM/n1 }));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_0  (
    .a(\U1/G_PWM/PWMCount [0]),
    .b(\U1/PWM_GData [16]),
    .c(\U1/G_PWM/lt1_c0 ),
    .o({\U1/G_PWM/lt1_c1 ,open_n81}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_1  (
    .a(\U1/G_PWM/PWMCount [1]),
    .b(\U1/PWM_GData [17]),
    .c(\U1/G_PWM/lt1_c1 ),
    .o({\U1/G_PWM/lt1_c2 ,open_n82}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_10  (
    .a(\U1/G_PWM/PWMCount [10]),
    .b(\U1/PWM_GData [26]),
    .c(\U1/G_PWM/lt1_c10 ),
    .o({\U1/G_PWM/lt1_c11 ,open_n83}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_11  (
    .a(\U1/G_PWM/PWMCount [11]),
    .b(\U1/PWM_GData [27]),
    .c(\U1/G_PWM/lt1_c11 ),
    .o({\U1/G_PWM/lt1_c12 ,open_n84}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_12  (
    .a(\U1/G_PWM/PWMCount [12]),
    .b(\U1/PWM_GData [28]),
    .c(\U1/G_PWM/lt1_c12 ),
    .o({\U1/G_PWM/lt1_c13 ,open_n85}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_13  (
    .a(\U1/G_PWM/PWMCount [13]),
    .b(\U1/PWM_GData [29]),
    .c(\U1/G_PWM/lt1_c13 ),
    .o({\U1/G_PWM/lt1_c14 ,open_n86}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_14  (
    .a(\U1/G_PWM/PWMCount [14]),
    .b(\U1/PWM_GData [30]),
    .c(\U1/G_PWM/lt1_c14 ),
    .o({\U1/G_PWM/lt1_c15 ,open_n87}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_15  (
    .a(\U1/G_PWM/PWMCount [15]),
    .b(\U1/PWM_GData [31]),
    .c(\U1/G_PWM/lt1_c15 ),
    .o({\U1/G_PWM/lt1_c16 ,open_n88}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_2  (
    .a(\U1/G_PWM/PWMCount [2]),
    .b(\U1/PWM_GData [18]),
    .c(\U1/G_PWM/lt1_c2 ),
    .o({\U1/G_PWM/lt1_c3 ,open_n89}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_3  (
    .a(\U1/G_PWM/PWMCount [3]),
    .b(\U1/PWM_GData [19]),
    .c(\U1/G_PWM/lt1_c3 ),
    .o({\U1/G_PWM/lt1_c4 ,open_n90}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_4  (
    .a(\U1/G_PWM/PWMCount [4]),
    .b(\U1/PWM_GData [20]),
    .c(\U1/G_PWM/lt1_c4 ),
    .o({\U1/G_PWM/lt1_c5 ,open_n91}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_5  (
    .a(\U1/G_PWM/PWMCount [5]),
    .b(\U1/PWM_GData [21]),
    .c(\U1/G_PWM/lt1_c5 ),
    .o({\U1/G_PWM/lt1_c6 ,open_n92}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_6  (
    .a(\U1/G_PWM/PWMCount [6]),
    .b(\U1/PWM_GData [22]),
    .c(\U1/G_PWM/lt1_c6 ),
    .o({\U1/G_PWM/lt1_c7 ,open_n93}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_7  (
    .a(\U1/G_PWM/PWMCount [7]),
    .b(\U1/PWM_GData [23]),
    .c(\U1/G_PWM/lt1_c7 ),
    .o({\U1/G_PWM/lt1_c8 ,open_n94}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_8  (
    .a(\U1/G_PWM/PWMCount [8]),
    .b(\U1/PWM_GData [24]),
    .c(\U1/G_PWM/lt1_c8 ),
    .o({\U1/G_PWM/lt1_c9 ,open_n95}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_9  (
    .a(\U1/G_PWM/PWMCount [9]),
    .b(\U1/PWM_GData [25]),
    .c(\U1/G_PWM/lt1_c9 ),
    .o({\U1/G_PWM/lt1_c10 ,open_n96}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/G_PWM/lt1_cin  (
    .a(1'b1),
    .o({\U1/G_PWM/lt1_c0 ,open_n99}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/G_PWM/lt1_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/G_PWM/lt1_c16 ),
    .o({open_n100,\U1/G_PWM/n4 }));
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
    .o({open_n101,\U1/R_PWM/n2 [15]}));
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
    .o({\U1/R_PWM/add0/c0 ,open_n104}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_0  (
    .a(1'b0),
    .b(\U1/R_PWM/PWMCount [0]),
    .c(\U1/R_PWM/lt0_c0 ),
    .o({\U1/R_PWM/lt0_c1 ,open_n105}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_1  (
    .a(1'b0),
    .b(\U1/R_PWM/PWMCount [1]),
    .c(\U1/R_PWM/lt0_c1 ),
    .o({\U1/R_PWM/lt0_c2 ,open_n106}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_10  (
    .a(1'b0),
    .b(\U1/R_PWM/PWMCount [10]),
    .c(\U1/R_PWM/lt0_c10 ),
    .o({\U1/R_PWM/lt0_c11 ,open_n107}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_11  (
    .a(1'b0),
    .b(\U1/R_PWM/PWMCount [11]),
    .c(\U1/R_PWM/lt0_c11 ),
    .o({\U1/R_PWM/lt0_c12 ,open_n108}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_12  (
    .a(1'b0),
    .b(\U1/R_PWM/PWMCount [12]),
    .c(\U1/R_PWM/lt0_c12 ),
    .o({\U1/R_PWM/lt0_c13 ,open_n109}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_13  (
    .a(1'b0),
    .b(\U1/R_PWM/PWMCount [13]),
    .c(\U1/R_PWM/lt0_c13 ),
    .o({\U1/R_PWM/lt0_c14 ,open_n110}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_14  (
    .a(1'b0),
    .b(\U1/R_PWM/PWMCount [14]),
    .c(\U1/R_PWM/lt0_c14 ),
    .o({\U1/R_PWM/lt0_c15 ,open_n111}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_15  (
    .a(1'b0),
    .b(\U1/R_PWM/PWMCount [15]),
    .c(\U1/R_PWM/lt0_c15 ),
    .o({\U1/R_PWM/lt0_c16 ,open_n112}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_2  (
    .a(1'b0),
    .b(\U1/R_PWM/PWMCount [2]),
    .c(\U1/R_PWM/lt0_c2 ),
    .o({\U1/R_PWM/lt0_c3 ,open_n113}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_3  (
    .a(1'b1),
    .b(\U1/R_PWM/PWMCount [3]),
    .c(\U1/R_PWM/lt0_c3 ),
    .o({\U1/R_PWM/lt0_c4 ,open_n114}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_4  (
    .a(1'b0),
    .b(\U1/R_PWM/PWMCount [4]),
    .c(\U1/R_PWM/lt0_c4 ),
    .o({\U1/R_PWM/lt0_c5 ,open_n115}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_5  (
    .a(1'b1),
    .b(\U1/R_PWM/PWMCount [5]),
    .c(\U1/R_PWM/lt0_c5 ),
    .o({\U1/R_PWM/lt0_c6 ,open_n116}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_6  (
    .a(1'b1),
    .b(\U1/R_PWM/PWMCount [6]),
    .c(\U1/R_PWM/lt0_c6 ),
    .o({\U1/R_PWM/lt0_c7 ,open_n117}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_7  (
    .a(1'b1),
    .b(\U1/R_PWM/PWMCount [7]),
    .c(\U1/R_PWM/lt0_c7 ),
    .o({\U1/R_PWM/lt0_c8 ,open_n118}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_8  (
    .a(1'b1),
    .b(\U1/R_PWM/PWMCount [8]),
    .c(\U1/R_PWM/lt0_c8 ),
    .o({\U1/R_PWM/lt0_c9 ,open_n119}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_9  (
    .a(1'b1),
    .b(\U1/R_PWM/PWMCount [9]),
    .c(\U1/R_PWM/lt0_c9 ),
    .o({\U1/R_PWM/lt0_c10 ,open_n120}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/R_PWM/lt0_cin  (
    .a(1'b1),
    .o({\U1/R_PWM/lt0_c0 ,open_n123}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt0_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/R_PWM/lt0_c16 ),
    .o({open_n124,\U1/R_PWM/n1 }));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_0  (
    .a(\U1/R_PWM/PWMCount [0]),
    .b(\U1/PWM_RData [16]),
    .c(\U1/R_PWM/lt1_c0 ),
    .o({\U1/R_PWM/lt1_c1 ,open_n125}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_1  (
    .a(\U1/R_PWM/PWMCount [1]),
    .b(\U1/PWM_RData [17]),
    .c(\U1/R_PWM/lt1_c1 ),
    .o({\U1/R_PWM/lt1_c2 ,open_n126}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_10  (
    .a(\U1/R_PWM/PWMCount [10]),
    .b(\U1/PWM_RData [26]),
    .c(\U1/R_PWM/lt1_c10 ),
    .o({\U1/R_PWM/lt1_c11 ,open_n127}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_11  (
    .a(\U1/R_PWM/PWMCount [11]),
    .b(\U1/PWM_RData [27]),
    .c(\U1/R_PWM/lt1_c11 ),
    .o({\U1/R_PWM/lt1_c12 ,open_n128}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_12  (
    .a(\U1/R_PWM/PWMCount [12]),
    .b(\U1/PWM_RData [28]),
    .c(\U1/R_PWM/lt1_c12 ),
    .o({\U1/R_PWM/lt1_c13 ,open_n129}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_13  (
    .a(\U1/R_PWM/PWMCount [13]),
    .b(\U1/PWM_RData [29]),
    .c(\U1/R_PWM/lt1_c13 ),
    .o({\U1/R_PWM/lt1_c14 ,open_n130}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_14  (
    .a(\U1/R_PWM/PWMCount [14]),
    .b(\U1/PWM_RData [30]),
    .c(\U1/R_PWM/lt1_c14 ),
    .o({\U1/R_PWM/lt1_c15 ,open_n131}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_15  (
    .a(\U1/R_PWM/PWMCount [15]),
    .b(\U1/PWM_RData [31]),
    .c(\U1/R_PWM/lt1_c15 ),
    .o({\U1/R_PWM/lt1_c16 ,open_n132}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_2  (
    .a(\U1/R_PWM/PWMCount [2]),
    .b(\U1/PWM_RData [18]),
    .c(\U1/R_PWM/lt1_c2 ),
    .o({\U1/R_PWM/lt1_c3 ,open_n133}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_3  (
    .a(\U1/R_PWM/PWMCount [3]),
    .b(\U1/PWM_RData [19]),
    .c(\U1/R_PWM/lt1_c3 ),
    .o({\U1/R_PWM/lt1_c4 ,open_n134}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_4  (
    .a(\U1/R_PWM/PWMCount [4]),
    .b(\U1/PWM_RData [20]),
    .c(\U1/R_PWM/lt1_c4 ),
    .o({\U1/R_PWM/lt1_c5 ,open_n135}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_5  (
    .a(\U1/R_PWM/PWMCount [5]),
    .b(\U1/PWM_RData [21]),
    .c(\U1/R_PWM/lt1_c5 ),
    .o({\U1/R_PWM/lt1_c6 ,open_n136}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_6  (
    .a(\U1/R_PWM/PWMCount [6]),
    .b(\U1/PWM_RData [22]),
    .c(\U1/R_PWM/lt1_c6 ),
    .o({\U1/R_PWM/lt1_c7 ,open_n137}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_7  (
    .a(\U1/R_PWM/PWMCount [7]),
    .b(\U1/PWM_RData [23]),
    .c(\U1/R_PWM/lt1_c7 ),
    .o({\U1/R_PWM/lt1_c8 ,open_n138}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_8  (
    .a(\U1/R_PWM/PWMCount [8]),
    .b(\U1/PWM_RData [24]),
    .c(\U1/R_PWM/lt1_c8 ),
    .o({\U1/R_PWM/lt1_c9 ,open_n139}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_9  (
    .a(\U1/R_PWM/PWMCount [9]),
    .b(\U1/PWM_RData [25]),
    .c(\U1/R_PWM/lt1_c9 ),
    .o({\U1/R_PWM/lt1_c10 ,open_n140}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/R_PWM/lt1_cin  (
    .a(1'b1),
    .o({\U1/R_PWM/lt1_c0 ,open_n143}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/R_PWM/lt1_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/R_PWM/lt1_c16 ),
    .o({open_n144,\U1/R_PWM/n4 }));
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
    .o({open_n145,\U1/n2 [31]}));
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
    .o({\U1/add0/c0 ,open_n148}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_0  (
    .a(1'b0),
    .b(\U1/Count_LED [0]),
    .c(\U1/lt0_c0 ),
    .o({\U1/lt0_c1 ,open_n149}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_1  (
    .a(1'b0),
    .b(\U1/Count_LED [1]),
    .c(\U1/lt0_c1 ),
    .o({\U1/lt0_c2 ,open_n150}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_10  (
    .a(1'b0),
    .b(\U1/Count_LED [10]),
    .c(\U1/lt0_c10 ),
    .o({\U1/lt0_c11 ,open_n151}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_11  (
    .a(1'b0),
    .b(\U1/Count_LED [11]),
    .c(\U1/lt0_c11 ),
    .o({\U1/lt0_c12 ,open_n152}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_12  (
    .a(1'b0),
    .b(\U1/Count_LED [12]),
    .c(\U1/lt0_c12 ),
    .o({\U1/lt0_c13 ,open_n153}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_13  (
    .a(1'b0),
    .b(\U1/Count_LED [13]),
    .c(\U1/lt0_c13 ),
    .o({\U1/lt0_c14 ,open_n154}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_14  (
    .a(1'b0),
    .b(\U1/Count_LED [14]),
    .c(\U1/lt0_c14 ),
    .o({\U1/lt0_c15 ,open_n155}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_15  (
    .a(1'b0),
    .b(\U1/Count_LED [15]),
    .c(\U1/lt0_c15 ),
    .o({\U1/lt0_c16 ,open_n156}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_16  (
    .a(1'b0),
    .b(\U1/Count_LED [16]),
    .c(\U1/lt0_c16 ),
    .o({\U1/lt0_c17 ,open_n157}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_17  (
    .a(1'b0),
    .b(\U1/Count_LED [17]),
    .c(\U1/lt0_c17 ),
    .o({\U1/lt0_c18 ,open_n158}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_18  (
    .a(1'b0),
    .b(\U1/Count_LED [18]),
    .c(\U1/lt0_c18 ),
    .o({\U1/lt0_c19 ,open_n159}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_19  (
    .a(1'b1),
    .b(\U1/Count_LED [19]),
    .c(\U1/lt0_c19 ),
    .o({\U1/lt0_c20 ,open_n160}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_2  (
    .a(1'b0),
    .b(\U1/Count_LED [2]),
    .c(\U1/lt0_c2 ),
    .o({\U1/lt0_c3 ,open_n161}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_20  (
    .a(1'b1),
    .b(\U1/Count_LED [20]),
    .c(\U1/lt0_c20 ),
    .o({\U1/lt0_c21 ,open_n162}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_21  (
    .a(1'b1),
    .b(\U1/Count_LED [21]),
    .c(\U1/lt0_c21 ),
    .o({\U1/lt0_c22 ,open_n163}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_22  (
    .a(1'b0),
    .b(\U1/Count_LED [22]),
    .c(\U1/lt0_c22 ),
    .o({\U1/lt0_c23 ,open_n164}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_23  (
    .a(1'b1),
    .b(\U1/Count_LED [23]),
    .c(\U1/lt0_c23 ),
    .o({\U1/lt0_c24 ,open_n165}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_24  (
    .a(1'b1),
    .b(\U1/Count_LED [24]),
    .c(\U1/lt0_c24 ),
    .o({\U1/lt0_c25 ,open_n166}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_25  (
    .a(1'b1),
    .b(\U1/Count_LED [25]),
    .c(\U1/lt0_c25 ),
    .o({\U1/lt0_c26 ,open_n167}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_26  (
    .a(1'b0),
    .b(\U1/Count_LED [26]),
    .c(\U1/lt0_c26 ),
    .o({\U1/lt0_c27 ,open_n168}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_27  (
    .a(1'b1),
    .b(\U1/Count_LED [27]),
    .c(\U1/lt0_c27 ),
    .o({\U1/lt0_c28 ,open_n169}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_28  (
    .a(1'b0),
    .b(\U1/Count_LED [28]),
    .c(\U1/lt0_c28 ),
    .o({\U1/lt0_c29 ,open_n170}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_29  (
    .a(1'b0),
    .b(\U1/Count_LED [29]),
    .c(\U1/lt0_c29 ),
    .o({\U1/lt0_c30 ,open_n171}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_3  (
    .a(1'b0),
    .b(\U1/Count_LED [3]),
    .c(\U1/lt0_c3 ),
    .o({\U1/lt0_c4 ,open_n172}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_30  (
    .a(1'b0),
    .b(\U1/Count_LED [30]),
    .c(\U1/lt0_c30 ),
    .o({\U1/lt0_c31 ,open_n173}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_31  (
    .a(1'b0),
    .b(\U1/Count_LED [31]),
    .c(\U1/lt0_c31 ),
    .o({\U1/lt0_c32 ,open_n174}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_4  (
    .a(1'b0),
    .b(\U1/Count_LED [4]),
    .c(\U1/lt0_c4 ),
    .o({\U1/lt0_c5 ,open_n175}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_5  (
    .a(1'b0),
    .b(\U1/Count_LED [5]),
    .c(\U1/lt0_c5 ),
    .o({\U1/lt0_c6 ,open_n176}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_6  (
    .a(1'b0),
    .b(\U1/Count_LED [6]),
    .c(\U1/lt0_c6 ),
    .o({\U1/lt0_c7 ,open_n177}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_7  (
    .a(1'b0),
    .b(\U1/Count_LED [7]),
    .c(\U1/lt0_c7 ),
    .o({\U1/lt0_c8 ,open_n178}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_8  (
    .a(1'b0),
    .b(\U1/Count_LED [8]),
    .c(\U1/lt0_c8 ),
    .o({\U1/lt0_c9 ,open_n179}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_9  (
    .a(1'b0),
    .b(\U1/Count_LED [9]),
    .c(\U1/lt0_c9 ),
    .o({\U1/lt0_c10 ,open_n180}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/lt0_cin  (
    .a(1'b1),
    .o({\U1/lt0_c0 ,open_n183}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt0_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/lt0_c32 ),
    .o({open_n184,\U1/n1 }));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_0  (
    .a(\U1/Count_LED [0]),
    .b(1'b0),
    .c(\U1/lt1_c0 ),
    .o({\U1/lt1_c1 ,open_n185}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_1  (
    .a(\U1/Count_LED [1]),
    .b(1'b0),
    .c(\U1/lt1_c1 ),
    .o({\U1/lt1_c2 ,open_n186}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_10  (
    .a(\U1/Count_LED [10]),
    .b(1'b0),
    .c(\U1/lt1_c10 ),
    .o({\U1/lt1_c11 ,open_n187}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_11  (
    .a(\U1/Count_LED [11]),
    .b(1'b0),
    .c(\U1/lt1_c11 ),
    .o({\U1/lt1_c12 ,open_n188}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_12  (
    .a(\U1/Count_LED [12]),
    .b(1'b0),
    .c(\U1/lt1_c12 ),
    .o({\U1/lt1_c13 ,open_n189}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_13  (
    .a(\U1/Count_LED [13]),
    .b(1'b0),
    .c(\U1/lt1_c13 ),
    .o({\U1/lt1_c14 ,open_n190}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_14  (
    .a(\U1/Count_LED [14]),
    .b(1'b0),
    .c(\U1/lt1_c14 ),
    .o({\U1/lt1_c15 ,open_n191}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_15  (
    .a(\U1/Count_LED [15]),
    .b(1'b0),
    .c(\U1/lt1_c15 ),
    .o({\U1/lt1_c16 ,open_n192}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_16  (
    .a(\U1/Count_LED [16]),
    .b(1'b0),
    .c(\U1/lt1_c16 ),
    .o({\U1/lt1_c17 ,open_n193}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_17  (
    .a(\U1/Count_LED [17]),
    .b(1'b0),
    .c(\U1/lt1_c17 ),
    .o({\U1/lt1_c18 ,open_n194}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_18  (
    .a(\U1/Count_LED [18]),
    .b(1'b0),
    .c(\U1/lt1_c18 ),
    .o({\U1/lt1_c19 ,open_n195}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_19  (
    .a(\U1/Count_LED [19]),
    .b(1'b1),
    .c(\U1/lt1_c19 ),
    .o({\U1/lt1_c20 ,open_n196}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_2  (
    .a(\U1/Count_LED [2]),
    .b(1'b0),
    .c(\U1/lt1_c2 ),
    .o({\U1/lt1_c3 ,open_n197}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_20  (
    .a(\U1/Count_LED [20]),
    .b(1'b0),
    .c(\U1/lt1_c20 ),
    .o({\U1/lt1_c21 ,open_n198}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_21  (
    .a(\U1/Count_LED [21]),
    .b(1'b1),
    .c(\U1/lt1_c21 ),
    .o({\U1/lt1_c22 ,open_n199}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_22  (
    .a(\U1/Count_LED [22]),
    .b(1'b1),
    .c(\U1/lt1_c22 ),
    .o({\U1/lt1_c23 ,open_n200}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_23  (
    .a(\U1/Count_LED [23]),
    .b(1'b1),
    .c(\U1/lt1_c23 ),
    .o({\U1/lt1_c24 ,open_n201}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_24  (
    .a(\U1/Count_LED [24]),
    .b(1'b1),
    .c(\U1/lt1_c24 ),
    .o({\U1/lt1_c25 ,open_n202}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_25  (
    .a(\U1/Count_LED [25]),
    .b(1'b1),
    .c(\U1/lt1_c25 ),
    .o({\U1/lt1_c26 ,open_n203}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_26  (
    .a(\U1/Count_LED [26]),
    .b(1'b0),
    .c(\U1/lt1_c26 ),
    .o({\U1/lt1_c27 ,open_n204}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_27  (
    .a(\U1/Count_LED [27]),
    .b(1'b0),
    .c(\U1/lt1_c27 ),
    .o({\U1/lt1_c28 ,open_n205}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_28  (
    .a(\U1/Count_LED [28]),
    .b(1'b0),
    .c(\U1/lt1_c28 ),
    .o({\U1/lt1_c29 ,open_n206}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_29  (
    .a(\U1/Count_LED [29]),
    .b(1'b0),
    .c(\U1/lt1_c29 ),
    .o({\U1/lt1_c30 ,open_n207}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_3  (
    .a(\U1/Count_LED [3]),
    .b(1'b0),
    .c(\U1/lt1_c3 ),
    .o({\U1/lt1_c4 ,open_n208}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_30  (
    .a(\U1/Count_LED [30]),
    .b(1'b0),
    .c(\U1/lt1_c30 ),
    .o({\U1/lt1_c31 ,open_n209}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_31  (
    .a(\U1/Count_LED [31]),
    .b(1'b0),
    .c(\U1/lt1_c31 ),
    .o({\U1/lt1_c32 ,open_n210}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_4  (
    .a(\U1/Count_LED [4]),
    .b(1'b0),
    .c(\U1/lt1_c4 ),
    .o({\U1/lt1_c5 ,open_n211}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_5  (
    .a(\U1/Count_LED [5]),
    .b(1'b0),
    .c(\U1/lt1_c5 ),
    .o({\U1/lt1_c6 ,open_n212}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_6  (
    .a(\U1/Count_LED [6]),
    .b(1'b0),
    .c(\U1/lt1_c6 ),
    .o({\U1/lt1_c7 ,open_n213}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_7  (
    .a(\U1/Count_LED [7]),
    .b(1'b0),
    .c(\U1/lt1_c7 ),
    .o({\U1/lt1_c8 ,open_n214}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_8  (
    .a(\U1/Count_LED [8]),
    .b(1'b0),
    .c(\U1/lt1_c8 ),
    .o({\U1/lt1_c9 ,open_n215}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_9  (
    .a(\U1/Count_LED [9]),
    .b(1'b0),
    .c(\U1/lt1_c9 ),
    .o({\U1/lt1_c10 ,open_n216}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/lt1_cin  (
    .a(1'b1),
    .o({\U1/lt1_c0 ,open_n219}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt1_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/lt1_c32 ),
    .o({open_n220,\U1/n4 }));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_0  (
    .a(1'b0),
    .b(\U1/Count_LED [0]),
    .c(\U1/lt2_c0 ),
    .o({\U1/lt2_c1 ,open_n221}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_1  (
    .a(1'b0),
    .b(\U1/Count_LED [1]),
    .c(\U1/lt2_c1 ),
    .o({\U1/lt2_c2 ,open_n222}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_10  (
    .a(1'b0),
    .b(\U1/Count_LED [10]),
    .c(\U1/lt2_c10 ),
    .o({\U1/lt2_c11 ,open_n223}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_11  (
    .a(1'b0),
    .b(\U1/Count_LED [11]),
    .c(\U1/lt2_c11 ),
    .o({\U1/lt2_c12 ,open_n224}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_12  (
    .a(1'b0),
    .b(\U1/Count_LED [12]),
    .c(\U1/lt2_c12 ),
    .o({\U1/lt2_c13 ,open_n225}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_13  (
    .a(1'b0),
    .b(\U1/Count_LED [13]),
    .c(\U1/lt2_c13 ),
    .o({\U1/lt2_c14 ,open_n226}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_14  (
    .a(1'b0),
    .b(\U1/Count_LED [14]),
    .c(\U1/lt2_c14 ),
    .o({\U1/lt2_c15 ,open_n227}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_15  (
    .a(1'b0),
    .b(\U1/Count_LED [15]),
    .c(\U1/lt2_c15 ),
    .o({\U1/lt2_c16 ,open_n228}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_16  (
    .a(1'b0),
    .b(\U1/Count_LED [16]),
    .c(\U1/lt2_c16 ),
    .o({\U1/lt2_c17 ,open_n229}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_17  (
    .a(1'b0),
    .b(\U1/Count_LED [17]),
    .c(\U1/lt2_c17 ),
    .o({\U1/lt2_c18 ,open_n230}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_18  (
    .a(1'b0),
    .b(\U1/Count_LED [18]),
    .c(\U1/lt2_c18 ),
    .o({\U1/lt2_c19 ,open_n231}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_19  (
    .a(1'b1),
    .b(\U1/Count_LED [19]),
    .c(\U1/lt2_c19 ),
    .o({\U1/lt2_c20 ,open_n232}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_2  (
    .a(1'b0),
    .b(\U1/Count_LED [2]),
    .c(\U1/lt2_c2 ),
    .o({\U1/lt2_c3 ,open_n233}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_20  (
    .a(1'b0),
    .b(\U1/Count_LED [20]),
    .c(\U1/lt2_c20 ),
    .o({\U1/lt2_c21 ,open_n234}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_21  (
    .a(1'b1),
    .b(\U1/Count_LED [21]),
    .c(\U1/lt2_c21 ),
    .o({\U1/lt2_c22 ,open_n235}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_22  (
    .a(1'b1),
    .b(\U1/Count_LED [22]),
    .c(\U1/lt2_c22 ),
    .o({\U1/lt2_c23 ,open_n236}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_23  (
    .a(1'b1),
    .b(\U1/Count_LED [23]),
    .c(\U1/lt2_c23 ),
    .o({\U1/lt2_c24 ,open_n237}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_24  (
    .a(1'b1),
    .b(\U1/Count_LED [24]),
    .c(\U1/lt2_c24 ),
    .o({\U1/lt2_c25 ,open_n238}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_25  (
    .a(1'b1),
    .b(\U1/Count_LED [25]),
    .c(\U1/lt2_c25 ),
    .o({\U1/lt2_c26 ,open_n239}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_26  (
    .a(1'b0),
    .b(\U1/Count_LED [26]),
    .c(\U1/lt2_c26 ),
    .o({\U1/lt2_c27 ,open_n240}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_27  (
    .a(1'b0),
    .b(\U1/Count_LED [27]),
    .c(\U1/lt2_c27 ),
    .o({\U1/lt2_c28 ,open_n241}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_28  (
    .a(1'b0),
    .b(\U1/Count_LED [28]),
    .c(\U1/lt2_c28 ),
    .o({\U1/lt2_c29 ,open_n242}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_29  (
    .a(1'b0),
    .b(\U1/Count_LED [29]),
    .c(\U1/lt2_c29 ),
    .o({\U1/lt2_c30 ,open_n243}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_3  (
    .a(1'b0),
    .b(\U1/Count_LED [3]),
    .c(\U1/lt2_c3 ),
    .o({\U1/lt2_c4 ,open_n244}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_30  (
    .a(1'b0),
    .b(\U1/Count_LED [30]),
    .c(\U1/lt2_c30 ),
    .o({\U1/lt2_c31 ,open_n245}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_31  (
    .a(1'b0),
    .b(\U1/Count_LED [31]),
    .c(\U1/lt2_c31 ),
    .o({\U1/lt2_c32 ,open_n246}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_4  (
    .a(1'b0),
    .b(\U1/Count_LED [4]),
    .c(\U1/lt2_c4 ),
    .o({\U1/lt2_c5 ,open_n247}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_5  (
    .a(1'b0),
    .b(\U1/Count_LED [5]),
    .c(\U1/lt2_c5 ),
    .o({\U1/lt2_c6 ,open_n248}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_6  (
    .a(1'b0),
    .b(\U1/Count_LED [6]),
    .c(\U1/lt2_c6 ),
    .o({\U1/lt2_c7 ,open_n249}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_7  (
    .a(1'b0),
    .b(\U1/Count_LED [7]),
    .c(\U1/lt2_c7 ),
    .o({\U1/lt2_c8 ,open_n250}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_8  (
    .a(1'b0),
    .b(\U1/Count_LED [8]),
    .c(\U1/lt2_c8 ),
    .o({\U1/lt2_c9 ,open_n251}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_9  (
    .a(1'b0),
    .b(\U1/Count_LED [9]),
    .c(\U1/lt2_c9 ),
    .o({\U1/lt2_c10 ,open_n252}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/lt2_cin  (
    .a(1'b0),
    .o({\U1/lt2_c0 ,open_n255}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt2_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/lt2_c32 ),
    .o({open_n256,\U1/n5 }));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_0  (
    .a(\U1/Count_LED [0]),
    .b(1'b0),
    .c(\U1/lt3_c0 ),
    .o({\U1/lt3_c1 ,open_n257}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_1  (
    .a(\U1/Count_LED [1]),
    .b(1'b0),
    .c(\U1/lt3_c1 ),
    .o({\U1/lt3_c2 ,open_n258}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_10  (
    .a(\U1/Count_LED [10]),
    .b(1'b0),
    .c(\U1/lt3_c10 ),
    .o({\U1/lt3_c11 ,open_n259}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_11  (
    .a(\U1/Count_LED [11]),
    .b(1'b0),
    .c(\U1/lt3_c11 ),
    .o({\U1/lt3_c12 ,open_n260}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_12  (
    .a(\U1/Count_LED [12]),
    .b(1'b0),
    .c(\U1/lt3_c12 ),
    .o({\U1/lt3_c13 ,open_n261}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_13  (
    .a(\U1/Count_LED [13]),
    .b(1'b0),
    .c(\U1/lt3_c13 ),
    .o({\U1/lt3_c14 ,open_n262}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_14  (
    .a(\U1/Count_LED [14]),
    .b(1'b0),
    .c(\U1/lt3_c14 ),
    .o({\U1/lt3_c15 ,open_n263}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_15  (
    .a(\U1/Count_LED [15]),
    .b(1'b0),
    .c(\U1/lt3_c15 ),
    .o({\U1/lt3_c16 ,open_n264}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_16  (
    .a(\U1/Count_LED [16]),
    .b(1'b0),
    .c(\U1/lt3_c16 ),
    .o({\U1/lt3_c17 ,open_n265}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_17  (
    .a(\U1/Count_LED [17]),
    .b(1'b0),
    .c(\U1/lt3_c17 ),
    .o({\U1/lt3_c18 ,open_n266}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_18  (
    .a(\U1/Count_LED [18]),
    .b(1'b0),
    .c(\U1/lt3_c18 ),
    .o({\U1/lt3_c19 ,open_n267}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_19  (
    .a(\U1/Count_LED [19]),
    .b(1'b0),
    .c(\U1/lt3_c19 ),
    .o({\U1/lt3_c20 ,open_n268}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_2  (
    .a(\U1/Count_LED [2]),
    .b(1'b0),
    .c(\U1/lt3_c2 ),
    .o({\U1/lt3_c3 ,open_n269}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_20  (
    .a(\U1/Count_LED [20]),
    .b(1'b1),
    .c(\U1/lt3_c20 ),
    .o({\U1/lt3_c21 ,open_n270}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_21  (
    .a(\U1/Count_LED [21]),
    .b(1'b0),
    .c(\U1/lt3_c21 ),
    .o({\U1/lt3_c22 ,open_n271}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_22  (
    .a(\U1/Count_LED [22]),
    .b(1'b1),
    .c(\U1/lt3_c22 ),
    .o({\U1/lt3_c23 ,open_n272}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_23  (
    .a(\U1/Count_LED [23]),
    .b(1'b1),
    .c(\U1/lt3_c23 ),
    .o({\U1/lt3_c24 ,open_n273}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_24  (
    .a(\U1/Count_LED [24]),
    .b(1'b1),
    .c(\U1/lt3_c24 ),
    .o({\U1/lt3_c25 ,open_n274}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_25  (
    .a(\U1/Count_LED [25]),
    .b(1'b1),
    .c(\U1/lt3_c25 ),
    .o({\U1/lt3_c26 ,open_n275}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_26  (
    .a(\U1/Count_LED [26]),
    .b(1'b1),
    .c(\U1/lt3_c26 ),
    .o({\U1/lt3_c27 ,open_n276}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_27  (
    .a(\U1/Count_LED [27]),
    .b(1'b0),
    .c(\U1/lt3_c27 ),
    .o({\U1/lt3_c28 ,open_n277}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_28  (
    .a(\U1/Count_LED [28]),
    .b(1'b0),
    .c(\U1/lt3_c28 ),
    .o({\U1/lt3_c29 ,open_n278}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_29  (
    .a(\U1/Count_LED [29]),
    .b(1'b0),
    .c(\U1/lt3_c29 ),
    .o({\U1/lt3_c30 ,open_n279}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_3  (
    .a(\U1/Count_LED [3]),
    .b(1'b0),
    .c(\U1/lt3_c3 ),
    .o({\U1/lt3_c4 ,open_n280}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_30  (
    .a(\U1/Count_LED [30]),
    .b(1'b0),
    .c(\U1/lt3_c30 ),
    .o({\U1/lt3_c31 ,open_n281}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_31  (
    .a(\U1/Count_LED [31]),
    .b(1'b0),
    .c(\U1/lt3_c31 ),
    .o({\U1/lt3_c32 ,open_n282}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_4  (
    .a(\U1/Count_LED [4]),
    .b(1'b0),
    .c(\U1/lt3_c4 ),
    .o({\U1/lt3_c5 ,open_n283}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_5  (
    .a(\U1/Count_LED [5]),
    .b(1'b0),
    .c(\U1/lt3_c5 ),
    .o({\U1/lt3_c6 ,open_n284}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_6  (
    .a(\U1/Count_LED [6]),
    .b(1'b0),
    .c(\U1/lt3_c6 ),
    .o({\U1/lt3_c7 ,open_n285}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_7  (
    .a(\U1/Count_LED [7]),
    .b(1'b0),
    .c(\U1/lt3_c7 ),
    .o({\U1/lt3_c8 ,open_n286}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_8  (
    .a(\U1/Count_LED [8]),
    .b(1'b0),
    .c(\U1/lt3_c8 ),
    .o({\U1/lt3_c9 ,open_n287}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_9  (
    .a(\U1/Count_LED [9]),
    .b(1'b0),
    .c(\U1/lt3_c9 ),
    .o({\U1/lt3_c10 ,open_n288}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/lt3_cin  (
    .a(1'b1),
    .o({\U1/lt3_c0 ,open_n291}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt3_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/lt3_c32 ),
    .o({open_n292,\U1/n6 }));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_0  (
    .a(1'b0),
    .b(\U1/Count_LED [0]),
    .c(\U1/lt4_c0 ),
    .o({\U1/lt4_c1 ,open_n293}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_1  (
    .a(1'b0),
    .b(\U1/Count_LED [1]),
    .c(\U1/lt4_c1 ),
    .o({\U1/lt4_c2 ,open_n294}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_10  (
    .a(1'b0),
    .b(\U1/Count_LED [10]),
    .c(\U1/lt4_c10 ),
    .o({\U1/lt4_c11 ,open_n295}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_11  (
    .a(1'b0),
    .b(\U1/Count_LED [11]),
    .c(\U1/lt4_c11 ),
    .o({\U1/lt4_c12 ,open_n296}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_12  (
    .a(1'b0),
    .b(\U1/Count_LED [12]),
    .c(\U1/lt4_c12 ),
    .o({\U1/lt4_c13 ,open_n297}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_13  (
    .a(1'b0),
    .b(\U1/Count_LED [13]),
    .c(\U1/lt4_c13 ),
    .o({\U1/lt4_c14 ,open_n298}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_14  (
    .a(1'b0),
    .b(\U1/Count_LED [14]),
    .c(\U1/lt4_c14 ),
    .o({\U1/lt4_c15 ,open_n299}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_15  (
    .a(1'b0),
    .b(\U1/Count_LED [15]),
    .c(\U1/lt4_c15 ),
    .o({\U1/lt4_c16 ,open_n300}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_16  (
    .a(1'b0),
    .b(\U1/Count_LED [16]),
    .c(\U1/lt4_c16 ),
    .o({\U1/lt4_c17 ,open_n301}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_17  (
    .a(1'b0),
    .b(\U1/Count_LED [17]),
    .c(\U1/lt4_c17 ),
    .o({\U1/lt4_c18 ,open_n302}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_18  (
    .a(1'b0),
    .b(\U1/Count_LED [18]),
    .c(\U1/lt4_c18 ),
    .o({\U1/lt4_c19 ,open_n303}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_19  (
    .a(1'b1),
    .b(\U1/Count_LED [19]),
    .c(\U1/lt4_c19 ),
    .o({\U1/lt4_c20 ,open_n304}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_2  (
    .a(1'b0),
    .b(\U1/Count_LED [2]),
    .c(\U1/lt4_c2 ),
    .o({\U1/lt4_c3 ,open_n305}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_20  (
    .a(1'b0),
    .b(\U1/Count_LED [20]),
    .c(\U1/lt4_c20 ),
    .o({\U1/lt4_c21 ,open_n306}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_21  (
    .a(1'b1),
    .b(\U1/Count_LED [21]),
    .c(\U1/lt4_c21 ),
    .o({\U1/lt4_c22 ,open_n307}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_22  (
    .a(1'b1),
    .b(\U1/Count_LED [22]),
    .c(\U1/lt4_c22 ),
    .o({\U1/lt4_c23 ,open_n308}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_23  (
    .a(1'b1),
    .b(\U1/Count_LED [23]),
    .c(\U1/lt4_c23 ),
    .o({\U1/lt4_c24 ,open_n309}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_24  (
    .a(1'b1),
    .b(\U1/Count_LED [24]),
    .c(\U1/lt4_c24 ),
    .o({\U1/lt4_c25 ,open_n310}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_25  (
    .a(1'b1),
    .b(\U1/Count_LED [25]),
    .c(\U1/lt4_c25 ),
    .o({\U1/lt4_c26 ,open_n311}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_26  (
    .a(1'b0),
    .b(\U1/Count_LED [26]),
    .c(\U1/lt4_c26 ),
    .o({\U1/lt4_c27 ,open_n312}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_27  (
    .a(1'b0),
    .b(\U1/Count_LED [27]),
    .c(\U1/lt4_c27 ),
    .o({\U1/lt4_c28 ,open_n313}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_28  (
    .a(1'b0),
    .b(\U1/Count_LED [28]),
    .c(\U1/lt4_c28 ),
    .o({\U1/lt4_c29 ,open_n314}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_29  (
    .a(1'b0),
    .b(\U1/Count_LED [29]),
    .c(\U1/lt4_c29 ),
    .o({\U1/lt4_c30 ,open_n315}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_3  (
    .a(1'b0),
    .b(\U1/Count_LED [3]),
    .c(\U1/lt4_c3 ),
    .o({\U1/lt4_c4 ,open_n316}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_30  (
    .a(1'b0),
    .b(\U1/Count_LED [30]),
    .c(\U1/lt4_c30 ),
    .o({\U1/lt4_c31 ,open_n317}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_31  (
    .a(1'b0),
    .b(\U1/Count_LED [31]),
    .c(\U1/lt4_c31 ),
    .o({\U1/lt4_c32 ,open_n318}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_4  (
    .a(1'b0),
    .b(\U1/Count_LED [4]),
    .c(\U1/lt4_c4 ),
    .o({\U1/lt4_c5 ,open_n319}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_5  (
    .a(1'b0),
    .b(\U1/Count_LED [5]),
    .c(\U1/lt4_c5 ),
    .o({\U1/lt4_c6 ,open_n320}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_6  (
    .a(1'b0),
    .b(\U1/Count_LED [6]),
    .c(\U1/lt4_c6 ),
    .o({\U1/lt4_c7 ,open_n321}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_7  (
    .a(1'b0),
    .b(\U1/Count_LED [7]),
    .c(\U1/lt4_c7 ),
    .o({\U1/lt4_c8 ,open_n322}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_8  (
    .a(1'b0),
    .b(\U1/Count_LED [8]),
    .c(\U1/lt4_c8 ),
    .o({\U1/lt4_c9 ,open_n323}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_9  (
    .a(1'b0),
    .b(\U1/Count_LED [9]),
    .c(\U1/lt4_c9 ),
    .o({\U1/lt4_c10 ,open_n324}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/lt4_cin  (
    .a(1'b1),
    .o({\U1/lt4_c0 ,open_n327}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt4_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/lt4_c32 ),
    .o({open_n328,\U1/n10 }));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_0  (
    .a(1'b0),
    .b(\U1/Count_LED [0]),
    .c(\U1/lt5_c0 ),
    .o({\U1/lt5_c1 ,open_n329}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_1  (
    .a(1'b0),
    .b(\U1/Count_LED [1]),
    .c(\U1/lt5_c1 ),
    .o({\U1/lt5_c2 ,open_n330}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_10  (
    .a(1'b0),
    .b(\U1/Count_LED [10]),
    .c(\U1/lt5_c10 ),
    .o({\U1/lt5_c11 ,open_n331}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_11  (
    .a(1'b0),
    .b(\U1/Count_LED [11]),
    .c(\U1/lt5_c11 ),
    .o({\U1/lt5_c12 ,open_n332}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_12  (
    .a(1'b0),
    .b(\U1/Count_LED [12]),
    .c(\U1/lt5_c12 ),
    .o({\U1/lt5_c13 ,open_n333}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_13  (
    .a(1'b0),
    .b(\U1/Count_LED [13]),
    .c(\U1/lt5_c13 ),
    .o({\U1/lt5_c14 ,open_n334}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_14  (
    .a(1'b0),
    .b(\U1/Count_LED [14]),
    .c(\U1/lt5_c14 ),
    .o({\U1/lt5_c15 ,open_n335}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_15  (
    .a(1'b0),
    .b(\U1/Count_LED [15]),
    .c(\U1/lt5_c15 ),
    .o({\U1/lt5_c16 ,open_n336}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_16  (
    .a(1'b0),
    .b(\U1/Count_LED [16]),
    .c(\U1/lt5_c16 ),
    .o({\U1/lt5_c17 ,open_n337}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_17  (
    .a(1'b0),
    .b(\U1/Count_LED [17]),
    .c(\U1/lt5_c17 ),
    .o({\U1/lt5_c18 ,open_n338}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_18  (
    .a(1'b0),
    .b(\U1/Count_LED [18]),
    .c(\U1/lt5_c18 ),
    .o({\U1/lt5_c19 ,open_n339}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_19  (
    .a(1'b0),
    .b(\U1/Count_LED [19]),
    .c(\U1/lt5_c19 ),
    .o({\U1/lt5_c20 ,open_n340}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_2  (
    .a(1'b0),
    .b(\U1/Count_LED [2]),
    .c(\U1/lt5_c2 ),
    .o({\U1/lt5_c3 ,open_n341}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_20  (
    .a(1'b1),
    .b(\U1/Count_LED [20]),
    .c(\U1/lt5_c20 ),
    .o({\U1/lt5_c21 ,open_n342}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_21  (
    .a(1'b0),
    .b(\U1/Count_LED [21]),
    .c(\U1/lt5_c21 ),
    .o({\U1/lt5_c22 ,open_n343}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_22  (
    .a(1'b1),
    .b(\U1/Count_LED [22]),
    .c(\U1/lt5_c22 ),
    .o({\U1/lt5_c23 ,open_n344}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_23  (
    .a(1'b1),
    .b(\U1/Count_LED [23]),
    .c(\U1/lt5_c23 ),
    .o({\U1/lt5_c24 ,open_n345}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_24  (
    .a(1'b1),
    .b(\U1/Count_LED [24]),
    .c(\U1/lt5_c24 ),
    .o({\U1/lt5_c25 ,open_n346}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_25  (
    .a(1'b1),
    .b(\U1/Count_LED [25]),
    .c(\U1/lt5_c25 ),
    .o({\U1/lt5_c26 ,open_n347}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_26  (
    .a(1'b1),
    .b(\U1/Count_LED [26]),
    .c(\U1/lt5_c26 ),
    .o({\U1/lt5_c27 ,open_n348}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_27  (
    .a(1'b0),
    .b(\U1/Count_LED [27]),
    .c(\U1/lt5_c27 ),
    .o({\U1/lt5_c28 ,open_n349}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_28  (
    .a(1'b0),
    .b(\U1/Count_LED [28]),
    .c(\U1/lt5_c28 ),
    .o({\U1/lt5_c29 ,open_n350}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_29  (
    .a(1'b0),
    .b(\U1/Count_LED [29]),
    .c(\U1/lt5_c29 ),
    .o({\U1/lt5_c30 ,open_n351}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_3  (
    .a(1'b0),
    .b(\U1/Count_LED [3]),
    .c(\U1/lt5_c3 ),
    .o({\U1/lt5_c4 ,open_n352}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_30  (
    .a(1'b0),
    .b(\U1/Count_LED [30]),
    .c(\U1/lt5_c30 ),
    .o({\U1/lt5_c31 ,open_n353}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_31  (
    .a(1'b0),
    .b(\U1/Count_LED [31]),
    .c(\U1/lt5_c31 ),
    .o({\U1/lt5_c32 ,open_n354}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_4  (
    .a(1'b0),
    .b(\U1/Count_LED [4]),
    .c(\U1/lt5_c4 ),
    .o({\U1/lt5_c5 ,open_n355}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_5  (
    .a(1'b0),
    .b(\U1/Count_LED [5]),
    .c(\U1/lt5_c5 ),
    .o({\U1/lt5_c6 ,open_n356}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_6  (
    .a(1'b0),
    .b(\U1/Count_LED [6]),
    .c(\U1/lt5_c6 ),
    .o({\U1/lt5_c7 ,open_n357}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_7  (
    .a(1'b0),
    .b(\U1/Count_LED [7]),
    .c(\U1/lt5_c7 ),
    .o({\U1/lt5_c8 ,open_n358}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_8  (
    .a(1'b0),
    .b(\U1/Count_LED [8]),
    .c(\U1/lt5_c8 ),
    .o({\U1/lt5_c9 ,open_n359}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_9  (
    .a(1'b0),
    .b(\U1/Count_LED [9]),
    .c(\U1/lt5_c9 ),
    .o({\U1/lt5_c10 ,open_n360}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B_CARRY"))
    \U1/lt5_cin  (
    .a(1'b0),
    .o({\U1/lt5_c0 ,open_n363}));
  AL_MAP_ADDER #(
    .ALUTYPE("A_LE_B"))
    \U1/lt5_cout  (
    .a(1'b0),
    .b(1'b1),
    .c(\U1/lt5_c32 ),
    .o({open_n364,\U1/n13 }));
  reg_ar_as_w1 \U1/reg0_b0  (
    .clk(CLK_50M),
    .d(\U1/n3 [0]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [0]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b1  (
    .clk(CLK_50M),
    .d(\U1/n3 [1]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [1]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b10  (
    .clk(CLK_50M),
    .d(\U1/n3 [10]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [10]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b11  (
    .clk(CLK_50M),
    .d(\U1/n3 [11]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [11]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b12  (
    .clk(CLK_50M),
    .d(\U1/n3 [12]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [12]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b13  (
    .clk(CLK_50M),
    .d(\U1/n3 [13]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [13]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b14  (
    .clk(CLK_50M),
    .d(\U1/n3 [14]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [14]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b15  (
    .clk(CLK_50M),
    .d(\U1/n3 [15]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [15]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b16  (
    .clk(CLK_50M),
    .d(\U1/n3 [16]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [16]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b17  (
    .clk(CLK_50M),
    .d(\U1/n3 [17]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [17]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b18  (
    .clk(CLK_50M),
    .d(\U1/n3 [18]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [18]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b19  (
    .clk(CLK_50M),
    .d(\U1/n3 [19]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [19]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b2  (
    .clk(CLK_50M),
    .d(\U1/n3 [2]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [2]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b20  (
    .clk(CLK_50M),
    .d(\U1/n3 [20]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [20]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b21  (
    .clk(CLK_50M),
    .d(\U1/n3 [21]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [21]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b22  (
    .clk(CLK_50M),
    .d(\U1/n3 [22]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [22]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b23  (
    .clk(CLK_50M),
    .d(\U1/n3 [23]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [23]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b24  (
    .clk(CLK_50M),
    .d(\U1/n3 [24]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [24]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b25  (
    .clk(CLK_50M),
    .d(\U1/n3 [25]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [25]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b26  (
    .clk(CLK_50M),
    .d(\U1/n3 [26]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [26]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b27  (
    .clk(CLK_50M),
    .d(\U1/n3 [27]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [27]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b28  (
    .clk(CLK_50M),
    .d(\U1/n3 [28]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [28]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b29  (
    .clk(CLK_50M),
    .d(\U1/n3 [29]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [29]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b3  (
    .clk(CLK_50M),
    .d(\U1/n3 [3]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [3]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b30  (
    .clk(CLK_50M),
    .d(\U1/n3 [30]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [30]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b31  (
    .clk(CLK_50M),
    .d(\U1/n3 [31]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [31]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b4  (
    .clk(CLK_50M),
    .d(\U1/n3 [4]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [4]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b5  (
    .clk(CLK_50M),
    .d(\U1/n3 [5]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [5]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b6  (
    .clk(CLK_50M),
    .d(\U1/n3 [6]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [6]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b7  (
    .clk(CLK_50M),
    .d(\U1/n3 [7]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [7]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b8  (
    .clk(CLK_50M),
    .d(\U1/n3 [8]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [8]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  reg_ar_as_w1 \U1/reg0_b9  (
    .clk(CLK_50M),
    .d(\U1/n3 [9]),
    .en(1'b1),
    .reset(~nRST_pad),
    .set(1'b0),
    .q(\U1/Count_LED [9]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/LEDRGBCtrl.v(20)
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u0  (
    .a(1'b0),
    .b(\U1/Count_LED [0]),
    .c(\U1/sub0/c0 ),
    .o({\U1/sub0/c1 ,open_n365}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u1  (
    .a(1'b0),
    .b(\U1/Count_LED [1]),
    .c(\U1/sub0/c1 ),
    .o({\U1/sub0/c2 ,open_n366}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u10  (
    .a(1'b0),
    .b(\U1/Count_LED [10]),
    .c(\U1/sub0/c10 ),
    .o({\U1/sub0/c11 ,open_n367}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u11  (
    .a(1'b0),
    .b(\U1/Count_LED [11]),
    .c(\U1/sub0/c11 ),
    .o({\U1/sub0/c12 ,open_n368}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u12  (
    .a(1'b0),
    .b(\U1/Count_LED [12]),
    .c(\U1/sub0/c12 ),
    .o({\U1/sub0/c13 ,open_n369}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u13  (
    .a(1'b0),
    .b(\U1/Count_LED [13]),
    .c(\U1/sub0/c13 ),
    .o({\U1/sub0/c14 ,open_n370}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u14  (
    .a(1'b0),
    .b(\U1/Count_LED [14]),
    .c(\U1/sub0/c14 ),
    .o({\U1/sub0/c15 ,open_n371}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u15  (
    .a(1'b0),
    .b(\U1/Count_LED [15]),
    .c(\U1/sub0/c15 ),
    .o({\U1/sub0/c16 ,open_n372}));
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
    .o({\U1/sub0/c3 ,open_n373}));
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
    .o({\U1/sub0/c4 ,open_n374}));
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
    .o({open_n375,\U1/n8 [31]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u4  (
    .a(1'b0),
    .b(\U1/Count_LED [4]),
    .c(\U1/sub0/c4 ),
    .o({\U1/sub0/c5 ,open_n376}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u5  (
    .a(1'b0),
    .b(\U1/Count_LED [5]),
    .c(\U1/sub0/c5 ),
    .o({\U1/sub0/c6 ,open_n377}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u6  (
    .a(1'b0),
    .b(\U1/Count_LED [6]),
    .c(\U1/sub0/c6 ),
    .o({\U1/sub0/c7 ,open_n378}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u7  (
    .a(1'b0),
    .b(\U1/Count_LED [7]),
    .c(\U1/sub0/c7 ),
    .o({\U1/sub0/c8 ,open_n379}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u8  (
    .a(1'b0),
    .b(\U1/Count_LED [8]),
    .c(\U1/sub0/c8 ),
    .o({\U1/sub0/c9 ,open_n380}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub0/u9  (
    .a(1'b0),
    .b(\U1/Count_LED [9]),
    .c(\U1/sub0/c9 ),
    .o({\U1/sub0/c10 ,open_n381}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB_CARRY"))
    \U1/sub0/ucin  (
    .a(1'b0),
    .o({\U1/sub0/c0 ,open_n384}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u0  (
    .a(\U1/Count_LED [0]),
    .b(1'b0),
    .c(\U1/sub1/c0 ),
    .o({\U1/sub1/c1 ,open_n385}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u1  (
    .a(\U1/Count_LED [1]),
    .b(1'b0),
    .c(\U1/sub1/c1 ),
    .o({\U1/sub1/c2 ,open_n386}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u10  (
    .a(\U1/Count_LED [10]),
    .b(1'b0),
    .c(\U1/sub1/c10 ),
    .o({\U1/sub1/c11 ,open_n387}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u11  (
    .a(\U1/Count_LED [11]),
    .b(1'b0),
    .c(\U1/sub1/c11 ),
    .o({\U1/sub1/c12 ,open_n388}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u12  (
    .a(\U1/Count_LED [12]),
    .b(1'b0),
    .c(\U1/sub1/c12 ),
    .o({\U1/sub1/c13 ,open_n389}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u13  (
    .a(\U1/Count_LED [13]),
    .b(1'b0),
    .c(\U1/sub1/c13 ),
    .o({\U1/sub1/c14 ,open_n390}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u14  (
    .a(\U1/Count_LED [14]),
    .b(1'b0),
    .c(\U1/sub1/c14 ),
    .o({\U1/sub1/c15 ,open_n391}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u15  (
    .a(\U1/Count_LED [15]),
    .b(1'b0),
    .c(\U1/sub1/c15 ),
    .o({\U1/sub1/c16 ,open_n392}));
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
    .o({\U1/sub1/c3 ,open_n393}));
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
    .o({\U1/sub1/c4 ,open_n394}));
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
    .o({open_n395,\U1/n12 [31]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u4  (
    .a(\U1/Count_LED [4]),
    .b(1'b0),
    .c(\U1/sub1/c4 ),
    .o({\U1/sub1/c5 ,open_n396}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u5  (
    .a(\U1/Count_LED [5]),
    .b(1'b0),
    .c(\U1/sub1/c5 ),
    .o({\U1/sub1/c6 ,open_n397}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u6  (
    .a(\U1/Count_LED [6]),
    .b(1'b0),
    .c(\U1/sub1/c6 ),
    .o({\U1/sub1/c7 ,open_n398}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u7  (
    .a(\U1/Count_LED [7]),
    .b(1'b0),
    .c(\U1/sub1/c7 ),
    .o({\U1/sub1/c8 ,open_n399}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u8  (
    .a(\U1/Count_LED [8]),
    .b(1'b0),
    .c(\U1/sub1/c8 ),
    .o({\U1/sub1/c9 ,open_n400}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub1/u9  (
    .a(\U1/Count_LED [9]),
    .b(1'b0),
    .c(\U1/sub1/c9 ),
    .o({\U1/sub1/c10 ,open_n401}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB_CARRY"))
    \U1/sub1/ucin  (
    .a(1'b0),
    .o({\U1/sub1/c0 ,open_n404}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u0  (
    .a(1'b0),
    .b(\U1/Count_LED [0]),
    .c(\U1/sub2/c0 ),
    .o({\U1/sub2/c1 ,open_n405}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u1  (
    .a(1'b0),
    .b(\U1/Count_LED [1]),
    .c(\U1/sub2/c1 ),
    .o({\U1/sub2/c2 ,open_n406}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u10  (
    .a(1'b0),
    .b(\U1/Count_LED [10]),
    .c(\U1/sub2/c10 ),
    .o({\U1/sub2/c11 ,open_n407}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u11  (
    .a(1'b0),
    .b(\U1/Count_LED [11]),
    .c(\U1/sub2/c11 ),
    .o({\U1/sub2/c12 ,open_n408}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u12  (
    .a(1'b0),
    .b(\U1/Count_LED [12]),
    .c(\U1/sub2/c12 ),
    .o({\U1/sub2/c13 ,open_n409}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u13  (
    .a(1'b0),
    .b(\U1/Count_LED [13]),
    .c(\U1/sub2/c13 ),
    .o({\U1/sub2/c14 ,open_n410}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u14  (
    .a(1'b0),
    .b(\U1/Count_LED [14]),
    .c(\U1/sub2/c14 ),
    .o({\U1/sub2/c15 ,open_n411}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u15  (
    .a(1'b0),
    .b(\U1/Count_LED [15]),
    .c(\U1/sub2/c15 ),
    .o({\U1/sub2/c16 ,open_n412}));
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
    .o({\U1/sub2/c3 ,open_n413}));
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
    .o({\U1/sub2/c4 ,open_n414}));
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
    .o({open_n415,\U1/n14 [31]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u4  (
    .a(1'b0),
    .b(\U1/Count_LED [4]),
    .c(\U1/sub2/c4 ),
    .o({\U1/sub2/c5 ,open_n416}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u5  (
    .a(1'b0),
    .b(\U1/Count_LED [5]),
    .c(\U1/sub2/c5 ),
    .o({\U1/sub2/c6 ,open_n417}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u6  (
    .a(1'b0),
    .b(\U1/Count_LED [6]),
    .c(\U1/sub2/c6 ),
    .o({\U1/sub2/c7 ,open_n418}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u7  (
    .a(1'b0),
    .b(\U1/Count_LED [7]),
    .c(\U1/sub2/c7 ),
    .o({\U1/sub2/c8 ,open_n419}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u8  (
    .a(1'b0),
    .b(\U1/Count_LED [8]),
    .c(\U1/sub2/c8 ),
    .o({\U1/sub2/c9 ,open_n420}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub2/u9  (
    .a(1'b0),
    .b(\U1/Count_LED [9]),
    .c(\U1/sub2/c9 ),
    .o({\U1/sub2/c10 ,open_n421}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB_CARRY"))
    \U1/sub2/ucin  (
    .a(1'b0),
    .o({\U1/sub2/c0 ,open_n424}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u0  (
    .a(1'b0),
    .b(\U1/Count_LED [0]),
    .c(\U1/sub3/c0 ),
    .o({\U1/sub3/c1 ,open_n425}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u1  (
    .a(1'b0),
    .b(\U1/Count_LED [1]),
    .c(\U1/sub3/c1 ),
    .o({\U1/sub3/c2 ,open_n426}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u10  (
    .a(1'b0),
    .b(\U1/Count_LED [10]),
    .c(\U1/sub3/c10 ),
    .o({\U1/sub3/c11 ,open_n427}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u11  (
    .a(1'b0),
    .b(\U1/Count_LED [11]),
    .c(\U1/sub3/c11 ),
    .o({\U1/sub3/c12 ,open_n428}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u12  (
    .a(1'b0),
    .b(\U1/Count_LED [12]),
    .c(\U1/sub3/c12 ),
    .o({\U1/sub3/c13 ,open_n429}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u13  (
    .a(1'b0),
    .b(\U1/Count_LED [13]),
    .c(\U1/sub3/c13 ),
    .o({\U1/sub3/c14 ,open_n430}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u14  (
    .a(1'b0),
    .b(\U1/Count_LED [14]),
    .c(\U1/sub3/c14 ),
    .o({\U1/sub3/c15 ,open_n431}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u15  (
    .a(1'b0),
    .b(\U1/Count_LED [15]),
    .c(\U1/sub3/c15 ),
    .o({\U1/sub3/c16 ,open_n432}));
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
    .o({\U1/sub3/c3 ,open_n433}));
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
    .o({\U1/sub3/c4 ,open_n434}));
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
    .o({open_n435,\U1/n16 [31]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u4  (
    .a(1'b0),
    .b(\U1/Count_LED [4]),
    .c(\U1/sub3/c4 ),
    .o({\U1/sub3/c5 ,open_n436}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u5  (
    .a(1'b0),
    .b(\U1/Count_LED [5]),
    .c(\U1/sub3/c5 ),
    .o({\U1/sub3/c6 ,open_n437}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u6  (
    .a(1'b0),
    .b(\U1/Count_LED [6]),
    .c(\U1/sub3/c6 ),
    .o({\U1/sub3/c7 ,open_n438}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u7  (
    .a(1'b0),
    .b(\U1/Count_LED [7]),
    .c(\U1/sub3/c7 ),
    .o({\U1/sub3/c8 ,open_n439}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u8  (
    .a(1'b0),
    .b(\U1/Count_LED [8]),
    .c(\U1/sub3/c8 ),
    .o({\U1/sub3/c9 ,open_n440}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub3/u9  (
    .a(1'b0),
    .b(\U1/Count_LED [9]),
    .c(\U1/sub3/c9 ),
    .o({\U1/sub3/c10 ,open_n441}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB_CARRY"))
    \U1/sub3/ucin  (
    .a(1'b0),
    .o({\U1/sub3/c0 ,open_n444}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u0  (
    .a(\U1/Count_LED [0]),
    .b(1'b0),
    .c(\U1/sub4/c0 ),
    .o({\U1/sub4/c1 ,open_n445}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u1  (
    .a(\U1/Count_LED [1]),
    .b(1'b0),
    .c(\U1/sub4/c1 ),
    .o({\U1/sub4/c2 ,open_n446}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u10  (
    .a(\U1/Count_LED [10]),
    .b(1'b0),
    .c(\U1/sub4/c10 ),
    .o({\U1/sub4/c11 ,open_n447}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u11  (
    .a(\U1/Count_LED [11]),
    .b(1'b0),
    .c(\U1/sub4/c11 ),
    .o({\U1/sub4/c12 ,open_n448}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u12  (
    .a(\U1/Count_LED [12]),
    .b(1'b0),
    .c(\U1/sub4/c12 ),
    .o({\U1/sub4/c13 ,open_n449}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u13  (
    .a(\U1/Count_LED [13]),
    .b(1'b0),
    .c(\U1/sub4/c13 ),
    .o({\U1/sub4/c14 ,open_n450}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u14  (
    .a(\U1/Count_LED [14]),
    .b(1'b0),
    .c(\U1/sub4/c14 ),
    .o({\U1/sub4/c15 ,open_n451}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u15  (
    .a(\U1/Count_LED [15]),
    .b(1'b0),
    .c(\U1/sub4/c15 ),
    .o({\U1/sub4/c16 ,open_n452}));
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
    .o({\U1/sub4/c3 ,open_n453}));
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
    .o({\U1/sub4/c4 ,open_n454}));
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
    .o({open_n455,\U1/n17 [31]}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u4  (
    .a(\U1/Count_LED [4]),
    .b(1'b0),
    .c(\U1/sub4/c4 ),
    .o({\U1/sub4/c5 ,open_n456}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u5  (
    .a(\U1/Count_LED [5]),
    .b(1'b0),
    .c(\U1/sub4/c5 ),
    .o({\U1/sub4/c6 ,open_n457}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u6  (
    .a(\U1/Count_LED [6]),
    .b(1'b0),
    .c(\U1/sub4/c6 ),
    .o({\U1/sub4/c7 ,open_n458}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u7  (
    .a(\U1/Count_LED [7]),
    .b(1'b0),
    .c(\U1/sub4/c7 ),
    .o({\U1/sub4/c8 ,open_n459}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u8  (
    .a(\U1/Count_LED [8]),
    .b(1'b0),
    .c(\U1/sub4/c8 ),
    .o({\U1/sub4/c9 ,open_n460}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB"))
    \U1/sub4/u9  (
    .a(\U1/Count_LED [9]),
    .b(1'b0),
    .c(\U1/sub4/c9 ),
    .o({\U1/sub4/c10 ,open_n461}));
  AL_MAP_ADDER #(
    .ALUTYPE("SUB_CARRY"))
    \U1/sub4/ucin  (
    .a(1'b0),
    .o({\U1/sub4/c0 ,open_n464}));
  EG_PHY_PAD #(
    //.LOCATION("K14"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u0 (
    .ipad(CLK_24M),
    .di(CLK_24M_pad));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(11)
  EG_PHY_PAD #(
    //.LOCATION("C15"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u1 (
    .do({open_n483,open_n484,open_n485,1'b0}),
    .opad(GPIO));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(15)
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u10 (
    .a(\U1/B_PWM/n2 [5]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [5]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u100 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [29]),
    .d(\U1/n14 [29]),
    .o(\U1/PWM_GData [29]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u101 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [30]),
    .d(\U1/n14 [30]),
    .o(\U1/PWM_GData [30]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u102 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [31]),
    .d(\U1/n14 [31]),
    .o(\U1/PWM_GData [31]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u103 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [16]),
    .d(\U1/n17 [16]),
    .o(\U1/PWM_BData [16]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u104 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [17]),
    .d(\U1/n17 [17]),
    .o(\U1/PWM_BData [17]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u105 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [18]),
    .d(\U1/n17 [18]),
    .o(\U1/PWM_BData [18]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u106 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [19]),
    .d(\U1/n17 [19]),
    .o(\U1/PWM_BData [19]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u107 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [20]),
    .d(\U1/n17 [20]),
    .o(\U1/PWM_BData [20]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u108 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [21]),
    .d(\U1/n17 [21]),
    .o(\U1/PWM_BData [21]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u109 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [22]),
    .d(\U1/n17 [22]),
    .o(\U1/PWM_BData [22]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u11 (
    .a(\U1/B_PWM/n2 [4]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [4]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u110 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [23]),
    .d(\U1/n17 [23]),
    .o(\U1/PWM_BData [23]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u111 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [24]),
    .d(\U1/n17 [24]),
    .o(\U1/PWM_BData [24]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u112 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [25]),
    .d(\U1/n17 [25]),
    .o(\U1/PWM_BData [25]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u113 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [26]),
    .d(\U1/n17 [26]),
    .o(\U1/PWM_BData [26]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u114 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [27]),
    .d(\U1/n17 [27]),
    .o(\U1/PWM_BData [27]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u115 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [28]),
    .d(\U1/n17 [28]),
    .o(\U1/PWM_BData [28]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u116 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [29]),
    .d(\U1/n17 [29]),
    .o(\U1/PWM_BData [29]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u117 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [30]),
    .d(\U1/n17 [30]),
    .o(\U1/PWM_BData [30]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u118 (
    .a(\U1/n4 ),
    .b(\U1/n13 ),
    .c(\U1/n16 [31]),
    .d(\U1/n17 [31]),
    .o(\U1/PWM_BData [31]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    _al_u119 (
    .a(\U1/n5 ),
    .b(\U1/n6 ),
    .o(\U1/n7 ));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u12 (
    .a(\U1/B_PWM/n2 [3]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [3]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u120 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [31]),
    .d(\U1/n8 [31]),
    .o(\U1/PWM_RData [31]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u121 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [30]),
    .d(\U1/n8 [30]),
    .o(\U1/PWM_RData [30]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u122 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [29]),
    .d(\U1/n8 [29]),
    .o(\U1/PWM_RData [29]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u123 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [28]),
    .d(\U1/n8 [28]),
    .o(\U1/PWM_RData [28]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u124 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [27]),
    .d(\U1/n8 [27]),
    .o(\U1/PWM_RData [27]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u125 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [26]),
    .d(\U1/n8 [26]),
    .o(\U1/PWM_RData [26]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u126 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [25]),
    .d(\U1/n8 [25]),
    .o(\U1/PWM_RData [25]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u127 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [24]),
    .d(\U1/n8 [24]),
    .o(\U1/PWM_RData [24]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u128 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [23]),
    .d(\U1/n8 [23]),
    .o(\U1/PWM_RData [23]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u129 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [22]),
    .d(\U1/n8 [22]),
    .o(\U1/PWM_RData [22]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u13 (
    .a(\U1/B_PWM/n2 [2]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [2]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u130 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [21]),
    .d(\U1/n8 [21]),
    .o(\U1/PWM_RData [21]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u131 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [20]),
    .d(\U1/n8 [20]),
    .o(\U1/PWM_RData [20]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u132 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [19]),
    .d(\U1/n8 [19]),
    .o(\U1/PWM_RData [19]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u133 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [18]),
    .d(\U1/n8 [18]),
    .o(\U1/PWM_RData [18]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u134 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [17]),
    .d(\U1/n8 [17]),
    .o(\U1/PWM_RData [17]));
  AL_MAP_LUT4 #(
    .EQN("((D*A)*~(C)*~(B)+(D*A)*C*~(B)+~((D*A))*C*B+(D*A)*C*B)"),
    .INIT(16'he2c0))
    _al_u135 (
    .a(\U1/n7 ),
    .b(\U1/n4 ),
    .c(\U1/Count_LED [16]),
    .d(\U1/n8 [16]),
    .o(\U1/PWM_RData [16]));
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    _al_u136 (
    .a(\U1/B_PWM/n4 ),
    .o(LEDs_pad[2]));
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    _al_u137 (
    .a(\U1/G_PWM/n4 ),
    .o(LEDs_pad[1]));
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    _al_u138 (
    .a(\U1/R_PWM/n4 ),
    .o(LEDs_pad[0]));
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    _al_u139 (
    .a(nRST_pad),
    .o(\U1/B_PWM/n0 ));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u14 (
    .a(\U1/B_PWM/n2 [15]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [15]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u15 (
    .a(\U1/B_PWM/n2 [14]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [14]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u16 (
    .a(\U1/B_PWM/n2 [13]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [13]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u17 (
    .a(\U1/B_PWM/n2 [12]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [12]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u18 (
    .a(\U1/B_PWM/n2 [11]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [11]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u19 (
    .a(\U1/B_PWM/n2 [10]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [10]));
  EG_PHY_PAD #(
    //.LOCATION("R3"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u2 (
    .do({open_n500,open_n501,open_n502,LEDs_pad[2]}),
    .opad(LEDs[2]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(14)
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u20 (
    .a(\U1/B_PWM/n2 [1]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [1]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u21 (
    .a(\U1/B_PWM/n2 [0]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [0]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u22 (
    .a(\U1/G_PWM/n2 [9]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [9]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u23 (
    .a(\U1/G_PWM/n2 [8]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [8]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u24 (
    .a(\U1/G_PWM/n2 [7]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [7]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u25 (
    .a(\U1/G_PWM/n2 [6]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [6]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u26 (
    .a(\U1/G_PWM/n2 [5]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [5]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u27 (
    .a(\U1/G_PWM/n2 [4]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [4]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u28 (
    .a(\U1/G_PWM/n2 [3]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [3]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u29 (
    .a(\U1/G_PWM/n2 [2]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [2]));
  EG_PHY_PAD #(
    //.LOCATION("P13"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u3 (
    .do({open_n517,open_n518,open_n519,LEDs_pad[1]}),
    .opad(LEDs[1]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(14)
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u30 (
    .a(\U1/G_PWM/n2 [15]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [15]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u31 (
    .a(\U1/G_PWM/n2 [14]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [14]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u32 (
    .a(\U1/G_PWM/n2 [13]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [13]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u33 (
    .a(\U1/G_PWM/n2 [12]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [12]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u34 (
    .a(\U1/G_PWM/n2 [11]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [11]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u35 (
    .a(\U1/G_PWM/n2 [10]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [10]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u36 (
    .a(\U1/G_PWM/n2 [1]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [1]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u37 (
    .a(\U1/G_PWM/n2 [0]),
    .b(\U1/G_PWM/n1 ),
    .o(\U1/G_PWM/n3 [0]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u38 (
    .a(\U1/R_PWM/n2 [9]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [9]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u39 (
    .a(\U1/R_PWM/n2 [8]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [8]));
  EG_PHY_PAD #(
    //.LOCATION("J14"),
    //.PCICLAMP("ON"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS25"),
    .MODE("OUT"),
    .TSMUX("0"))
    _al_u4 (
    .do({open_n534,open_n535,open_n536,LEDs_pad[0]}),
    .opad(LEDs[0]));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(14)
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u40 (
    .a(\U1/R_PWM/n2 [7]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [7]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u41 (
    .a(\U1/R_PWM/n2 [6]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [6]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u42 (
    .a(\U1/R_PWM/n2 [5]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [5]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u43 (
    .a(\U1/R_PWM/n2 [4]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [4]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u44 (
    .a(\U1/R_PWM/n2 [3]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [3]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u45 (
    .a(\U1/R_PWM/n2 [2]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [2]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u46 (
    .a(\U1/R_PWM/n2 [15]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [15]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u47 (
    .a(\U1/R_PWM/n2 [14]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [14]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u48 (
    .a(\U1/R_PWM/n2 [13]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [13]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u49 (
    .a(\U1/R_PWM/n2 [12]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [12]));
  EG_PHY_PAD #(
    //.LOCATION("K16"),
    //.PCICLAMP("ON"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS25"),
    .MODE("IN"),
    .TSMUX("1"))
    _al_u5 (
    .ipad(nRST),
    .di(nRST_pad));  // E:/Fpga_Prj/Anlogic/AnlogIC_Examples/LED_Examples/Source/TOP.v(12)
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u50 (
    .a(\U1/R_PWM/n2 [11]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [11]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u51 (
    .a(\U1/R_PWM/n2 [10]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [10]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u52 (
    .a(\U1/R_PWM/n2 [1]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [1]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u53 (
    .a(\U1/R_PWM/n2 [0]),
    .b(\U1/R_PWM/n1 ),
    .o(\U1/R_PWM/n3 [0]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u54 (
    .a(\U1/n2 [9]),
    .b(\U1/n1 ),
    .o(\U1/n3 [9]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u55 (
    .a(\U1/n2 [8]),
    .b(\U1/n1 ),
    .o(\U1/n3 [8]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u56 (
    .a(\U1/n2 [7]),
    .b(\U1/n1 ),
    .o(\U1/n3 [7]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u57 (
    .a(\U1/n2 [6]),
    .b(\U1/n1 ),
    .o(\U1/n3 [6]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u58 (
    .a(\U1/n2 [5]),
    .b(\U1/n1 ),
    .o(\U1/n3 [5]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u59 (
    .a(\U1/n2 [4]),
    .b(\U1/n1 ),
    .o(\U1/n3 [4]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u6 (
    .a(\U1/B_PWM/n2 [9]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [9]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u60 (
    .a(\U1/n2 [31]),
    .b(\U1/n1 ),
    .o(\U1/n3 [31]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u61 (
    .a(\U1/n2 [30]),
    .b(\U1/n1 ),
    .o(\U1/n3 [30]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u62 (
    .a(\U1/n2 [3]),
    .b(\U1/n1 ),
    .o(\U1/n3 [3]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u63 (
    .a(\U1/n2 [29]),
    .b(\U1/n1 ),
    .o(\U1/n3 [29]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u64 (
    .a(\U1/n2 [28]),
    .b(\U1/n1 ),
    .o(\U1/n3 [28]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u65 (
    .a(\U1/n2 [27]),
    .b(\U1/n1 ),
    .o(\U1/n3 [27]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u66 (
    .a(\U1/n2 [26]),
    .b(\U1/n1 ),
    .o(\U1/n3 [26]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u67 (
    .a(\U1/n2 [25]),
    .b(\U1/n1 ),
    .o(\U1/n3 [25]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u68 (
    .a(\U1/n2 [24]),
    .b(\U1/n1 ),
    .o(\U1/n3 [24]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u69 (
    .a(\U1/n2 [23]),
    .b(\U1/n1 ),
    .o(\U1/n3 [23]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u7 (
    .a(\U1/B_PWM/n2 [8]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [8]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u70 (
    .a(\U1/n2 [22]),
    .b(\U1/n1 ),
    .o(\U1/n3 [22]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u71 (
    .a(\U1/n2 [21]),
    .b(\U1/n1 ),
    .o(\U1/n3 [21]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u72 (
    .a(\U1/n2 [20]),
    .b(\U1/n1 ),
    .o(\U1/n3 [20]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u73 (
    .a(\U1/n2 [2]),
    .b(\U1/n1 ),
    .o(\U1/n3 [2]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u74 (
    .a(\U1/n2 [19]),
    .b(\U1/n1 ),
    .o(\U1/n3 [19]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u75 (
    .a(\U1/n2 [18]),
    .b(\U1/n1 ),
    .o(\U1/n3 [18]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u76 (
    .a(\U1/n2 [17]),
    .b(\U1/n1 ),
    .o(\U1/n3 [17]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u77 (
    .a(\U1/n2 [16]),
    .b(\U1/n1 ),
    .o(\U1/n3 [16]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u78 (
    .a(\U1/n2 [15]),
    .b(\U1/n1 ),
    .o(\U1/n3 [15]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u79 (
    .a(\U1/n2 [14]),
    .b(\U1/n1 ),
    .o(\U1/n3 [14]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u8 (
    .a(\U1/B_PWM/n2 [7]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [7]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u80 (
    .a(\U1/n2 [13]),
    .b(\U1/n1 ),
    .o(\U1/n3 [13]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u81 (
    .a(\U1/n2 [12]),
    .b(\U1/n1 ),
    .o(\U1/n3 [12]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u82 (
    .a(\U1/n2 [11]),
    .b(\U1/n1 ),
    .o(\U1/n3 [11]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u83 (
    .a(\U1/n2 [10]),
    .b(\U1/n1 ),
    .o(\U1/n3 [10]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u84 (
    .a(\U1/n2 [1]),
    .b(\U1/n1 ),
    .o(\U1/n3 [1]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u85 (
    .a(\U1/n2 [0]),
    .b(\U1/n1 ),
    .o(\U1/n3 [0]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    _al_u86 (
    .a(\U1/n6 ),
    .b(\U1/n10 ),
    .o(\U1/n11 ));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u87 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [16]),
    .d(\U1/n14 [16]),
    .o(\U1/PWM_GData [16]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u88 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [17]),
    .d(\U1/n14 [17]),
    .o(\U1/PWM_GData [17]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u89 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [18]),
    .d(\U1/n14 [18]),
    .o(\U1/PWM_GData [18]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    _al_u9 (
    .a(\U1/B_PWM/n2 [6]),
    .b(\U1/B_PWM/n1 ),
    .o(\U1/B_PWM/n3 [6]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u90 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [19]),
    .d(\U1/n14 [19]),
    .o(\U1/PWM_GData [19]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u91 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [20]),
    .d(\U1/n14 [20]),
    .o(\U1/PWM_GData [20]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u92 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [21]),
    .d(\U1/n14 [21]),
    .o(\U1/PWM_GData [21]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u93 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [22]),
    .d(\U1/n14 [22]),
    .o(\U1/PWM_GData [22]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u94 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [23]),
    .d(\U1/n14 [23]),
    .o(\U1/PWM_GData [23]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u95 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [24]),
    .d(\U1/n14 [24]),
    .o(\U1/PWM_GData [24]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u96 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [25]),
    .d(\U1/n14 [25]),
    .o(\U1/PWM_GData [25]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u97 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [26]),
    .d(\U1/n14 [26]),
    .o(\U1/PWM_GData [26]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u98 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [27]),
    .d(\U1/n14 [27]),
    .o(\U1/PWM_GData [27]));
  AL_MAP_LUT4 #(
    .EQN("((D*B)*~(C)*~(A)+(D*B)*C*~(A)+~((D*B))*C*A+(D*B)*C*A)"),
    .INIT(16'he4a0))
    _al_u99 (
    .a(\U1/n11 ),
    .b(\U1/n13 ),
    .c(\U1/n12 [28]),
    .d(\U1/n14 [28]),
    .o(\U1/PWM_GData [28]));
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

