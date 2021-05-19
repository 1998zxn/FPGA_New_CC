`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/03 11:25:03
// Design Name: 
// Module Name: bao_cnt_debug
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bao_cnt_debug(
input                               reset,
input                               clk,
input      [63:0]                   my_mac,


(* DONT_TOUCH= "{TRUE}" *)input      [63:0]                   rx_axis_fifo_tdata,
(* DONT_TOUCH= "{TRUE}" *)input      [7:0]                    rx_axis_fifo_tkeep,
(* DONT_TOUCH= "{TRUE}" *)input                               rx_axis_fifo_tvalid,
(* DONT_TOUCH= "{TRUE}" *)input                               rx_axis_fifo_tlast
//(* DONT_TOUCH= "{TRUE}" *)output  reg                         rx_axis_fifo_tready
//(* DONT_TOUCH= "{TRUE}" *)input [7:0]     xgmii_rxc,
//(* DONT_TOUCH= "{TRUE}" *)input [63:0]    xgmii_rxd
    );
(* DONT_TOUCH= "{TRUE}" *) reg [15:0] payload_cnt;
(* DONT_TOUCH= "{TRUE}" *) reg [31:0] bao_cnt  ; 
always @(posedge clk) begin
  if(rx_axis_fifo_tvalid == 1)
    payload_cnt<=payload_cnt+1;
  else
    payload_cnt<=0;  
  end
always @(posedge clk) begin
  if(reset)
    bao_cnt<=0;
  else if(rx_axis_fifo_tdata == my_mac && rx_axis_fifo_tvalid == 1)
    bao_cnt<=bao_cnt+1;  
  else
    bao_cnt<=bao_cnt;  
  end
////rx_axis_fifo_tready
//always @(posedge clk) begin
//  rx_axis_fifo_tready <= 1;
//  end
endmodule
