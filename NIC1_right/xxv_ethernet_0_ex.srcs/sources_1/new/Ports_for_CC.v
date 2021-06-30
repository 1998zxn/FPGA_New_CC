`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/15 14:22:27
// Design Name: 
// Module Name: Ports_for_CC
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


module Ports_for_CC(
    input  wire         tx_clk_out_0,
    input  wire         rx_core_clk_0,
    input  wire         user_tx_reset_0,
    input  wire         user_rx_reset_0,
    
    input  wire         start_wait,
    input  wire [47:0]  packet_frame_index,
    input  wire [47:0]  cnt_send_number_1,
    output wire [63:0]  Ports_for_CC_tdata,
    output wire [7:0]   Ports_for_CC_tkeep,
    output wire         Ports_for_CC_tlast,
    output wire         Ports_for_CC_tvalid,
    input  wire         Ports_for_CC_tready,
    input  wire [63:0]  Ports_for_CC_rdata,
    input  wire [7:0]   Ports_for_CC_rkeep,
    input  wire         Ports_for_CC_rlast,
    input  wire         Ports_for_CC_rvalid
    );

//(*mark_debug = "true"*) wire tx_clk_out_0;//tx_clk
//(*mark_debug = "true"*) wire rx_core_clk_0;//rx_clk
//(*mark_debug = "true"*) wire user_tx_reset_0;
//(*mark_debug = "true"*) wire user_rx_reset_0;
  
//(*mark_debug = "true"*) wire tx_clk_out_1;//tx_clk
//(*mark_debug = "true"*) wire rx_core_clk_1;//rx_clk
//(*mark_debug = "true"*) wire user_tx_reset_1;
//(*mark_debug = "true"*) wire user_rx_reset_1;
  
//(*mark_debug = "true"*) wire tx_axis_tready_0;
//(*mark_debug = "true"*) wire tx_axis_tvalid_0;
//(*mark_debug = "true"*) wire [63:0] tx_axis_tdata_0;
//(*mark_debug = "true"*) wire tx_axis_tlast_0;
//(*mark_debug = "true"*) wire [7:0] tx_axis_tkeep_0;

//(*mark_debug = "true"*) wire tx_axis_tready_1;
//(*mark_debug = "true"*) wire tx_axis_tvalid_1;
//(*mark_debug = "true"*) wire [63:0] tx_axis_tdata_1;
//(*mark_debug = "true"*) wire tx_axis_tlast_1;
//(*mark_debug = "true"*) wire [7:0] tx_axis_tkeep_1;
   
//(*mark_debug = "true"*) wire rx_axis_tvalid_0;
//(*mark_debug = "true"*) wire [63:0] rx_axis_tdata_0;
//(*mark_debug = "true"*) wire rx_axis_tlast_0;
//(*mark_debug = "true"*) wire [7:0] rx_axis_tkeep_0;
  
//(*mark_debug = "true"*) wire rx_axis_tvalid_1;
//(*mark_debug = "true"*) wire [63:0] rx_axis_tdata_1;
//(*mark_debug = "true"*) wire rx_axis_tlast_1;
//(*mark_debug = "true"*) wire [7:0] rx_axis_tkeep_1;
//(*mark_debug = "true"*) reg  [47:0] packet_frame_index = 48'd0;
//(*mark_debug = "true"*) reg  [47:0] wait_cnt = 48'd0;
//(*mark_debug = "true"*) reg  start_wait = 1'd0;
//(*mark_debug = "true"*) reg  [47:0] cnt_send_number = 48'd0;
(*mark_debug = "true"*) reg  start_send_data = 1'd0;



//(*mark_debug = "true"*)reg              start_send_packets = 1'd0;
(*mark_debug = "true"*)wire      [15:0] m_cWnd;
(*mark_debug = "true"*)wire      [15:0] Rate;
(*mark_debug = "true"*)wire             ECN;
(*mark_debug = "true"*)wire             cWnd_en;
(*mark_debug = "true"*)wire             Rate_en;
(*mark_debug = "true"*)wire             start_from_Rate;
(*mark_debug = "true"*)wire             start_from_CWnd;

(*mark_debug = "true"*)wire      [47:0] RTT;
(*mark_debug = "true"*)wire      [47:0] RTT_after_fifo;
(*mark_debug = "true"*)wire             RTT_fifo_wr_en;
(*mark_debug = "true"*)wire             RTT_fifo_full;
(*mark_debug = "true"*)wire             RTT_fifo_empty;
(*mark_debug = "true"*)wire             RTT_fifo_rd_en;
(*mark_debug = "true"*)wire             begin_CC;
(*mark_debug = "true"*) reg  [47:0] cnt_before_computer_number_3 = 48'd0;
(*mark_debug = "true"*) reg  [47:0] cnt_before_FIFO_number_3 = 48'd0;
RTT_Measurement inst_RTT_Measurement(  
.RTT(RTT),
.reset(user_rx_reset_0),
.clk(rx_core_clk_0),
.my_mac(64'hFDFE02FAFBFCFDFE),
.rx_tdata_out(Ports_for_CC_rdata),
.rx_tkeep_out(Ports_for_CC_rkeep),
.rx_tvalid_out(Ports_for_CC_rvalid),
.rx_tlast_out(Ports_for_CC_rlast),
.valid(RTT_fifo_wr_en),
.packet_frame_index(packet_frame_index)
);
fifo_generator_0 fifo_generator_for_RTT(     
.full(RTT_fifo_full),
.din(RTT),
.wr_en(RTT_fifo_wr_en),
.empty(RTT_fifo_empty),
.dout(RTT_after_fifo),
.rd_en(RTT_fifo_rd_en),
.wr_clk(rx_core_clk_0),
.rd_clk(tx_clk_out_0)
);  
CWnd_Rate_Computation_verilog inst_CWnd_Rate_Computation_verilog(  
.clk(tx_clk_out_0),
.reset(~user_tx_reset_0),
.RTT_fifo_empty(RTT_fifo_empty),
.RTT_fifo_rd_en(RTT_fifo_rd_en),
.newRTT_in(RTT_after_fifo),
.cnt_send_number_1(cnt_send_number_1),

.cWnd_or_Rate(ECN),
.m_cWnd(m_cWnd),
.cWnd_en(cWnd_en),
.Rate(Rate),
.Rate_en(Rate_en)
);
Rate_Control inst_Control_Rate(  
.clk(tx_clk_out_0),
.reset(~user_tx_reset_0),
.Rate(Rate),
.ECN(ECN),
.start(start_from_Rate)
);
CWnd_Control inst_Control_CWnd(  
.clk(tx_clk_out_0),
.reset(~user_tx_reset_0),
.last(Ports_for_CC_tlast),
.valid(Ports_for_CC_tvalid),
.cWnd(m_cWnd),
.cWnd_en(cWnd_en),
.ECN(ECN),
.begin_CC(begin_CC),
.start_wait(start_wait),
.start(start_from_CWnd)
);
send_data inst_send_data(  
.clk(tx_clk_out_0),
.reset(user_tx_reset_0),
.dest_mac(48'h01FAFBFCFDFE),//dest_mac:FE_FD_FC_FB_FA_01
.src_mac(48'h02FAFBFCFDFE),//src_mac:FE_FD_FC_FB_FA_02
.tx_axis_tdata(Ports_for_CC_tdata),
.tx_axis_tkeep(Ports_for_CC_tkeep),
.tx_axis_tlast(Ports_for_CC_tlast),
.tx_axis_tvalid(Ports_for_CC_tvalid),
.tx_axis_tready(Ports_for_CC_tready),
//.start(start_send_data),
.start(start_send_data),
.begin_CC(begin_CC),
.packet_frame_index(packet_frame_index)
);

bao_cnt_debug_myself inst_bao_cnt_debug(     
.clk(rx_core_clk_0),
.reset(user_rx_reset_0),
.my_mac(64'hFDFE02FAFBFCFDFE),
.rx_axis_fifo_tdata(Ports_for_CC_rdata),
.rx_axis_fifo_tkeep(Ports_for_CC_rkeep),
.rx_axis_fifo_tvalid(Ports_for_CC_rvalid),
.rx_axis_fifo_tlast(Ports_for_CC_rlast)
);  

always @(posedge tx_clk_out_0 or posedge user_tx_reset_0)
begin
  if (user_tx_reset_0)
    start_send_data <= 1'd0 ;
  else 
    if((start_from_CWnd == 1 || start_from_Rate == 1) && start_wait == 1)
      start_send_data <= 1'd1 ;
    else
      start_send_data <= 1'd0 ;
end  
always @(posedge tx_clk_out_0 or posedge user_tx_reset_0)
begin
  if (user_tx_reset_0)
    cnt_before_computer_number_3 <= 48'd0 ;
  else 
    if(RTT_fifo_rd_en == 1)
      cnt_before_computer_number_3 <= cnt_before_computer_number_3 + 1;
    else
      cnt_before_computer_number_3 <= cnt_before_computer_number_3;
end
always @(posedge rx_core_clk_0 or posedge user_rx_reset_0)
begin
  if (user_rx_reset_0)
    cnt_before_FIFO_number_3 <= 48'd0 ;
  else 
    if(RTT_fifo_wr_en == 1)
      cnt_before_FIFO_number_3 <= cnt_before_FIFO_number_3 + 1;
    else
      cnt_before_FIFO_number_3 <= cnt_before_FIFO_number_3;
end

endmodule
