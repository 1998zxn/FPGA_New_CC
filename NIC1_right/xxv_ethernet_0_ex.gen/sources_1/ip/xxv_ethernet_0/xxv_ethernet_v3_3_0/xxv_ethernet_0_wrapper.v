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
module xxv_ethernet_0_wrapper

#(
    ////PHYSICAL LAYER OPTIONS
    parameter   C_LINE_RATE                      =   25,
    parameter   C_NUM_OF_CORES                   =   4,
    parameter   C_CLOCKING                       =   "Synchronous",
    parameter   C_DATA_PATH_INTERFACE            =   "AXI Stream",
    parameter   C_BASE_R_KR                      =   "BASE-KR",
    parameter   C_INCLUDE_FEC_LOGIC              =   0,
    parameter   C_INCLUDE_RSFEC_LOGIC            =   0,
    parameter   C_INCLUDE_HYBRID_CMAC_RSFEC_LOGIC=   0,
    parameter   C_INCLUDE_AUTO_NEG_LT_LOGIC      =   "None",
    parameter   C_INCLUDE_USER_FIFO              =   0,
    parameter   C_ENABLE_TX_FLOW_CONTROL_LOGIC   =   0,
    parameter   C_ENABLE_RX_FLOW_CONTROL_LOGIC   =   0,
    parameter   C_ENABLE_TIME_STAMPING           =   0,
    parameter   C_PTP_OPERATION_MODE             =   2,
    parameter   C_PTP_CLOCKING_MODE              =   0,
    parameter   C_TX_LATENCY_ADJUST              =   0,
    parameter   C_ENABLE_VLANE_ADJUST_MODE       =   0,
    parameter   C_ENABLE_PIPELINE_REG            =   0,
    parameter   C_RUNTIME_SWITCH                 =   0
)
(


//// RX_0 Signals
  input  wire rx_reset_0,

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
  output wire stat_rx_unicast_0,
  output wire stat_rx_multicast_0,
  output wire stat_rx_broadcast_0,
  output wire stat_rx_vlan_0,
  output wire stat_rx_inrangeerr_0,
  output wire stat_rx_bad_preamble_0,
  output wire stat_rx_bad_sfd_0,
  output wire stat_rx_got_signal_os_0,
  output wire stat_rx_test_pattern_mismatch_0,
  output wire stat_rx_truncated_0,
  output wire stat_rx_local_fault_0,
  output wire stat_rx_remote_fault_0,
  output wire stat_rx_internal_local_fault_0,
  output wire stat_rx_received_local_fault_0,


//// TX_0 Signals
  input  wire tx_reset_0,

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
  input  wire [3:0] ctl_tx_ipg_value_0,
  input  wire ctl_tx_send_lfi_0,
  input  wire ctl_tx_send_rfi_0,
  input  wire ctl_tx_send_idle_0,
  input  wire ctl_tx_custom_preamble_enable_0,
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
  output wire stat_tx_unicast_0,
  output wire stat_tx_multicast_0,
  output wire stat_tx_broadcast_0,
  output wire stat_tx_vlan_0,
  output wire stat_tx_bad_fcs_0,
  output wire stat_tx_frame_error_0,
  output wire stat_tx_local_fault_0,


  output wire  stat_rx_status_0,


  input  rx_core_clk_0,
  input  rx_serdes_reset_0,
  input  wire  tx_core_clk_0,
  input  wire  rx_serdes_clk_0,
  output wire [0:0]      rxgearboxslip_in_0,
  input  wire [1:0]      rxdatavalid_out_0,
  input  wire [5:0]      rxheader_out_0,
  input  wire [1:0]      rxheadervalid_out_0,
  input  wire [127:0]    rx_serdes_data_out_0,
  output wire [127:0]    tx_serdes_data_in_0,
  output wire [5:0]      txheader_in_0,
//// RX_1 Signals
  input  wire rx_reset_1,

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
  output wire stat_rx_unicast_1,
  output wire stat_rx_multicast_1,
  output wire stat_rx_broadcast_1,
  output wire stat_rx_vlan_1,
  output wire stat_rx_inrangeerr_1,
  output wire stat_rx_bad_preamble_1,
  output wire stat_rx_bad_sfd_1,
  output wire stat_rx_got_signal_os_1,
  output wire stat_rx_test_pattern_mismatch_1,
  output wire stat_rx_truncated_1,
  output wire stat_rx_local_fault_1,
  output wire stat_rx_remote_fault_1,
  output wire stat_rx_internal_local_fault_1,
  output wire stat_rx_received_local_fault_1,


//// TX_1 Signals
  input  wire tx_reset_1,

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
  input  wire [3:0] ctl_tx_ipg_value_1,
  input  wire ctl_tx_send_lfi_1,
  input  wire ctl_tx_send_rfi_1,
  input  wire ctl_tx_send_idle_1,
  input  wire ctl_tx_custom_preamble_enable_1,
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
  output wire stat_tx_unicast_1,
  output wire stat_tx_multicast_1,
  output wire stat_tx_broadcast_1,
  output wire stat_tx_vlan_1,
  output wire stat_tx_bad_fcs_1,
  output wire stat_tx_frame_error_1,
  output wire stat_tx_local_fault_1,


  output wire  stat_rx_status_1,


  input  rx_core_clk_1,
  input  rx_serdes_reset_1,
  input  wire  tx_core_clk_1,
  input  wire  rx_serdes_clk_1,
  output wire [0:0]      rxgearboxslip_in_1,
  input  wire [1:0]      rxdatavalid_out_1,
  input  wire [5:0]      rxheader_out_1,
  input  wire [1:0]      rxheadervalid_out_1,
  input  wire [127:0]    rx_serdes_data_out_1,
  output wire [127:0]    tx_serdes_data_in_1,
  output wire [5:0]      txheader_in_1,
//// RX_2 Signals
  input  wire rx_reset_2,

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
  output wire stat_rx_unicast_2,
  output wire stat_rx_multicast_2,
  output wire stat_rx_broadcast_2,
  output wire stat_rx_vlan_2,
  output wire stat_rx_inrangeerr_2,
  output wire stat_rx_bad_preamble_2,
  output wire stat_rx_bad_sfd_2,
  output wire stat_rx_got_signal_os_2,
  output wire stat_rx_test_pattern_mismatch_2,
  output wire stat_rx_truncated_2,
  output wire stat_rx_local_fault_2,
  output wire stat_rx_remote_fault_2,
  output wire stat_rx_internal_local_fault_2,
  output wire stat_rx_received_local_fault_2,


//// TX_2 Signals
  input  wire tx_reset_2,

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
  input  wire [3:0] ctl_tx_ipg_value_2,
  input  wire ctl_tx_send_lfi_2,
  input  wire ctl_tx_send_rfi_2,
  input  wire ctl_tx_send_idle_2,
  input  wire ctl_tx_custom_preamble_enable_2,
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
  output wire stat_tx_unicast_2,
  output wire stat_tx_multicast_2,
  output wire stat_tx_broadcast_2,
  output wire stat_tx_vlan_2,
  output wire stat_tx_bad_fcs_2,
  output wire stat_tx_frame_error_2,
  output wire stat_tx_local_fault_2,


  output wire  stat_rx_status_2,


  input  rx_core_clk_2,
  input  rx_serdes_reset_2,
  input  wire  tx_core_clk_2,
  input  wire  rx_serdes_clk_2,
  output wire [0:0]      rxgearboxslip_in_2,
  input  wire [1:0]      rxdatavalid_out_2,
  input  wire [5:0]      rxheader_out_2,
  input  wire [1:0]      rxheadervalid_out_2,
  input  wire [127:0]    rx_serdes_data_out_2,
  output wire [127:0]    tx_serdes_data_in_2,
  output wire [5:0]      txheader_in_2,
//// RX_3 Signals
  input  wire rx_reset_3,

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
  output wire stat_rx_unicast_3,
  output wire stat_rx_multicast_3,
  output wire stat_rx_broadcast_3,
  output wire stat_rx_vlan_3,
  output wire stat_rx_inrangeerr_3,
  output wire stat_rx_bad_preamble_3,
  output wire stat_rx_bad_sfd_3,
  output wire stat_rx_got_signal_os_3,
  output wire stat_rx_test_pattern_mismatch_3,
  output wire stat_rx_truncated_3,
  output wire stat_rx_local_fault_3,
  output wire stat_rx_remote_fault_3,
  output wire stat_rx_internal_local_fault_3,
  output wire stat_rx_received_local_fault_3,


//// TX_3 Signals
  input  wire tx_reset_3,

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
  input  wire [3:0] ctl_tx_ipg_value_3,
  input  wire ctl_tx_send_lfi_3,
  input  wire ctl_tx_send_rfi_3,
  input  wire ctl_tx_send_idle_3,
  input  wire ctl_tx_custom_preamble_enable_3,
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
  output wire stat_tx_unicast_3,
  output wire stat_tx_multicast_3,
  output wire stat_tx_broadcast_3,
  output wire stat_tx_vlan_3,
  output wire stat_tx_bad_fcs_3,
  output wire stat_tx_frame_error_3,
  output wire stat_tx_local_fault_3,


  output wire  stat_rx_status_3,


  input  rx_core_clk_3,
  input  rx_serdes_reset_3,
  input  wire  tx_core_clk_3,
  input  wire  rx_serdes_clk_3,
  output wire [0:0]      rxgearboxslip_in_3,
  input  wire [1:0]      rxdatavalid_out_3,
  input  wire [5:0]      rxheader_out_3,
  input  wire [1:0]      rxheadervalid_out_3,
  input  wire [127:0]    rx_serdes_data_out_3,
  output wire [127:0]    tx_serdes_data_in_3,
  output wire [5:0]      txheader_in_3
);


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  wire            tx_reset_done_async_0;
  wire            rx_reset_done_0;
  wire            rx_serdes_reset_done_0;

  wire [63:0]     tx_serdes_data0_0;
  wire [1:0]      tx_serdes_header0_0;
  wire [63:0]     tx_serdes_data0_int_0;
  wire [1:0]      tx_serdes_header0_int_0;

  wire [63:0]     rx_serdes_data0_0;
  wire [1:0]      rx_serdes_header0_0;
  wire [63:0]     rx_serdes_data0_int_0;
  wire [1:0]      rx_serdes_header0_int_0;
  wire [0:0]      rx_serdes_bitslip_0 ;
  wire [0:0]      rx_serdes_headervalid_0 ;
  wire [0:0]      rx_serdes_datavalid_0 ;
  wire [0:0]      rx_serdes_headervalid_int_0;
  wire [0:0]      rx_serdes_datavalid_int_0;
  wire            gt_txusrclk2_0;
  wire            gt_rxusrclk2_0;
  assign          gt_txusrclk2_0 =  tx_core_clk_0;
  assign          gt_rxusrclk2_0 =  rx_core_clk_0;

