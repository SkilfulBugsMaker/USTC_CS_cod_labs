# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param synth.incrementalSynthesisCache D:/gyx_uni/2_spring/cod/lab/lab6/lab6/.Xil/Vivado-7984-GyxPC/incrSyn
set_param xicom.use_bs_reader 1
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.cache/wt [current_project]
set_property parent.project_path D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo d:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files D:/gyx_uni/2_spring/cod/lab/lab6/lab6/my_code.coe
read_verilog -library xil_defaultlib {
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/ALU.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Control_Unit.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Mux_2.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Mux_2_5bits.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Mux_4.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Reg_File.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Register.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/SignExtend_Unit.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/State_Machine.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/CPU.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/DDU.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/bcd_decoder.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/clock_500hz.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/clock_5hz.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/TOP.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Interrupt_Dst.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Interrupt_Ctrl.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Interrupt_flag.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Evaluate_Interrupt.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/clock_50khz.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/LED_Display.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/LED_Ctrl.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/LED_driver.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Score_Ctrl.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Score_Driver.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Data_Distributor.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Addr_Mux.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Input_Ctrl.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Input_Driver.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Input_Priority.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/IRQ_Handler.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Bluetooth_Priority.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Bluetooth_Driver.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/clock_9600hz.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Bluetooth_ReceiveData.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Bluetooth_TransmitData.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/B_Data_Decode.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/B_Data_Encode.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Ascii2Hex.v
  D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/new/Hex2Ascii.v
}
read_ip -quiet D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci
set_property used_in_implementation false [get_files -all d:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all d:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]

read_ip -quiet D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/ip/MEM/MEM.xci
set_property used_in_implementation false [get_files -all d:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/sources_1/ip/MEM/MEM_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/constrs_1/new/nexys4.xdc
set_property used_in_implementation false [get_files D:/gyx_uni/2_spring/cod/lab/lab6/lab6/lab6.srcs/constrs_1/new/nexys4.xdc]

set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top TOP -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef TOP.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file TOP_utilization_synth.rpt -pb TOP_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
