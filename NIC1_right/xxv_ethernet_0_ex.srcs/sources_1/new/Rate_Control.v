`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/27 15:10:14
// Design Name: 
// Module Name: Rate_Control
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


module Rate_Control
(
 input                      clk,   
 input                      reset,  

 input      [15:0]          Rate,                //RTT_fifo not empty
 input                      ECN,                 //RTT_fifo not empty

 output     reg             start                //put rate to Rate_fifo

);

//get RTT
parameter SM_IDLE_ST                =  4'b0001;

//
parameter SM_Wait_ST                =  4'b0010;

//等待发送下一个数据包
parameter SM_Begin_ST               =  4'b0100;

//
parameter SM_Noting_ST              =  4'b1000;

(*mark_debug = "true"*) reg [3:0]     state;
reg        [3:0]                      next_state;

reg        [15:0] cnt;//
reg        [15:0] cnt_begin;//
reg        [15:0] T_pai;//
reg        [23:0] T_pai_mid;//

reg               divisor_tvalid;
reg               dividend_tvalid;
wire       [39:0] T_pai_ALL;
wire              T_pai_ALL_valid;
div_gen_0 C_T_pai(
.aclk(clk),
.s_axis_divisor_tdata(Rate),
.s_axis_divisor_tvalid(divisor_tvalid),
.s_axis_dividend_tdata(T_pai_mid),
.s_axis_dividend_tvalid(dividend_tvalid),
.m_axis_dout_tdata(T_pai_ALL),
.m_axis_dout_tvalid(T_pai_ALL_valid)
);
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
        if (ECN == 1)
          next_state <= SM_Begin_ST;
        else
          next_state <= SM_IDLE_ST;
        end
      SM_Wait_ST:begin
        if (cnt < T_pai && ECN == 1)
          next_state <= SM_Wait_ST;
        else
          next_state <= SM_IDLE_ST;
        end
      SM_Begin_ST:begin
        if (cnt_begin == 16'd40 )
          next_state <= SM_Wait_ST;
        else
          next_state <= SM_Begin_ST;
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
  else if (state == SM_Begin_ST)
    start <= 1 ;
  else
    start <= 0;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    cnt <= 40 ;
  else if (state == SM_Wait_ST)
    cnt <= cnt + 1 ;
  else
    cnt <= 40;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    cnt_begin <= 0 ;
  else if (state == SM_Begin_ST)
    cnt_begin <= cnt_begin + 1 ;
  else
    cnt_begin <= 0;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    T_pai_mid <= 0 ;
  else if (state == SM_Begin_ST)
    T_pai_mid <= (15'd10000 - Rate) * 128 ;
  else
    T_pai_mid <= T_pai_mid;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    dividend_tvalid <= 0 ;
  else if (state == SM_Begin_ST && cnt_begin == 2)
    dividend_tvalid <= 1 ;
  else
    dividend_tvalid <= 0;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    divisor_tvalid <= 0 ;
  else if (state == SM_Begin_ST && cnt_begin == 2)
    divisor_tvalid <= 1 ;
  else
    divisor_tvalid <= 0;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    T_pai <= 16'd1000 ;
  else if (state == SM_Begin_ST && T_pai_ALL_valid == 1)
    T_pai <= T_pai_ALL[31:16] ;
  else
    T_pai <= T_pai;
end

// always @(posedge clk or negedge reset)
// begin
//   if (~reset)
//     T_pai <= 0 ;
//   else if (state == SM_Begin_ST && cnt_begin == 2)
//     T_pai <= T_pai_mid / Rate ;
//   else
//     T_pai <= T_pai;
// end
endmodule
