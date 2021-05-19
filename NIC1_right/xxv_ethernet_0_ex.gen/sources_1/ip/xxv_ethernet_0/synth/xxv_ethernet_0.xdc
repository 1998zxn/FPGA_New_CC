## ------------------------------------------------------------------------------
##   (c) Copyright 2020-2021 Xilinx, Inc. All rights reserved.
## 
##   This file contains confidential and proprietary information
##   of Xilinx, Inc. and is protected under U.S. and
##   international copyright and other intellectual property
##   laws.
## 
##   DISCLAIMER
##   This disclaimer is not a license and does not grant any
##   rights to the materials distributed herewith. Except as
##   otherwise provided in a valid license issued to you by
##   Xilinx, and to the maximum extent permitted by applicable
##   law: (1) THESE MATERIALS ARE MADE AVAILABLE \"AS IS\" AND
##   WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
##   AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
##   BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
##   INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
##   (2) Xilinx shall not be liable (whether in contract or tort,
##   including negligence, or under any other theory of
##   liability) for any loss or damage of any kind or nature
##   related to, arising under or in connection with these
##   materials, including for any direct, or any indirect,
##   special, incidental, or consequential loss or damage
##   (including loss of data, profits, goodwill, or any type of
##   loss or damage suffered as a result of any action brought
##   by a third party) even if such damage or loss was
##   reasonably foreseeable or Xilinx had been advised of the
##   possibility of the same.
## 
##   CRITICAL APPLICATIONS
##   Xilinx products are not designed or intended to be fail-
##   safe, or for use in any application requiring fail-safe
##   performance, such as life-support or safety devices or
##   systems, Class III medical devices, nuclear facilities,
##   applications related to the deployment of airbags, or any
##   other applications that could lead to death, personal
##   injury, or severe property or environmental damage
##   (individually and collectively, \"Critical
##   Applications\"). Customer assumes the sole risk and
##   liability of any use of Xilinx products in Critical
##   Applications, subject only to applicable laws and
##   regulations governing limitations on product liability.
## 
##   THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
##   PART OF THIS FILE AT ALL TIMES.
##
## 
##
##       Owner:          
##       Revision:       $Id: $
##                       $Author: $
##                       $DateTime: $
##                       $Change: $
##       Description:
##
##////////////////////////////////////////////////////////////////////////////
#------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------------------------------------
# CMAC core-level XDC file
# ----------------------------------------------------------------------------------------------------------------------


set_false_path -to [get_pins -leaf -of_objects [get_cells -hier *cdc_to* -filter {is_sequential}] -filter {NAME=~*core_cdc*/*/D}]











set_max_delay 10.000 -datapath_only -from [list [get_pins -of [get_cells -hier -filter { name =~ */i_pif_registers/stat*}] -filter { name =~ *C } ] [get_pins -of [get_cells -hier -filter {name =~ */*_accumulator/statsout_reg*}] -filter {name =~ *C}]]\
-to [get_pins -of [get_cells -hier -filter { name =~ */i_pif_registers/IP2Bus_Data_reg*}] -filter { name =~ *D } ] -quiet





## Waiver