xxv_ethernet_0_cdc_sync i_xxv_ethernet_0_core_cdc_sync_tx_reset_0
  (
   .clk              (gt_txusrclk2_0),
   .signal_in        (tx_reset_0), 
   .signal_out       (tx_reset_done_async_0)
  );

  xxv_ethernet_0_cdc_sync i_xxv_ethernet_0_core_cdc_sync_rx_reset_0
  (
   .clk              (gt_rxusrclk2_0),
   .signal_in        (rx_reset_0), 
   .signal_out       (rx_reset_done_0)
  ); 

  xxv_ethernet_0_cdc_sync i_xxv_ethernet_0_core_cdc_sync_rx_serdes_reset_0
  (
   .clk              (rx_serdes_clk_0),
   .signal_in        (rx_serdes_reset_0), 
   .signal_out       (rx_serdes_reset_done_0)
  );

  
  assign tx_serdes_data_in_0 =  {64'b0,tx_serdes_data0_int_0};
  assign txheader_in_0       =  {4'b0,tx_serdes_header0_int_0};


  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (64)
  ) i_xxv_ethernet_0_tx_64bit_retiming_sync_serdes_data0_0 (
    .clk          (gt_txusrclk2_0),
    .data_in      (tx_serdes_data0_0),
    .data_out     (tx_serdes_data0_int_0)
  );

  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (2)
  ) i_xxv_ethernet_0_tx_2bit_retiming_sync_serdes_data0_0 (
    .clk          (gt_txusrclk2_0),
    .data_in      (tx_serdes_header0_0),
    .data_out     (tx_serdes_header0_int_0)
  );




  
   assign rx_serdes_data0_int_0        =  rx_serdes_data_out_0[63:0];
   assign rx_serdes_header0_int_0      =  rxheader_out_0;
   assign rxgearboxslip_in_0           =  rx_serdes_bitslip_0;
   assign rx_serdes_datavalid_int_0    =  rxdatavalid_out_0[0];
   assign rx_serdes_headervalid_int_0  =  rxheadervalid_out_0;


  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (64)
  ) i_xxv_ethernet_0_rx_64bit_retiming_sync_serdes_data0_0 (
    .clk          (rx_serdes_clk_0),
    .data_in      (rx_serdes_data0_int_0),
    .data_out     (rx_serdes_data0_0)
  );

  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (2)
  ) i_xxv_ethernet_0_rx_2bit_retiming_sync_serdes_header0_0 (
    .clk          (rx_serdes_clk_0),
    .data_in      (rx_serdes_header0_int_0),
    .data_out     (rx_serdes_header0_0)
  );

  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (1)
  ) i_xxv_ethernet_0_rx_2bit_retiming_sync_serdes_data_valid0_0 (
    .clk          (rx_serdes_clk_0),
    .data_in      (rx_serdes_datavalid_int_0),
    .data_out     (rx_serdes_datavalid_0)
  );
  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (1)
  ) i_xxv_ethernet_0_rx_2bit_retiming_sync_serdes_header_valid0_0 (
    .clk          (rx_serdes_clk_0),
    .data_in      (rx_serdes_headervalid_int_0),
    .data_out     (rx_serdes_headervalid_0)
  );

xxv_ethernet_0_top #(
  .SERDES_WIDTH ( 64 )
) i_xxv_ethernet_0_top_0 (

  .tx_clk (gt_txusrclk2_0),
  .rx_clk (gt_rxusrclk2_0),
  .tx_reset (tx_reset_done_async_0),
  .rx_reset (rx_reset_done_0),
  .rx_serdes_clk (rx_serdes_clk_0),
  .rx_serdes_reset (rx_serdes_reset_done_0),
//// RX AXIS Signals
  .rx_axis_tvalid (rx_axis_tvalid_0),
  .rx_axis_tdata (rx_axis_tdata_0),
  .rx_axis_tlast (rx_axis_tlast_0),
  .rx_axis_tkeep (rx_axis_tkeep_0),
  .rx_axis_tuser (rx_axis_tuser_0),
  .rx_preambleout (rx_preambleout_0),

//// RX Control Signals
  .ctl_rx_test_pattern (ctl_rx_test_pattern_0),
  .ctl_rx_test_pattern_enable (ctl_rx_test_pattern_enable_0),
  .ctl_rx_data_pattern_select (ctl_rx_data_pattern_select_0),
  .ctl_rx_enable (ctl_rx_enable_0),
  .ctl_rx_delete_fcs (ctl_rx_delete_fcs_0),
  .ctl_rx_ignore_fcs (ctl_rx_ignore_fcs_0),
  .ctl_rx_max_packet_len (ctl_rx_max_packet_len_0),
  .ctl_rx_min_packet_len (ctl_rx_min_packet_len_0),
  .ctl_rx_custom_preamble_enable (ctl_rx_custom_preamble_enable_0),
  .ctl_rx_check_sfd (ctl_rx_check_sfd_0),
  .ctl_rx_check_preamble (ctl_rx_check_preamble_0),
  .ctl_rx_process_lfi (ctl_rx_process_lfi_0),
  .ctl_rx_force_resync (ctl_rx_force_resync_0),

//// RX Stats Signals
  .stat_rx_status  (stat_rx_status_0),
  .stat_rx_block_lock (stat_rx_block_lock_0),
  .stat_rx_framing_err_valid (stat_rx_framing_err_valid_0),
  .stat_rx_framing_err (stat_rx_framing_err_0),
  .stat_rx_hi_ber (stat_rx_hi_ber_0),
  .stat_rx_valid_ctrl_code (stat_rx_valid_ctrl_code_0),
  .stat_rx_bad_code (stat_rx_bad_code_0),
  .stat_rx_total_packets (stat_rx_total_packets_0),
  .stat_rx_total_good_packets (stat_rx_total_good_packets_0),
  .stat_rx_total_bytes (stat_rx_total_bytes_0),
  .stat_rx_total_good_bytes (stat_rx_total_good_bytes_0),
  .stat_rx_packet_small (stat_rx_packet_small_0),
  .stat_rx_jabber (stat_rx_jabber_0),
  .stat_rx_packet_large (stat_rx_packet_large_0),
  .stat_rx_oversize (stat_rx_oversize_0),
  .stat_rx_undersize (stat_rx_undersize_0),
  .stat_rx_toolong (stat_rx_toolong_0),
  .stat_rx_fragment (stat_rx_fragment_0),
  .stat_rx_packet_64_bytes (stat_rx_packet_64_bytes_0),
  .stat_rx_packet_65_127_bytes (stat_rx_packet_65_127_bytes_0),
  .stat_rx_packet_128_255_bytes (stat_rx_packet_128_255_bytes_0),
  .stat_rx_packet_256_511_bytes (stat_rx_packet_256_511_bytes_0),
  .stat_rx_packet_512_1023_bytes (stat_rx_packet_512_1023_bytes_0),
  .stat_rx_packet_1024_1518_bytes (stat_rx_packet_1024_1518_bytes_0),
  .stat_rx_packet_1519_1522_bytes (stat_rx_packet_1519_1522_bytes_0),
  .stat_rx_packet_1523_1548_bytes (stat_rx_packet_1523_1548_bytes_0),
  .stat_rx_bad_fcs (stat_rx_bad_fcs_0),
  .stat_rx_packet_bad_fcs (stat_rx_packet_bad_fcs_0),
  .stat_rx_stomped_fcs (stat_rx_stomped_fcs_0),
  .stat_rx_packet_1549_2047_bytes (stat_rx_packet_1549_2047_bytes_0),
  .stat_rx_packet_2048_4095_bytes (stat_rx_packet_2048_4095_bytes_0),
  .stat_rx_packet_4096_8191_bytes (stat_rx_packet_4096_8191_bytes_0),
  .stat_rx_packet_8192_9215_bytes (stat_rx_packet_8192_9215_bytes_0),
  .stat_rx_unicast (stat_rx_unicast_0),
  .stat_rx_multicast (stat_rx_multicast_0),
  .stat_rx_broadcast (stat_rx_broadcast_0),
  .stat_rx_vlan (stat_rx_vlan_0),
  .stat_rx_inrangeerr (stat_rx_inrangeerr_0),
  .stat_rx_bad_preamble (stat_rx_bad_preamble_0),
  .stat_rx_bad_sfd (stat_rx_bad_sfd_0),
  .stat_rx_got_signal_os (stat_rx_got_signal_os_0),
  .stat_rx_test_pattern_mismatch (stat_rx_test_pattern_mismatch_0),
  .stat_rx_truncated (stat_rx_truncated_0),
  .stat_rx_local_fault (stat_rx_local_fault_0),
  .stat_rx_remote_fault (stat_rx_remote_fault_0),
  .stat_rx_internal_local_fault (stat_rx_internal_local_fault_0),
  .stat_rx_received_local_fault (stat_rx_received_local_fault_0),


//// TX AXIS Signals
  .tx_axis_tready (tx_axis_tready_0),
  .tx_axis_tvalid (tx_axis_tvalid_0),
  .tx_axis_tdata (tx_axis_tdata_0),
  .tx_axis_tlast (tx_axis_tlast_0),
  .tx_axis_tkeep (tx_axis_tkeep_0),
  .tx_axis_tuser (tx_axis_tuser_0),
  .tx_unfout (tx_unfout_0),
  .tx_preamblein (tx_preamblein_0),

//// TX Control Signals
  .ctl_tx_test_pattern (ctl_tx_test_pattern_0),
  .ctl_tx_test_pattern_enable (ctl_tx_test_pattern_enable_0),
  .ctl_tx_test_pattern_select (ctl_tx_test_pattern_select_0),
  .ctl_tx_data_pattern_select (ctl_tx_data_pattern_select_0),
  .ctl_tx_test_pattern_seed_a (ctl_tx_test_pattern_seed_a_0),
  .ctl_tx_test_pattern_seed_b (ctl_tx_test_pattern_seed_b_0),
  .ctl_tx_enable (ctl_tx_enable_0),
  .ctl_tx_fcs_ins_enable (ctl_tx_fcs_ins_enable_0),
  .ctl_tx_ipg_value (ctl_tx_ipg_value_0),
  .ctl_tx_send_lfi (ctl_tx_send_lfi_0),
  .ctl_tx_send_rfi (ctl_tx_send_rfi_0),
  .ctl_tx_send_idle (ctl_tx_send_idle_0),
  .ctl_tx_custom_preamble_enable (ctl_tx_custom_preamble_enable_0),
  .ctl_tx_ignore_fcs (ctl_tx_ignore_fcs_0),


//// TX Stats Signals
  .stat_tx_total_packets (stat_tx_total_packets_0),
  .stat_tx_total_bytes (stat_tx_total_bytes_0),
  .stat_tx_total_good_packets (stat_tx_total_good_packets_0),
  .stat_tx_total_good_bytes (stat_tx_total_good_bytes_0),
  .stat_tx_packet_64_bytes (stat_tx_packet_64_bytes_0),
  .stat_tx_packet_65_127_bytes (stat_tx_packet_65_127_bytes_0),
  .stat_tx_packet_128_255_bytes (stat_tx_packet_128_255_bytes_0),
  .stat_tx_packet_256_511_bytes (stat_tx_packet_256_511_bytes_0),
  .stat_tx_packet_512_1023_bytes (stat_tx_packet_512_1023_bytes_0),
  .stat_tx_packet_1024_1518_bytes (stat_tx_packet_1024_1518_bytes_0),
  .stat_tx_packet_1519_1522_bytes (stat_tx_packet_1519_1522_bytes_0),
  .stat_tx_packet_1523_1548_bytes (stat_tx_packet_1523_1548_bytes_0),
  .stat_tx_packet_small (stat_tx_packet_small_0),
  .stat_tx_packet_large (stat_tx_packet_large_0),
  .stat_tx_packet_1549_2047_bytes (stat_tx_packet_1549_2047_bytes_0),
  .stat_tx_packet_2048_4095_bytes (stat_tx_packet_2048_4095_bytes_0),
  .stat_tx_packet_4096_8191_bytes (stat_tx_packet_4096_8191_bytes_0),
  .stat_tx_packet_8192_9215_bytes (stat_tx_packet_8192_9215_bytes_0),
  .stat_tx_unicast (stat_tx_unicast_0),
  .stat_tx_multicast (stat_tx_multicast_0),
  .stat_tx_broadcast (stat_tx_broadcast_0),
  .stat_tx_vlan (stat_tx_vlan_0),
  .stat_tx_bad_fcs (stat_tx_bad_fcs_0),
  .stat_tx_frame_error (stat_tx_frame_error_0),
  .stat_tx_local_fault (stat_tx_local_fault_0),



  .rx_serdes_datavalid0              (rx_serdes_datavalid_0),
  .rx_serdes_headervalid0            (rx_serdes_headervalid_0),
  .rx_serdes_bitslip0                (rx_serdes_bitslip_0),

  .rx_serdes_data0                   (rx_serdes_data0_0),
  .rx_serdes_header0                 (rx_serdes_header0_0),
  .tx_serdes_data0                   (tx_serdes_data0_0),
  .tx_serdes_header0                 (tx_serdes_header0_0)

);



  wire            tx_reset_done_async_1;
  wire            rx_reset_done_1;
  wire            rx_serdes_reset_done_1;

  wire [63:0]     tx_serdes_data0_1;
  wire [1:0]      tx_serdes_header0_1;
  wire [63:0]     tx_serdes_data0_int_1;
  wire [1:0]      tx_serdes_header0_int_1;

  wire [63:0]     rx_serdes_data0_1;
  wire [1:0]      rx_serdes_header0_1;
  wire [63:0]     rx_serdes_data0_int_1;
  wire [1:0]      rx_serdes_header0_int_1;
  wire [0:0]      rx_serdes_bitslip_1 ;
  wire [0:0]      rx_serdes_headervalid_1 ;
  wire [0:0]      rx_serdes_datavalid_1 ;
  wire [0:0]      rx_serdes_headervalid_int_1;
  wire [0:0]      rx_serdes_datavalid_int_1;
  wire            gt_txusrclk2_1;
  wire            gt_rxusrclk2_1;
  assign          gt_txusrclk2_1 =  tx_core_clk_1;
  assign          gt_rxusrclk2_1 =  rx_core_clk_1;

