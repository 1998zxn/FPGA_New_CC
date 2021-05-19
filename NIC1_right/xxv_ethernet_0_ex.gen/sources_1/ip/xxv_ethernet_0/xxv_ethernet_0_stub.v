// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 13 21:16:53 2021
// Host        : zxn running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top xxv_ethernet_0 -prefix
//               xxv_ethernet_0_ xxv_ethernet_0_stub.v
// Design      : xxv_ethernet_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xxv_ethernet_v3_3_0,Vivado 2020.2" *)
module xxv_ethernet_0(rx_reset_0, rx_axis_tvalid_0, 
  rx_axis_tdata_0, rx_axis_tlast_0, rx_axis_tkeep_0, rx_axis_tuser_0, rx_preambleout_0, 
  ctl_rx_test_pattern_0, ctl_rx_test_pattern_enable_0, ctl_rx_data_pattern_select_0, 
  ctl_rx_enable_0, ctl_rx_delete_fcs_0, ctl_rx_ignore_fcs_0, ctl_rx_max_packet_len_0, 
  ctl_rx_min_packet_len_0, ctl_rx_custom_preamble_enable_0, ctl_rx_check_sfd_0, 
  ctl_rx_check_preamble_0, ctl_rx_process_lfi_0, ctl_rx_force_resync_0, 
  stat_rx_block_lock_0, stat_rx_framing_err_valid_0, stat_rx_framing_err_0, 
  stat_rx_hi_ber_0, stat_rx_valid_ctrl_code_0, stat_rx_bad_code_0, 
  stat_rx_total_packets_0, stat_rx_total_good_packets_0, stat_rx_total_bytes_0, 
  stat_rx_total_good_bytes_0, stat_rx_packet_small_0, stat_rx_jabber_0, 
  stat_rx_packet_large_0, stat_rx_oversize_0, stat_rx_undersize_0, stat_rx_toolong_0, 
  stat_rx_fragment_0, stat_rx_packet_64_bytes_0, stat_rx_packet_65_127_bytes_0, 
  stat_rx_packet_128_255_bytes_0, stat_rx_packet_256_511_bytes_0, 
  stat_rx_packet_512_1023_bytes_0, stat_rx_packet_1024_1518_bytes_0, 
  stat_rx_packet_1519_1522_bytes_0, stat_rx_packet_1523_1548_bytes_0, 
  stat_rx_bad_fcs_0, stat_rx_packet_bad_fcs_0, stat_rx_stomped_fcs_0, 
  stat_rx_packet_1549_2047_bytes_0, stat_rx_packet_2048_4095_bytes_0, 
  stat_rx_packet_4096_8191_bytes_0, stat_rx_packet_8192_9215_bytes_0, 
  stat_rx_unicast_0, stat_rx_multicast_0, stat_rx_broadcast_0, stat_rx_vlan_0, 
  stat_rx_inrangeerr_0, stat_rx_bad_preamble_0, stat_rx_bad_sfd_0, 
  stat_rx_got_signal_os_0, stat_rx_test_pattern_mismatch_0, stat_rx_truncated_0, 
  stat_rx_local_fault_0, stat_rx_remote_fault_0, stat_rx_internal_local_fault_0, 
  stat_rx_received_local_fault_0, stat_rx_status_0, tx_reset_0, tx_axis_tready_0, 
  tx_axis_tvalid_0, tx_axis_tdata_0, tx_axis_tlast_0, tx_axis_tkeep_0, tx_axis_tuser_0, 
  tx_unfout_0, tx_preamblein_0, ctl_tx_test_pattern_0, ctl_tx_test_pattern_enable_0, 
  ctl_tx_test_pattern_select_0, ctl_tx_data_pattern_select_0, 
  ctl_tx_test_pattern_seed_a_0, ctl_tx_test_pattern_seed_b_0, ctl_tx_enable_0, 
  ctl_tx_fcs_ins_enable_0, ctl_tx_ipg_value_0, ctl_tx_send_lfi_0, ctl_tx_send_rfi_0, 
  ctl_tx_send_idle_0, ctl_tx_custom_preamble_enable_0, ctl_tx_ignore_fcs_0, 
  stat_tx_total_packets_0, stat_tx_total_bytes_0, stat_tx_total_good_packets_0, 
  stat_tx_total_good_bytes_0, stat_tx_packet_64_bytes_0, stat_tx_packet_65_127_bytes_0, 
  stat_tx_packet_128_255_bytes_0, stat_tx_packet_256_511_bytes_0, 
  stat_tx_packet_512_1023_bytes_0, stat_tx_packet_1024_1518_bytes_0, 
  stat_tx_packet_1519_1522_bytes_0, stat_tx_packet_1523_1548_bytes_0, 
  stat_tx_packet_small_0, stat_tx_packet_large_0, stat_tx_packet_1549_2047_bytes_0, 
  stat_tx_packet_2048_4095_bytes_0, stat_tx_packet_4096_8191_bytes_0, 
  stat_tx_packet_8192_9215_bytes_0, stat_tx_unicast_0, stat_tx_multicast_0, 
  stat_tx_broadcast_0, stat_tx_vlan_0, stat_tx_bad_fcs_0, stat_tx_frame_error_0, 
  stat_tx_local_fault_0, rx_reset_1, rx_axis_tvalid_1, rx_axis_tdata_1, rx_axis_tlast_1, 
  rx_axis_tkeep_1, rx_axis_tuser_1, rx_preambleout_1, ctl_rx_test_pattern_1, 
  ctl_rx_test_pattern_enable_1, ctl_rx_data_pattern_select_1, ctl_rx_enable_1, 
  ctl_rx_delete_fcs_1, ctl_rx_ignore_fcs_1, ctl_rx_max_packet_len_1, 
  ctl_rx_min_packet_len_1, ctl_rx_custom_preamble_enable_1, ctl_rx_check_sfd_1, 
  ctl_rx_check_preamble_1, ctl_rx_process_lfi_1, ctl_rx_force_resync_1, 
  stat_rx_block_lock_1, stat_rx_framing_err_valid_1, stat_rx_framing_err_1, 
  stat_rx_hi_ber_1, stat_rx_valid_ctrl_code_1, stat_rx_bad_code_1, 
  stat_rx_total_packets_1, stat_rx_total_good_packets_1, stat_rx_total_bytes_1, 
  stat_rx_total_good_bytes_1, stat_rx_packet_small_1, stat_rx_jabber_1, 
  stat_rx_packet_large_1, stat_rx_oversize_1, stat_rx_undersize_1, stat_rx_toolong_1, 
  stat_rx_fragment_1, stat_rx_packet_64_bytes_1, stat_rx_packet_65_127_bytes_1, 
  stat_rx_packet_128_255_bytes_1, stat_rx_packet_256_511_bytes_1, 
  stat_rx_packet_512_1023_bytes_1, stat_rx_packet_1024_1518_bytes_1, 
  stat_rx_packet_1519_1522_bytes_1, stat_rx_packet_1523_1548_bytes_1, 
  stat_rx_bad_fcs_1, stat_rx_packet_bad_fcs_1, stat_rx_stomped_fcs_1, 
  stat_rx_packet_1549_2047_bytes_1, stat_rx_packet_2048_4095_bytes_1, 
  stat_rx_packet_4096_8191_bytes_1, stat_rx_packet_8192_9215_bytes_1, 
  stat_rx_unicast_1, stat_rx_multicast_1, stat_rx_broadcast_1, stat_rx_vlan_1, 
  stat_rx_inrangeerr_1, stat_rx_bad_preamble_1, stat_rx_bad_sfd_1, 
  stat_rx_got_signal_os_1, stat_rx_test_pattern_mismatch_1, stat_rx_truncated_1, 
  stat_rx_local_fault_1, stat_rx_remote_fault_1, stat_rx_internal_local_fault_1, 
  stat_rx_received_local_fault_1, stat_rx_status_1, tx_reset_1, tx_axis_tready_1, 
  tx_axis_tvalid_1, tx_axis_tdata_1, tx_axis_tlast_1, tx_axis_tkeep_1, tx_axis_tuser_1, 
  tx_unfout_1, tx_preamblein_1, ctl_tx_test_pattern_1, ctl_tx_test_pattern_enable_1, 
  ctl_tx_test_pattern_select_1, ctl_tx_data_pattern_select_1, 
  ctl_tx_test_pattern_seed_a_1, ctl_tx_test_pattern_seed_b_1, ctl_tx_enable_1, 
  ctl_tx_fcs_ins_enable_1, ctl_tx_ipg_value_1, ctl_tx_send_lfi_1, ctl_tx_send_rfi_1, 
  ctl_tx_send_idle_1, ctl_tx_custom_preamble_enable_1, ctl_tx_ignore_fcs_1, 
  stat_tx_total_packets_1, stat_tx_total_bytes_1, stat_tx_total_good_packets_1, 
  stat_tx_total_good_bytes_1, stat_tx_packet_64_bytes_1, stat_tx_packet_65_127_bytes_1, 
  stat_tx_packet_128_255_bytes_1, stat_tx_packet_256_511_bytes_1, 
  stat_tx_packet_512_1023_bytes_1, stat_tx_packet_1024_1518_bytes_1, 
  stat_tx_packet_1519_1522_bytes_1, stat_tx_packet_1523_1548_bytes_1, 
  stat_tx_packet_small_1, stat_tx_packet_large_1, stat_tx_packet_1549_2047_bytes_1, 
  stat_tx_packet_2048_4095_bytes_1, stat_tx_packet_4096_8191_bytes_1, 
  stat_tx_packet_8192_9215_bytes_1, stat_tx_unicast_1, stat_tx_multicast_1, 
  stat_tx_broadcast_1, stat_tx_vlan_1, stat_tx_bad_fcs_1, stat_tx_frame_error_1, 
  stat_tx_local_fault_1, rx_reset_2, rx_axis_tvalid_2, rx_axis_tdata_2, rx_axis_tlast_2, 
  rx_axis_tkeep_2, rx_axis_tuser_2, rx_preambleout_2, ctl_rx_test_pattern_2, 
  ctl_rx_test_pattern_enable_2, ctl_rx_data_pattern_select_2, ctl_rx_enable_2, 
  ctl_rx_delete_fcs_2, ctl_rx_ignore_fcs_2, ctl_rx_max_packet_len_2, 
  ctl_rx_min_packet_len_2, ctl_rx_custom_preamble_enable_2, ctl_rx_check_sfd_2, 
  ctl_rx_check_preamble_2, ctl_rx_process_lfi_2, ctl_rx_force_resync_2, 
  stat_rx_block_lock_2, stat_rx_framing_err_valid_2, stat_rx_framing_err_2, 
  stat_rx_hi_ber_2, stat_rx_valid_ctrl_code_2, stat_rx_bad_code_2, 
  stat_rx_total_packets_2, stat_rx_total_good_packets_2, stat_rx_total_bytes_2, 
  stat_rx_total_good_bytes_2, stat_rx_packet_small_2, stat_rx_jabber_2, 
  stat_rx_packet_large_2, stat_rx_oversize_2, stat_rx_undersize_2, stat_rx_toolong_2, 
  stat_rx_fragment_2, stat_rx_packet_64_bytes_2, stat_rx_packet_65_127_bytes_2, 
  stat_rx_packet_128_255_bytes_2, stat_rx_packet_256_511_bytes_2, 
  stat_rx_packet_512_1023_bytes_2, stat_rx_packet_1024_1518_bytes_2, 
  stat_rx_packet_1519_1522_bytes_2, stat_rx_packet_1523_1548_bytes_2, 
  stat_rx_bad_fcs_2, stat_rx_packet_bad_fcs_2, stat_rx_stomped_fcs_2, 
  stat_rx_packet_1549_2047_bytes_2, stat_rx_packet_2048_4095_bytes_2, 
  stat_rx_packet_4096_8191_bytes_2, stat_rx_packet_8192_9215_bytes_2, 
  stat_rx_unicast_2, stat_rx_multicast_2, stat_rx_broadcast_2, stat_rx_vlan_2, 
  stat_rx_inrangeerr_2, stat_rx_bad_preamble_2, stat_rx_bad_sfd_2, 
  stat_rx_got_signal_os_2, stat_rx_test_pattern_mismatch_2, stat_rx_truncated_2, 
  stat_rx_local_fault_2, stat_rx_remote_fault_2, stat_rx_internal_local_fault_2, 
  stat_rx_received_local_fault_2, stat_rx_status_2, tx_reset_2, tx_axis_tready_2, 
  tx_axis_tvalid_2, tx_axis_tdata_2, tx_axis_tlast_2, tx_axis_tkeep_2, tx_axis_tuser_2, 
  tx_unfout_2, tx_preamblein_2, ctl_tx_test_pattern_2, ctl_tx_test_pattern_enable_2, 
  ctl_tx_test_pattern_select_2, ctl_tx_data_pattern_select_2, 
  ctl_tx_test_pattern_seed_a_2, ctl_tx_test_pattern_seed_b_2, ctl_tx_enable_2, 
  ctl_tx_fcs_ins_enable_2, ctl_tx_ipg_value_2, ctl_tx_send_lfi_2, ctl_tx_send_rfi_2, 
  ctl_tx_send_idle_2, ctl_tx_custom_preamble_enable_2, ctl_tx_ignore_fcs_2, 
  stat_tx_total_packets_2, stat_tx_total_bytes_2, stat_tx_total_good_packets_2, 
  stat_tx_total_good_bytes_2, stat_tx_packet_64_bytes_2, stat_tx_packet_65_127_bytes_2, 
  stat_tx_packet_128_255_bytes_2, stat_tx_packet_256_511_bytes_2, 
  stat_tx_packet_512_1023_bytes_2, stat_tx_packet_1024_1518_bytes_2, 
  stat_tx_packet_1519_1522_bytes_2, stat_tx_packet_1523_1548_bytes_2, 
  stat_tx_packet_small_2, stat_tx_packet_large_2, stat_tx_packet_1549_2047_bytes_2, 
  stat_tx_packet_2048_4095_bytes_2, stat_tx_packet_4096_8191_bytes_2, 
  stat_tx_packet_8192_9215_bytes_2, stat_tx_unicast_2, stat_tx_multicast_2, 
  stat_tx_broadcast_2, stat_tx_vlan_2, stat_tx_bad_fcs_2, stat_tx_frame_error_2, 
  stat_tx_local_fault_2, rx_reset_3, rx_axis_tvalid_3, rx_axis_tdata_3, rx_axis_tlast_3, 
  rx_axis_tkeep_3, rx_axis_tuser_3, rx_preambleout_3, ctl_rx_test_pattern_3, 
  ctl_rx_test_pattern_enable_3, ctl_rx_data_pattern_select_3, ctl_rx_enable_3, 
  ctl_rx_delete_fcs_3, ctl_rx_ignore_fcs_3, ctl_rx_max_packet_len_3, 
  ctl_rx_min_packet_len_3, ctl_rx_custom_preamble_enable_3, ctl_rx_check_sfd_3, 
  ctl_rx_check_preamble_3, ctl_rx_process_lfi_3, ctl_rx_force_resync_3, 
  stat_rx_block_lock_3, stat_rx_framing_err_valid_3, stat_rx_framing_err_3, 
  stat_rx_hi_ber_3, stat_rx_valid_ctrl_code_3, stat_rx_bad_code_3, 
  stat_rx_total_packets_3, stat_rx_total_good_packets_3, stat_rx_total_bytes_3, 
  stat_rx_total_good_bytes_3, stat_rx_packet_small_3, stat_rx_jabber_3, 
  stat_rx_packet_large_3, stat_rx_oversize_3, stat_rx_undersize_3, stat_rx_toolong_3, 
  stat_rx_fragment_3, stat_rx_packet_64_bytes_3, stat_rx_packet_65_127_bytes_3, 
  stat_rx_packet_128_255_bytes_3, stat_rx_packet_256_511_bytes_3, 
  stat_rx_packet_512_1023_bytes_3, stat_rx_packet_1024_1518_bytes_3, 
  stat_rx_packet_1519_1522_bytes_3, stat_rx_packet_1523_1548_bytes_3, 
  stat_rx_bad_fcs_3, stat_rx_packet_bad_fcs_3, stat_rx_stomped_fcs_3, 
  stat_rx_packet_1549_2047_bytes_3, stat_rx_packet_2048_4095_bytes_3, 
  stat_rx_packet_4096_8191_bytes_3, stat_rx_packet_8192_9215_bytes_3, 
  stat_rx_unicast_3, stat_rx_multicast_3, stat_rx_broadcast_3, stat_rx_vlan_3, 
  stat_rx_inrangeerr_3, stat_rx_bad_preamble_3, stat_rx_bad_sfd_3, 
  stat_rx_got_signal_os_3, stat_rx_test_pattern_mismatch_3, stat_rx_truncated_3, 
  stat_rx_local_fault_3, stat_rx_remote_fault_3, stat_rx_internal_local_fault_3, 
  stat_rx_received_local_fault_3, stat_rx_status_3, tx_reset_3, tx_axis_tready_3, 
  tx_axis_tvalid_3, tx_axis_tdata_3, tx_axis_tlast_3, tx_axis_tkeep_3, tx_axis_tuser_3, 
  tx_unfout_3, tx_preamblein_3, ctl_tx_test_pattern_3, ctl_tx_test_pattern_enable_3, 
  ctl_tx_test_pattern_select_3, ctl_tx_data_pattern_select_3, 
  ctl_tx_test_pattern_seed_a_3, ctl_tx_test_pattern_seed_b_3, ctl_tx_enable_3, 
  ctl_tx_fcs_ins_enable_3, ctl_tx_ipg_value_3, ctl_tx_send_lfi_3, ctl_tx_send_rfi_3, 
  ctl_tx_send_idle_3, ctl_tx_custom_preamble_enable_3, ctl_tx_ignore_fcs_3, 
  stat_tx_total_packets_3, stat_tx_total_bytes_3, stat_tx_total_good_packets_3, 
  stat_tx_total_good_bytes_3, stat_tx_packet_64_bytes_3, stat_tx_packet_65_127_bytes_3, 
  stat_tx_packet_128_255_bytes_3, stat_tx_packet_256_511_bytes_3, 
  stat_tx_packet_512_1023_bytes_3, stat_tx_packet_1024_1518_bytes_3, 
  stat_tx_packet_1519_1522_bytes_3, stat_tx_packet_1523_1548_bytes_3, 
  stat_tx_packet_small_3, stat_tx_packet_large_3, stat_tx_packet_1549_2047_bytes_3, 
  stat_tx_packet_2048_4095_bytes_3, stat_tx_packet_4096_8191_bytes_3, 
  stat_tx_packet_8192_9215_bytes_3, stat_tx_unicast_3, stat_tx_multicast_3, 
  stat_tx_broadcast_3, stat_tx_vlan_3, stat_tx_bad_fcs_3, stat_tx_frame_error_3, 
  stat_tx_local_fault_3, rx_core_clk_0, rx_serdes_reset_0, tx_core_clk_0, rx_serdes_clk_0, 
  rxgearboxslip_in_0, rxdatavalid_out_0, rxheader_out_0, rxheadervalid_out_0, 
  rx_serdes_data_out_0, tx_serdes_data_in_0, txheader_in_0, rx_core_clk_1, 
  rx_serdes_reset_1, tx_core_clk_1, rx_serdes_clk_1, rxgearboxslip_in_1, rxdatavalid_out_1, 
  rxheader_out_1, rxheadervalid_out_1, rx_serdes_data_out_1, tx_serdes_data_in_1, 
  txheader_in_1, rx_core_clk_2, rx_serdes_reset_2, tx_core_clk_2, rx_serdes_clk_2, 
  rxgearboxslip_in_2, rxdatavalid_out_2, rxheader_out_2, rxheadervalid_out_2, 
  rx_serdes_data_out_2, tx_serdes_data_in_2, txheader_in_2, rx_core_clk_3, 
  rx_serdes_reset_3, tx_core_clk_3, rx_serdes_clk_3, rxgearboxslip_in_3, rxdatavalid_out_3, 
  rxheader_out_3, rxheadervalid_out_3, rx_serdes_data_out_3, tx_serdes_data_in_3, 
  txheader_in_3)
