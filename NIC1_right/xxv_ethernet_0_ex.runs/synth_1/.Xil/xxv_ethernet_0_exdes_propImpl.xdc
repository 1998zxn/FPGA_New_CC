set_property SRC_FILE_INFO {cfile:d:/project/xxxx/my_subsystem_2/xxv_ethernet_0_ex/xxv_ethernet_0_ex.gen/sources_1/ip/xxv_ethernet_0_gt_3/synth/xxv_ethernet_0_gt_3.xdc rfile:../../../xxv_ethernet_0_ex.gen/sources_1/ip/xxv_ethernet_0_gt_3/synth/xxv_ethernet_0_gt_3.xdc id:1 order:EARLY scoped_inst:i_xxv_ethernet_0_core_support/i_xxv_ethernet_0_gt_wrapper_3/i_xxv_ethernet_0_gt_3/inst} [current_design]
set_property SRC_FILE_INFO {cfile:d:/project/xxxx/my_subsystem_2/xxv_ethernet_0_ex/xxv_ethernet_0_ex.gen/sources_1/ip/xxv_ethernet_0_gt_2/synth/xxv_ethernet_0_gt_2.xdc rfile:../../../xxv_ethernet_0_ex.gen/sources_1/ip/xxv_ethernet_0_gt_2/synth/xxv_ethernet_0_gt_2.xdc id:2 order:EARLY scoped_inst:i_xxv_ethernet_0_core_support/i_xxv_ethernet_0_gt_wrapper_2/i_xxv_ethernet_0_gt_2/inst} [current_design]
set_property SRC_FILE_INFO {cfile:d:/project/xxxx/my_subsystem_2/xxv_ethernet_0_ex/xxv_ethernet_0_ex.gen/sources_1/ip/xxv_ethernet_0_gt_1/synth/xxv_ethernet_0_gt_1.xdc rfile:../../../xxv_ethernet_0_ex.gen/sources_1/ip/xxv_ethernet_0_gt_1/synth/xxv_ethernet_0_gt_1.xdc id:3 order:EARLY scoped_inst:i_xxv_ethernet_0_core_support/i_xxv_ethernet_0_gt_wrapper_1/i_xxv_ethernet_0_gt_1/inst} [current_design]
set_property SRC_FILE_INFO {cfile:d:/project/xxxx/my_subsystem_2/xxv_ethernet_0_ex/xxv_ethernet_0_ex.gen/sources_1/ip/xxv_ethernet_0_gt_0/synth/xxv_ethernet_0_gt_0.xdc rfile:../../../xxv_ethernet_0_ex.gen/sources_1/ip/xxv_ethernet_0_gt_0/synth/xxv_ethernet_0_gt_0.xdc id:4 order:EARLY scoped_inst:i_xxv_ethernet_0_core_support/i_xxv_ethernet_0_gt_wrapper_0/i_xxv_ethernet_0_gt_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:d:/project/xxxx/my_subsystem_2/xxv_ethernet_0_ex/imports/xxv_ethernet_0_example_top.xdc rfile:../../../imports/xxv_ethernet_0_example_top.xdc id:5} [current_design]
current_instance i_xxv_ethernet_0_core_support/i_xxv_ethernet_0_gt_wrapper_3/i_xxv_ethernet_0_gt_3/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE3_CHANNEL_X0Y3 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[0].*gen_gthe3_channel_inst[0].GTHE3_CHANNEL_PRIM_INST}]
current_instance
current_instance i_xxv_ethernet_0_core_support/i_xxv_ethernet_0_gt_wrapper_2/i_xxv_ethernet_0_gt_2/inst
set_property src_info {type:SCOPED_XDC file:2 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE3_CHANNEL_X0Y2 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[0].*gen_gthe3_channel_inst[0].GTHE3_CHANNEL_PRIM_INST}]
current_instance
current_instance i_xxv_ethernet_0_core_support/i_xxv_ethernet_0_gt_wrapper_1/i_xxv_ethernet_0_gt_1/inst
set_property src_info {type:SCOPED_XDC file:3 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE3_CHANNEL_X0Y1 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[0].*gen_gthe3_channel_inst[0].GTHE3_CHANNEL_PRIM_INST}]
current_instance
current_instance i_xxv_ethernet_0_core_support/i_xxv_ethernet_0_gt_wrapper_0/i_xxv_ethernet_0_gt_0/inst
set_property src_info {type:SCOPED_XDC file:4 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE3_CHANNEL_X0Y0 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[0].*gen_gthe3_channel_inst[0].GTHE3_CHANNEL_PRIM_INST}]
current_instance
set_property src_info {type:XDC file:5 line:76 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN P6 [get_ports gt_refclk_p]
set_property src_info {type:XDC file:5 line:77 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN M2 [get_ports gt_rxp_in_0]
set_property src_info {type:XDC file:5 line:78 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN K2 [get_ports gt_rxp_in_1]
set_property src_info {type:XDC file:5 line:79 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN K2 [get_ports gt_rxp_in_2]
set_property src_info {type:XDC file:5 line:80 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN K2 [get_ports gt_rxp_in_3]
set_property src_info {type:XDC file:5 line:87 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T27 [get_ports sys_reset]
set_property src_info {type:XDC file:5 line:91 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AK17 [get_ports SYS_CLK_P]
set_property src_info {type:XDC file:5 line:92 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AK16 [get_ports SYS_CLK_N]
set_property src_info {type:XDC file:5 line:147 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay  10.000 -datapath_only -from [get_pins -of [get_cells -hier -filter { name =~ */pktgen_enable_int_reg*}] -filter { name =~ *C } ] -to [get_pins -of [get_cells -hier -filter { name =~ */*_sync_pkt_gen_enable/s_out_d2_cdc_to_reg*}] -filter { name =~ *D } ] -quiet
set_property src_info {type:XDC file:5 line:149 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay  10.000 -datapath_only -from [get_pins -of [get_cells -hier -filter { name =~ */i_RX_WD_ALIGN/align_status_reg[*]*}] -filter { name =~ *C } ] -to [get_pins -of [get_cells -hier -filter { name =~ */s_out_d2_cdc_to_reg*}] -filter { name =~ *D } ] -quiet
set_property src_info {type:XDC file:5 line:151 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -of [get_cells -hier -filter { name =~ */rx_errors_int_reg*}] -filter { name =~ *C } ] -to [get_pins -of [get_cells -hier -filter { name =~ */s_out_d2_cdc_to_reg[*]*}] -filter { name =~ *D } ] 10.000 -datapath_only -quiet
set_property src_info {type:XDC file:5 line:155 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -of [get_cells -hier -filter { name =~ */rx_packet_count_int_reg[*]*}] -filter { name =~ *C } ] -to [get_pins -of [get_cells -hier -filter { name =~ */s_out_d2_cdc_to_reg[*]*}] -filter { name =~ *D } ] 10.000 -datapath_only -quiet
set_property src_info {type:XDC file:5 line:157 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -of [get_cells -hier -filter { name =~ */tx_sent_count_int_reg[*]*}] -filter { name =~ *C } ] -to [get_pins -of [get_cells -hier -filter { name =~ */s_out_d2_cdc_to_reg[*]*}] -filter { name =~ *D } ] 10.000 -datapath_only -quiet
set_property src_info {type:XDC file:5 line:159 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay  10.000 -datapath_only -from [get_pins -of [get_cells -hier -filter { name =~ */rx_total_bytes_int_reg*}] -filter { name =~ *C } ] -to [get_pins -of [get_cells -hier -filter { name =~ */s_out_d2_cdc_to_reg*}] -filter { name =~ *D } ] -quiet
set_property src_info {type:XDC file:5 line:161 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -of [get_cells -hier -filter { name =~ */tx_total_bytes_int_reg[*]*}] -filter { name =~ *C } ] -to [get_pins -of [get_cells -hier -filter { name =~ */s_out_d2_cdc_to_reg[*]*}] -filter { name =~ *D } ] 10.000 -datapath_only -quiet
set_property src_info {type:XDC file:5 line:163 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -of [get_cells -hier -filter { name =~ */tx_time_out_int_reg*}] -filter { name =~ *C } ] -to [get_pins -of [get_cells -hier -filter { name =~ */s_out_d2_cdc_to_reg[*]*}] -filter { name =~ *D } ] 10.000 -datapath_only -quiet
set_property src_info {type:XDC file:5 line:165 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -of [get_cells -hier -filter { name =~ */tx_done_int_reg*}] -filter { name =~ *C } ] -to [get_pins -of [get_cells -hier -filter { name =~ */s_out_d2_cdc_to_reg[*]*}] -filter { name =~ *D } ] 10.000 -datapath_only -quiet
set_property src_info {type:XDC file:5 line:168 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -of [get_cells -hier -filter { name =~ */rx_data_err_reg_reg*}] -filter { name =~ *C } ] -to [get_pins -of [get_cells -hier -filter { name =~ */s_out_d2_cdc_to_reg[*]*}] -filter { name =~ *D } ] 10.000 -datapath_only -quiet
set_property src_info {type:XDC file:5 line:170 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -of [get_cells -hier -filter { name =~ */mode_switch_reg*}] -filter { name =~ *C } ] 10.000 -datapath_only -quiet
set_property src_info {type:XDC file:5 line:171 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -of [get_cells -hier -filter { name =~ */pipe_reg*}] -filter { name =~ *C } ] 2.5 -datapath_only -quiet
set_property src_info {type:XDC file:5 line:173 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins -of [get_cells -hier -filter { name =~ */s_out_d4_reg*}] -filter { name =~ *C } ] -to [get_pins -of [get_cells -hier -filter { name =~ */s_out_d2_cdc_to_reg*}] -filter { name =~ *D } ]  10.000 -datapath_only -quiet
set_property src_info {type:XDC file:5 line:175 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay 6.4 -datapath_only -from [get_pins -of [get_cells -hier -filter { name =~ */rst_in_out_reg*}] -filter { name =~ *C } ] -to [get_pins -of [get_cells -hier -filter { name =~ */s_out_d2_cdc_to_reg*}] -filter { name =~ *D } ] -quiet
set_property src_info {type:XDC file:5 line:177 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay 6.4 -datapath_only -from [get_pins -of [get_cells -hier -filter { name =~ */rx_reset_done_async_r_reg*}] -filter { name =~ *C } ] -to [get_pins -of [get_cells -hier -filter { name =~ */s_out_d2_cdc_to_reg*}] -filter { name =~ *D } ] -quiet
set_property src_info {type:XDC file:5 line:180 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay  10.000 -datapath_only -from [get_pins -of [get_cells -hier -filter { name =~ */i_pif_registers/ctl_rsfec_enable_r_reg*}] -filter { name =~ *C } ] -to [get_pins -of [get_cells -hier -filter { name =~ */gt*_channel_gen.gen_gt*_channel_inst[*].GT*_CHANNEL_PRIM_INST*}] -filter { name =~ *RXGEARBOXSLIP } ] -quiet
set_property src_info {type:XDC file:5 line:186 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -quiet -type CDC -id {CDC-11} -user "xxv_ethernet" -desc "The align status signal is synced with different syncers where fan-out is expected and so can be waived" -tags "11999" -from [get_pins -of [get_cells -hier -filter {name =~ */i_RX_WD_ALIGN/align_status_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */s_out_d2_cdc_to_reg*}] -filter {name =~ *D}]
set_property src_info {type:XDC file:5 line:190 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -quiet -type CDC -id {CDC-11} -user "xxv_ethernet" -desc "The reset signal is synced with different syncers where fan-out is expected and so can be waived" -tags "11999" -from [get_pins -of [get_cells -hier -filter {name =~ */rx_reset_done_async_r_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */s_out_d2_cdc_to_reg*}] -filter {name =~ *D}]
