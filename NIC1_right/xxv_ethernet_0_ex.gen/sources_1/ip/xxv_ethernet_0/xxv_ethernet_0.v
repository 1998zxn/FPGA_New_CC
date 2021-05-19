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


(* CHECK_LICENSE_TYPE = "xxv_ethernet_0,xxv_ethernet_core,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
(* CORE_GENERATION_INFO = "xxv_ethernet_0,xxv_ethernet_v3_3_0,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xxv_ethernet,x_ipVersion=3.3,x_ipCoreRevision=0,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_CORE=Ethernet MAC+PCS/PMA 64-bit,C_XGMII_INTERFACE=1,C_LINE_RATE=10,C_NUM_OF_CORES=4,C_CLOCKING=Asynchronous,C_DATA_PATH_INTERFACE=AXI Stream,C_RUNTIME_SWITCH=0,C_ENABLE_PREEMPTION=0,C_ENABLE_PREEMPTION_FIFO=0,C_ENABLE_DATAPATH_PARITY=0,C_BASE_R_KR=BASE-R,C_INCLUDE_FEC_LOGIC=0,C_INCLUDE_RSFEC_LOGIC=0,C_INCLUDE_HYBRID_CMAC_RSFEC_LOGIC=0,C_INCLUDE_AUTO_NEG_LT_LOGIC=None,C_ANLT_CLK_IN_MHZ=100,C_INCLUDE_AXI4_INTERFACE=0,C_INCLUDE_STATISTICS_COUNTERS=0,C_STATISTICS_REGS_TYPE=0,C_INCLUDE_USER_FIFO=1,C_ENABLE_TX_FLOW_CONTROL_LOGIC=0,C_ENABLE_RX_FLOW_CONTROL_LOGIC=0,C_ENABLE_TIME_STAMPING=0,C_PTP_OPERATION_MODE=2,C_PTP_CLOCKING_MODE=0,C_TX_LATENCY_ADJUST=0,C_ENABLE_VLANE_ADJUST_MODE=0,C_SYS_CLK=4000,C_GT_LOCATION=0,C_GT_REF_CLK_FREQ=156.25,C_GT_DRP_CLK=100.00,C_GT_TYPE=GTH,C_GT_GROUP_SELECT=Quad X0Y0,C_LANE1_GT_LOC=X0Y0,C_LANE2_GT_LOC=X0Y1,C_LANE3_GT_LOC=X0Y2,C_LANE4_GT_LOC=X0Y3,C_INS_LOSS_NYQ=30,C_RX_EQ_MODE=AUTO,C_ENABLE_PIPELINE_REG=0,C_ADD_GT_CNTRL_STS_PORTS=1,C_INCLUDE_SHARED_LOGIC=0,C_FAST_SIM_MODE=0,C_SWITCH_1_10_25G=0,C_FAMILY_CHK=kintexu,IS_BOARD_PROJECT=0,C_AXIS_TDATA_WIDTH=64,C_AXIS_TKEEP_WIDTH=7,C_TX_TOTAL_BYTES_WIDTH=4,C_GT_DIFFCTRL_WIDTH=3,C_MII_DATA_WIDTH=32,C_MII_CTRL_WIDTH=4,C_GTM_GROUP_SELECT=NA,C_CMAC_CORE_SELECT=CMACE4_X0Y0,x_ipLicense=xxv_eth_mac_pcs@2020.11(hardware_evaluation),x_ipLicense=xxv_eth_basekr@2020.11(hardware_evaluation),x_ipLicense=x_eth_mac@2020.11(hardware_evaluation),x_ipLicense=xxv_tsn_802d1cm@2020.11(unknown)}" *)
(* X_CORE_INFO = "xxv_ethernet_v3_3_0,Vivado 2020.2" *)

module xxv_ethernet_0 (
 
//// RX_0 Signals
  rx_reset_0,
//// RX_0 User Interface  Signals
  rx_axis_tvalid_0,
  rx_axis_tdata_0,
  rx_axis_tlast_0,
  rx_axis_tkeep_0,
  rx_axis_tuser_0,
  rx_preambleout_0,


//// RX_0 Control Signals
  ctl_rx_test_pattern_0,
  ctl_rx_test_pattern_enable_0,
  ctl_rx_data_pattern_select_0,
  ctl_rx_enable_0,
  ctl_rx_delete_fcs_0,
  ctl_rx_ignore_fcs_0,
  ctl_rx_max_packet_len_0,
  ctl_rx_min_packet_len_0,
  ctl_rx_custom_preamble_enable_0,
  ctl_rx_check_sfd_0,
  ctl_rx_check_preamble_0,
  ctl_rx_process_lfi_0,
  ctl_rx_force_resync_0,



//// RX_0 Stats Signals
  stat_rx_block_lock_0,
  stat_rx_framing_err_valid_0,
  stat_rx_framing_err_0,
  stat_rx_hi_ber_0,
  stat_rx_valid_ctrl_code_0,
  stat_rx_bad_code_0,
  stat_rx_total_packets_0,
  stat_rx_total_good_packets_0,
  stat_rx_total_bytes_0,
  stat_rx_total_good_bytes_0,
  stat_rx_packet_small_0,
  stat_rx_jabber_0,
  stat_rx_packet_large_0,
  stat_rx_oversize_0,
  stat_rx_undersize_0,
  stat_rx_toolong_0,
  stat_rx_fragment_0,
  stat_rx_packet_64_bytes_0,
  stat_rx_packet_65_127_bytes_0,
  stat_rx_packet_128_255_bytes_0,
  stat_rx_packet_256_511_bytes_0,
  stat_rx_packet_512_1023_bytes_0,
  stat_rx_packet_1024_1518_bytes_0,
  stat_rx_packet_1519_1522_bytes_0,
  stat_rx_packet_1523_1548_bytes_0,
  stat_rx_bad_fcs_0,
  stat_rx_packet_bad_fcs_0,
  stat_rx_stomped_fcs_0,
  stat_rx_packet_1549_2047_bytes_0,
  stat_rx_packet_2048_4095_bytes_0,
  stat_rx_packet_4096_8191_bytes_0,
  stat_rx_packet_8192_9215_bytes_0,
  stat_rx_unicast_0,
  stat_rx_multicast_0,
  stat_rx_broadcast_0,
  stat_rx_vlan_0,
  stat_rx_inrangeerr_0,
  stat_rx_bad_preamble_0,
  stat_rx_bad_sfd_0,
  stat_rx_got_signal_os_0,
  stat_rx_test_pattern_mismatch_0,
  stat_rx_truncated_0,
  stat_rx_local_fault_0,
  stat_rx_remote_fault_0,
  stat_rx_internal_local_fault_0,
  stat_rx_received_local_fault_0,
  stat_rx_status_0,



//// TX_0 Signals
  tx_reset_0,

//// TX_0 User Interface  Signals
  tx_axis_tready_0,
  tx_axis_tvalid_0,
  tx_axis_tdata_0,
  tx_axis_tlast_0,
  tx_axis_tkeep_0,
  tx_axis_tuser_0,
  tx_unfout_0,
  tx_preamblein_0,

//// TX_0 Control Signals
  ctl_tx_test_pattern_0,
  ctl_tx_test_pattern_enable_0,
  ctl_tx_test_pattern_select_0,
  ctl_tx_data_pattern_select_0,
  ctl_tx_test_pattern_seed_a_0,
  ctl_tx_test_pattern_seed_b_0,
  ctl_tx_enable_0,
  ctl_tx_fcs_ins_enable_0,
  ctl_tx_ipg_value_0,
  ctl_tx_send_lfi_0,
  ctl_tx_send_rfi_0,
  ctl_tx_send_idle_0,
  ctl_tx_custom_preamble_enable_0,
  ctl_tx_ignore_fcs_0,


//// TX_0 Stats Signals
  stat_tx_total_packets_0,
  stat_tx_total_bytes_0,
  stat_tx_total_good_packets_0,
  stat_tx_total_good_bytes_0,
  stat_tx_packet_64_bytes_0,
  stat_tx_packet_65_127_bytes_0,
  stat_tx_packet_128_255_bytes_0,
  stat_tx_packet_256_511_bytes_0,
  stat_tx_packet_512_1023_bytes_0,
  stat_tx_packet_1024_1518_bytes_0,
  stat_tx_packet_1519_1522_bytes_0,
  stat_tx_packet_1523_1548_bytes_0,
  stat_tx_packet_small_0,
  stat_tx_packet_large_0,
  stat_tx_packet_1549_2047_bytes_0,
  stat_tx_packet_2048_4095_bytes_0,
  stat_tx_packet_4096_8191_bytes_0,
  stat_tx_packet_8192_9215_bytes_0,
  stat_tx_unicast_0,
  stat_tx_multicast_0,
  stat_tx_broadcast_0,
  stat_tx_vlan_0,
  stat_tx_bad_fcs_0,
  stat_tx_frame_error_0,
  stat_tx_local_fault_0,









//// RX_1 Signals
  rx_reset_1,
//// RX_1 User Interface  Signals
  rx_axis_tvalid_1,
  rx_axis_tdata_1,
  rx_axis_tlast_1,
  rx_axis_tkeep_1,
  rx_axis_tuser_1,
  rx_preambleout_1,


//// RX_1 Control Signals
  ctl_rx_test_pattern_1,
  ctl_rx_test_pattern_enable_1,
  ctl_rx_data_pattern_select_1,
  ctl_rx_enable_1,
  ctl_rx_delete_fcs_1,
  ctl_rx_ignore_fcs_1,
  ctl_rx_max_packet_len_1,
  ctl_rx_min_packet_len_1,
  ctl_rx_custom_preamble_enable_1,
  ctl_rx_check_sfd_1,
  ctl_rx_check_preamble_1,
  ctl_rx_process_lfi_1,
  ctl_rx_force_resync_1,



//// RX_1 Stats Signals
  stat_rx_block_lock_1,
  stat_rx_framing_err_valid_1,
  stat_rx_framing_err_1,
  stat_rx_hi_ber_1,
  stat_rx_valid_ctrl_code_1,
  stat_rx_bad_code_1,
  stat_rx_total_packets_1,
  stat_rx_total_good_packets_1,
  stat_rx_total_bytes_1,
  stat_rx_total_good_bytes_1,
  stat_rx_packet_small_1,
  stat_rx_jabber_1,
  stat_rx_packet_large_1,
  stat_rx_oversize_1,
  stat_rx_undersize_1,
  stat_rx_toolong_1,
  stat_rx_fragment_1,
  stat_rx_packet_64_bytes_1,
  stat_rx_packet_65_127_bytes_1,
  stat_rx_packet_128_255_bytes_1,
  stat_rx_packet_256_511_bytes_1,
  stat_rx_packet_512_1023_bytes_1,
  stat_rx_packet_1024_1518_bytes_1,
  stat_rx_packet_1519_1522_bytes_1,
  stat_rx_packet_1523_1548_bytes_1,
  stat_rx_bad_fcs_1,
  stat_rx_packet_bad_fcs_1,
  stat_rx_stomped_fcs_1,
  stat_rx_packet_1549_2047_bytes_1,
  stat_rx_packet_2048_4095_bytes_1,
  stat_rx_packet_4096_8191_bytes_1,
  stat_rx_packet_8192_9215_bytes_1,
  stat_rx_unicast_1,
  stat_rx_multicast_1,
  stat_rx_broadcast_1,
  stat_rx_vlan_1,
  stat_rx_inrangeerr_1,
  stat_rx_bad_preamble_1,
  stat_rx_bad_sfd_1,
  stat_rx_got_signal_os_1,
  stat_rx_test_pattern_mismatch_1,
  stat_rx_truncated_1,
  stat_rx_local_fault_1,
  stat_rx_remote_fault_1,
  stat_rx_internal_local_fault_1,
  stat_rx_received_local_fault_1,
  stat_rx_status_1,



//// TX_1 Signals
  tx_reset_1,

//// TX_1 User Interface  Signals
  tx_axis_tready_1,
  tx_axis_tvalid_1,
  tx_axis_tdata_1,
  tx_axis_tlast_1,
  tx_axis_tkeep_1,
  tx_axis_tuser_1,
  tx_unfout_1,
  tx_preamblein_1,

//// TX_1 Control Signals
  ctl_tx_test_pattern_1,
  ctl_tx_test_pattern_enable_1,
  ctl_tx_test_pattern_select_1,
  ctl_tx_data_pattern_select_1,
  ctl_tx_test_pattern_seed_a_1,
  ctl_tx_test_pattern_seed_b_1,
  ctl_tx_enable_1,
  ctl_tx_fcs_ins_enable_1,
  ctl_tx_ipg_value_1,
  ctl_tx_send_lfi_1,
  ctl_tx_send_rfi_1,
  ctl_tx_send_idle_1,
  ctl_tx_custom_preamble_enable_1,
  ctl_tx_ignore_fcs_1,


//// TX_1 Stats Signals
  stat_tx_total_packets_1,
  stat_tx_total_bytes_1,
  stat_tx_total_good_packets_1,
  stat_tx_total_good_bytes_1,
  stat_tx_packet_64_bytes_1,
  stat_tx_packet_65_127_bytes_1,
  stat_tx_packet_128_255_bytes_1,
  stat_tx_packet_256_511_bytes_1,
  stat_tx_packet_512_1023_bytes_1,
  stat_tx_packet_1024_1518_bytes_1,
  stat_tx_packet_1519_1522_bytes_1,
  stat_tx_packet_1523_1548_bytes_1,
  stat_tx_packet_small_1,
  stat_tx_packet_large_1,
  stat_tx_packet_1549_2047_bytes_1,
  stat_tx_packet_2048_4095_bytes_1,
  stat_tx_packet_4096_8191_bytes_1,
  stat_tx_packet_8192_9215_bytes_1,
  stat_tx_unicast_1,
  stat_tx_multicast_1,
  stat_tx_broadcast_1,
  stat_tx_vlan_1,
  stat_tx_bad_fcs_1,
  stat_tx_frame_error_1,
  stat_tx_local_fault_1,









//// RX_2 Signals
  rx_reset_2,
//// RX_2 User Interface  Signals
  rx_axis_tvalid_2,
  rx_axis_tdata_2,
  rx_axis_tlast_2,
  rx_axis_tkeep_2,
  rx_axis_tuser_2,
  rx_preambleout_2,


//// RX_2 Control Signals
  ctl_rx_test_pattern_2,
  ctl_rx_test_pattern_enable_2,
  ctl_rx_data_pattern_select_2,
  ctl_rx_enable_2,
  ctl_rx_delete_fcs_2,
  ctl_rx_ignore_fcs_2,
  ctl_rx_max_packet_len_2,
  ctl_rx_min_packet_len_2,
  ctl_rx_custom_preamble_enable_2,
  ctl_rx_check_sfd_2,
  ctl_rx_check_preamble_2,
  ctl_rx_process_lfi_2,
  ctl_rx_force_resync_2,



//// RX_2 Stats Signals
  stat_rx_block_lock_2,
  stat_rx_framing_err_valid_2,
  stat_rx_framing_err_2,
  stat_rx_hi_ber_2,
  stat_rx_valid_ctrl_code_2,
  stat_rx_bad_code_2,
  stat_rx_total_packets_2,
  stat_rx_total_good_packets_2,
  stat_rx_total_bytes_2,
  stat_rx_total_good_bytes_2,
  stat_rx_packet_small_2,
  stat_rx_jabber_2,
  stat_rx_packet_large_2,
  stat_rx_oversize_2,
  stat_rx_undersize_2,
  stat_rx_toolong_2,
  stat_rx_fragment_2,
  stat_rx_packet_64_bytes_2,
  stat_rx_packet_65_127_bytes_2,
  stat_rx_packet_128_255_bytes_2,
  stat_rx_packet_256_511_bytes_2,
  stat_rx_packet_512_1023_bytes_2,
  stat_rx_packet_1024_1518_bytes_2,
  stat_rx_packet_1519_1522_bytes_2,
  stat_rx_packet_1523_1548_bytes_2,
  stat_rx_bad_fcs_2,
  stat_rx_packet_bad_fcs_2,
  stat_rx_stomped_fcs_2,
  stat_rx_packet_1549_2047_bytes_2,
  stat_rx_packet_2048_4095_bytes_2,
  stat_rx_packet_4096_8191_bytes_2,
  stat_rx_packet_8192_9215_bytes_2,
  stat_rx_unicast_2,
  stat_rx_multicast_2,
  stat_rx_broadcast_2,
  stat_rx_vlan_2,
  stat_rx_inrangeerr_2,
  stat_rx_bad_preamble_2,
  stat_rx_bad_sfd_2,
  stat_rx_got_signal_os_2,
  stat_rx_test_pattern_mismatch_2,
  stat_rx_truncated_2,
  stat_rx_local_fault_2,
  stat_rx_remote_fault_2,
  stat_rx_internal_local_fault_2,
  stat_rx_received_local_fault_2,
  stat_rx_status_2,



//// TX_2 Signals
  tx_reset_2,

//// TX_2 User Interface  Signals
  tx_axis_tready_2,
  tx_axis_tvalid_2,
  tx_axis_tdata_2,
  tx_axis_tlast_2,
  tx_axis_tkeep_2,
  tx_axis_tuser_2,
  tx_unfout_2,
  tx_preamblein_2,

//// TX_2 Control Signals
  ctl_tx_test_pattern_2,
  ctl_tx_test_pattern_enable_2,
  ctl_tx_test_pattern_select_2,
  ctl_tx_data_pattern_select_2,
  ctl_tx_test_pattern_seed_a_2,
  ctl_tx_test_pattern_seed_b_2,
  ctl_tx_enable_2,
  ctl_tx_fcs_ins_enable_2,
  ctl_tx_ipg_value_2,
  ctl_tx_send_lfi_2,
  ctl_tx_send_rfi_2,
  ctl_tx_send_idle_2,
  ctl_tx_custom_preamble_enable_2,
  ctl_tx_ignore_fcs_2,


//// TX_2 Stats Signals
  stat_tx_total_packets_2,
  stat_tx_total_bytes_2,
  stat_tx_total_good_packets_2,
  stat_tx_total_good_bytes_2,
  stat_tx_packet_64_bytes_2,
  stat_tx_packet_65_127_bytes_2,
  stat_tx_packet_128_255_bytes_2,
  stat_tx_packet_256_511_bytes_2,
  stat_tx_packet_512_1023_bytes_2,
  stat_tx_packet_1024_1518_bytes_2,
  stat_tx_packet_1519_1522_bytes_2,
  stat_tx_packet_1523_1548_bytes_2,
  stat_tx_packet_small_2,
  stat_tx_packet_large_2,
  stat_tx_packet_1549_2047_bytes_2,
  stat_tx_packet_2048_4095_bytes_2,
  stat_tx_packet_4096_8191_bytes_2,
  stat_tx_packet_8192_9215_bytes_2,
  stat_tx_unicast_2,
  stat_tx_multicast_2,
  stat_tx_broadcast_2,
  stat_tx_vlan_2,
  stat_tx_bad_fcs_2,
  stat_tx_frame_error_2,
  stat_tx_local_fault_2,









//// RX_3 Signals
  rx_reset_3,
//// RX_3 User Interface  Signals
  rx_axis_tvalid_3,
  rx_axis_tdata_3,
  rx_axis_tlast_3,
  rx_axis_tkeep_3,
  rx_axis_tuser_3,
  rx_preambleout_3,


//// RX_3 Control Signals
  ctl_rx_test_pattern_3,
  ctl_rx_test_pattern_enable_3,
  ctl_rx_data_pattern_select_3,
  ctl_rx_enable_3,
  ctl_rx_delete_fcs_3,
  ctl_rx_ignore_fcs_3,
  ctl_rx_max_packet_len_3,
  ctl_rx_min_packet_len_3,
  ctl_rx_custom_preamble_enable_3,
  ctl_rx_check_sfd_3,
  ctl_rx_check_preamble_3,
  ctl_rx_process_lfi_3,
  ctl_rx_force_resync_3,



//// RX_3 Stats Signals
  stat_rx_block_lock_3,
  stat_rx_framing_err_valid_3,
  stat_rx_framing_err_3,
  stat_rx_hi_ber_3,
  stat_rx_valid_ctrl_code_3,
  stat_rx_bad_code_3,
  stat_rx_total_packets_3,
  stat_rx_total_good_packets_3,
  stat_rx_total_bytes_3,
  stat_rx_total_good_bytes_3,
  stat_rx_packet_small_3,
  stat_rx_jabber_3,
  stat_rx_packet_large_3,
  stat_rx_oversize_3,
  stat_rx_undersize_3,
  stat_rx_toolong_3,
  stat_rx_fragment_3,
  stat_rx_packet_64_bytes_3,
  stat_rx_packet_65_127_bytes_3,
  stat_rx_packet_128_255_bytes_3,
  stat_rx_packet_256_511_bytes_3,
  stat_rx_packet_512_1023_bytes_3,
  stat_rx_packet_1024_1518_bytes_3,
  stat_rx_packet_1519_1522_bytes_3,
  stat_rx_packet_1523_1548_bytes_3,
  stat_rx_bad_fcs_3,
  stat_rx_packet_bad_fcs_3,
  stat_rx_stomped_fcs_3,
  stat_rx_packet_1549_2047_bytes_3,
  stat_rx_packet_2048_4095_bytes_3,
  stat_rx_packet_4096_8191_bytes_3,
  stat_rx_packet_8192_9215_bytes_3,
  stat_rx_unicast_3,
  stat_rx_multicast_3,
  stat_rx_broadcast_3,
  stat_rx_vlan_3,
  stat_rx_inrangeerr_3,
  stat_rx_bad_preamble_3,
  stat_rx_bad_sfd_3,
  stat_rx_got_signal_os_3,
  stat_rx_test_pattern_mismatch_3,
  stat_rx_truncated_3,
  stat_rx_local_fault_3,
  stat_rx_remote_fault_3,
  stat_rx_internal_local_fault_3,
  stat_rx_received_local_fault_3,
  stat_rx_status_3,



//// TX_3 Signals
  tx_reset_3,

//// TX_3 User Interface  Signals
  tx_axis_tready_3,
  tx_axis_tvalid_3,
  tx_axis_tdata_3,
  tx_axis_tlast_3,
  tx_axis_tkeep_3,
  tx_axis_tuser_3,
  tx_unfout_3,
  tx_preamblein_3,

//// TX_3 Control Signals
  ctl_tx_test_pattern_3,
  ctl_tx_test_pattern_enable_3,
  ctl_tx_test_pattern_select_3,
  ctl_tx_data_pattern_select_3,
  ctl_tx_test_pattern_seed_a_3,
  ctl_tx_test_pattern_seed_b_3,
  ctl_tx_enable_3,
  ctl_tx_fcs_ins_enable_3,
  ctl_tx_ipg_value_3,
  ctl_tx_send_lfi_3,
  ctl_tx_send_rfi_3,
  ctl_tx_send_idle_3,
  ctl_tx_custom_preamble_enable_3,
  ctl_tx_ignore_fcs_3,


//// TX_3 Stats Signals
  stat_tx_total_packets_3,
  stat_tx_total_bytes_3,
  stat_tx_total_good_packets_3,
  stat_tx_total_good_bytes_3,
  stat_tx_packet_64_bytes_3,
  stat_tx_packet_65_127_bytes_3,
  stat_tx_packet_128_255_bytes_3,
  stat_tx_packet_256_511_bytes_3,
  stat_tx_packet_512_1023_bytes_3,
  stat_tx_packet_1024_1518_bytes_3,
  stat_tx_packet_1519_1522_bytes_3,
  stat_tx_packet_1523_1548_bytes_3,
  stat_tx_packet_small_3,
  stat_tx_packet_large_3,
  stat_tx_packet_1549_2047_bytes_3,
  stat_tx_packet_2048_4095_bytes_3,
  stat_tx_packet_4096_8191_bytes_3,
  stat_tx_packet_8192_9215_bytes_3,
  stat_tx_unicast_3,
  stat_tx_multicast_3,
  stat_tx_broadcast_3,
  stat_tx_vlan_3,
  stat_tx_bad_fcs_3,
  stat_tx_frame_error_3,
  stat_tx_local_fault_3,










  rx_core_clk_0,
  rx_serdes_reset_0,
  tx_core_clk_0,
  rx_serdes_clk_0,
  rxgearboxslip_in_0,
  rxdatavalid_out_0,
  rxheader_out_0,
  rxheadervalid_out_0,
  rx_serdes_data_out_0,
  tx_serdes_data_in_0,
  txheader_in_0,
  rx_core_clk_1,
  rx_serdes_reset_1,
  tx_core_clk_1,
  rx_serdes_clk_1,
  rxgearboxslip_in_1,
  rxdatavalid_out_1,
  rxheader_out_1,
  rxheadervalid_out_1,
  rx_serdes_data_out_1,
  tx_serdes_data_in_1,
  txheader_in_1,
  rx_core_clk_2,
  rx_serdes_reset_2,
  tx_core_clk_2,
  rx_serdes_clk_2,
  rxgearboxslip_in_2,
  rxdatavalid_out_2,
  rxheader_out_2,
  rxheadervalid_out_2,
  rx_serdes_data_out_2,
  tx_serdes_data_in_2,
  txheader_in_2,
  rx_core_clk_3,
  rx_serdes_reset_3,
  tx_core_clk_3,
  rx_serdes_clk_3,
  rxgearboxslip_in_3,
  rxdatavalid_out_3,
  rxheader_out_3,
  rxheadervalid_out_3,
  rx_serdes_data_out_3,
  tx_serdes_data_in_3,
  txheader_in_3
);
 
//// RX_0 Signals
  input  wire rx_reset_0;
//// RX_0 User Interface Signals
  output wire rx_axis_tvalid_0;
  output wire [63:0] rx_axis_tdata_0;
  output wire rx_axis_tlast_0;
  output wire [7:0] rx_axis_tkeep_0;
  output wire rx_axis_tuser_0;
  output wire [55:0] rx_preambleout_0;



//// RX_0 Control Signals
  input  wire ctl_rx_test_pattern_0;
  input  wire ctl_rx_test_pattern_enable_0;
  input  wire ctl_rx_data_pattern_select_0;
  input  wire ctl_rx_enable_0;
  input  wire ctl_rx_delete_fcs_0;
  input  wire ctl_rx_ignore_fcs_0;
  input  wire [14:0] ctl_rx_max_packet_len_0;
  input  wire [7:0] ctl_rx_min_packet_len_0;
  input  wire ctl_rx_custom_preamble_enable_0;
  input  wire ctl_rx_check_sfd_0;
  input  wire ctl_rx_check_preamble_0;
  input  wire ctl_rx_process_lfi_0;
  input  wire ctl_rx_force_resync_0;



//// RX_0 Stats Signals
  output wire stat_rx_block_lock_0;
  output wire stat_rx_framing_err_valid_0;
  output wire stat_rx_framing_err_0;
  output wire stat_rx_hi_ber_0;
  output wire stat_rx_valid_ctrl_code_0;
  output wire stat_rx_bad_code_0;
  output wire [1:0] stat_rx_total_packets_0;
  output wire stat_rx_total_good_packets_0;
  output wire [3:0] stat_rx_total_bytes_0;
  output wire [13:0] stat_rx_total_good_bytes_0;
  output wire stat_rx_packet_small_0;
  output wire stat_rx_jabber_0;
  output wire stat_rx_packet_large_0;
  output wire stat_rx_oversize_0;
  output wire stat_rx_undersize_0;
  output wire stat_rx_toolong_0;
  output wire stat_rx_fragment_0;
  output wire stat_rx_packet_64_bytes_0;
  output wire stat_rx_packet_65_127_bytes_0;
  output wire stat_rx_packet_128_255_bytes_0;
  output wire stat_rx_packet_256_511_bytes_0;
  output wire stat_rx_packet_512_1023_bytes_0;
  output wire stat_rx_packet_1024_1518_bytes_0;
  output wire stat_rx_packet_1519_1522_bytes_0;
  output wire stat_rx_packet_1523_1548_bytes_0;
  output wire [1:0] stat_rx_bad_fcs_0;
  output wire stat_rx_packet_bad_fcs_0;
  output wire [1:0] stat_rx_stomped_fcs_0;
  output wire stat_rx_packet_1549_2047_bytes_0;
  output wire stat_rx_packet_2048_4095_bytes_0;
  output wire stat_rx_packet_4096_8191_bytes_0;
  output wire stat_rx_packet_8192_9215_bytes_0;
  output wire stat_rx_unicast_0;
  output wire stat_rx_multicast_0;
  output wire stat_rx_broadcast_0;
  output wire stat_rx_vlan_0;
  output wire stat_rx_inrangeerr_0;
  output wire stat_rx_bad_preamble_0;
  output wire stat_rx_bad_sfd_0;
  output wire stat_rx_got_signal_os_0;
  output wire stat_rx_test_pattern_mismatch_0;
  output wire stat_rx_truncated_0;
  output wire stat_rx_local_fault_0;
  output wire stat_rx_remote_fault_0;
  output wire stat_rx_internal_local_fault_0;
  output wire stat_rx_received_local_fault_0;
    output wire  stat_rx_status_0;


//// TX_0 Signals
  input  wire tx_reset_0;

//// TX_0 User Interface Signals
  output wire tx_axis_tready_0;
  input  wire tx_axis_tvalid_0;
  input  wire [63:0] tx_axis_tdata_0;
  input  wire tx_axis_tlast_0;
  input  wire [7:0] tx_axis_tkeep_0;
  input  wire tx_axis_tuser_0;
  output wire tx_unfout_0;
  input  wire [55:0] tx_preamblein_0;

//// TX_0 Control Signals
  input  wire ctl_tx_test_pattern_0;
  input  wire ctl_tx_test_pattern_enable_0;
  input  wire ctl_tx_test_pattern_select_0;
  input  wire ctl_tx_data_pattern_select_0;
  input  wire [57:0] ctl_tx_test_pattern_seed_a_0;
  input  wire [57:0] ctl_tx_test_pattern_seed_b_0;
  input  wire ctl_tx_enable_0;
  input  wire ctl_tx_fcs_ins_enable_0;
  input  wire [3:0] ctl_tx_ipg_value_0;
  input  wire ctl_tx_send_lfi_0;
  input  wire ctl_tx_send_rfi_0;
  input  wire ctl_tx_send_idle_0;
  input  wire ctl_tx_custom_preamble_enable_0;
  input  wire ctl_tx_ignore_fcs_0;


//// TX_0 Stats Signals
  output wire stat_tx_total_packets_0;
  output wire [3:0] stat_tx_total_bytes_0;
  output wire stat_tx_total_good_packets_0;
  output wire [13:0] stat_tx_total_good_bytes_0;
  output wire stat_tx_packet_64_bytes_0;
  output wire stat_tx_packet_65_127_bytes_0;
  output wire stat_tx_packet_128_255_bytes_0;
  output wire stat_tx_packet_256_511_bytes_0;
  output wire stat_tx_packet_512_1023_bytes_0;
  output wire stat_tx_packet_1024_1518_bytes_0;
  output wire stat_tx_packet_1519_1522_bytes_0;
  output wire stat_tx_packet_1523_1548_bytes_0;
  output wire stat_tx_packet_small_0;
  output wire stat_tx_packet_large_0;
  output wire stat_tx_packet_1549_2047_bytes_0;
  output wire stat_tx_packet_2048_4095_bytes_0;
  output wire stat_tx_packet_4096_8191_bytes_0;
  output wire stat_tx_packet_8192_9215_bytes_0;
  output wire stat_tx_unicast_0;
  output wire stat_tx_multicast_0;
  output wire stat_tx_broadcast_0;
  output wire stat_tx_vlan_0;
  output wire stat_tx_bad_fcs_0;
  output wire stat_tx_frame_error_0;
  output wire stat_tx_local_fault_0;






//// RX_1 Signals
  input  wire rx_reset_1;
//// RX_1 User Interface Signals
  output wire rx_axis_tvalid_1;
  output wire [63:0] rx_axis_tdata_1;
  output wire rx_axis_tlast_1;
  output wire [7:0] rx_axis_tkeep_1;
  output wire rx_axis_tuser_1;
  output wire [55:0] rx_preambleout_1;



//// RX_1 Control Signals
  input  wire ctl_rx_test_pattern_1;
  input  wire ctl_rx_test_pattern_enable_1;
  input  wire ctl_rx_data_pattern_select_1;
  input  wire ctl_rx_enable_1;
  input  wire ctl_rx_delete_fcs_1;
  input  wire ctl_rx_ignore_fcs_1;
  input  wire [14:0] ctl_rx_max_packet_len_1;
  input  wire [7:0] ctl_rx_min_packet_len_1;
  input  wire ctl_rx_custom_preamble_enable_1;
  input  wire ctl_rx_check_sfd_1;
  input  wire ctl_rx_check_preamble_1;
  input  wire ctl_rx_process_lfi_1;
  input  wire ctl_rx_force_resync_1;



//// RX_1 Stats Signals
  output wire stat_rx_block_lock_1;
  output wire stat_rx_framing_err_valid_1;
  output wire stat_rx_framing_err_1;
  output wire stat_rx_hi_ber_1;
  output wire stat_rx_valid_ctrl_code_1;
  output wire stat_rx_bad_code_1;
  output wire [1:0] stat_rx_total_packets_1;
  output wire stat_rx_total_good_packets_1;
  output wire [3:0] stat_rx_total_bytes_1;
  output wire [13:0] stat_rx_total_good_bytes_1;
  output wire stat_rx_packet_small_1;
  output wire stat_rx_jabber_1;
  output wire stat_rx_packet_large_1;
  output wire stat_rx_oversize_1;
  output wire stat_rx_undersize_1;
  output wire stat_rx_toolong_1;
  output wire stat_rx_fragment_1;
  output wire stat_rx_packet_64_bytes_1;
  output wire stat_rx_packet_65_127_bytes_1;
  output wire stat_rx_packet_128_255_bytes_1;
  output wire stat_rx_packet_256_511_bytes_1;
  output wire stat_rx_packet_512_1023_bytes_1;
  output wire stat_rx_packet_1024_1518_bytes_1;
  output wire stat_rx_packet_1519_1522_bytes_1;
  output wire stat_rx_packet_1523_1548_bytes_1;
  output wire [1:0] stat_rx_bad_fcs_1;
  output wire stat_rx_packet_bad_fcs_1;
  output wire [1:0] stat_rx_stomped_fcs_1;
  output wire stat_rx_packet_1549_2047_bytes_1;
  output wire stat_rx_packet_2048_4095_bytes_1;
  output wire stat_rx_packet_4096_8191_bytes_1;
  output wire stat_rx_packet_8192_9215_bytes_1;
  output wire stat_rx_unicast_1;
  output wire stat_rx_multicast_1;
  output wire stat_rx_broadcast_1;
  output wire stat_rx_vlan_1;
  output wire stat_rx_inrangeerr_1;
  output wire stat_rx_bad_preamble_1;
  output wire stat_rx_bad_sfd_1;
  output wire stat_rx_got_signal_os_1;
  output wire stat_rx_test_pattern_mismatch_1;
  output wire stat_rx_truncated_1;
  output wire stat_rx_local_fault_1;
  output wire stat_rx_remote_fault_1;
  output wire stat_rx_internal_local_fault_1;
  output wire stat_rx_received_local_fault_1;
    output wire  stat_rx_status_1;


//// TX_1 Signals
  input  wire tx_reset_1;

//// TX_1 User Interface Signals
  output wire tx_axis_tready_1;
  input  wire tx_axis_tvalid_1;
  input  wire [63:0] tx_axis_tdata_1;
  input  wire tx_axis_tlast_1;
  input  wire [7:0] tx_axis_tkeep_1;
  input  wire tx_axis_tuser_1;
  output wire tx_unfout_1;
  input  wire [55:0] tx_preamblein_1;

//// TX_1 Control Signals
  input  wire ctl_tx_test_pattern_1;
  input  wire ctl_tx_test_pattern_enable_1;
  input  wire ctl_tx_test_pattern_select_1;
  input  wire ctl_tx_data_pattern_select_1;
  input  wire [57:0] ctl_tx_test_pattern_seed_a_1;
  input  wire [57:0] ctl_tx_test_pattern_seed_b_1;
  input  wire ctl_tx_enable_1;
  input  wire ctl_tx_fcs_ins_enable_1;
  input  wire [3:0] ctl_tx_ipg_value_1;
  input  wire ctl_tx_send_lfi_1;
  input  wire ctl_tx_send_rfi_1;
  input  wire ctl_tx_send_idle_1;
  input  wire ctl_tx_custom_preamble_enable_1;
  input  wire ctl_tx_ignore_fcs_1;


//// TX_1 Stats Signals
  output wire stat_tx_total_packets_1;
  output wire [3:0] stat_tx_total_bytes_1;
  output wire stat_tx_total_good_packets_1;
  output wire [13:0] stat_tx_total_good_bytes_1;
  output wire stat_tx_packet_64_bytes_1;
  output wire stat_tx_packet_65_127_bytes_1;
  output wire stat_tx_packet_128_255_bytes_1;
  output wire stat_tx_packet_256_511_bytes_1;
  output wire stat_tx_packet_512_1023_bytes_1;
  output wire stat_tx_packet_1024_1518_bytes_1;
  output wire stat_tx_packet_1519_1522_bytes_1;
  output wire stat_tx_packet_1523_1548_bytes_1;
  output wire stat_tx_packet_small_1;
  output wire stat_tx_packet_large_1;
  output wire stat_tx_packet_1549_2047_bytes_1;
  output wire stat_tx_packet_2048_4095_bytes_1;
  output wire stat_tx_packet_4096_8191_bytes_1;
  output wire stat_tx_packet_8192_9215_bytes_1;
  output wire stat_tx_unicast_1;
  output wire stat_tx_multicast_1;
  output wire stat_tx_broadcast_1;
  output wire stat_tx_vlan_1;
  output wire stat_tx_bad_fcs_1;
  output wire stat_tx_frame_error_1;
  output wire stat_tx_local_fault_1;






//// RX_2 Signals
  input  wire rx_reset_2;
//// RX_2 User Interface Signals
  output wire rx_axis_tvalid_2;
  output wire [63:0] rx_axis_tdata_2;
  output wire rx_axis_tlast_2;
  output wire [7:0] rx_axis_tkeep_2;
  output wire rx_axis_tuser_2;
  output wire [55:0] rx_preambleout_2;



//// RX_2 Control Signals
  input  wire ctl_rx_test_pattern_2;
  input  wire ctl_rx_test_pattern_enable_2;
  input  wire ctl_rx_data_pattern_select_2;
  input  wire ctl_rx_enable_2;
  input  wire ctl_rx_delete_fcs_2;
  input  wire ctl_rx_ignore_fcs_2;
  input  wire [14:0] ctl_rx_max_packet_len_2;
  input  wire [7:0] ctl_rx_min_packet_len_2;
  input  wire ctl_rx_custom_preamble_enable_2;
  input  wire ctl_rx_check_sfd_2;
  input  wire ctl_rx_check_preamble_2;
  input  wire ctl_rx_process_lfi_2;
  input  wire ctl_rx_force_resync_2;



//// RX_2 Stats Signals
  output wire stat_rx_block_lock_2;
  output wire stat_rx_framing_err_valid_2;
  output wire stat_rx_framing_err_2;
  output wire stat_rx_hi_ber_2;
  output wire stat_rx_valid_ctrl_code_2;
  output wire stat_rx_bad_code_2;
  output wire [1:0] stat_rx_total_packets_2;
  output wire stat_rx_total_good_packets_2;
  output wire [3:0] stat_rx_total_bytes_2;
  output wire [13:0] stat_rx_total_good_bytes_2;
  output wire stat_rx_packet_small_2;
  output wire stat_rx_jabber_2;
  output wire stat_rx_packet_large_2;
  output wire stat_rx_oversize_2;
  output wire stat_rx_undersize_2;
  output wire stat_rx_toolong_2;
  output wire stat_rx_fragment_2;
  output wire stat_rx_packet_64_bytes_2;
  output wire stat_rx_packet_65_127_bytes_2;
  output wire stat_rx_packet_128_255_bytes_2;
  output wire stat_rx_packet_256_511_bytes_2;
  output wire stat_rx_packet_512_1023_bytes_2;
  output wire stat_rx_packet_1024_1518_bytes_2;
  output wire stat_rx_packet_1519_1522_bytes_2;
  output wire stat_rx_packet_1523_1548_bytes_2;
  output wire [1:0] stat_rx_bad_fcs_2;
  output wire stat_rx_packet_bad_fcs_2;
  output wire [1:0] stat_rx_stomped_fcs_2;
  output wire stat_rx_packet_1549_2047_bytes_2;
  output wire stat_rx_packet_2048_4095_bytes_2;
  output wire stat_rx_packet_4096_8191_bytes_2;
  output wire stat_rx_packet_8192_9215_bytes_2;
  output wire stat_rx_unicast_2;
  output wire stat_rx_multicast_2;
  output wire stat_rx_broadcast_2;
  output wire stat_rx_vlan_2;
  output wire stat_rx_inrangeerr_2;
  output wire stat_rx_bad_preamble_2;
  output wire stat_rx_bad_sfd_2;
  output wire stat_rx_got_signal_os_2;
  output wire stat_rx_test_pattern_mismatch_2;
  output wire stat_rx_truncated_2;
  output wire stat_rx_local_fault_2;
  output wire stat_rx_remote_fault_2;
  output wire stat_rx_internal_local_fault_2;
  output wire stat_rx_received_local_fault_2;
    output wire  stat_rx_status_2;


//// TX_2 Signals
  input  wire tx_reset_2;

//// TX_2 User Interface Signals
  output wire tx_axis_tready_2;
  input  wire tx_axis_tvalid_2;
  input  wire [63:0] tx_axis_tdata_2;
  input  wire tx_axis_tlast_2;
  input  wire [7:0] tx_axis_tkeep_2;
  input  wire tx_axis_tuser_2;
  output wire tx_unfout_2;
  input  wire [55:0] tx_preamblein_2;

//// TX_2 Control Signals
  input  wire ctl_tx_test_pattern_2;
  input  wire ctl_tx_test_pattern_enable_2;
  input  wire ctl_tx_test_pattern_select_2;
  input  wire ctl_tx_data_pattern_select_2;
  input  wire [57:0] ctl_tx_test_pattern_seed_a_2;
  input  wire [57:0] ctl_tx_test_pattern_seed_b_2;
  input  wire ctl_tx_enable_2;
  input  wire ctl_tx_fcs_ins_enable_2;
  input  wire [3:0] ctl_tx_ipg_value_2;
  input  wire ctl_tx_send_lfi_2;
  input  wire ctl_tx_send_rfi_2;
  input  wire ctl_tx_send_idle_2;
  input  wire ctl_tx_custom_preamble_enable_2;
  input  wire ctl_tx_ignore_fcs_2;


//// TX_2 Stats Signals
  output wire stat_tx_total_packets_2;
  output wire [3:0] stat_tx_total_bytes_2;
  output wire stat_tx_total_good_packets_2;
  output wire [13:0] stat_tx_total_good_bytes_2;
  output wire stat_tx_packet_64_bytes_2;
  output wire stat_tx_packet_65_127_bytes_2;
  output wire stat_tx_packet_128_255_bytes_2;
  output wire stat_tx_packet_256_511_bytes_2;
  output wire stat_tx_packet_512_1023_bytes_2;
  output wire stat_tx_packet_1024_1518_bytes_2;
  output wire stat_tx_packet_1519_1522_bytes_2;
  output wire stat_tx_packet_1523_1548_bytes_2;
  output wire stat_tx_packet_small_2;
  output wire stat_tx_packet_large_2;
  output wire stat_tx_packet_1549_2047_bytes_2;
  output wire stat_tx_packet_2048_4095_bytes_2;
  output wire stat_tx_packet_4096_8191_bytes_2;
  output wire stat_tx_packet_8192_9215_bytes_2;
  output wire stat_tx_unicast_2;
  output wire stat_tx_multicast_2;
  output wire stat_tx_broadcast_2;
  output wire stat_tx_vlan_2;
  output wire stat_tx_bad_fcs_2;
  output wire stat_tx_frame_error_2;
  output wire stat_tx_local_fault_2;






//// RX_3 Signals
  input  wire rx_reset_3;
//// RX_3 User Interface Signals
  output wire rx_axis_tvalid_3;
  output wire [63:0] rx_axis_tdata_3;
  output wire rx_axis_tlast_3;
  output wire [7:0] rx_axis_tkeep_3;
  output wire rx_axis_tuser_3;
  output wire [55:0] rx_preambleout_3;



//// RX_3 Control Signals
  input  wire ctl_rx_test_pattern_3;
  input  wire ctl_rx_test_pattern_enable_3;
  input  wire ctl_rx_data_pattern_select_3;
  input  wire ctl_rx_enable_3;
  input  wire ctl_rx_delete_fcs_3;
  input  wire ctl_rx_ignore_fcs_3;
  input  wire [14:0] ctl_rx_max_packet_len_3;
  input  wire [7:0] ctl_rx_min_packet_len_3;
  input  wire ctl_rx_custom_preamble_enable_3;
  input  wire ctl_rx_check_sfd_3;
  input  wire ctl_rx_check_preamble_3;
  input  wire ctl_rx_process_lfi_3;
  input  wire ctl_rx_force_resync_3;



//// RX_3 Stats Signals
  output wire stat_rx_block_lock_3;
  output wire stat_rx_framing_err_valid_3;
  output wire stat_rx_framing_err_3;
  output wire stat_rx_hi_ber_3;
  output wire stat_rx_valid_ctrl_code_3;
  output wire stat_rx_bad_code_3;
  output wire [1:0] stat_rx_total_packets_3;
  output wire stat_rx_total_good_packets_3;
  output wire [3:0] stat_rx_total_bytes_3;
  output wire [13:0] stat_rx_total_good_bytes_3;
  output wire stat_rx_packet_small_3;
  output wire stat_rx_jabber_3;
  output wire stat_rx_packet_large_3;
  output wire stat_rx_oversize_3;
  output wire stat_rx_undersize_3;
  output wire stat_rx_toolong_3;
  output wire stat_rx_fragment_3;
  output wire stat_rx_packet_64_bytes_3;
  output wire stat_rx_packet_65_127_bytes_3;
  output wire stat_rx_packet_128_255_bytes_3;
  output wire stat_rx_packet_256_511_bytes_3;
  output wire stat_rx_packet_512_1023_bytes_3;
  output wire stat_rx_packet_1024_1518_bytes_3;
  output wire stat_rx_packet_1519_1522_bytes_3;
  output wire stat_rx_packet_1523_1548_bytes_3;
  output wire [1:0] stat_rx_bad_fcs_3;
  output wire stat_rx_packet_bad_fcs_3;
  output wire [1:0] stat_rx_stomped_fcs_3;
  output wire stat_rx_packet_1549_2047_bytes_3;
  output wire stat_rx_packet_2048_4095_bytes_3;
  output wire stat_rx_packet_4096_8191_bytes_3;
  output wire stat_rx_packet_8192_9215_bytes_3;
  output wire stat_rx_unicast_3;
  output wire stat_rx_multicast_3;
  output wire stat_rx_broadcast_3;
  output wire stat_rx_vlan_3;
  output wire stat_rx_inrangeerr_3;
  output wire stat_rx_bad_preamble_3;
  output wire stat_rx_bad_sfd_3;
  output wire stat_rx_got_signal_os_3;
  output wire stat_rx_test_pattern_mismatch_3;
  output wire stat_rx_truncated_3;
  output wire stat_rx_local_fault_3;
  output wire stat_rx_remote_fault_3;
  output wire stat_rx_internal_local_fault_3;
  output wire stat_rx_received_local_fault_3;
    output wire  stat_rx_status_3;


//// TX_3 Signals
  input  wire tx_reset_3;

//// TX_3 User Interface Signals
  output wire tx_axis_tready_3;
  input  wire tx_axis_tvalid_3;
  input  wire [63:0] tx_axis_tdata_3;
  input  wire tx_axis_tlast_3;
  input  wire [7:0] tx_axis_tkeep_3;
  input  wire tx_axis_tuser_3;
  output wire tx_unfout_3;
  input  wire [55:0] tx_preamblein_3;

//// TX_3 Control Signals
  input  wire ctl_tx_test_pattern_3;
  input  wire ctl_tx_test_pattern_enable_3;
  input  wire ctl_tx_test_pattern_select_3;
  input  wire ctl_tx_data_pattern_select_3;
  input  wire [57:0] ctl_tx_test_pattern_seed_a_3;
  input  wire [57:0] ctl_tx_test_pattern_seed_b_3;
  input  wire ctl_tx_enable_3;
  input  wire ctl_tx_fcs_ins_enable_3;
  input  wire [3:0] ctl_tx_ipg_value_3;
  input  wire ctl_tx_send_lfi_3;
  input  wire ctl_tx_send_rfi_3;
  input  wire ctl_tx_send_idle_3;
  input  wire ctl_tx_custom_preamble_enable_3;
  input  wire ctl_tx_ignore_fcs_3;


//// TX_3 Stats Signals
  output wire stat_tx_total_packets_3;
  output wire [3:0] stat_tx_total_bytes_3;
  output wire stat_tx_total_good_packets_3;
  output wire [13:0] stat_tx_total_good_bytes_3;
  output wire stat_tx_packet_64_bytes_3;
  output wire stat_tx_packet_65_127_bytes_3;
  output wire stat_tx_packet_128_255_bytes_3;
  output wire stat_tx_packet_256_511_bytes_3;
  output wire stat_tx_packet_512_1023_bytes_3;
  output wire stat_tx_packet_1024_1518_bytes_3;
  output wire stat_tx_packet_1519_1522_bytes_3;
  output wire stat_tx_packet_1523_1548_bytes_3;
  output wire stat_tx_packet_small_3;
  output wire stat_tx_packet_large_3;
  output wire stat_tx_packet_1549_2047_bytes_3;
  output wire stat_tx_packet_2048_4095_bytes_3;
  output wire stat_tx_packet_4096_8191_bytes_3;
  output wire stat_tx_packet_8192_9215_bytes_3;
  output wire stat_tx_unicast_3;
  output wire stat_tx_multicast_3;
  output wire stat_tx_broadcast_3;
  output wire stat_tx_vlan_3;
  output wire stat_tx_bad_fcs_3;
  output wire stat_tx_frame_error_3;
  output wire stat_tx_local_fault_3;






  input  wire rx_core_clk_0;
  input  wire rx_serdes_reset_0;
  input  wire tx_core_clk_0;
  input  wire rx_serdes_clk_0;
  output wire [0:0] rxgearboxslip_in_0;
  input  wire [1:0] rxdatavalid_out_0;
  input  wire [5:0] rxheader_out_0;
  input  wire [1:0] rxheadervalid_out_0;
  input  wire [127:0] rx_serdes_data_out_0;
  output wire [127:0] tx_serdes_data_in_0;
  output wire [5:0] txheader_in_0;
  input  wire rx_core_clk_1;
  input  wire rx_serdes_reset_1;
  input  wire tx_core_clk_1;
  input  wire rx_serdes_clk_1;
  output wire [0:0] rxgearboxslip_in_1;
  input  wire [1:0] rxdatavalid_out_1;
  input  wire [5:0] rxheader_out_1;
  input  wire [1:0] rxheadervalid_out_1;
  input  wire [127:0] rx_serdes_data_out_1;
  output wire [127:0] tx_serdes_data_in_1;
  output wire [5:0] txheader_in_1;
  input  wire rx_core_clk_2;
  input  wire rx_serdes_reset_2;
  input  wire tx_core_clk_2;
  input  wire rx_serdes_clk_2;
  output wire [0:0] rxgearboxslip_in_2;
  input  wire [1:0] rxdatavalid_out_2;
  input  wire [5:0] rxheader_out_2;
  input  wire [1:0] rxheadervalid_out_2;
  input  wire [127:0] rx_serdes_data_out_2;
  output wire [127:0] tx_serdes_data_in_2;
  output wire [5:0] txheader_in_2;
  input  wire rx_core_clk_3;
  input  wire rx_serdes_reset_3;
  input  wire tx_core_clk_3;
  input  wire rx_serdes_clk_3;
  output wire [0:0] rxgearboxslip_in_3;
  input  wire [1:0] rxdatavalid_out_3;
  input  wire [5:0] rxheader_out_3;
  input  wire [1:0] rxheadervalid_out_3;
  input  wire [127:0] rx_serdes_data_out_3;
  output wire [127:0] tx_serdes_data_in_3;
  output wire [5:0] txheader_in_3;


  xxv_ethernet_0_wrapper #(
    .C_LINE_RATE(10),
    .C_NUM_OF_CORES(4),
    .C_CLOCKING("Asynchronous"),
    .C_DATA_PATH_INTERFACE("AXI Stream"),
    .C_BASE_R_KR("BASE-R"),
    .C_INCLUDE_FEC_LOGIC(0),
    .C_INCLUDE_RSFEC_LOGIC(0),
    .C_INCLUDE_HYBRID_CMAC_RSFEC_LOGIC("0"),
    .C_INCLUDE_AUTO_NEG_LT_LOGIC("None"),
    .C_INCLUDE_USER_FIFO("1"),
    .C_ENABLE_TX_FLOW_CONTROL_LOGIC(0),
    .C_ENABLE_RX_FLOW_CONTROL_LOGIC(0),
    .C_ENABLE_TIME_STAMPING(0),
    .C_PTP_OPERATION_MODE(2),
    .C_PTP_CLOCKING_MODE(0),
    .C_TX_LATENCY_ADJUST(0),
    .C_ENABLE_VLANE_ADJUST_MODE(0),
    .C_ENABLE_PIPELINE_REG(0),
    .C_RUNTIME_SWITCH(0)
  ) inst (
  



    .rx_reset_0(rx_reset_0),
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
    .ctl_rx_custom_preamble_enable_0 (ctl_rx_custom_preamble_enable_0),
    .ctl_rx_check_sfd_0 (ctl_rx_check_sfd_0),
    .ctl_rx_check_preamble_0 (ctl_rx_check_preamble_0),
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
    .stat_rx_unicast_0 (stat_rx_unicast_0),
    .stat_rx_multicast_0 (stat_rx_multicast_0),
    .stat_rx_broadcast_0 (stat_rx_broadcast_0),
    .stat_rx_vlan_0 (stat_rx_vlan_0),
    .stat_rx_inrangeerr_0 (stat_rx_inrangeerr_0),
    .stat_rx_bad_preamble_0 (stat_rx_bad_preamble_0),
    .stat_rx_bad_sfd_0 (stat_rx_bad_sfd_0),
    .stat_rx_got_signal_os_0 (stat_rx_got_signal_os_0),
    .stat_rx_test_pattern_mismatch_0 (stat_rx_test_pattern_mismatch_0),
    .stat_rx_truncated_0 (stat_rx_truncated_0),
    .stat_rx_local_fault_0 (stat_rx_local_fault_0),
    .stat_rx_remote_fault_0 (stat_rx_remote_fault_0),
    .stat_rx_internal_local_fault_0 (stat_rx_internal_local_fault_0),
    .stat_rx_received_local_fault_0 (stat_rx_received_local_fault_0),
   .stat_rx_status_0 (stat_rx_status_0),


    .tx_reset_0(tx_reset_0),
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
    .ctl_tx_send_lfi_0 (ctl_tx_send_lfi_0),
    .ctl_tx_send_rfi_0 (ctl_tx_send_rfi_0),
    .ctl_tx_send_idle_0 (ctl_tx_send_idle_0),
    .ctl_tx_custom_preamble_enable_0 (ctl_tx_custom_preamble_enable_0),
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
    .stat_tx_unicast_0 (stat_tx_unicast_0),
    .stat_tx_multicast_0 (stat_tx_multicast_0),
    .stat_tx_broadcast_0 (stat_tx_broadcast_0),
    .stat_tx_vlan_0 (stat_tx_vlan_0),
    .stat_tx_bad_fcs_0 (stat_tx_bad_fcs_0),
    .stat_tx_frame_error_0 (stat_tx_frame_error_0),
    .stat_tx_local_fault_0 (stat_tx_local_fault_0),





    .rx_reset_1(rx_reset_1),
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
    .ctl_rx_custom_preamble_enable_1 (ctl_rx_custom_preamble_enable_1),
    .ctl_rx_check_sfd_1 (ctl_rx_check_sfd_1),
    .ctl_rx_check_preamble_1 (ctl_rx_check_preamble_1),
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
    .stat_rx_unicast_1 (stat_rx_unicast_1),
    .stat_rx_multicast_1 (stat_rx_multicast_1),
    .stat_rx_broadcast_1 (stat_rx_broadcast_1),
    .stat_rx_vlan_1 (stat_rx_vlan_1),
    .stat_rx_inrangeerr_1 (stat_rx_inrangeerr_1),
    .stat_rx_bad_preamble_1 (stat_rx_bad_preamble_1),
    .stat_rx_bad_sfd_1 (stat_rx_bad_sfd_1),
    .stat_rx_got_signal_os_1 (stat_rx_got_signal_os_1),
    .stat_rx_test_pattern_mismatch_1 (stat_rx_test_pattern_mismatch_1),
    .stat_rx_truncated_1 (stat_rx_truncated_1),
    .stat_rx_local_fault_1 (stat_rx_local_fault_1),
    .stat_rx_remote_fault_1 (stat_rx_remote_fault_1),
    .stat_rx_internal_local_fault_1 (stat_rx_internal_local_fault_1),
    .stat_rx_received_local_fault_1 (stat_rx_received_local_fault_1),
   .stat_rx_status_1 (stat_rx_status_1),


    .tx_reset_1(tx_reset_1),
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
    .ctl_tx_send_lfi_1 (ctl_tx_send_lfi_1),
    .ctl_tx_send_rfi_1 (ctl_tx_send_rfi_1),
    .ctl_tx_send_idle_1 (ctl_tx_send_idle_1),
    .ctl_tx_custom_preamble_enable_1 (ctl_tx_custom_preamble_enable_1),
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
    .stat_tx_unicast_1 (stat_tx_unicast_1),
    .stat_tx_multicast_1 (stat_tx_multicast_1),
    .stat_tx_broadcast_1 (stat_tx_broadcast_1),
    .stat_tx_vlan_1 (stat_tx_vlan_1),
    .stat_tx_bad_fcs_1 (stat_tx_bad_fcs_1),
    .stat_tx_frame_error_1 (stat_tx_frame_error_1),
    .stat_tx_local_fault_1 (stat_tx_local_fault_1),





    .rx_reset_2(rx_reset_2),
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
    .ctl_rx_custom_preamble_enable_2 (ctl_rx_custom_preamble_enable_2),
    .ctl_rx_check_sfd_2 (ctl_rx_check_sfd_2),
    .ctl_rx_check_preamble_2 (ctl_rx_check_preamble_2),
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
    .stat_rx_unicast_2 (stat_rx_unicast_2),
    .stat_rx_multicast_2 (stat_rx_multicast_2),
    .stat_rx_broadcast_2 (stat_rx_broadcast_2),
    .stat_rx_vlan_2 (stat_rx_vlan_2),
    .stat_rx_inrangeerr_2 (stat_rx_inrangeerr_2),
    .stat_rx_bad_preamble_2 (stat_rx_bad_preamble_2),
    .stat_rx_bad_sfd_2 (stat_rx_bad_sfd_2),
    .stat_rx_got_signal_os_2 (stat_rx_got_signal_os_2),
    .stat_rx_test_pattern_mismatch_2 (stat_rx_test_pattern_mismatch_2),
    .stat_rx_truncated_2 (stat_rx_truncated_2),
    .stat_rx_local_fault_2 (stat_rx_local_fault_2),
    .stat_rx_remote_fault_2 (stat_rx_remote_fault_2),
    .stat_rx_internal_local_fault_2 (stat_rx_internal_local_fault_2),
    .stat_rx_received_local_fault_2 (stat_rx_received_local_fault_2),
   .stat_rx_status_2 (stat_rx_status_2),


    .tx_reset_2(tx_reset_2),
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
    .ctl_tx_send_lfi_2 (ctl_tx_send_lfi_2),
    .ctl_tx_send_rfi_2 (ctl_tx_send_rfi_2),
    .ctl_tx_send_idle_2 (ctl_tx_send_idle_2),
    .ctl_tx_custom_preamble_enable_2 (ctl_tx_custom_preamble_enable_2),
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
    .stat_tx_unicast_2 (stat_tx_unicast_2),
    .stat_tx_multicast_2 (stat_tx_multicast_2),
    .stat_tx_broadcast_2 (stat_tx_broadcast_2),
    .stat_tx_vlan_2 (stat_tx_vlan_2),
    .stat_tx_bad_fcs_2 (stat_tx_bad_fcs_2),
    .stat_tx_frame_error_2 (stat_tx_frame_error_2),
    .stat_tx_local_fault_2 (stat_tx_local_fault_2),





    .rx_reset_3(rx_reset_3),
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
    .ctl_rx_custom_preamble_enable_3 (ctl_rx_custom_preamble_enable_3),
    .ctl_rx_check_sfd_3 (ctl_rx_check_sfd_3),
    .ctl_rx_check_preamble_3 (ctl_rx_check_preamble_3),
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
    .stat_rx_unicast_3 (stat_rx_unicast_3),
    .stat_rx_multicast_3 (stat_rx_multicast_3),
    .stat_rx_broadcast_3 (stat_rx_broadcast_3),
    .stat_rx_vlan_3 (stat_rx_vlan_3),
    .stat_rx_inrangeerr_3 (stat_rx_inrangeerr_3),
    .stat_rx_bad_preamble_3 (stat_rx_bad_preamble_3),
    .stat_rx_bad_sfd_3 (stat_rx_bad_sfd_3),
    .stat_rx_got_signal_os_3 (stat_rx_got_signal_os_3),
    .stat_rx_test_pattern_mismatch_3 (stat_rx_test_pattern_mismatch_3),
    .stat_rx_truncated_3 (stat_rx_truncated_3),
    .stat_rx_local_fault_3 (stat_rx_local_fault_3),
    .stat_rx_remote_fault_3 (stat_rx_remote_fault_3),
    .stat_rx_internal_local_fault_3 (stat_rx_internal_local_fault_3),
    .stat_rx_received_local_fault_3 (stat_rx_received_local_fault_3),
   .stat_rx_status_3 (stat_rx_status_3),


    .tx_reset_3(tx_reset_3),
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
    .ctl_tx_send_lfi_3 (ctl_tx_send_lfi_3),
    .ctl_tx_send_rfi_3 (ctl_tx_send_rfi_3),
    .ctl_tx_send_idle_3 (ctl_tx_send_idle_3),
    .ctl_tx_custom_preamble_enable_3 (ctl_tx_custom_preamble_enable_3),
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
    .stat_tx_unicast_3 (stat_tx_unicast_3),
    .stat_tx_multicast_3 (stat_tx_multicast_3),
    .stat_tx_broadcast_3 (stat_tx_broadcast_3),
    .stat_tx_vlan_3 (stat_tx_vlan_3),
    .stat_tx_bad_fcs_3 (stat_tx_bad_fcs_3),
    .stat_tx_frame_error_3 (stat_tx_frame_error_3),
    .stat_tx_local_fault_3 (stat_tx_local_fault_3),



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
endmodule