xxv_ethernet_0_cdc_sync i_xxv_ethernet_0_core_cdc_sync_tx_reset_1
  (
   .clk              (gt_txusrclk2_1),
   .signal_in        (tx_reset_1), 
   .signal_out       (tx_reset_done_async_1)
  );

  xxv_ethernet_0_cdc_sync i_xxv_ethernet_0_core_cdc_sync_rx_reset_1
  (
   .clk              (gt_rxusrclk2_1),
   .signal_in        (rx_reset_1), 
   .signal_out       (rx_reset_done_1)
  ); 

  xxv_ethernet_0_cdc_sync i_xxv_ethernet_0_core_cdc_sync_rx_serdes_reset_1
  (
   .clk              (rx_serdes_clk_1),
   .signal_in        (rx_serdes_reset_1), 
   .signal_out       (rx_serdes_reset_done_1)
  );

  
  assign tx_serdes_data_in_1 =  {64'b0,tx_serdes_data0_int_1};
  assign txheader_in_1       =  {4'b0,tx_serdes_header0_int_1};


  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (64)
  ) i_xxv_ethernet_0_tx_64bit_retiming_sync_serdes_data0_1 (
    .clk          (gt_txusrclk2_1),
    .data_in      (tx_serdes_data0_1),
    .data_out     (tx_serdes_data0_int_1)
  );

  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (2)
  ) i_xxv_ethernet_0_tx_2bit_retiming_sync_serdes_data0_1 (
    .clk          (gt_txusrclk2_1),
    .data_in      (tx_serdes_header0_1),
    .data_out     (tx_serdes_header0_int_1)
  );




  
   assign rx_serdes_data0_int_1        =  rx_serdes_data_out_1[63:0];
   assign rx_serdes_header0_int_1      =  rxheader_out_1;
   assign rxgearboxslip_in_1           =  rx_serdes_bitslip_1;
   assign rx_serdes_datavalid_int_1    =  rxdatavalid_out_1[0];
   assign rx_serdes_headervalid_int_1  =  rxheadervalid_out_1;


  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (64)
  ) i_xxv_ethernet_0_rx_64bit_retiming_sync_serdes_data0_1 (
    .clk          (rx_serdes_clk_1),
    .data_in      (rx_serdes_data0_int_1),
    .data_out     (rx_serdes_data0_1)
  );

  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (2)
  ) i_xxv_ethernet_0_rx_2bit_retiming_sync_serdes_header0_1 (
    .clk          (rx_serdes_clk_1),
    .data_in      (rx_serdes_header0_int_1),
    .data_out     (rx_serdes_header0_1)
  );

  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (1)
  ) i_xxv_ethernet_0_rx_2bit_retiming_sync_serdes_data_valid0_1 (
    .clk          (rx_serdes_clk_1),
    .data_in      (rx_serdes_datavalid_int_1),
    .data_out     (rx_serdes_datavalid_1)
  );
  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (1)
  ) i_xxv_ethernet_0_rx_2bit_retiming_sync_serdes_header_valid0_1 (
    .clk          (rx_serdes_clk_1),
    .data_in      (rx_serdes_headervalid_int_1),
    .data_out     (rx_serdes_headervalid_1)
  );

xxv_ethernet_0_top #(
  .SERDES_WIDTH ( 64 )
) i_xxv_ethernet_0_top_1 (

  .tx_clk (gt_txusrclk2_1),
  .rx_clk (gt_rxusrclk2_1),
  .tx_reset (tx_reset_done_async_1),
  .rx_reset (rx_reset_done_1),
  .rx_serdes_clk (rx_serdes_clk_1),
  .rx_serdes_reset (rx_serdes_reset_done_1),
//// RX AXIS Signals
  .rx_axis_tvalid (rx_axis_tvalid_1),
  .rx_axis_tdata (rx_axis_tdata_1),
  .rx_axis_tlast (rx_axis_tlast_1),
  .rx_axis_tkeep (rx_axis_tkeep_1),
  .rx_axis_tuser (rx_axis_tuser_1),
  .rx_preambleout (rx_preambleout_1),

//// RX Control Signals
  .ctl_rx_test_pattern (ctl_rx_test_pattern_1),
  .ctl_rx_test_pattern_enable (ctl_rx_test_pattern_enable_1),
  .ctl_rx_data_pattern_select (ctl_rx_data_pattern_select_1),
  .ctl_rx_enable (ctl_rx_enable_1),
  .ctl_rx_delete_fcs (ctl_rx_delete_fcs_1),
  .ctl_rx_ignore_fcs (ctl_rx_ignore_fcs_1),
  .ctl_rx_max_packet_len (ctl_rx_max_packet_len_1),
  .ctl_rx_min_packet_len (ctl_rx_min_packet_len_1),
  .ctl_rx_custom_preamble_enable (ctl_rx_custom_preamble_enable_1),
  .ctl_rx_check_sfd (ctl_rx_check_sfd_1),
  .ctl_rx_check_preamble (ctl_rx_check_preamble_1),
  .ctl_rx_process_lfi (ctl_rx_process_lfi_1),
  .ctl_rx_force_resync (ctl_rx_force_resync_1),

//// RX Stats Signals
  .stat_rx_status  (stat_rx_status_1),
  .stat_rx_block_lock (stat_rx_block_lock_1),
  .stat_rx_framing_err_valid (stat_rx_framing_err_valid_1),
  .stat_rx_framing_err (stat_rx_framing_err_1),
  .stat_rx_hi_ber (stat_rx_hi_ber_1),
  .stat_rx_valid_ctrl_code (stat_rx_valid_ctrl_code_1),
  .stat_rx_bad_code (stat_rx_bad_code_1),
  .stat_rx_total_packets (stat_rx_total_packets_1),
  .stat_rx_total_good_packets (stat_rx_total_good_packets_1),
  .stat_rx_total_bytes (stat_rx_total_bytes_1),
  .stat_rx_total_good_bytes (stat_rx_total_good_bytes_1),
  .stat_rx_packet_small (stat_rx_packet_small_1),
  .stat_rx_jabber (stat_rx_jabber_1),
  .stat_rx_packet_large (stat_rx_packet_large_1),
  .stat_rx_oversize (stat_rx_oversize_1),
  .stat_rx_undersize (stat_rx_undersize_1),
  .stat_rx_toolong (stat_rx_toolong_1),
  .stat_rx_fragment (stat_rx_fragment_1),
  .stat_rx_packet_64_bytes (stat_rx_packet_64_bytes_1),
  .stat_rx_packet_65_127_bytes (stat_rx_packet_65_127_bytes_1),
  .stat_rx_packet_128_255_bytes (stat_rx_packet_128_255_bytes_1),
  .stat_rx_packet_256_511_bytes (stat_rx_packet_256_511_bytes_1),
  .stat_rx_packet_512_1023_bytes (stat_rx_packet_512_1023_bytes_1),
  .stat_rx_packet_1024_1518_bytes (stat_rx_packet_1024_1518_bytes_1),
  .stat_rx_packet_1519_1522_bytes (stat_rx_packet_1519_1522_bytes_1),
  .stat_rx_packet_1523_1548_bytes (stat_rx_packet_1523_1548_bytes_1),
  .stat_rx_bad_fcs (stat_rx_bad_fcs_1),
  .stat_rx_packet_bad_fcs (stat_rx_packet_bad_fcs_1),
  .stat_rx_stomped_fcs (stat_rx_stomped_fcs_1),
  .stat_rx_packet_1549_2047_bytes (stat_rx_packet_1549_2047_bytes_1),
  .stat_rx_packet_2048_4095_bytes (stat_rx_packet_2048_4095_bytes_1),
  .stat_rx_packet_4096_8191_bytes (stat_rx_packet_4096_8191_bytes_1),
  .stat_rx_packet_8192_9215_bytes (stat_rx_packet_8192_9215_bytes_1),
  .stat_rx_unicast (stat_rx_unicast_1),
  .stat_rx_multicast (stat_rx_multicast_1),
  .stat_rx_broadcast (stat_rx_broadcast_1),
  .stat_rx_vlan (stat_rx_vlan_1),
  .stat_rx_inrangeerr (stat_rx_inrangeerr_1),
  .stat_rx_bad_preamble (stat_rx_bad_preamble_1),
  .stat_rx_bad_sfd (stat_rx_bad_sfd_1),
  .stat_rx_got_signal_os (stat_rx_got_signal_os_1),
  .stat_rx_test_pattern_mismatch (stat_rx_test_pattern_mismatch_1),
  .stat_rx_truncated (stat_rx_truncated_1),
  .stat_rx_local_fault (stat_rx_local_fault_1),
  .stat_rx_remote_fault (stat_rx_remote_fault_1),
  .stat_rx_internal_local_fault (stat_rx_internal_local_fault_1),
  .stat_rx_received_local_fault (stat_rx_received_local_fault_1),


//// TX AXIS Signals
  .tx_axis_tready (tx_axis_tready_1),
  .tx_axis_tvalid (tx_axis_tvalid_1),
  .tx_axis_tdata (tx_axis_tdata_1),
  .tx_axis_tlast (tx_axis_tlast_1),
  .tx_axis_tkeep (tx_axis_tkeep_1),
  .tx_axis_tuser (tx_axis_tuser_1),
  .tx_unfout (tx_unfout_1),
  .tx_preamblein (tx_preamblein_1),

//// TX Control Signals
  .ctl_tx_test_pattern (ctl_tx_test_pattern_1),
  .ctl_tx_test_pattern_enable (ctl_tx_test_pattern_enable_1),
  .ctl_tx_test_pattern_select (ctl_tx_test_pattern_select_1),
  .ctl_tx_data_pattern_select (ctl_tx_data_pattern_select_1),
  .ctl_tx_test_pattern_seed_a (ctl_tx_test_pattern_seed_a_1),
  .ctl_tx_test_pattern_seed_b (ctl_tx_test_pattern_seed_b_1),
  .ctl_tx_enable (ctl_tx_enable_1),
  .ctl_tx_fcs_ins_enable (ctl_tx_fcs_ins_enable_1),
  .ctl_tx_ipg_value (ctl_tx_ipg_value_1),
  .ctl_tx_send_lfi (ctl_tx_send_lfi_1),
  .ctl_tx_send_rfi (ctl_tx_send_rfi_1),
  .ctl_tx_send_idle (ctl_tx_send_idle_1),
  .ctl_tx_custom_preamble_enable (ctl_tx_custom_preamble_enable_1),
  .ctl_tx_ignore_fcs (ctl_tx_ignore_fcs_1),


//// TX Stats Signals
  .stat_tx_total_packets (stat_tx_total_packets_1),
  .stat_tx_total_bytes (stat_tx_total_bytes_1),
  .stat_tx_total_good_packets (stat_tx_total_good_packets_1),
  .stat_tx_total_good_bytes (stat_tx_total_good_bytes_1),
  .stat_tx_packet_64_bytes (stat_tx_packet_64_bytes_1),
  .stat_tx_packet_65_127_bytes (stat_tx_packet_65_127_bytes_1),
  .stat_tx_packet_128_255_bytes (stat_tx_packet_128_255_bytes_1),
  .stat_tx_packet_256_511_bytes (stat_tx_packet_256_511_bytes_1),
  .stat_tx_packet_512_1023_bytes (stat_tx_packet_512_1023_bytes_1),
  .stat_tx_packet_1024_1518_bytes (stat_tx_packet_1024_1518_bytes_1),
  .stat_tx_packet_1519_1522_bytes (stat_tx_packet_1519_1522_bytes_1),
  .stat_tx_packet_1523_1548_bytes (stat_tx_packet_1523_1548_bytes_1),
  .stat_tx_packet_small (stat_tx_packet_small_1),
  .stat_tx_packet_large (stat_tx_packet_large_1),
  .stat_tx_packet_1549_2047_bytes (stat_tx_packet_1549_2047_bytes_1),
  .stat_tx_packet_2048_4095_bytes (stat_tx_packet_2048_4095_bytes_1),
  .stat_tx_packet_4096_8191_bytes (stat_tx_packet_4096_8191_bytes_1),
  .stat_tx_packet_8192_9215_bytes (stat_tx_packet_8192_9215_bytes_1),
  .stat_tx_unicast (stat_tx_unicast_1),
  .stat_tx_multicast (stat_tx_multicast_1),
  .stat_tx_broadcast (stat_tx_broadcast_1),
  .stat_tx_vlan (stat_tx_vlan_1),
  .stat_tx_bad_fcs (stat_tx_bad_fcs_1),
  .stat_tx_frame_error (stat_tx_frame_error_1),
  .stat_tx_local_fault (stat_tx_local_fault_1),



  .rx_serdes_datavalid0              (rx_serdes_datavalid_1),
  .rx_serdes_headervalid0            (rx_serdes_headervalid_1),
  .rx_serdes_bitslip0                (rx_serdes_bitslip_1),

  .rx_serdes_data0                   (rx_serdes_data0_1),
  .rx_serdes_header0                 (rx_serdes_header0_1),
  .tx_serdes_data0                   (tx_serdes_data0_1),
  .tx_serdes_header0                 (tx_serdes_header0_1)

);



  wire            tx_reset_done_async_2;
  wire            rx_reset_done_2;
  wire            rx_serdes_reset_done_2;

  wire [63:0]     tx_serdes_data0_2;
  wire [1:0]      tx_serdes_header0_2;
  wire [63:0]     tx_serdes_data0_int_2;
  wire [1:0]      tx_serdes_header0_int_2;

  wire [63:0]     rx_serdes_data0_2;
  wire [1:0]      rx_serdes_header0_2;
  wire [63:0]     rx_serdes_data0_int_2;
  wire [1:0]      rx_serdes_header0_int_2;
  wire [0:0]      rx_serdes_bitslip_2 ;
  wire [0:0]      rx_serdes_headervalid_2 ;
  wire [0:0]      rx_serdes_datavalid_2 ;
  wire [0:0]      rx_serdes_headervalid_int_2;
  wire [0:0]      rx_serdes_datavalid_int_2;
  wire            gt_txusrclk2_2;
  wire            gt_rxusrclk2_2;
  assign          gt_txusrclk2_2 =  tx_core_clk_2;
  assign          gt_rxusrclk2_2 =  rx_core_clk_2;