/* synthesis syn_black_box black_box_pad_pin="rx_reset_0,rx_axis_tvalid_0,rx_axis_tdata_0[63:0],rx_axis_tlast_0,rx_axis_tkeep_0[7:0],rx_axis_tuser_0,rx_preambleout_0[55:0],ctl_rx_test_pattern_0,ctl_rx_test_pattern_enable_0,ctl_rx_data_pattern_select_0,ctl_rx_enable_0,ctl_rx_delete_fcs_0,ctl_rx_ignore_fcs_0,ctl_rx_max_packet_len_0[14:0],ctl_rx_min_packet_len_0[7:0],ctl_rx_custom_preamble_enable_0,ctl_rx_check_sfd_0,ctl_rx_check_preamble_0,ctl_rx_process_lfi_0,ctl_rx_force_resync_0,stat_rx_block_lock_0,stat_rx_framing_err_valid_0,stat_rx_framing_err_0,stat_rx_hi_ber_0,stat_rx_valid_ctrl_code_0,stat_rx_bad_code_0,stat_rx_total_packets_0[1:0],stat_rx_total_good_packets_0,stat_rx_total_bytes_0[3:0],stat_rx_total_good_bytes_0[13:0],stat_rx_packet_small_0,stat_rx_jabber_0,stat_rx_packet_large_0,stat_rx_oversize_0,stat_rx_undersize_0,stat_rx_toolong_0,stat_rx_fragment_0,stat_rx_packet_64_bytes_0,stat_rx_packet_65_127_bytes_0,stat_rx_packet_128_255_bytes_0,stat_rx_packet_256_511_bytes_0,stat_rx_packet_512_1023_bytes_0,stat_rx_packet_1024_1518_bytes_0,stat_rx_packet_1519_1522_bytes_0,stat_rx_packet_1523_1548_bytes_0,stat_rx_bad_fcs_0[1:0],stat_rx_packet_bad_fcs_0,stat_rx_stomped_fcs_0[1:0],stat_rx_packet_1549_2047_bytes_0,stat_rx_packet_2048_4095_bytes_0,stat_rx_packet_4096_8191_bytes_0,stat_rx_packet_8192_9215_bytes_0,stat_rx_unicast_0,stat_rx_multicast_0,stat_rx_broadcast_0,stat_rx_vlan_0,stat_rx_inrangeerr_0,stat_rx_bad_preamble_0,stat_rx_bad_sfd_0,stat_rx_got_signal_os_0,stat_rx_test_pattern_mismatch_0,stat_rx_truncated_0,stat_rx_local_fault_0,stat_rx_remote_fault_0,stat_rx_internal_local_fault_0,stat_rx_received_local_fault_0,stat_rx_status_0,tx_reset_0,tx_axis_tready_0,tx_axis_tvalid_0,tx_axis_tdata_0[63:0],tx_axis_tlast_0,tx_axis_tkeep_0[7:0],tx_axis_tuser_0,tx_unfout_0,tx_preamblein_0[55:0],ctl_tx_test_pattern_0,ctl_tx_test_pattern_enable_0,ctl_tx_test_pattern_select_0,ctl_tx_data_pattern_select_0,ctl_tx_test_pattern_seed_a_0[57:0],ctl_tx_test_pattern_seed_b_0[57:0],ctl_tx_enable_0,ctl_tx_fcs_ins_enable_0,ctl_tx_ipg_value_0[3:0],ctl_tx_send_lfi_0,ctl_tx_send_rfi_0,ctl_tx_send_idle_0,ctl_tx_custom_preamble_enable_0,ctl_tx_ignore_fcs_0,stat_tx_total_packets_0,stat_tx_total_bytes_0[3:0],stat_tx_total_good_packets_0,stat_tx_total_good_bytes_0[13:0],stat_tx_packet_64_bytes_0,stat_tx_packet_65_127_bytes_0,stat_tx_packet_128_255_bytes_0,stat_tx_packet_256_511_bytes_0,stat_tx_packet_512_1023_bytes_0,stat_tx_packet_1024_1518_bytes_0,stat_tx_packet_1519_1522_bytes_0,stat_tx_packet_1523_1548_bytes_0,stat_tx_packet_small_0,stat_tx_packet_large_0,stat_tx_packet_1549_2047_bytes_0,stat_tx_packet_2048_4095_bytes_0,stat_tx_packet_4096_8191_bytes_0,stat_tx_packet_8192_9215_bytes_0,stat_tx_unicast_0,stat_tx_multicast_0,stat_tx_broadcast_0,stat_tx_vlan_0,stat_tx_bad_fcs_0,stat_tx_frame_error_0,stat_tx_local_fault_0,rx_reset_1,rx_axis_tvalid_1,rx_axis_tdata_1[63:0],rx_axis_tlast_1,rx_axis_tkeep_1[7:0],rx_axis_tuser_1,rx_preambleout_1[55:0],ctl_rx_test_pattern_1,ctl_rx_test_pattern_enable_1,ctl_rx_data_pattern_select_1,ctl_rx_enable_1,ctl_rx_delete_fcs_1,ctl_rx_ignore_fcs_1,ctl_rx_max_packet_len_1[14:0],ctl_rx_min_packet_len_1[7:0],ctl_rx_custom_preamble_enable_1,ctl_rx_check_sfd_1,ctl_rx_check_preamble_1,ctl_rx_process_lfi_1,ctl_rx_force_resync_1,stat_rx_block_lock_1,stat_rx_framing_err_valid_1,stat_rx_framing_err_1,stat_rx_hi_ber_1,stat_rx_valid_ctrl_code_1,stat_rx_bad_code_1,stat_rx_total_packets_1[1:0],stat_rx_total_good_packets_1,stat_rx_total_bytes_1[3:0],stat_rx_total_good_bytes_1[13:0],stat_rx_packet_small_1,stat_rx_jabber_1,stat_rx_packet_large_1,stat_rx_oversize_1,stat_rx_undersize_1,stat_rx_toolong_1,stat_rx_fragment_1,stat_rx_packet_64_bytes_1,stat_rx_packet_65_127_bytes_1,stat_rx_packet_128_255_bytes_1,stat_rx_packet_256_511_bytes_1,stat_rx_packet_512_1023_bytes_1,stat_rx_packet_1024_1518_bytes_1,stat_rx_packet_1519_1522_bytes_1,stat_rx_packet_1523_1548_bytes_1,stat_rx_bad_fcs_1[1:0],stat_rx_packet_bad_fcs_1,stat_rx_stomped_fcs_1[1:0],stat_rx_packet_1549_2047_bytes_1,stat_rx_packet_2048_4095_bytes_1,stat_rx_packet_4096_8191_bytes_1,stat_rx_packet_8192_9215_bytes_1,stat_rx_unicast_1,stat_rx_multicast_1,stat_rx_broadcast_1,stat_rx_vlan_1,stat_rx_inrangeerr_1,stat_rx_bad_preamble_1,stat_rx_bad_sfd_1,stat_rx_got_signal_os_1,stat_rx_test_pattern_mismatch_1,stat_rx_truncated_1,stat_rx_local_fault_1,stat_rx_remote_fault_1,stat_rx_internal_local_fault_1,stat_rx_received_local_fault_1,stat_rx_status_1,tx_reset_1,tx_axis_tready_1,tx_axis_tvalid_1,tx_axis_tdata_1[63:0],tx_axis_tlast_1,tx_axis_tkeep_1[7:0],tx_axis_tuser_1,tx_unfout_1,tx_preamblein_1[55:0],ctl_tx_test_pattern_1,ctl_tx_test_pattern_enable_1,ctl_tx_test_pattern_select_1,ctl_tx_data_pattern_select_1,ctl_tx_test_pattern_seed_a_1[57:0],ctl_tx_test_pattern_seed_b_1[57:0],ctl_tx_enable_1,ctl_tx_fcs_ins_enable_1,ctl_tx_ipg_value_1[3:0],ctl_tx_send_lfi_1,ctl_tx_send_rfi_1,ctl_tx_send_idle_1,ctl_tx_custom_preamble_enable_1,ctl_tx_ignore_fcs_1,stat_tx_total_packets_1,stat_tx_total_bytes_1[3:0],stat_tx_total_good_packets_1,stat_tx_total_good_bytes_1[13:0],stat_tx_packet_64_bytes_1,stat_tx_packet_65_127_bytes_1,stat_tx_packet_128_255_bytes_1,stat_tx_packet_256_511_bytes_1,stat_tx_packet_512_1023_bytes_1,stat_tx_packet_1024_1518_bytes_1,stat_tx_packet_1519_1522_bytes_1,stat_tx_packet_1523_1548_bytes_1,stat_tx_packet_small_1,stat_tx_packet_large_1,stat_tx_packet_1549_2047_bytes_1,stat_tx_packet_2048_4095_bytes_1,stat_tx_packet_4096_8191_bytes_1,stat_tx_packet_8192_9215_bytes_1,stat_tx_unicast_1,stat_tx_multicast_1,stat_tx_broadcast_1,stat_tx_vlan_1,stat_tx_bad_fcs_1,stat_tx_frame_error_1,stat_tx_local_fault_1,rx_reset_2,rx_axis_tvalid_2,rx_axis_tdata_2[63:0],rx_axis_tlast_2,rx_axis_tkeep_2[7:0],rx_axis_tuser_2,rx_preambleout_2[55:0],ctl_rx_test_pattern_2,ctl_rx_test_pattern_enable_2,ctl_rx_data_pattern_select_2,ctl_rx_enable_2,ctl_rx_delete_fcs_2,ctl_rx_ignore_fcs_2,ctl_rx_max_packet_len_2[14:0],ctl_rx_min_packet_len_2[7:0],ctl_rx_custom_preamble_enable_2,ctl_rx_check_sfd_2,ctl_rx_check_preamble_2,ctl_rx_process_lfi_2,ctl_rx_force_resync_2,stat_rx_block_lock_2,stat_rx_framing_err_valid_2,stat_rx_framing_err_2,stat_rx_hi_ber_2,stat_rx_valid_ctrl_code_2,stat_rx_bad_code_2,stat_rx_total_packets_2[1:0],stat_rx_total_good_packets_2,stat_rx_total_bytes_2[3:0],stat_rx_total_good_bytes_2[13:0],stat_rx_packet_small_2,stat_rx_jabber_2,stat_rx_packet_large_2,stat_rx_oversize_2,stat_rx_undersize_2,stat_rx_toolong_2,stat_rx_fragment_2,stat_rx_packet_64_bytes_2,stat_rx_packet_65_127_bytes_2,stat_rx_packet_128_255_bytes_2,stat_rx_packet_256_511_bytes_2,stat_rx_packet_512_1023_bytes_2,stat_rx_packet_1024_1518_bytes_2,stat_rx_packet_1519_1522_bytes_2,stat_rx_packet_1523_1548_bytes_2,stat_rx_bad_fcs_2[1:0],stat_rx_packet_bad_fcs_2,stat_rx_stomped_fcs_2[1:0],stat_rx_packet_1549_2047_bytes_2,stat_rx_packet_2048_4095_bytes_2,stat_rx_packet_4096_8191_bytes_2,stat_rx_packet_8192_9215_bytes_2,stat_rx_unicast_2,stat_rx_multicast_2,stat_rx_broadcast_2,stat_rx_vlan_2,stat_rx_inrangeerr_2,stat_rx_bad_preamble_2,stat_rx_bad_sfd_2,stat_rx_got_signal_os_2,stat_rx_test_pattern_mismatch_2,stat_rx_truncated_2,stat_rx_local_fault_2,stat_rx_remote_fault_2,stat_rx_internal_local_fault_2,stat_rx_received_local_fault_2,stat_rx_status_2,tx_reset_2,tx_axis_tready_2,tx_axis_tvalid_2,tx_axis_tdata_2[63:0],tx_axis_tlast_2,tx_axis_tkeep_2[7:0],tx_axis_tuser_2,tx_unfout_2,tx_preamblein_2[55:0],ctl_tx_test_pattern_2,ctl_tx_test_pattern_enable_2,ctl_tx_test_pattern_select_2,ctl_tx_data_pattern_select_2,ctl_tx_test_pattern_seed_a_2[57:0],ctl_tx_test_pattern_seed_b_2[57:0],ctl_tx_enable_2,ctl_tx_fcs_ins_enable_2,ctl_tx_ipg_value_2[3:0],ctl_tx_send_lfi_2,ctl_tx_send_rfi_2,ctl_tx_send_idle_2,ctl_tx_custom_preamble_enable_2,ctl_tx_ignore_fcs_2,stat_tx_total_packets_2,stat_tx_total_bytes_2[3:0],stat_tx_total_good_packets_2,stat_tx_total_good_bytes_2[13:0],stat_tx_packet_64_bytes_2,stat_tx_packet_65_127_bytes_2,stat_tx_packet_128_255_bytes_2,stat_tx_packet_256_511_bytes_2,stat_tx_packet_512_1023_bytes_2,stat_tx_packet_1024_1518_bytes_2,stat_tx_packet_1519_1522_bytes_2,stat_tx_packet_1523_1548_bytes_2,stat_tx_packet_small_2,stat_tx_packet_large_2,stat_tx_packet_1549_2047_bytes_2,stat_tx_packet_2048_4095_bytes_2,stat_tx_packet_4096_8191_bytes_2,stat_tx_packet_8192_9215_bytes_2,stat_tx_unicast_2,stat_tx_multicast_2,stat_tx_broadcast_2,stat_tx_vlan_2,stat_tx_bad_fcs_2,stat_tx_frame_error_2,stat_tx_local_fault_2,rx_reset_3,rx_axis_tvalid_3,rx_axis_tdata_3[63:0],rx_axis_tlast_3,rx_axis_tkeep_3[7:0],rx_axis_tuser_3,rx_preambleout_3[55:0],ctl_rx_test_pattern_3,ctl_rx_test_pattern_enable_3,ctl_rx_data_pattern_select_3,ctl_rx_enable_3,ctl_rx_delete_fcs_3,ctl_rx_ignore_fcs_3,ctl_rx_max_packet_len_3[14:0],ctl_rx_min_packet_len_3[7:0],ctl_rx_custom_preamble_enable_3,ctl_rx_check_sfd_3,ctl_rx_check_preamble_3,ctl_rx_process_lfi_3,ctl_rx_force_resync_3,stat_rx_block_lock_3,stat_rx_framing_err_valid_3,stat_rx_framing_err_3,stat_rx_hi_ber_3,stat_rx_valid_ctrl_code_3,stat_rx_bad_code_3,stat_rx_total_packets_3[1:0],stat_rx_total_good_packets_3,stat_rx_total_bytes_3[3:0],stat_rx_total_good_bytes_3[13:0],stat_rx_packet_small_3,stat_rx_jabber_3,stat_rx_packet_large_3,stat_rx_oversize_3,stat_rx_undersize_3,stat_rx_toolong_3,stat_rx_fragment_3,stat_rx_packet_64_bytes_3,stat_rx_packet_65_127_bytes_3,stat_rx_packet_128_255_bytes_3,stat_rx_packet_256_511_bytes_3,stat_rx_packet_512_1023_bytes_3,stat_rx_packet_1024_1518_bytes_3,stat_rx_packet_1519_1522_bytes_3,stat_rx_packet_1523_1548_bytes_3,stat_rx_bad_fcs_3[1:0],stat_rx_packet_bad_fcs_3,stat_rx_stomped_fcs_3[1:0],stat_rx_packet_1549_2047_bytes_3,stat_rx_packet_2048_4095_bytes_3,stat_rx_packet_4096_8191_bytes_3,stat_rx_packet_8192_9215_bytes_3,stat_rx_unicast_3,stat_rx_multicast_3,stat_rx_broadcast_3,stat_rx_vlan_3,stat_rx_inrangeerr_3,stat_rx_bad_preamble_3,stat_rx_bad_sfd_3,stat_rx_got_signal_os_3,stat_rx_test_pattern_mismatch_3,stat_rx_truncated_3,stat_rx_local_fault_3,stat_rx_remote_fault_3,stat_rx_internal_local_fault_3,stat_rx_received_local_fault_3,stat_rx_status_3,tx_reset_3,tx_axis_tready_3,tx_axis_tvalid_3,tx_axis_tdata_3[63:0],tx_axis_tlast_3,tx_axis_tkeep_3[7:0],tx_axis_tuser_3,tx_unfout_3,tx_preamblein_3[55:0],ctl_tx_test_pattern_3,ctl_tx_test_pattern_enable_3,ctl_tx_test_pattern_select_3,ctl_tx_data_pattern_select_3,ctl_tx_test_pattern_seed_a_3[57:0],ctl_tx_test_pattern_seed_b_3[57:0],ctl_tx_enable_3,ctl_tx_fcs_ins_enable_3,ctl_tx_ipg_value_3[3:0],ctl_tx_send_lfi_3,ctl_tx_send_rfi_3,ctl_tx_send_idle_3,ctl_tx_custom_preamble_enable_3,ctl_tx_ignore_fcs_3,stat_tx_total_packets_3,stat_tx_total_bytes_3[3:0],stat_tx_total_good_packets_3,stat_tx_total_good_bytes_3[13:0],stat_tx_packet_64_bytes_3,stat_tx_packet_65_127_bytes_3,stat_tx_packet_128_255_bytes_3,stat_tx_packet_256_511_bytes_3,stat_tx_packet_512_1023_bytes_3,stat_tx_packet_1024_1518_bytes_3,stat_tx_packet_1519_1522_bytes_3,stat_tx_packet_1523_1548_bytes_3,stat_tx_packet_small_3,stat_tx_packet_large_3,stat_tx_packet_1549_2047_bytes_3,stat_tx_packet_2048_4095_bytes_3,stat_tx_packet_4096_8191_bytes_3,stat_tx_packet_8192_9215_bytes_3,stat_tx_unicast_3,stat_tx_multicast_3,stat_tx_broadcast_3,stat_tx_vlan_3,stat_tx_bad_fcs_3,stat_tx_frame_error_3,stat_tx_local_fault_3,rx_core_clk_0,rx_serdes_reset_0,tx_core_clk_0,rx_serdes_clk_0,rxgearboxslip_in_0[0:0],rxdatavalid_out_0[1:0],rxheader_out_0[5:0],rxheadervalid_out_0[1:0],rx_serdes_data_out_0[127:0],tx_serdes_data_in_0[127:0],txheader_in_0[5:0],rx_core_clk_1,rx_serdes_reset_1,tx_core_clk_1,rx_serdes_clk_1,rxgearboxslip_in_1[0:0],rxdatavalid_out_1[1:0],rxheader_out_1[5:0],rxheadervalid_out_1[1:0],rx_serdes_data_out_1[127:0],tx_serdes_data_in_1[127:0],txheader_in_1[5:0],rx_core_clk_2,rx_serdes_reset_2,tx_core_clk_2,rx_serdes_clk_2,rxgearboxslip_in_2[0:0],rxdatavalid_out_2[1:0],rxheader_out_2[5:0],rxheadervalid_out_2[1:0],rx_serdes_data_out_2[127:0],tx_serdes_data_in_2[127:0],txheader_in_2[5:0],rx_core_clk_3,rx_serdes_reset_3,tx_core_clk_3,rx_serdes_clk_3,rxgearboxslip_in_3[0:0],rxdatavalid_out_3[1:0],rxheader_out_3[5:0],rxheadervalid_out_3[1:0],rx_serdes_data_out_3[127:0],tx_serdes_data_in_3[127:0],txheader_in_3[5:0]" */;
  input rx_reset_0;
  output rx_axis_tvalid_0;
  output [63:0]rx_axis_tdata_0;
  output rx_axis_tlast_0;
  output [7:0]rx_axis_tkeep_0;
  output rx_axis_tuser_0;
  output [55:0]rx_preambleout_0;
  input ctl_rx_test_pattern_0;
  input ctl_rx_test_pattern_enable_0;
  input ctl_rx_data_pattern_select_0;
  input ctl_rx_enable_0;
  input ctl_rx_delete_fcs_0;
  input ctl_rx_ignore_fcs_0;
  input [14:0]ctl_rx_max_packet_len_0;
  input [7:0]ctl_rx_min_packet_len_0;
  input ctl_rx_custom_preamble_enable_0;
  input ctl_rx_check_sfd_0;
  input ctl_rx_check_preamble_0;
  input ctl_rx_process_lfi_0;
  input ctl_rx_force_resync_0;
  output stat_rx_block_lock_0;
  output stat_rx_framing_err_valid_0;
  output stat_rx_framing_err_0;
  output stat_rx_hi_ber_0;
  output stat_rx_valid_ctrl_code_0;
  output stat_rx_bad_code_0;
  output [1:0]stat_rx_total_packets_0;
  output stat_rx_total_good_packets_0;
  output [3:0]stat_rx_total_bytes_0;
  output [13:0]stat_rx_total_good_bytes_0;
  output stat_rx_packet_small_0;
  output stat_rx_jabber_0;
  output stat_rx_packet_large_0;
  output stat_rx_oversize_0;
  output stat_rx_undersize_0;
  output stat_rx_toolong_0;
  output stat_rx_fragment_0;
  output stat_rx_packet_64_bytes_0;
  output stat_rx_packet_65_127_bytes_0;
  output stat_rx_packet_128_255_bytes_0;
  output stat_rx_packet_256_511_bytes_0;
  output stat_rx_packet_512_1023_bytes_0;
  output stat_rx_packet_1024_1518_bytes_0;
  output stat_rx_packet_1519_1522_bytes_0;
  output stat_rx_packet_1523_1548_bytes_0;
  output [1:0]stat_rx_bad_fcs_0;
  output stat_rx_packet_bad_fcs_0;
  output [1:0]stat_rx_stomped_fcs_0;
  output stat_rx_packet_1549_2047_bytes_0;
  output stat_rx_packet_2048_4095_bytes_0;
  output stat_rx_packet_4096_8191_bytes_0;
  output stat_rx_packet_8192_9215_bytes_0;
  output stat_rx_unicast_0;
  output stat_rx_multicast_0;
  output stat_rx_broadcast_0;
  output stat_rx_vlan_0;
  output stat_rx_inrangeerr_0;
  output stat_rx_bad_preamble_0;
  output stat_rx_bad_sfd_0;
  output stat_rx_got_signal_os_0;
  output stat_rx_test_pattern_mismatch_0;
  output stat_rx_truncated_0;
  output stat_rx_local_fault_0;
  output stat_rx_remote_fault_0;
  output stat_rx_internal_local_fault_0;
  output stat_rx_received_local_fault_0;
  output stat_rx_status_0;
  input tx_reset_0;
  output tx_axis_tready_0;
  input tx_axis_tvalid_0;
  input [63:0]tx_axis_tdata_0;
  input tx_axis_tlast_0;
  input [7:0]tx_axis_tkeep_0;
  input tx_axis_tuser_0;
  output tx_unfout_0;
  input [55:0]tx_preamblein_0;
  input ctl_tx_test_pattern_0;
  input ctl_tx_test_pattern_enable_0;
  input ctl_tx_test_pattern_select_0;
  input ctl_tx_data_pattern_select_0;
  input [57:0]ctl_tx_test_pattern_seed_a_0;
  input [57:0]ctl_tx_test_pattern_seed_b_0;
  input ctl_tx_enable_0;
  input ctl_tx_fcs_ins_enable_0;
  input [3:0]ctl_tx_ipg_value_0;
  input ctl_tx_send_lfi_0;
  input ctl_tx_send_rfi_0;
  input ctl_tx_send_idle_0;
  input ctl_tx_custom_preamble_enable_0;
  input ctl_tx_ignore_fcs_0;
  output stat_tx_total_packets_0;
  output [3:0]stat_tx_total_bytes_0;
  output stat_tx_total_good_packets_0;
  output [13:0]stat_tx_total_good_bytes_0;
  output stat_tx_packet_64_bytes_0;
  output stat_tx_packet_65_127_bytes_0;
  output stat_tx_packet_128_255_bytes_0;
  output stat_tx_packet_256_511_bytes_0;
  output stat_tx_packet_512_1023_bytes_0;
  output stat_tx_packet_1024_1518_bytes_0;
  output stat_tx_packet_1519_1522_bytes_0;
  output stat_tx_packet_1523_1548_bytes_0;
  output stat_tx_packet_small_0;
  output stat_tx_packet_large_0;
  output stat_tx_packet_1549_2047_bytes_0;
  output stat_tx_packet_2048_4095_bytes_0;
  output stat_tx_packet_4096_8191_bytes_0;
  output stat_tx_packet_8192_9215_bytes_0;
  output stat_tx_unicast_0;
  output stat_tx_multicast_0;
  output stat_tx_broadcast_0;
  output stat_tx_vlan_0;
  output stat_tx_bad_fcs_0;
  output stat_tx_frame_error_0;
  output stat_tx_local_fault_0;
  input rx_reset_1;
  output rx_axis_tvalid_1;
  output [63:0]rx_axis_tdata_1;
  output rx_axis_tlast_1;
  output [7:0]rx_axis_tkeep_1;
  output rx_axis_tuser_1;
  output [55:0]rx_preambleout_1;
  input ctl_rx_test_pattern_1;
  input ctl_rx_test_pattern_enable_1;
  input ctl_rx_data_pattern_select_1;
  input ctl_rx_enable_1;
  input ctl_rx_delete_fcs_1;
  input ctl_rx_ignore_fcs_1;
  input [14:0]ctl_rx_max_packet_len_1;
  input [7:0]ctl_rx_min_packet_len_1;
  input ctl_rx_custom_preamble_enable_1;
  input ctl_rx_check_sfd_1;
  input ctl_rx_check_preamble_1;
  input ctl_rx_process_lfi_1;
  input ctl_rx_force_resync_1;
  output stat_rx_block_lock_1;
  output stat_rx_framing_err_valid_1;
  output stat_rx_framing_err_1;
  output stat_rx_hi_ber_1;
  output stat_rx_valid_ctrl_code_1;
  output stat_rx_bad_code_1;
  output [1:0]stat_rx_total_packets_1;
  output stat_rx_total_good_packets_1;
  output [3:0]stat_rx_total_bytes_1;
  output [13:0]stat_rx_total_good_bytes_1;
  output stat_rx_packet_small_1;
  output stat_rx_jabber_1;
  output stat_rx_packet_large_1;
  output stat_rx_oversize_1;
  output stat_rx_undersize_1;
  output stat_rx_toolong_1;
  output stat_rx_fragment_1;
  output stat_rx_packet_64_bytes_1;
  output stat_rx_packet_65_127_bytes_1;
  output stat_rx_packet_128_255_bytes_1;
  output stat_rx_packet_256_511_bytes_1;
  output stat_rx_packet_512_1023_bytes_1;
  output stat_rx_packet_1024_1518_bytes_1;
  output stat_rx_packet_1519_1522_bytes_1;
  output stat_rx_packet_1523_1548_bytes_1;
  output [1:0]stat_rx_bad_fcs_1;
  output stat_rx_packet_bad_fcs_1;
  output [1:0]stat_rx_stomped_fcs_1;
  output stat_rx_packet_1549_2047_bytes_1;
  output stat_rx_packet_2048_4095_bytes_1;
  output stat_rx_packet_4096_8191_bytes_1;
  output stat_rx_packet_8192_9215_bytes_1;
  output stat_rx_unicast_1;
  output stat_rx_multicast_1;
  output stat_rx_broadcast_1;
  output stat_rx_vlan_1;
  output stat_rx_inrangeerr_1;
  output stat_rx_bad_preamble_1;
  output stat_rx_bad_sfd_1;
  output stat_rx_got_signal_os_1;
  output stat_rx_test_pattern_mismatch_1;
  output stat_rx_truncated_1;
  output stat_rx_local_fault_1;
  output stat_rx_remote_fault_1;
  output stat_rx_internal_local_fault_1;
  output stat_rx_received_local_fault_1;
  output stat_rx_status_1;
  input tx_reset_1;
  output tx_axis_tready_1;
  input tx_axis_tvalid_1;
  input [63:0]tx_axis_tdata_1;
  input tx_axis_tlast_1;
  input [7:0]tx_axis_tkeep_1;
  input tx_axis_tuser_1;
  output tx_unfout_1;
  input [55:0]tx_preamblein_1;
  input ctl_tx_test_pattern_1;
  input ctl_tx_test_pattern_enable_1;
  input ctl_tx_test_pattern_select_1;
  input ctl_tx_data_pattern_select_1;
  input [57:0]ctl_tx_test_pattern_seed_a_1;
  input [57:0]ctl_tx_test_pattern_seed_b_1;
  input ctl_tx_enable_1;
  input ctl_tx_fcs_ins_enable_1;
  input [3:0]ctl_tx_ipg_value_1;
  input ctl_tx_send_lfi_1;
  input ctl_tx_send_rfi_1;
  input ctl_tx_send_idle_1;
  input ctl_tx_custom_preamble_enable_1;
  input ctl_tx_ignore_fcs_1;
  output stat_tx_total_packets_1;
  output [3:0]stat_tx_total_bytes_1;
  output stat_tx_total_good_packets_1;
  output [13:0]stat_tx_total_good_bytes_1;
  output stat_tx_packet_64_bytes_1;
  output stat_tx_packet_65_127_bytes_1;
  output stat_tx_packet_128_255_bytes_1;
  output stat_tx_packet_256_511_bytes_1;
  output stat_tx_packet_512_1023_bytes_1;
  output stat_tx_packet_1024_1518_bytes_1;
  output stat_tx_packet_1519_1522_bytes_1;
  output stat_tx_packet_1523_1548_bytes_1;
  output stat_tx_packet_small_1;
  output stat_tx_packet_large_1;
  output stat_tx_packet_1549_2047_bytes_1;
  output stat_tx_packet_2048_4095_bytes_1;
  output stat_tx_packet_4096_8191_bytes_1;
  output stat_tx_packet_8192_9215_bytes_1;
  output stat_tx_unicast_1;
  output stat_tx_multicast_1;
  output stat_tx_broadcast_1;
  output stat_tx_vlan_1;
  output stat_tx_bad_fcs_1;
  output stat_tx_frame_error_1;
  output stat_tx_local_fault_1;
  input rx_reset_2;
  output rx_axis_tvalid_2;
  output [63:0]rx_axis_tdata_2;
  output rx_axis_tlast_2;
  output [7:0]rx_axis_tkeep_2;
  output rx_axis_tuser_2;
  output [55:0]rx_preambleout_2;
  input ctl_rx_test_pattern_2;
  input ctl_rx_test_pattern_enable_2;
  input ctl_rx_data_pattern_select_2;
  input ctl_rx_enable_2;
  input ctl_rx_delete_fcs_2;
  input ctl_rx_ignore_fcs_2;
  input [14:0]ctl_rx_max_packet_len_2;
  input [7:0]ctl_rx_min_packet_len_2;
  input ctl_rx_custom_preamble_enable_2;
  input ctl_rx_check_sfd_2;
  input ctl_rx_check_preamble_2;
  input ctl_rx_process_lfi_2;
  input ctl_rx_force_resync_2;
  output stat_rx_block_lock_2;
  output stat_rx_framing_err_valid_2;
  output stat_rx_framing_err_2;
  output stat_rx_hi_ber_2;
  output stat_rx_valid_ctrl_code_2;
  output stat_rx_bad_code_2;
  output [1:0]stat_rx_total_packets_2;
  output stat_rx_total_good_packets_2;
  output [3:0]stat_rx_total_bytes_2;
  output [13:0]stat_rx_total_good_bytes_2;
  output stat_rx_packet_small_2;
  output stat_rx_jabber_2;
  output stat_rx_packet_large_2;
  output stat_rx_oversize_2;
  output stat_rx_undersize_2;
  output stat_rx_toolong_2;
  output stat_rx_fragment_2;
  output stat_rx_packet_64_bytes_2;
  output stat_rx_packet_65_127_bytes_2;
  output stat_rx_packet_128_255_bytes_2;
  output stat_rx_packet_256_511_bytes_2;
  output stat_rx_packet_512_1023_bytes_2;
  output stat_rx_packet_1024_1518_bytes_2;
  output stat_rx_packet_1519_1522_bytes_2;
  output stat_rx_packet_1523_1548_bytes_2;
  output [1:0]stat_rx_bad_fcs_2;
  output stat_rx_packet_bad_fcs_2;
  output [1:0]stat_rx_stomped_fcs_2;
  output stat_rx_packet_1549_2047_bytes_2;
  output stat_rx_packet_2048_4095_bytes_2;
  output stat_rx_packet_4096_8191_bytes_2;
  output stat_rx_packet_8192_9215_bytes_2;
  output stat_rx_unicast_2;
  output stat_rx_multicast_2;
  output stat_rx_broadcast_2;
  output stat_rx_vlan_2;
  output stat_rx_inrangeerr_2;
  output stat_rx_bad_preamble_2;
  output stat_rx_bad_sfd_2;
  output stat_rx_got_signal_os_2;
  output stat_rx_test_pattern_mismatch_2;
  output stat_rx_truncated_2;
  output stat_rx_local_fault_2;
  output stat_rx_remote_fault_2;
  output stat_rx_internal_local_fault_2;
  output stat_rx_received_local_fault_2;
  output stat_rx_status_2;
  input tx_reset_2;
  output tx_axis_tready_2;
  input tx_axis_tvalid_2;
  input [63:0]tx_axis_tdata_2;
  input tx_axis_tlast_2;
  input [7:0]tx_axis_tkeep_2;
  input tx_axis_tuser_2;
  output tx_unfout_2;
  input [55:0]tx_preamblein_2;
  input ctl_tx_test_pattern_2;
  input ctl_tx_test_pattern_enable_2;
  input ctl_tx_test_pattern_select_2;
  input ctl_tx_data_pattern_select_2;
  input [57:0]ctl_tx_test_pattern_seed_a_2;
  input [57:0]ctl_tx_test_pattern_seed_b_2;
  input ctl_tx_enable_2;
  input ctl_tx_fcs_ins_enable_2;
  input [3:0]ctl_tx_ipg_value_2;
  input ctl_tx_send_lfi_2;
  input ctl_tx_send_rfi_2;
  input ctl_tx_send_idle_2;
  input ctl_tx_custom_preamble_enable_2;
  input ctl_tx_ignore_fcs_2;
  output stat_tx_total_packets_2;
  output [3:0]stat_tx_total_bytes_2;
  output stat_tx_total_good_packets_2;
  output [13:0]stat_tx_total_good_bytes_2;
  output stat_tx_packet_64_bytes_2;
  output stat_tx_packet_65_127_bytes_2;
  output stat_tx_packet_128_255_bytes_2;
  output stat_tx_packet_256_511_bytes_2;
  output stat_tx_packet_512_1023_bytes_2;
  output stat_tx_packet_1024_1518_bytes_2;
  output stat_tx_packet_1519_1522_bytes_2;
  output stat_tx_packet_1523_1548_bytes_2;
  output stat_tx_packet_small_2;
  output stat_tx_packet_large_2;
  output stat_tx_packet_1549_2047_bytes_2;
  output stat_tx_packet_2048_4095_bytes_2;
  output stat_tx_packet_4096_8191_bytes_2;
  output stat_tx_packet_8192_9215_bytes_2;
  output stat_tx_unicast_2;
  output stat_tx_multicast_2;
  output stat_tx_broadcast_2;
  output stat_tx_vlan_2;
  output stat_tx_bad_fcs_2;
  output stat_tx_frame_error_2;
  output stat_tx_local_fault_2;
  input rx_reset_3;
  output rx_axis_tvalid_3;
  output [63:0]rx_axis_tdata_3;
  output rx_axis_tlast_3;
  output [7:0]rx_axis_tkeep_3;
  output rx_axis_tuser_3;
  output [55:0]rx_preambleout_3;
  input ctl_rx_test_pattern_3;
  input ctl_rx_test_pattern_enable_3;
  input ctl_rx_data_pattern_select_3;
  input ctl_rx_enable_3;
  input ctl_rx_delete_fcs_3;
  input ctl_rx_ignore_fcs_3;
  input [14:0]ctl_rx_max_packet_len_3;
  input [7:0]ctl_rx_min_packet_len_3;
  input ctl_rx_custom_preamble_enable_3;
  input ctl_rx_check_sfd_3;
  input ctl_rx_check_preamble_3;
  input ctl_rx_process_lfi_3;
  input ctl_rx_force_resync_3;
  output stat_rx_block_lock_3;
  output stat_rx_framing_err_valid_3;
  output stat_rx_framing_err_3;
  output stat_rx_hi_ber_3;
  output stat_rx_valid_ctrl_code_3;
  output stat_rx_bad_code_3;
  output [1:0]stat_rx_total_packets_3;
  output stat_rx_total_good_packets_3;
  output [3:0]stat_rx_total_bytes_3;
  output [13:0]stat_rx_total_good_bytes_3;
  output stat_rx_packet_small_3;
  output stat_rx_jabber_3;
  output stat_rx_packet_large_3;
  output stat_rx_oversize_3;
  output stat_rx_undersize_3;
  output stat_rx_toolong_3;
  output stat_rx_fragment_3;
  output stat_rx_packet_64_bytes_3;
  output stat_rx_packet_65_127_bytes_3;
  output stat_rx_packet_128_255_bytes_3;
  output stat_rx_packet_256_511_bytes_3;
  output stat_rx_packet_512_1023_bytes_3;
  output stat_rx_packet_1024_1518_bytes_3;
  output stat_rx_packet_1519_1522_bytes_3;
  output stat_rx_packet_1523_1548_bytes_3;
  output [1:0]stat_rx_bad_fcs_3;
  output stat_rx_packet_bad_fcs_3;
  output [1:0]stat_rx_stomped_fcs_3;
  output stat_rx_packet_1549_2047_bytes_3;
  output stat_rx_packet_2048_4095_bytes_3;
  output stat_rx_packet_4096_8191_bytes_3;
  output stat_rx_packet_8192_9215_bytes_3;
  output stat_rx_unicast_3;
  output stat_rx_multicast_3;
  output stat_rx_broadcast_3;
  output stat_rx_vlan_3;
  output stat_rx_inrangeerr_3;
  output stat_rx_bad_preamble_3;
  output stat_rx_bad_sfd_3;
  output stat_rx_got_signal_os_3;
  output stat_rx_test_pattern_mismatch_3;
  output stat_rx_truncated_3;
  output stat_rx_local_fault_3;
  output stat_rx_remote_fault_3;
  output stat_rx_internal_local_fault_3;
  output stat_rx_received_local_fault_3;
  output stat_rx_status_3;
  input tx_reset_3;
  output tx_axis_tready_3;
  input tx_axis_tvalid_3;
  input [63:0]tx_axis_tdata_3;
  input tx_axis_tlast_3;
  input [7:0]tx_axis_tkeep_3;
  input tx_axis_tuser_3;
  output tx_unfout_3;
  input [55:0]tx_preamblein_3;
  input ctl_tx_test_pattern_3;
  input ctl_tx_test_pattern_enable_3;
  input ctl_tx_test_pattern_select_3;
  input ctl_tx_data_pattern_select_3;
  input [57:0]ctl_tx_test_pattern_seed_a_3;
  input [57:0]ctl_tx_test_pattern_seed_b_3;
  input ctl_tx_enable_3;
  input ctl_tx_fcs_ins_enable_3;
  input [3:0]ctl_tx_ipg_value_3;
  input ctl_tx_send_lfi_3;
  input ctl_tx_send_rfi_3;
  input ctl_tx_send_idle_3;
  input ctl_tx_custom_preamble_enable_3;
  input ctl_tx_ignore_fcs_3;
  output stat_tx_total_packets_3;
  output [3:0]stat_tx_total_bytes_3;
  output stat_tx_total_good_packets_3;
  output [13:0]stat_tx_total_good_bytes_3;
  output stat_tx_packet_64_bytes_3;
  output stat_tx_packet_65_127_bytes_3;
  output stat_tx_packet_128_255_bytes_3;
  output stat_tx_packet_256_511_bytes_3;
  output stat_tx_packet_512_1023_bytes_3;
  output stat_tx_packet_1024_1518_bytes_3;
  output stat_tx_packet_1519_1522_bytes_3;
  output stat_tx_packet_1523_1548_bytes_3;
  output stat_tx_packet_small_3;
  output stat_tx_packet_large_3;
  output stat_tx_packet_1549_2047_bytes_3;
  output stat_tx_packet_2048_4095_bytes_3;
  output stat_tx_packet_4096_8191_bytes_3;
  output stat_tx_packet_8192_9215_bytes_3;
  output stat_tx_unicast_3;
  output stat_tx_multicast_3;
  output stat_tx_broadcast_3;
  output stat_tx_vlan_3;
  output stat_tx_bad_fcs_3;
  output stat_tx_frame_error_3;
  output stat_tx_local_fault_3;
  input rx_core_clk_0;
  input rx_serdes_reset_0;
  input tx_core_clk_0;
  input rx_serdes_clk_0;
  output [0:0]rxgearboxslip_in_0;
  input [1:0]rxdatavalid_out_0;
  input [5:0]rxheader_out_0;
  input [1:0]rxheadervalid_out_0;
  input [127:0]rx_serdes_data_out_0;
  output [127:0]tx_serdes_data_in_0;
  output [5:0]txheader_in_0;
  input rx_core_clk_1;
  input rx_serdes_reset_1;
  input tx_core_clk_1;
  input rx_serdes_clk_1;
  output [0:0]rxgearboxslip_in_1;
  input [1:0]rxdatavalid_out_1;
  input [5:0]rxheader_out_1;
  input [1:0]rxheadervalid_out_1;
  input [127:0]rx_serdes_data_out_1;
  output [127:0]tx_serdes_data_in_1;
  output [5:0]txheader_in_1;
  input rx_core_clk_2;
  input rx_serdes_reset_2;
  input tx_core_clk_2;
  input rx_serdes_clk_2;
  output [0:0]rxgearboxslip_in_2;
  input [1:0]rxdatavalid_out_2;
  input [5:0]rxheader_out_2;
  input [1:0]rxheadervalid_out_2;
  input [127:0]rx_serdes_data_out_2;
  output [127:0]tx_serdes_data_in_2;
  output [5:0]txheader_in_2;
  input rx_core_clk_3;
  input rx_serdes_reset_3;
  input tx_core_clk_3;
  input rx_serdes_clk_3;
  output [0:0]rxgearboxslip_in_3;
  input [1:0]rxdatavalid_out_3;
  input [5:0]rxheader_out_3;
  input [1:0]rxheadervalid_out_3;
  input [127:0]rx_serdes_data_out_3;
  output [127:0]tx_serdes_data_in_3;
  output [5:0]txheader_in_3;
endmodule
