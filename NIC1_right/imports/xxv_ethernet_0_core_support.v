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
module xxv_ethernet_0_core_support
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
  output wire tx_clk_out_0,

  input  wire rx_core_clk_0,
  output wire rx_clk_out_0,
  input  wire [2:0] gt_loopback_in_0,
  output wire rxrecclkout_0,

//// RX_0 Signals
  input  wire rx_reset_0,
  output wire user_rx_reset_0,

//// RX_0 User Interface Signals

  output wire rx_axis_tvalid_0,
  output wire [63:0] rx_axis_tdata_0,
  output wire rx_axis_tlast_0,
  output wire [7:0] rx_axis_tkeep_0,
  output wire rx_axis_tuser_0,
  output wire [55:0] rx_preambleout_0,


//// RX_0 Control Signals
  input  wire ctl_rx_test_pattern_0,
  input  wire ctl_rx_test_pattern_enable_0,
  input  wire ctl_rx_data_pattern_select_0,
  input  wire ctl_rx_enable_0,
  input  wire ctl_rx_delete_fcs_0,
  input  wire ctl_rx_ignore_fcs_0,
  input  wire [14:0] ctl_rx_max_packet_len_0,
  input  wire [7:0] ctl_rx_min_packet_len_0,
  input  wire ctl_rx_custom_preamble_enable_0,
  input  wire ctl_rx_check_sfd_0,
  input  wire ctl_rx_check_preamble_0,
  input  wire ctl_rx_process_lfi_0,
  input  wire ctl_rx_force_resync_0,






//// RX_0 Stats Signals
  output wire stat_rx_block_lock_0,
  output wire stat_rx_framing_err_valid_0,
  output wire stat_rx_framing_err_0,
  output wire stat_rx_hi_ber_0,
  output wire stat_rx_valid_ctrl_code_0,
  output wire stat_rx_bad_code_0,
  output wire [1:0] stat_rx_total_packets_0,
  output wire stat_rx_total_good_packets_0,
  output wire [3:0] stat_rx_total_bytes_0,
  output wire [13:0] stat_rx_total_good_bytes_0,
  output wire stat_rx_packet_small_0,
  output wire stat_rx_jabber_0,
  output wire stat_rx_packet_large_0,
  output wire stat_rx_oversize_0,
  output wire stat_rx_undersize_0,
  output wire stat_rx_toolong_0,
  output wire stat_rx_fragment_0,
  output wire stat_rx_packet_64_bytes_0,
  output wire stat_rx_packet_65_127_bytes_0,
  output wire stat_rx_packet_128_255_bytes_0,
  output wire stat_rx_packet_256_511_bytes_0,
  output wire stat_rx_packet_512_1023_bytes_0,
  output wire stat_rx_packet_1024_1518_bytes_0,
  output wire stat_rx_packet_1519_1522_bytes_0,
  output wire stat_rx_packet_1523_1548_bytes_0,
  output wire [1:0] stat_rx_bad_fcs_0,
  output wire stat_rx_packet_bad_fcs_0,
  output wire [1:0] stat_rx_stomped_fcs_0,
  output wire stat_rx_packet_1549_2047_bytes_0,
  output wire stat_rx_packet_2048_4095_bytes_0,
  output wire stat_rx_packet_4096_8191_bytes_0,
  output wire stat_rx_packet_8192_9215_bytes_0,
  output wire stat_rx_bad_preamble_0,
  output wire stat_rx_bad_sfd_0,
  output wire stat_rx_got_signal_os_0,
  output wire stat_rx_test_pattern_mismatch_0,
  output wire stat_rx_truncated_0,
  output wire stat_rx_local_fault_0,
  output wire stat_rx_remote_fault_0,
  output wire stat_rx_internal_local_fault_0,
  output wire stat_rx_received_local_fault_0,
  output wire stat_rx_inrangeerr_0,
  
  output wire stat_rx_unicast_0,
  output wire stat_rx_multicast_0,
  output wire stat_rx_broadcast_0,
  output wire stat_rx_vlan_0,
  output wire stat_rx_status_0,

//// TX_0 Signals
  input  wire tx_reset_0,
  output wire user_tx_reset_0,

//// TX_0 User Interface Signals
  output wire tx_axis_tready_0,
  input  wire tx_axis_tvalid_0,
  input  wire [63:0] tx_axis_tdata_0,
  input  wire tx_axis_tlast_0,
  input  wire [7:0] tx_axis_tkeep_0,
  input  wire tx_axis_tuser_0,
  output wire tx_unfout_0,
  input  wire [55:0] tx_preamblein_0,


//// TX_0 Control Signals
  input  wire ctl_tx_test_pattern_0,
  input  wire ctl_tx_test_pattern_enable_0,
  input  wire ctl_tx_test_pattern_select_0,
  input  wire ctl_tx_data_pattern_select_0,
  input  wire [57:0] ctl_tx_test_pattern_seed_a_0,
  input  wire [57:0] ctl_tx_test_pattern_seed_b_0,
  input  wire ctl_tx_enable_0,
  input  wire ctl_tx_fcs_ins_enable_0,
  input  wire ctl_tx_send_lfi_0,
  input  wire ctl_tx_send_rfi_0,
  input  wire ctl_tx_send_idle_0,
  input  wire ctl_tx_custom_preamble_enable_0,
  input  wire [3:0] ctl_tx_ipg_value_0,
  input  wire ctl_tx_ignore_fcs_0,


//// TX_0 Stats Signals
  output wire stat_tx_total_packets_0,
  output wire [3:0] stat_tx_total_bytes_0,
  output wire stat_tx_total_good_packets_0,
  output wire [13:0] stat_tx_total_good_bytes_0,
  output wire stat_tx_packet_64_bytes_0,
  output wire stat_tx_packet_65_127_bytes_0,
  output wire stat_tx_packet_128_255_bytes_0,
  output wire stat_tx_packet_256_511_bytes_0,
  output wire stat_tx_packet_512_1023_bytes_0,
  output wire stat_tx_packet_1024_1518_bytes_0,
  output wire stat_tx_packet_1519_1522_bytes_0,
  output wire stat_tx_packet_1523_1548_bytes_0,
  output wire stat_tx_packet_small_0,
  output wire stat_tx_packet_large_0,
  output wire stat_tx_packet_1549_2047_bytes_0,
  output wire stat_tx_packet_2048_4095_bytes_0,
  output wire stat_tx_packet_4096_8191_bytes_0,
  output wire stat_tx_packet_8192_9215_bytes_0,
  output wire stat_tx_bad_fcs_0,
  output wire stat_tx_frame_error_0,
  output wire stat_tx_local_fault_0,
  output wire stat_tx_unicast_0,
  output wire stat_tx_multicast_0,
  output wire stat_tx_broadcast_0,
  output wire stat_tx_vlan_0,





//// GT Debug interface ports
  output wire [16:0] gt_dmonitorout_0,
  output wire [0:0] gt_eyescandataerror_0,
  input  wire [0:0] gt_eyescanreset_0,
  input  wire [0:0] gt_eyescantrigger_0,
  input  wire [15:0] gt_pcsrsvdin_0,
  input  wire [0:0] gt_rxbufreset_0,
  output wire [2:0] gt_rxbufstatus_0,
  input  wire [0:0] gt_rxcdrhold_0,
  input  wire [0:0] gt_rxcommadeten_0,
  input  wire [0:0] gt_rxdfeagchold_0,
  input  wire [0:0] gt_rxdfelpmreset_0,
  input  wire [0:0] gt_rxlatclk_0,
  input  wire [0:0] gt_rxlpmen_0,
  input  wire [0:0] gt_rxpcsreset_0,
  input  wire [0:0] gt_rxpmareset_0,
  input  wire [0:0] gt_rxpolarity_0,
  input  wire [0:0] gt_rxprbscntreset_0,
  output wire [0:0] gt_rxprbserr_0,
  input  wire [3:0] gt_rxprbssel_0,
  input  wire [2:0] gt_rxrate_0,
  input  wire [0:0] gt_rxslide_in_0,
  output wire [1:0] gt_rxstartofseq_0,
  output wire [1:0] gt_txbufstatus_0,
  input  wire [0:0] gt_txinhibit_0,
  input  wire [0:0] gt_txlatclk_0,
  input  wire [6:0] gt_txmaincursor_0,
  input  wire [0:0] gt_txpcsreset_0,
  input  wire [0:0] gt_txpmareset_0,
  input  wire [0:0] gt_txpolarity_0,
  input  wire [4:0] gt_txpostcursor_0,
  input  wire [0:0] gt_txprbsforceerr_0,
  input  wire [0:0] gt_txelecidle_0,
  input  wire [3:0] gt_txprbssel_0,
  input  wire [4:0] gt_txprecursor_0,
  input wire [3:0] gt_txdiffctrl_0,
//// GT DRP interface ports
  output wire [15:0] gt_drpdo_0,
  output wire [0:0] gt_drprdy_0,
  input  wire [0:0] gt_drpen_0,
  input  wire [0:0] gt_drpwe_0,
  input  wire [9:0] gt_drpaddr_0,
  input  wire [15:0] gt_drpdi_0,
  input wire gt_drpclk_0,
  input wire gtwiz_reset_tx_datapath_0,
  input wire gtwiz_reset_rx_datapath_0,
  output wire gtpowergood_out_0,
  input wire [2:0] txoutclksel_in_0,
  input wire [2:0] rxoutclksel_in_0,
 
  output wire tx_clk_out_1,

  input  wire rx_core_clk_1,
  output wire rx_clk_out_1,
  input  wire [2:0] gt_loopback_in_1,
  output wire rxrecclkout_1,

//// RX_1 Signals
  input  wire rx_reset_1,
  output wire user_rx_reset_1,

//// RX_1 User Interface Signals

  output wire rx_axis_tvalid_1,
  output wire [63:0] rx_axis_tdata_1,
  output wire rx_axis_tlast_1,
  output wire [7:0] rx_axis_tkeep_1,
  output wire rx_axis_tuser_1,
  output wire [55:0] rx_preambleout_1,


//// RX_1 Control Signals
  input  wire ctl_rx_test_pattern_1,
  input  wire ctl_rx_test_pattern_enable_1,
  input  wire ctl_rx_data_pattern_select_1,
  input  wire ctl_rx_enable_1,
  input  wire ctl_rx_delete_fcs_1,
  input  wire ctl_rx_ignore_fcs_1,
  input  wire [14:0] ctl_rx_max_packet_len_1,
  input  wire [7:0] ctl_rx_min_packet_len_1,
  input  wire ctl_rx_custom_preamble_enable_1,
  input  wire ctl_rx_check_sfd_1,
  input  wire ctl_rx_check_preamble_1,
  input  wire ctl_rx_process_lfi_1,
  input  wire ctl_rx_force_resync_1,






//// RX_1 Stats Signals
  output wire stat_rx_block_lock_1,
  output wire stat_rx_framing_err_valid_1,
  output wire stat_rx_framing_err_1,
  output wire stat_rx_hi_ber_1,
  output wire stat_rx_valid_ctrl_code_1,
  output wire stat_rx_bad_code_1,
  output wire [1:0] stat_rx_total_packets_1,
  output wire stat_rx_total_good_packets_1,
  output wire [3:0] stat_rx_total_bytes_1,
  output wire [13:0] stat_rx_total_good_bytes_1,
  output wire stat_rx_packet_small_1,
  output wire stat_rx_jabber_1,
  output wire stat_rx_packet_large_1,
  output wire stat_rx_oversize_1,
  output wire stat_rx_undersize_1,
  output wire stat_rx_toolong_1,
  output wire stat_rx_fragment_1,
  output wire stat_rx_packet_64_bytes_1,
  output wire stat_rx_packet_65_127_bytes_1,
  output wire stat_rx_packet_128_255_bytes_1,
  output wire stat_rx_packet_256_511_bytes_1,
  output wire stat_rx_packet_512_1023_bytes_1,
  output wire stat_rx_packet_1024_1518_bytes_1,
  output wire stat_rx_packet_1519_1522_bytes_1,
  output wire stat_rx_packet_1523_1548_bytes_1,
  output wire [1:0] stat_rx_bad_fcs_1,
  output wire stat_rx_packet_bad_fcs_1,
  output wire [1:0] stat_rx_stomped_fcs_1,
  output wire stat_rx_packet_1549_2047_bytes_1,
  output wire stat_rx_packet_2048_4095_bytes_1,
  output wire stat_rx_packet_4096_8191_bytes_1,
  output wire stat_rx_packet_8192_9215_bytes_1,
  output wire stat_rx_bad_preamble_1,
  output wire stat_rx_bad_sfd_1,
  output wire stat_rx_got_signal_os_1,
  output wire stat_rx_test_pattern_mismatch_1,
  output wire stat_rx_truncated_1,
  output wire stat_rx_local_fault_1,
  output wire stat_rx_remote_fault_1,
  output wire stat_rx_internal_local_fault_1,
  output wire stat_rx_received_local_fault_1,
  output wire stat_rx_inrangeerr_1,
  
  output wire stat_rx_unicast_1,
  output wire stat_rx_multicast_1,
  output wire stat_rx_broadcast_1,
  output wire stat_rx_vlan_1,
  output wire stat_rx_status_1,

//// TX_1 Signals
  input  wire tx_reset_1,
  output wire user_tx_reset_1,

//// TX_1 User Interface Signals
  output wire tx_axis_tready_1,
  input  wire tx_axis_tvalid_1,
  input  wire [63:0] tx_axis_tdata_1,
  input  wire tx_axis_tlast_1,
  input  wire [7:0] tx_axis_tkeep_1,
  input  wire tx_axis_tuser_1,
  output wire tx_unfout_1,
  input  wire [55:0] tx_preamblein_1,