xxv_ethernet_0_cdc_sync i_xxv_ethernet_0_core_cdc_sync_tx_reset_2
  (
   .clk              (gt_txusrclk2_2),
   .signal_in        (tx_reset_2), 
   .signal_out       (tx_reset_done_async_2)
  );

  xxv_ethernet_0_cdc_sync i_xxv_ethernet_0_core_cdc_sync_rx_reset_2
  (
   .clk              (gt_rxusrclk2_2),
   .signal_in        (rx_reset_2), 
   .signal_out       (rx_reset_done_2)
  ); 

  xxv_ethernet_0_cdc_sync i_xxv_ethernet_0_core_cdc_sync_rx_serdes_reset_2
  (
   .clk              (rx_serdes_clk_2),
   .signal_in        (rx_serdes_reset_2), 
   .signal_out       (rx_serdes_reset_done_2)
  );

  
  assign tx_serdes_data_in_2 =  {64'b0,tx_serdes_data0_int_2};
  assign txheader_in_2       =  {4'b0,tx_serdes_header0_int_2};


  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (64)
  ) i_xxv_ethernet_0_tx_64bit_retiming_sync_serdes_data0_2 (
    .clk          (gt_txusrclk2_2),
    .data_in      (tx_serdes_data0_2),
    .data_out     (tx_serdes_data0_int_2)
  );

  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (2)
  ) i_xxv_ethernet_0_tx_2bit_retiming_sync_serdes_data0_2 (
    .clk          (gt_txusrclk2_2),
    .data_in      (tx_serdes_header0_2),
    .data_out     (tx_serdes_header0_int_2)
  );




  
   assign rx_serdes_data0_int_2        =  rx_serdes_data_out_2[63:0];
   assign rx_serdes_header0_int_2      =  rxheader_out_2;
   assign rxgearboxslip_in_2           =  rx_serdes_bitslip_2;
   assign rx_serdes_datavalid_int_2    =  rxdatavalid_out_2[0];
   assign rx_serdes_headervalid_int_2  =  rxheadervalid_out_2;


  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (64)
  ) i_xxv_ethernet_0_rx_64bit_retiming_sync_serdes_data0_2 (
    .clk          (rx_serdes_clk_2),
    .data_in      (rx_serdes_data0_int_2),
    .data_out     (rx_serdes_data0_2)
  );

  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (2)
  ) i_xxv_ethernet_0_rx_2bit_retiming_sync_serdes_header0_2 (
    .clk          (rx_serdes_clk_2),
    .data_in      (rx_serdes_header0_int_2),
    .data_out     (rx_serdes_header0_2)
  );

  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (1)
  ) i_xxv_ethernet_0_rx_2bit_retiming_sync_serdes_data_valid0_2 (
    .clk          (rx_serdes_clk_2),
    .data_in      (rx_serdes_datavalid_int_2),
    .data_out     (rx_serdes_datavalid_2)
  );
  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (1)
  ) i_xxv_ethernet_0_rx_2bit_retiming_sync_serdes_header_valid0_2 (
    .clk          (rx_serdes_clk_2),
    .data_in      (rx_serdes_headervalid_int_2),
    .data_out     (rx_serdes_headervalid_2)
  );

