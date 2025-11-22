set_property SRC_FILE_INFO {cfile:E:/Projects/VLSI/32BitMIPSArch/MIPS325/MIPS325.srcs/constrs_1/new/ConstraintFile.xdc rfile:../MIPS325.srcs/constrs_1/new/ConstraintFile.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:45 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_dataMem1
set_property src_info {type:XDC file:1 line:46 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_EXMEM_WriteDataOfMem
set_property src_info {type:XDC file:1 line:47 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_EXMEM_ALUResult
set_property src_info {type:XDC file:1 line:48 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_Register_File
set_property src_info {type:XDC file:1 line:49 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_IDEX_rs_rt_rd
set_property src_info {type:XDC file:1 line:50 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_MEMWB_ReadDataOfMem
set_property src_info {type:XDC file:1 line:51 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_IDEX_ReadData1
set_property src_info {type:XDC file:1 line:52 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_IDEX_ReadData2
set_property src_info {type:XDC file:1 line:53 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_IFID_Instruction
set_property src_info {type:XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_MEMWB_ALUResult
set_property src_info {type:XDC file:1 line:55 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_IDEX_Im16_Ext
set_property src_info {type:XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_EXMEM_MemWrite
set_property src_info {type:XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_PC_Reg
set_property src_info {type:XDC file:1 line:58 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_IDEX_ALUOp1
set_property src_info {type:XDC file:1 line:59 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_IDEX_PC4
set_property src_info {type:XDC file:1 line:60 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_MEMWB_WriteRegister4
set_property src_info {type:XDC file:1 line:61 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_MEMWB_WriteRegister1
set_property src_info {type:XDC file:1 line:68 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_dataMem1_1
add_cells_to_pblock [get_pblocks pblock_dataMem1_1] [get_cells -quiet [list dataMem1]]
set_property src_info {type:XDC file:1 line:70 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_EXMEM_ALUResult_1
add_cells_to_pblock [get_pblocks pblock_EXMEM_ALUResult_1] [get_cells -quiet [list EXMEM_ALUResult]]
set_property src_info {type:XDC file:1 line:72 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_EXMEM_WriteDataOfMem_1
add_cells_to_pblock [get_pblocks pblock_EXMEM_WriteDataOfMem_1] [get_cells -quiet [list EXMEM_WriteDataOfMem]]
set_property src_info {type:XDC file:1 line:74 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_Register_File_1
add_cells_to_pblock [get_pblocks pblock_Register_File_1] [get_cells -quiet [list Register_File]]
set_property src_info {type:XDC file:1 line:76 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_IDEX_rs_rt_rd_1
add_cells_to_pblock [get_pblocks pblock_IDEX_rs_rt_rd_1] [get_cells -quiet [list IDEX_rs_rt_rd]]