create_waiver -internal -scope -quiet -type CDC -id {CDC-10} -user "xxv_ethernet" -desc "Combi logic will be not result in glitched and thus safe to ignore" -tags "11999"\
-from [list [get_pins -of [get_cells -hier -filter {name =~ */*ANLT_WRAPPER/stat_lt_training_reg*}] -filter {name =~ *C}]\
[get_pins -of [get_cells -hier -filter {name =~ */AN_TX_DATA_MUX/dataout_reg_reg*}] -filter {name =~ *C}]]\
-to [get_pins -of [get_cells -hier -filter {name =~ */*PCS_OP_ENABLE_RX_SYNC/meta_reg[0]*}] -filter {name =~ *D}] 

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "xxv_ethernet" -desc "This CDC-1 warning is waived as it is on the accumulator output to the axi4Lite read data bus output which changes only if a pm_tick is applied. This is safe to ignore" -tags "11999"\
-from [get_pins -of [get_cells -hier -filter {name =~ */*accumulator/statsout_reg[*]*}] -filter {name =~ *C}]\
-to [get_pins -of [get_cells -hier -filter {name =~ */i_pif_registers/IP2Bus_Data_reg[*]*}] -filter {name =~ *D}] 

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "xxv_ethernet" -desc "This CDC-1 warning is waived as it is on the accumulator output to the axi4Lite read data bus output which changes only if a pm_tick is applied. This is safe to ignore" -tags "11999"\
-from [get_pins -of [get_cells -hier -filter {name =~ */i_pif_registers/*_bytes_accumulator/statsout_reg[*]*}]\
-filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */i_pif_registers/IP2Bus_Data_reg[*]*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-4} -user "xxv_ethernet" -desc "This warning is waived as it is on the accumulator output to the axi4Lite read data bus output which changes only if a pm_tick is applied. This is safe to ignore" -tags "11999" \
-from [get_pins -of [get_cells -hier -filter {name =~ */i_pif_registers/i_stats_stat_rx_jabber_accumulator/statsout_reg*}]\
-filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */i_pif_registers/IP2Bus_Data_reg[*]*}] -filter {name =~ *D}] 

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "xxv_ethernet" -desc "This path is inside syncer and safe to ignore it" -tags "11999"\
-from [get_pins -of [get_cells -hier -filter {name =~ */i_AN_PCONTROL/i_SYNCER_BUS*/latched_inputs_reg[*]*}] -filter {name =~ *C}]\
-to [get_pins -of [get_cells -hier -filter {name =~ */i_AN_PCONTROL/i_SYNCER_BUS*/busout_reg[*]*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "xxv_ethernet" -desc "This CDC-1 warning is waived as it is on the status valid reg output to the axi4Lite read data bus output which changes only if a pm_tick is applied. This is safe to ignore" -tags "11999"\
-from [get_pins -of [get_cells -hier -filter {name =~ */i_pif_registers/stat_tx_pause_valid_lh_r_out_reg[*]*}] -filter {name =~ *C}]\
-to [get_pins -of [get_cells -hier -filter {name =~ */i_pif_registers/IP2Bus_Data_reg[*]*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "xxv_ethernet" -desc "This CDC-1 warning is waived as it is on the status reg output to the rx fifo read data bus output which changes only if a pm_tick is applied. This is safe to ignore" -tags "11999"\
-from [get_pins -of [get_cells -hier -filter {name =~ */i_pif_registers/i_reg_STAT_STATUS_REG1_clear_syncer/dataout_reg_reg*}] -filter {name =~ *C}]\
-to [get_pins -of [get_cells -hier -filter {name =~ */i_pif_registers/stat_rx_fifo_error_lh_r_out_reg[*]*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "xxv_ethernet" -desc "This CDC-1 warning is waived as it is on the status reg output to the stat rx fifo read data bus output which changes only if a pm_tick is applied. This is safe to ignore" -tags "11999"\
-from [get_pins -of [get_cells -hier -filter {name =~ */i_pif_registers/STAT_STATUS_REG1_clear_sync_d1_reg*}] -filter {name =~ *C}]\
-to [get_pins -of [get_cells -hier -filter {name =~ */i_pif_registers/stat_rx_fifo_error_lh_*}] -filter {name =~ *D}]


create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "xxv_ethernet" -desc "This CDC-1 warning is waived as it is  axi4Lite read data bus output which changes only if a pm_tick is applied. This is safe to ignore" -tags "11999"\
-to [get_pins -of [get_cells -hier -filter {name =~ */i_pif_registers/IP2Bus_Data_reg*}] -filter {name =~ *D}]



create_waiver -internal -scope -quiet -type METHODOLOGY -id {TIMING-11} -user "xxv_ethernet" -tags "11999" -desc "The core has 2 clock domains which can be asynchronous to each other, so we have CDC logic and appropriate XDC maxdelay/false_path constraints between them.  However, in this permutation these two clocks are wired to the same clock source, and we get the TIMING 11 warning (note that it can depend upon how the customer wires up the core, so this warning should be suppressed in the tools for IP cores)" -objects [get_pins  -of [get_cells -hier -filter {name =~ */i_pif_registers/*stat*}] -filter {name =~ *C}] -objects [get_pins -of [get_cells -hier -filter {name =~ */i_pif_registers/IP2Bus_Data_reg*}] -filter {name =~ *D}]


create_waiver -internal -scope -quiet -type CDC -id {CDC-11} -user "xxv_ethernet" -desc "The stat_rx_block_lock signal is synced with different syncers where fan-out is expected and so can be waived" -tags "11999" -from [get_pins -of [get_cells -hier -filter {name =~ */s_out_d4_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */s_out_d2_cdc_to_reg*}] -filter {name =~ *D}]


set_max_delay 10.000 -datapath_only -from [get_pins -of [get_cells -hier -filter { name =~ */i_pif_registers/ctl_rsfec_enable_r_reg*}] -filter { name =~ *C } ]\
-to [list [get_pins -of [get_cells -hier -filter { name =~ */rs_fo/bsb_rs_fec_ctrl_pre_reg*}] -filter { name =~ *D } ]\
[get_pins -of [get_cells -hier -filter { name =~ */i_TX_GBXSEQGEN_EXPRD/am_interval_cnt_reg*}] -filter { name =~ *R } ]\
[get_pins -of [get_cells -hier -filter { name =~ */i_TX_GBXSEQGEN_EXPRD/alignmarker_insert_reg*}] -filter { name =~ *D } ]\
[get_pins -of [get_cells -hier -filter { name =~ */asl_i/cwm_d1_reg*}] -filter { name =~ *D } ]  ] -quiet






      

