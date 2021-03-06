
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu9eg-ffvb1156-2-i
   set_property BOARD_PART xilinx.com:zcu102:part0:3.0 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: secure_storage_microblaze_local_memory
proc create_hier_cell_secure_storage_microblaze_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_secure_storage_microblaze_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:bram_rtl:1.0 BRAM_PORTB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
CONFIG.C_NUM_LMB {2} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 lmb_bram ]
  set_property -dict [ list \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net Conn [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB1] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins BRAM_PORTB] [get_bd_intf_pins lmb_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net secure_storage_microblaze_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net secure_storage_microblaze_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net secure_storage_microblaze_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net secure_storage_microblaze_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net secure_storage_microblaze_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: enclave_local_memory
proc create_hier_cell_enclave_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_enclave_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:bram_rtl:1.0 BRAM_PORTB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
CONFIG.C_NUM_LMB {2} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 lmb_bram ]
  set_property -dict [ list \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net Conn [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB1] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins BRAM_PORTB] [get_bd_intf_pins lmb_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: ecdsa_local_memory
proc create_hier_cell_ecdsa_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_ecdsa_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:bram_rtl:1.0 BRAM_PORTB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
CONFIG.C_NUM_LMB {2} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 lmb_bram ]
  set_property -dict [ list \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net Conn [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB1] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins BRAM_PORTB] [get_bd_intf_pins lmb_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list \
CONFIG.NUM_MI {6} \
 ] $axi_mem_intercon

  # Create instance: axi_mem_intercon_1, and set properties
  set axi_mem_intercon_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon_1 ]
  set_property -dict [ list \
CONFIG.NUM_MI {3} \
 ] $axi_mem_intercon_1

  # Create instance: axi_mem_intercon_2, and set properties
  set axi_mem_intercon_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon_2 ]
  set_property -dict [ list \
CONFIG.NUM_MI {3} \
 ] $axi_mem_intercon_2

  # Create instance: axi_smc, and set properties
  set axi_smc [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc ]
  set_property -dict [ list \
CONFIG.NUM_MI {5} \
CONFIG.NUM_SI {1} \
 ] $axi_smc

  # Create instance: ecdsa_local_memory
  create_hier_cell_ecdsa_local_memory [current_bd_instance .] ecdsa_local_memory

  # Create instance: ecdsa_message_control, and set properties
  set ecdsa_message_control [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 ecdsa_message_control ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_ALL_OUTPUTS_2 {1} \
CONFIG.C_GPIO2_WIDTH {1} \
CONFIG.C_GPIO_WIDTH {1} \
CONFIG.C_IS_DUAL {1} \
 ] $ecdsa_message_control

  # Create instance: ecdsa_microblaze, and set properties
  set ecdsa_microblaze [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 ecdsa_microblaze ]
  set_property -dict [ list \
CONFIG.C_DEBUG_ENABLED {0} \
CONFIG.C_D_AXI {1} \
CONFIG.C_D_LMB {1} \
CONFIG.C_I_LMB {1} \
CONFIG.C_USE_BARREL {1} \
CONFIG.C_USE_DIV {1} \
CONFIG.C_USE_FPU {2} \
CONFIG.C_USE_HW_MUL {2} \
CONFIG.C_USE_MSR_INSTR {1} \
CONFIG.C_USE_PCMP_INSTR {1} \
 ] $ecdsa_microblaze

  # Create instance: ecdsa_secure_storage_buffer, and set properties
  set ecdsa_secure_storage_buffer [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 ecdsa_secure_storage_buffer ]
  set_property -dict [ list \
CONFIG.Byte_Size {8} \
CONFIG.Enable_32bit_Address {true} \
CONFIG.Enable_B {Use_ENB_Pin} \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.Port_B_Clock {100} \
CONFIG.Port_B_Enable_Rate {100} \
CONFIG.Port_B_Write_Rate {50} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
CONFIG.Use_Byte_Write_Enable {true} \
CONFIG.Use_RSTA_Pin {true} \
CONFIG.Use_RSTB_Pin {true} \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $ecdsa_secure_storage_buffer

  # Create instance: ecdsa_to_enclave_program_memory, and set properties
  set ecdsa_to_enclave_program_memory [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 ecdsa_to_enclave_program_memory ]
  set_property -dict [ list \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $ecdsa_to_enclave_program_memory

  # Create instance: ecdsa_to_message_buffer_controller, and set properties
  set ecdsa_to_message_buffer_controller [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 ecdsa_to_message_buffer_controller ]
  set_property -dict [ list \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $ecdsa_to_message_buffer_controller

  # Create instance: ecdsa_to_shared_buffer, and set properties
  set ecdsa_to_shared_buffer [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 ecdsa_to_shared_buffer ]
  set_property -dict [ list \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $ecdsa_to_shared_buffer

  # Create instance: ecdsa_to_storage_buffer_controller, and set properties
  set ecdsa_to_storage_buffer_controller [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 ecdsa_to_storage_buffer_controller ]
  set_property -dict [ list \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $ecdsa_to_storage_buffer_controller

  # Create instance: ecdsa_uartlite, and set properties
  set ecdsa_uartlite [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 ecdsa_uartlite ]

  # Create instance: enclave_local_memory
  create_hier_cell_enclave_local_memory [current_bd_instance .] enclave_local_memory

  # Create instance: enclave_message_buffer, and set properties
  set enclave_message_buffer [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 enclave_message_buffer ]
  set_property -dict [ list \
CONFIG.Byte_Size {8} \
CONFIG.Enable_32bit_Address {true} \
CONFIG.Enable_B {Use_ENB_Pin} \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.Port_B_Clock {100} \
CONFIG.Port_B_Enable_Rate {100} \
CONFIG.Port_B_Write_Rate {50} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
CONFIG.Use_Byte_Write_Enable {true} \
CONFIG.Use_RSTA_Pin {true} \
CONFIG.Use_RSTB_Pin {true} \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $enclave_message_buffer

  # Create instance: enclave_message_control, and set properties
  set enclave_message_control [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 enclave_message_control ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS_2 {1} \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_GPIO2_WIDTH {1} \
CONFIG.C_GPIO_WIDTH {1} \
CONFIG.C_IS_DUAL {1} \
 ] $enclave_message_control

  # Create instance: enclave_microblaze, and set properties
  set enclave_microblaze [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 enclave_microblaze ]
  set_property -dict [ list \
CONFIG.C_DEBUG_ENABLED {0} \
CONFIG.C_D_AXI {1} \
CONFIG.C_D_LMB {1} \
CONFIG.C_I_LMB {1} \
CONFIG.C_USE_BARREL {1} \
CONFIG.C_USE_DIV {1} \
CONFIG.C_USE_FPU {2} \
CONFIG.C_USE_HW_MUL {2} \
CONFIG.C_USE_MSR_INSTR {1} \
CONFIG.C_USE_PCMP_INSTR {1} \
 ] $enclave_microblaze

  # Create instance: enclave_to_message_buffer_controller, and set properties
  set enclave_to_message_buffer_controller [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 enclave_to_message_buffer_controller ]
  set_property -dict [ list \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $enclave_to_message_buffer_controller

  # Create instance: enclave_uartlite, and set properties
  set enclave_uartlite [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 enclave_uartlite ]

  # Create instance: external_reset, and set properties
  set external_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 external_reset ]
  set_property -dict [ list \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_GPIO_WIDTH {1} \
 ] $external_reset

  # Create instance: microblaze_secure_storage_controller, and set properties
  set microblaze_secure_storage_controller [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 microblaze_secure_storage_controller ]
  set_property -dict [ list \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $microblaze_secure_storage_controller

  # Create instance: ps8_0_axi_periph, and set properties
  set ps8_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps8_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {3} \
 ] $ps8_0_axi_periph

  # Create instance: rst_ps8_0_99M, and set properties
  set rst_ps8_0_99M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps8_0_99M ]
  set_property -dict [ list \
CONFIG.C_AUX_RESET_HIGH {1} \
 ] $rst_ps8_0_99M

  # Create instance: secure_storage_buffer, and set properties
  set secure_storage_buffer [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 secure_storage_buffer ]
  set_property -dict [ list \
CONFIG.Byte_Size {8} \
CONFIG.Enable_32bit_Address {true} \
CONFIG.Enable_B {Use_ENB_Pin} \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.Port_B_Clock {100} \
CONFIG.Port_B_Enable_Rate {100} \
CONFIG.Port_B_Write_Rate {50} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
CONFIG.Use_Byte_Write_Enable {true} \
CONFIG.Use_RSTA_Pin {true} \
CONFIG.Use_RSTB_Pin {true} \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $secure_storage_buffer

  # Create instance: secure_storage_microblaze, and set properties
  set secure_storage_microblaze [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 secure_storage_microblaze ]
  set_property -dict [ list \
CONFIG.C_DEBUG_ENABLED {0} \
CONFIG.C_D_AXI {1} \
CONFIG.C_D_LMB {1} \
CONFIG.C_I_LMB {1} \
CONFIG.C_USE_BARREL {1} \
CONFIG.C_USE_DIV {1} \
CONFIG.C_USE_FPU {2} \
CONFIG.C_USE_HW_MUL {2} \
CONFIG.C_USE_MSR_INSTR {1} \
CONFIG.C_USE_PCMP_INSTR {1} \
 ] $secure_storage_microblaze

  # Create instance: secure_storage_microblaze_local_memory
  create_hier_cell_secure_storage_microblaze_local_memory [current_bd_instance .] secure_storage_microblaze_local_memory

  # Create instance: secure_storage_to_ecdsa_buffer_controller, and set properties
  set secure_storage_to_ecdsa_buffer_controller [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 secure_storage_to_ecdsa_buffer_controller ]
  set_property -dict [ list \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $secure_storage_to_ecdsa_buffer_controller

  # Create instance: storage_uartlite, and set properties
  set storage_uartlite [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 storage_uartlite ]

  # Create instance: zcu_ecdsa_program_controller, and set properties
  set zcu_ecdsa_program_controller [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 zcu_ecdsa_program_controller ]
  set_property -dict [ list \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $zcu_ecdsa_program_controller

  # Create instance: zcu_ecdsa_shared_message_buffer, and set properties
  set zcu_ecdsa_shared_message_buffer [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 zcu_ecdsa_shared_message_buffer ]
  set_property -dict [ list \
CONFIG.Byte_Size {8} \
CONFIG.Enable_32bit_Address {true} \
CONFIG.Enable_B {Use_ENB_Pin} \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.Port_B_Clock {100} \
CONFIG.Port_B_Enable_Rate {100} \
CONFIG.Port_B_Write_Rate {50} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
CONFIG.Use_Byte_Write_Enable {true} \
CONFIG.Use_RSTA_Pin {true} \
CONFIG.Use_RSTB_Pin {true} \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $zcu_ecdsa_shared_message_buffer

  # Create instance: zcu_ecdsa_uartlite, and set properties
  set zcu_ecdsa_uartlite [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 zcu_ecdsa_uartlite ]

  # Create instance: zcu_enclave_uartlite, and set properties
  set zcu_enclave_uartlite [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 zcu_enclave_uartlite ]

  # Create instance: zcu_secure_storage_controller, and set properties
  set zcu_secure_storage_controller [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 zcu_secure_storage_controller ]
  set_property -dict [ list \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $zcu_secure_storage_controller

  # Create instance: zcu_secure_storage_program_controller, and set properties
  set zcu_secure_storage_program_controller [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 zcu_secure_storage_program_controller ]
  set_property -dict [ list \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $zcu_secure_storage_program_controller

  # Create instance: zcu_storage_uartlite, and set properties
  set zcu_storage_uartlite [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 zcu_storage_uartlite ]

  # Create instance: zcu_to_shared_message_buffer, and set properties
  set zcu_to_shared_message_buffer [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 zcu_to_shared_message_buffer ]
  set_property -dict [ list \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $zcu_to_shared_message_buffer

  # Create instance: zynq_ultra_ps_e_0, and set properties
  set zynq_ultra_ps_e_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e:3.0 zynq_ultra_ps_e_0 ]
  set_property -dict [ list \
CONFIG.PSU_BANK_0_IO_STANDARD {LVCMOS18} \
CONFIG.PSU_BANK_1_IO_STANDARD {LVCMOS18} \
CONFIG.PSU_BANK_2_IO_STANDARD {LVCMOS18} \
CONFIG.PSU__CAN1__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__CAN1__PERIPHERAL__IO {MIO 24 .. 25} \
CONFIG.PSU__CRF_APB__ACPU_CTRL__FREQMHZ {1200} \
CONFIG.PSU__CRF_APB__ACPU_CTRL__SRCSEL {APLL} \
CONFIG.PSU__CRF_APB__APLL_CTRL__SRCSEL {PSS_REF_CLK} \
CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRF_APB__DDR_CTRL__FREQMHZ {1067} \
CONFIG.PSU__CRF_APB__DDR_CTRL__SRCSEL {DPLL} \
CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__FREQMHZ {600} \
CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__SRCSEL {APLL} \
CONFIG.PSU__CRF_APB__DPLL_CTRL__SRCSEL {PSS_REF_CLK} \
CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__SRCSEL {RPLL} \
CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__SRCSEL {RPLL} \
CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__SRCSEL {VPLL} \
CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__FREQMHZ {600} \
CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__SRCSEL {APLL} \
CONFIG.PSU__CRF_APB__GPU_REF_CTRL__FREQMHZ {500} \
CONFIG.PSU__CRF_APB__GPU_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRF_APB__SATA_REF_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRF_APB__SATA_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__FREQMHZ {533.33} \
CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__SRCSEL {DPLL} \
CONFIG.PSU__CRF_APB__VPLL_CTRL__SRCSEL {PSS_REF_CLK} \
CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__FREQMHZ {500} \
CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__CPU_R5_CTRL__FREQMHZ {500} \
CONFIG.PSU__CRL_APB__CPU_R5_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__FREQMHZ {125} \
CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__IOPLL_CTRL__SRCSEL {PSS_REF_CLK} \
CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__FREQMHZ {500} \
CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__PCAP_CTRL__FREQMHZ {200} \
CONFIG.PSU__CRL_APB__PCAP_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__PL0_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__PL0_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__FREQMHZ {125} \
CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__RPLL_CTRL__SRCSEL {PSS_REF_CLK} \
CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__FREQMHZ {200} \
CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__UART0_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__UART0_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__UART1_REF_CTRL__FREQMHZ {100} \
CONFIG.PSU__CRL_APB__UART1_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__FREQMHZ {250} \
CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__FREQMHZ {20} \
CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__SRCSEL {IOPLL} \
CONFIG.PSU__DDRC__BANK_ADDR_COUNT {2} \
CONFIG.PSU__DDRC__BG_ADDR_COUNT {2} \
CONFIG.PSU__DDRC__BRC_MAPPING {ROW_BANK_COL} \
CONFIG.PSU__DDRC__BUS_WIDTH {64 Bit} \
CONFIG.PSU__DDRC__CL {15} \
CONFIG.PSU__DDRC__CLOCK_STOP_EN {0} \
CONFIG.PSU__DDRC__COL_ADDR_COUNT {10} \
CONFIG.PSU__DDRC__COMPONENTS {UDIMM} \
CONFIG.PSU__DDRC__CWL {14} \
CONFIG.PSU__DDRC__DDR4_ADDR_MAPPING {0} \
CONFIG.PSU__DDRC__DDR4_CAL_MODE_ENABLE {0} \
CONFIG.PSU__DDRC__DDR4_CRC_CONTROL {0} \
CONFIG.PSU__DDRC__DDR4_T_REF_MODE {0} \
CONFIG.PSU__DDRC__DDR4_T_REF_RANGE {Normal (0-85)} \
CONFIG.PSU__DDRC__DEVICE_CAPACITY {4096 MBits} \
CONFIG.PSU__DDRC__DIMM_ADDR_MIRROR {0} \
CONFIG.PSU__DDRC__DM_DBI {DM_NO_DBI} \
CONFIG.PSU__DDRC__DRAM_WIDTH {8 Bits} \
CONFIG.PSU__DDRC__ECC {Disabled} \
CONFIG.PSU__DDRC__FGRM {1X} \
CONFIG.PSU__DDRC__LP_ASR {manual normal} \
CONFIG.PSU__DDRC__MEMORY_TYPE {DDR 4} \
CONFIG.PSU__DDRC__PARITY_ENABLE {0} \
CONFIG.PSU__DDRC__PER_BANK_REFRESH {0} \
CONFIG.PSU__DDRC__PHY_DBI_MODE {0} \
CONFIG.PSU__DDRC__RANK_ADDR_COUNT {0} \
CONFIG.PSU__DDRC__ROW_ADDR_COUNT {15} \
CONFIG.PSU__DDRC__SELF_REF_ABORT {0} \
CONFIG.PSU__DDRC__SPEED_BIN {DDR4_2133P} \
CONFIG.PSU__DDRC__STATIC_RD_MODE {0} \
CONFIG.PSU__DDRC__TRAIN_DATA_EYE {1} \
CONFIG.PSU__DDRC__TRAIN_READ_GATE {1} \
CONFIG.PSU__DDRC__TRAIN_WRITE_LEVEL {1} \
CONFIG.PSU__DDRC__T_FAW {30.0} \
CONFIG.PSU__DDRC__T_RAS_MIN {33} \
CONFIG.PSU__DDRC__T_RC {47.06} \
CONFIG.PSU__DDRC__T_RCD {15} \
CONFIG.PSU__DDRC__T_RP {15} \
CONFIG.PSU__DDRC__VREF {1} \
CONFIG.PSU__DISPLAYPORT__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__DPAUX__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__DPAUX__PERIPHERAL__IO {MIO 27 .. 30} \
CONFIG.PSU__DP__LANE_SEL {Single Lower} \
CONFIG.PSU__DP__REF_CLK_FREQ {27} \
CONFIG.PSU__DP__REF_CLK_SEL {Ref Clk3} \
CONFIG.PSU__ENET3__GRP_MDIO__ENABLE {1} \
CONFIG.PSU__ENET3__GRP_MDIO__IO {MIO 76 .. 77} \
CONFIG.PSU__ENET3__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__ENET3__PERIPHERAL__IO {MIO 64 .. 75} \
CONFIG.PSU__FPGA_PL0_ENABLE {1} \
CONFIG.PSU__GPIO0_MIO__IO {MIO 0 .. 25} \
CONFIG.PSU__GPIO0_MIO__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__GPIO1_MIO__IO {MIO 26 .. 51} \
CONFIG.PSU__GPIO1_MIO__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__I2C0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__I2C0__PERIPHERAL__IO {MIO 14 .. 15} \
CONFIG.PSU__I2C1__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__I2C1__PERIPHERAL__IO {MIO 16 .. 17} \
CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC0_SEL {APB} \
CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC1_SEL {APB} \
CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC2_SEL {APB} \
CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC3_SEL {APB} \
CONFIG.PSU__OVERRIDE__BASIC_CLOCK {0} \
CONFIG.PSU__PCIE__BAR0_ENABLE {0} \
CONFIG.PSU__PCIE__CLASS_CODE_BASE {0x06} \
CONFIG.PSU__PCIE__CLASS_CODE_SUB {0x4} \
CONFIG.PSU__PCIE__CRS_SW_VISIBILITY {1} \
CONFIG.PSU__PCIE__DEVICE_ID {0xD021} \
CONFIG.PSU__PCIE__DEVICE_PORT_TYPE {Root Port} \
CONFIG.PSU__PCIE__LANE1__ENABLE {0} \
CONFIG.PSU__PCIE__LINK_SPEED {5.0 Gb/s} \
CONFIG.PSU__PCIE__MAXIMUM_LINK_WIDTH {x1} \
CONFIG.PSU__PCIE__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__PCIE__PERIPHERAL__ROOTPORT_IO {MIO 31} \
CONFIG.PSU__PCIE__REF_CLK_FREQ {100} \
CONFIG.PSU__PCIE__REF_CLK_SEL {Ref Clk0} \
CONFIG.PSU__PMU__GPI0__ENABLE {0} \
CONFIG.PSU__PMU__GPI1__ENABLE {0} \
CONFIG.PSU__PMU__GPI2__ENABLE {0} \
CONFIG.PSU__PMU__GPI3__ENABLE {0} \
CONFIG.PSU__PMU__GPI4__ENABLE {0} \
CONFIG.PSU__PMU__GPI5__ENABLE {0} \
CONFIG.PSU__PMU__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__PSS_REF_CLK__FREQMHZ {33.333} \
CONFIG.PSU__QSPI__GRP_FBCLK__ENABLE {1} \
CONFIG.PSU__QSPI__GRP_FBCLK__IO {MIO 6} \
CONFIG.PSU__QSPI__PERIPHERAL__DATA_MODE {x4} \
CONFIG.PSU__QSPI__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__QSPI__PERIPHERAL__IO {MIO 0 .. 12} \
CONFIG.PSU__QSPI__PERIPHERAL__MODE {Dual Parallel} \
CONFIG.PSU__SATA__LANE1__ENABLE {1} \
CONFIG.PSU__SATA__LANE1__IO {GT Lane3} \
CONFIG.PSU__SATA__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__SATA__REF_CLK_FREQ {125} \
CONFIG.PSU__SATA__REF_CLK_SEL {Ref Clk1} \
CONFIG.PSU__SD1__DATA_TRANSFER_MODE {8Bit} \
CONFIG.PSU__SD1__GRP_CD__ENABLE {1} \
CONFIG.PSU__SD1__GRP_CD__IO {MIO 45} \
CONFIG.PSU__SD1__GRP_POW__ENABLE {1} \
CONFIG.PSU__SD1__GRP_POW__IO {MIO 43} \
CONFIG.PSU__SD1__GRP_WP__ENABLE {1} \
CONFIG.PSU__SD1__GRP_WP__IO {MIO 44} \
CONFIG.PSU__SD1__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__SD1__PERIPHERAL__IO {MIO 39 .. 51} \
CONFIG.PSU__SD1__SLOT_TYPE {SD 3.0} \
CONFIG.PSU__SWDT0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__SWDT1__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__TTC0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__TTC1__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__TTC2__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__TTC3__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__UART0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__UART0__PERIPHERAL__IO {MIO 18 .. 19} \
CONFIG.PSU__UART1__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__UART1__PERIPHERAL__IO {MIO 20 .. 21} \
CONFIG.PSU__USB0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__USB0__PERIPHERAL__IO {MIO 52 .. 63} \
CONFIG.PSU__USB0__REF_CLK_FREQ {26} \
CONFIG.PSU__USB0__REF_CLK_SEL {Ref Clk2} \
CONFIG.PSU__USB3_0__PERIPHERAL__ENABLE {1} \
CONFIG.PSU__USB3_0__PERIPHERAL__IO {GT Lane2} \
CONFIG.PSU__USE__IRQ0 {1} \
CONFIG.PSU__USE__M_AXI_GP0 {1} \
CONFIG.PSU__USE__M_AXI_GP1 {1} \
CONFIG.PSU__USE__M_AXI_GP2 {0} \
 ] $zynq_ultra_ps_e_0

  # Create interface connections
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins ecdsa_to_enclave_program_memory/BRAM_PORTA] [get_bd_intf_pins enclave_local_memory/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_bram_ctrl_1_BRAM_PORTA [get_bd_intf_pins microblaze_secure_storage_controller/BRAM_PORTA] [get_bd_intf_pins secure_storage_buffer/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_1_BRAM_PORTA1 [get_bd_intf_pins secure_storage_buffer/BRAM_PORTB] [get_bd_intf_pins zcu_secure_storage_controller/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_1_BRAM_PORTA2 [get_bd_intf_pins ecdsa_local_memory/BRAM_PORTB] [get_bd_intf_pins zcu_ecdsa_program_controller/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_1_BRAM_PORTA3 [get_bd_intf_pins secure_storage_microblaze_local_memory/BRAM_PORTB] [get_bd_intf_pins zcu_secure_storage_program_controller/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_1_BRAM_PORTA4 [get_bd_intf_pins ecdsa_secure_storage_buffer/BRAM_PORTA] [get_bd_intf_pins secure_storage_to_ecdsa_buffer_controller/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_1_BRAM_PORTA5 [get_bd_intf_pins ecdsa_secure_storage_buffer/BRAM_PORTB] [get_bd_intf_pins ecdsa_to_storage_buffer_controller/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_1_BRAM_PORTA6 [get_bd_intf_pins zcu_ecdsa_shared_message_buffer/BRAM_PORTA] [get_bd_intf_pins zcu_to_shared_message_buffer/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_mem_intercon_1_M00_AXI [get_bd_intf_pins axi_mem_intercon_1/M00_AXI] [get_bd_intf_pins microblaze_secure_storage_controller/S_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_1_M01_AXI [get_bd_intf_pins axi_mem_intercon_1/M01_AXI] [get_bd_intf_pins secure_storage_to_ecdsa_buffer_controller/S_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_1_M02_AXI [get_bd_intf_pins axi_mem_intercon_1/M02_AXI] [get_bd_intf_pins storage_uartlite/S_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_2_M00_AXI [get_bd_intf_pins axi_mem_intercon_2/M00_AXI] [get_bd_intf_pins enclave_to_message_buffer_controller/S_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_2_M01_AXI [get_bd_intf_pins axi_mem_intercon_2/M01_AXI] [get_bd_intf_pins enclave_message_control/S_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_2_M02_AXI [get_bd_intf_pins axi_mem_intercon_2/M02_AXI] [get_bd_intf_pins enclave_uartlite/S_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins axi_mem_intercon/M00_AXI] [get_bd_intf_pins ecdsa_to_enclave_program_memory/S_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_M01_AXI [get_bd_intf_pins axi_mem_intercon/M01_AXI] [get_bd_intf_pins ecdsa_to_storage_buffer_controller/S_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_M02_AXI [get_bd_intf_pins axi_mem_intercon/M02_AXI] [get_bd_intf_pins ecdsa_to_message_buffer_controller/S_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_M03_AXI [get_bd_intf_pins axi_mem_intercon/M03_AXI] [get_bd_intf_pins ecdsa_message_control/S_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_M04_AXI [get_bd_intf_pins axi_mem_intercon/M04_AXI] [get_bd_intf_pins ecdsa_uartlite/S_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_M05_AXI [get_bd_intf_pins axi_mem_intercon/M05_AXI] [get_bd_intf_pins ecdsa_to_shared_buffer/S_AXI]
  connect_bd_intf_net -intf_net axi_smc_M00_AXI [get_bd_intf_pins axi_smc/M00_AXI] [get_bd_intf_pins zcu_secure_storage_controller/S_AXI]
  connect_bd_intf_net -intf_net axi_smc_M01_AXI [get_bd_intf_pins axi_smc/M01_AXI] [get_bd_intf_pins zcu_ecdsa_program_controller/S_AXI]
  connect_bd_intf_net -intf_net axi_smc_M02_AXI [get_bd_intf_pins axi_smc/M02_AXI] [get_bd_intf_pins zcu_secure_storage_program_controller/S_AXI]
  connect_bd_intf_net -intf_net axi_smc_M03_AXI [get_bd_intf_pins axi_smc/M03_AXI] [get_bd_intf_pins external_reset/S_AXI]
  connect_bd_intf_net -intf_net axi_smc_M04_AXI [get_bd_intf_pins axi_smc/M04_AXI] [get_bd_intf_pins zcu_to_shared_message_buffer/S_AXI]
  connect_bd_intf_net -intf_net ecdsa_microblaze_M_AXI_DP [get_bd_intf_pins axi_mem_intercon/S00_AXI] [get_bd_intf_pins ecdsa_microblaze/M_AXI_DP]
  connect_bd_intf_net -intf_net ecdsa_to_message_buffer_controller_BRAM_PORTA [get_bd_intf_pins ecdsa_to_message_buffer_controller/BRAM_PORTA] [get_bd_intf_pins enclave_message_buffer/BRAM_PORTB]
  connect_bd_intf_net -intf_net ecdsa_to_shared_buffer_BRAM_PORTA [get_bd_intf_pins ecdsa_to_shared_buffer/BRAM_PORTA] [get_bd_intf_pins zcu_ecdsa_shared_message_buffer/BRAM_PORTB]
  connect_bd_intf_net -intf_net enclave_microblaze_M_AXI_DP [get_bd_intf_pins axi_mem_intercon_2/S00_AXI] [get_bd_intf_pins enclave_microblaze/M_AXI_DP]
  connect_bd_intf_net -intf_net enclave_to_message_buffer_controller_BRAM_PORTA [get_bd_intf_pins enclave_message_buffer/BRAM_PORTA] [get_bd_intf_pins enclave_to_message_buffer_controller/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins ecdsa_local_memory/DLMB] [get_bd_intf_pins ecdsa_microblaze/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_2 [get_bd_intf_pins enclave_local_memory/DLMB] [get_bd_intf_pins enclave_microblaze/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins ecdsa_local_memory/ILMB] [get_bd_intf_pins ecdsa_microblaze/ILMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_2 [get_bd_intf_pins enclave_local_memory/ILMB] [get_bd_intf_pins enclave_microblaze/ILMB]
  connect_bd_intf_net -intf_net ps8_0_axi_periph_M00_AXI [get_bd_intf_pins ps8_0_axi_periph/M00_AXI] [get_bd_intf_pins zcu_storage_uartlite/S_AXI]
  connect_bd_intf_net -intf_net ps8_0_axi_periph_M01_AXI [get_bd_intf_pins ps8_0_axi_periph/M01_AXI] [get_bd_intf_pins zcu_ecdsa_uartlite/S_AXI]
  connect_bd_intf_net -intf_net ps8_0_axi_periph_M02_AXI [get_bd_intf_pins ps8_0_axi_periph/M02_AXI] [get_bd_intf_pins zcu_enclave_uartlite/S_AXI]
  connect_bd_intf_net -intf_net secure_storage_microblaze_M_AXI_DP [get_bd_intf_pins axi_mem_intercon_1/S00_AXI] [get_bd_intf_pins secure_storage_microblaze/M_AXI_DP]
  connect_bd_intf_net -intf_net secure_storage_microblaze_dlmb_1 [get_bd_intf_pins secure_storage_microblaze/DLMB] [get_bd_intf_pins secure_storage_microblaze_local_memory/DLMB]
  connect_bd_intf_net -intf_net secure_storage_microblaze_ilmb_1 [get_bd_intf_pins secure_storage_microblaze/ILMB] [get_bd_intf_pins secure_storage_microblaze_local_memory/ILMB]
  connect_bd_intf_net -intf_net zynq_ultra_ps_e_0_M_AXI_HPM0_FPD [get_bd_intf_pins axi_smc/S00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/M_AXI_HPM0_FPD]
  connect_bd_intf_net -intf_net zynq_ultra_ps_e_0_M_AXI_HPM1_FPD [get_bd_intf_pins ps8_0_axi_periph/S00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/M_AXI_HPM1_FPD]

  # Create port connections
  connect_bd_net -net axi_gpio_0_gpio2_io_o [get_bd_pins ecdsa_message_control/gpio2_io_o] [get_bd_pins enclave_message_control/gpio2_io_i]
  connect_bd_net -net axi_gpio_0_gpio_io_o [get_bd_pins external_reset/gpio_io_o] [get_bd_pins rst_ps8_0_99M/aux_reset_in]
  connect_bd_net -net ecdsa_uartlite_tx [get_bd_pins ecdsa_uartlite/tx] [get_bd_pins zcu_ecdsa_uartlite/rx]
  connect_bd_net -net enclave_message_signal_out_gpio_io_o [get_bd_pins ecdsa_message_control/gpio_io_i] [get_bd_pins enclave_message_control/gpio_io_o]
  connect_bd_net -net enclave_uartlite_tx [get_bd_pins enclave_uartlite/tx] [get_bd_pins zcu_enclave_uartlite/rx]
  connect_bd_net -net rst_ps8_0_99M_bus_struct_reset [get_bd_pins ecdsa_local_memory/SYS_Rst] [get_bd_pins enclave_local_memory/SYS_Rst] [get_bd_pins rst_ps8_0_99M/bus_struct_reset] [get_bd_pins secure_storage_microblaze_local_memory/SYS_Rst]
  connect_bd_net -net rst_ps8_0_99M_interconnect_aresetn [get_bd_pins axi_mem_intercon/ARESETN] [get_bd_pins axi_mem_intercon_1/ARESETN] [get_bd_pins axi_mem_intercon_2/ARESETN] [get_bd_pins ps8_0_axi_periph/ARESETN] [get_bd_pins rst_ps8_0_99M/interconnect_aresetn]
  connect_bd_net -net rst_ps8_0_99M_mb_reset [get_bd_pins ecdsa_microblaze/Reset] [get_bd_pins enclave_microblaze/Reset] [get_bd_pins rst_ps8_0_99M/mb_reset] [get_bd_pins secure_storage_microblaze/Reset]
  connect_bd_net -net rst_ps8_0_99M_peripheral_aresetn [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins axi_mem_intercon/M01_ARESETN] [get_bd_pins axi_mem_intercon/M02_ARESETN] [get_bd_pins axi_mem_intercon/M03_ARESETN] [get_bd_pins axi_mem_intercon/M04_ARESETN] [get_bd_pins axi_mem_intercon/M05_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins axi_mem_intercon_1/M00_ARESETN] [get_bd_pins axi_mem_intercon_1/M01_ARESETN] [get_bd_pins axi_mem_intercon_1/M02_ARESETN] [get_bd_pins axi_mem_intercon_1/S00_ARESETN] [get_bd_pins axi_mem_intercon_2/M00_ARESETN] [get_bd_pins axi_mem_intercon_2/M01_ARESETN] [get_bd_pins axi_mem_intercon_2/M02_ARESETN] [get_bd_pins axi_mem_intercon_2/S00_ARESETN] [get_bd_pins axi_smc/aresetn] [get_bd_pins ecdsa_message_control/s_axi_aresetn] [get_bd_pins ecdsa_to_enclave_program_memory/s_axi_aresetn] [get_bd_pins ecdsa_to_message_buffer_controller/s_axi_aresetn] [get_bd_pins ecdsa_to_shared_buffer/s_axi_aresetn] [get_bd_pins ecdsa_to_storage_buffer_controller/s_axi_aresetn] [get_bd_pins ecdsa_uartlite/s_axi_aresetn] [get_bd_pins enclave_message_control/s_axi_aresetn] [get_bd_pins enclave_to_message_buffer_controller/s_axi_aresetn] [get_bd_pins enclave_uartlite/s_axi_aresetn] [get_bd_pins external_reset/s_axi_aresetn] [get_bd_pins microblaze_secure_storage_controller/s_axi_aresetn] [get_bd_pins ps8_0_axi_periph/M00_ARESETN] [get_bd_pins ps8_0_axi_periph/M01_ARESETN] [get_bd_pins ps8_0_axi_periph/M02_ARESETN] [get_bd_pins ps8_0_axi_periph/S00_ARESETN] [get_bd_pins rst_ps8_0_99M/peripheral_aresetn] [get_bd_pins secure_storage_to_ecdsa_buffer_controller/s_axi_aresetn] [get_bd_pins storage_uartlite/s_axi_aresetn] [get_bd_pins zcu_ecdsa_program_controller/s_axi_aresetn] [get_bd_pins zcu_ecdsa_uartlite/s_axi_aresetn] [get_bd_pins zcu_enclave_uartlite/s_axi_aresetn] [get_bd_pins zcu_secure_storage_controller/s_axi_aresetn] [get_bd_pins zcu_secure_storage_program_controller/s_axi_aresetn] [get_bd_pins zcu_storage_uartlite/s_axi_aresetn] [get_bd_pins zcu_to_shared_message_buffer/s_axi_aresetn]
  connect_bd_net -net secure_storage_microblaze_Clk [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins axi_mem_intercon/M01_ACLK] [get_bd_pins axi_mem_intercon/M02_ACLK] [get_bd_pins axi_mem_intercon/M03_ACLK] [get_bd_pins axi_mem_intercon/M04_ACLK] [get_bd_pins axi_mem_intercon/M05_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins axi_mem_intercon_1/ACLK] [get_bd_pins axi_mem_intercon_1/M00_ACLK] [get_bd_pins axi_mem_intercon_1/M01_ACLK] [get_bd_pins axi_mem_intercon_1/M02_ACLK] [get_bd_pins axi_mem_intercon_1/S00_ACLK] [get_bd_pins axi_mem_intercon_2/ACLK] [get_bd_pins axi_mem_intercon_2/M00_ACLK] [get_bd_pins axi_mem_intercon_2/M01_ACLK] [get_bd_pins axi_mem_intercon_2/M02_ACLK] [get_bd_pins axi_mem_intercon_2/S00_ACLK] [get_bd_pins axi_smc/aclk] [get_bd_pins ecdsa_local_memory/LMB_Clk] [get_bd_pins ecdsa_message_control/s_axi_aclk] [get_bd_pins ecdsa_microblaze/Clk] [get_bd_pins ecdsa_to_enclave_program_memory/s_axi_aclk] [get_bd_pins ecdsa_to_message_buffer_controller/s_axi_aclk] [get_bd_pins ecdsa_to_shared_buffer/s_axi_aclk] [get_bd_pins ecdsa_to_storage_buffer_controller/s_axi_aclk] [get_bd_pins ecdsa_uartlite/s_axi_aclk] [get_bd_pins enclave_local_memory/LMB_Clk] [get_bd_pins enclave_message_control/s_axi_aclk] [get_bd_pins enclave_microblaze/Clk] [get_bd_pins enclave_to_message_buffer_controller/s_axi_aclk] [get_bd_pins enclave_uartlite/s_axi_aclk] [get_bd_pins external_reset/s_axi_aclk] [get_bd_pins microblaze_secure_storage_controller/s_axi_aclk] [get_bd_pins ps8_0_axi_periph/ACLK] [get_bd_pins ps8_0_axi_periph/M00_ACLK] [get_bd_pins ps8_0_axi_periph/M01_ACLK] [get_bd_pins ps8_0_axi_periph/M02_ACLK] [get_bd_pins ps8_0_axi_periph/S00_ACLK] [get_bd_pins rst_ps8_0_99M/slowest_sync_clk] [get_bd_pins secure_storage_microblaze/Clk] [get_bd_pins secure_storage_microblaze_local_memory/LMB_Clk] [get_bd_pins secure_storage_to_ecdsa_buffer_controller/s_axi_aclk] [get_bd_pins storage_uartlite/s_axi_aclk] [get_bd_pins zcu_ecdsa_program_controller/s_axi_aclk] [get_bd_pins zcu_ecdsa_uartlite/s_axi_aclk] [get_bd_pins zcu_enclave_uartlite/s_axi_aclk] [get_bd_pins zcu_secure_storage_controller/s_axi_aclk] [get_bd_pins zcu_secure_storage_program_controller/s_axi_aclk] [get_bd_pins zcu_storage_uartlite/s_axi_aclk] [get_bd_pins zcu_to_shared_message_buffer/s_axi_aclk] [get_bd_pins zynq_ultra_ps_e_0/maxihpm0_fpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/maxihpm1_fpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0]
  connect_bd_net -net storage_uartlite_tx [get_bd_pins storage_uartlite/tx] [get_bd_pins zcu_storage_uartlite/rx]
  connect_bd_net -net zcu_ecdsa_uartlite_tx [get_bd_pins ecdsa_uartlite/rx] [get_bd_pins zcu_ecdsa_uartlite/tx]
  connect_bd_net -net zcu_enclave_uartlite_tx [get_bd_pins enclave_uartlite/rx] [get_bd_pins zcu_enclave_uartlite/tx]
  connect_bd_net -net zcu_storage_uartlite_tx [get_bd_pins storage_uartlite/rx] [get_bd_pins zcu_storage_uartlite/tx]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_resetn0 [get_bd_pins rst_ps8_0_99M/ext_reset_in] [get_bd_pins zynq_ultra_ps_e_0/pl_resetn0]

  # Create address segments
  create_bd_addr_seg -range 0x00020000 -offset 0x00020000 [get_bd_addr_spaces ecdsa_microblaze/Data] [get_bd_addr_segs ecdsa_to_enclave_program_memory/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces ecdsa_microblaze/Data] [get_bd_addr_segs ecdsa_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces ecdsa_microblaze/Instruction] [get_bd_addr_segs ecdsa_local_memory/dlmb_bram_if_cntlr/SLMB1/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces ecdsa_microblaze/Data] [get_bd_addr_segs ecdsa_message_control/S_AXI/Reg] SEG_ecdsa_message_control_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0xC0000000 [get_bd_addr_spaces ecdsa_microblaze/Data] [get_bd_addr_segs ecdsa_to_message_buffer_controller/S_AXI/Mem0] SEG_ecdsa_to_message_buffer_controller_Mem0
  create_bd_addr_seg -range 0x00008000 -offset 0xA0040000 [get_bd_addr_spaces ecdsa_microblaze/Data] [get_bd_addr_segs ecdsa_to_shared_buffer/S_AXI/Mem0] SEG_ecdsa_to_shared_buffer_Mem0
  create_bd_addr_seg -range 0x00008000 -offset 0xC2000000 [get_bd_addr_spaces ecdsa_microblaze/Data] [get_bd_addr_segs ecdsa_to_storage_buffer_controller/S_AXI/Mem0] SEG_ecdsa_to_storage_buffer_controller_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x40600000 [get_bd_addr_spaces ecdsa_microblaze/Data] [get_bd_addr_segs ecdsa_uartlite/S_AXI/Reg] SEG_ecdsa_uartlite_Reg
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces enclave_microblaze/Data] [get_bd_addr_segs enclave_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces enclave_microblaze/Instruction] [get_bd_addr_segs enclave_local_memory/dlmb_bram_if_cntlr/SLMB1/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces enclave_microblaze/Data] [get_bd_addr_segs enclave_message_control/S_AXI/Reg] SEG_enclave_message_signal_out_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0xC0000000 [get_bd_addr_spaces enclave_microblaze/Data] [get_bd_addr_segs enclave_to_message_buffer_controller/S_AXI/Mem0] SEG_enclave_to_message_buffer_controller_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x40600000 [get_bd_addr_spaces enclave_microblaze/Data] [get_bd_addr_segs enclave_uartlite/S_AXI/Reg] SEG_enclave_uartlite_Reg
  create_bd_addr_seg -range 0x00008000 -offset 0x00000000 [get_bd_addr_spaces secure_storage_microblaze/Data] [get_bd_addr_segs secure_storage_microblaze_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00008000 -offset 0x00000000 [get_bd_addr_spaces secure_storage_microblaze/Instruction] [get_bd_addr_segs secure_storage_microblaze_local_memory/dlmb_bram_if_cntlr/SLMB1/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00008000 -offset 0xC2000000 [get_bd_addr_spaces secure_storage_microblaze/Data] [get_bd_addr_segs secure_storage_to_ecdsa_buffer_controller/S_AXI/Mem0] SEG_ecdsa_secure_storage_buffer_controller_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0xC0000000 [get_bd_addr_spaces secure_storage_microblaze/Data] [get_bd_addr_segs microblaze_secure_storage_controller/S_AXI/Mem0] SEG_microblaze_secure_storage_controller_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x40600000 [get_bd_addr_spaces secure_storage_microblaze/Data] [get_bd_addr_segs storage_uartlite/S_AXI/Reg] SEG_storage_uartlite_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0xA0010000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs external_reset/S_AXI/Reg] SEG_external_reset_Reg
  create_bd_addr_seg -range 0x00020000 -offset 0xA0020000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs zcu_ecdsa_program_controller/S_AXI/Mem0] SEG_zcu_ecdsa_program_controller_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0xB0010000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs zcu_ecdsa_uartlite/S_AXI/Reg] SEG_zcu_ecdsa_uartlite_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0xB0020000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs zcu_enclave_uartlite/S_AXI/Reg] SEG_zcu_enclave_uartlite_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0xA0000000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs zcu_secure_storage_controller/S_AXI/Mem0] SEG_zcu_secure_storage_controller_Mem0
  create_bd_addr_seg -range 0x00008000 -offset 0xA0048000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs zcu_secure_storage_program_controller/S_AXI/Mem0] SEG_zcu_secure_storage_program_controller_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0xB0000000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs zcu_storage_uartlite/S_AXI/Reg] SEG_zcu_storage_uartlite_Reg
  create_bd_addr_seg -range 0x00008000 -offset 0xA0040000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs zcu_to_shared_message_buffer/S_AXI/Mem0] SEG_zcu_to_shared_message_buffer_Mem0


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


