`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/23 15:54:33
// Design Name: 
// Module Name: my_project
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


module my_project
(
    input  wire gt_rxp_in_0,
    input  wire gt_rxn_in_0,
    output wire gt_txp_out_0,
    output wire gt_txn_out_0,
    input  wire gt_rxp_in_1,
    input  wire gt_rxn_in_1,
    output wire gt_txp_out_1,
    output wire gt_txn_out_1,
    input  wire gt_rxp_in_2,
    input  wire gt_rxn_in_2,
    output wire gt_txp_out_2,
    output wire gt_txn_out_2,
    input  wire gt_rxp_in_3,
    input  wire gt_rxn_in_3,
    output wire gt_txp_out_3,
    output wire gt_txn_out_3,    
    input             sys_reset,
    input             gt_refclk_p,
    input             gt_refclk_n,
    input             SYS_CLK_P,
    input             SYS_CLK_N
);
(*mark_debug = "true"*) wire receive_data_packet;

(*mark_debug = "true"*) wire tx_clk_out_0;//tx_clk
(*mark_debug = "true"*) wire rx_core_clk_0;//rx_clk
(*mark_debug = "true"*) wire user_tx_reset_0;
(*mark_debug = "true"*) wire user_rx_reset_0;
  
(*mark_debug = "true"*) wire tx_clk_out_1;//tx_clk
(*mark_debug = "true"*) wire rx_core_clk_1;//rx_clk
(*mark_debug = "true"*) wire user_tx_reset_1;
(*mark_debug = "true"*) wire user_rx_reset_1;

(*mark_debug = "true"*) wire tx_clk_out_2;//tx_clk
(*mark_debug = "true"*) wire rx_core_clk_2;//rx_clk
(*mark_debug = "true"*) wire user_tx_reset_2;
(*mark_debug = "true"*) wire user_rx_reset_2;

(*mark_debug = "true"*) wire tx_clk_out_3;//tx_clk
(*mark_debug = "true"*) wire rx_core_clk_3;//rx_clk
(*mark_debug = "true"*) wire user_tx_reset_3;
(*mark_debug = "true"*) wire user_rx_reset_3;

(*mark_debug = "true"*) wire tx_axis_tready_0;
(*mark_debug = "true"*) wire tx_axis_tvalid_0;
(*mark_debug = "true"*) wire [63:0] tx_axis_tdata_0;
(*mark_debug = "true"*) wire tx_axis_tlast_0;
(*mark_debug = "true"*) wire [7:0] tx_axis_tkeep_0;

(*mark_debug = "true"*) wire tx_axis_tready_1;
(*mark_debug = "true"*) wire tx_axis_tvalid_1;
(*mark_debug = "true"*) wire [63:0] tx_axis_tdata_1;
(*mark_debug = "true"*) wire tx_axis_tlast_1;
(*mark_debug = "true"*) wire [7:0] tx_axis_tkeep_1;
   
(*mark_debug = "true"*) wire tx_axis_tready_2;
(*mark_debug = "true"*) wire tx_axis_tvalid_2;
(*mark_debug = "true"*) wire [63:0] tx_axis_tdata_2;
(*mark_debug = "true"*) wire tx_axis_tlast_2;
(*mark_debug = "true"*) wire [7:0] tx_axis_tkeep_2;

(*mark_debug = "true"*) wire tx_axis_tready_3;
(*mark_debug = "true"*) wire tx_axis_tvalid_3;
(*mark_debug = "true"*) wire [63:0] tx_axis_tdata_3;
(*mark_debug = "true"*) wire tx_axis_tlast_3;
(*mark_debug = "true"*) wire [7:0] tx_axis_tkeep_3;

(*mark_debug = "true"*) wire rx_axis_tvalid_0;
(*mark_debug = "true"*) wire [63:0] rx_axis_tdata_0;
(*mark_debug = "true"*) wire rx_axis_tlast_0;
(*mark_debug = "true"*) wire [7:0] rx_axis_tkeep_0;
  
(*mark_debug = "true"*) wire rx_axis_tvalid_1;
(*mark_debug = "true"*) wire [63:0] rx_axis_tdata_1;
(*mark_debug = "true"*) wire rx_axis_tlast_1;
(*mark_debug = "true"*) wire [7:0] rx_axis_tkeep_1;

(*mark_debug = "true"*) wire rx_axis_tvalid_2;
(*mark_debug = "true"*) wire [63:0] rx_axis_tdata_2;
(*mark_debug = "true"*) wire rx_axis_tlast_2;
(*mark_debug = "true"*) wire [7:0] rx_axis_tkeep_2;

(*mark_debug = "true"*) wire rx_axis_tvalid_3;
(*mark_debug = "true"*) wire [63:0] rx_axis_tdata_3;
(*mark_debug = "true"*) wire rx_axis_tlast_3;
(*mark_debug = "true"*) wire [7:0] rx_axis_tkeep_3;

(*mark_debug = "true"*) reg  [47:0] packet_frame_index_0 = 48'd0;
(*mark_debug = "true"*) reg  [31:0] wait_cnt_0 = 32'd0;
(*mark_debug = "true"*) reg  [47:0] cnt_send_number_0 = 48'd0;
(*mark_debug = "true"*) reg  [47:0] cnt_send_to_03_number_0 = 48'd0;
(*mark_debug = "true"*) reg  start_send_data_0 = 1'd0;
(*mark_debug = "true"*) reg  [47:0] cnt_receive_number_0 = 48'd0;

(*mark_debug = "true"*) reg  [47:0] packet_frame_index_1 = 48'd0;
(*mark_debug = "true"*) reg  [31:0] wait_cnt_1 = 32'd0;
(*mark_debug = "true"*) reg  [47:0] cnt_send_number_1 = 48'd0;
(*mark_debug = "true"*) reg  start_send_data_1 = 1'd0;
(*mark_debug = "true"*) reg  [47:0] cnt_receive_number_1 = 48'd0;

(*mark_debug = "true"*) reg  [47:0] packet_frame_index_2 = 48'd0;
(*mark_debug = "true"*) reg  [31:0] wait_cnt_2 = 32'd0;
(*mark_debug = "true"*) reg  [47:0] cnt_send_number_2 = 48'd0;
(*mark_debug = "true"*) reg  start_send_data_2 = 1'd0;
(*mark_debug = "true"*) reg  [47:0] cnt_receive_number_2 = 48'd0;
(*mark_debug = "true"*) reg  [47:0] cnt_receive_from_01_number_2 = 48'd0;

(*mark_debug = "true"*) reg  [47:0] packet_frame_index_3 = 48'd0;
(*mark_debug = "true"*) reg  [31:0] wait_cnt_3 = 32'd0;
(*mark_debug = "true"*) reg  [47:0] cnt_send_number_3 = 48'd0;
(*mark_debug = "true"*) reg  start_send_data_3 = 1'd0;
(*mark_debug = "true"*) reg  [47:0] cnt_receive_number_3 = 48'd0;


xxv_ethernet_0_exdes my_xxv_ethernet_0_exdes
(
  .tx_clk_out_0 (tx_clk_out_0),
  .rx_core_clk_0 (rx_core_clk_0),
  .user_tx_reset_0 (user_tx_reset_0),
  .user_rx_reset_0 (user_rx_reset_0),
 
  .tx_clk_out_1 (tx_clk_out_2),
  .rx_core_clk_1 (rx_core_clk_2),
  .user_tx_reset_1 (user_tx_reset_2),
  .user_rx_reset_1 (user_rx_reset_2),

  .tx_clk_out_2 (tx_clk_out_1),
  .rx_core_clk_2 (rx_core_clk_1),
  .user_tx_reset_2 (user_tx_reset_1),
  .user_rx_reset_2 (user_rx_reset_1),

  .tx_clk_out_3 (tx_clk_out_3),
  .rx_core_clk_3 (rx_core_clk_3),
  .user_tx_reset_3 (user_tx_reset_3),
  .user_rx_reset_3 (user_rx_reset_3),

  .tx_axis_tready_design_0 (tx_axis_tready_0),
  .tx_axis_tvalid_design_0 (tx_axis_tvalid_0),
  .tx_axis_tdata_design_0 (tx_axis_tdata_0),
  .tx_axis_tlast_design_0 (tx_axis_tlast_0),
  .tx_axis_tkeep_design_0 (tx_axis_tkeep_0),
  
  .tx_axis_tready_design_1 (tx_axis_tready_2),
  .tx_axis_tvalid_design_1 (tx_axis_tvalid_2),
  .tx_axis_tdata_design_1 (tx_axis_tdata_2),
  .tx_axis_tlast_design_1 (tx_axis_tlast_2),
  .tx_axis_tkeep_design_1 (tx_axis_tkeep_2),

  .tx_axis_tready_design_2 (tx_axis_tready_1),
  .tx_axis_tvalid_design_2 (tx_axis_tvalid_1),
  .tx_axis_tdata_design_2 (tx_axis_tdata_1),
  .tx_axis_tlast_design_2 (tx_axis_tlast_1),
  .tx_axis_tkeep_design_2 (tx_axis_tkeep_1),

  .tx_axis_tready_design_3 (tx_axis_tready_3),
  .tx_axis_tvalid_design_3 (tx_axis_tvalid_3),
  .tx_axis_tdata_design_3 (tx_axis_tdata_3),
  .tx_axis_tlast_design_3 (tx_axis_tlast_3),
  .tx_axis_tkeep_design_3 (tx_axis_tkeep_3),
  
  .rx_axis_tvalid_design_0 (rx_axis_tvalid_0),
  .rx_axis_tdata_design_0 (rx_axis_tdata_0),
  .rx_axis_tlast_design_0 (rx_axis_tlast_0),
  .rx_axis_tkeep_design_0 (rx_axis_tkeep_0),
  
  .rx_axis_tvalid_design_1 (rx_axis_tvalid_2),
  .rx_axis_tdata_design_1 (rx_axis_tdata_2),
  .rx_axis_tlast_design_1 (rx_axis_tlast_2),
  .rx_axis_tkeep_design_1 (rx_axis_tkeep_2),

  .rx_axis_tvalid_design_2 (rx_axis_tvalid_1),
  .rx_axis_tdata_design_2 (rx_axis_tdata_1),
  .rx_axis_tlast_design_2 (rx_axis_tlast_1),
  .rx_axis_tkeep_design_2 (rx_axis_tkeep_1),

  .rx_axis_tvalid_design_3 (rx_axis_tvalid_3),
  .rx_axis_tdata_design_3 (rx_axis_tdata_3),
  .rx_axis_tlast_design_3 (rx_axis_tlast_3),
  .rx_axis_tkeep_design_3 (rx_axis_tkeep_3),
  
  .gt_rxp_in_0 (gt_rxp_in_0),
  .gt_rxn_in_0 (gt_rxn_in_0),
  .gt_txp_out_0 (gt_txp_out_0),
  .gt_txn_out_0 (gt_txn_out_0),
  .gt_rxp_in_1 (gt_rxp_in_1),
  .gt_rxn_in_1 (gt_rxn_in_1),
  .gt_txp_out_1 (gt_txp_out_1),
  .gt_txn_out_1 (gt_txn_out_1),
  .gt_rxp_in_2 (gt_rxp_in_2),
  .gt_rxn_in_2 (gt_rxn_in_2),
  .gt_txp_out_2 (gt_txp_out_2),
  .gt_txn_out_2 (gt_txn_out_2),
  .gt_rxp_in_3 (gt_rxp_in_3),
  .gt_rxn_in_3 (gt_rxn_in_3),
  .gt_txp_out_3 (gt_txp_out_3),
  .gt_txn_out_3 (gt_txn_out_3),
  
  .sys_reset (sys_reset),
  .gt_refclk_p (gt_refclk_p),
  .gt_refclk_n (gt_refclk_n),
  .SYS_CLK_P (SYS_CLK_P),
  .SYS_CLK_N (SYS_CLK_N)
);

Ports1 inst_Ports0(  
.tx_clk_out_0(tx_clk_out_0),
.rx_core_clk_0(rx_core_clk_0),
.user_tx_reset_0(user_tx_reset_0),
.user_rx_reset_0(user_rx_reset_0),
.packet_frame_index(packet_frame_index_0),
.receive_data_packet(receive_data_packet),

.Ports1_tdata(tx_axis_tdata_0),
.Ports1_tkeep(tx_axis_tkeep_0),
.Ports1_tlast(tx_axis_tlast_0),
.Ports1_tvalid(tx_axis_tvalid_0),
.Ports1_tready(tx_axis_tready_0),

.Ports1_rdata(rx_axis_tdata_0),
.Ports1_rkeep(rx_axis_tkeep_0),
.Ports1_rlast(rx_axis_tlast_0),
.Ports1_rvalid(rx_axis_tvalid_0)
);
bao_cnt_debug inst_post_0_receive(     
.clk(rx_core_clk_0),
.reset(user_rx_reset_0),
.my_mac(64'h1045000802FAFBFC),
.rx_axis_fifo_tdata(rx_axis_tdata_0),
.rx_axis_fifo_tkeep(rx_axis_tkeep_0),
.rx_axis_fifo_tvalid(rx_axis_tvalid_0),
.rx_axis_fifo_tlast(rx_axis_tlast_0)
);  
bao_cnt_debug inst_post_0_send(     
.clk(tx_clk_out_0),
.reset(user_tx_reset_0),
.my_mac(64'hFDFE02FAFBFCFDFE),
.rx_axis_fifo_tdata(tx_axis_tdata_0),
.rx_axis_fifo_tkeep(tx_axis_tkeep_0),
.rx_axis_fifo_tvalid(tx_axis_tvalid_0),
.rx_axis_fifo_tlast(tx_axis_tlast_0)
);  

Ports_for_CC inst_Ports_for_CC_port_1(
.tx_clk_out_0(tx_clk_out_1),
.rx_core_clk_0(rx_core_clk_1),
.user_tx_reset_0(user_tx_reset_1),
.user_rx_reset_0(user_rx_reset_1),

//.start_wait(start_send_data_1),
.start_wait(0),
.packet_frame_index(packet_frame_index_1),
.Ports_for_CC_tdata(tx_axis_tdata_1),
.Ports_for_CC_tkeep(tx_axis_tkeep_1),
.Ports_for_CC_tlast(tx_axis_tlast_1),
.Ports_for_CC_tvalid(tx_axis_tvalid_1),
.Ports_for_CC_tready(tx_axis_tready_1),

.Ports_for_CC_rdata(rx_axis_tdata_1),
.Ports_for_CC_rkeep(rx_axis_tkeep_1),
.Ports_for_CC_rlast(rx_axis_tlast_1),
.Ports_for_CC_rvalid(rx_axis_tvalid_1)
);
send_data_five_gig inst_send_data_2(  
.clk(tx_clk_out_2),
.reset(user_tx_reset_2),
.dest_mac(48'h01FAFBFCFDFE),//dest_mac:FE_FD_FC_FB_FA_01
.src_mac(48'h03FAFBFCFDFE),//src_mac:FE_FD_FC_FB_FA_03
.tx_axis_tdata(tx_axis_tdata_2),
.tx_axis_tkeep(tx_axis_tkeep_2),
.tx_axis_tlast(tx_axis_tlast_2),
.tx_axis_tvalid(tx_axis_tvalid_2),
.tx_axis_tready(tx_axis_tready_2),
.start(start_send_data_2),
//.start(1),
.packet_frame_index(packet_frame_index_2)
);
//send_data_five_gig inst_send_data_3(  
//.clk(tx_clk_out_3),
//.reset(user_tx_reset_3),
//.dest_mac(48'h01FAFBFCFDFE),//dest_mac:FE_FD_FC_FB_FA_01
//.src_mac(48'h02FAFBFCFDFE),//src_mac:FE_FD_FC_FB_FA_02
//.tx_axis_tdata(tx_axis_tdata_3),
//.tx_axis_tkeep(tx_axis_tkeep_3),
//.tx_axis_tlast(tx_axis_tlast_3),
//.tx_axis_tvalid(tx_axis_tvalid_3),
//.tx_axis_tready(tx_axis_tready_3),
//.start(start_send_data_3),
////.start(1),
//.packet_frame_index(packet_frame_index_3)
//);

always @(posedge tx_clk_out_0 or posedge user_tx_reset_0)
begin
  if (user_tx_reset_0)
    packet_frame_index_0 <= 48'd0 ;
  else 
    if(packet_frame_index_0 == 48'hFFFFFFFFFFFF)
      packet_frame_index_0 <= 48'h000000000000 ;
    else
      packet_frame_index_0 <= packet_frame_index_0 + 1;
end
always @(posedge tx_clk_out_0 or posedge user_tx_reset_0)
begin
  if (user_tx_reset_0)
    cnt_send_number_0 <= 48'd0 ;
  else 
    if(tx_axis_tlast_0 == 1)
      cnt_send_number_0 <= cnt_send_number_0 + 1;
    else
      cnt_send_number_0 <= cnt_send_number_0;
end
always @(posedge tx_clk_out_0 or posedge user_tx_reset_0)
begin
  if (user_tx_reset_0)
    cnt_send_to_03_number_0 <= 48'd0 ;
  else 
    if(tx_axis_tdata_0 == 64'hFDFE03FAFBFCFDFE && tx_axis_tvalid_0 == 1)
      cnt_send_to_03_number_0 <= cnt_send_to_03_number_0 + 1;
    else
      cnt_send_to_03_number_0 <= cnt_send_to_03_number_0;
end
always @(posedge rx_core_clk_0 or posedge user_rx_reset_0)
begin
  if (user_rx_reset_0)
    cnt_receive_number_0 <= 48'd0 ;
  else 
    if(rx_axis_tlast_0 == 1)
      cnt_receive_number_0 <= cnt_receive_number_0 + 1;
    else
      cnt_receive_number_0 <= cnt_receive_number_0;
end



always @(posedge tx_clk_out_1 or posedge user_tx_reset_1)
begin
  if (user_tx_reset_1)
    packet_frame_index_1 <= 48'd0 ;
  else 
    if(packet_frame_index_1 == 48'hFFFFFFFFFFFF)
      packet_frame_index_1 <= 48'h000000000000 ;
    else
      packet_frame_index_1 <= packet_frame_index_1 + 1;
end
always @(posedge tx_clk_out_1 or posedge user_tx_reset_1)
begin
  if (user_tx_reset_1)
    wait_cnt_1 <= 32'd0 ;
  else 
    if(wait_cnt_1 == 32'hFFFFFFFF)
      wait_cnt_1 <= 32'hFFFFFFFF ;
    else
      wait_cnt_1 <= wait_cnt_1 + 1;
end
always @(posedge tx_clk_out_1 or posedge user_tx_reset_1)
begin
  if (user_tx_reset_1)
    cnt_send_number_1 <= 48'd0 ;
  else 
    if(tx_axis_tlast_1 == 1)
      cnt_send_number_1 <= cnt_send_number_1 + 1;
    else
      cnt_send_number_1 <= cnt_send_number_1;
end
always @(posedge rx_core_clk_1 or posedge user_rx_reset_1)
begin
  if (user_rx_reset_1)
    cnt_receive_number_1 <= 48'd0 ;
  else 
    if(rx_axis_tlast_1 == 1)
      cnt_receive_number_1 <= cnt_receive_number_1 + 1;
    else
      cnt_receive_number_1 <= cnt_receive_number_1;
end
always @(posedge tx_clk_out_1 or posedge user_tx_reset_1)
begin
  if (user_tx_reset_1)
    start_send_data_1 <= 0 ;
  else 
    if(wait_cnt_1 < 32'hFFFF00FF || receive_data_packet == 0)
      start_send_data_1 <= 0;
    else
      start_send_data_1 <= 1;
end


always @(posedge tx_clk_out_2 or posedge user_tx_reset_2)
begin
  if (user_tx_reset_2)
    packet_frame_index_2 <= 48'd0 ;
  else 
    if(packet_frame_index_2 == 48'hFFFFFFFFFFFF)
      packet_frame_index_2 <= 48'h000000000000 ;
    else
      packet_frame_index_2 <= packet_frame_index_2 + 1;
end
always @(posedge tx_clk_out_2 or posedge user_tx_reset_2)
begin
  if (user_tx_reset_2)
    wait_cnt_2 <= 32'd0 ;
  else 
    if(wait_cnt_2 == 32'hFFFFFFFF)
      wait_cnt_2 <= 32'hFFFFFFFF ;
    else
      wait_cnt_2 <= wait_cnt_2 + 1;
end
always @(posedge tx_clk_out_2 or posedge user_tx_reset_2)
begin
  if (user_tx_reset_2)
    cnt_send_number_2 <= 48'd0 ;
  else 
    if(tx_axis_tlast_2 == 1 && cnt_send_number_2 < 48'h0000FFFFFFFF)
      cnt_send_number_2 <= cnt_send_number_2 + 1;
    else
      cnt_send_number_2 <= cnt_send_number_2;
end
always @(posedge rx_core_clk_2 or posedge user_rx_reset_2)
begin
  if (user_rx_reset_2)
    cnt_receive_number_2 <= 48'd0 ;
  else 
    if(rx_axis_tlast_2 == 1)
      cnt_receive_number_2 <= cnt_receive_number_2 + 1;
    else
      cnt_receive_number_2 <= cnt_receive_number_2;
end
always @(posedge rx_core_clk_2 or posedge user_rx_reset_2)
begin
  if (user_rx_reset_2)
    cnt_receive_from_01_number_2 <= 48'd0 ;
  else 
    if(rx_axis_tdata_2 == 64'hFDFE03FAFBFCFDFE && rx_axis_tvalid_2 == 1)
      cnt_receive_from_01_number_2 <= cnt_receive_from_01_number_2 + 1;
    else
      cnt_receive_from_01_number_2 <= cnt_receive_from_01_number_2;
end
always @(posedge tx_clk_out_2 or posedge user_tx_reset_2)
begin
  if (user_tx_reset_2)
    start_send_data_2 <= 0 ;
  else 
    if(wait_cnt_2 < 31'hFFFF00FF || cnt_send_number_2 > 48'h000000FFFFFF)
      start_send_data_2 <= 0;
    else
      start_send_data_2 <= 1;
end


endmodule