//// TX_1 Control Signals
  input  wire ctl_tx_test_pattern_1,
  input  wire ctl_tx_test_pattern_enable_1,
  input  wire ctl_tx_test_pattern_select_1,
  input  wire ctl_tx_data_pattern_select_1,
  input  wire [57:0] ctl_tx_test_pattern_seed_a_1,
  input  wire [57:0] ctl_tx_test_pattern_seed_b_1,
  input  wire ctl_tx_enable_1,
  input  wire ctl_tx_fcs_ins_enable_1,
  input  wire ctl_tx_send_lfi_1,
  input  wire ctl_tx_send_rfi_1,
  input  wire ctl_tx_send_idle_1,
  input  wire ctl_tx_custom_preamble_enable_1,
  input  wire [3:0] ctl_tx_ipg_value_1,
  input  wire ctl_tx_ignore_fcs_1,


//// TX_1 Stats Signals
  output wire stat_tx_total_packets_1,
  output wire [3:0] stat_tx_total_bytes_1,
  output wire stat_tx_total_good_packets_1,
  output wire [13:0] stat_tx_total_good_bytes_1,
  output wire stat_tx_packet_64_bytes_1,
  output wire stat_tx_packet_65_127_bytes_1,
  output wire stat_tx_packet_128_255_bytes_1,
  output wire stat_tx_packet_256_511_bytes_1,
  output wire stat_tx_packet_512_1023_bytes_1,
  output wire stat_tx_packet_1024_1518_bytes_1,
  output wire stat_tx_packet_1519_1522_bytes_1,
  output wire stat_tx_packet_1523_1548_bytes_1,
  output wire stat_tx_packet_small_1,
  output wire stat_tx_packet_large_1,
  output wire stat_tx_packet_1549_2047_bytes_1,
  output wire stat_tx_packet_2048_4095_bytes_1,
  output wire stat_tx_packet_4096_8191_bytes_1,
  output wire stat_tx_packet_8192_9215_bytes_1,
  output wire stat_tx_bad_fcs_1,
  output wire stat_tx_frame_error_1,
  output wire stat_tx_local_fault_1,
  output wire stat_tx_unicast_1,
  output wire stat_tx_multicast_1,
  output wire stat_tx_broadcast_1,
  output wire stat_tx_vlan_1,





//// GT Debug interface ports
  output wire [16:0] gt_dmonitorout_1,
  output wire [0:0] gt_eyescandataerror_1,
  input  wire [0:0] gt_eyescanreset_1,
  input  wire [0:0] gt_eyescantrigger_1,
  input  wire [15:0] gt_pcsrsvdin_1,
  input  wire [0:0] gt_rxbufreset_1,
  output wire [2:0] gt_rxbufstatus_1,
  input  wire [0:0] gt_rxcdrhold_1,
  input  wire [0:0] gt_rxcommadeten_1,
  input  wire [0:0] gt_rxdfeagchold_1,
  input  wire [0:0] gt_rxdfelpmreset_1,
  input  wire [0:0] gt_rxlatclk_1,
  input  wire [0:0] gt_rxlpmen_1,
  input  wire [0:0] gt_rxpcsreset_1,
  input  wire [0:0] gt_rxpmareset_1,
  input  wire [0:0] gt_rxpolarity_1,
  input  wire [0:0] gt_rxprbscntreset_1,
  output wire [0:0] gt_rxprbserr_1,
  input  wire [3:0] gt_rxprbssel_1,
  input  wire [2:0] gt_rxrate_1,
  input  wire [0:0] gt_rxslide_in_1,
  output wire [1:0] gt_rxstartofseq_1,
  output wire [1:0] gt_txbufstatus_1,
  input  wire [0:0] gt_txinhibit_1,
  input  wire [0:0] gt_txlatclk_1,
  input  wire [6:0] gt_txmaincursor_1,
  input  wire [0:0] gt_txpcsreset_1,
  input  wire [0:0] gt_txpmareset_1,
  input  wire [0:0] gt_txpolarity_1,
  input  wire [4:0] gt_txpostcursor_1,
  input  wire [0:0] gt_txprbsforceerr_1,
  input  wire [0:0] gt_txelecidle_1,
  input  wire [3:0] gt_txprbssel_1,
  input  wire [4:0] gt_txprecursor_1,
  input wire [3:0] gt_txdiffctrl_1,
//// GT DRP interface ports
  output wire [15:0] gt_drpdo_1,
  output wire [0:0] gt_drprdy_1,
  input  wire [0:0] gt_drpen_1,
  input  wire [0:0] gt_drpwe_1,
  input  wire [9:0] gt_drpaddr_1,
  input  wire [15:0] gt_drpdi_1,
  input wire gt_drpclk_1,
  input wire gtwiz_reset_tx_datapath_1,
  input wire gtwiz_reset_rx_datapath_1,
  output wire gtpowergood_out_1,
  input wire [2:0] txoutclksel_in_1,
  input wire [2:0] rxoutclksel_in_1,
 
  output wire tx_clk_out_2,

  input  wire rx_core_clk_2,
  output wire rx_clk_out_2,
  input  wire [2:0] gt_loopback_in_2,
  output wire rxrecclkout_2,

//// RX_2 Signals
  input  wire rx_reset_2,
  output wire user_rx_reset_2,

//// RX_2 User Interface Signals

  output wire rx_axis_tvalid_2,
  output wire [63:0] rx_axis_tdata_2,
  output wire rx_axis_tlast_2,
  output wire [7:0] rx_axis_tkeep_2,
  output wire rx_axis_tuser_2,
  output wire [55:0] rx_preambleout_2,


//// RX_2 Control Signals
  input  wire ctl_rx_test_pattern_2,
  input  wire ctl_rx_test_pattern_enable_2,
  input  wire ctl_rx_data_pattern_select_2,
  input  wire ctl_rx_enable_2,
  input  wire ctl_rx_delete_fcs_2,
  input  wire ctl_rx_ignore_fcs_2,
  input  wire [14:0] ctl_rx_max_packet_len_2,
  input  wire [7:0] ctl_rx_min_packet_len_2,
  input  wire ctl_rx_custom_preamble_enable_2,
  input  wire ctl_rx_check_sfd_2,
  input  wire ctl_rx_check_preamble_2,
  input  wire ctl_rx_process_lfi_2,
  input  wire ctl_rx_force_resync_2,






//// RX_2 Stats Signals
  output wire stat_rx_block_lock_2,
  output wire stat_rx_framing_err_valid_2,
  output wire stat_rx_framing_err_2,
  output wire stat_rx_hi_ber_2,
  output wire stat_rx_valid_ctrl_code_2,
  output wire stat_rx_bad_code_2,
  output wire [1:0] stat_rx_total_packets_2,
  output wire stat_rx_total_good_packets_2,
  output wire [3:0] stat_rx_total_bytes_2,
  output wire [13:0] stat_rx_total_good_bytes_2,
  output wire stat_rx_packet_small_2,
  output wire stat_rx_jabber_2,
  output wire stat_rx_packet_large_2,
  output wire stat_rx_oversize_2,
  output wire stat_rx_undersize_2,
  output wire stat_rx_toolong_2,
  output wire stat_rx_fragment_2,
  output wire stat_rx_packet_64_bytes_2,
  output wire stat_rx_packet_65_127_bytes_2,
  output wire stat_rx_packet_128_255_bytes_2,
  output wire stat_rx_packet_256_511_bytes_2,
  output wire stat_rx_packet_512_1023_bytes_2,
  output wire stat_rx_packet_1024_1518_bytes_2,
  output wire stat_rx_packet_1519_1522_bytes_2,
  output wire stat_rx_packet_1523_1548_bytes_2,
  output wire [1:0] stat_rx_bad_fcs_2,
  output wire stat_rx_packet_bad_fcs_2,
  output wire [1:0] stat_rx_stomped_fcs_2,
  output wire stat_rx_packet_1549_2047_bytes_2,
  output wire stat_rx_packet_2048_4095_bytes_2,
  output wire stat_rx_packet_4096_8191_bytes_2,
  output wire stat_rx_packet_8192_9215_bytes_2,
  output wire stat_rx_bad_preamble_2,
  output wire stat_rx_bad_sfd_2,
  output wire stat_rx_got_signal_os_2,
  output wire stat_rx_test_pattern_mismatch_2,
  output wire stat_rx_truncated_2,
  output wire stat_rx_local_fault_2,
  output wire stat_rx_remote_fault_2,
  output wire stat_rx_internal_local_fault_2,
  output wire stat_rx_received_local_fault_2,
  output wire stat_rx_inrangeerr_2,
  
  output wire stat_rx_unicast_2,
  output wire stat_rx_multicast_2,
  output wire stat_rx_broadcast_2,
  output wire stat_rx_vlan_2,
  output wire stat_rx_status_2,

//// TX_2 Signals
  input  wire tx_reset_2,
  output wire user_tx_reset_2,

//// TX_2 User Interface Signals
  output wire tx_axis_tready_2,
  input  wire tx_axis_tvalid_2,
  input  wire [63:0] tx_axis_tdata_2,
  input  wire tx_axis_tlast_2,
  input  wire [7:0] tx_axis_tkeep_2,
  input  wire tx_axis_tuser_2,
  output wire tx_unfout_2,
  input  wire [55:0] tx_preamblein_2,


//// TX_2 Control Signals
  input  wire ctl_tx_test_pattern_2,
  input  wire ctl_tx_test_pattern_enable_2,
  input  wire ctl_tx_test_pattern_select_2,
  input  wire ctl_tx_data_pattern_select_2,
  input  wire [57:0] ctl_tx_test_pattern_seed_a_2,
  input  wire [57:0] ctl_tx_test_pattern_seed_b_2,
  input  wire ctl_tx_enable_2,
  input  wire ctl_tx_fcs_ins_enable_2,
  input  wire ctl_tx_send_lfi_2,
  input  wire ctl_tx_send_rfi_2,
  input  wire ctl_tx_send_idle_2,
  input  wire ctl_tx_custom_preamble_enable_2,
  input  wire [3:0] ctl_tx_ipg_value_2,
  input  wire ctl_tx_ignore_fcs_2,


//// TX_2 Stats Signals
  output wire stat_tx_total_packets_2,
  output wire [3:0] stat_tx_total_bytes_2,
  output wire stat_tx_total_good_packets_2,
  output wire [13:0] stat_tx_total_good_bytes_2,
  output wire stat_tx_packet_64_bytes_2,
  output wire stat_tx_packet_65_127_bytes_2,
  output wire stat_tx_packet_128_255_bytes_2,
  output wire stat_tx_packet_256_511_bytes_2,
  output wire stat_tx_packet_512_1023_bytes_2,
  output wire stat_tx_packet_1024_1518_bytes_2,
  output wire stat_tx_packet_1519_1522_bytes_2,
  output wire stat_tx_packet_1523_1548_bytes_2,
  output wire stat_tx_packet_small_2,
  output wire stat_tx_packet_large_2,
  output wire stat_tx_packet_1549_2047_bytes_2,
  output wire stat_tx_packet_2048_4095_bytes_2,
  output wire stat_tx_packet_4096_8191_bytes_2,
  output wire stat_tx_packet_8192_9215_bytes_2,
  output wire stat_tx_bad_fcs_2,
  output wire stat_tx_frame_error_2,
  output wire stat_tx_local_fault_2,
  output wire stat_tx_unicast_2,
  output wire stat_tx_multicast_2,
  output wire stat_tx_broadcast_2,
  output wire stat_tx_vlan_2,





//// GT Debug interface ports
  output wire [16:0] gt_dmonitorout_2,
  output wire [0:0] gt_eyescandataerror_2,
  input  wire [0:0] gt_eyescanreset_2,
  input  wire [0:0] gt_eyescantrigger_2,
  input  wire [15:0] gt_pcsrsvdin_2,
  input  wire [0:0] gt_rxbufreset_2,
  output wire [2:0] gt_rxbufstatus_2,
  input  wire [0:0] gt_rxcdrhold_2,
  input  wire [0:0] gt_rxcommadeten_2,
  input  wire [0:0] gt_rxdfeagchold_2,
  input  wire [0:0] gt_rxdfelpmreset_2,
  input  wire [0:0] gt_rxlatclk_2,
  input  wire [0:0] gt_rxlpmen_2,
  input  wire [0:0] gt_rxpcsreset_2,
  input  wire [0:0] gt_rxpmareset_2,
  input  wire [0:0] gt_rxpolarity_2,
  input  wire [0:0] gt_rxprbscntreset_2,
  output wire [0:0] gt_rxprbserr_2,
  input  wire [3:0] gt_rxprbssel_2,
  input  wire [2:0] gt_rxrate_2,
  input  wire [0:0] gt_rxslide_in_2,
  output wire [1:0] gt_rxstartofseq_2,
  output wire [1:0] gt_txbufstatus_2,
  input  wire [0:0] gt_txinhibit_2,
  input  wire [0:0] gt_txlatclk_2,
  input  wire [6:0] gt_txmaincursor_2,
  input  wire [0:0] gt_txpcsreset_2,
  input  wire [0:0] gt_txpmareset_2,
  input  wire [0:0] gt_txpolarity_2,
  input  wire [4:0] gt_txpostcursor_2,
  input  wire [0:0] gt_txprbsforceerr_2,
  input  wire [0:0] gt_txelecidle_2,
  input  wire [3:0] gt_txprbssel_2,
  input  wire [4:0] gt_txprecursor_2,
  input wire [3:0] gt_txdiffctrl_2,
//// GT DRP interface ports
  output wire [15:0] gt_drpdo_2,
  output wire [0:0] gt_drprdy_2,
  input  wire [0:0] gt_drpen_2,
  input  wire [0:0] gt_drpwe_2,
  input  wire [9:0] gt_drpaddr_2,
  input  wire [15:0] gt_drpdi_2,
  input wire gt_drpclk_2,
  input wire gtwiz_reset_tx_datapath_2,
  input wire gtwiz_reset_rx_datapath_2,
  output wire gtpowergood_out_2,
  input wire [2:0] txoutclksel_in_2,
  input wire [2:0] rxoutclksel_in_2,
 
  output wire tx_clk_out_3,

  input  wire rx_core_clk_3,
  output wire rx_clk_out_3,
  input  wire [2:0] gt_loopback_in_3,
  output wire rxrecclkout_3,

//// RX_3 Signals
  input  wire rx_reset_3,
  output wire user_rx_reset_3,