xxv_ethernet_0_top #(
  .SERDES_WIDTH ( 64 )
) i_xxv_ethernet_0_top_2 (

  .tx_clk (gt_txusrclk2_2),
  .rx_clk (gt_rxusrclk2_2),
  .tx_reset (tx_reset_done_async_2),
  .rx_reset (rx_reset_done_2),
  .rx_serdes_clk (rx_serdes_clk_2),
  .rx_serdes_reset (rx_serdes_reset_done_2),
//// RX AXIS Signals
  .rx_axis_tvalid (rx_axis_tvalid_2),
  .rx_axis_tdata (rx_axis_tdata_2),
  .rx_axis_tlast (rx_axis_tlast_2),
  .rx_axis_tkeep (rx_axis_tkeep_2),
  .rx_axis_tuser (rx_axis_tuser_2),
  .rx_preambleout (rx_preambleout_2),

//// RX Control Signals
  .ctl_rx_test_pattern (ctl_rx_test_pattern_2),
  .ctl_rx_test_pattern_enable (ctl_rx_test_pattern_enable_2),
  .ctl_rx_data_pattern_select (ctl_rx_data_pattern_select_2),
  .ctl_rx_enable (ctl_rx_enable_2),
  .ctl_rx_delete_fcs (ctl_rx_delete_fcs_2),
  .ctl_rx_ignore_fcs (ctl_rx_ignore_fcs_2),
  .ctl_rx_max_packet_len (ctl_rx_max_packet_len_2),
  .ctl_rx_min_packet_len (ctl_rx_min_packet_len_2),
  .ctl_rx_custom_preamble_enable (ctl_rx_custom_preamble_enable_2),
  .ctl_rx_check_sfd (ctl_rx_check_sfd_2),
  .ctl_rx_check_preamble (ctl_rx_check_preamble_2),
  .ctl_rx_process_lfi (ctl_rx_process_lfi_2),
  .ctl_rx_force_resync (ctl_rx_force_resync_2),

//// RX Stats Signals
  .stat_rx_status  (stat_rx_status_2),
  .stat_rx_block_lock (stat_rx_block_lock_2),
  .stat_rx_framing_err_valid (stat_rx_framing_err_valid_2),
  .stat_rx_framing_err (stat_rx_framing_err_2),
  .stat_rx_hi_ber (stat_rx_hi_ber_2),
  .stat_rx_valid_ctrl_code (stat_rx_valid_ctrl_code_2),
  .stat_rx_bad_code (stat_rx_bad_code_2),
  .stat_rx_total_packets (stat_rx_total_packets_2),
  .stat_rx_total_good_packets (stat_rx_total_good_packets_2),
  .stat_rx_total_bytes (stat_rx_total_bytes_2),
  .stat_rx_total_good_bytes (stat_rx_total_good_bytes_2),
  .stat_rx_packet_small (stat_rx_packet_small_2),
  .stat_rx_jabber (stat_rx_jabber_2),
  .stat_rx_packet_large (stat_rx_packet_large_2),
  .stat_rx_oversize (stat_rx_oversize_2),
  .stat_rx_undersize (stat_rx_undersize_2),
  .stat_rx_toolong (stat_rx_toolong_2),
  .stat_rx_fragment (stat_rx_fragment_2),
  .stat_rx_packet_64_bytes (stat_rx_packet_64_bytes_2),
  .stat_rx_packet_65_127_bytes (stat_rx_packet_65_127_bytes_2),
  .stat_rx_packet_128_255_bytes (stat_rx_packet_128_255_bytes_2),
  .stat_rx_packet_256_511_bytes (stat_rx_packet_256_511_bytes_2),
  .stat_rx_packet_512_1023_bytes (stat_rx_packet_512_1023_bytes_2),
  .stat_rx_packet_1024_1518_bytes (stat_rx_packet_1024_1518_bytes_2),
  .stat_rx_packet_1519_1522_bytes (stat_rx_packet_1519_1522_bytes_2),
  .stat_rx_packet_1523_1548_bytes (stat_rx_packet_1523_1548_bytes_2),
  .stat_rx_bad_fcs (stat_rx_bad_fcs_2),
  .stat_rx_packet_bad_fcs (stat_rx_packet_bad_fcs_2),
  .stat_rx_stomped_fcs (stat_rx_stomped_fcs_2),
  .stat_rx_packet_1549_2047_bytes (stat_rx_packet_1549_2047_bytes_2),
  .stat_rx_packet_2048_4095_bytes (stat_rx_packet_2048_4095_bytes_2),
  .stat_rx_packet_4096_8191_bytes (stat_rx_packet_4096_8191_bytes_2),
  .stat_rx_packet_8192_9215_bytes (stat_rx_packet_8192_9215_bytes_2),
  .stat_rx_unicast (stat_rx_unicast_2),
  .stat_rx_multicast (stat_rx_multicast_2),
  .stat_rx_broadcast (stat_rx_broadcast_2),
  .stat_rx_vlan (stat_rx_vlan_2),
  .stat_rx_inrangeerr (stat_rx_inrangeerr_2),
  .stat_rx_bad_preamble (stat_rx_bad_preamble_2),
  .stat_rx_bad_sfd (stat_rx_bad_sfd_2),
  .stat_rx_got_signal_os (stat_rx_got_signal_os_2),
  .stat_rx_test_pattern_mismatch (stat_rx_test_pattern_mismatch_2),
  .stat_rx_truncated (stat_rx_truncated_2),
  .stat_rx_local_fault (stat_rx_local_fault_2),
  .stat_rx_remote_fault (stat_rx_remote_fault_2),
  .stat_rx_internal_local_fault (stat_rx_internal_local_fault_2),
  .stat_rx_received_local_fault (stat_rx_received_local_fault_2),


//// TX AXIS Signals
  .tx_axis_tready (tx_axis_tready_2),
  .tx_axis_tvalid (tx_axis_tvalid_2),
  .tx_axis_tdata (tx_axis_tdata_2),
  .tx_axis_tlast (tx_axis_tlast_2),
  .tx_axis_tkeep (tx_axis_tkeep_2),
  .tx_axis_tuser (tx_axis_tuser_2),
  .tx_unfout (tx_unfout_2),
  .tx_preamblein (tx_preamblein_2),

//// TX Control Signals
  .ctl_tx_test_pattern (ctl_tx_test_pattern_2),
  .ctl_tx_test_pattern_enable (ctl_tx_test_pattern_enable_2),
  .ctl_tx_test_pattern_select (ctl_tx_test_pattern_select_2),
  .ctl_tx_data_pattern_select (ctl_tx_data_pattern_select_2),
  .ctl_tx_test_pattern_seed_a (ctl_tx_test_pattern_seed_a_2),
  .ctl_tx_test_pattern_seed_b (ctl_tx_test_pattern_seed_b_2),
  .ctl_tx_enable (ctl_tx_enable_2),
  .ctl_tx_fcs_ins_enable (ctl_tx_fcs_ins_enable_2),
  .ctl_tx_ipg_value (ctl_tx_ipg_value_2),
  .ctl_tx_send_lfi (ctl_tx_send_lfi_2),
  .ctl_tx_send_rfi (ctl_tx_send_rfi_2),
  .ctl_tx_send_idle (ctl_tx_send_idle_2),
  .ctl_tx_custom_preamble_enable (ctl_tx_custom_preamble_enable_2),
  .ctl_tx_ignore_fcs (ctl_tx_ignore_fcs_2),


//// TX Stats Signals
  .stat_tx_total_packets (stat_tx_total_packets_2),
  .stat_tx_total_bytes (stat_tx_total_bytes_2),
  .stat_tx_total_good_packets (stat_tx_total_good_packets_2),
  .stat_tx_total_good_bytes (stat_tx_total_good_bytes_2),
  .stat_tx_packet_64_bytes (stat_tx_packet_64_bytes_2),
  .stat_tx_packet_65_127_bytes (stat_tx_packet_65_127_bytes_2),
  .stat_tx_packet_128_255_bytes (stat_tx_packet_128_255_bytes_2),
  .stat_tx_packet_256_511_bytes (stat_tx_packet_256_511_bytes_2),
  .stat_tx_packet_512_1023_bytes (stat_tx_packet_512_1023_bytes_2),
  .stat_tx_packet_1024_1518_bytes (stat_tx_packet_1024_1518_bytes_2),
  .stat_tx_packet_1519_1522_bytes (stat_tx_packet_1519_1522_bytes_2),
  .stat_tx_packet_1523_1548_bytes (stat_tx_packet_1523_1548_bytes_2),
  .stat_tx_packet_small (stat_tx_packet_small_2),
  .stat_tx_packet_large (stat_tx_packet_large_2),
  .stat_tx_packet_1549_2047_bytes (stat_tx_packet_1549_2047_bytes_2),
  .stat_tx_packet_2048_4095_bytes (stat_tx_packet_2048_4095_bytes_2),
  .stat_tx_packet_4096_8191_bytes (stat_tx_packet_4096_8191_bytes_2),
  .stat_tx_packet_8192_9215_bytes (stat_tx_packet_8192_9215_bytes_2),
  .stat_tx_unicast (stat_tx_unicast_2),
  .stat_tx_multicast (stat_tx_multicast_2),
  .stat_tx_broadcast (stat_tx_broadcast_2),
  .stat_tx_vlan (stat_tx_vlan_2),
  .stat_tx_bad_fcs (stat_tx_bad_fcs_2),
  .stat_tx_frame_error (stat_tx_frame_error_2),
  .stat_tx_local_fault (stat_tx_local_fault_2),



  .rx_serdes_datavalid0              (rx_serdes_datavalid_2),
  .rx_serdes_headervalid0            (rx_serdes_headervalid_2),
  .rx_serdes_bitslip0                (rx_serdes_bitslip_2),

  .rx_serdes_data0                   (rx_serdes_data0_2),
  .rx_serdes_header0                 (rx_serdes_header0_2),
  .tx_serdes_data0                   (tx_serdes_data0_2),
  .tx_serdes_header0                 (tx_serdes_header0_2)

);



  wire            tx_reset_done_async_3;
  wire            rx_reset_done_3;
  wire            rx_serdes_reset_done_3;

  wire [63:0]     tx_serdes_data0_3;
  wire [1:0]      tx_serdes_header0_3;
  wire [63:0]     tx_serdes_data0_int_3;
  wire [1:0]      tx_serdes_header0_int_3;

  wire [63:0]     rx_serdes_data0_3;
  wire [1:0]      rx_serdes_header0_3;
  wire [63:0]     rx_serdes_data0_int_3;
  wire [1:0]      rx_serdes_header0_int_3;
  wire [0:0]      rx_serdes_bitslip_3 ;
  wire [0:0]      rx_serdes_headervalid_3 ;
  wire [0:0]      rx_serdes_datavalid_3 ;
  wire [0:0]      rx_serdes_headervalid_int_3;
  wire [0:0]      rx_serdes_datavalid_int_3;
  wire            gt_txusrclk2_3;
  wire            gt_rxusrclk2_3;
  assign          gt_txusrclk2_3 =  tx_core_clk_3;
  assign          gt_rxusrclk2_3 =  rx_core_clk_3;

