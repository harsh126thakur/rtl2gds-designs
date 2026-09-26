#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sat Sep 26 23:12:01 2026                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.15-s110_1 (64bit) 09/23/2022 13:08 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.15-s110_1 NR220912-2004/21_15-UB (database version 18.20.592) {superthreading v2.17}
#@(#)CDS: AAE 21.15-s039 (64bit) 09/23/2022 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.15-s038_1 () Sep 20 2022 11:42:13 ( )
#@(#)CDS: SYNTECH 21.15-s012_1 () Sep  5 2022 10:25:51 ( )
#@(#)CDS: CPE v21.15-s076
#@(#)CDS: IQuantus/TQuantus 21.1.1-s867 (64bit) Sun Jun 26 22:12:54 PDT 2022 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
set init_verilog /home/Harsh/rtl2gds_work/runs/rtl2gds-designs/20260926_231129_single/counter8/synth/single/out/results/counter8.v
set init_top_cell counter8
set init_lef_file {/home/lib/sky130_hd/sky130_fd_sc_hd__nom.tlef /home/lib/sky130_hd/sky130_fd_sc_hd.lef}
set init_mmmc_file /home/Harsh/rtl2gds_work/runs/rtl2gds-designs/20260926_231129_single/counter8/pnr/out/mmmc.tcl
set init_pwr_net VDD
set init_gnd_net VSS
init_design
globalNetConnect VDD -type pgpin -pin VPWR -inst * -override
globalNetConnect VDD -type pgpin -pin VPB -inst * -override
globalNetConnect VSS -type pgpin -pin VGND -inst * -override
globalNetConnect VSS -type pgpin -pin VNB -inst * -override
globalNetConnect VDD -type tiehi -inst *
globalNetConnect VSS -type tielo -inst *
floorPlan -r 1.0 0.6 10 10 10 10
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top met5 bottom met5 left met4 right met4} -width {top 1.6 bottom 1.6 left 1.6 right 1.6} -spacing {top 1.7 bottom 1.7 left 1.7 right 1.7} -offset {top 1 bottom 1 left 1 right 1}
addStripe -nets {VDD VSS} -layer met4 -direction vertical -width 1.6 -spacing 1.7 -set_to_set_distance 50 -start_from left -start_offset 10
sroute -connect corePin -nets {VDD VSS}
checkFPlan -reportUtil > /home/Harsh/rtl2gds_work/runs/rtl2gds-designs/20260926_231129_single/counter8/pnr/out/reports/floorplan.rpt
getPlaceMode -place_hierarchical_flow -quiet
report_message -start_cmd
getRouteMode -maxRouteLayer -quiet
getRouteMode -user -maxRouteLayer
getPlaceMode -place_global_place_io_pins -quiet
getPlaceMode -user -maxRouteLayer
getPlaceMode -quiet -adaptiveFlowMode
getPlaceMode -timingDriven -quiet
getPlaceMode -adaptive -quiet
getPlaceMode -relaxSoftBlockageMode -quiet
getPlaceMode -user -relaxSoftBlockageMode
getPlaceMode -ignoreScan -quiet
getPlaceMode -user -ignoreScan
getPlaceMode -repairPlace -quiet
getPlaceMode -user -repairPlace
getPlaceMode -inPlaceOptMode -quiet
getPlaceMode -quiet -bypassFlowEffortHighChecking
getDesignMode -quiet -siPrevention
getPlaceMode -quiet -place_global_exp_enable_3d
getPlaceMode -exp_slack_driven -quiet
um::push_snapshot_stack
getDesignMode -quiet -flowEffort
getDesignMode -highSpeedCore -quiet
getPlaceMode -quiet -adaptive
set spgFlowInInitialPlace 1
getPlaceMode -sdpAlignment -quiet
getPlaceMode -softGuide -quiet
getPlaceMode -useSdpGroup -quiet
getPlaceMode -sdpAlignment -quiet
getPlaceMode -enableDbSaveAreaPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -sdpPlace -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -sdpPlace -quiet
getPlaceMode -groupHighLevelClkGate -quiet
setvar spgRptErrorForScanConnection 0
getPlaceMode -place_global_exp_allow_missing_scan_chain -quiet
getPlaceMode -ignoreScan -quiet
setvar spgRptErrorForScanConnection 1
getPlaceMode -place_design_floorplan_mode -quiet
getPlaceMode -place_global_timing_effort -quiet
