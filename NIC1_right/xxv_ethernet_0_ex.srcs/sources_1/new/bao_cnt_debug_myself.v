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


module bao_cnt_debug_myself(
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
(* DONT_TOUCH= "{TRUE}" *) reg [31:0] bao_cnt2  ; 
(* DONT_TOUCH= "{TRUE}" *) reg [31:0] bao_cnt3  ; 
(* DONT_TOUCH= "{TRUE}" *) reg [31:0] bao_cnt4  ; 
(* DONT_TOUCH= "{TRUE}" *) reg [31:0] bao_cnt5  ; 
(* DONT_TOUCH= "{TRUE}" *) reg [31:0] bao_cnt6  ; 
(* DONT_TOUCH= "{TRUE}" *) reg [31:0] bao_cnt7  ; 
(* DONT_TOUCH= "{TRUE}" *) reg [31:0] bao_cnt8  ; 
reg [63:0]  my_mac1 = 64'h1045000801FAFBFC;
reg [63:0]  my_mac2 = 64'h45000801FAFBFCFD;
reg [63:0]  my_mac3 = 64'h000801FAFBFCFDFE;
reg [63:0]  my_mac4 = 64'h0801FAFBFCFDFE02;
reg [63:0]  my_mac5 = 64'h01FAFBFCFDFE02FA;
reg [63:0]  my_mac6 = 64'hFAFBFCFDFE02FAFB;
reg [63:0]  my_mac7 = 64'hFBFCFDFE02FAFBFC;
reg [47:0]  my_mac8 = 48'h02FAFBFCFDFE;
always @(posedge clk) begin
  if(rx_axis_fifo_tvalid == 1)
    payload_cnt<=payload_cnt+1;
  else
    payload_cnt<=0;  
  end
always @(posedge clk) begin
  if(reset)
    bao_cnt<=0;
  else if(rx_axis_fifo_tdata == my_mac1 && rx_axis_fifo_tvalid == 1)
    bao_cnt<=bao_cnt+1;  
  else
    bao_cnt<=bao_cnt;  
  end
always @(posedge clk) begin
  if(reset)
    bao_cnt2<=0;
  else if(rx_axis_fifo_tdata == my_mac2 && rx_axis_fifo_tvalid == 1)
    bao_cnt2<=bao_cnt2+1;  
  else
    bao_cnt2<=bao_cnt2;  
  end
always @(posedge clk) begin
  if(reset)
    bao_cnt3<=0;
  else if(rx_axis_fifo_tdata == my_mac3 && rx_axis_fifo_tvalid == 1)
    bao_cnt3<=bao_cnt3+1;  
  else
    bao_cnt3<=bao_cnt3;  
  end
always @(posedge clk) begin
  if(reset)
    bao_cnt4<=0;
  else if(rx_axis_fifo_tdata == my_mac4 && rx_axis_fifo_tvalid == 1)
    bao_cnt4<=bao_cnt4+1;  
  else
    bao_cnt4<=bao_cnt4;  
  end
always @(posedge clk) begin
  if(reset)
    bao_cnt5<=0;
  else if(rx_axis_fifo_tdata == my_mac5 && rx_axis_fifo_tvalid == 1)
    bao_cnt5<=bao_cnt5+1;  
  else
    bao_cnt5<=bao_cnt5;  
  end
always @(posedge clk) begin
  if(reset)
    bao_cnt6<=0;
  else if(rx_axis_fifo_tdata == my_mac6 && rx_axis_fifo_tvalid == 1)
    bao_cnt6<=bao_cnt6+1;  
  else
    bao_cnt6<=bao_cnt6;  
  end
always @(posedge clk) begin
  if(reset)
    bao_cnt7<=0;
  else if(rx_axis_fifo_tdata == my_mac7 && rx_axis_fifo_tvalid == 1)
    bao_cnt7<=bao_cnt7+1;  
  else
    bao_cnt7<=bao_cnt7;  
  end
always @(posedge clk) begin
  if(reset)
    bao_cnt8<=0;
  else if(rx_axis_fifo_tdata[47:0] == my_mac8 && rx_axis_fifo_tvalid == 1)
    bao_cnt8<=bao_cnt8+1;  
  else
    bao_cnt8<=bao_cnt8;  
  end

////rx_axis_fifo_tready
//always @(posedge clk) begin
//  rx_axis_fifo_tready <= 1;
//  end
endmodule