xxv_ethernet_0_cdc_sync i_xxv_ethernet_0_core_cdc_sync_tx_reset_3
  (
   .clk              (gt_txusrclk2_3),
   .signal_in        (tx_reset_3), 
   .signal_out       (tx_reset_done_async_3)
  );

  xxv_ethernet_0_cdc_sync i_xxv_ethernet_0_core_cdc_sync_rx_reset_3
  (
   .clk              (gt_rxusrclk2_3),
   .signal_in        (rx_reset_3), 
   .signal_out       (rx_reset_done_3)
  ); 

  xxv_ethernet_0_cdc_sync i_xxv_ethernet_0_core_cdc_sync_rx_serdes_reset_3
  (
   .clk              (rx_serdes_clk_3),
   .signal_in        (rx_serdes_reset_3), 
   .signal_out       (rx_serdes_reset_done_3)
  );

  
  assign tx_serdes_data_in_3 =  {64'b0,tx_serdes_data0_int_3};
  assign txheader_in_3       =  {4'b0,tx_serdes_header0_int_3};


  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (64)
  ) i_xxv_ethernet_0_tx_64bit_retiming_sync_serdes_data0_3 (
    .clk          (gt_txusrclk2_3),
    .data_in      (tx_serdes_data0_3),
    .data_out     (tx_serdes_data0_int_3)
  );

  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (2)
  ) i_xxv_ethernet_0_tx_2bit_retiming_sync_serdes_data0_3 (
    .clk          (gt_txusrclk2_3),
    .data_in      (tx_serdes_header0_3),
    .data_out     (tx_serdes_header0_int_3)
  );




  
   assign rx_serdes_data0_int_3        =  rx_serdes_data_out_3[63:0];
   assign rx_serdes_header0_int_3      =  rxheader_out_3;
   assign rxgearboxslip_in_3           =  rx_serdes_bitslip_3;
   assign rx_serdes_datavalid_int_3    =  rxdatavalid_out_3[0];
   assign rx_serdes_headervalid_int_3  =  rxheadervalid_out_3;


  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (64)
  ) i_xxv_ethernet_0_rx_64bit_retiming_sync_serdes_data0_3 (
    .clk          (rx_serdes_clk_3),
    .data_in      (rx_serdes_data0_int_3),
    .data_out     (rx_serdes_data0_3)
  );

  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (2)
  ) i_xxv_ethernet_0_rx_2bit_retiming_sync_serdes_header0_3 (
    .clk          (rx_serdes_clk_3),
    .data_in      (rx_serdes_header0_int_3),
    .data_out     (rx_serdes_header0_3)
  );

  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (1)
  ) i_xxv_ethernet_0_rx_2bit_retiming_sync_serdes_data_valid0_3 (
    .clk          (rx_serdes_clk_3),
    .data_in      (rx_serdes_datavalid_int_3),
    .data_out     (rx_serdes_datavalid_3)
  );
  xxv_ethernet_0_retiming_sync 
  #(
    .WIDTH        (1)
  ) i_xxv_ethernet_0_rx_2bit_retiming_sync_serdes_header_valid0_3 (
    .clk          (rx_serdes_clk_3),
    .data_in      (rx_serdes_headervalid_int_3),
    .data_out     (rx_serdes_headervalid_3)
  );