//// RX_3 User Interface Signals

  output wire rx_axis_tvalid_3,
  output wire [63:0] rx_axis_tdata_3,
  output wire rx_axis_tlast_3,
  output wire [7:0] rx_axis_tkeep_3,
  output wire rx_axis_tuser_3,
  output wire [55:0] rx_preambleout_3,


//// RX_3 Control Signals
  input  wire ctl_rx_test_pattern_3,
  input  wire ctl_rx_test_pattern_enable_3,
  input  wire ctl_rx_data_pattern_select_3,
  input  wire ctl_rx_enable_3,
  input  wire ctl_rx_delete_fcs_3,
  input  wire ctl_rx_ignore_fcs_3,
  input  wire [14:0] ctl_rx_max_packet_len_3,
  input  wire [7:0] ctl_rx_min_packet_len_3,
  input  wire ctl_rx_custom_preamble_enable_3,
  input  wire ctl_rx_check_sfd_3,
  input  wire ctl_rx_check_preamble_3,
  input  wire ctl_rx_process_lfi_3,
  input  wire ctl_rx_force_resync_3,






//// RX_3 Stats Signals
  output wire stat_rx_block_lock_3,
  output wire stat_rx_framing_err_valid_3,
  output wire stat_rx_framing_err_3,
  output wire stat_rx_hi_ber_3,
  output wire stat_rx_valid_ctrl_code_3,
  output wire stat_rx_bad_code_3,
  output wire [1:0] stat_rx_total_packets_3,
  output wire stat_rx_total_good_packets_3,
  output wire [3:0] stat_rx_total_bytes_3,
  output wire [13:0] stat_rx_total_good_bytes_3,
  output wire stat_rx_packet_small_3,
  output wire stat_rx_jabber_3,
  output wire stat_rx_packet_large_3,
  output wire stat_rx_oversize_3,
  output wire stat_rx_undersize_3,
  output wire stat_rx_toolong_3,
  output wire stat_rx_fragment_3,
  output wire stat_rx_packet_64_bytes_3,
  output wire stat_rx_packet_65_127_bytes_3,
  output wire stat_rx_packet_128_255_bytes_3,
  output wire stat_rx_packet_256_511_bytes_3,
  output wire stat_rx_packet_512_1023_bytes_3,
  output wire stat_rx_packet_1024_1518_bytes_3,
  output wire stat_rx_packet_1519_1522_bytes_3,
  output wire stat_rx_packet_1523_1548_bytes_3,
  output wire [1:0] stat_rx_bad_fcs_3,
  output wire stat_rx_packet_bad_fcs_3,
  output wire [1:0] stat_rx_stomped_fcs_3,
  output wire stat_rx_packet_1549_2047_bytes_3,
  output wire stat_rx_packet_2048_4095_bytes_3,
  output wire stat_rx_packet_4096_8191_bytes_3,
  output wire stat_rx_packet_8192_9215_bytes_3,
  output wire stat_rx_bad_preamble_3,
  output wire stat_rx_bad_sfd_3,
  output wire stat_rx_got_signal_os_3,
  output wire stat_rx_test_pattern_mismatch_3,
  output wire stat_rx_truncated_3,
  output wire stat_rx_local_fault_3,
  output wire stat_rx_remote_fault_3,
  output wire stat_rx_internal_local_fault_3,
  output wire stat_rx_received_local_fault_3,
  output wire stat_rx_inrangeerr_3,
  
  output wire stat_rx_unicast_3,
  output wire stat_rx_multicast_3,
  output wire stat_rx_broadcast_3,
  output wire stat_rx_vlan_3,
  output wire stat_rx_status_3,

//// TX_3 Signals
  input  wire tx_reset_3,
  output wire user_tx_reset_3,

//// TX_3 User Interface Signals
  output wire tx_axis_tready_3,
  input  wire tx_axis_tvalid_3,
  input  wire [63:0] tx_axis_tdata_3,
  input  wire tx_axis_tlast_3,
  input  wire [7:0] tx_axis_tkeep_3,
  input  wire tx_axis_tuser_3,
  output wire tx_unfout_3,
  input  wire [55:0] tx_preamblein_3,


//// TX_3 Control Signals
  input  wire ctl_tx_test_pattern_3,
  input  wire ctl_tx_test_pattern_enable_3,
  input  wire ctl_tx_test_pattern_select_3,
  input  wire ctl_tx_data_pattern_select_3,
  input  wire [57:0] ctl_tx_test_pattern_seed_a_3,
  input  wire [57:0] ctl_tx_test_pattern_seed_b_3,
  input  wire ctl_tx_enable_3,
  input  wire ctl_tx_fcs_ins_enable_3,
  input  wire ctl_tx_send_lfi_3,
  input  wire ctl_tx_send_rfi_3,
  input  wire ctl_tx_send_idle_3,
  input  wire ctl_tx_custom_preamble_enable_3,
  input  wire [3:0] ctl_tx_ipg_value_3,
  input  wire ctl_tx_ignore_fcs_3,


//// TX_3 Stats Signals
  output wire stat_tx_total_packets_3,
  output wire [3:0] stat_tx_total_bytes_3,
  output wire stat_tx_total_good_packets_3,
  output wire [13:0] stat_tx_total_good_bytes_3,
  output wire stat_tx_packet_64_bytes_3,
  output wire stat_tx_packet_65_127_bytes_3,
  output wire stat_tx_packet_128_255_bytes_3,
  output wire stat_tx_packet_256_511_bytes_3,
  output wire stat_tx_packet_512_1023_bytes_3,
  output wire stat_tx_packet_1024_1518_bytes_3,
  output wire stat_tx_packet_1519_1522_bytes_3,
  output wire stat_tx_packet_1523_1548_bytes_3,
  output wire stat_tx_packet_small_3,
  output wire stat_tx_packet_large_3,
  output wire stat_tx_packet_1549_2047_bytes_3,
  output wire stat_tx_packet_2048_4095_bytes_3,
  output wire stat_tx_packet_4096_8191_bytes_3,
  output wire stat_tx_packet_8192_9215_bytes_3,
  output wire stat_tx_bad_fcs_3,
  output wire stat_tx_frame_error_3,
  output wire stat_tx_local_fault_3,
  output wire stat_tx_unicast_3,
  output wire stat_tx_multicast_3,
  output wire stat_tx_broadcast_3,
  output wire stat_tx_vlan_3,





//// GT Debug interface ports
  output wire [16:0] gt_dmonitorout_3,
  output wire [0:0] gt_eyescandataerror_3,
  input  wire [0:0] gt_eyescanreset_3,
  input  wire [0:0] gt_eyescantrigger_3,
  input  wire [15:0] gt_pcsrsvdin_3,
  input  wire [0:0] gt_rxbufreset_3,
  output wire [2:0] gt_rxbufstatus_3,
  input  wire [0:0] gt_rxcdrhold_3,
  input  wire [0:0] gt_rxcommadeten_3,
  input  wire [0:0] gt_rxdfeagchold_3,
  input  wire [0:0] gt_rxdfelpmreset_3,
  input  wire [0:0] gt_rxlatclk_3,
  input  wire [0:0] gt_rxlpmen_3,
  input  wire [0:0] gt_rxpcsreset_3,
  input  wire [0:0] gt_rxpmareset_3,
  input  wire [0:0] gt_rxpolarity_3,
  input  wire [0:0] gt_rxprbscntreset_3,
  output wire [0:0] gt_rxprbserr_3,
  input  wire [3:0] gt_rxprbssel_3,
  input  wire [2:0] gt_rxrate_3,
  input  wire [0:0] gt_rxslide_in_3,
  output wire [1:0] gt_rxstartofseq_3,
  output wire [1:0] gt_txbufstatus_3,
  input  wire [0:0] gt_txinhibit_3,
  input  wire [0:0] gt_txlatclk_3,
  input  wire [6:0] gt_txmaincursor_3,
  input  wire [0:0] gt_txpcsreset_3,
  input  wire [0:0] gt_txpmareset_3,
  input  wire [0:0] gt_txpolarity_3,
  input  wire [4:0] gt_txpostcursor_3,
  input  wire [0:0] gt_txprbsforceerr_3,
  input  wire [0:0] gt_txelecidle_3,
  input  wire [3:0] gt_txprbssel_3,
  input  wire [4:0] gt_txprecursor_3,
  input wire [3:0] gt_txdiffctrl_3,
//// GT DRP interface ports
  output wire [15:0] gt_drpdo_3,
  output wire [0:0] gt_drprdy_3,
  input  wire [0:0] gt_drpen_3,
  input  wire [0:0] gt_drpwe_3,
  input  wire [9:0] gt_drpaddr_3,
  input  wire [15:0] gt_drpdi_3,
  input wire gt_drpclk_3,
  input wire gtwiz_reset_tx_datapath_3,
  input wire gtwiz_reset_rx_datapath_3,
  output wire gtpowergood_out_3,
  input wire [2:0] txoutclksel_in_3,
  input wire [2:0] rxoutclksel_in_3,
 
 
  input  gt_refclk_p,
  input  gt_refclk_n,
  output gt_refclk_out,

  input  wire sys_reset,
  input  wire dclk
);

  wire rx_core_reset_0;
  wire tx_core_reset_0;
  wire rx_serdes_reset_0;
  wire gtwiz_reset_all_0;
  wire gtwiz_reset_tx_datapath_out_0;
  wire gtwiz_reset_rx_datapath_out_0;
  wire gtwiz_reset_tx_done_0;
  wire gtwiz_reset_rx_done_0;

  wire tx_core_clk_0;
  wire rx_serdes_clk_0;
  wire [0:0] rxgearboxslip_in_0;
  wire [1:0] rxdatavalid_out_0;
  wire [5:0] rxheader_out_0;
  wire [1:0] rxheadervalid_out_0;
  wire [127:0] rx_serdes_data_out_0;
  wire [127:0] tx_serdes_data_in_0;
  wire [5:0] txheader_in_0;
  wire rx_core_reset_1;
  wire tx_core_reset_1;
  wire rx_serdes_reset_1;
  wire gtwiz_reset_all_1;
  wire gtwiz_reset_tx_datapath_out_1;
  wire gtwiz_reset_rx_datapath_out_1;
  wire gtwiz_reset_tx_done_1;
  wire gtwiz_reset_rx_done_1;

  wire tx_core_clk_1;
  wire rx_serdes_clk_1;
  wire [0:0] rxgearboxslip_in_1;
  wire [1:0] rxdatavalid_out_1;
  wire [5:0] rxheader_out_1;
  wire [1:0] rxheadervalid_out_1;
  wire [127:0] rx_serdes_data_out_1;
  wire [127:0] tx_serdes_data_in_1;
  wire [5:0] txheader_in_1;
  wire rx_core_reset_2;
  wire tx_core_reset_2;
  wire rx_serdes_reset_2;
  wire gtwiz_reset_all_2;
  wire gtwiz_reset_tx_datapath_out_2;
  wire gtwiz_reset_rx_datapath_out_2;
  wire gtwiz_reset_tx_done_2;
  wire gtwiz_reset_rx_done_2;

  wire tx_core_clk_2;
  wire rx_serdes_clk_2;
  wire [0:0] rxgearboxslip_in_2;
  wire [1:0] rxdatavalid_out_2;
  wire [5:0] rxheader_out_2;
  wire [1:0] rxheadervalid_out_2;
  wire [127:0] rx_serdes_data_out_2;
  wire [127:0] tx_serdes_data_in_2;
  wire [5:0] txheader_in_2;
  wire rx_core_reset_3;
  wire tx_core_reset_3;
  wire rx_serdes_reset_3;
  wire gtwiz_reset_all_3;
  wire gtwiz_reset_tx_datapath_out_3;
  wire gtwiz_reset_rx_datapath_out_3;
  wire gtwiz_reset_tx_done_3;
  wire gtwiz_reset_rx_done_3;

  wire tx_core_clk_3;
  wire rx_serdes_clk_3;
  wire [0:0] rxgearboxslip_in_3;
  wire [1:0] rxdatavalid_out_3;
  wire [5:0] rxheader_out_3;
  wire [1:0] rxheadervalid_out_3;
  wire [127:0] rx_serdes_data_out_3;
  wire [127:0] tx_serdes_data_in_3;
  wire [5:0] txheader_in_3;

   
   
   
   

////  Ports present when shared logic is implemented outside core
  wire [3:0] qpll0clk_in;
  wire [3:0] qpll0refclk_in;
  wire [3:0] qpll1clk_in;
  wire [3:0] qpll1refclk_in;
  wire [0:0] gtwiz_reset_qpll0lock_in;
  wire [0:0] gtwiz_reset_qpll1lock_in;
  wire [0:0] gtwiz_reset_qpll0reset_out_0;
  wire [0:0] gtwiz_reset_qpll1reset_out_0;
  wire [0:0] gtwiz_reset_qpll0reset_out_1;
  wire [0:0] gtwiz_reset_qpll1reset_out_1;
  wire [0:0] gtwiz_reset_qpll0reset_out_2;
  wire [0:0] gtwiz_reset_qpll1reset_out_2;
  wire [0:0] gtwiz_reset_qpll0reset_out_3;
  wire [0:0] gtwiz_reset_qpll1reset_out_3;
  wire [0:0] qpll0lock;
  wire [0:0] qpll0outclk;
  wire [0:0] qpll0outrefclk;
  wire [0:0] qpll1lock;
  wire [0:0] qpll1outclk;
  wire [0:0] qpll1outrefclk;

  assign qpll0clk_in = ({4{qpll0outclk}});
  assign qpll0refclk_in = ({4{qpll0outrefclk}});
  assign qpll1clk_in = ({4{qpll1outclk}});
  assign qpll1refclk_in = ({4{qpll1outrefclk}});
  assign gtwiz_reset_qpll0lock_in = qpll0lock;
  assign gtwiz_reset_qpll1lock_in = qpll1lock;
  wire qpll0reset_out;
  wire qpll1reset_out;
  wire powergood_out;
  assign powergood_out = gtpowergood_out_0 & gtpowergood_out_1 & gtpowergood_out_2 & gtpowergood_out_3;
  assign qpll0reset_out = powergood_out ? 1'b0 : 1'b1 ;
  assign qpll1reset_out = powergood_out ? 1'b0 : 1'b1 ;

