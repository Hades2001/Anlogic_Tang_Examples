/************************************************************\
 **  Copyright (c) 2011-2021 Anlogic, Inc.
 **  All Right Reserved.
\************************************************************/
/************************************************************\
 ** Log	:	This file is generated by Anlogic IP Generator.
 ** File	:	H:/FPGAPrg/Anlogic_Tang_Examples-master/Anlogic_Tang_Examples/LCD_8080ToRGB/al_ip/DisFIFO.v
 ** Date	:	2019 05 12
 ** TD version	:	4.4.433
\************************************************************/

`timescale 1ns / 1ps

module DisFIFO (
	rst,
	di, clkw, we,
	do, clkr, re,
	empty_flag,
	full_flag 
);

	input rst;
	input [7:0] di;
	input clkw, we;
	input clkr,re;

	output [15:0] do;
	output empty_flag;
	output full_flag;

EG_LOGIC_FIFO #(
 	.DATA_WIDTH_W(8),
	.DATA_WIDTH_R(16),
	.DATA_DEPTH_W(2048),
	.DATA_DEPTH_R(1024),
	.ENDIAN("BIG"),
	.RESETMODE("ASYNC"),
	.E(0),
	.F(2048),
	.ASYNC_RESET_RELEASE("SYNC"))
logic_fifo(
	.rst(rst),
	.di(di),
	.clkw(clkw),
	.we(we),
	.csw(3'b111),
	.do(do),
	.clkr(clkr),
	.re(re),
	.csr(3'b111),
	.ore(1'b0),
	.empty_flag(empty_flag),
	.aempty_flag(),
	.full_flag(full_flag),
	.afull_flag()

);

endmodule