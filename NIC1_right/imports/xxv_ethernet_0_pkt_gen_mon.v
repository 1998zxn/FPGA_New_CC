// ------------------------------------------------------------------------------
//   (c) Copyright 2020-2021 Xilinx, Inc. All rights reserved.
// 
//   This file contains confidential and proprietary information
//   of Xilinx, Inc. and is protected under U.S. and
//   international copyright and other intellectual property
//   laws.
// 
//   DISCLAIMER
//   This disclaimer is not a license and does not grant any
//   rights to the materials distributed herewith. Except as
//   otherwise provided in a valid license issued to you by
//   Xilinx, and to the maximum extent permitted by applicable
//   law: (1) THESE MATERIALS ARE MADE AVAILABLE \"AS IS\" AND
//   WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//   AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//   BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//   INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//   (2) Xilinx shall not be liable (whether in contract or tort,
//   including negligence, or under any other theory of
//   liability) for any loss or damage of any kind or nature
//   related to, arising under or in connection with these
//   materials, including for any direct, or any indirect,
//   special, incidental, or consequential loss or damage
//   (including loss of data, profits, goodwill, or any type of
//   loss or damage suffered as a result of any action brought
//   by a third party) even if such damage or loss was
//   reasonably foreseeable or Xilinx had been advised of the
//   possibility of the same.
// 
//   CRITICAL APPLICATIONS
//   Xilinx products are not designed or intended to be fail-
//   safe, or for use in any application requiring fail-safe
//   performance, such as life-support or safety devices or
//   systems, Class III medical devices, nuclear facilities,
//   applications related to the deployment of airbags, or any
//   other applications that could lead to death, personal
//   injury, or severe property or environmental damage
//   (individually and collectively, \"Critical
//   Applications\"). Customer assumes the sole risk and
//   liability of any use of Xilinx products in Critical
//   Applications, subject only to applicable laws and
//   regulations governing limitations on product liability.
// 
//   THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//   PART OF THIS FILE AT ALL TIMES.
//
// 
//
//       Owner:          
//       Revision:       $Id: $
//                       $Author: $
//                       $DateTime: $
//                       $Change: $
//       Description:
//
// 
////------------------------------------------------------------------------------

