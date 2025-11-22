set_property PACKAGE_PIN AF8 [get_ports clk]
set_property IOSTANDARD LVCMOS25 [get_ports clk]
set_property PACKAGE_PIN AE15 [get_ports reset]
set_property IOSTANDARD LVCMOS18 [get_ports reset]

set_property PACKAGE_PIN J25 [get_ports CarryFlag]
set_property IOSTANDARD LVCMOS33 [get_ports CarryFlag]
set_property PACKAGE_PIN M24 [get_ports NegativeFlag]
set_property IOSTANDARD LVCMOS33 [get_ports NegativeFlag]
set_property PACKAGE_PIN L24 [get_ports OverflowFlag]
set_property IOSTANDARD LVCMOS33 [get_ports OverflowFlag]
set_property PACKAGE_PIN K25 [get_ports ZeroFlag]
set_property IOSTANDARD LVCMOS33 [get_ports ZeroFlag]
set_property PACKAGE_PIN K26 [get_ports notZeroFlag]
set_property IOSTANDARD LVCMOS33 [get_ports notZeroFlag]

create_clock -period 15.000 -name CC1 -waveform {0.000 7.500} -add [get_ports clk]
create_clock -period 17.000 -name CC2 -waveform {0.000 8.500} -add [get_ports clk]
create_clock -period 19.000 -name CC3 -waveform {0.000 9.500} -add [get_ports clk]
set_clock_groups -name exclusive_clk0_clk1 -physically_exclusive -group CC1 -group CC2 -group CC3
set_clock_groups -name exclusive_clk0_clk1 -physically_exclusive -group [get_clocks -include_generated_clocks CC1] -group [get_clocks -include_generated_clocks CC2] -group [get_clocks -include_generated_clocks CC3]

#set_input_delay -clock [get_clocks clk] -min -add_delay 2.000 [get_ports reset]
#set_input_delay -clock [get_clocks clk] -max -add_delay 2.500 [get_ports reset]
#set_output_delay -clock [get_clocks clk] -min -add_delay 0.050 [get_ports CarryFlag]
#set_output_delay -clock [get_clocks clk] -max -add_delay 1.500 [get_ports CarryFlag]
#set_output_delay -clock [get_clocks clk] -min -add_delay 0.050 [get_ports NegativeFlag]
#set_output_delay -clock [get_clocks clk] -max -add_delay 1.500 [get_ports NegativeFlag]
#set_output_delay -clock [get_clocks clk] -min -add_delay 0.050 [get_ports OverflowFlag]
#set_output_delay -clock [get_clocks clk] -max -add_delay 1.500 [get_ports OverflowFlag]
#set_output_delay -clock [get_clocks clk] -min -add_delay 0.050 [get_ports ZeroFlag]
#set_output_delay -clock [get_clocks clk] -max -add_delay 1.500 [get_ports ZeroFlag]
#set_output_delay -clock [get_clocks clk] -min -add_delay 0.050 [get_ports notZeroFlag]
#set_output_delay -clock [get_clocks clk] -max -add_delay 1.500 [get_ports notZeroFlag]


set_property PACKAGE_PIN M25 [get_ports JRControl]
set_property PACKAGE_PIN L25 [get_ports JumpControl]
set_property PACKAGE_PIN H22 [get_ports JumpFlush]
set_property IOSTANDARD LVCMOS33 [get_ports JRControl]
set_property IOSTANDARD LVCMOS33 [get_ports JumpControl]
set_property IOSTANDARD LVCMOS33 [get_ports JumpFlush]


create_pblock pblock_dataMem1
create_pblock pblock_EXMEM_WriteDataOfMem
create_pblock pblock_EXMEM_ALUResult
create_pblock pblock_Register_File
create_pblock pblock_IDEX_rs_rt_rd
create_pblock pblock_MEMWB_ReadDataOfMem
create_pblock pblock_IDEX_ReadData1
create_pblock pblock_IDEX_ReadData2
create_pblock pblock_IFID_Instruction
create_pblock pblock_MEMWB_ALUResult
create_pblock pblock_IDEX_Im16_Ext
create_pblock pblock_EXMEM_MemWrite
create_pblock pblock_PC_Reg
create_pblock pblock_IDEX_ALUOp1
create_pblock pblock_IDEX_PC4
create_pblock pblock_MEMWB_WriteRegister4
create_pblock pblock_MEMWB_WriteRegister1






create_pblock pblock_dataMem1_1
add_cells_to_pblock [get_pblocks pblock_dataMem1_1] [get_cells -quiet [list dataMem1]]
create_pblock pblock_EXMEM_ALUResult_1
add_cells_to_pblock [get_pblocks pblock_EXMEM_ALUResult_1] [get_cells -quiet [list EXMEM_ALUResult]]
create_pblock pblock_EXMEM_WriteDataOfMem_1
add_cells_to_pblock [get_pblocks pblock_EXMEM_WriteDataOfMem_1] [get_cells -quiet [list EXMEM_WriteDataOfMem]]
create_pblock pblock_Register_File_1
add_cells_to_pblock [get_pblocks pblock_Register_File_1] [get_cells -quiet [list Register_File]]
create_pblock pblock_IDEX_rs_rt_rd_1
add_cells_to_pblock [get_pblocks pblock_IDEX_rs_rt_rd_1] [get_cells -quiet [list IDEX_rs_rt_rd]]
