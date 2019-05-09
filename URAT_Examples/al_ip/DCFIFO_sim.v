// Verilog netlist created by TD v4.4.433
// Wed May  8 11:40:00 2019

`timescale 1ns / 1ps
module UARTFIFO  // al_ip/DCFIFO.v(14)
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

  input clkr;  // al_ip/DCFIFO.v(25)
  input clkw;  // al_ip/DCFIFO.v(24)
  input [7:0] di;  // al_ip/DCFIFO.v(23)
  input re;  // al_ip/DCFIFO.v(25)
  input rst;  // al_ip/DCFIFO.v(22)
  input we;  // al_ip/DCFIFO.v(24)
  output [7:0] do;  // al_ip/DCFIFO.v(27)
  output empty_flag;  // al_ip/DCFIFO.v(28)
  output full_flag;  // al_ip/DCFIFO.v(29)

  wire empty_flag_neg;
  wire full_flag_neg;

  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();
  not empty_flag_inv (empty_flag_neg, empty_flag);
  not full_flag_inv (full_flag_neg, full_flag);
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
    logic_fifo_0 (
    .clkr(clkr),
    .clkw(clkw),
    .csr({2'b11,empty_flag_neg}),
    .csw({2'b11,full_flag_neg}),
    .dia({open_n47,di}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(re),
    .rprst(rst),
    .rst(rst),
    .we(we),
    .doa({open_n59,do}),
    .empty_flag(empty_flag),
    .full_flag(full_flag));

endmodule 

