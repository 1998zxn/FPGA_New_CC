`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/28 14:22:52
// Design Name: 
// Module Name: CWnd_Rate_Computation_verilog
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
module CWnd_Rate_Computation_verilog
(
 input                      clk,   
 input                      reset,  

 input                      RTT_fifo_empty,                //RTT_fifo not empty
 output     reg             RTT_fifo_rd_en,       //read next RTT_fifo
 input          [47:0]      newRTT_in,
 input      wire [47:0]     cnt_send_number_1,

 output     reg             cWnd_or_Rate,

 output     reg [15:0]      m_cWnd,
 output     reg             cWnd_en,

 output     reg [15:0]      Rate,
 output     reg             Rate_en

);

//get RTT
parameter SM_IDLE_ST               =  8'b0000_0001;

//Some calculations that will be done in all cases
parameter SM_A_ST                  =  8'b0000_0010;

//RTT < T_low
parameter SM_Low_ST                =  8'b0000_0100;

//RTT > T_high v 
parameter SM_High_ST               =  8'b0000_1000;

//RTT between T_low and T_high
parameter SM_Between_ST            =  8'b0001_0000;

//RTT between T_low and T_high and ECN = 0
parameter SM_ECN_0_ST              =  8'b0010_0000;

//RTT between T_low and T_high and ECN = 1
parameter SM_ECN_1_ST              =  8'b0100_0000;

//Result
parameter SM_Result_ST             =  8'b1000_0000;

(*mark_debug = "true"*)reg [7:0]     state;
reg        [7:0]                      next_state ;


reg        [47:0] RTT_rd;
//reg RTT_fifo_rd_en;

//Fixed_value
reg        [15:0] m_segmentSize;  //1024Byte
reg        [23:0] m_segmentSize_square;//1024Byte*1024Byte
reg        [15:0] m_segmentSize_Zero_four;
reg        [15:0] m_segmentSize_half;//512Byte
// reg        [15:0] adder_High_if;//0Byte
// reg        [15:0] adder_ECN_0_if;//1024Byte
// reg        [15:0] adder_ECN_1_if;//0Byte


reg        [15:0] cWnd_min;
reg        [7:0]  T_low;            //32us = 8'd32
reg        [7:0]  T_high;           //200us = 8'd200
reg        [7:0]  T_high_low;       //T_high - T_low
(*mark_debug = "true"*)wire       [15:0] rand3;  
//Some important data
(*mark_debug = "true"*)reg        [15:0] newRTT;//Obtained by RTT_rd after a series of calculations
(*mark_debug = "true"*)reg        [15:0] newRTT_max;//Obtained by RTT_rd after a series of calculations
(*mark_debug = "true"*)reg        [15:0] newRTT_min;//Obtained by RTT_rd after a series of calculations
(*mark_debug = "true"*)reg        [9:0] adder;
(*mark_debug = "true"*)reg        [15:0] ECN_tmp;


//reg signed [15:0] m_cWnd;
(*mark_debug = "true"*)reg        [15:0] m_cWnd_now = 16'd1024;
reg        [15:0] m_cWnd_Low;
reg        [15:0] m_cWnd_High;
reg        [15:0] m_cWnd_ECN_0;
reg        [15:0] m_cWnd_ECN_1;

reg        [3:0]  method;
reg        [7:0]  cnt_A;
reg        [7:0]  cnt_Low;
reg        [7:0]  cnt_High;
reg        [7:0]  cnt_Between;
reg        [7:0]  cnt_ECN_0;
reg        [7:0]  cnt_ECN_1;
reg        [7:0]  cnt_Result;

(*mark_debug = "true"*)reg        [15:0] adder_Low;
(*mark_debug = "true"*)reg        [15:0] adder_High;
(*mark_debug = "true"*)reg        [15:0] adder_ECN_0;
(*mark_debug = "true"*)reg        [15:0] adder_ECN_1;

reg               divisor_tvalid_Low;
reg               dividend_tvalid_Low;
reg               divisor_tvalid_ECN_0;
reg               dividend_tvalid_ECN_0;
reg               divisor_tvalid_Rate;
reg               dividend_tvalid_Rate;
wire       [39:0] adder_Low_ALL;
wire              adder_Low_ALL_valid;
wire       [39:0] adder_ECN_0_ALL;
wire              adder_ECN_0_ALL_valid;
wire       [39:0] Rate_ALL;
wire              Rate_ALL_valid;
(*mark_debug = "true"*)reg        [23:0] Rate_mid;
(*mark_debug = "true"*)reg        [23:0] cul_new_RTT;
(*mark_debug = "true"*)reg        [15:0] cul_new_RTT2;
blk_mem_gen_0 ram(
.clka(clk),
.addra(adder),
.dina(16'd0),
.douta(rand3),
.wea(0)
);
div_gen_0 C_adder_Low(
.aclk(clk),
.s_axis_divisor_tdata(m_cWnd_now),
.s_axis_divisor_tvalid(divisor_tvalid_Low),
.s_axis_dividend_tdata(m_segmentSize_square),
.s_axis_dividend_tvalid(dividend_tvalid_Low),
.m_axis_dout_tdata(adder_Low_ALL),
.m_axis_dout_tvalid(adder_Low_ALL_valid)
);
div_gen_0 C_adder_ECN_0(
.aclk(clk),
.s_axis_divisor_tdata(m_cWnd_now),
.s_axis_divisor_tvalid(divisor_tvalid_ECN_0),
.s_axis_dividend_tdata(m_segmentSize_square),
.s_axis_dividend_tvalid(dividend_tvalid_ECN_0),
.m_axis_dout_tdata(adder_ECN_0_ALL),
.m_axis_dout_tvalid(adder_ECN_0_ALL_valid)
);
div_gen_0 C_Rate(
.aclk(clk),
.s_axis_divisor_tdata(newRTT),
.s_axis_divisor_tvalid(divisor_tvalid_Rate),
.s_axis_dividend_tdata(Rate_mid),
.s_axis_dividend_tvalid(dividend_tvalid_Rate),
.m_axis_dout_tdata(Rate_ALL),
.m_axis_dout_tvalid(Rate_ALL_valid)
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
        if (RTT_fifo_empty == 0)
          next_state <= SM_A_ST;
        else
          next_state <= SM_IDLE_ST;
        end
      SM_A_ST:begin
        if (cnt_A >= 8'd4)
        begin
          if (newRTT < T_low )
            next_state <= SM_Low_ST;
          else if (newRTT > T_high )
            next_state <= SM_High_ST;
          else
            next_state <= SM_Between_ST;
        end
        else
          next_state <= SM_A_ST;
        end
      SM_Low_ST:
        if(cnt_Low >= 8'd32)
          next_state <= SM_Result_ST;
        else
          next_state <= SM_Low_ST;
      SM_High_ST:
        if(cnt_High >= 8'd2)
          next_state <= SM_Result_ST;
        else
          next_state <= SM_High_ST;
      SM_Between_ST:
        if(cnt_Between >= 8'd20)
        begin
          if (newRTT < ECN_tmp)
            next_state <= SM_ECN_0_ST;
          else
            next_state <= SM_ECN_1_ST;
        end
        else
          next_state <= SM_Between_ST;
      SM_ECN_0_ST:
        if(cnt_ECN_0 >= 8'd32)
          next_state <= SM_Result_ST;
        else
          next_state <= SM_ECN_0_ST;
      SM_ECN_1_ST:
        if(cnt_ECN_1 >= 8'd2)
          next_state <= SM_Result_ST;
        else
          next_state <= SM_ECN_1_ST;
      SM_Result_ST:
        if(cnt_Result >= 8'd33)
          next_state <= SM_IDLE_ST;
        else
          next_state <= SM_Result_ST;
      default: 
        next_state <= SM_IDLE_ST;
    endcase
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    cnt_Result <= 8'd0 ;
  else if (state == SM_Result_ST )
    cnt_Result <= cnt_Result + 1 ;
  else
    cnt_Result <= 8'd0 ;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    m_cWnd_now <= 16'd1024 ;
  else if (state == SM_Result_ST )
  begin
    if(method == 4'b0001)
      m_cWnd_now <= m_cWnd_Low ;
    else if(method == 4'b0010)
      m_cWnd_now <= m_cWnd_High ;
    else if(method == 4'b0100)
      m_cWnd_now <= m_cWnd_ECN_0 ;
    else if(method == 4'b1000)
      m_cWnd_now <= m_cWnd_ECN_1 ;
    else
      m_cWnd_now <= m_cWnd_now;
  end
  else
    m_cWnd_now <= m_cWnd_now;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    cWnd_or_Rate <= 1 ;
  else if (cnt_send_number_1 == 48'h000000050000)
    cWnd_or_Rate <= 0 ;
  else if (state == SM_Result_ST )
  begin
    if(m_cWnd_now < 16'd1024)
      cWnd_or_Rate <= 1 ;
    else
      cWnd_or_Rate <= 0 ;
  end
  else
    cWnd_or_Rate <= cWnd_or_Rate;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    cWnd_en <= 0 ;
  else if (state == SM_Result_ST )
  begin
    if(cnt_Result == 10)
      cWnd_en <= 1 ;
    else
      cWnd_en <= 0 ;
  end
  else
    cWnd_en <= 0;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    Rate_mid <= 24'd100 ;
  else if (state == SM_Result_ST )
  begin
    if(m_cWnd_now < 16'd1024 && cnt_Result == 1)
      Rate_mid <= m_cWnd_now / 125  ;
    else
      Rate_mid <= Rate_mid ;
  end
  else
    Rate_mid <= Rate_mid;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    dividend_tvalid_Rate <= 0 ;
  else if (state == SM_Result_ST && cnt_Result == 2)
    dividend_tvalid_Rate <= 1 ;
  else
    dividend_tvalid_Rate <= 0;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    divisor_tvalid_Rate <= 0 ;
  else if (state == SM_Result_ST && cnt_Result == 2)
    divisor_tvalid_Rate <= 1 ;
  else
    divisor_tvalid_Rate <= 0;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    Rate <= 24'd100 ;
  else if (state == SM_Result_ST )
  begin
    if(m_cWnd_now < 16'd1024 && Rate_ALL_valid == 1)
      Rate <= Rate_ALL[31:16] ;
    else
      Rate <= 24'd100 ;
  end
  else
    Rate <= 24'd100;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    Rate_en <= 0 ;
  else if (state == SM_Result_ST )
  begin
    if(m_cWnd_now < 16'd1024 && cnt_Result == 32)
      Rate_en <= 1 ;
    else
      Rate_en <= 0 ;
  end
  else
    Rate_en <= 0;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    m_cWnd <= 32'd1024 ;
  else if (state == SM_Result_ST )
  begin
    if(method == 4'b0001)
      m_cWnd <= m_cWnd_Low ;
    else if(method == 4'b0010)
      m_cWnd <= m_cWnd_High ;
    else if(method == 4'b0100)
      m_cWnd <= m_cWnd_ECN_0 ;
    else if(method == 4'b1000)
      m_cWnd <= m_cWnd_ECN_1 ;
  end
  else
    m_cWnd <= m_cWnd;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    RTT_fifo_rd_en <= 0 ;
  else if (state == SM_IDLE_ST )
  begin
    if (RTT_fifo_empty == 0)
      RTT_fifo_rd_en <= 1 ;
    else
      RTT_fifo_rd_en <= 0 ;
  end
  else
    RTT_fifo_rd_en <= 0;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    cnt_A <= 8'd0 ;
  else if (state == SM_A_ST )
    cnt_A <= cnt_A + 1 ;
  else
    cnt_A <= 8'd0 ;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    RTT_rd <= 48'd0 ;
  else if (state == SM_A_ST && cnt_A == 0)
    RTT_rd <= newRTT_in;
  else
    RTT_rd <= RTT_rd;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    cul_new_RTT <= 24'd0 ;
  else if (state == SM_A_ST )
    cul_new_RTT <= RTT_rd[23:0] * 4;///////////different
  else
    cul_new_RTT <= cul_new_RTT;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    cul_new_RTT2 <= 16'd0 ;
  else if (state == SM_A_ST )
    cul_new_RTT2 <= cul_new_RTT / 5;
  else
    cul_new_RTT2 <= cul_new_RTT2;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    newRTT <= 16'd0 ;
  else if (state == SM_A_ST )
    newRTT <= cul_new_RTT2 / 125;
  else
    newRTT <= newRTT;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    newRTT_max <= 16'd0 ;
  else if (state == SM_Result_ST && newRTT_max < newRTT)
    newRTT_max <= newRTT;
  else
    newRTT_max <= newRTT_max;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    newRTT_min <= 16'd0 ;
  else if (state == SM_Result_ST && newRTT_min > newRTT)
    newRTT_min <= newRTT;
  else
    newRTT_min <= newRTT_min;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    cnt_Low <= 8'd0 ;
  else if (state == SM_Low_ST )
    cnt_Low <= cnt_Low + 1 ;
  else
    cnt_Low <= 8'd0 ;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    dividend_tvalid_Low <= 0 ;
  else if (state == SM_Low_ST && cnt_Low == 0)
    dividend_tvalid_Low <= 1 ;
  else
    dividend_tvalid_Low <= 0;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    divisor_tvalid_Low <= 0 ;
  else if (state == SM_Low_ST && cnt_Low == 0)
    divisor_tvalid_Low <= 1 ;
  else
    divisor_tvalid_Low <= 0;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    adder_Low <= 16'd0 ;
  else if (state == SM_Low_ST && adder_Low_ALL_valid == 1)
    adder_Low <= adder_Low_ALL[31:16] ;
  else
    adder_Low <= adder_Low;
end


always @(posedge clk or negedge reset)
begin
  if (~reset)
    m_cWnd_Low <= 16'd0 ;
  else if (state == SM_Low_ST && cnt_Low == 31)
  begin
    if (m_cWnd_now < m_segmentSize)
      m_cWnd_Low <= m_cWnd_now + m_segmentSize_Zero_four ;
    else
      m_cWnd_Low <= m_cWnd_now + adder_Low ;
  end
  else
    m_cWnd_Low <= m_cWnd_Low;
end
 
always @(posedge clk or negedge reset)
begin
  if (~reset)
    cnt_High <= 8'd0 ;
  else if (state == SM_High_ST )
    cnt_High <= cnt_High + 1 ;
  else
    cnt_High <= 8'd0 ;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    adder_High <= 16'd0 ;
  else if (state == SM_High_ST && cnt_High == 0)
  begin
    if (m_cWnd_now < m_segmentSize)
      adder_High <= m_cWnd_now / 5;
    else
      adder_High <= m_segmentSize_half;
  end
  else
    adder_High <= adder_High;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    m_cWnd_High <= 16'd0 ;
  else if (state == SM_High_ST && cnt_High == 1)
  begin
    if (m_cWnd_now > adder_High + cWnd_min)
    begin
      if (adder_High > 1)
        m_cWnd_High <= m_cWnd_now - adder_High;
      else
        m_cWnd_High <= m_cWnd_now - 1;
    end
    else
      m_cWnd_High <= cWnd_min;
  end
  else
    m_cWnd_High <= m_cWnd_High;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    cnt_Between <= 8'd0 ;
  else if (state == SM_Between_ST )
    cnt_Between <= cnt_Between + 1 ;
  else
    cnt_Between <= 8'd0 ;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    ECN_tmp <= 16'd0 ;
  else if (state == SM_Between_ST && cnt_Between == 1)
    ECN_tmp <= T_low + T_high_low * rand3 / 1024 ;
  else
    ECN_tmp <= ECN_tmp ;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    cnt_ECN_0 <= 8'd0 ;
  else if (state == SM_ECN_0_ST )
    cnt_ECN_0 <= cnt_ECN_0 + 1 ;
  else
    cnt_ECN_0 <= 8'd0 ;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    dividend_tvalid_ECN_0 <= 0 ;
  else if (state == SM_ECN_0_ST && cnt_ECN_0 == 0)
    dividend_tvalid_ECN_0 <= 1 ;
  else
    dividend_tvalid_ECN_0 <= 0;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    divisor_tvalid_ECN_0 <= 0 ;
  else if (state == SM_ECN_0_ST && cnt_ECN_0 == 0)
    divisor_tvalid_ECN_0 <= 1 ;
  else
    divisor_tvalid_ECN_0 <= 0;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    adder_ECN_0 <= 16'd0 ;
  else if (state == SM_ECN_0_ST && adder_ECN_0_ALL_valid == 1)
    adder_ECN_0 <= adder_ECN_0_ALL[31:16] ;
  else
    adder_ECN_0 <= adder_ECN_0;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    m_cWnd_ECN_0 <= 16'd0 ;
  else if (state == SM_ECN_0_ST && cnt_ECN_0 == 31)
  begin
    if (m_cWnd_now < m_segmentSize)
      m_cWnd_ECN_0 <= m_cWnd_now + m_segmentSize_Zero_four ;
    else
      m_cWnd_ECN_0 <= m_cWnd_now + adder_ECN_0 ;
  end
  else
    m_cWnd_ECN_0 <= m_cWnd_ECN_0;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    cnt_ECN_1 <= 8'd0 ;
  else if (state == SM_ECN_1_ST )
    cnt_ECN_1 <= cnt_ECN_1 + 1 ;
  else
    cnt_ECN_1 <= 8'd0 ;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    adder_ECN_1 <= 16'd0 ;
  else if (state == SM_ECN_1_ST && cnt_ECN_1 == 0)
  begin
    if (m_cWnd_now < m_segmentSize)
      adder_ECN_1 <= m_cWnd_now / 5;
    else
      adder_ECN_1 <= m_segmentSize_half;
  end
  else
    adder_ECN_1 <= adder_ECN_1;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    m_cWnd_ECN_1 <= 16'd0 ;
  else if (state == SM_ECN_1_ST && cnt_ECN_1 == 1)
  begin
    if (m_cWnd_now > adder_ECN_1 + cWnd_min)
    begin
      if (adder_ECN_1 > 1)
        m_cWnd_ECN_1 <= m_cWnd_now - adder_ECN_1;
      else
        m_cWnd_ECN_1 <= m_cWnd_now - 1;
    end
    else
      m_cWnd_ECN_1 <= cWnd_min;
  end
  else
    m_cWnd_ECN_1 <= m_cWnd_ECN_1;
end

always @(posedge clk or negedge reset)
begin
  if (~reset)
    method <= 4'b0000 ;
  else if (state == SM_A_ST )
  begin
    if (newRTT < T_low )
      method <= 4'b0001;
    else if (newRTT > T_high )
      method <= 4'b0010 ;
    else
      method <= 4'b0000 ;
  end
  else if (state == SM_Between_ST )
  begin
    if (newRTT < ECN_tmp)
      method <= 4'b0100;
    else
      method <= 4'b1000 ;
  end
  else
    method <= method ;
end





//Fixed_value
always @(posedge clk or negedge reset)
begin
  if (~reset)
    T_low <= 8'd32 ;
  else 
    T_low <= 8'd32 ;
end
always @(posedge clk or negedge reset)
begin
  if (~reset)
    T_high <= 8'd200 ;
  else 
    T_high <= 8'd200 ;
end
always @(posedge clk or negedge reset)
begin
  if (~reset)
    T_high_low <= 8'd168 ;
  else 
    T_high_low <= 8'd168 ;
end
always @(posedge clk or negedge reset)
begin
  if (~reset)
    m_segmentSize <= 16'd1024 ;
  else 
    m_segmentSize <= 16'd1024 ;
end
always @(posedge clk or negedge reset)
begin
  if (~reset)
    m_segmentSize_half <= 16'd512 ;
  else 
    m_segmentSize_half <= 16'd512 ;
end
always @(posedge clk or negedge reset)
begin
  if (~reset)
    m_segmentSize_square <= 1 << 20 ;
  else 
    m_segmentSize_square <= 1 << 20 ;
end
always @(posedge clk or negedge reset)
begin
  if (~reset)
    m_segmentSize_Zero_four <= 16'd410 ;
  else 
    m_segmentSize_Zero_four <= 16'd410 ;
end
always @(posedge clk or negedge reset)
begin
  if (~reset)
    cWnd_min <= 16'd1 ;
  else 
    cWnd_min <= 16'd1 ;
end
always @(posedge clk or negedge reset)
begin
  if (~reset)
    adder <= 10'd0 ;
  else 
    if(adder == 10'd1023)
      adder <= 0 ;
    else
      adder <= adder + 1 ;
end

//always @(posedge clk or negedge reset)
//begin
//  if (~reset)
//    rand <= 16'd0 ;
//  else 
//    rand <= {$random} %1024 ;
//end
//always @(posedge clk or negedge reset)
//begin
//  if (~reset)
//    rand2 <= 16'd0 ;
//  else 
//    rand2<={ $random }%5;
//end
// always @(posedge clk or negedge reset)
// begin
//   if (~reset)
//     rand3 <= 16'd0 ;
//   else 
//     rand3 <= ram[adder];
// end
endmodule