xxv_ethernet_0 DUT
(
  .rx_reset_0 (rx_core_reset_0),
//// RX User Interface Signals
  .rx_axis_tvalid_0 (rx_axis_tvalid_0),
  .rx_axis_tdata_0 (rx_axis_tdata_0),
  .rx_axis_tlast_0 (rx_axis_tlast_0),
  .rx_axis_tkeep_0 (rx_axis_tkeep_0),
  .rx_axis_tuser_0 (rx_axis_tuser_0),
  .rx_preambleout_0 (rx_preambleout_0),

//// RX Control Signals

  .ctl_rx_test_pattern_0 (ctl_rx_test_pattern_0),
  .ctl_rx_test_pattern_enable_0 (ctl_rx_test_pattern_enable_0),
  .ctl_rx_data_pattern_select_0 (ctl_rx_data_pattern_select_0),
  .ctl_rx_enable_0 (ctl_rx_enable_0),
  .ctl_rx_delete_fcs_0 (ctl_rx_delete_fcs_0),
  .ctl_rx_ignore_fcs_0 (ctl_rx_ignore_fcs_0),
  .ctl_rx_max_packet_len_0 (ctl_rx_max_packet_len_0),
  .ctl_rx_min_packet_len_0 (ctl_rx_min_packet_len_0),
  .ctl_rx_check_preamble_0 (ctl_rx_check_preamble_0),
  .ctl_rx_check_sfd_0 (ctl_rx_check_sfd_0),
  .ctl_rx_custom_preamble_enable_0 (ctl_rx_custom_preamble_enable_0),
  .ctl_rx_process_lfi_0 (ctl_rx_process_lfi_0),
  .ctl_rx_force_resync_0 (ctl_rx_force_resync_0),



//// RX Stats Signals
  .stat_rx_block_lock_0 (stat_rx_block_lock_0),
  .stat_rx_framing_err_valid_0 (stat_rx_framing_err_valid_0),
  .stat_rx_framing_err_0 (stat_rx_framing_err_0),
  .stat_rx_hi_ber_0 (stat_rx_hi_ber_0),
  .stat_rx_valid_ctrl_code_0 (stat_rx_valid_ctrl_code_0),
  .stat_rx_bad_code_0 (stat_rx_bad_code_0),
  .stat_rx_total_packets_0 (stat_rx_total_packets_0),
  .stat_rx_total_good_packets_0 (stat_rx_total_good_packets_0),
  .stat_rx_total_bytes_0 (stat_rx_total_bytes_0),
  .stat_rx_total_good_bytes_0 (stat_rx_total_good_bytes_0),
  .stat_rx_packet_small_0 (stat_rx_packet_small_0),
  .stat_rx_jabber_0 (stat_rx_jabber_0),
  .stat_rx_packet_large_0 (stat_rx_packet_large_0),
  .stat_rx_oversize_0 (stat_rx_oversize_0),
  .stat_rx_undersize_0 (stat_rx_undersize_0),
  .stat_rx_toolong_0 (stat_rx_toolong_0),
  .stat_rx_fragment_0 (stat_rx_fragment_0),
  .stat_rx_packet_64_bytes_0 (stat_rx_packet_64_bytes_0),
  .stat_rx_packet_65_127_bytes_0 (stat_rx_packet_65_127_bytes_0),
  .stat_rx_packet_128_255_bytes_0 (stat_rx_packet_128_255_bytes_0),
  .stat_rx_packet_256_511_bytes_0 (stat_rx_packet_256_511_bytes_0),
  .stat_rx_packet_512_1023_bytes_0 (stat_rx_packet_512_1023_bytes_0),
  .stat_rx_packet_1024_1518_bytes_0 (stat_rx_packet_1024_1518_bytes_0),
  .stat_rx_packet_1519_1522_bytes_0 (stat_rx_packet_1519_1522_bytes_0),
  .stat_rx_packet_1523_1548_bytes_0 (stat_rx_packet_1523_1548_bytes_0),
  .stat_rx_bad_fcs_0 (stat_rx_bad_fcs_0),
  .stat_rx_packet_bad_fcs_0 (stat_rx_packet_bad_fcs_0),
  .stat_rx_stomped_fcs_0 (stat_rx_stomped_fcs_0),
  .stat_rx_packet_1549_2047_bytes_0 (stat_rx_packet_1549_2047_bytes_0),
  .stat_rx_packet_2048_4095_bytes_0 (stat_rx_packet_2048_4095_bytes_0),
  .stat_rx_packet_4096_8191_bytes_0 (stat_rx_packet_4096_8191_bytes_0),
  .stat_rx_packet_8192_9215_bytes_0 (stat_rx_packet_8192_9215_bytes_0),
  .stat_rx_bad_preamble_0 (stat_rx_bad_preamble_0),
  .stat_rx_bad_sfd_0 (stat_rx_bad_sfd_0),
  .stat_rx_got_signal_os_0 (stat_rx_got_signal_os_0),
  .stat_rx_test_pattern_mismatch_0 (stat_rx_test_pattern_mismatch_0),
  .stat_rx_truncated_0 (stat_rx_truncated_0),
  .stat_rx_local_fault_0 (stat_rx_local_fault_0),
  .stat_rx_remote_fault_0 (stat_rx_remote_fault_0),
  .stat_rx_internal_local_fault_0 (stat_rx_internal_local_fault_0),
  .stat_rx_received_local_fault_0 (stat_rx_received_local_fault_0),
  .stat_rx_inrangeerr_0 (stat_rx_inrangeerr_0),
  
  .stat_rx_unicast_0 (stat_rx_unicast_0),
  .stat_rx_multicast_0 (stat_rx_multicast_0),
  .stat_rx_broadcast_0 (stat_rx_broadcast_0),
  .stat_rx_vlan_0 (stat_rx_vlan_0),

   .stat_rx_status_0 (stat_rx_status_0),
  .tx_reset_0 (tx_core_reset_0),

//// TX User Interface Signals
  .tx_axis_tready_0 (tx_axis_tready_0),
  .tx_axis_tvalid_0 (tx_axis_tvalid_0),
  .tx_axis_tdata_0 (tx_axis_tdata_0),
  .tx_axis_tlast_0 (tx_axis_tlast_0),
  .tx_axis_tkeep_0 (tx_axis_tkeep_0),
  .tx_axis_tuser_0 (tx_axis_tuser_0),
  .tx_unfout_0 (tx_unfout_0),
  .tx_preamblein_0 (tx_preamblein_0),

//// TX Control Signals
  .ctl_tx_test_pattern_0 (ctl_tx_test_pattern_0),
  .ctl_tx_test_pattern_enable_0 (ctl_tx_test_pattern_enable_0),
  .ctl_tx_test_pattern_select_0 (ctl_tx_test_pattern_select_0),
  .ctl_tx_data_pattern_select_0 (ctl_tx_data_pattern_select_0),
  .ctl_tx_test_pattern_seed_a_0 (ctl_tx_test_pattern_seed_a_0),
  .ctl_tx_test_pattern_seed_b_0 (ctl_tx_test_pattern_seed_b_0),
  .ctl_tx_enable_0 (ctl_tx_enable_0),
  .ctl_tx_fcs_ins_enable_0 (ctl_tx_fcs_ins_enable_0),
  .ctl_tx_ipg_value_0 (ctl_tx_ipg_value_0),
  .ctl_tx_custom_preamble_enable_0 (ctl_tx_custom_preamble_enable_0),
  .ctl_tx_send_lfi_0 (ctl_tx_send_lfi_0),
  .ctl_tx_send_rfi_0 (ctl_tx_send_rfi_0),
  .ctl_tx_send_idle_0 (ctl_tx_send_idle_0),
  .ctl_tx_ignore_fcs_0 (ctl_tx_ignore_fcs_0),


//// TX Stats Signals
  .stat_tx_total_packets_0 (stat_tx_total_packets_0),
  .stat_tx_total_bytes_0 (stat_tx_total_bytes_0),
  .stat_tx_total_good_packets_0 (stat_tx_total_good_packets_0),
  .stat_tx_total_good_bytes_0 (stat_tx_total_good_bytes_0),
  .stat_tx_packet_64_bytes_0 (stat_tx_packet_64_bytes_0),
  .stat_tx_packet_65_127_bytes_0 (stat_tx_packet_65_127_bytes_0),
  .stat_tx_packet_128_255_bytes_0 (stat_tx_packet_128_255_bytes_0),
  .stat_tx_packet_256_511_bytes_0 (stat_tx_packet_256_511_bytes_0),
  .stat_tx_packet_512_1023_bytes_0 (stat_tx_packet_512_1023_bytes_0),
  .stat_tx_packet_1024_1518_bytes_0 (stat_tx_packet_1024_1518_bytes_0),
  .stat_tx_packet_1519_1522_bytes_0 (stat_tx_packet_1519_1522_bytes_0),
  .stat_tx_packet_1523_1548_bytes_0 (stat_tx_packet_1523_1548_bytes_0),
  .stat_tx_packet_small_0 (stat_tx_packet_small_0),
  .stat_tx_packet_large_0 (stat_tx_packet_large_0),
  .stat_tx_packet_1549_2047_bytes_0 (stat_tx_packet_1549_2047_bytes_0),
  .stat_tx_packet_2048_4095_bytes_0 (stat_tx_packet_2048_4095_bytes_0),
  .stat_tx_packet_4096_8191_bytes_0 (stat_tx_packet_4096_8191_bytes_0),
  .stat_tx_packet_8192_9215_bytes_0 (stat_tx_packet_8192_9215_bytes_0),
  .stat_tx_bad_fcs_0 (stat_tx_bad_fcs_0),
  .stat_tx_frame_error_0 (stat_tx_frame_error_0),
  .stat_tx_local_fault_0 (stat_tx_local_fault_0),
  .stat_tx_unicast_0 (stat_tx_unicast_0),
  .stat_tx_multicast_0 (stat_tx_multicast_0),
  .stat_tx_broadcast_0 (stat_tx_broadcast_0),
  .stat_tx_vlan_0 (stat_tx_vlan_0),




  .rx_reset_1 (rx_core_reset_1),
//// RX User Interface Signals
  .rx_axis_tvalid_1 (rx_axis_tvalid_1),
  .rx_axis_tdata_1 (rx_axis_tdata_1),
  .rx_axis_tlast_1 (rx_axis_tlast_1),
  .rx_axis_tkeep_1 (rx_axis_tkeep_1),
  .rx_axis_tuser_1 (rx_axis_tuser_1),
  .rx_preambleout_1 (rx_preambleout_1),

//// RX Control Signals

  .ctl_rx_test_pattern_1 (ctl_rx_test_pattern_1),
  .ctl_rx_test_pattern_enable_1 (ctl_rx_test_pattern_enable_1),
  .ctl_rx_data_pattern_select_1 (ctl_rx_data_pattern_select_1),
  .ctl_rx_enable_1 (ctl_rx_enable_1),
  .ctl_rx_delete_fcs_1 (ctl_rx_delete_fcs_1),
  .ctl_rx_ignore_fcs_1 (ctl_rx_ignore_fcs_1),
  .ctl_rx_max_packet_len_1 (ctl_rx_max_packet_len_1),
  .ctl_rx_min_packet_len_1 (ctl_rx_min_packet_len_1),
  .ctl_rx_check_preamble_1 (ctl_rx_check_preamble_1),
  .ctl_rx_check_sfd_1 (ctl_rx_check_sfd_1),
  .ctl_rx_custom_preamble_enable_1 (ctl_rx_custom_preamble_enable_1),
  .ctl_rx_process_lfi_1 (ctl_rx_process_lfi_1),
  .ctl_rx_force_resync_1 (ctl_rx_force_resync_1),



//// RX Stats Signals
  .stat_rx_block_lock_1 (stat_rx_block_lock_1),
  .stat_rx_framing_err_valid_1 (stat_rx_framing_err_valid_1),
  .stat_rx_framing_err_1 (stat_rx_framing_err_1),
  .stat_rx_hi_ber_1 (stat_rx_hi_ber_1),
  .stat_rx_valid_ctrl_code_1 (stat_rx_valid_ctrl_code_1),
  .stat_rx_bad_code_1 (stat_rx_bad_code_1),
  .stat_rx_total_packets_1 (stat_rx_total_packets_1),
  .stat_rx_total_good_packets_1 (stat_rx_total_good_packets_1),
  .stat_rx_total_bytes_1 (stat_rx_total_bytes_1),
  .stat_rx_total_good_bytes_1 (stat_rx_total_good_bytes_1),
  .stat_rx_packet_small_1 (stat_rx_packet_small_1),
  .stat_rx_jabber_1 (stat_rx_jabber_1),
  .stat_rx_packet_large_1 (stat_rx_packet_large_1),
  .stat_rx_oversize_1 (stat_rx_oversize_1),
  .stat_rx_undersize_1 (stat_rx_undersize_1),
  .stat_rx_toolong_1 (stat_rx_toolong_1),
  .stat_rx_fragment_1 (stat_rx_fragment_1),
  .stat_rx_packet_64_bytes_1 (stat_rx_packet_64_bytes_1),
  .stat_rx_packet_65_127_bytes_1 (stat_rx_packet_65_127_bytes_1),
  .stat_rx_packet_128_255_bytes_1 (stat_rx_packet_128_255_bytes_1),
  .stat_rx_packet_256_511_bytes_1 (stat_rx_packet_256_511_bytes_1),
  .stat_rx_packet_512_1023_bytes_1 (stat_rx_packet_512_1023_bytes_1),
  .stat_rx_packet_1024_1518_bytes_1 (stat_rx_packet_1024_1518_bytes_1),
  .stat_rx_packet_1519_1522_bytes_1 (stat_rx_packet_1519_1522_bytes_1),
  .stat_rx_packet_1523_1548_bytes_1 (stat_rx_packet_1523_1548_bytes_1),
  .stat_rx_bad_fcs_1 (stat_rx_bad_fcs_1),
  .stat_rx_packet_bad_fcs_1 (stat_rx_packet_bad_fcs_1),
  .stat_rx_stomped_fcs_1 (stat_rx_stomped_fcs_1),
  .stat_rx_packet_1549_2047_bytes_1 (stat_rx_packet_1549_2047_bytes_1),
  .stat_rx_packet_2048_4095_bytes_1 (stat_rx_packet_2048_4095_bytes_1),
  .stat_rx_packet_4096_8191_bytes_1 (stat_rx_packet_4096_8191_bytes_1),
  .stat_rx_packet_8192_9215_bytes_1 (stat_rx_packet_8192_9215_bytes_1),
  .stat_rx_bad_preamble_1 (stat_rx_bad_preamble_1),
  .stat_rx_bad_sfd_1 (stat_rx_bad_sfd_1),
  .stat_rx_got_signal_os_1 (stat_rx_got_signal_os_1),
  .stat_rx_test_pattern_mismatch_1 (stat_rx_test_pattern_mismatch_1),
  .stat_rx_truncated_1 (stat_rx_truncated_1),
  .stat_rx_local_fault_1 (stat_rx_local_fault_1),
  .stat_rx_remote_fault_1 (stat_rx_remote_fault_1),
  .stat_rx_internal_local_fault_1 (stat_rx_internal_local_fault_1),
  .stat_rx_received_local_fault_1 (stat_rx_received_local_fault_1),
  .stat_rx_inrangeerr_1 (stat_rx_inrangeerr_1),
  
  .stat_rx_unicast_1 (stat_rx_unicast_1),
  .stat_rx_multicast_1 (stat_rx_multicast_1),
  .stat_rx_broadcast_1 (stat_rx_broadcast_1),
  .stat_rx_vlan_1 (stat_rx_vlan_1),

   .stat_rx_status_1 (stat_rx_status_1),
  .tx_reset_1 (tx_core_reset_1),

//// TX User Interface Signals
  .tx_axis_tready_1 (tx_axis_tready_1),
  .tx_axis_tvalid_1 (tx_axis_tvalid_1),
  .tx_axis_tdata_1 (tx_axis_tdata_1),
  .tx_axis_tlast_1 (tx_axis_tlast_1),
  .tx_axis_tkeep_1 (tx_axis_tkeep_1),
  .tx_axis_tuser_1 (tx_axis_tuser_1),
  .tx_unfout_1 (tx_unfout_1),
  .tx_preamblein_1 (tx_preamblein_1),

//// TX Control Signals
  .ctl_tx_test_pattern_1 (ctl_tx_test_pattern_1),
  .ctl_tx_test_pattern_enable_1 (ctl_tx_test_pattern_enable_1),
  .ctl_tx_test_pattern_select_1 (ctl_tx_test_pattern_select_1),
  .ctl_tx_data_pattern_select_1 (ctl_tx_data_pattern_select_1),
  .ctl_tx_test_pattern_seed_a_1 (ctl_tx_test_pattern_seed_a_1),
  .ctl_tx_test_pattern_seed_b_1 (ctl_tx_test_pattern_seed_b_1),
  .ctl_tx_enable_1 (ctl_tx_enable_1),
  .ctl_tx_fcs_ins_enable_1 (ctl_tx_fcs_ins_enable_1),
  .ctl_tx_ipg_value_1 (ctl_tx_ipg_value_1),
  .ctl_tx_custom_preamble_enable_1 (ctl_tx_custom_preamble_enable_1),
  .ctl_tx_send_lfi_1 (ctl_tx_send_lfi_1),
  .ctl_tx_send_rfi_1 (ctl_tx_send_rfi_1),
  .ctl_tx_send_idle_1 (ctl_tx_send_idle_1),
  .ctl_tx_ignore_fcs_1 (ctl_tx_ignore_fcs_1),


//// TX Stats Signals
  .stat_tx_total_packets_1 (stat_tx_total_packets_1),
  .stat_tx_total_bytes_1 (stat_tx_total_bytes_1),
  .stat_tx_total_good_packets_1 (stat_tx_total_good_packets_1),
  .stat_tx_total_good_bytes_1 (stat_tx_total_good_bytes_1),
  .stat_tx_packet_64_bytes_1 (stat_tx_packet_64_bytes_1),
  .stat_tx_packet_65_127_bytes_1 (stat_tx_packet_65_127_bytes_1),
  .stat_tx_packet_128_255_bytes_1 (stat_tx_packet_128_255_bytes_1),
  .stat_tx_packet_256_511_bytes_1 (stat_tx_packet_256_511_bytes_1),
  .stat_tx_packet_512_1023_bytes_1 (stat_tx_packet_512_1023_bytes_1),
  .stat_tx_packet_1024_1518_bytes_1 (stat_tx_packet_1024_1518_bytes_1),
  .stat_tx_packet_1519_1522_bytes_1 (stat_tx_packet_1519_1522_bytes_1),
  .stat_tx_packet_1523_1548_bytes_1 (stat_tx_packet_1523_1548_bytes_1),
  .stat_tx_packet_small_1 (stat_tx_packet_small_1),
  .stat_tx_packet_large_1 (stat_tx_packet_large_1),
  .stat_tx_packet_1549_2047_bytes_1 (stat_tx_packet_1549_2047_bytes_1),
  .stat_tx_packet_2048_4095_bytes_1 (stat_tx_packet_2048_4095_bytes_1),
  .stat_tx_packet_4096_8191_bytes_1 (stat_tx_packet_4096_8191_bytes_1),
  .stat_tx_packet_8192_9215_bytes_1 (stat_tx_packet_8192_9215_bytes_1),
  .stat_tx_bad_fcs_1 (stat_tx_bad_fcs_1),
  .stat_tx_frame_error_1 (stat_tx_frame_error_1),
  .stat_tx_local_fault_1 (stat_tx_local_fault_1),
  .stat_tx_unicast_1 (stat_tx_unicast_1),
  .stat_tx_multicast_1 (stat_tx_multicast_1),
  .stat_tx_broadcast_1 (stat_tx_broadcast_1),
  .stat_tx_vlan_1 (stat_tx_vlan_1),




  .rx_reset_2 (rx_core_reset_2),
//// RX User Interface Signals
  .rx_axis_tvalid_2 (rx_axis_tvalid_2),
  .rx_axis_tdata_2 (rx_axis_tdata_2),
  .rx_axis_tlast_2 (rx_axis_tlast_2),
  .rx_axis_tkeep_2 (rx_axis_tkeep_2),
  .rx_axis_tuser_2 (rx_axis_tuser_2),
  .rx_preambleout_2 (rx_preambleout_2),

//// RX Control Signals

  .ctl_rx_test_pattern_2 (ctl_rx_test_pattern_2),
  .ctl_rx_test_pattern_enable_2 (ctl_rx_test_pattern_enable_2),
  .ctl_rx_data_pattern_select_2 (ctl_rx_data_pattern_select_2),
  .ctl_rx_enable_2 (ctl_rx_enable_2),
  .ctl_rx_delete_fcs_2 (ctl_rx_delete_fcs_2),
  .ctl_rx_ignore_fcs_2 (ctl_rx_ignore_fcs_2),
  .ctl_rx_max_packet_len_2 (ctl_rx_max_packet_len_2),
  .ctl_rx_min_packet_len_2 (ctl_rx_min_packet_len_2),
  .ctl_rx_check_preamble_2 (ctl_rx_check_preamble_2),
  .ctl_rx_check_sfd_2 (ctl_rx_check_sfd_2),
  .ctl_rx_custom_preamble_enable_2 (ctl_rx_custom_preamble_enable_2),
  .ctl_rx_process_lfi_2 (ctl_rx_process_lfi_2),
  .ctl_rx_force_resync_2 (ctl_rx_force_resync_2),



//// RX Stats Signals
  .stat_rx_block_lock_2 (stat_rx_block_lock_2),
  .stat_rx_framing_err_valid_2 (stat_rx_framing_err_valid_2),
  .stat_rx_framing_err_2 (stat_rx_framing_err_2),
  .stat_rx_hi_ber_2 (stat_rx_hi_ber_2),
  .stat_rx_valid_ctrl_code_2 (stat_rx_valid_ctrl_code_2),
  .stat_rx_bad_code_2 (stat_rx_bad_code_2),
  .stat_rx_total_packets_2 (stat_rx_total_packets_2),
  .stat_rx_total_good_packets_2 (stat_rx_total_good_packets_2),
  .stat_rx_total_bytes_2 (stat_rx_total_bytes_2),
  .stat_rx_total_good_bytes_2 (stat_rx_total_good_bytes_2),
  .stat_rx_packet_small_2 (stat_rx_packet_small_2),
  .stat_rx_jabber_2 (stat_rx_jabber_2),
  .stat_rx_packet_large_2 (stat_rx_packet_large_2),
  .stat_rx_oversize_2 (stat_rx_oversize_2),
  .stat_rx_undersize_2 (stat_rx_undersize_2),
  .stat_rx_toolong_2 (stat_rx_toolong_2),
  .stat_rx_fragment_2 (stat_rx_fragment_2),
  .stat_rx_packet_64_bytes_2 (stat_rx_packet_64_bytes_2),
  .stat_rx_packet_65_127_bytes_2 (stat_rx_packet_65_127_bytes_2),
  .stat_rx_packet_128_255_bytes_2 (stat_rx_packet_128_255_bytes_2),
  .stat_rx_packet_256_511_bytes_2 (stat_rx_packet_256_511_bytes_2),
  .stat_rx_packet_512_1023_bytes_2 (stat_rx_packet_512_1023_bytes_2),
  .stat_rx_packet_1024_1518_bytes_2 (stat_rx_packet_1024_1518_bytes_2),
  .stat_rx_packet_1519_1522_bytes_2 (stat_rx_packet_1519_1522_bytes_2),
  .stat_rx_packet_1523_1548_bytes_2 (stat_rx_packet_1523_1548_bytes_2),
  .stat_rx_bad_fcs_2 (stat_rx_bad_fcs_2),
  .stat_rx_packet_bad_fcs_2 (stat_rx_packet_bad_fcs_2),
  .stat_rx_stomped_fcs_2 (stat_rx_stomped_fcs_2),
  .stat_rx_packet_1549_2047_bytes_2 (stat_rx_packet_1549_2047_bytes_2),
  .stat_rx_packet_2048_4095_bytes_2 (stat_rx_packet_2048_4095_bytes_2),
  .stat_rx_packet_4096_8191_bytes_2 (stat_rx_packet_4096_8191_bytes_2),
  .stat_rx_packet_8192_9215_bytes_2 (stat_rx_packet_8192_9215_bytes_2),
  .stat_rx_bad_preamble_2 (stat_rx_bad_preamble_2),
  .stat_rx_bad_sfd_2 (stat_rx_bad_sfd_2),
  .stat_rx_got_signal_os_2 (stat_rx_got_signal_os_2),
  .stat_rx_test_pattern_mismatch_2 (stat_rx_test_pattern_mismatch_2),
  .stat_rx_truncated_2 (stat_rx_truncated_2),
  .stat_rx_local_fault_2 (stat_rx_local_fault_2),
  .stat_rx_remote_fault_2 (stat_rx_remote_fault_2),
  .stat_rx_internal_local_fault_2 (stat_rx_internal_local_fault_2),
  .stat_rx_received_local_fault_2 (stat_rx_received_local_fault_2),
  .stat_rx_inrangeerr_2 (stat_rx_inrangeerr_2),
  
  .stat_rx_unicast_2 (stat_rx_unicast_2),
  .stat_rx_multicast_2 (stat_rx_multicast_2),
  .stat_rx_broadcast_2 (stat_rx_broadcast_2),
  .stat_rx_vlan_2 (stat_rx_vlan_2),

   .stat_rx_status_2 (stat_rx_status_2),
  .tx_reset_2 (tx_core_reset_2),

//// TX User Interface Signals
  .tx_axis_tready_2 (tx_axis_tready_2),
  .tx_axis_tvalid_2 (tx_axis_tvalid_2),
  .tx_axis_tdata_2 (tx_axis_tdata_2),
  .tx_axis_tlast_2 (tx_axis_tlast_2),
  .tx_axis_tkeep_2 (tx_axis_tkeep_2),
  .tx_axis_tuser_2 (tx_axis_tuser_2),
  .tx_unfout_2 (tx_unfout_2),
  .tx_preamblein_2 (tx_preamblein_2),

//// TX Control Signals
  .ctl_tx_test_pattern_2 (ctl_tx_test_pattern_2),
  .ctl_tx_test_pattern_enable_2 (ctl_tx_test_pattern_enable_2),
  .ctl_tx_test_pattern_select_2 (ctl_tx_test_pattern_select_2),
  .ctl_tx_data_pattern_select_2 (ctl_tx_data_pattern_select_2),
  .ctl_tx_test_pattern_seed_a_2 (ctl_tx_test_pattern_seed_a_2),
  .ctl_tx_test_pattern_seed_b_2 (ctl_tx_test_pattern_seed_b_2),
  .ctl_tx_enable_2 (ctl_tx_enable_2),
  .ctl_tx_fcs_ins_enable_2 (ctl_tx_fcs_ins_enable_2),
  .ctl_tx_ipg_value_2 (ctl_tx_ipg_value_2),
  .ctl_tx_custom_preamble_enable_2 (ctl_tx_custom_preamble_enable_2),
  .ctl_tx_send_lfi_2 (ctl_tx_send_lfi_2),
  .ctl_tx_send_rfi_2 (ctl_tx_send_rfi_2),
  .ctl_tx_send_idle_2 (ctl_tx_send_idle_2),
  .ctl_tx_ignore_fcs_2 (ctl_tx_ignore_fcs_2),


//// TX Stats Signals
  .stat_tx_total_packets_2 (stat_tx_total_packets_2),
  .stat_tx_total_bytes_2 (stat_tx_total_bytes_2),
  .stat_tx_total_good_packets_2 (stat_tx_total_good_packets_2),
  .stat_tx_total_good_bytes_2 (stat_tx_total_good_bytes_2),
  .stat_tx_packet_64_bytes_2 (stat_tx_packet_64_bytes_2),
  .stat_tx_packet_65_127_bytes_2 (stat_tx_packet_65_127_bytes_2),
  .stat_tx_packet_128_255_bytes_2 (stat_tx_packet_128_255_bytes_2),
  .stat_tx_packet_256_511_bytes_2 (stat_tx_packet_256_511_bytes_2),
  .stat_tx_packet_512_1023_bytes_2 (stat_tx_packet_512_1023_bytes_2),
  .stat_tx_packet_1024_1518_bytes_2 (stat_tx_packet_1024_1518_bytes_2),
  .stat_tx_packet_1519_1522_bytes_2 (stat_tx_packet_1519_1522_bytes_2),
  .stat_tx_packet_1523_1548_bytes_2 (stat_tx_packet_1523_1548_bytes_2),
  .stat_tx_packet_small_2 (stat_tx_packet_small_2),
  .stat_tx_packet_large_2 (stat_tx_packet_large_2),
  .stat_tx_packet_1549_2047_bytes_2 (stat_tx_packet_1549_2047_bytes_2),
  .stat_tx_packet_2048_4095_bytes_2 (stat_tx_packet_2048_4095_bytes_2),
  .stat_tx_packet_4096_8191_bytes_2 (stat_tx_packet_4096_8191_bytes_2),
  .stat_tx_packet_8192_9215_bytes_2 (stat_tx_packet_8192_9215_bytes_2),
  .stat_tx_bad_fcs_2 (stat_tx_bad_fcs_2),
  .stat_tx_frame_error_2 (stat_tx_frame_error_2),
  .stat_tx_local_fault_2 (stat_tx_local_fault_2),
  .stat_tx_unicast_2 (stat_tx_unicast_2),
  .stat_tx_multicast_2 (stat_tx_multicast_2),
  .stat_tx_broadcast_2 (stat_tx_broadcast_2),
  .stat_tx_vlan_2 (stat_tx_vlan_2),




  .rx_reset_3 (rx_core_reset_3),
//// RX User Interface Signals
  .rx_axis_tvalid_3 (rx_axis_tvalid_3),
  .rx_axis_tdata_3 (rx_axis_tdata_3),
  .rx_axis_tlast_3 (rx_axis_tlast_3),
  .rx_axis_tkeep_3 (rx_axis_tkeep_3),
  .rx_axis_tuser_3 (rx_axis_tuser_3),
  .rx_preambleout_3 (rx_preambleout_3),

//// RX Control Signals

  .ctl_rx_test_pattern_3 (ctl_rx_test_pattern_3),
  .ctl_rx_test_pattern_enable_3 (ctl_rx_test_pattern_enable_3),
  .ctl_rx_data_pattern_select_3 (ctl_rx_data_pattern_select_3),
  .ctl_rx_enable_3 (ctl_rx_enable_3),
  .ctl_rx_delete_fcs_3 (ctl_rx_delete_fcs_3),
  .ctl_rx_ignore_fcs_3 (ctl_rx_ignore_fcs_3),
  .ctl_rx_max_packet_len_3 (ctl_rx_max_packet_len_3),
  .ctl_rx_min_packet_len_3 (ctl_rx_min_packet_len_3),
  .ctl_rx_check_preamble_3 (ctl_rx_check_preamble_3),
  .ctl_rx_check_sfd_3 (ctl_rx_check_sfd_3),
  .ctl_rx_custom_preamble_enable_3 (ctl_rx_custom_preamble_enable_3),
  .ctl_rx_process_lfi_3 (ctl_rx_process_lfi_3),
  .ctl_rx_force_resync_3 (ctl_rx_force_resync_3),



//// RX Stats Signals
  .stat_rx_block_lock_3 (stat_rx_block_lock_3),
  .stat_rx_framing_err_valid_3 (stat_rx_framing_err_valid_3),
  .stat_rx_framing_err_3 (stat_rx_framing_err_3),
  .stat_rx_hi_ber_3 (stat_rx_hi_ber_3),
  .stat_rx_valid_ctrl_code_3 (stat_rx_valid_ctrl_code_3),
  .stat_rx_bad_code_3 (stat_rx_bad_code_3),
  .stat_rx_total_packets_3 (stat_rx_total_packets_3),
  .stat_rx_total_good_packets_3 (stat_rx_total_good_packets_3),
  .stat_rx_total_bytes_3 (stat_rx_total_bytes_3),
  .stat_rx_total_good_bytes_3 (stat_rx_total_good_bytes_3),
  .stat_rx_packet_small_3 (stat_rx_packet_small_3),
  .stat_rx_jabber_3 (stat_rx_jabber_3),
  .stat_rx_packet_large_3 (stat_rx_packet_large_3),
  .stat_rx_oversize_3 (stat_rx_oversize_3),
  .stat_rx_undersize_3 (stat_rx_undersize_3),
  .stat_rx_toolong_3 (stat_rx_toolong_3),
  .stat_rx_fragment_3 (stat_rx_fragment_3),
  .stat_rx_packet_64_bytes_3 (stat_rx_packet_64_bytes_3),
  .stat_rx_packet_65_127_bytes_3 (stat_rx_packet_65_127_bytes_3),
  .stat_rx_packet_128_255_bytes_3 (stat_rx_packet_128_255_bytes_3),
  .stat_rx_packet_256_511_bytes_3 (stat_rx_packet_256_511_bytes_3),
  .stat_rx_packet_512_1023_bytes_3 (stat_rx_packet_512_1023_bytes_3),
  .stat_rx_packet_1024_1518_bytes_3 (stat_rx_packet_1024_1518_bytes_3),
  .stat_rx_packet_1519_1522_bytes_3 (stat_rx_packet_1519_1522_bytes_3),
  .stat_rx_packet_1523_1548_bytes_3 (stat_rx_packet_1523_1548_bytes_3),
  .stat_rx_bad_fcs_3 (stat_rx_bad_fcs_3),
  .stat_rx_packet_bad_fcs_3 (stat_rx_packet_bad_fcs_3),
  .stat_rx_stomped_fcs_3 (stat_rx_stomped_fcs_3),
  .stat_rx_packet_1549_2047_bytes_3 (stat_rx_packet_1549_2047_bytes_3),
  .stat_rx_packet_2048_4095_bytes_3 (stat_rx_packet_2048_4095_bytes_3),
  .stat_rx_packet_4096_8191_bytes_3 (stat_rx_packet_4096_8191_bytes_3),
  .stat_rx_packet_8192_9215_bytes_3 (stat_rx_packet_8192_9215_bytes_3),
  .stat_rx_bad_preamble_3 (stat_rx_bad_preamble_3),
  .stat_rx_bad_sfd_3 (stat_rx_bad_sfd_3),
  .stat_rx_got_signal_os_3 (stat_rx_got_signal_os_3),
  .stat_rx_test_pattern_mismatch_3 (stat_rx_test_pattern_mismatch_3),
  .stat_rx_truncated_3 (stat_rx_truncated_3),
  .stat_rx_local_fault_3 (stat_rx_local_fault_3),
  .stat_rx_remote_fault_3 (stat_rx_remote_fault_3),
  .stat_rx_internal_local_fault_3 (stat_rx_internal_local_fault_3),
  .stat_rx_received_local_fault_3 (stat_rx_received_local_fault_3),
  .stat_rx_inrangeerr_3 (stat_rx_inrangeerr_3),
  
  .stat_rx_unicast_3 (stat_rx_unicast_3),
  .stat_rx_multicast_3 (stat_rx_multicast_3),
  .stat_rx_broadcast_3 (stat_rx_broadcast_3),
  .stat_rx_vlan_3 (stat_rx_vlan_3),

   .stat_rx_status_3 (stat_rx_status_3),
  .tx_reset_3 (tx_core_reset_3),

//// TX User Interface Signals
  .tx_axis_tready_3 (tx_axis_tready_3),
  .tx_axis_tvalid_3 (tx_axis_tvalid_3),
  .tx_axis_tdata_3 (tx_axis_tdata_3),
  .tx_axis_tlast_3 (tx_axis_tlast_3),
  .tx_axis_tkeep_3 (tx_axis_tkeep_3),
  .tx_axis_tuser_3 (tx_axis_tuser_3),
  .tx_unfout_3 (tx_unfout_3),
  .tx_preamblein_3 (tx_preamblein_3),

//// TX Control Signals
  .ctl_tx_test_pattern_3 (ctl_tx_test_pattern_3),
  .ctl_tx_test_pattern_enable_3 (ctl_tx_test_pattern_enable_3),
  .ctl_tx_test_pattern_select_3 (ctl_tx_test_pattern_select_3),
  .ctl_tx_data_pattern_select_3 (ctl_tx_data_pattern_select_3),
  .ctl_tx_test_pattern_seed_a_3 (ctl_tx_test_pattern_seed_a_3),
  .ctl_tx_test_pattern_seed_b_3 (ctl_tx_test_pattern_seed_b_3),
  .ctl_tx_enable_3 (ctl_tx_enable_3),
  .ctl_tx_fcs_ins_enable_3 (ctl_tx_fcs_ins_enable_3),
  .ctl_tx_ipg_value_3 (ctl_tx_ipg_value_3),
  .ctl_tx_custom_preamble_enable_3 (ctl_tx_custom_preamble_enable_3),
  .ctl_tx_send_lfi_3 (ctl_tx_send_lfi_3),
  .ctl_tx_send_rfi_3 (ctl_tx_send_rfi_3),
  .ctl_tx_send_idle_3 (ctl_tx_send_idle_3),
  .ctl_tx_ignore_fcs_3 (ctl_tx_ignore_fcs_3),


//// TX Stats Signals
  .stat_tx_total_packets_3 (stat_tx_total_packets_3),
  .stat_tx_total_bytes_3 (stat_tx_total_bytes_3),
  .stat_tx_total_good_packets_3 (stat_tx_total_good_packets_3),
  .stat_tx_total_good_bytes_3 (stat_tx_total_good_bytes_3),
  .stat_tx_packet_64_bytes_3 (stat_tx_packet_64_bytes_3),
  .stat_tx_packet_65_127_bytes_3 (stat_tx_packet_65_127_bytes_3),
  .stat_tx_packet_128_255_bytes_3 (stat_tx_packet_128_255_bytes_3),
  .stat_tx_packet_256_511_bytes_3 (stat_tx_packet_256_511_bytes_3),
  .stat_tx_packet_512_1023_bytes_3 (stat_tx_packet_512_1023_bytes_3),
  .stat_tx_packet_1024_1518_bytes_3 (stat_tx_packet_1024_1518_bytes_3),
  .stat_tx_packet_1519_1522_bytes_3 (stat_tx_packet_1519_1522_bytes_3),
  .stat_tx_packet_1523_1548_bytes_3 (stat_tx_packet_1523_1548_bytes_3),
  .stat_tx_packet_small_3 (stat_tx_packet_small_3),
  .stat_tx_packet_large_3 (stat_tx_packet_large_3),
  .stat_tx_packet_1549_2047_bytes_3 (stat_tx_packet_1549_2047_bytes_3),
  .stat_tx_packet_2048_4095_bytes_3 (stat_tx_packet_2048_4095_bytes_3),
  .stat_tx_packet_4096_8191_bytes_3 (stat_tx_packet_4096_8191_bytes_3),
  .stat_tx_packet_8192_9215_bytes_3 (stat_tx_packet_8192_9215_bytes_3),
  .stat_tx_bad_fcs_3 (stat_tx_bad_fcs_3),
  .stat_tx_frame_error_3 (stat_tx_frame_error_3),
  .stat_tx_local_fault_3 (stat_tx_local_fault_3),
  .stat_tx_unicast_3 (stat_tx_unicast_3),
  .stat_tx_multicast_3 (stat_tx_multicast_3),
  .stat_tx_broadcast_3 (stat_tx_broadcast_3),
  .stat_tx_vlan_3 (stat_tx_vlan_3),




  .rx_core_clk_0 (rx_core_clk_0),
  .rx_serdes_reset_0 (rx_serdes_reset_0),
  .tx_core_clk_0 (tx_core_clk_0),
  .rx_serdes_clk_0 (rx_serdes_clk_0),
  .rxgearboxslip_in_0 (rxgearboxslip_in_0),
  .rxdatavalid_out_0 (rxdatavalid_out_0),
  .rxheader_out_0 (rxheader_out_0),
  .rxheadervalid_out_0 (rxheadervalid_out_0),
  .rx_serdes_data_out_0 (rx_serdes_data_out_0),
  .tx_serdes_data_in_0 (tx_serdes_data_in_0),
  .txheader_in_0 (txheader_in_0),
  .rx_core_clk_1 (rx_core_clk_1),
  .rx_serdes_reset_1 (rx_serdes_reset_1),
  .tx_core_clk_1 (tx_core_clk_1),
  .rx_serdes_clk_1 (rx_serdes_clk_1),
  .rxgearboxslip_in_1 (rxgearboxslip_in_1),
  .rxdatavalid_out_1 (rxdatavalid_out_1),
  .rxheader_out_1 (rxheader_out_1),
  .rxheadervalid_out_1 (rxheadervalid_out_1),
  .rx_serdes_data_out_1 (rx_serdes_data_out_1),
  .tx_serdes_data_in_1 (tx_serdes_data_in_1),
  .txheader_in_1 (txheader_in_1),
  .rx_core_clk_2 (rx_core_clk_2),
  .rx_serdes_reset_2 (rx_serdes_reset_2),
  .tx_core_clk_2 (tx_core_clk_2),
  .rx_serdes_clk_2 (rx_serdes_clk_2),
  .rxgearboxslip_in_2 (rxgearboxslip_in_2),
  .rxdatavalid_out_2 (rxdatavalid_out_2),
  .rxheader_out_2 (rxheader_out_2),
  .rxheadervalid_out_2 (rxheadervalid_out_2),
  .rx_serdes_data_out_2 (rx_serdes_data_out_2),
  .tx_serdes_data_in_2 (tx_serdes_data_in_2),
  .txheader_in_2 (txheader_in_2),
  .rx_core_clk_3 (rx_core_clk_3),
  .rx_serdes_reset_3 (rx_serdes_reset_3),
  .tx_core_clk_3 (tx_core_clk_3),
  .rx_serdes_clk_3 (rx_serdes_clk_3),
  .rxgearboxslip_in_3 (rxgearboxslip_in_3),
  .rxdatavalid_out_3 (rxdatavalid_out_3),
  .rxheader_out_3 (rxheader_out_3),
  .rxheadervalid_out_3 (rxheadervalid_out_3),
  .rx_serdes_data_out_3 (rx_serdes_data_out_3),
  .tx_serdes_data_in_3 (tx_serdes_data_in_3),
  .txheader_in_3 (txheader_in_3)
);


  wire gt_rxp_int_0;
  wire gt_rxn_int_0;
  wire gt_txp_int_0;
  wire gt_txn_int_0;

  assign gt_rxp_int_0  =  gt_rxp_in_0;
  assign gt_rxn_int_0  =  gt_rxn_in_0;
  assign gt_txp_out_0  =  gt_txp_int_0;
  assign gt_txn_out_0  =  gt_txn_int_0;


  wire gt_rxp_int_1;
  wire gt_rxn_int_1;
  wire gt_txp_int_1;
  wire gt_txn_int_1;

  assign gt_rxp_int_1  =  gt_rxp_in_1;
  assign gt_rxn_int_1  =  gt_rxn_in_1;
  assign gt_txp_out_1  =  gt_txp_int_1;
  assign gt_txn_out_1  =  gt_txn_int_1;


  wire gt_rxp_int_2;
  wire gt_rxn_int_2;
  wire gt_txp_int_2;
  wire gt_txn_int_2;

  assign gt_rxp_int_2  =  gt_rxp_in_2;
  assign gt_rxn_int_2  =  gt_rxn_in_2;
  assign gt_txp_out_2  =  gt_txp_int_2;
  assign gt_txn_out_2  =  gt_txn_int_2;


  wire gt_rxp_int_3;
  wire gt_rxn_int_3;
  wire gt_txp_int_3;
  wire gt_txn_int_3;

  assign gt_rxp_int_3  =  gt_rxp_in_3;
  assign gt_rxn_int_3  =  gt_rxn_in_3;
  assign gt_txp_out_3  =  gt_txp_int_3;
  assign gt_txn_out_3  =  gt_txn_int_3;