xxv_ethernet_0_top #(
  .SERDES_WIDTH ( 64 )
) i_xxv_ethernet_0_top_3 (

  .tx_clk (gt_txusrclk2_3),
  .rx_clk (gt_rxusrclk2_3),
  .tx_reset (tx_reset_done_async_3),
  .rx_reset (rx_reset_done_3),
  .rx_serdes_clk (rx_serdes_clk_3),
  .rx_serdes_reset (rx_serdes_reset_done_3),
//// RX AXIS Signals
  .rx_axis_tvalid (rx_axis_tvalid_3),
  .rx_axis_tdata (rx_axis_tdata_3),
  .rx_axis_tlast (rx_axis_tlast_3),
  .rx_axis_tkeep (rx_axis_tkeep_3),
  .rx_axis_tuser (rx_axis_tuser_3),
  .rx_preambleout (rx_preambleout_3),

//// RX Control Signals
  .ctl_rx_test_pattern (ctl_rx_test_pattern_3),
  .ctl_rx_test_pattern_enable (ctl_rx_test_pattern_enable_3),
  .ctl_rx_data_pattern_select (ctl_rx_data_pattern_select_3),
  .ctl_rx_enable (ctl_rx_enable_3),
  .ctl_rx_delete_fcs (ctl_rx_delete_fcs_3),
  .ctl_rx_ignore_fcs (ctl_rx_ignore_fcs_3),
  .ctl_rx_max_packet_len (ctl_rx_max_packet_len_3),
  .ctl_rx_min_packet_len (ctl_rx_min_packet_len_3),
  .ctl_rx_custom_preamble_enable (ctl_rx_custom_preamble_enable_3),
  .ctl_rx_check_sfd (ctl_rx_check_sfd_3),
  .ctl_rx_check_preamble (ctl_rx_check_preamble_3),
  .ctl_rx_process_lfi (ctl_rx_process_lfi_3),
  .ctl_rx_force_resync (ctl_rx_force_resync_3),

//// RX Stats Signals
  .stat_rx_status  (stat_rx_status_3),
  .stat_rx_block_lock (stat_rx_block_lock_3),
  .stat_rx_framing_err_valid (stat_rx_framing_err_valid_3),
  .stat_rx_framing_err (stat_rx_framing_err_3),
  .stat_rx_hi_ber (stat_rx_hi_ber_3),
  .stat_rx_valid_ctrl_code (stat_rx_valid_ctrl_code_3),
  .stat_rx_bad_code (stat_rx_bad_code_3),
  .stat_rx_total_packets (stat_rx_total_packets_3),
  .stat_rx_total_good_packets (stat_rx_total_good_packets_3),
  .stat_rx_total_bytes (stat_rx_total_bytes_3),
  .stat_rx_total_good_bytes (stat_rx_total_good_bytes_3),
  .stat_rx_packet_small (stat_rx_packet_small_3),
  .stat_rx_jabber (stat_rx_jabber_3),
  .stat_rx_packet_large (stat_rx_packet_large_3),
  .stat_rx_oversize (stat_rx_oversize_3),
  .stat_rx_undersize (stat_rx_undersize_3),
  .stat_rx_toolong (stat_rx_toolong_3),
  .stat_rx_fragment (stat_rx_fragment_3),
  .stat_rx_packet_64_bytes (stat_rx_packet_64_bytes_3),
  .stat_rx_packet_65_127_bytes (stat_rx_packet_65_127_bytes_3),
  .stat_rx_packet_128_255_bytes (stat_rx_packet_128_255_bytes_3),
  .stat_rx_packet_256_511_bytes (stat_rx_packet_256_511_bytes_3),
  .stat_rx_packet_512_1023_bytes (stat_rx_packet_512_1023_bytes_3),
  .stat_rx_packet_1024_1518_bytes (stat_rx_packet_1024_1518_bytes_3),
  .stat_rx_packet_1519_1522_bytes (stat_rx_packet_1519_1522_bytes_3),
  .stat_rx_packet_1523_1548_bytes (stat_rx_packet_1523_1548_bytes_3),
  .stat_rx_bad_fcs (stat_rx_bad_fcs_3),
  .stat_rx_packet_bad_fcs (stat_rx_packet_bad_fcs_3),
  .stat_rx_stomped_fcs (stat_rx_stomped_fcs_3),
  .stat_rx_packet_1549_2047_bytes (stat_rx_packet_1549_2047_bytes_3),
  .stat_rx_packet_2048_4095_bytes (stat_rx_packet_2048_4095_bytes_3),
  .stat_rx_packet_4096_8191_bytes (stat_rx_packet_4096_8191_bytes_3),
  .stat_rx_packet_8192_9215_bytes (stat_rx_packet_8192_9215_bytes_3),
  .stat_rx_unicast (stat_rx_unicast_3),
  .stat_rx_multicast (stat_rx_multicast_3),
  .stat_rx_broadcast (stat_rx_broadcast_3),
  .stat_rx_vlan (stat_rx_vlan_3),
  .stat_rx_inrangeerr (stat_rx_inrangeerr_3),
  .stat_rx_bad_preamble (stat_rx_bad_preamble_3),
  .stat_rx_bad_sfd (stat_rx_bad_sfd_3),
  .stat_rx_got_signal_os (stat_rx_got_signal_os_3),
  .stat_rx_test_pattern_mismatch (stat_rx_test_pattern_mismatch_3),
  .stat_rx_truncated (stat_rx_truncated_3),
  .stat_rx_local_fault (stat_rx_local_fault_3),
  .stat_rx_remote_fault (stat_rx_remote_fault_3),
  .stat_rx_internal_local_fault (stat_rx_internal_local_fault_3),
  .stat_rx_received_local_fault (stat_rx_received_local_fault_3),


//// TX AXIS Signals
  .tx_axis_tready (tx_axis_tready_3),
  .tx_axis_tvalid (tx_axis_tvalid_3),
  .tx_axis_tdata (tx_axis_tdata_3),
  .tx_axis_tlast (tx_axis_tlast_3),
  .tx_axis_tkeep (tx_axis_tkeep_3),
  .tx_axis_tuser (tx_axis_tuser_3),
  .tx_unfout (tx_unfout_3),
  .tx_preamblein (tx_preamblein_3),

//// TX Control Signals
  .ctl_tx_test_pattern (ctl_tx_test_pattern_3),
  .ctl_tx_test_pattern_enable (ctl_tx_test_pattern_enable_3),
  .ctl_tx_test_pattern_select (ctl_tx_test_pattern_select_3),
  .ctl_tx_data_pattern_select (ctl_tx_data_pattern_select_3),
  .ctl_tx_test_pattern_seed_a (ctl_tx_test_pattern_seed_a_3),
  .ctl_tx_test_pattern_seed_b (ctl_tx_test_pattern_seed_b_3),
  .ctl_tx_enable (ctl_tx_enable_3),
  .ctl_tx_fcs_ins_enable (ctl_tx_fcs_ins_enable_3),
  .ctl_tx_ipg_value (ctl_tx_ipg_value_3),
  .ctl_tx_send_lfi (ctl_tx_send_lfi_3),
  .ctl_tx_send_rfi (ctl_tx_send_rfi_3),
  .ctl_tx_send_idle (ctl_tx_send_idle_3),
  .ctl_tx_custom_preamble_enable (ctl_tx_custom_preamble_enable_3),
  .ctl_tx_ignore_fcs (ctl_tx_ignore_fcs_3),


//// TX Stats Signals
  .stat_tx_total_packets (stat_tx_total_packets_3),
  .stat_tx_total_bytes (stat_tx_total_bytes_3),
  .stat_tx_total_good_packets (stat_tx_total_good_packets_3),
  .stat_tx_total_good_bytes (stat_tx_total_good_bytes_3),
  .stat_tx_packet_64_bytes (stat_tx_packet_64_bytes_3),
  .stat_tx_packet_65_127_bytes (stat_tx_packet_65_127_bytes_3),
  .stat_tx_packet_128_255_bytes (stat_tx_packet_128_255_bytes_3),
  .stat_tx_packet_256_511_bytes (stat_tx_packet_256_511_bytes_3),
  .stat_tx_packet_512_1023_bytes (stat_tx_packet_512_1023_bytes_3),
  .stat_tx_packet_1024_1518_bytes (stat_tx_packet_1024_1518_bytes_3),
  .stat_tx_packet_1519_1522_bytes (stat_tx_packet_1519_1522_bytes_3),
  .stat_tx_packet_1523_1548_bytes (stat_tx_packet_1523_1548_bytes_3),
  .stat_tx_packet_small (stat_tx_packet_small_3),
  .stat_tx_packet_large (stat_tx_packet_large_3),
  .stat_tx_packet_1549_2047_bytes (stat_tx_packet_1549_2047_bytes_3),
  .stat_tx_packet_2048_4095_bytes (stat_tx_packet_2048_4095_bytes_3),
  .stat_tx_packet_4096_8191_bytes (stat_tx_packet_4096_8191_bytes_3),
  .stat_tx_packet_8192_9215_bytes (stat_tx_packet_8192_9215_bytes_3),
  .stat_tx_unicast (stat_tx_unicast_3),
  .stat_tx_multicast (stat_tx_multicast_3),
  .stat_tx_broadcast (stat_tx_broadcast_3),
  .stat_tx_vlan (stat_tx_vlan_3),
  .stat_tx_bad_fcs (stat_tx_bad_fcs_3),
  .stat_tx_frame_error (stat_tx_frame_error_3),
  .stat_tx_local_fault (stat_tx_local_fault_3),



  .rx_serdes_datavalid0              (rx_serdes_datavalid_3),
  .rx_serdes_headervalid0            (rx_serdes_headervalid_3),
  .rx_serdes_bitslip0                (rx_serdes_bitslip_3),

  .rx_serdes_data0                   (rx_serdes_data0_3),
  .rx_serdes_header0                 (rx_serdes_header0_3),
  .tx_serdes_data0                   (tx_serdes_data0_3),
  .tx_serdes_header0                 (tx_serdes_header0_3)

);






endmodule


(* DowngradeIPIdentifiedWarnings="yes" *)
  module xxv_ethernet_0_cdc_sync (
   input clk,
   input signal_in,
   output wire signal_out
  );
                               wire sig_in_cdc_from ;
      (* ASYNC_REG = "TRUE" *) reg  s_out_d2_cdc_to;
      (* ASYNC_REG = "TRUE" *) reg  s_out_d3;
      (* max_fanout = 500 *)   reg  s_out_d4;
      
// synthesis translate_off
      
      initial s_out_d2_cdc_to = 1'b0;
      initial s_out_d3        = 1'b0;
      initial s_out_d4        = 1'b0;
      
// synthesis translate_on   
   
      assign sig_in_cdc_from = signal_in;
      assign signal_out      = s_out_d4;
      
      always @(posedge clk) 
      begin
        s_out_d4         <= s_out_d3;
        s_out_d3         <= s_out_d2_cdc_to;
        s_out_d2_cdc_to  <= sig_in_cdc_from;
      end
  
  endmodule


(* DowngradeIPIdentifiedWarnings="yes" *)
module xxv_ethernet_0_retiming_sync
#(
 parameter WIDTH  = 1
)
(
 input  clk,
 input  [WIDTH-1:0] data_in,
 output wire [WIDTH-1:0]  data_out
);
    
    reg  [WIDTH-1:0] data_out_1d;
    reg  [WIDTH-1:0] data_out_2d;
    
    assign data_out      = data_out_2d;
    
    always @(posedge clk) 
    begin
        data_out_2d      <= data_out_1d;
        data_out_1d      <= data_in;
    end

endmodule