`timescale 1fs/1fs
(* DowngradeIPIdentifiedWarnings="yes" *)
////module lbus_if
module xxv_ethernet_0_pkt_gen_mon
(
  input                      gen_clk,//tx_clk
  input                      mon_clk,//rx_clk
  input                      dclk,
  input                      sys_reset,
  // input                      send_continuous_pkts, 
  // input wire                 restart_tx_rx,
  
  input  wire [16:0]    gt_dmonitorout,
  input  wire [0:0]    gt_eyescandataerror,
  output reg  [0:0]    gt_eyescanreset,
  output reg  [0:0]    gt_eyescantrigger,
  output reg  [15:0]    gt_pcsrsvdin,
  output reg  [0:0]    gt_rxbufreset,
  input  wire [2:0]    gt_rxbufstatus,
  output reg  [0:0]    gt_rxcdrhold,
  output reg  [0:0]    gt_rxcommadeten,
  output reg  [0:0]    gt_rxdfeagchold,
  output reg  [0:0]    gt_rxdfelpmreset,
  output reg  [0:0]    gt_rxlatclk,
  output reg  [0:0]    gt_rxlpmen,
  output reg  [0:0]    gt_rxpcsreset,
  output reg  [0:0]    gt_rxpmareset,
  output reg  [0:0]    gt_rxpolarity,
  output reg  [0:0]    gt_rxprbscntreset,
  input  wire [0:0]    gt_rxprbserr,
  output reg  [3:0]    gt_rxprbssel,
  output reg  [2:0]    gt_rxrate,
  output reg  [0:0]    gt_rxslide_in,
  input  wire [1:0]    gt_rxstartofseq,
  input  wire [1:0]    gt_txbufstatus,
  output reg  [0:0]    gt_txinhibit,
  output reg  [0:0]    gt_txlatclk,
  output reg  [6:0]    gt_txmaincursor,
  output reg  [0:0]    gt_txpcsreset,
  output reg  [0:0]    gt_txpmareset,
  output reg  [0:0]    gt_txpolarity,
  output reg  [4:0]    gt_txpostcursor,
  output reg  [0:0]    gt_txprbsforceerr,
  output reg  [0:0]    gt_txelecidle,
  output reg  [3:0]    gt_txprbssel,
  output reg  [4:0]    gt_txprecursor,
  output reg  [3:0] gt_txdiffctrl,
  output reg  gtwiz_reset_tx_datapath, 
  output reg  gtwiz_reset_rx_datapath, 
  input  wire [15:0]    gt_drpdo,
  input  wire [0:0]    gt_drprdy,
  output reg  [0:0]    gt_drpen,
  output reg  [0:0]    gt_drpwe,
  output reg  [9:0]    gt_drpaddr,
  output reg  [15:0]    gt_drpdi,



//// RX Signals
  output wire         rx_reset,
  input  wire         user_rx_reset,
// //// RX LBUS Signals
//   input  wire rx_axis_tvalid,
//   input  wire [63:0] rx_axis_tdata,
//   input  wire rx_axis_tlast,
//   input  wire [7:0] rx_axis_tkeep,
//   input  wire rx_axis_tuser,
//   // input  wire [55:0] rx_preambleout,

//   output reg  rx_axis_tvalid_design,
//   output reg  [63:0] rx_axis_tdata_design,
//   output reg  rx_axis_tlast_design,
//   output reg  [7:0] rx_axis_tkeep_design,
//// RX Control Signals
  output wire ctl_rx_test_pattern,
  output wire ctl_rx_test_pattern_enable,
  output wire ctl_rx_data_pattern_select,
  output wire ctl_rx_enable,
  output wire ctl_rx_delete_fcs,
  output wire ctl_rx_ignore_fcs,
  output wire [14:0] ctl_rx_max_packet_len,
  output wire [7:0] ctl_rx_min_packet_len,
  output wire ctl_rx_custom_preamble_enable,
  output wire ctl_rx_check_sfd,
  output wire ctl_rx_check_preamble,
  output wire ctl_rx_process_lfi,
  output wire ctl_rx_force_resync,


//// RX Stats Signals
  input  wire stat_rx_block_lock,
  // input  wire stat_rx_framing_err_valid,
  // input  wire stat_rx_framing_err,
  // input  wire stat_rx_hi_ber,
  // input  wire stat_rx_valid_ctrl_code,
  // input  wire stat_rx_bad_code,
  // input  wire [1:0] stat_rx_total_packets,
  // input  wire stat_rx_total_good_packets,
  // input  wire [3:0] stat_rx_total_bytes,
  // input  wire [13:0] stat_rx_total_good_bytes,
  // input  wire stat_rx_packet_small,
  // input  wire stat_rx_jabber,
  // input  wire stat_rx_packet_large,
  // input  wire stat_rx_oversize,
  // input  wire stat_rx_undersize,
  // input  wire stat_rx_toolong,
  // input  wire stat_rx_fragment,
  // input  wire stat_rx_packet_64_bytes,
  // input  wire stat_rx_packet_65_127_bytes,
  // input  wire stat_rx_packet_128_255_bytes,
  // input  wire stat_rx_packet_256_511_bytes,
  // input  wire stat_rx_packet_512_1023_bytes,
  // input  wire stat_rx_packet_1024_1518_bytes,
  // input  wire stat_rx_packet_1519_1522_bytes,
  // input  wire stat_rx_packet_1523_1548_bytes,
  // input  wire [1:0] stat_rx_bad_fcs,
  // input  wire stat_rx_packet_bad_fcs,
  // input  wire [1:0] stat_rx_stomped_fcs,
  // input  wire stat_rx_packet_1549_2047_bytes,
  // input  wire stat_rx_packet_2048_4095_bytes,
  // input  wire stat_rx_packet_4096_8191_bytes,
  // input  wire stat_rx_packet_8192_9215_bytes,
  // input  wire stat_rx_unicast,
  // input  wire stat_rx_multicast,
  // input  wire stat_rx_broadcast,
  // input  wire stat_rx_vlan,
  // input  wire stat_rx_inrangeerr,
  // input  wire stat_rx_bad_preamble,
  // input  wire stat_rx_bad_sfd,
  // input  wire stat_rx_got_signal_os,
  // input  wire stat_rx_test_pattern_mismatch,
  // input  wire stat_rx_truncated,
  // input  wire stat_rx_local_fault,
  // input  wire stat_rx_remote_fault,
  // input  wire stat_rx_internal_local_fault,
  // input  wire stat_rx_received_local_fault,



//// TX Signals
  output wire         tx_reset,
  input  wire         user_tx_reset,

//// TX LBUS Signals
  // input  wire tx_axis_tready,
  // output reg  tx_axis_tvalid,
  // output reg  [63:0] tx_axis_tdata,
  // output reg  tx_axis_tlast,
  // output reg  [7:0] tx_axis_tkeep,
  // output reg  tx_axis_tuser,//给0就可以了
  // input  wire tx_unfout,
  output wire [55:0] tx_preamblein,

  // output reg  tx_axis_tready_design,
  // input  wire tx_axis_tvalid_design,
  // input  wire [63:0] tx_axis_tdata_design,
  // input  wire tx_axis_tlast_design,
  // input  wire [7:0] tx_axis_tkeep_design,
//// TX Control Signals
  output wire ctl_tx_test_pattern,
  output wire ctl_tx_test_pattern_enable,
  output wire ctl_tx_test_pattern_select,
  output wire ctl_tx_data_pattern_select,
  output wire [57:0] ctl_tx_test_pattern_seed_a,
  output wire [57:0] ctl_tx_test_pattern_seed_b,
  output wire ctl_tx_enable,
  output wire ctl_tx_fcs_ins_enable,
  output wire [3:0] ctl_tx_ipg_value,
  output wire ctl_tx_send_lfi,
  output wire ctl_tx_send_rfi,
  output wire ctl_tx_send_idle,
  output wire ctl_tx_custom_preamble_enable,
  output wire ctl_tx_ignore_fcs,



//// TX Stats Signals
  // input  wire stat_tx_total_packets,
  // input  wire [3:0] stat_tx_total_bytes,
  // input  wire stat_tx_total_good_packets,
  // input  wire [13:0] stat_tx_total_good_bytes,
  // input  wire stat_tx_packet_64_bytes,
  // input  wire stat_tx_packet_65_127_bytes,
  // input  wire stat_tx_packet_128_255_bytes,
  // input  wire stat_tx_packet_256_511_bytes,
  // input  wire stat_tx_packet_512_1023_bytes,
  // input  wire stat_tx_packet_1024_1518_bytes,
  // input  wire stat_tx_packet_1519_1522_bytes,
  // input  wire stat_tx_packet_1523_1548_bytes,
  // input  wire stat_tx_packet_small,
  // input  wire stat_tx_packet_large,
  // input  wire stat_tx_packet_1549_2047_bytes,
  // input  wire stat_tx_packet_2048_4095_bytes,
  // input  wire stat_tx_packet_4096_8191_bytes,
  // input  wire stat_tx_packet_8192_9215_bytes,
  // input  wire stat_tx_unicast,
  // input  wire stat_tx_multicast,
  // input  wire stat_tx_broadcast,
  // input  wire stat_tx_vlan,
  // input  wire stat_tx_bad_fcs,
  // input  wire stat_tx_frame_error,
  // input  wire stat_tx_local_fault,

    // output reg  [4:0]  completion_status,
    output reg         rx_gt_locked_led,//4个周期后置1（用rx_clk）
    output reg         rx_block_lock_led//4个周期后赋值stat_rx_block_lock
   );

  parameter MIN_LENGTH     = 30;
  wire       rx_block_lock;
  reg        rx_gt_locked_led_1d;
  reg        rx_gt_locked_led_2d;
  reg        rx_gt_locked_led_3d;
  reg        rx_block_lock_led_1d;
  reg        rx_block_lock_led_2d;
  reg        rx_block_lock_led_3d;
  
  // reg [63:0] tx_axis_tdata_save     = 64'd0;
  // reg [7:0]  tx_axis_tkeep_save     = 64'd0;
  // reg        tx_axis_tvalid_save    = 64'd0;
  // reg        tx_axis_tlast_save     = 64'd0;
  assign  tx_preamblein             = 56'h5555555;
  assign tx_reset                   = 1'b0;

  assign ctl_tx_enable              = 1'b1;
  assign ctl_tx_send_rfi            = 1'b0;
  assign ctl_tx_send_lfi            = 1'b0;
  assign ctl_tx_send_idle           = 1'b0;
  assign ctl_tx_fcs_ins_enable      = 1'b1;
  assign ctl_tx_ignore_fcs          = 1'b1;
  assign ctl_tx_test_pattern        = 1'b0;
  assign ctl_tx_test_pattern_enable = 1'b0;
  assign ctl_tx_data_pattern_select = 1'b0;
  assign ctl_tx_test_pattern_select = 1'b0;
  assign ctl_tx_test_pattern_seed_a = 58'h0;
  assign ctl_tx_test_pattern_seed_b = 58'h0;
  assign ctl_tx_custom_preamble_enable = 1'b0;
  assign ctl_tx_ipg_value           = 4'd12;

  assign rx_block_lock              = stat_rx_block_lock;
  assign rx_reset                   = 1'b0;

  assign ctl_rx_enable              = 1'b1;
  assign ctl_rx_check_preamble      = 1'b1;
  assign ctl_rx_check_sfd           = 1'b1;
  assign ctl_rx_force_resync        = 1'b0;
  assign ctl_rx_delete_fcs          = 1'b1;
  assign ctl_rx_ignore_fcs          = 1'b1;
  assign ctl_rx_process_lfi         = 1'b0;
  assign ctl_rx_test_pattern        = 1'b0;
  assign ctl_rx_test_pattern_enable = 1'b0;
  assign ctl_rx_data_pattern_select = 1'b0;
  assign ctl_rx_max_packet_len      = 15'd9600;
  assign ctl_rx_min_packet_len      = MIN_LENGTH;
  assign ctl_rx_custom_preamble_enable = 1'b0;
  // always @( posedge mon_clk )
  //   begin
  //       if ( user_rx_reset == 1'b1 )
  //       begin
  //           rx_axis_tvalid_design   <= 1'b0;
  //           rx_axis_tdata_design    <= 64'd0;
  //           rx_axis_tlast_design    <= 1'b0;
  //           rx_axis_tkeep_design    <= 8'd0;
  //       end
  //       else
  //       begin
  //           rx_axis_tvalid_design   <= rx_axis_tvalid;
  //           rx_axis_tdata_design    <= rx_axis_tdata;
  //           rx_axis_tlast_design    <= rx_axis_tlast;
  //           rx_axis_tkeep_design    <= rx_axis_tkeep;
  //       end
  //   end
  // always @( posedge gen_clk )
  //   begin
  //     if ( user_tx_reset == 1'b1 )
  //     begin
  //       tx_axis_tvalid_save          <= 1'b0;
  //       tx_axis_tdata_save           <= 64'd0;
  //       tx_axis_tlast_save           <= 1'b0;
  //       tx_axis_tkeep_save           <= 8'd0;
  //     end
  //     else
  //     begin
  //       if(tx_axis_tready == 1'b1)
  //       begin
  //         tx_axis_tvalid_save          <= tx_axis_tvalid_design;
  //         tx_axis_tdata_save           <= tx_axis_tdata_design;
  //         tx_axis_tlast_save           <= tx_axis_tlast_design;
  //         tx_axis_tkeep_save           <= tx_axis_tkeep_design;
  //       end
  //       else 
  //       begin
  //         tx_axis_tvalid_save          <= tx_axis_tvalid_save;
  //         tx_axis_tdata_save           <= tx_axis_tdata_save;
  //         tx_axis_tlast_save           <= tx_axis_tlast_save;
  //         tx_axis_tkeep_save           <= tx_axis_tkeep_save;
  //       end
  //     end
  //   end
  // always @( posedge gen_clk )
  //   begin
  //     if ( user_tx_reset == 1'b1 )
  //     begin
  //       tx_axis_tvalid          <= 1'b0;
  //       tx_axis_tdata           <= 64'd0;
  //       tx_axis_tlast           <= 1'b0;
  //       tx_axis_tkeep           <= 8'd0;
  //       tx_axis_tuser           <= 1'd0;
  //       tx_axis_tready_design   <= 1'd0;
  //     end
  //     else
  //     begin
  //       if(tx_axis_tready == 1'b1)
  //       begin
  //         tx_axis_tvalid          <= tx_axis_tvalid_save;
  //         tx_axis_tdata           <= tx_axis_tdata_save;
  //         tx_axis_tlast           <= tx_axis_tlast_save;
  //         tx_axis_tkeep           <= tx_axis_tkeep_save;
  //       end
  //       else 
  //       begin
  //         tx_axis_tvalid          <= tx_axis_tvalid;
  //         tx_axis_tdata           <= tx_axis_tdata;
  //         tx_axis_tlast           <= tx_axis_tlast;
  //         tx_axis_tkeep           <= tx_axis_tkeep;
  //       end
  //       tx_axis_tuser           <= 1'd0;
  //       tx_axis_tready_design   <= tx_axis_tready;
  //     end
  //   end
  always @( posedge mon_clk )
    begin
      if ( user_rx_reset == 1'b1 )
      begin
        rx_gt_locked_led_1d     <= 1'b0;
        rx_gt_locked_led_2d     <= 1'b0;
        rx_gt_locked_led_3d     <= 1'b0;
        rx_block_lock_led_1d    <= 1'b0;
        rx_block_lock_led_2d    <= 1'b0;
        rx_block_lock_led_3d    <= 1'b0;
      end
      else
      begin
        rx_gt_locked_led_1d     <= ~user_rx_reset;
        rx_gt_locked_led_2d     <= rx_gt_locked_led_1d;
        rx_gt_locked_led_3d     <= rx_gt_locked_led_2d;
        rx_block_lock_led_1d    <= rx_block_lock;
        rx_block_lock_led_2d    <= rx_block_lock_led_1d;
        rx_block_lock_led_3d    <= rx_block_lock_led_2d;
      end
    end
   //////////////////////////////////////////////////
    ////Assign RX LED Output ports with ASYN sys_reset
    //////////////////////////////////////////////////
    always @( posedge mon_clk, posedge sys_reset  )
    begin
        if ( sys_reset == 1'b1 )
        begin
            rx_gt_locked_led     <= 1'b0;
            rx_block_lock_led    <= 1'b0;
        end
        else
        begin
            rx_gt_locked_led     <= rx_gt_locked_led_3d;
            rx_block_lock_led    <= rx_block_lock_led_3d;
        end
    end
  always @ (posedge dclk) 
  begin
    gt_eyescanreset           <= 1'b0;
    gt_eyescantrigger         <= 1'b0;
    gt_pcsrsvdin              <= 16'h0000;
    gt_rxbufreset             <= 1'b0;
    gt_rxcdrhold              <= 1'b0;
    gt_rxcommadeten           <= 1'b0;
    gt_rxdfeagchold           <= 1'b0;
    gt_rxdfelpmreset          <= 1'b0;
    gt_rxlatclk               <= 1'b0;
    gt_rxlpmen                <= 1'b0;
    gt_rxpcsreset             <= 1'b0;
    gt_rxpmareset             <= 1'b0;
    gt_rxpolarity             <= 1'b0;
    gt_rxprbscntreset         <= 1'b0;
    gt_rxprbssel              <= 4'h0;
    gt_rxrate                 <= 3'h0;
    gt_rxslide_in             <= 1'b0;
    gt_txdiffctrl             <= 4'hC;
    gt_txinhibit              <= 1'b0;
    gt_txlatclk               <= 1'b0;
    gt_txmaincursor           <= 7'h0;
    gt_txpostcursor           <= 5'h15;
    gt_txpcsreset             <= 1'b0;
    gt_txpmareset             <= 1'b0;
    gt_txpolarity             <= 1'b0;
    gt_txprbsforceerr         <= 1'b0;
    gt_txelecidle             <= 1'b0;
    gt_txprbssel              <= 4'h0;
    gt_txprecursor            <= 5'h0;
    gtwiz_reset_tx_datapath   <= 1'b0;
    gtwiz_reset_rx_datapath   <= 1'b0;
    gt_drpaddr <=  10'b0;
    gt_drpen   <=  1'b0;
    gt_drpdi   <=  16'b0;
    gt_drpwe   <=  1'b0;
  end

endmodule