xxv_ethernet_0_gt_wrapper_0 i_xxv_ethernet_0_gt_wrapper_0 (
  .gt_rxp_in (gt_rxp_int_0),
  .gt_rxn_in (gt_rxn_int_0),
  .gt_txp_out (gt_txp_int_0),
  .gt_txn_out (gt_txn_int_0),
  .tx_clk_out (tx_clk_out_0),
  .rx_clk_out (rx_clk_out_0),
  .gt_loopback_in (gt_loopback_in_0),
  .gtwiz_reset_all (gtwiz_reset_all_0),
  .rxrecclkout (rxrecclkout_0),

  .gtwiz_reset_tx_datapath (gtwiz_reset_tx_datapath_out_0),
  .gtwiz_reset_rx_datapath (gtwiz_reset_rx_datapath_out_0),
  .gtpowergood_out (gtpowergood_out_0),

////GT Transceiver debug interface ports
  .gt_dmonitorout (gt_dmonitorout_0),
  .gt_eyescandataerror (gt_eyescandataerror_0),
  .gt_eyescanreset (gt_eyescanreset_0),
  .gt_eyescantrigger (gt_eyescantrigger_0),
  .gt_pcsrsvdin (gt_pcsrsvdin_0),
  .gt_rxbufreset (gt_rxbufreset_0),
  .gt_rxbufstatus (gt_rxbufstatus_0),
  .gt_rxcdrhold (gt_rxcdrhold_0),
  .gt_rxcommadeten (gt_rxcommadeten_0),
  .gt_rxdfeagchold (gt_rxdfeagchold_0),
  .gt_rxdfelpmreset (gt_rxdfelpmreset_0),
  .gt_rxlatclk (gt_rxlatclk_0),
  .gt_rxlpmen (gt_rxlpmen_0),
  .gt_rxpcsreset (gt_rxpcsreset_0),
  .gt_rxpmareset (gt_rxpmareset_0),
  .gt_rxpolarity (gt_rxpolarity_0),
  .gt_rxprbscntreset (gt_rxprbscntreset_0),
  .gt_rxprbserr (gt_rxprbserr_0),
  .gt_rxprbssel (gt_rxprbssel_0),
  .gt_rxrate (gt_rxrate_0),
  .gt_rxslide_in (gt_rxslide_in_0),
  .gt_rxstartofseq (gt_rxstartofseq_0),
  .gt_txbufstatus (gt_txbufstatus_0),
  .gt_txdiffctrl (gt_txdiffctrl_0),
  .gt_txinhibit (gt_txinhibit_0),
  .gt_txlatclk (gt_txlatclk_0),
  .gt_txmaincursor (gt_txmaincursor_0),
  .gt_txpcsreset (gt_txpcsreset_0),
  .gt_txpmareset (gt_txpmareset_0),
  .gt_txpolarity (gt_txpolarity_0),
  .gt_txpostcursor (gt_txpostcursor_0),
  .gt_txprbsforceerr (gt_txprbsforceerr_0),
  .gt_txelecidle (gt_txelecidle_0),
  .gt_txprbssel (gt_txprbssel_0),
  .gt_txprecursor (gt_txprecursor_0),
  .txoutclksel_in (txoutclksel_in_0),
  .rxoutclksel_in (rxoutclksel_in_0),

////GT DRP ports 
  .gt_drpclk (gt_drpclk_0),
  .gt_drpdo (gt_drpdo_0),
  .gt_drprdy (gt_drprdy_0),
  .gt_drpen (gt_drpen_0),
  .gt_drpwe (gt_drpwe_0),
  .gt_drpaddr (gt_drpaddr_0),
  .gt_drpdi (gt_drpdi_0),


  .gtwiz_reset_tx_done (gtwiz_reset_tx_done_0),
  .gtwiz_reset_rx_done (gtwiz_reset_rx_done_0),
  .rx_serdes_clk (rx_serdes_clk_0),
  .tx_core_clk (tx_core_clk_0),

  .rxgearboxslip_in (rxgearboxslip_in_0),
  .rxdatavalid_out (rxdatavalid_out_0),
  .rxheader_out (rxheader_out_0),
  .rxheadervalid_out (rxheadervalid_out_0),
  .rx_serdes_data_out (rx_serdes_data_out_0),
  .tx_serdes_data_in (tx_serdes_data_in_0),
  .txheader_in (txheader_in_0),

////  Ports present when shared logic is implemented outside core
  .qpll0clk_in (qpll0outclk),
  .qpll0refclk_in (qpll0outrefclk),
  .qpll1clk_in (qpll1outclk),
  .qpll1refclk_in (qpll1outrefclk),
  .gtwiz_reset_qpll0lock_in (qpll0lock),
  .gtwiz_reset_qpll0reset_out (gtwiz_reset_qpll0reset_out_0),
  .gtwiz_reset_qpll1lock_in (qpll1lock),
  .gtwiz_reset_qpll1reset_out (gtwiz_reset_qpll1reset_out_0),
  .sys_reset (sys_reset),
  .dclk (dclk)

);
xxv_ethernet_0_gt_wrapper_1 i_xxv_ethernet_0_gt_wrapper_1 (
  .gt_rxp_in (gt_rxp_int_1),
  .gt_rxn_in (gt_rxn_int_1),
  .gt_txp_out (gt_txp_int_1),
  .gt_txn_out (gt_txn_int_1),
  .tx_clk_out (tx_clk_out_1),
  .rx_clk_out (rx_clk_out_1),
  .gt_loopback_in (gt_loopback_in_1),
  .gtwiz_reset_all (gtwiz_reset_all_1),
  .rxrecclkout (rxrecclkout_1),

  .gtwiz_reset_tx_datapath (gtwiz_reset_tx_datapath_out_1),
  .gtwiz_reset_rx_datapath (gtwiz_reset_rx_datapath_out_1),
  .gtpowergood_out (gtpowergood_out_1),

////GT Transceiver debug interface ports
  .gt_dmonitorout (gt_dmonitorout_1),
  .gt_eyescandataerror (gt_eyescandataerror_1),
  .gt_eyescanreset (gt_eyescanreset_1),
  .gt_eyescantrigger (gt_eyescantrigger_1),
  .gt_pcsrsvdin (gt_pcsrsvdin_1),
  .gt_rxbufreset (gt_rxbufreset_1),
  .gt_rxbufstatus (gt_rxbufstatus_1),
  .gt_rxcdrhold (gt_rxcdrhold_1),
  .gt_rxcommadeten (gt_rxcommadeten_1),
  .gt_rxdfeagchold (gt_rxdfeagchold_1),
  .gt_rxdfelpmreset (gt_rxdfelpmreset_1),
  .gt_rxlatclk (gt_rxlatclk_1),
  .gt_rxlpmen (gt_rxlpmen_1),
  .gt_rxpcsreset (gt_rxpcsreset_1),
  .gt_rxpmareset (gt_rxpmareset_1),
  .gt_rxpolarity (gt_rxpolarity_1),
  .gt_rxprbscntreset (gt_rxprbscntreset_1),
  .gt_rxprbserr (gt_rxprbserr_1),
  .gt_rxprbssel (gt_rxprbssel_1),
  .gt_rxrate (gt_rxrate_1),
  .gt_rxslide_in (gt_rxslide_in_1),
  .gt_rxstartofseq (gt_rxstartofseq_1),
  .gt_txbufstatus (gt_txbufstatus_1),
  .gt_txdiffctrl (gt_txdiffctrl_1),
  .gt_txinhibit (gt_txinhibit_1),
  .gt_txlatclk (gt_txlatclk_1),
  .gt_txmaincursor (gt_txmaincursor_1),
  .gt_txpcsreset (gt_txpcsreset_1),
  .gt_txpmareset (gt_txpmareset_1),
  .gt_txpolarity (gt_txpolarity_1),
  .gt_txpostcursor (gt_txpostcursor_1),
  .gt_txprbsforceerr (gt_txprbsforceerr_1),
  .gt_txelecidle (gt_txelecidle_1),
  .gt_txprbssel (gt_txprbssel_1),
  .gt_txprecursor (gt_txprecursor_1),
  .txoutclksel_in (txoutclksel_in_1),
  .rxoutclksel_in (rxoutclksel_in_1),

////GT DRP ports 
  .gt_drpclk (gt_drpclk_1),
  .gt_drpdo (gt_drpdo_1),
  .gt_drprdy (gt_drprdy_1),
  .gt_drpen (gt_drpen_1),
  .gt_drpwe (gt_drpwe_1),
  .gt_drpaddr (gt_drpaddr_1),
  .gt_drpdi (gt_drpdi_1),


  .gtwiz_reset_tx_done (gtwiz_reset_tx_done_1),
  .gtwiz_reset_rx_done (gtwiz_reset_rx_done_1),
  .rx_serdes_clk (rx_serdes_clk_1),
  .tx_core_clk (tx_core_clk_1),

  .rxgearboxslip_in (rxgearboxslip_in_1),
  .rxdatavalid_out (rxdatavalid_out_1),
  .rxheader_out (rxheader_out_1),
  .rxheadervalid_out (rxheadervalid_out_1),
  .rx_serdes_data_out (rx_serdes_data_out_1),
  .tx_serdes_data_in (tx_serdes_data_in_1),
  .txheader_in (txheader_in_1),

////  Ports present when shared logic is implemented outside core
  .qpll0clk_in (qpll0outclk),
  .qpll0refclk_in (qpll0outrefclk),
  .qpll1clk_in (qpll1outclk),
  .qpll1refclk_in (qpll1outrefclk),
  .gtwiz_reset_qpll0lock_in (qpll0lock),
  .gtwiz_reset_qpll0reset_out (gtwiz_reset_qpll0reset_out_1),
  .gtwiz_reset_qpll1lock_in (qpll1lock),
  .gtwiz_reset_qpll1reset_out (gtwiz_reset_qpll1reset_out_1),
  .sys_reset (sys_reset),
  .dclk (dclk)

);
xxv_ethernet_0_gt_wrapper_2 i_xxv_ethernet_0_gt_wrapper_2 (
  .gt_rxp_in (gt_rxp_int_2),
  .gt_rxn_in (gt_rxn_int_2),
  .gt_txp_out (gt_txp_int_2),
  .gt_txn_out (gt_txn_int_2),
  .tx_clk_out (tx_clk_out_2),
  .rx_clk_out (rx_clk_out_2),
  .gt_loopback_in (gt_loopback_in_2),
  .gtwiz_reset_all (gtwiz_reset_all_2),
  .rxrecclkout (rxrecclkout_2),

  .gtwiz_reset_tx_datapath (gtwiz_reset_tx_datapath_out_2),
  .gtwiz_reset_rx_datapath (gtwiz_reset_rx_datapath_out_2),
  .gtpowergood_out (gtpowergood_out_2),

////GT Transceiver debug interface ports
  .gt_dmonitorout (gt_dmonitorout_2),
  .gt_eyescandataerror (gt_eyescandataerror_2),
  .gt_eyescanreset (gt_eyescanreset_2),
  .gt_eyescantrigger (gt_eyescantrigger_2),
  .gt_pcsrsvdin (gt_pcsrsvdin_2),
  .gt_rxbufreset (gt_rxbufreset_2),
  .gt_rxbufstatus (gt_rxbufstatus_2),
  .gt_rxcdrhold (gt_rxcdrhold_2),
  .gt_rxcommadeten (gt_rxcommadeten_2),
  .gt_rxdfeagchold (gt_rxdfeagchold_2),
  .gt_rxdfelpmreset (gt_rxdfelpmreset_2),
  .gt_rxlatclk (gt_rxlatclk_2),
  .gt_rxlpmen (gt_rxlpmen_2),
  .gt_rxpcsreset (gt_rxpcsreset_2),
  .gt_rxpmareset (gt_rxpmareset_2),
  .gt_rxpolarity (gt_rxpolarity_2),
  .gt_rxprbscntreset (gt_rxprbscntreset_2),
  .gt_rxprbserr (gt_rxprbserr_2),
  .gt_rxprbssel (gt_rxprbssel_2),
  .gt_rxrate (gt_rxrate_2),
  .gt_rxslide_in (gt_rxslide_in_2),
  .gt_rxstartofseq (gt_rxstartofseq_2),
  .gt_txbufstatus (gt_txbufstatus_2),
  .gt_txdiffctrl (gt_txdiffctrl_2),
  .gt_txinhibit (gt_txinhibit_2),
  .gt_txlatclk (gt_txlatclk_2),
  .gt_txmaincursor (gt_txmaincursor_2),
  .gt_txpcsreset (gt_txpcsreset_2),
  .gt_txpmareset (gt_txpmareset_2),
  .gt_txpolarity (gt_txpolarity_2),
  .gt_txpostcursor (gt_txpostcursor_2),
  .gt_txprbsforceerr (gt_txprbsforceerr_2),
  .gt_txelecidle (gt_txelecidle_2),
  .gt_txprbssel (gt_txprbssel_2),
  .gt_txprecursor (gt_txprecursor_2),
  .txoutclksel_in (txoutclksel_in_2),
  .rxoutclksel_in (rxoutclksel_in_2),

////GT DRP ports 
  .gt_drpclk (gt_drpclk_2),
  .gt_drpdo (gt_drpdo_2),
  .gt_drprdy (gt_drprdy_2),
  .gt_drpen (gt_drpen_2),
  .gt_drpwe (gt_drpwe_2),
  .gt_drpaddr (gt_drpaddr_2),
  .gt_drpdi (gt_drpdi_2),


  .gtwiz_reset_tx_done (gtwiz_reset_tx_done_2),
  .gtwiz_reset_rx_done (gtwiz_reset_rx_done_2),
  .rx_serdes_clk (rx_serdes_clk_2),
  .tx_core_clk (tx_core_clk_2),

  .rxgearboxslip_in (rxgearboxslip_in_2),
  .rxdatavalid_out (rxdatavalid_out_2),
  .rxheader_out (rxheader_out_2),
  .rxheadervalid_out (rxheadervalid_out_2),
  .rx_serdes_data_out (rx_serdes_data_out_2),
  .tx_serdes_data_in (tx_serdes_data_in_2),
  .txheader_in (txheader_in_2),

////  Ports present when shared logic is implemented outside core
  .qpll0clk_in (qpll0outclk),
  .qpll0refclk_in (qpll0outrefclk),
  .qpll1clk_in (qpll1outclk),
  .qpll1refclk_in (qpll1outrefclk),
  .gtwiz_reset_qpll0lock_in (qpll0lock),
  .gtwiz_reset_qpll0reset_out (gtwiz_reset_qpll0reset_out_2),
  .gtwiz_reset_qpll1lock_in (qpll1lock),
  .gtwiz_reset_qpll1reset_out (gtwiz_reset_qpll1reset_out_2),
  .sys_reset (sys_reset),
  .dclk (dclk)

);
xxv_ethernet_0_gt_wrapper_3 i_xxv_ethernet_0_gt_wrapper_3 (
  .gt_rxp_in (gt_rxp_int_3),
  .gt_rxn_in (gt_rxn_int_3),
  .gt_txp_out (gt_txp_int_3),
  .gt_txn_out (gt_txn_int_3),
  .tx_clk_out (tx_clk_out_3),
  .rx_clk_out (rx_clk_out_3),
  .gt_loopback_in (gt_loopback_in_3),
  .gtwiz_reset_all (gtwiz_reset_all_3),
  .rxrecclkout (rxrecclkout_3),

  .gtwiz_reset_tx_datapath (gtwiz_reset_tx_datapath_out_3),
  .gtwiz_reset_rx_datapath (gtwiz_reset_rx_datapath_out_3),
  .gtpowergood_out (gtpowergood_out_3),

////GT Transceiver debug interface ports
  .gt_dmonitorout (gt_dmonitorout_3),
  .gt_eyescandataerror (gt_eyescandataerror_3),
  .gt_eyescanreset (gt_eyescanreset_3),
  .gt_eyescantrigger (gt_eyescantrigger_3),
  .gt_pcsrsvdin (gt_pcsrsvdin_3),
  .gt_rxbufreset (gt_rxbufreset_3),
  .gt_rxbufstatus (gt_rxbufstatus_3),
  .gt_rxcdrhold (gt_rxcdrhold_3),
  .gt_rxcommadeten (gt_rxcommadeten_3),
  .gt_rxdfeagchold (gt_rxdfeagchold_3),
  .gt_rxdfelpmreset (gt_rxdfelpmreset_3),
  .gt_rxlatclk (gt_rxlatclk_3),
  .gt_rxlpmen (gt_rxlpmen_3),
  .gt_rxpcsreset (gt_rxpcsreset_3),
  .gt_rxpmareset (gt_rxpmareset_3),
  .gt_rxpolarity (gt_rxpolarity_3),
  .gt_rxprbscntreset (gt_rxprbscntreset_3),
  .gt_rxprbserr (gt_rxprbserr_3),
  .gt_rxprbssel (gt_rxprbssel_3),
  .gt_rxrate (gt_rxrate_3),
  .gt_rxslide_in (gt_rxslide_in_3),
  .gt_rxstartofseq (gt_rxstartofseq_3),
  .gt_txbufstatus (gt_txbufstatus_3),
  .gt_txdiffctrl (gt_txdiffctrl_3),
  .gt_txinhibit (gt_txinhibit_3),
  .gt_txlatclk (gt_txlatclk_3),
  .gt_txmaincursor (gt_txmaincursor_3),
  .gt_txpcsreset (gt_txpcsreset_3),
  .gt_txpmareset (gt_txpmareset_3),
  .gt_txpolarity (gt_txpolarity_3),
  .gt_txpostcursor (gt_txpostcursor_3),
  .gt_txprbsforceerr (gt_txprbsforceerr_3),
  .gt_txelecidle (gt_txelecidle_3),
  .gt_txprbssel (gt_txprbssel_3),
  .gt_txprecursor (gt_txprecursor_3),
  .txoutclksel_in (txoutclksel_in_3),
  .rxoutclksel_in (rxoutclksel_in_3),

////GT DRP ports 
  .gt_drpclk (gt_drpclk_3),
  .gt_drpdo (gt_drpdo_3),
  .gt_drprdy (gt_drprdy_3),
  .gt_drpen (gt_drpen_3),
  .gt_drpwe (gt_drpwe_3),
  .gt_drpaddr (gt_drpaddr_3),
  .gt_drpdi (gt_drpdi_3),


  .gtwiz_reset_tx_done (gtwiz_reset_tx_done_3),
  .gtwiz_reset_rx_done (gtwiz_reset_rx_done_3),
  .rx_serdes_clk (rx_serdes_clk_3),
  .tx_core_clk (tx_core_clk_3),

  .rxgearboxslip_in (rxgearboxslip_in_3),
  .rxdatavalid_out (rxdatavalid_out_3),
  .rxheader_out (rxheader_out_3),
  .rxheadervalid_out (rxheadervalid_out_3),
  .rx_serdes_data_out (rx_serdes_data_out_3),
  .tx_serdes_data_in (tx_serdes_data_in_3),
  .txheader_in (txheader_in_3),

////  Ports present when shared logic is implemented outside core
  .qpll0clk_in (qpll0outclk),
  .qpll0refclk_in (qpll0outrefclk),
  .qpll1clk_in (qpll1outclk),
  .qpll1refclk_in (qpll1outrefclk),
  .gtwiz_reset_qpll0lock_in (qpll0lock),
  .gtwiz_reset_qpll0reset_out (gtwiz_reset_qpll0reset_out_3),
  .gtwiz_reset_qpll1lock_in (qpll1lock),
  .gtwiz_reset_qpll1reset_out (gtwiz_reset_qpll1reset_out_3),
  .sys_reset (sys_reset),
  .dclk (dclk)

);


xxv_ethernet_0_sharedlogic_wrapper i_xxv_ethernet_0_sharedlogic_wrapper
(
  .gt_refclk_p (gt_refclk_p),
  .gt_refclk_n (gt_refclk_n),
  .gt_refclk_out (gt_refclk_out),
  .qpll0reset (qpll0reset_out),
  .qpll0lock (qpll0lock),
  .qpll0outclk (qpll0outclk),
  .qpll0outrefclk (qpll0outrefclk),
  .qpll1reset (qpll1reset_out),
  .qpll1lock (qpll1lock),
  .qpll1outclk (qpll1outclk),
  .qpll1outrefclk (qpll1outrefclk),
  .gtwiz_reset_tx_datapath_0 (gtwiz_reset_tx_datapath_0),
  .gtwiz_reset_rx_datapath_0 (gtwiz_reset_rx_datapath_0),
  .gt_txusrclk2_0 (tx_clk_out_0),
  .gt_rxusrclk2_0 (rx_clk_out_0),
  .rx_core_clk_0 (rx_core_clk_0),
  .gt_tx_reset_in_0 (gtwiz_reset_tx_done_0),
  .gt_rx_reset_in_0 (gtwiz_reset_rx_done_0),
  .tx_core_reset_in_0 (tx_reset_0),
  .rx_core_reset_in_0 (rx_reset_0),
  .tx_core_reset_out_0 (tx_core_reset_0),
  .rx_core_reset_out_0 (rx_core_reset_0),
  .rx_serdes_reset_out_0 (rx_serdes_reset_0),
  .usr_tx_reset_0 (user_tx_reset_0),
  .usr_rx_reset_0 (user_rx_reset_0),
  .gtwiz_reset_all_0 (gtwiz_reset_all_0),
  .gtwiz_reset_tx_datapath_out_0 (gtwiz_reset_tx_datapath_out_0),
  .gtwiz_reset_rx_datapath_out_0 (gtwiz_reset_rx_datapath_out_0),
  .gtwiz_reset_tx_datapath_1 (gtwiz_reset_tx_datapath_1),
  .gtwiz_reset_rx_datapath_1 (gtwiz_reset_rx_datapath_1),
  .gt_txusrclk2_1 (tx_clk_out_1),
  .gt_rxusrclk2_1 (rx_clk_out_1),
  .rx_core_clk_1 (rx_core_clk_1),
  .gt_tx_reset_in_1 (gtwiz_reset_tx_done_1),
  .gt_rx_reset_in_1 (gtwiz_reset_rx_done_1),
  .tx_core_reset_in_1 (tx_reset_1),
  .rx_core_reset_in_1 (rx_reset_1),
  .tx_core_reset_out_1 (tx_core_reset_1),
  .rx_core_reset_out_1 (rx_core_reset_1),
  .rx_serdes_reset_out_1 (rx_serdes_reset_1),
  .usr_tx_reset_1 (user_tx_reset_1),
  .usr_rx_reset_1 (user_rx_reset_1),
  .gtwiz_reset_all_1 (gtwiz_reset_all_1),
  .gtwiz_reset_tx_datapath_out_1 (gtwiz_reset_tx_datapath_out_1),
  .gtwiz_reset_rx_datapath_out_1 (gtwiz_reset_rx_datapath_out_1),
  .gtwiz_reset_tx_datapath_2 (gtwiz_reset_tx_datapath_2),
  .gtwiz_reset_rx_datapath_2 (gtwiz_reset_rx_datapath_2),
  .gt_txusrclk2_2 (tx_clk_out_2),
  .gt_rxusrclk2_2 (rx_clk_out_2),
  .rx_core_clk_2 (rx_core_clk_2),
  .gt_tx_reset_in_2 (gtwiz_reset_tx_done_2),
  .gt_rx_reset_in_2 (gtwiz_reset_rx_done_2),
  .tx_core_reset_in_2 (tx_reset_2),
  .rx_core_reset_in_2 (rx_reset_2),
  .tx_core_reset_out_2 (tx_core_reset_2),
  .rx_core_reset_out_2 (rx_core_reset_2),
  .rx_serdes_reset_out_2 (rx_serdes_reset_2),
  .usr_tx_reset_2 (user_tx_reset_2),
  .usr_rx_reset_2 (user_rx_reset_2),
  .gtwiz_reset_all_2 (gtwiz_reset_all_2),
  .gtwiz_reset_tx_datapath_out_2 (gtwiz_reset_tx_datapath_out_2),
  .gtwiz_reset_rx_datapath_out_2 (gtwiz_reset_rx_datapath_out_2),
  .gtwiz_reset_tx_datapath_3 (gtwiz_reset_tx_datapath_3),
  .gtwiz_reset_rx_datapath_3 (gtwiz_reset_rx_datapath_3),
  .gt_txusrclk2_3 (tx_clk_out_3),
  .gt_rxusrclk2_3 (rx_clk_out_3),
  .rx_core_clk_3 (rx_core_clk_3),
  .gt_tx_reset_in_3 (gtwiz_reset_tx_done_3),
  .gt_rx_reset_in_3 (gtwiz_reset_rx_done_3),
  .tx_core_reset_in_3 (tx_reset_3),
  .rx_core_reset_in_3 (rx_reset_3),
  .tx_core_reset_out_3 (tx_core_reset_3),
  .rx_core_reset_out_3 (rx_core_reset_3),
  .rx_serdes_reset_out_3 (rx_serdes_reset_3),
  .usr_tx_reset_3 (user_tx_reset_3),
  .usr_rx_reset_3 (user_rx_reset_3),
  .gtwiz_reset_all_3 (gtwiz_reset_all_3),
  .gtwiz_reset_tx_datapath_out_3 (gtwiz_reset_tx_datapath_out_3),
  .gtwiz_reset_rx_datapath_out_3 (gtwiz_reset_rx_datapath_out_3),
  .sys_reset(sys_reset),
  .dclk(dclk)
);


endmodule



