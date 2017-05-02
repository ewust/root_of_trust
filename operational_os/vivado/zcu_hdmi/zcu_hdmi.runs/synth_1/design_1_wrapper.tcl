# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xczu9eg-ffvb1156-2-i-es2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.cache/wt [current_project]
set_property parent.project_path /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:zcu102:part0:2.0 [current_project]
set_property ip_repo_paths /home/michael/xilinx_workspace/hdmi_pattern_generator [current_project]
set_property ip_output_repo /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
add_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_rst_ps8_0_100M_0/design_1_rst_ps8_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_rst_ps8_0_100M_0/design_1_rst_ps8_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_rst_ps8_0_100M_0/design_1_rst_ps8_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/design_1_v_tpg_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/design_1_v_tpg_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_0/bd_8000_v_hdmi_tx_0_core.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_0/bd_8000_v_hdmi_tx_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_1/bd_8000_v_tc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_1/bd_8000_v_tc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_2/bd_8000_v_axi4s_vid_out_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_2/bd_8000_v_axi4s_vid_out_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_4/bd_8000_axi_crossbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/bd_8000_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/design_1_v_hdmi_tx_ss_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_xbar_1/design_1_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_vid_phy_controller_0_0/vid_phy_controller_xdc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_vid_phy_controller_0_0/design_1_vid_phy_controller_0_0_ooc_fixed.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_vid_phy_controller_0_0/design_1_vid_phy_controller_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_vid_phy_controller_0_0/design_1_vid_phy_controller_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_vid_phy_controller_0_0/ip_0/synth/design_1_vid_phy_controller_0_0_gtwrapper_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_vid_phy_controller_0_0/ip_0/synth/design_1_vid_phy_controller_0_0_gtwrapper.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_1/design_1_auto_ds_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_1/design_1_auto_ds_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_1/design_1_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_property is_locked true [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/sources_1/bd/design_1/design_1.bd]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/constrs_1/new/zcu_contraints.xdc
set_property used_in_implementation false [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_hdmi/zcu_hdmi.srcs/constrs_1/new/zcu_contraints.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top design_1_wrapper -part xczu9eg-ffvb1156-2-i-es2


write_checkpoint -force -noxdef design_1_wrapper.dcp

catch { report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb }
