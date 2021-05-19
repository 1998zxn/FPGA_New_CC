-- (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:xxv_ethernet:3.3
-- IP Revision: 0

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT xxv_ethernet_0
  PORT (
    rx_core_clk_0 : IN STD_LOGIC;
    rx_core_clk_1 : IN STD_LOGIC;
    rx_core_clk_2 : IN STD_LOGIC;
    rx_core_clk_3 : IN STD_LOGIC;
    rx_serdes_clk_0 : IN STD_LOGIC;
    rx_serdes_clk_1 : IN STD_LOGIC;
    rx_serdes_clk_2 : IN STD_LOGIC;
    rx_serdes_clk_3 : IN STD_LOGIC;
    rx_serdes_reset_0 : IN STD_LOGIC;
    rx_serdes_reset_1 : IN STD_LOGIC;
    rx_serdes_reset_2 : IN STD_LOGIC;
    rx_serdes_reset_3 : IN STD_LOGIC;
    rxgearboxslip_in_0 : OUT STD_LOGIC;
    rxgearboxslip_in_1 : OUT STD_LOGIC;
    rxgearboxslip_in_2 : OUT STD_LOGIC;
    rxgearboxslip_in_3 : OUT STD_LOGIC;
    rxdatavalid_out_0 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    rxdatavalid_out_1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    rxdatavalid_out_2 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    rxdatavalid_out_3 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    rxheader_out_0 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    rxheader_out_1 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    rxheader_out_2 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    rxheader_out_3 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    rxheadervalid_out_0 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    rxheadervalid_out_1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    rxheadervalid_out_2 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    rxheadervalid_out_3 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    rx_serdes_data_out_0 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    rx_serdes_data_out_1 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    rx_serdes_data_out_2 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    rx_serdes_data_out_3 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    tx_serdes_data_in_0 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    tx_serdes_data_in_1 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    tx_serdes_data_in_2 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    tx_serdes_data_in_3 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    txheader_in_0 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    txheader_in_1 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    txheader_in_2 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    txheader_in_3 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    tx_core_clk_0 : IN STD_LOGIC;
    tx_core_clk_1 : IN STD_LOGIC;
    tx_core_clk_2 : IN STD_LOGIC;
    tx_core_clk_3 : IN STD_LOGIC;
    rx_reset_0 : IN STD_LOGIC;
    rx_reset_1 : IN STD_LOGIC;
    rx_reset_2 : IN STD_LOGIC;
    rx_reset_3 : IN STD_LOGIC;
    rx_axis_tvalid_0 : OUT STD_LOGIC;
    rx_axis_tvalid_1 : OUT STD_LOGIC;
    rx_axis_tvalid_2 : OUT STD_LOGIC;
    rx_axis_tvalid_3 : OUT STD_LOGIC;
    rx_axis_tdata_0 : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    rx_axis_tdata_1 : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    rx_axis_tdata_2 : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    rx_axis_tdata_3 : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    rx_axis_tlast_0 : OUT STD_LOGIC;
    rx_axis_tlast_1 : OUT STD_LOGIC;
    rx_axis_tlast_2 : OUT STD_LOGIC;
    rx_axis_tlast_3 : OUT STD_LOGIC;
    rx_axis_tkeep_0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    rx_axis_tkeep_1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    rx_axis_tkeep_2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    rx_axis_tkeep_3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    rx_axis_tuser_0 : OUT STD_LOGIC;
    rx_axis_tuser_1 : OUT STD_LOGIC;
    rx_axis_tuser_2 : OUT STD_LOGIC;
    rx_axis_tuser_3 : OUT STD_LOGIC;
    ctl_rx_enable_0 : IN STD_LOGIC;
    ctl_rx_enable_1 : IN STD_LOGIC;
    ctl_rx_enable_2 : IN STD_LOGIC;
    ctl_rx_enable_3 : IN STD_LOGIC;
    ctl_rx_check_preamble_0 : IN STD_LOGIC;
    ctl_rx_check_preamble_1 : IN STD_LOGIC;
    ctl_rx_check_preamble_2 : IN STD_LOGIC;
    ctl_rx_check_preamble_3 : IN STD_LOGIC;
    ctl_rx_check_sfd_0 : IN STD_LOGIC;
    ctl_rx_check_sfd_1 : IN STD_LOGIC;
    ctl_rx_check_sfd_2 : IN STD_LOGIC;
    ctl_rx_check_sfd_3 : IN STD_LOGIC;
    ctl_rx_force_resync_0 : IN STD_LOGIC;
    ctl_rx_force_resync_1 : IN STD_LOGIC;
    ctl_rx_force_resync_2 : IN STD_LOGIC;
    ctl_rx_force_resync_3 : IN STD_LOGIC;
    ctl_rx_delete_fcs_0 : IN STD_LOGIC;
    ctl_rx_delete_fcs_1 : IN STD_LOGIC;
    ctl_rx_delete_fcs_2 : IN STD_LOGIC;
    ctl_rx_delete_fcs_3 : IN STD_LOGIC;
    ctl_rx_ignore_fcs_0 : IN STD_LOGIC;
    ctl_rx_ignore_fcs_1 : IN STD_LOGIC;
    ctl_rx_ignore_fcs_2 : IN STD_LOGIC;
    ctl_rx_ignore_fcs_3 : IN STD_LOGIC;
    ctl_rx_max_packet_len_0 : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
    ctl_rx_max_packet_len_1 : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
    ctl_rx_max_packet_len_2 : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
    ctl_rx_max_packet_len_3 : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
    ctl_rx_min_packet_len_0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ctl_rx_min_packet_len_1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ctl_rx_min_packet_len_2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ctl_rx_min_packet_len_3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ctl_rx_process_lfi_0 : IN STD_LOGIC;
    ctl_rx_process_lfi_1 : IN STD_LOGIC;
    ctl_rx_process_lfi_2 : IN STD_LOGIC;
    ctl_rx_process_lfi_3 : IN STD_LOGIC;
    ctl_rx_test_pattern_0 : IN STD_LOGIC;
    ctl_rx_test_pattern_1 : IN STD_LOGIC;
    ctl_rx_test_pattern_2 : IN STD_LOGIC;
    ctl_rx_test_pattern_3 : IN STD_LOGIC;
    ctl_rx_data_pattern_select_0 : IN STD_LOGIC;
    ctl_rx_data_pattern_select_1 : IN STD_LOGIC;
    ctl_rx_data_pattern_select_2 : IN STD_LOGIC;
    ctl_rx_data_pattern_select_3 : IN STD_LOGIC;
    ctl_rx_test_pattern_enable_0 : IN STD_LOGIC;
    ctl_rx_test_pattern_enable_1 : IN STD_LOGIC;
    ctl_rx_test_pattern_enable_2 : IN STD_LOGIC;
    ctl_rx_test_pattern_enable_3 : IN STD_LOGIC;
    ctl_rx_custom_preamble_enable_0 : IN STD_LOGIC;
    ctl_rx_custom_preamble_enable_1 : IN STD_LOGIC;
    ctl_rx_custom_preamble_enable_2 : IN STD_LOGIC;
    ctl_rx_custom_preamble_enable_3 : IN STD_LOGIC;
    stat_rx_framing_err_0 : OUT STD_LOGIC;
    stat_rx_framing_err_1 : OUT STD_LOGIC;
    stat_rx_framing_err_2 : OUT STD_LOGIC;
    stat_rx_framing_err_3 : OUT STD_LOGIC;
    stat_rx_framing_err_valid_0 : OUT STD_LOGIC;
    stat_rx_framing_err_valid_1 : OUT STD_LOGIC;
    stat_rx_framing_err_valid_2 : OUT STD_LOGIC;
    stat_rx_framing_err_valid_3 : OUT STD_LOGIC;
    stat_rx_local_fault_0 : OUT STD_LOGIC;
    stat_rx_local_fault_1 : OUT STD_LOGIC;
    stat_rx_local_fault_2 : OUT STD_LOGIC;
    stat_rx_local_fault_3 : OUT STD_LOGIC;
    stat_rx_block_lock_0 : OUT STD_LOGIC;
    stat_rx_block_lock_1 : OUT STD_LOGIC;
    stat_rx_block_lock_2 : OUT STD_LOGIC;
    stat_rx_block_lock_3 : OUT STD_LOGIC;
    stat_rx_valid_ctrl_code_0 : OUT STD_LOGIC;
    stat_rx_valid_ctrl_code_1 : OUT STD_LOGIC;
    stat_rx_valid_ctrl_code_2 : OUT STD_LOGIC;
    stat_rx_valid_ctrl_code_3 : OUT STD_LOGIC;
    stat_rx_status_0 : OUT STD_LOGIC;
    stat_rx_status_1 : OUT STD_LOGIC;
    stat_rx_status_2 : OUT STD_LOGIC;
    stat_rx_status_3 : OUT STD_LOGIC;
    stat_rx_remote_fault_0 : OUT STD_LOGIC;
    stat_rx_remote_fault_1 : OUT STD_LOGIC;
    stat_rx_remote_fault_2 : OUT STD_LOGIC;
    stat_rx_remote_fault_3 : OUT STD_LOGIC;
    stat_rx_bad_fcs_0 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    stat_rx_bad_fcs_1 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    stat_rx_bad_fcs_2 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    stat_rx_bad_fcs_3 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    stat_rx_stomped_fcs_0 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    stat_rx_stomped_fcs_1 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    stat_rx_stomped_fcs_2 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    stat_rx_stomped_fcs_3 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    stat_rx_truncated_0 : OUT STD_LOGIC;
    stat_rx_truncated_1 : OUT STD_LOGIC;
    stat_rx_truncated_2 : OUT STD_LOGIC;
    stat_rx_truncated_3 : OUT STD_LOGIC;
    stat_rx_internal_local_fault_0 : OUT STD_LOGIC;
    stat_rx_internal_local_fault_1 : OUT STD_LOGIC;
    stat_rx_internal_local_fault_2 : OUT STD_LOGIC;
    stat_rx_internal_local_fault_3 : OUT STD_LOGIC;
    stat_rx_received_local_fault_0 : OUT STD_LOGIC;
    stat_rx_received_local_fault_1 : OUT STD_LOGIC;
    stat_rx_received_local_fault_2 : OUT STD_LOGIC;
    stat_rx_received_local_fault_3 : OUT STD_LOGIC;
    stat_rx_hi_ber_0 : OUT STD_LOGIC;
    stat_rx_hi_ber_1 : OUT STD_LOGIC;
    stat_rx_hi_ber_2 : OUT STD_LOGIC;
    stat_rx_hi_ber_3 : OUT STD_LOGIC;
    stat_rx_got_signal_os_0 : OUT STD_LOGIC;
    stat_rx_got_signal_os_1 : OUT STD_LOGIC;
    stat_rx_got_signal_os_2 : OUT STD_LOGIC;
    stat_rx_got_signal_os_3 : OUT STD_LOGIC;
    stat_rx_test_pattern_mismatch_0 : OUT STD_LOGIC;
    stat_rx_test_pattern_mismatch_1 : OUT STD_LOGIC;
    stat_rx_test_pattern_mismatch_2 : OUT STD_LOGIC;
    stat_rx_test_pattern_mismatch_3 : OUT STD_LOGIC;
    stat_rx_total_bytes_0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    stat_rx_total_bytes_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    stat_rx_total_bytes_2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    stat_rx_total_bytes_3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    stat_rx_total_packets_0 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    stat_rx_total_packets_1 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    stat_rx_total_packets_2 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    stat_rx_total_packets_3 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    stat_rx_total_good_bytes_0 : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    stat_rx_total_good_bytes_1 : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    stat_rx_total_good_bytes_2 : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    stat_rx_total_good_bytes_3 : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    stat_rx_total_good_packets_0 : OUT STD_LOGIC;
    stat_rx_total_good_packets_1 : OUT STD_LOGIC;
    stat_rx_total_good_packets_2 : OUT STD_LOGIC;
    stat_rx_total_good_packets_3 : OUT STD_LOGIC;
    stat_rx_packet_bad_fcs_0 : OUT STD_LOGIC;
    stat_rx_packet_bad_fcs_1 : OUT STD_LOGIC;
    stat_rx_packet_bad_fcs_2 : OUT STD_LOGIC;
    stat_rx_packet_bad_fcs_3 : OUT STD_LOGIC;
    stat_rx_packet_64_bytes_0 : OUT STD_LOGIC;
    stat_rx_packet_64_bytes_1 : OUT STD_LOGIC;
    stat_rx_packet_64_bytes_2 : OUT STD_LOGIC;
    stat_rx_packet_64_bytes_3 : OUT STD_LOGIC;
    stat_rx_packet_65_127_bytes_0 : OUT STD_LOGIC;
    stat_rx_packet_65_127_bytes_1 : OUT STD_LOGIC;
    stat_rx_packet_65_127_bytes_2 : OUT STD_LOGIC;
    stat_rx_packet_65_127_bytes_3 : OUT STD_LOGIC;
    stat_rx_packet_128_255_bytes_0 : OUT STD_LOGIC;
    stat_rx_packet_128_255_bytes_1 : OUT STD_LOGIC;
    stat_rx_packet_128_255_bytes_2 : OUT STD_LOGIC;
    stat_rx_packet_128_255_bytes_3 : OUT STD_LOGIC;
    stat_rx_packet_256_511_bytes_0 : OUT STD_LOGIC;
    stat_rx_packet_256_511_bytes_1 : OUT STD_LOGIC;
    stat_rx_packet_256_511_bytes_2 : OUT STD_LOGIC;
    stat_rx_packet_256_511_bytes_3 : OUT STD_LOGIC;
    stat_rx_packet_512_1023_bytes_0 : OUT STD_LOGIC;
    stat_rx_packet_512_1023_bytes_1 : OUT STD_LOGIC;
    stat_rx_packet_512_1023_bytes_2 : OUT STD_LOGIC;
    stat_rx_packet_512_1023_bytes_3 : OUT STD_LOGIC;
    stat_rx_packet_1024_1518_bytes_0 : OUT STD_LOGIC;
    stat_rx_packet_1024_1518_bytes_1 : OUT STD_LOGIC;
    stat_rx_packet_1024_1518_bytes_2 : OUT STD_LOGIC;
    stat_rx_packet_1024_1518_bytes_3 : OUT STD_LOGIC;
    stat_rx_packet_1519_1522_bytes_0 : OUT STD_LOGIC;
    stat_rx_packet_1519_1522_bytes_1 : OUT STD_LOGIC;
    stat_rx_packet_1519_1522_bytes_2 : OUT STD_LOGIC;
    stat_rx_packet_1519_1522_bytes_3 : OUT STD_LOGIC;
    stat_rx_packet_1523_1548_bytes_0 : OUT STD_LOGIC;
    stat_rx_packet_1523_1548_bytes_1 : OUT STD_LOGIC;
    stat_rx_packet_1523_1548_bytes_2 : OUT STD_LOGIC;
    stat_rx_packet_1523_1548_bytes_3 : OUT STD_LOGIC;
    stat_rx_packet_1549_2047_bytes_0 : OUT STD_LOGIC;
    stat_rx_packet_1549_2047_bytes_1 : OUT STD_LOGIC;
    stat_rx_packet_1549_2047_bytes_2 : OUT STD_LOGIC;
    stat_rx_packet_1549_2047_bytes_3 : OUT STD_LOGIC;
    stat_rx_packet_2048_4095_bytes_0 : OUT STD_LOGIC;
    stat_rx_packet_2048_4095_bytes_1 : OUT STD_LOGIC;
    stat_rx_packet_2048_4095_bytes_2 : OUT STD_LOGIC;
    stat_rx_packet_2048_4095_bytes_3 : OUT STD_LOGIC;
    stat_rx_packet_4096_8191_bytes_0 : OUT STD_LOGIC;
    stat_rx_packet_4096_8191_bytes_1 : OUT STD_LOGIC;
    stat_rx_packet_4096_8191_bytes_2 : OUT STD_LOGIC;
    stat_rx_packet_4096_8191_bytes_3 : OUT STD_LOGIC;
    stat_rx_packet_8192_9215_bytes_0 : OUT STD_LOGIC;
    stat_rx_packet_8192_9215_bytes_1 : OUT STD_LOGIC;
    stat_rx_packet_8192_9215_bytes_2 : OUT STD_LOGIC;
    stat_rx_packet_8192_9215_bytes_3 : OUT STD_LOGIC;
    stat_rx_packet_small_0 : OUT STD_LOGIC;
    stat_rx_packet_small_1 : OUT STD_LOGIC;
    stat_rx_packet_small_2 : OUT STD_LOGIC;
    stat_rx_packet_small_3 : OUT STD_LOGIC;
    stat_rx_packet_large_0 : OUT STD_LOGIC;
    stat_rx_packet_large_1 : OUT STD_LOGIC;
    stat_rx_packet_large_2 : OUT STD_LOGIC;
    stat_rx_packet_large_3 : OUT STD_LOGIC;
    stat_rx_unicast_0 : OUT STD_LOGIC;
    stat_rx_unicast_1 : OUT STD_LOGIC;
    stat_rx_unicast_2 : OUT STD_LOGIC;
    stat_rx_unicast_3 : OUT STD_LOGIC;
    stat_rx_multicast_0 : OUT STD_LOGIC;
    stat_rx_multicast_1 : OUT STD_LOGIC;
    stat_rx_multicast_2 : OUT STD_LOGIC;
    stat_rx_multicast_3 : OUT STD_LOGIC;
    stat_rx_broadcast_0 : OUT STD_LOGIC;
    stat_rx_broadcast_1 : OUT STD_LOGIC;
    stat_rx_broadcast_2 : OUT STD_LOGIC;
    stat_rx_broadcast_3 : OUT STD_LOGIC;
    stat_rx_oversize_0 : OUT STD_LOGIC;
    stat_rx_oversize_1 : OUT STD_LOGIC;
    stat_rx_oversize_2 : OUT STD_LOGIC;
    stat_rx_oversize_3 : OUT STD_LOGIC;
    stat_rx_toolong_0 : OUT STD_LOGIC;
    stat_rx_toolong_1 : OUT STD_LOGIC;
    stat_rx_toolong_2 : OUT STD_LOGIC;
    stat_rx_toolong_3 : OUT STD_LOGIC;
    stat_rx_undersize_0 : OUT STD_LOGIC;
    stat_rx_undersize_1 : OUT STD_LOGIC;
    stat_rx_undersize_2 : OUT STD_LOGIC;
    stat_rx_undersize_3 : OUT STD_LOGIC;
    stat_rx_fragment_0 : OUT STD_LOGIC;
    stat_rx_fragment_1 : OUT STD_LOGIC;
    stat_rx_fragment_2 : OUT STD_LOGIC;
    stat_rx_fragment_3 : OUT STD_LOGIC;
    stat_rx_vlan_0 : OUT STD_LOGIC;
    stat_rx_vlan_1 : OUT STD_LOGIC;
    stat_rx_vlan_2 : OUT STD_LOGIC;
    stat_rx_vlan_3 : OUT STD_LOGIC;
    stat_rx_inrangeerr_0 : OUT STD_LOGIC;
    stat_rx_inrangeerr_1 : OUT STD_LOGIC;
    stat_rx_inrangeerr_2 : OUT STD_LOGIC;
    stat_rx_inrangeerr_3 : OUT STD_LOGIC;
    stat_rx_jabber_0 : OUT STD_LOGIC;
    stat_rx_jabber_1 : OUT STD_LOGIC;
    stat_rx_jabber_2 : OUT STD_LOGIC;
    stat_rx_jabber_3 : OUT STD_LOGIC;
    stat_rx_bad_code_0 : OUT STD_LOGIC;
    stat_rx_bad_code_1 : OUT STD_LOGIC;
    stat_rx_bad_code_2 : OUT STD_LOGIC;
    stat_rx_bad_code_3 : OUT STD_LOGIC;
    stat_rx_bad_sfd_0 : OUT STD_LOGIC;
    stat_rx_bad_sfd_1 : OUT STD_LOGIC;
    stat_rx_bad_sfd_2 : OUT STD_LOGIC;
    stat_rx_bad_sfd_3 : OUT STD_LOGIC;
    stat_rx_bad_preamble_0 : OUT STD_LOGIC;
    stat_rx_bad_preamble_1 : OUT STD_LOGIC;
    stat_rx_bad_preamble_2 : OUT STD_LOGIC;
    stat_rx_bad_preamble_3 : OUT STD_LOGIC;
    tx_reset_0 : IN STD_LOGIC;
    tx_reset_1 : IN STD_LOGIC;
    tx_reset_2 : IN STD_LOGIC;
    tx_reset_3 : IN STD_LOGIC;
    tx_axis_tready_0 : OUT STD_LOGIC;
    tx_axis_tready_1 : OUT STD_LOGIC;
    tx_axis_tready_2 : OUT STD_LOGIC;
    tx_axis_tready_3 : OUT STD_LOGIC;
    tx_axis_tvalid_0 : IN STD_LOGIC;
    tx_axis_tvalid_1 : IN STD_LOGIC;
    tx_axis_tvalid_2 : IN STD_LOGIC;
    tx_axis_tvalid_3 : IN STD_LOGIC;
    tx_axis_tdata_0 : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    tx_axis_tdata_1 : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    tx_axis_tdata_2 : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    tx_axis_tdata_3 : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    tx_axis_tlast_0 : IN STD_LOGIC;
    tx_axis_tlast_1 : IN STD_LOGIC;
    tx_axis_tlast_2 : IN STD_LOGIC;
    tx_axis_tlast_3 : IN STD_LOGIC;
    tx_axis_tkeep_0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    tx_axis_tkeep_1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    tx_axis_tkeep_2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    tx_axis_tkeep_3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    tx_axis_tuser_0 : IN STD_LOGIC;
    tx_axis_tuser_1 : IN STD_LOGIC;
    tx_axis_tuser_2 : IN STD_LOGIC;
    tx_axis_tuser_3 : IN STD_LOGIC;
    tx_unfout_0 : OUT STD_LOGIC;
    tx_unfout_1 : OUT STD_LOGIC;
    tx_unfout_2 : OUT STD_LOGIC;
    tx_unfout_3 : OUT STD_LOGIC;
    tx_preamblein_0 : IN STD_LOGIC_VECTOR(55 DOWNTO 0);
    rx_preambleout_0 : OUT STD_LOGIC_VECTOR(55 DOWNTO 0);
    tx_preamblein_1 : IN STD_LOGIC_VECTOR(55 DOWNTO 0);
    rx_preambleout_1 : OUT STD_LOGIC_VECTOR(55 DOWNTO 0);
    tx_preamblein_2 : IN STD_LOGIC_VECTOR(55 DOWNTO 0);
    rx_preambleout_2 : OUT STD_LOGIC_VECTOR(55 DOWNTO 0);
    tx_preamblein_3 : IN STD_LOGIC_VECTOR(55 DOWNTO 0);
    rx_preambleout_3 : OUT STD_LOGIC_VECTOR(55 DOWNTO 0);
    stat_tx_local_fault_0 : OUT STD_LOGIC;
    stat_tx_local_fault_1 : OUT STD_LOGIC;
    stat_tx_local_fault_2 : OUT STD_LOGIC;
    stat_tx_local_fault_3 : OUT STD_LOGIC;
    stat_tx_total_bytes_0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    stat_tx_total_bytes_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    stat_tx_total_bytes_2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    stat_tx_total_bytes_3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    stat_tx_total_packets_0 : OUT STD_LOGIC;
    stat_tx_total_packets_1 : OUT STD_LOGIC;
    stat_tx_total_packets_2 : OUT STD_LOGIC;
    stat_tx_total_packets_3 : OUT STD_LOGIC;
    stat_tx_total_good_bytes_0 : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    stat_tx_total_good_bytes_1 : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    stat_tx_total_good_bytes_2 : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    stat_tx_total_good_bytes_3 : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    stat_tx_total_good_packets_0 : OUT STD_LOGIC;
    stat_tx_total_good_packets_1 : OUT STD_LOGIC;
    stat_tx_total_good_packets_2 : OUT STD_LOGIC;
    stat_tx_total_good_packets_3 : OUT STD_LOGIC;
    stat_tx_bad_fcs_0 : OUT STD_LOGIC;
    stat_tx_bad_fcs_1 : OUT STD_LOGIC;
    stat_tx_bad_fcs_2 : OUT STD_LOGIC;
    stat_tx_bad_fcs_3 : OUT STD_LOGIC;
    stat_tx_packet_64_bytes_0 : OUT STD_LOGIC;
    stat_tx_packet_64_bytes_1 : OUT STD_LOGIC;
    stat_tx_packet_64_bytes_2 : OUT STD_LOGIC;
    stat_tx_packet_64_bytes_3 : OUT STD_LOGIC;
    stat_tx_packet_65_127_bytes_0 : OUT STD_LOGIC;
    stat_tx_packet_65_127_bytes_1 : OUT STD_LOGIC;
    stat_tx_packet_65_127_bytes_2 : OUT STD_LOGIC;
    stat_tx_packet_65_127_bytes_3 : OUT STD_LOGIC;
    stat_tx_packet_128_255_bytes_0 : OUT STD_LOGIC;
    stat_tx_packet_128_255_bytes_1 : OUT STD_LOGIC;
    stat_tx_packet_128_255_bytes_2 : OUT STD_LOGIC;
    stat_tx_packet_128_255_bytes_3 : OUT STD_LOGIC;
    stat_tx_packet_256_511_bytes_0 : OUT STD_LOGIC;
    stat_tx_packet_256_511_bytes_1 : OUT STD_LOGIC;
    stat_tx_packet_256_511_bytes_2 : OUT STD_LOGIC;
    stat_tx_packet_256_511_bytes_3 : OUT STD_LOGIC;
    stat_tx_packet_512_1023_bytes_0 : OUT STD_LOGIC;
    stat_tx_packet_512_1023_bytes_1 : OUT STD_LOGIC;
    stat_tx_packet_512_1023_bytes_2 : OUT STD_LOGIC;
    stat_tx_packet_512_1023_bytes_3 : OUT STD_LOGIC;
    stat_tx_packet_1024_1518_bytes_0 : OUT STD_LOGIC;
    stat_tx_packet_1024_1518_bytes_1 : OUT STD_LOGIC;
    stat_tx_packet_1024_1518_bytes_2 : OUT STD_LOGIC;
    stat_tx_packet_1024_1518_bytes_3 : OUT STD_LOGIC;
    stat_tx_packet_1519_1522_bytes_0 : OUT STD_LOGIC;
    stat_tx_packet_1519_1522_bytes_1 : OUT STD_LOGIC;
    stat_tx_packet_1519_1522_bytes_2 : OUT STD_LOGIC;
    stat_tx_packet_1519_1522_bytes_3 : OUT STD_LOGIC;
    stat_tx_packet_1523_1548_bytes_0 : OUT STD_LOGIC;
    stat_tx_packet_1523_1548_bytes_1 : OUT STD_LOGIC;
    stat_tx_packet_1523_1548_bytes_2 : OUT STD_LOGIC;
    stat_tx_packet_1523_1548_bytes_3 : OUT STD_LOGIC;
    stat_tx_packet_1549_2047_bytes_0 : OUT STD_LOGIC;
    stat_tx_packet_1549_2047_bytes_1 : OUT STD_LOGIC;
    stat_tx_packet_1549_2047_bytes_2 : OUT STD_LOGIC;
    stat_tx_packet_1549_2047_bytes_3 : OUT STD_LOGIC;
    stat_tx_packet_2048_4095_bytes_0 : OUT STD_LOGIC;
    stat_tx_packet_2048_4095_bytes_1 : OUT STD_LOGIC;
    stat_tx_packet_2048_4095_bytes_2 : OUT STD_LOGIC;
    stat_tx_packet_2048_4095_bytes_3 : OUT STD_LOGIC;
    stat_tx_packet_4096_8191_bytes_0 : OUT STD_LOGIC;
    stat_tx_packet_4096_8191_bytes_1 : OUT STD_LOGIC;
    stat_tx_packet_4096_8191_bytes_2 : OUT STD_LOGIC;
    stat_tx_packet_4096_8191_bytes_3 : OUT STD_LOGIC;
    stat_tx_packet_8192_9215_bytes_0 : OUT STD_LOGIC;
    stat_tx_packet_8192_9215_bytes_1 : OUT STD_LOGIC;
    stat_tx_packet_8192_9215_bytes_2 : OUT STD_LOGIC;
    stat_tx_packet_8192_9215_bytes_3 : OUT STD_LOGIC;
    stat_tx_packet_small_0 : OUT STD_LOGIC;
    stat_tx_packet_small_1 : OUT STD_LOGIC;
    stat_tx_packet_small_2 : OUT STD_LOGIC;
    stat_tx_packet_small_3 : OUT STD_LOGIC;
    stat_tx_packet_large_0 : OUT STD_LOGIC;
    stat_tx_packet_large_1 : OUT STD_LOGIC;
    stat_tx_packet_large_2 : OUT STD_LOGIC;
    stat_tx_packet_large_3 : OUT STD_LOGIC;
    stat_tx_unicast_0 : OUT STD_LOGIC;
    stat_tx_unicast_1 : OUT STD_LOGIC;
    stat_tx_unicast_2 : OUT STD_LOGIC;
    stat_tx_unicast_3 : OUT STD_LOGIC;
    stat_tx_multicast_0 : OUT STD_LOGIC;
    stat_tx_multicast_1 : OUT STD_LOGIC;
    stat_tx_multicast_2 : OUT STD_LOGIC;
    stat_tx_multicast_3 : OUT STD_LOGIC;
    stat_tx_broadcast_0 : OUT STD_LOGIC;
    stat_tx_broadcast_1 : OUT STD_LOGIC;
    stat_tx_broadcast_2 : OUT STD_LOGIC;
    stat_tx_broadcast_3 : OUT STD_LOGIC;
    stat_tx_vlan_0 : OUT STD_LOGIC;
    stat_tx_vlan_1 : OUT STD_LOGIC;
    stat_tx_vlan_2 : OUT STD_LOGIC;
    stat_tx_vlan_3 : OUT STD_LOGIC;
    stat_tx_frame_error_0 : OUT STD_LOGIC;
    stat_tx_frame_error_1 : OUT STD_LOGIC;
    stat_tx_frame_error_2 : OUT STD_LOGIC;
    stat_tx_frame_error_3 : OUT STD_LOGIC;
    ctl_tx_enable_0 : IN STD_LOGIC;
    ctl_tx_enable_1 : IN STD_LOGIC;
    ctl_tx_enable_2 : IN STD_LOGIC;
    ctl_tx_enable_3 : IN STD_LOGIC;
    ctl_tx_send_rfi_0 : IN STD_LOGIC;
    ctl_tx_send_rfi_1 : IN STD_LOGIC;
    ctl_tx_send_rfi_2 : IN STD_LOGIC;
    ctl_tx_send_rfi_3 : IN STD_LOGIC;
    ctl_tx_send_lfi_0 : IN STD_LOGIC;
    ctl_tx_send_lfi_1 : IN STD_LOGIC;
    ctl_tx_send_lfi_2 : IN STD_LOGIC;
    ctl_tx_send_lfi_3 : IN STD_LOGIC;
    ctl_tx_send_idle_0 : IN STD_LOGIC;
    ctl_tx_send_idle_1 : IN STD_LOGIC;
    ctl_tx_send_idle_2 : IN STD_LOGIC;
    ctl_tx_send_idle_3 : IN STD_LOGIC;
    ctl_tx_fcs_ins_enable_0 : IN STD_LOGIC;
    ctl_tx_fcs_ins_enable_1 : IN STD_LOGIC;
    ctl_tx_fcs_ins_enable_2 : IN STD_LOGIC;
    ctl_tx_fcs_ins_enable_3 : IN STD_LOGIC;
    ctl_tx_ignore_fcs_0 : IN STD_LOGIC;
    ctl_tx_ignore_fcs_1 : IN STD_LOGIC;
    ctl_tx_ignore_fcs_2 : IN STD_LOGIC;
    ctl_tx_ignore_fcs_3 : IN STD_LOGIC;
    ctl_tx_test_pattern_0 : IN STD_LOGIC;
    ctl_tx_test_pattern_1 : IN STD_LOGIC;
    ctl_tx_test_pattern_2 : IN STD_LOGIC;
    ctl_tx_test_pattern_3 : IN STD_LOGIC;
    ctl_tx_test_pattern_enable_0 : IN STD_LOGIC;
    ctl_tx_test_pattern_enable_1 : IN STD_LOGIC;
    ctl_tx_test_pattern_enable_2 : IN STD_LOGIC;
    ctl_tx_test_pattern_enable_3 : IN STD_LOGIC;
    ctl_tx_test_pattern_select_0 : IN STD_LOGIC;
    ctl_tx_test_pattern_select_1 : IN STD_LOGIC;
    ctl_tx_test_pattern_select_2 : IN STD_LOGIC;
    ctl_tx_test_pattern_select_3 : IN STD_LOGIC;
    ctl_tx_data_pattern_select_0 : IN STD_LOGIC;
    ctl_tx_data_pattern_select_1 : IN STD_LOGIC;
    ctl_tx_data_pattern_select_2 : IN STD_LOGIC;
    ctl_tx_data_pattern_select_3 : IN STD_LOGIC;
    ctl_tx_test_pattern_seed_a_0 : IN STD_LOGIC_VECTOR(57 DOWNTO 0);
    ctl_tx_test_pattern_seed_a_1 : IN STD_LOGIC_VECTOR(57 DOWNTO 0);
    ctl_tx_test_pattern_seed_a_2 : IN STD_LOGIC_VECTOR(57 DOWNTO 0);
    ctl_tx_test_pattern_seed_a_3 : IN STD_LOGIC_VECTOR(57 DOWNTO 0);
    ctl_tx_test_pattern_seed_b_0 : IN STD_LOGIC_VECTOR(57 DOWNTO 0);
    ctl_tx_test_pattern_seed_b_1 : IN STD_LOGIC_VECTOR(57 DOWNTO 0);
    ctl_tx_test_pattern_seed_b_2 : IN STD_LOGIC_VECTOR(57 DOWNTO 0);
    ctl_tx_test_pattern_seed_b_3 : IN STD_LOGIC_VECTOR(57 DOWNTO 0);
    ctl_tx_ipg_value_0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    ctl_tx_ipg_value_1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    ctl_tx_ipg_value_2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    ctl_tx_ipg_value_3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    ctl_tx_custom_preamble_enable_0 : IN STD_LOGIC;
    ctl_tx_custom_preamble_enable_1 : IN STD_LOGIC;
    ctl_tx_custom_preamble_enable_2 : IN STD_LOGIC;
    ctl_tx_custom_preamble_enable_3 : IN STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : xxv_ethernet_0
  PORT MAP (
    rx_core_clk_0 => rx_core_clk_0,
    rx_core_clk_1 => rx_core_clk_1,
    rx_core_clk_2 => rx_core_clk_2,
    rx_core_clk_3 => rx_core_clk_3,
    rx_serdes_clk_0 => rx_serdes_clk_0,
    rx_serdes_clk_1 => rx_serdes_clk_1,
    rx_serdes_clk_2 => rx_serdes_clk_2,
    rx_serdes_clk_3 => rx_serdes_clk_3,
    rx_serdes_reset_0 => rx_serdes_reset_0,
    rx_serdes_reset_1 => rx_serdes_reset_1,
    rx_serdes_reset_2 => rx_serdes_reset_2,
    rx_serdes_reset_3 => rx_serdes_reset_3,
    rxgearboxslip_in_0 => rxgearboxslip_in_0,
    rxgearboxslip_in_1 => rxgearboxslip_in_1,
    rxgearboxslip_in_2 => rxgearboxslip_in_2,
    rxgearboxslip_in_3 => rxgearboxslip_in_3,
    rxdatavalid_out_0 => rxdatavalid_out_0,
    rxdatavalid_out_1 => rxdatavalid_out_1,
    rxdatavalid_out_2 => rxdatavalid_out_2,
    rxdatavalid_out_3 => rxdatavalid_out_3,
    rxheader_out_0 => rxheader_out_0,
    rxheader_out_1 => rxheader_out_1,
    rxheader_out_2 => rxheader_out_2,
    rxheader_out_3 => rxheader_out_3,
    rxheadervalid_out_0 => rxheadervalid_out_0,
    rxheadervalid_out_1 => rxheadervalid_out_1,
    rxheadervalid_out_2 => rxheadervalid_out_2,
    rxheadervalid_out_3 => rxheadervalid_out_3,
    rx_serdes_data_out_0 => rx_serdes_data_out_0,
    rx_serdes_data_out_1 => rx_serdes_data_out_1,
    rx_serdes_data_out_2 => rx_serdes_data_out_2,
    rx_serdes_data_out_3 => rx_serdes_data_out_3,
    tx_serdes_data_in_0 => tx_serdes_data_in_0,
    tx_serdes_data_in_1 => tx_serdes_data_in_1,
    tx_serdes_data_in_2 => tx_serdes_data_in_2,
    tx_serdes_data_in_3 => tx_serdes_data_in_3,
    txheader_in_0 => txheader_in_0,
    txheader_in_1 => txheader_in_1,
    txheader_in_2 => txheader_in_2,
    txheader_in_3 => txheader_in_3,
    tx_core_clk_0 => tx_core_clk_0,
    tx_core_clk_1 => tx_core_clk_1,
    tx_core_clk_2 => tx_core_clk_2,
    tx_core_clk_3 => tx_core_clk_3,
    rx_reset_0 => rx_reset_0,
    rx_reset_1 => rx_reset_1,
    rx_reset_2 => rx_reset_2,
    rx_reset_3 => rx_reset_3,
    rx_axis_tvalid_0 => rx_axis_tvalid_0,
    rx_axis_tvalid_1 => rx_axis_tvalid_1,
    rx_axis_tvalid_2 => rx_axis_tvalid_2,
    rx_axis_tvalid_3 => rx_axis_tvalid_3,
    rx_axis_tdata_0 => rx_axis_tdata_0,
    rx_axis_tdata_1 => rx_axis_tdata_1,
    rx_axis_tdata_2 => rx_axis_tdata_2,
    rx_axis_tdata_3 => rx_axis_tdata_3,
    rx_axis_tlast_0 => rx_axis_tlast_0,
    rx_axis_tlast_1 => rx_axis_tlast_1,
    rx_axis_tlast_2 => rx_axis_tlast_2,
    rx_axis_tlast_3 => rx_axis_tlast_3,
    rx_axis_tkeep_0 => rx_axis_tkeep_0,
    rx_axis_tkeep_1 => rx_axis_tkeep_1,
    rx_axis_tkeep_2 => rx_axis_tkeep_2,
    rx_axis_tkeep_3 => rx_axis_tkeep_3,
    rx_axis_tuser_0 => rx_axis_tuser_0,
    rx_axis_tuser_1 => rx_axis_tuser_1,
    rx_axis_tuser_2 => rx_axis_tuser_2,
    rx_axis_tuser_3 => rx_axis_tuser_3,
    ctl_rx_enable_0 => ctl_rx_enable_0,
    ctl_rx_enable_1 => ctl_rx_enable_1,
    ctl_rx_enable_2 => ctl_rx_enable_2,
    ctl_rx_enable_3 => ctl_rx_enable_3,
    ctl_rx_check_preamble_0 => ctl_rx_check_preamble_0,
    ctl_rx_check_preamble_1 => ctl_rx_check_preamble_1,
    ctl_rx_check_preamble_2 => ctl_rx_check_preamble_2,
    ctl_rx_check_preamble_3 => ctl_rx_check_preamble_3,
    ctl_rx_check_sfd_0 => ctl_rx_check_sfd_0,
    ctl_rx_check_sfd_1 => ctl_rx_check_sfd_1,
    ctl_rx_check_sfd_2 => ctl_rx_check_sfd_2,
    ctl_rx_check_sfd_3 => ctl_rx_check_sfd_3,
    ctl_rx_force_resync_0 => ctl_rx_force_resync_0,
    ctl_rx_force_resync_1 => ctl_rx_force_resync_1,
    ctl_rx_force_resync_2 => ctl_rx_force_resync_2,
    ctl_rx_force_resync_3 => ctl_rx_force_resync_3,
    ctl_rx_delete_fcs_0 => ctl_rx_delete_fcs_0,
    ctl_rx_delete_fcs_1 => ctl_rx_delete_fcs_1,
    ctl_rx_delete_fcs_2 => ctl_rx_delete_fcs_2,
    ctl_rx_delete_fcs_3 => ctl_rx_delete_fcs_3,
    ctl_rx_ignore_fcs_0 => ctl_rx_ignore_fcs_0,
    ctl_rx_ignore_fcs_1 => ctl_rx_ignore_fcs_1,
    ctl_rx_ignore_fcs_2 => ctl_rx_ignore_fcs_2,
    ctl_rx_ignore_fcs_3 => ctl_rx_ignore_fcs_3,
    ctl_rx_max_packet_len_0 => ctl_rx_max_packet_len_0,
    ctl_rx_max_packet_len_1 => ctl_rx_max_packet_len_1,
    ctl_rx_max_packet_len_2 => ctl_rx_max_packet_len_2,
    ctl_rx_max_packet_len_3 => ctl_rx_max_packet_len_3,
    ctl_rx_min_packet_len_0 => ctl_rx_min_packet_len_0,
    ctl_rx_min_packet_len_1 => ctl_rx_min_packet_len_1,
    ctl_rx_min_packet_len_2 => ctl_rx_min_packet_len_2,
    ctl_rx_min_packet_len_3 => ctl_rx_min_packet_len_3,
    ctl_rx_process_lfi_0 => ctl_rx_process_lfi_0,
    ctl_rx_process_lfi_1 => ctl_rx_process_lfi_1,
    ctl_rx_process_lfi_2 => ctl_rx_process_lfi_2,
    ctl_rx_process_lfi_3 => ctl_rx_process_lfi_3,
    ctl_rx_test_pattern_0 => ctl_rx_test_pattern_0,
    ctl_rx_test_pattern_1 => ctl_rx_test_pattern_1,
    ctl_rx_test_pattern_2 => ctl_rx_test_pattern_2,
    ctl_rx_test_pattern_3 => ctl_rx_test_pattern_3,
    ctl_rx_data_pattern_select_0 => ctl_rx_data_pattern_select_0,
    ctl_rx_data_pattern_select_1 => ctl_rx_data_pattern_select_1,
    ctl_rx_data_pattern_select_2 => ctl_rx_data_pattern_select_2,
    ctl_rx_data_pattern_select_3 => ctl_rx_data_pattern_select_3,
    ctl_rx_test_pattern_enable_0 => ctl_rx_test_pattern_enable_0,
    ctl_rx_test_pattern_enable_1 => ctl_rx_test_pattern_enable_1,
    ctl_rx_test_pattern_enable_2 => ctl_rx_test_pattern_enable_2,
    ctl_rx_test_pattern_enable_3 => ctl_rx_test_pattern_enable_3,
    ctl_rx_custom_preamble_enable_0 => ctl_rx_custom_preamble_enable_0,
    ctl_rx_custom_preamble_enable_1 => ctl_rx_custom_preamble_enable_1,
    ctl_rx_custom_preamble_enable_2 => ctl_rx_custom_preamble_enable_2,
    ctl_rx_custom_preamble_enable_3 => ctl_rx_custom_preamble_enable_3,
    stat_rx_framing_err_0 => stat_rx_framing_err_0,
    stat_rx_framing_err_1 => stat_rx_framing_err_1,
    stat_rx_framing_err_2 => stat_rx_framing_err_2,
    stat_rx_framing_err_3 => stat_rx_framing_err_3,
    stat_rx_framing_err_valid_0 => stat_rx_framing_err_valid_0,
    stat_rx_framing_err_valid_1 => stat_rx_framing_err_valid_1,
    stat_rx_framing_err_valid_2 => stat_rx_framing_err_valid_2,
    stat_rx_framing_err_valid_3 => stat_rx_framing_err_valid_3,
    stat_rx_local_fault_0 => stat_rx_local_fault_0,
    stat_rx_local_fault_1 => stat_rx_local_fault_1,
    stat_rx_local_fault_2 => stat_rx_local_fault_2,
    stat_rx_local_fault_3 => stat_rx_local_fault_3,
    stat_rx_block_lock_0 => stat_rx_block_lock_0,
    stat_rx_block_lock_1 => stat_rx_block_lock_1,
    stat_rx_block_lock_2 => stat_rx_block_lock_2,
    stat_rx_block_lock_3 => stat_rx_block_lock_3,
    stat_rx_valid_ctrl_code_0 => stat_rx_valid_ctrl_code_0,
    stat_rx_valid_ctrl_code_1 => stat_rx_valid_ctrl_code_1,
    stat_rx_valid_ctrl_code_2 => stat_rx_valid_ctrl_code_2,
    stat_rx_valid_ctrl_code_3 => stat_rx_valid_ctrl_code_3,
    stat_rx_status_0 => stat_rx_status_0,
    stat_rx_status_1 => stat_rx_status_1,
    stat_rx_status_2 => stat_rx_status_2,
    stat_rx_status_3 => stat_rx_status_3,
    stat_rx_remote_fault_0 => stat_rx_remote_fault_0,
    stat_rx_remote_fault_1 => stat_rx_remote_fault_1,
    stat_rx_remote_fault_2 => stat_rx_remote_fault_2,
    stat_rx_remote_fault_3 => stat_rx_remote_fault_3,
    stat_rx_bad_fcs_0 => stat_rx_bad_fcs_0,
    stat_rx_bad_fcs_1 => stat_rx_bad_fcs_1,
    stat_rx_bad_fcs_2 => stat_rx_bad_fcs_2,
    stat_rx_bad_fcs_3 => stat_rx_bad_fcs_3,
    stat_rx_stomped_fcs_0 => stat_rx_stomped_fcs_0,
    stat_rx_stomped_fcs_1 => stat_rx_stomped_fcs_1,
    stat_rx_stomped_fcs_2 => stat_rx_stomped_fcs_2,
    stat_rx_stomped_fcs_3 => stat_rx_stomped_fcs_3,
    stat_rx_truncated_0 => stat_rx_truncated_0,
    stat_rx_truncated_1 => stat_rx_truncated_1,
    stat_rx_truncated_2 => stat_rx_truncated_2,
    stat_rx_truncated_3 => stat_rx_truncated_3,
    stat_rx_internal_local_fault_0 => stat_rx_internal_local_fault_0,
    stat_rx_internal_local_fault_1 => stat_rx_internal_local_fault_1,
    stat_rx_internal_local_fault_2 => stat_rx_internal_local_fault_2,
    stat_rx_internal_local_fault_3 => stat_rx_internal_local_fault_3,
    stat_rx_received_local_fault_0 => stat_rx_received_local_fault_0,
    stat_rx_received_local_fault_1 => stat_rx_received_local_fault_1,
    stat_rx_received_local_fault_2 => stat_rx_received_local_fault_2,
    stat_rx_received_local_fault_3 => stat_rx_received_local_fault_3,
    stat_rx_hi_ber_0 => stat_rx_hi_ber_0,
    stat_rx_hi_ber_1 => stat_rx_hi_ber_1,
    stat_rx_hi_ber_2 => stat_rx_hi_ber_2,
    stat_rx_hi_ber_3 => stat_rx_hi_ber_3,
    stat_rx_got_signal_os_0 => stat_rx_got_signal_os_0,
    stat_rx_got_signal_os_1 => stat_rx_got_signal_os_1,
    stat_rx_got_signal_os_2 => stat_rx_got_signal_os_2,
    stat_rx_got_signal_os_3 => stat_rx_got_signal_os_3,
    stat_rx_test_pattern_mismatch_0 => stat_rx_test_pattern_mismatch_0,
    stat_rx_test_pattern_mismatch_1 => stat_rx_test_pattern_mismatch_1,
    stat_rx_test_pattern_mismatch_2 => stat_rx_test_pattern_mismatch_2,
    stat_rx_test_pattern_mismatch_3 => stat_rx_test_pattern_mismatch_3,
    stat_rx_total_bytes_0 => stat_rx_total_bytes_0,
    stat_rx_total_bytes_1 => stat_rx_total_bytes_1,
    stat_rx_total_bytes_2 => stat_rx_total_bytes_2,
    stat_rx_total_bytes_3 => stat_rx_total_bytes_3,
    stat_rx_total_packets_0 => stat_rx_total_packets_0,
    stat_rx_total_packets_1 => stat_rx_total_packets_1,
    stat_rx_total_packets_2 => stat_rx_total_packets_2,
    stat_rx_total_packets_3 => stat_rx_total_packets_3,
    stat_rx_total_good_bytes_0 => stat_rx_total_good_bytes_0,
    stat_rx_total_good_bytes_1 => stat_rx_total_good_bytes_1,
    stat_rx_total_good_bytes_2 => stat_rx_total_good_bytes_2,
    stat_rx_total_good_bytes_3 => stat_rx_total_good_bytes_3,
    stat_rx_total_good_packets_0 => stat_rx_total_good_packets_0,
    stat_rx_total_good_packets_1 => stat_rx_total_good_packets_1,
    stat_rx_total_good_packets_2 => stat_rx_total_good_packets_2,
    stat_rx_total_good_packets_3 => stat_rx_total_good_packets_3,
    stat_rx_packet_bad_fcs_0 => stat_rx_packet_bad_fcs_0,
    stat_rx_packet_bad_fcs_1 => stat_rx_packet_bad_fcs_1,
    stat_rx_packet_bad_fcs_2 => stat_rx_packet_bad_fcs_2,
    stat_rx_packet_bad_fcs_3 => stat_rx_packet_bad_fcs_3,
    stat_rx_packet_64_bytes_0 => stat_rx_packet_64_bytes_0,
    stat_rx_packet_64_bytes_1 => stat_rx_packet_64_bytes_1,
    stat_rx_packet_64_bytes_2 => stat_rx_packet_64_bytes_2,
    stat_rx_packet_64_bytes_3 => stat_rx_packet_64_bytes_3,
    stat_rx_packet_65_127_bytes_0 => stat_rx_packet_65_127_bytes_0,
    stat_rx_packet_65_127_bytes_1 => stat_rx_packet_65_127_bytes_1,
    stat_rx_packet_65_127_bytes_2 => stat_rx_packet_65_127_bytes_2,
    stat_rx_packet_65_127_bytes_3 => stat_rx_packet_65_127_bytes_3,
    stat_rx_packet_128_255_bytes_0 => stat_rx_packet_128_255_bytes_0,
    stat_rx_packet_128_255_bytes_1 => stat_rx_packet_128_255_bytes_1,
    stat_rx_packet_128_255_bytes_2 => stat_rx_packet_128_255_bytes_2,
    stat_rx_packet_128_255_bytes_3 => stat_rx_packet_128_255_bytes_3,
    stat_rx_packet_256_511_bytes_0 => stat_rx_packet_256_511_bytes_0,
    stat_rx_packet_256_511_bytes_1 => stat_rx_packet_256_511_bytes_1,
    stat_rx_packet_256_511_bytes_2 => stat_rx_packet_256_511_bytes_2,
    stat_rx_packet_256_511_bytes_3 => stat_rx_packet_256_511_bytes_3,
    stat_rx_packet_512_1023_bytes_0 => stat_rx_packet_512_1023_bytes_0,
    stat_rx_packet_512_1023_bytes_1 => stat_rx_packet_512_1023_bytes_1,
    stat_rx_packet_512_1023_bytes_2 => stat_rx_packet_512_1023_bytes_2,
    stat_rx_packet_512_1023_bytes_3 => stat_rx_packet_512_1023_bytes_3,
    stat_rx_packet_1024_1518_bytes_0 => stat_rx_packet_1024_1518_bytes_0,
    stat_rx_packet_1024_1518_bytes_1 => stat_rx_packet_1024_1518_bytes_1,
    stat_rx_packet_1024_1518_bytes_2 => stat_rx_packet_1024_1518_bytes_2,
    stat_rx_packet_1024_1518_bytes_3 => stat_rx_packet_1024_1518_bytes_3,
    stat_rx_packet_1519_1522_bytes_0 => stat_rx_packet_1519_1522_bytes_0,
    stat_rx_packet_1519_1522_bytes_1 => stat_rx_packet_1519_1522_bytes_1,
    stat_rx_packet_1519_1522_bytes_2 => stat_rx_packet_1519_1522_bytes_2,
    stat_rx_packet_1519_1522_bytes_3 => stat_rx_packet_1519_1522_bytes_3,
    stat_rx_packet_1523_1548_bytes_0 => stat_rx_packet_1523_1548_bytes_0,
    stat_rx_packet_1523_1548_bytes_1 => stat_rx_packet_1523_1548_bytes_1,
    stat_rx_packet_1523_1548_bytes_2 => stat_rx_packet_1523_1548_bytes_2,
    stat_rx_packet_1523_1548_bytes_3 => stat_rx_packet_1523_1548_bytes_3,
    stat_rx_packet_1549_2047_bytes_0 => stat_rx_packet_1549_2047_bytes_0,
    stat_rx_packet_1549_2047_bytes_1 => stat_rx_packet_1549_2047_bytes_1,
    stat_rx_packet_1549_2047_bytes_2 => stat_rx_packet_1549_2047_bytes_2,
    stat_rx_packet_1549_2047_bytes_3 => stat_rx_packet_1549_2047_bytes_3,
    stat_rx_packet_2048_4095_bytes_0 => stat_rx_packet_2048_4095_bytes_0,
    stat_rx_packet_2048_4095_bytes_1 => stat_rx_packet_2048_4095_bytes_1,
    stat_rx_packet_2048_4095_bytes_2 => stat_rx_packet_2048_4095_bytes_2,
    stat_rx_packet_2048_4095_bytes_3 => stat_rx_packet_2048_4095_bytes_3,
    stat_rx_packet_4096_8191_bytes_0 => stat_rx_packet_4096_8191_bytes_0,
    stat_rx_packet_4096_8191_bytes_1 => stat_rx_packet_4096_8191_bytes_1,
    stat_rx_packet_4096_8191_bytes_2 => stat_rx_packet_4096_8191_bytes_2,
    stat_rx_packet_4096_8191_bytes_3 => stat_rx_packet_4096_8191_bytes_3,
    stat_rx_packet_8192_9215_bytes_0 => stat_rx_packet_8192_9215_bytes_0,
    stat_rx_packet_8192_9215_bytes_1 => stat_rx_packet_8192_9215_bytes_1,
    stat_rx_packet_8192_9215_bytes_2 => stat_rx_packet_8192_9215_bytes_2,
    stat_rx_packet_8192_9215_bytes_3 => stat_rx_packet_8192_9215_bytes_3,
    stat_rx_packet_small_0 => stat_rx_packet_small_0,
    stat_rx_packet_small_1 => stat_rx_packet_small_1,
    stat_rx_packet_small_2 => stat_rx_packet_small_2,
    stat_rx_packet_small_3 => stat_rx_packet_small_3,
    stat_rx_packet_large_0 => stat_rx_packet_large_0,
    stat_rx_packet_large_1 => stat_rx_packet_large_1,
    stat_rx_packet_large_2 => stat_rx_packet_large_2,
    stat_rx_packet_large_3 => stat_rx_packet_large_3,
    stat_rx_unicast_0 => stat_rx_unicast_0,
    stat_rx_unicast_1 => stat_rx_unicast_1,
    stat_rx_unicast_2 => stat_rx_unicast_2,
    stat_rx_unicast_3 => stat_rx_unicast_3,
    stat_rx_multicast_0 => stat_rx_multicast_0,
    stat_rx_multicast_1 => stat_rx_multicast_1,
    stat_rx_multicast_2 => stat_rx_multicast_2,
    stat_rx_multicast_3 => stat_rx_multicast_3,
    stat_rx_broadcast_0 => stat_rx_broadcast_0,
    stat_rx_broadcast_1 => stat_rx_broadcast_1,
    stat_rx_broadcast_2 => stat_rx_broadcast_2,
    stat_rx_broadcast_3 => stat_rx_broadcast_3,
    stat_rx_oversize_0 => stat_rx_oversize_0,
    stat_rx_oversize_1 => stat_rx_oversize_1,
    stat_rx_oversize_2 => stat_rx_oversize_2,
    stat_rx_oversize_3 => stat_rx_oversize_3,
    stat_rx_toolong_0 => stat_rx_toolong_0,
    stat_rx_toolong_1 => stat_rx_toolong_1,
    stat_rx_toolong_2 => stat_rx_toolong_2,
    stat_rx_toolong_3 => stat_rx_toolong_3,
    stat_rx_undersize_0 => stat_rx_undersize_0,
    stat_rx_undersize_1 => stat_rx_undersize_1,
    stat_rx_undersize_2 => stat_rx_undersize_2,
    stat_rx_undersize_3 => stat_rx_undersize_3,
    stat_rx_fragment_0 => stat_rx_fragment_0,
    stat_rx_fragment_1 => stat_rx_fragment_1,
    stat_rx_fragment_2 => stat_rx_fragment_2,
    stat_rx_fragment_3 => stat_rx_fragment_3,
    stat_rx_vlan_0 => stat_rx_vlan_0,
    stat_rx_vlan_1 => stat_rx_vlan_1,
    stat_rx_vlan_2 => stat_rx_vlan_2,
    stat_rx_vlan_3 => stat_rx_vlan_3,
    stat_rx_inrangeerr_0 => stat_rx_inrangeerr_0,
    stat_rx_inrangeerr_1 => stat_rx_inrangeerr_1,
    stat_rx_inrangeerr_2 => stat_rx_inrangeerr_2,
    stat_rx_inrangeerr_3 => stat_rx_inrangeerr_3,
    stat_rx_jabber_0 => stat_rx_jabber_0,
    stat_rx_jabber_1 => stat_rx_jabber_1,
    stat_rx_jabber_2 => stat_rx_jabber_2,
    stat_rx_jabber_3 => stat_rx_jabber_3,
    stat_rx_bad_code_0 => stat_rx_bad_code_0,
    stat_rx_bad_code_1 => stat_rx_bad_code_1,
    stat_rx_bad_code_2 => stat_rx_bad_code_2,
    stat_rx_bad_code_3 => stat_rx_bad_code_3,
    stat_rx_bad_sfd_0 => stat_rx_bad_sfd_0,
    stat_rx_bad_sfd_1 => stat_rx_bad_sfd_1,
    stat_rx_bad_sfd_2 => stat_rx_bad_sfd_2,
    stat_rx_bad_sfd_3 => stat_rx_bad_sfd_3,
    stat_rx_bad_preamble_0 => stat_rx_bad_preamble_0,
    stat_rx_bad_preamble_1 => stat_rx_bad_preamble_1,
    stat_rx_bad_preamble_2 => stat_rx_bad_preamble_2,
    stat_rx_bad_preamble_3 => stat_rx_bad_preamble_3,
    tx_reset_0 => tx_reset_0,
    tx_reset_1 => tx_reset_1,
    tx_reset_2 => tx_reset_2,
    tx_reset_3 => tx_reset_3,
    tx_axis_tready_0 => tx_axis_tready_0,
    tx_axis_tready_1 => tx_axis_tready_1,
    tx_axis_tready_2 => tx_axis_tready_2,
    tx_axis_tready_3 => tx_axis_tready_3,
    tx_axis_tvalid_0 => tx_axis_tvalid_0,
    tx_axis_tvalid_1 => tx_axis_tvalid_1,
    tx_axis_tvalid_2 => tx_axis_tvalid_2,
    tx_axis_tvalid_3 => tx_axis_tvalid_3,
    tx_axis_tdata_0 => tx_axis_tdata_0,
    tx_axis_tdata_1 => tx_axis_tdata_1,
    tx_axis_tdata_2 => tx_axis_tdata_2,
    tx_axis_tdata_3 => tx_axis_tdata_3,
    tx_axis_tlast_0 => tx_axis_tlast_0,
    tx_axis_tlast_1 => tx_axis_tlast_1,
    tx_axis_tlast_2 => tx_axis_tlast_2,
    tx_axis_tlast_3 => tx_axis_tlast_3,
    tx_axis_tkeep_0 => tx_axis_tkeep_0,
    tx_axis_tkeep_1 => tx_axis_tkeep_1,
    tx_axis_tkeep_2 => tx_axis_tkeep_2,
    tx_axis_tkeep_3 => tx_axis_tkeep_3,
    tx_axis_tuser_0 => tx_axis_tuser_0,
    tx_axis_tuser_1 => tx_axis_tuser_1,
    tx_axis_tuser_2 => tx_axis_tuser_2,
    tx_axis_tuser_3 => tx_axis_tuser_3,
    tx_unfout_0 => tx_unfout_0,
    tx_unfout_1 => tx_unfout_1,
    tx_unfout_2 => tx_unfout_2,
    tx_unfout_3 => tx_unfout_3,
    tx_preamblein_0 => tx_preamblein_0,
    rx_preambleout_0 => rx_preambleout_0,
    tx_preamblein_1 => tx_preamblein_1,
    rx_preambleout_1 => rx_preambleout_1,
    tx_preamblein_2 => tx_preamblein_2,
    rx_preambleout_2 => rx_preambleout_2,
    tx_preamblein_3 => tx_preamblein_3,
    rx_preambleout_3 => rx_preambleout_3,
    stat_tx_local_fault_0 => stat_tx_local_fault_0,
    stat_tx_local_fault_1 => stat_tx_local_fault_1,
    stat_tx_local_fault_2 => stat_tx_local_fault_2,
    stat_tx_local_fault_3 => stat_tx_local_fault_3,
    stat_tx_total_bytes_0 => stat_tx_total_bytes_0,
    stat_tx_total_bytes_1 => stat_tx_total_bytes_1,
    stat_tx_total_bytes_2 => stat_tx_total_bytes_2,
    stat_tx_total_bytes_3 => stat_tx_total_bytes_3,
    stat_tx_total_packets_0 => stat_tx_total_packets_0,
    stat_tx_total_packets_1 => stat_tx_total_packets_1,
    stat_tx_total_packets_2 => stat_tx_total_packets_2,
    stat_tx_total_packets_3 => stat_tx_total_packets_3,
    stat_tx_total_good_bytes_0 => stat_tx_total_good_bytes_0,
    stat_tx_total_good_bytes_1 => stat_tx_total_good_bytes_1,
    stat_tx_total_good_bytes_2 => stat_tx_total_good_bytes_2,
    stat_tx_total_good_bytes_3 => stat_tx_total_good_bytes_3,
    stat_tx_total_good_packets_0 => stat_tx_total_good_packets_0,
    stat_tx_total_good_packets_1 => stat_tx_total_good_packets_1,
    stat_tx_total_good_packets_2 => stat_tx_total_good_packets_2,
    stat_tx_total_good_packets_3 => stat_tx_total_good_packets_3,
    stat_tx_bad_fcs_0 => stat_tx_bad_fcs_0,
    stat_tx_bad_fcs_1 => stat_tx_bad_fcs_1,
    stat_tx_bad_fcs_2 => stat_tx_bad_fcs_2,
    stat_tx_bad_fcs_3 => stat_tx_bad_fcs_3,
    stat_tx_packet_64_bytes_0 => stat_tx_packet_64_bytes_0,
    stat_tx_packet_64_bytes_1 => stat_tx_packet_64_bytes_1,
    stat_tx_packet_64_bytes_2 => stat_tx_packet_64_bytes_2,
    stat_tx_packet_64_bytes_3 => stat_tx_packet_64_bytes_3,
    stat_tx_packet_65_127_bytes_0 => stat_tx_packet_65_127_bytes_0,
    stat_tx_packet_65_127_bytes_1 => stat_tx_packet_65_127_bytes_1,
    stat_tx_packet_65_127_bytes_2 => stat_tx_packet_65_127_bytes_2,
    stat_tx_packet_65_127_bytes_3 => stat_tx_packet_65_127_bytes_3,
    stat_tx_packet_128_255_bytes_0 => stat_tx_packet_128_255_bytes_0,
    stat_tx_packet_128_255_bytes_1 => stat_tx_packet_128_255_bytes_1,
    stat_tx_packet_128_255_bytes_2 => stat_tx_packet_128_255_bytes_2,
    stat_tx_packet_128_255_bytes_3 => stat_tx_packet_128_255_bytes_3,
    stat_tx_packet_256_511_bytes_0 => stat_tx_packet_256_511_bytes_0,
    stat_tx_packet_256_511_bytes_1 => stat_tx_packet_256_511_bytes_1,
    stat_tx_packet_256_511_bytes_2 => stat_tx_packet_256_511_bytes_2,
    stat_tx_packet_256_511_bytes_3 => stat_tx_packet_256_511_bytes_3,
    stat_tx_packet_512_1023_bytes_0 => stat_tx_packet_512_1023_bytes_0,
    stat_tx_packet_512_1023_bytes_1 => stat_tx_packet_512_1023_bytes_1,
    stat_tx_packet_512_1023_bytes_2 => stat_tx_packet_512_1023_bytes_2,
    stat_tx_packet_512_1023_bytes_3 => stat_tx_packet_512_1023_bytes_3,
    stat_tx_packet_1024_1518_bytes_0 => stat_tx_packet_1024_1518_bytes_0,
    stat_tx_packet_1024_1518_bytes_1 => stat_tx_packet_1024_1518_bytes_1,
    stat_tx_packet_1024_1518_bytes_2 => stat_tx_packet_1024_1518_bytes_2,
    stat_tx_packet_1024_1518_bytes_3 => stat_tx_packet_1024_1518_bytes_3,
    stat_tx_packet_1519_1522_bytes_0 => stat_tx_packet_1519_1522_bytes_0,
    stat_tx_packet_1519_1522_bytes_1 => stat_tx_packet_1519_1522_bytes_1,
    stat_tx_packet_1519_1522_bytes_2 => stat_tx_packet_1519_1522_bytes_2,
    stat_tx_packet_1519_1522_bytes_3 => stat_tx_packet_1519_1522_bytes_3,
    stat_tx_packet_1523_1548_bytes_0 => stat_tx_packet_1523_1548_bytes_0,
    stat_tx_packet_1523_1548_bytes_1 => stat_tx_packet_1523_1548_bytes_1,
    stat_tx_packet_1523_1548_bytes_2 => stat_tx_packet_1523_1548_bytes_2,
    stat_tx_packet_1523_1548_bytes_3 => stat_tx_packet_1523_1548_bytes_3,
    stat_tx_packet_1549_2047_bytes_0 => stat_tx_packet_1549_2047_bytes_0,
    stat_tx_packet_1549_2047_bytes_1 => stat_tx_packet_1549_2047_bytes_1,
    stat_tx_packet_1549_2047_bytes_2 => stat_tx_packet_1549_2047_bytes_2,
    stat_tx_packet_1549_2047_bytes_3 => stat_tx_packet_1549_2047_bytes_3,
    stat_tx_packet_2048_4095_bytes_0 => stat_tx_packet_2048_4095_bytes_0,
    stat_tx_packet_2048_4095_bytes_1 => stat_tx_packet_2048_4095_bytes_1,
    stat_tx_packet_2048_4095_bytes_2 => stat_tx_packet_2048_4095_bytes_2,
    stat_tx_packet_2048_4095_bytes_3 => stat_tx_packet_2048_4095_bytes_3,
    stat_tx_packet_4096_8191_bytes_0 => stat_tx_packet_4096_8191_bytes_0,
    stat_tx_packet_4096_8191_bytes_1 => stat_tx_packet_4096_8191_bytes_1,
    stat_tx_packet_4096_8191_bytes_2 => stat_tx_packet_4096_8191_bytes_2,
    stat_tx_packet_4096_8191_bytes_3 => stat_tx_packet_4096_8191_bytes_3,
    stat_tx_packet_8192_9215_bytes_0 => stat_tx_packet_8192_9215_bytes_0,
    stat_tx_packet_8192_9215_bytes_1 => stat_tx_packet_8192_9215_bytes_1,
    stat_tx_packet_8192_9215_bytes_2 => stat_tx_packet_8192_9215_bytes_2,
    stat_tx_packet_8192_9215_bytes_3 => stat_tx_packet_8192_9215_bytes_3,
    stat_tx_packet_small_0 => stat_tx_packet_small_0,
    stat_tx_packet_small_1 => stat_tx_packet_small_1,
    stat_tx_packet_small_2 => stat_tx_packet_small_2,
    stat_tx_packet_small_3 => stat_tx_packet_small_3,
    stat_tx_packet_large_0 => stat_tx_packet_large_0,
    stat_tx_packet_large_1 => stat_tx_packet_large_1,
    stat_tx_packet_large_2 => stat_tx_packet_large_2,
    stat_tx_packet_large_3 => stat_tx_packet_large_3,
    stat_tx_unicast_0 => stat_tx_unicast_0,
    stat_tx_unicast_1 => stat_tx_unicast_1,
    stat_tx_unicast_2 => stat_tx_unicast_2,
    stat_tx_unicast_3 => stat_tx_unicast_3,
    stat_tx_multicast_0 => stat_tx_multicast_0,
    stat_tx_multicast_1 => stat_tx_multicast_1,
    stat_tx_multicast_2 => stat_tx_multicast_2,
    stat_tx_multicast_3 => stat_tx_multicast_3,
    stat_tx_broadcast_0 => stat_tx_broadcast_0,
    stat_tx_broadcast_1 => stat_tx_broadcast_1,
    stat_tx_broadcast_2 => stat_tx_broadcast_2,
    stat_tx_broadcast_3 => stat_tx_broadcast_3,
    stat_tx_vlan_0 => stat_tx_vlan_0,
    stat_tx_vlan_1 => stat_tx_vlan_1,
    stat_tx_vlan_2 => stat_tx_vlan_2,
    stat_tx_vlan_3 => stat_tx_vlan_3,
    stat_tx_frame_error_0 => stat_tx_frame_error_0,
    stat_tx_frame_error_1 => stat_tx_frame_error_1,
    stat_tx_frame_error_2 => stat_tx_frame_error_2,
    stat_tx_frame_error_3 => stat_tx_frame_error_3,
    ctl_tx_enable_0 => ctl_tx_enable_0,
    ctl_tx_enable_1 => ctl_tx_enable_1,
    ctl_tx_enable_2 => ctl_tx_enable_2,
    ctl_tx_enable_3 => ctl_tx_enable_3,
    ctl_tx_send_rfi_0 => ctl_tx_send_rfi_0,
    ctl_tx_send_rfi_1 => ctl_tx_send_rfi_1,
    ctl_tx_send_rfi_2 => ctl_tx_send_rfi_2,
    ctl_tx_send_rfi_3 => ctl_tx_send_rfi_3,
    ctl_tx_send_lfi_0 => ctl_tx_send_lfi_0,
    ctl_tx_send_lfi_1 => ctl_tx_send_lfi_1,
    ctl_tx_send_lfi_2 => ctl_tx_send_lfi_2,
    ctl_tx_send_lfi_3 => ctl_tx_send_lfi_3,
    ctl_tx_send_idle_0 => ctl_tx_send_idle_0,
    ctl_tx_send_idle_1 => ctl_tx_send_idle_1,
    ctl_tx_send_idle_2 => ctl_tx_send_idle_2,
    ctl_tx_send_idle_3 => ctl_tx_send_idle_3,
    ctl_tx_fcs_ins_enable_0 => ctl_tx_fcs_ins_enable_0,
    ctl_tx_fcs_ins_enable_1 => ctl_tx_fcs_ins_enable_1,
    ctl_tx_fcs_ins_enable_2 => ctl_tx_fcs_ins_enable_2,
    ctl_tx_fcs_ins_enable_3 => ctl_tx_fcs_ins_enable_3,
    ctl_tx_ignore_fcs_0 => ctl_tx_ignore_fcs_0,
    ctl_tx_ignore_fcs_1 => ctl_tx_ignore_fcs_1,
    ctl_tx_ignore_fcs_2 => ctl_tx_ignore_fcs_2,
    ctl_tx_ignore_fcs_3 => ctl_tx_ignore_fcs_3,
    ctl_tx_test_pattern_0 => ctl_tx_test_pattern_0,
    ctl_tx_test_pattern_1 => ctl_tx_test_pattern_1,
    ctl_tx_test_pattern_2 => ctl_tx_test_pattern_2,
    ctl_tx_test_pattern_3 => ctl_tx_test_pattern_3,
    ctl_tx_test_pattern_enable_0 => ctl_tx_test_pattern_enable_0,
    ctl_tx_test_pattern_enable_1 => ctl_tx_test_pattern_enable_1,
    ctl_tx_test_pattern_enable_2 => ctl_tx_test_pattern_enable_2,
    ctl_tx_test_pattern_enable_3 => ctl_tx_test_pattern_enable_3,
    ctl_tx_test_pattern_select_0 => ctl_tx_test_pattern_select_0,
    ctl_tx_test_pattern_select_1 => ctl_tx_test_pattern_select_1,
    ctl_tx_test_pattern_select_2 => ctl_tx_test_pattern_select_2,
    ctl_tx_test_pattern_select_3 => ctl_tx_test_pattern_select_3,
    ctl_tx_data_pattern_select_0 => ctl_tx_data_pattern_select_0,
    ctl_tx_data_pattern_select_1 => ctl_tx_data_pattern_select_1,
    ctl_tx_data_pattern_select_2 => ctl_tx_data_pattern_select_2,
    ctl_tx_data_pattern_select_3 => ctl_tx_data_pattern_select_3,
    ctl_tx_test_pattern_seed_a_0 => ctl_tx_test_pattern_seed_a_0,
    ctl_tx_test_pattern_seed_a_1 => ctl_tx_test_pattern_seed_a_1,
    ctl_tx_test_pattern_seed_a_2 => ctl_tx_test_pattern_seed_a_2,
    ctl_tx_test_pattern_seed_a_3 => ctl_tx_test_pattern_seed_a_3,
    ctl_tx_test_pattern_seed_b_0 => ctl_tx_test_pattern_seed_b_0,
    ctl_tx_test_pattern_seed_b_1 => ctl_tx_test_pattern_seed_b_1,
    ctl_tx_test_pattern_seed_b_2 => ctl_tx_test_pattern_seed_b_2,
    ctl_tx_test_pattern_seed_b_3 => ctl_tx_test_pattern_seed_b_3,
    ctl_tx_ipg_value_0 => ctl_tx_ipg_value_0,
    ctl_tx_ipg_value_1 => ctl_tx_ipg_value_1,
    ctl_tx_ipg_value_2 => ctl_tx_ipg_value_2,
    ctl_tx_ipg_value_3 => ctl_tx_ipg_value_3,
    ctl_tx_custom_preamble_enable_0 => ctl_tx_custom_preamble_enable_0,
    ctl_tx_custom_preamble_enable_1 => ctl_tx_custom_preamble_enable_1,
    ctl_tx_custom_preamble_enable_2 => ctl_tx_custom_preamble_enable_2,
    ctl_tx_custom_preamble_enable_3 => ctl_tx_custom_preamble_enable_3
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file xxv_ethernet_0.vhd when simulating
-- the core, xxv_ethernet_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

