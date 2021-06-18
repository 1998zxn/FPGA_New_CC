`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/27 14:35:48
// Design Name: 
// Module Name: CWnd_Control
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

module CWnd_Control
(
 input                      clk,   
 input                      reset,  

 input                      last,                //RTT_fifo not empty
 input                      valid,                //RTT_fifo not empty
 input      [15:0]          cWnd,                //RTT_fifo not empty
 input                      cWnd_en,                //RTT_fifo not empty
 input                      ECN,                //RTT_fifo not empty
 input                      start_wait,

 output     reg             start                 //put rate to Rate_fifo

);

//get RTT
parameter SM_IDLE_ST               =  4'b0001;

//
parameter SM_Begin_ST              =  4'b0010;

//等待发送下一个数据包
parameter SM_Wait_ST               =  4'b0100;

//
parameter SM_Noting_ST             =  4'b1000;

(*mark_debug = "true"*) reg [3:0]     state;
reg        [3:0]                      next_state ;

(*mark_debug = "true"*) reg        [15:0] cWnd_size;//
(*mark_debug = "true"*) reg        [15:0] cWnd_now;//
(*mark_debug = "true"*) reg  [47:0] cnt_cWnd_en = 32'd0;
reg        [7:0]  cnt_Wait;

always @(posedge clk or negedge reset)
begin
  if (~reset)
    cnt_Wait <= 8'd0 ;
  else if (state == SM_Wait_ST )
    cnt_Wait <= cnt_Wait + 1 ;
  else
    cnt_Wait <= 8'd0 ;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    state <= SM_IDLE_ST ;
  else 
    state <= next_state ;
end

always @(*)
begin
    case(state)
      SM_IDLE_ST:begin
        if (ECN == 0 && start_wait == 1)
          next_state <= SM_Begin_ST;
        else
          next_state <= SM_IDLE_ST;
        end
      SM_Begin_ST:begin
        if (cWnd_now < cWnd_size )
          next_state <= SM_Wait_ST;
        else
          next_state <= SM_Begin_ST;
      end
      SM_Wait_ST:begin
        if (last == 1 || (valid == 0 && cnt_Wait ==5 ))
          next_state <= SM_IDLE_ST;
        else
          next_state <= SM_Wait_ST;
        end
      SM_Noting_ST:
        next_state <= SM_IDLE_ST;
      default: 
        next_state <= SM_IDLE_ST;
    endcase
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    start <= 0 ;
  else if (state == SM_Begin_ST && cWnd_now < cWnd_size)
    start <= 1 ;
  else
    start <= 0;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    cWnd_size <= 8'd1 ;
  else if (cWnd_en == 1 )
    cWnd_size <= cWnd >> 10;
  else
    cWnd_size <= cWnd_size;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    cWnd_now <= 8'd0 ;
  else if (cWnd_en == 1 )
  begin
    if (cWnd_now >= 1)
      cWnd_now <= cWnd_now - 1 ;
    else
      cWnd_now <= cWnd_now;
  end
  else if (state == SM_Begin_ST && cWnd_now < cWnd_size)
    cWnd_now <= cWnd_now + 1 ;
  else
    cWnd_now <= cWnd_now;
end
always @(posedge clk or negedge reset)
begin
  if (~reset)
    cnt_cWnd_en <= 48'd0 ;
  else 
    if(cWnd_en == 1)
      cnt_cWnd_en <= cnt_cWnd_en + 1;
    else
      cnt_cWnd_en <= cnt_cWnd_en;
end
endmodule
