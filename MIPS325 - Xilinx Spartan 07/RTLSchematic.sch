# File saved with Nlview 7.0r6  2020-01-29 bk=1.5227 VDI=41 GEI=36 GUI=JA:10.0 non-TLS-threadsafe
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #f0f0f0
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new MIPSpipeline work:MIPSpipeline:NOFILE -nosplit
load symbol ALUControl_Block work:ALUControl_Block:NOFILE HIERBOX pinBus ALUControl output.right [1:0] pinBus ALUOp input.left [1:0] pinBus Function input.left [5:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Add work:Add:NOFILE HIERBOX pinBus A input.left [31:0] pinBus B input.left [31:0] pinBus S output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Add work:abstract:NOFILE HIERBOX pinBus A input.left [31:0] pinBus B input.left [31:0] pinBus S output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Discard_Instr work:Discard_Instr:NOFILE HIERBOX pin ID_flush output.right pin IF_flush output.right pin bne input.left pin jr input.left pin jump input.left boxcolor 1 fillcolor 2 minwidth 13%
load symbol register work:abstract:NOFILE HIERBOX pin WriteEn input.left pin clk input.left pin reset input.left pinBus RegIn input.left [31:0] pinBus RegOut output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RegBit work:abstract:NOFILE HIERBOX pin BitData input.left pin BitOut output.right pin WriteEn input.left pin clk input.left pin reset input.left boxcolor 1 fillcolor 2 minwidth 13%
load symbol ForwardingUnit work:ForwardingUnit:NOFILE HIERBOX pin MEM_RegWrite input.left pin WB_RegWrite input.left pinBus EX_rs input.left [4:0] pinBus EX_rt input.left [4:0] pinBus ForwardA output.right [1:0] pinBus ForwardB output.right [1:0] pinBus MEM_WriteRegister input.left [4:0] pinBus WB_WriteRegister input.left [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol InstructionMem work:InstructionMem:NOFILE HIERBOX pinBus address input.left [31:0] pinBus instruction output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol JRControl_Block work:JRControl_Block:NOFILE HIERBOX pin JRControl output.right pinBus ALUOp input.left [1:0] pinBus Function input.left [5:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Control work:Control:NOFILE HIERBOX pin ALUSrc output.right pin Branch output.right pin Jump output.right pin MemRead output.right pin MemWrite output.right pin MemtoReg output.right pin RegDst output.right pin RegWrite output.right pin SignZero output.right pinBus ALUOp output.right [1:0] pinBus Opcode input.left [5:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_OR work OR pin I0 input pin I1 input pin O output fillcolor 1
load symbol register work:register:NOFILE HIERBOX pin WriteEn input.left pin clk input.left pin reset input.left pinBus RegIn input.left [31:0] pinBus RegOut output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RegFile work:RegFile:NOFILE HIERBOX pin RegWrite input.left pin clk input.left pin reset input.left pinBus ReadData1 output.right [31:0] pinBus ReadData2 output.right [31:0] pinBus ReadRegister1 input.left [4:0] pinBus ReadRegister2 input.left [4:0] pinBus WriteData input.left [31:0] pinBus WriteRegister input.left [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol StallControl work:StallControl:NOFILE HIERBOX pin EX_MemRead input.left pin IFID_WriteEn output.right pin PC_WriteEn output.right pin Stall_flush output.right pinBus EX_rt input.left [4:0] pinBus ID_Op input.left [5:0] pinBus ID_rs input.left [4:0] pinBus ID_rt input.left [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol WB_forward work:WB_forward:NOFILE HIERBOX pin RegWrite input.left pinBus ReadData1 input.left [31:0] pinBus ReadData1Out output.right [31:0] pinBus ReadData2 input.left [31:0] pinBus ReadData2Out output.right [31:0] pinBus WriteData input.left [31:0] pinBus WriteRegister input.left [4:0] pinBus rs input.left [4:0] pinBus rt input.left [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol ALU work:ALU:NOFILE HIERBOX pin CarryOut output.right pin negative output.right pin overflow output.right pin zero output.right pinBus ALUControl input.left [1:0] pinBus BussA input.left [31:0] pinBus BussB input.left [31:0] pinBus Output output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_AND workI1 AND pin I0 input pin I1 input.neg pin O output fillcolor 1
load symbol RTL_AND work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol dataMem work:dataMem:NOFILE HIERBOX pin MemRead input.left pin clk input.left pin writeenable input.left pinBus address input.left [31:0] pinBus data output.right [31:0] pinBus writedata input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol flush_block work:flush_block:NOFILE HIERBOX pin ALUSrc input.left pin Branch input.left pin ID_ALUSrc output.right pin ID_Branch output.right pin ID_JRControl output.right pin ID_MemRead output.right pin ID_MemWrite output.right pin ID_MemtoReg output.right pin ID_RegDst output.right pin ID_RegWrite output.right pin JRControl input.left pin MemRead input.left pin MemWrite input.left pin MemtoReg input.left pin RegDst input.left pin RegWrite input.left pin flush input.left pinBus ALUOp input.left [1:0] pinBus ID_ALUOp output.right [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol mux3x32to32 work:mux3x32to32:NOFILE HIERBOX pinBus A input.left [31:0] pinBus B input.left [31:0] pinBus C input.left [31:0] pinBus DataOut output.right [31:0] pinBus Select input.left [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol mux3x32to32 work:abstract:NOFILE HIERBOX pinBus A input.left [31:0] pinBus B input.left [31:0] pinBus C input.left [31:0] pinBus DataOut output.right [31:0] pinBus Select input.left [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol mux2x32to32 work:abstract:NOFILE HIERBOX pin Select input.left pinBus Data0 input.left [31:0] pinBus Data1 input.left [31:0] pinBus DataOut output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol mux2x5to5 work:mux2x5to5:NOFILE HIERBOX pin Select input.left pinBus Addr0 input.left [4:0] pinBus Addr1 input.left [4:0] pinBus AddrOut output.right [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_INV3 work INV pin I0 input pin O output fillcolor 1
load symbol shift_left_2 work:shift_left_2:NOFILE HIERBOX pinBus In32 input.left [31:0] pinBus Out32 output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol shift_left_2 work:abstract:NOFILE HIERBOX pinBus In32 input.left [31:0] pinBus Out32 output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol sign_extend work:sign_extend:NOFILE HIERBOX pinBus sIn16 input.left [15:0] pinBus sOut32 output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol zero_extend work:zero_extend:NOFILE HIERBOX pinBus zIn16 input.left [15:0] pinBus zOut32 output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load port CarryFlag output -pg 1 -lvl 24 -x 8700 -y 1410
load port JRControl output -pg 1 -lvl 24 -x 8700 -y 1080
load port JumpControl output -pg 1 -lvl 24 -x 8700 -y 1710
load port JumpFlush output -pg 1 -lvl 24 -x 8700 -y 1830
load port NegativeFlag output -pg 1 -lvl 24 -x 8700 -y 1450
load port OverflowFlag output -pg 1 -lvl 24 -x 8700 -y 1470
load port ZeroFlag output -pg 1 -lvl 24 -x 8700 -y 1490
load port clk input -pg 1 -lvl 0 -x 0 -y 880
load port notZeroFlag output -pg 1 -lvl 24 -x 8700 -y 1850
load port reset input -pg 1 -lvl 0 -x 0 -y 900
load inst ALUControl_Block1 ALUControl_Block work:ALUControl_Block:NOFILE -autohide -attr @cell(#000000) ALUControl_Block -pinBusAttr ALUControl @name ALUControl[1:0] -pinBusAttr ALUOp @name ALUOp[1:0] -pinBusAttr Function @name Function[5:0] -pg 1 -lvl 22 -x 8180 -y 1280
load inst Add1 Add work:Add:NOFILE -autohide -attr @cell(#000000) Add -pinBusAttr A @name A[31:0] -pinBusAttr B @name B[31:0] -pinBusAttr B @attr V=X\"00000004\" -pinBusAttr S @name S[31:0] -pg 1 -lvl 9 -x 3210 -y 1640
load inst Add_bne Add work:abstract:NOFILE -autohide -attr @cell(#000000) Add -pinBusAttr A @name A[31:0] -pinBusAttr B @name B[31:0] -pinBusAttr S @name S[31:0] -pg 1 -lvl 12 -x 4490 -y 1540
load inst Discard_Instr_Block Discard_Instr work:Discard_Instr:NOFILE -autohide -attr @cell(#000000) Discard_Instr -pg 1 -lvl 16 -x 5970 -y 1320
load inst EXMEM_ALUResult register work:abstract:NOFILE -autohide -attr @cell(#000000) register -pinBusAttr RegIn @name RegIn[31:0] -pinBusAttr RegOut @name RegOut[31:0] -pg 1 -lvl 5 -x 1640 -y 1090
load inst EXMEM_MemRead RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 7 -x 2370 -y 1290
load inst EXMEM_MemWrite RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 7 -x 2370 -y 1550
load inst EXMEM_MemtoReg RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 8 -x 2760 -y 1550
load inst EXMEM_RegWrite RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 3 -x 850 -y 850
load inst EXMEM_WriteDataOfMem register work:abstract:NOFILE -autohide -attr @cell(#000000) register -pinBusAttr RegIn @name RegIn[31:0] -pinBusAttr RegOut @name RegOut[31:0] -pg 1 -lvl 7 -x 2370 -y 1110
load inst EXMEM_WriteRegister0 RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 3 -x 850 -y 100
load inst EXMEM_WriteRegister1 RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 3 -x 850 -y 250
load inst EXMEM_WriteRegister2 RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 3 -x 850 -y 400
load inst EXMEM_WriteRegister3 RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 3 -x 850 -y 550
load inst EXMEM_WriteRegister4 RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 3 -x 850 -y 700
load inst Forwarding_Block ForwardingUnit work:ForwardingUnit:NOFILE -autohide -attr @cell(#000000) ForwardingUnit -pinBusAttr EX_rs @name EX_rs[4:0] -pinBusAttr EX_rt @name EX_rt[4:0] -pinBusAttr ForwardA @name ForwardA[1:0] -pinBusAttr ForwardB @name ForwardB[1:0] -pinBusAttr MEM_WriteRegister @name MEM_WriteRegister[4:0] -pinBusAttr WB_WriteRegister @name WB_WriteRegister[4:0] -pg 1 -lvl 5 -x 1640 -y 850
load inst IDEX_ALUOp0 RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 21 -x 7920 -y 840
load inst IDEX_ALUOp1 RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 21 -x 7920 -y 990
load inst IDEX_ALUSrc RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 21 -x 7920 -y 1170
load inst IDEX_Branch RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 11 -x 4130 -y 1180
load inst IDEX_Im16_Ext register work:abstract:NOFILE -autohide -attr @cell(#000000) register -pinBusAttr RegIn @name RegIn[31:0] -pinBusAttr RegOut @name RegOut[31:0] -pg 1 -lvl 10 -x 3640 -y 1300
load inst IDEX_JRControl RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 14 -x 5310 -y 1180
load inst IDEX_MemRead RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 6 -x 1980 -y 1330
load inst IDEX_MemWrite RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 6 -x 1980 -y 1550
load inst IDEX_MemtoReg RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 7 -x 2370 -y 1730
load inst IDEX_PC4 register work:abstract:NOFILE -autohide -attr @cell(#000000) register -pinBusAttr RegIn @name RegIn[31:0] -pinBusAttr RegOut @name RegOut[31:0] -pg 1 -lvl 11 -x 4130 -y 1360
load inst IDEX_ReadData1 register work:abstract:NOFILE -autohide -attr @cell(#000000) register -pinBusAttr RegIn @name RegIn[31:0] -pinBusAttr RegOut @name RegOut[31:0] -pg 1 -lvl 13 -x 4960 -y 860
load inst IDEX_ReadData2 register work:abstract:NOFILE -autohide -attr @cell(#000000) register -pinBusAttr RegIn @name RegIn[31:0] -pinBusAttr RegOut @name RegOut[31:0] -pg 1 -lvl 5 -x 1640 -y 1240
load inst IDEX_RegDst RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 1 -x 180 -y 830
load inst IDEX_RegWrite RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 2 -x 540 -y 890
load inst IDEX_rs_rt_rd register work:abstract:NOFILE -autohide -attr @cell(#000000) register -pinBusAttr RegIn @name RegIn[31:0] -pinBusAttr RegOut @name RegOut[31:0] -pg 1 -lvl 1 -x 180 -y 1090
load inst IFID_Instruction register work:abstract:NOFILE -autohide -attr @cell(#000000) register -pinBusAttr RegIn @name RegIn[31:0] -pinBusAttr RegOut @name RegOut[31:0] -pg 1 -lvl 18 -x 6690 -y 1180
load inst IFID_PC4 register work:abstract:NOFILE -autohide -attr @cell(#000000) register -pinBusAttr RegIn @name RegIn[31:0] -pinBusAttr RegOut @name RegOut[31:0] -pg 1 -lvl 10 -x 3640 -y 1520
load inst IF_flush_bit RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 17 -x 6350 -y 1340
load inst InstructionMem1 InstructionMem work:InstructionMem:NOFILE -autohide -attr @cell(#000000) InstructionMem -pinBusAttr address @name address[31:0] -pinBusAttr instruction @name instruction[31:0] -pg 1 -lvl 17 -x 6350 -y 1160
load inst JRControl_Block1 JRControl_Block work:JRControl_Block:NOFILE -autohide -attr @cell(#000000) JRControl_Block -pinBusAttr ALUOp @name ALUOp[1:0] -pinBusAttr Function @name Function[5:0] -pg 1 -lvl 23 -x 8500 -y 1070
load inst MEMWB_ALUResult register work:abstract:NOFILE -autohide -attr @cell(#000000) register -pinBusAttr RegIn @name RegIn[31:0] -pinBusAttr RegOut @name RegOut[31:0] -pg 1 -lvl 9 -x 3210 -y 1140
load inst MEMWB_MemtoReg RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 9 -x 3210 -y 1490
load inst MEMWB_ReadDataOfMem register work:abstract:NOFILE -autohide -attr @cell(#000000) register -pinBusAttr RegIn @name RegIn[31:0] -pinBusAttr RegOut @name RegOut[31:0] -pg 1 -lvl 9 -x 3210 -y 1290
load inst MEMWB_RegWrite RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 4 -x 1150 -y 810
load inst MEMWB_WriteRegister0 RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 4 -x 1150 -y 60
load inst MEMWB_WriteRegister1 RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 4 -x 1150 -y 210
load inst MEMWB_WriteRegister2 RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 4 -x 1150 -y 360
load inst MEMWB_WriteRegister3 RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 4 -x 1150 -y 510
load inst MEMWB_WriteRegister4 RegBit work:abstract:NOFILE -autohide -attr @cell(#000000) RegBit -pg 1 -lvl 4 -x 1150 -y 660
load inst MainControl Control work:Control:NOFILE -autohide -attr @cell(#000000) Control -pinBusAttr ALUOp @name ALUOp[1:0] -pinBusAttr Opcode @name Opcode[5:0] -pg 1 -lvl 19 -x 7020 -y 800
load inst OR_flush_i RTL_OR work -attr @cell(#000000) RTL_OR -pinAttr I0 @attr FO=1 -pinAttr I1 @attr FO=3 -pinAttr O @attr FO=1 -pg 1 -lvl 18 -x 6690 -y 1320
load inst OR_flush_i__0 RTL_OR work -attr @cell(#000000) RTL_OR -pinAttr I0 @attr FO=1 -pinAttr I1 @attr FO=2 -pinAttr O @attr FO=1 -pg 1 -lvl 19 -x 7020 -y 1200
load inst PC_Reg register work:register:NOFILE -autohide -attr @cell(#000000) register -pinBusAttr RegIn @name RegIn[31:0] -pinBusAttr RegOut @name RegOut[31:0] -pg 1 -lvl 16 -x 5970 -y 1160
load inst Register_File RegFile work:RegFile:NOFILE -autohide -attr @cell(#000000) RegFile -pinBusAttr ReadData1 @name ReadData1[31:0] -pinBusAttr ReadData2 @name ReadData2[31:0] -pinBusAttr ReadRegister1 @name ReadRegister1[4:0] -pinBusAttr ReadRegister2 @name ReadRegister2[4:0] -pinBusAttr WriteData @name WriteData[31:0] -pinBusAttr WriteRegister @name WriteRegister[4:0] -pg 1 -lvl 11 -x 4130 -y 480
load inst StallControl_block StallControl work:StallControl:NOFILE -autohide -attr @cell(#000000) StallControl -pinBusAttr EX_rt @name EX_rt[4:0] -pinBusAttr ID_Op @name ID_Op[5:0] -pinBusAttr ID_rs @name ID_rs[4:0] -pinBusAttr ID_rt @name ID_rt[4:0] -pg 1 -lvl 9 -x 3210 -y 620
load inst WB_forward_block WB_forward work:WB_forward:NOFILE -autohide -attr @cell(#000000) WB_forward -pinBusAttr ReadData1 @name ReadData1[31:0] -pinBusAttr ReadData1Out @name ReadData1Out[31:0] -pinBusAttr ReadData2 @name ReadData2[31:0] -pinBusAttr ReadData2Out @name ReadData2Out[31:0] -pinBusAttr WriteData @name WriteData[31:0] -pinBusAttr WriteRegister @name WriteRegister[4:0] -pinBusAttr rs @name rs[4:0] -pinBusAttr rt @name rt[4:0] -pg 1 -lvl 12 -x 4490 -y 520
load inst alu_block ALU work:ALU:NOFILE -autohide -attr @cell(#000000) ALU -pinBusAttr ALUControl @name ALUControl[1:0] -pinBusAttr BussA @name BussA[31:0] -pinBusAttr BussB @name BussB[31:0] -pinBusAttr Output @name Output[31:0] -pg 1 -lvl 23 -x 8500 -y 1400
load inst andJumpBNE_i RTL_AND workI1 -attr @cell(#000000) RTL_AND -pinAttr I0 @attr FO=2 -pinAttr I1 @attr FO=67 -pinAttr O @attr FO=66 -pg 1 -lvl 23 -x 8500 -y 1760
load inst andJumpFlush_i RTL_AND workI1 -attr @cell(#000000) RTL_AND -pinAttr I0 @attr FO=1 -pinAttr I1 @attr FO=3 -pinAttr O @attr FO=2 -pg 1 -lvl 22 -x 8180 -y 1540
load inst andbneControl_i RTL_AND work -attr @cell(#000000) RTL_AND -pinAttr I0 @attr FO=2 -pinAttr I1 @attr FO=2 -pinAttr O @attr FO=67 -pg 1 -lvl 12 -x 4490 -y 1720
load inst dataMem1 dataMem work:dataMem:NOFILE -autohide -attr @cell(#000000) dataMem -pinBusAttr address @name address[31:0] -pinBusAttr data @name data[31:0] -pinBusAttr writedata @name writedata[31:0] -pg 1 -lvl 8 -x 2760 -y 1270
load inst flush_block1 flush_block work:flush_block:NOFILE -autohide -attr @cell(#000000) flush_block -pinBusAttr ALUOp @name ALUOp[1:0] -pinBusAttr ID_ALUOp @name ID_ALUOp[1:0] -pg 1 -lvl 20 -x 7480 -y 860
load inst mux3A mux3x32to32 work:mux3x32to32:NOFILE -autohide -attr @cell(#000000) mux3x32to32 -pinBusAttr A @name A[31:0] -pinBusAttr B @name B[31:0] -pinBusAttr C @name C[31:0] -pinBusAttr DataOut @name DataOut[31:0] -pinBusAttr Select @name Select[1:0] -pg 1 -lvl 14 -x 5310 -y 880
load inst mux3B mux3x32to32 work:abstract:NOFILE -autohide -attr @cell(#000000) mux3x32to32 -pinBusAttr A @name A[31:0] -pinBusAttr B @name B[31:0] -pinBusAttr C @name C[31:0] -pinBusAttr DataOut @name DataOut[31:0] -pinBusAttr Select @name Select[1:0] -pg 1 -lvl 6 -x 1980 -y 890
load inst muxALUSrc mux2x32to32 work:abstract:NOFILE -autohide -attr @cell(#000000) mux2x32to32 -pinBusAttr Data0 @name Data0[31:0] -pinBusAttr Data1 @name Data1[31:0] -pinBusAttr DataOut @name DataOut[31:0] -pg 1 -lvl 22 -x 8180 -y 1150
load inst muxJR mux2x32to32 work:abstract:NOFILE -autohide -attr @cell(#000000) mux2x32to32 -pinBusAttr Data0 @name Data0[31:0] -pinBusAttr Data1 @name Data1[31:0] -pinBusAttr DataOut @name DataOut[31:0] -pg 1 -lvl 15 -x 5640 -y 1280
load inst muxJump mux2x32to32 work:abstract:NOFILE -autohide -attr @cell(#000000) mux2x32to32 -pinBusAttr Data0 @name Data0[31:0] -pinBusAttr Data1 @name Data1[31:0] -pinBusAttr DataOut @name DataOut[31:0] -pg 1 -lvl 14 -x 5310 -y 1560
load inst muxMemtoReg mux2x32to32 work:abstract:NOFILE -autohide -attr @cell(#000000) mux2x32to32 -pinBusAttr Data0 @name Data0[31:0] -pinBusAttr Data1 @name Data1[31:0] -pinBusAttr DataOut @name DataOut[31:0] -pg 1 -lvl 10 -x 3640 -y 1160
load inst muxRegDst mux2x5to5 work:mux2x5to5:NOFILE -autohide -attr @cell(#000000) mux2x5to5 -pinBusAttr Addr0 @name Addr0[4:0] -pinBusAttr Addr1 @name Addr1[4:0] -pinBusAttr AddrOut @name AddrOut[4:0] -pg 1 -lvl 2 -x 540 -y 710
load inst muxSignZero mux2x32to32 work:abstract:NOFILE -autohide -attr @cell(#000000) mux2x32to32 -pinBusAttr Data0 @name Data0[31:0] -pinBusAttr Data1 @name Data1[31:0] -pinBusAttr DataOut @name DataOut[31:0] -pg 1 -lvl 9 -x 3210 -y 900
load inst muxbneControl mux2x32to32 work:abstract:NOFILE -autohide -attr @cell(#000000) mux2x32to32 -pinBusAttr Data0 @name Data0[31:0] -pinBusAttr Data1 @name Data1[31:0] -pinBusAttr DataOut @name DataOut[31:0] -pg 1 -lvl 13 -x 4960 -y 1760
load inst notZero_i RTL_INV3 work -attr @cell(#000000) RTL_INV -pinAttr I0 @attr FO=2 -pinAttr O @attr FO=2 -pg 1 -lvl 23 -x 8500 -y 1890
load inst shiftleft2_bne shift_left_2 work:shift_left_2:NOFILE -autohide -attr @cell(#000000) shift_left_2 -pinBusAttr In32 @name In32[31:0] -pinBusAttr Out32 @name Out32[31:0] -pg 1 -lvl 11 -x 4130 -y 1560
load inst shiftleft2_jump shift_left_2 work:abstract:NOFILE -autohide -attr @cell(#000000) shift_left_2 -pinBusAttr In32 @name In32[31:0] -pinBusAttr Out32 @name Out32[31:0] -pg 1 -lvl 13 -x 4960 -y 1580
load inst sign_extend1 sign_extend work:sign_extend:NOFILE -autohide -attr @cell(#000000) sign_extend -pinBusAttr sIn16 @name sIn16[15:0] -pinBusAttr sOut32 @name sOut32[31:0] -pg 1 -lvl 8 -x 2760 -y 860
load inst zero_extend1 zero_extend work:zero_extend:NOFILE -autohide -attr @cell(#000000) zero_extend -pinBusAttr zIn16 @name zIn16[15:0] -pinBusAttr zOut32 @name zOut32[31:0] -pg 1 -lvl 8 -x 2760 -y 950
load net <const0> -ground -pin Add1 B[31] -pin Add1 B[30] -pin Add1 B[29] -pin Add1 B[28] -pin Add1 B[27] -pin Add1 B[26] -pin Add1 B[25] -pin Add1 B[24] -pin Add1 B[23] -pin Add1 B[22] -pin Add1 B[21] -pin Add1 B[20] -pin Add1 B[19] -pin Add1 B[18] -pin Add1 B[17] -pin Add1 B[16] -pin Add1 B[15] -pin Add1 B[14] -pin Add1 B[13] -pin Add1 B[12] -pin Add1 B[11] -pin Add1 B[10] -pin Add1 B[9] -pin Add1 B[8] -pin Add1 B[7] -pin Add1 B[6] -pin Add1 B[5] -pin Add1 B[4] -pin Add1 B[3] -pin Add1 B[1] -pin Add1 B[0] -pin shiftleft2_jump In32[31] -pin shiftleft2_jump In32[30] -pin shiftleft2_jump In32[29] -pin shiftleft2_jump In32[28] -pin shiftleft2_jump In32[27] -pin shiftleft2_jump In32[26]
load net <const1> -power -attr @rip 2 -pin Add1 B[2] -pin EXMEM_ALUResult WriteEn -pin EXMEM_MemRead WriteEn -pin EXMEM_MemWrite WriteEn -pin EXMEM_MemtoReg WriteEn -pin EXMEM_RegWrite WriteEn -pin EXMEM_WriteDataOfMem WriteEn -pin EXMEM_WriteRegister0 WriteEn -pin EXMEM_WriteRegister1 WriteEn -pin EXMEM_WriteRegister2 WriteEn -pin EXMEM_WriteRegister3 WriteEn -pin EXMEM_WriteRegister4 WriteEn -pin IDEX_ALUOp0 WriteEn -pin IDEX_ALUOp1 WriteEn -pin IDEX_ALUSrc WriteEn -pin IDEX_Branch WriteEn -pin IDEX_Im16_Ext WriteEn -pin IDEX_JRControl WriteEn -pin IDEX_MemRead WriteEn -pin IDEX_MemWrite WriteEn -pin IDEX_MemtoReg WriteEn -pin IDEX_PC4 WriteEn -pin IDEX_ReadData1 WriteEn -pin IDEX_ReadData2 WriteEn -pin IDEX_RegDst WriteEn -pin IDEX_RegWrite WriteEn -pin IDEX_rs_rt_rd WriteEn -pin MEMWB_ALUResult WriteEn -pin MEMWB_MemtoReg WriteEn -pin MEMWB_ReadDataOfMem WriteEn -pin MEMWB_RegWrite WriteEn -pin MEMWB_WriteRegister0 WriteEn -pin MEMWB_WriteRegister1 WriteEn -pin MEMWB_WriteRegister2 WriteEn -pin MEMWB_WriteRegister3 WriteEn -pin MEMWB_WriteRegister4 WriteEn
load net ALUControl[0] -attr @rip ALUControl[0] -pin ALUControl_Block1 ALUControl[0] -pin alu_block ALUControl[0]
load net ALUControl[1] -attr @rip ALUControl[1] -pin ALUControl_Block1 ALUControl[1] -pin alu_block ALUControl[1]
load net ALUOp[0] -attr @rip ALUOp[0] -pin JRControl_Block1 ALUOp[0] -pin MainControl ALUOp[0] -pin flush_block1 ALUOp[0]
load net ALUOp[1] -attr @rip ALUOp[1] -pin JRControl_Block1 ALUOp[1] -pin MainControl ALUOp[1] -pin flush_block1 ALUOp[1]
load net ALUSrc -pin MainControl ALUSrc -pin flush_block1 ALUSrc
netloc ALUSrc 1 19 1 7380 830n
load net Branch -pin MainControl Branch -pin flush_block1 Branch
netloc Branch 1 19 1 7360 850n
load net Bus_B_ALU[0] -attr @rip DataOut[0] -pin alu_block BussB[0] -pin muxALUSrc DataOut[0]
load net Bus_B_ALU[10] -attr @rip DataOut[10] -pin alu_block BussB[10] -pin muxALUSrc DataOut[10]
load net Bus_B_ALU[11] -attr @rip DataOut[11] -pin alu_block BussB[11] -pin muxALUSrc DataOut[11]
load net Bus_B_ALU[12] -attr @rip DataOut[12] -pin alu_block BussB[12] -pin muxALUSrc DataOut[12]
load net Bus_B_ALU[13] -attr @rip DataOut[13] -pin alu_block BussB[13] -pin muxALUSrc DataOut[13]
load net Bus_B_ALU[14] -attr @rip DataOut[14] -pin alu_block BussB[14] -pin muxALUSrc DataOut[14]
load net Bus_B_ALU[15] -attr @rip DataOut[15] -pin alu_block BussB[15] -pin muxALUSrc DataOut[15]
load net Bus_B_ALU[16] -attr @rip DataOut[16] -pin alu_block BussB[16] -pin muxALUSrc DataOut[16]
load net Bus_B_ALU[17] -attr @rip DataOut[17] -pin alu_block BussB[17] -pin muxALUSrc DataOut[17]
load net Bus_B_ALU[18] -attr @rip DataOut[18] -pin alu_block BussB[18] -pin muxALUSrc DataOut[18]
load net Bus_B_ALU[19] -attr @rip DataOut[19] -pin alu_block BussB[19] -pin muxALUSrc DataOut[19]
load net Bus_B_ALU[1] -attr @rip DataOut[1] -pin alu_block BussB[1] -pin muxALUSrc DataOut[1]
load net Bus_B_ALU[20] -attr @rip DataOut[20] -pin alu_block BussB[20] -pin muxALUSrc DataOut[20]
load net Bus_B_ALU[21] -attr @rip DataOut[21] -pin alu_block BussB[21] -pin muxALUSrc DataOut[21]
load net Bus_B_ALU[22] -attr @rip DataOut[22] -pin alu_block BussB[22] -pin muxALUSrc DataOut[22]
load net Bus_B_ALU[23] -attr @rip DataOut[23] -pin alu_block BussB[23] -pin muxALUSrc DataOut[23]
load net Bus_B_ALU[24] -attr @rip DataOut[24] -pin alu_block BussB[24] -pin muxALUSrc DataOut[24]
load net Bus_B_ALU[25] -attr @rip DataOut[25] -pin alu_block BussB[25] -pin muxALUSrc DataOut[25]
load net Bus_B_ALU[26] -attr @rip DataOut[26] -pin alu_block BussB[26] -pin muxALUSrc DataOut[26]
load net Bus_B_ALU[27] -attr @rip DataOut[27] -pin alu_block BussB[27] -pin muxALUSrc DataOut[27]
load net Bus_B_ALU[28] -attr @rip DataOut[28] -pin alu_block BussB[28] -pin muxALUSrc DataOut[28]
load net Bus_B_ALU[29] -attr @rip DataOut[29] -pin alu_block BussB[29] -pin muxALUSrc DataOut[29]
load net Bus_B_ALU[2] -attr @rip DataOut[2] -pin alu_block BussB[2] -pin muxALUSrc DataOut[2]
load net Bus_B_ALU[30] -attr @rip DataOut[30] -pin alu_block BussB[30] -pin muxALUSrc DataOut[30]
load net Bus_B_ALU[31] -attr @rip DataOut[31] -pin alu_block BussB[31] -pin muxALUSrc DataOut[31]
load net Bus_B_ALU[3] -attr @rip DataOut[3] -pin alu_block BussB[3] -pin muxALUSrc DataOut[3]
load net Bus_B_ALU[4] -attr @rip DataOut[4] -pin alu_block BussB[4] -pin muxALUSrc DataOut[4]
load net Bus_B_ALU[5] -attr @rip DataOut[5] -pin alu_block BussB[5] -pin muxALUSrc DataOut[5]
load net Bus_B_ALU[6] -attr @rip DataOut[6] -pin alu_block BussB[6] -pin muxALUSrc DataOut[6]
load net Bus_B_ALU[7] -attr @rip DataOut[7] -pin alu_block BussB[7] -pin muxALUSrc DataOut[7]
load net Bus_B_ALU[8] -attr @rip DataOut[8] -pin alu_block BussB[8] -pin muxALUSrc DataOut[8]
load net Bus_B_ALU[9] -attr @rip DataOut[9] -pin alu_block BussB[9] -pin muxALUSrc DataOut[9]
load net Bus_B_forwarded[0] -attr @rip DataOut[0] -pin EXMEM_WriteDataOfMem RegIn[0] -pin mux3B DataOut[0] -pin muxALUSrc Data0[0]
load net Bus_B_forwarded[10] -attr @rip DataOut[10] -pin EXMEM_WriteDataOfMem RegIn[10] -pin mux3B DataOut[10] -pin muxALUSrc Data0[10]
load net Bus_B_forwarded[11] -attr @rip DataOut[11] -pin EXMEM_WriteDataOfMem RegIn[11] -pin mux3B DataOut[11] -pin muxALUSrc Data0[11]
load net Bus_B_forwarded[12] -attr @rip DataOut[12] -pin EXMEM_WriteDataOfMem RegIn[12] -pin mux3B DataOut[12] -pin muxALUSrc Data0[12]
load net Bus_B_forwarded[13] -attr @rip DataOut[13] -pin EXMEM_WriteDataOfMem RegIn[13] -pin mux3B DataOut[13] -pin muxALUSrc Data0[13]
load net Bus_B_forwarded[14] -attr @rip DataOut[14] -pin EXMEM_WriteDataOfMem RegIn[14] -pin mux3B DataOut[14] -pin muxALUSrc Data0[14]
load net Bus_B_forwarded[15] -attr @rip DataOut[15] -pin EXMEM_WriteDataOfMem RegIn[15] -pin mux3B DataOut[15] -pin muxALUSrc Data0[15]
load net Bus_B_forwarded[16] -attr @rip DataOut[16] -pin EXMEM_WriteDataOfMem RegIn[16] -pin mux3B DataOut[16] -pin muxALUSrc Data0[16]
load net Bus_B_forwarded[17] -attr @rip DataOut[17] -pin EXMEM_WriteDataOfMem RegIn[17] -pin mux3B DataOut[17] -pin muxALUSrc Data0[17]
load net Bus_B_forwarded[18] -attr @rip DataOut[18] -pin EXMEM_WriteDataOfMem RegIn[18] -pin mux3B DataOut[18] -pin muxALUSrc Data0[18]
load net Bus_B_forwarded[19] -attr @rip DataOut[19] -pin EXMEM_WriteDataOfMem RegIn[19] -pin mux3B DataOut[19] -pin muxALUSrc Data0[19]
load net Bus_B_forwarded[1] -attr @rip DataOut[1] -pin EXMEM_WriteDataOfMem RegIn[1] -pin mux3B DataOut[1] -pin muxALUSrc Data0[1]
load net Bus_B_forwarded[20] -attr @rip DataOut[20] -pin EXMEM_WriteDataOfMem RegIn[20] -pin mux3B DataOut[20] -pin muxALUSrc Data0[20]
load net Bus_B_forwarded[21] -attr @rip DataOut[21] -pin EXMEM_WriteDataOfMem RegIn[21] -pin mux3B DataOut[21] -pin muxALUSrc Data0[21]
load net Bus_B_forwarded[22] -attr @rip DataOut[22] -pin EXMEM_WriteDataOfMem RegIn[22] -pin mux3B DataOut[22] -pin muxALUSrc Data0[22]
load net Bus_B_forwarded[23] -attr @rip DataOut[23] -pin EXMEM_WriteDataOfMem RegIn[23] -pin mux3B DataOut[23] -pin muxALUSrc Data0[23]
load net Bus_B_forwarded[24] -attr @rip DataOut[24] -pin EXMEM_WriteDataOfMem RegIn[24] -pin mux3B DataOut[24] -pin muxALUSrc Data0[24]
load net Bus_B_forwarded[25] -attr @rip DataOut[25] -pin EXMEM_WriteDataOfMem RegIn[25] -pin mux3B DataOut[25] -pin muxALUSrc Data0[25]
load net Bus_B_forwarded[26] -attr @rip DataOut[26] -pin EXMEM_WriteDataOfMem RegIn[26] -pin mux3B DataOut[26] -pin muxALUSrc Data0[26]
load net Bus_B_forwarded[27] -attr @rip DataOut[27] -pin EXMEM_WriteDataOfMem RegIn[27] -pin mux3B DataOut[27] -pin muxALUSrc Data0[27]
load net Bus_B_forwarded[28] -attr @rip DataOut[28] -pin EXMEM_WriteDataOfMem RegIn[28] -pin mux3B DataOut[28] -pin muxALUSrc Data0[28]
load net Bus_B_forwarded[29] -attr @rip DataOut[29] -pin EXMEM_WriteDataOfMem RegIn[29] -pin mux3B DataOut[29] -pin muxALUSrc Data0[29]
load net Bus_B_forwarded[2] -attr @rip DataOut[2] -pin EXMEM_WriteDataOfMem RegIn[2] -pin mux3B DataOut[2] -pin muxALUSrc Data0[2]
load net Bus_B_forwarded[30] -attr @rip DataOut[30] -pin EXMEM_WriteDataOfMem RegIn[30] -pin mux3B DataOut[30] -pin muxALUSrc Data0[30]
load net Bus_B_forwarded[31] -attr @rip DataOut[31] -pin EXMEM_WriteDataOfMem RegIn[31] -pin mux3B DataOut[31] -pin muxALUSrc Data0[31]
load net Bus_B_forwarded[3] -attr @rip DataOut[3] -pin EXMEM_WriteDataOfMem RegIn[3] -pin mux3B DataOut[3] -pin muxALUSrc Data0[3]
load net Bus_B_forwarded[4] -attr @rip DataOut[4] -pin EXMEM_WriteDataOfMem RegIn[4] -pin mux3B DataOut[4] -pin muxALUSrc Data0[4]
load net Bus_B_forwarded[5] -attr @rip DataOut[5] -pin EXMEM_WriteDataOfMem RegIn[5] -pin mux3B DataOut[5] -pin muxALUSrc Data0[5]
load net Bus_B_forwarded[6] -attr @rip DataOut[6] -pin EXMEM_WriteDataOfMem RegIn[6] -pin mux3B DataOut[6] -pin muxALUSrc Data0[6]
load net Bus_B_forwarded[7] -attr @rip DataOut[7] -pin EXMEM_WriteDataOfMem RegIn[7] -pin mux3B DataOut[7] -pin muxALUSrc Data0[7]
load net Bus_B_forwarded[8] -attr @rip DataOut[8] -pin EXMEM_WriteDataOfMem RegIn[8] -pin mux3B DataOut[8] -pin muxALUSrc Data0[8]
load net Bus_B_forwarded[9] -attr @rip DataOut[9] -pin EXMEM_WriteDataOfMem RegIn[9] -pin mux3B DataOut[9] -pin muxALUSrc Data0[9]
load net CarryFlag -port CarryFlag -pin alu_block CarryOut
netloc CarryFlag 1 23 1 NJ 1410
load net EX_ALUOp[0] -attr @rip 0 -pin ALUControl_Block1 ALUOp[0] -pin IDEX_ALUOp0 BitOut
load net EX_ALUOp[1] -attr @rip 1 -pin ALUControl_Block1 ALUOp[1] -pin IDEX_ALUOp1 BitOut
load net EX_ALUResult[0] -attr @rip Output[0] -pin EXMEM_ALUResult RegIn[0] -pin alu_block Output[0]
load net EX_ALUResult[10] -attr @rip Output[10] -pin EXMEM_ALUResult RegIn[10] -pin alu_block Output[10]
load net EX_ALUResult[11] -attr @rip Output[11] -pin EXMEM_ALUResult RegIn[11] -pin alu_block Output[11]
load net EX_ALUResult[12] -attr @rip Output[12] -pin EXMEM_ALUResult RegIn[12] -pin alu_block Output[12]
load net EX_ALUResult[13] -attr @rip Output[13] -pin EXMEM_ALUResult RegIn[13] -pin alu_block Output[13]
load net EX_ALUResult[14] -attr @rip Output[14] -pin EXMEM_ALUResult RegIn[14] -pin alu_block Output[14]
load net EX_ALUResult[15] -attr @rip Output[15] -pin EXMEM_ALUResult RegIn[15] -pin alu_block Output[15]
load net EX_ALUResult[16] -attr @rip Output[16] -pin EXMEM_ALUResult RegIn[16] -pin alu_block Output[16]
load net EX_ALUResult[17] -attr @rip Output[17] -pin EXMEM_ALUResult RegIn[17] -pin alu_block Output[17]
load net EX_ALUResult[18] -attr @rip Output[18] -pin EXMEM_ALUResult RegIn[18] -pin alu_block Output[18]
load net EX_ALUResult[19] -attr @rip Output[19] -pin EXMEM_ALUResult RegIn[19] -pin alu_block Output[19]
load net EX_ALUResult[1] -attr @rip Output[1] -pin EXMEM_ALUResult RegIn[1] -pin alu_block Output[1]
load net EX_ALUResult[20] -attr @rip Output[20] -pin EXMEM_ALUResult RegIn[20] -pin alu_block Output[20]
load net EX_ALUResult[21] -attr @rip Output[21] -pin EXMEM_ALUResult RegIn[21] -pin alu_block Output[21]
load net EX_ALUResult[22] -attr @rip Output[22] -pin EXMEM_ALUResult RegIn[22] -pin alu_block Output[22]
load net EX_ALUResult[23] -attr @rip Output[23] -pin EXMEM_ALUResult RegIn[23] -pin alu_block Output[23]
load net EX_ALUResult[24] -attr @rip Output[24] -pin EXMEM_ALUResult RegIn[24] -pin alu_block Output[24]
load net EX_ALUResult[25] -attr @rip Output[25] -pin EXMEM_ALUResult RegIn[25] -pin alu_block Output[25]
load net EX_ALUResult[26] -attr @rip Output[26] -pin EXMEM_ALUResult RegIn[26] -pin alu_block Output[26]
load net EX_ALUResult[27] -attr @rip Output[27] -pin EXMEM_ALUResult RegIn[27] -pin alu_block Output[27]
load net EX_ALUResult[28] -attr @rip Output[28] -pin EXMEM_ALUResult RegIn[28] -pin alu_block Output[28]
load net EX_ALUResult[29] -attr @rip Output[29] -pin EXMEM_ALUResult RegIn[29] -pin alu_block Output[29]
load net EX_ALUResult[2] -attr @rip Output[2] -pin EXMEM_ALUResult RegIn[2] -pin alu_block Output[2]
load net EX_ALUResult[30] -attr @rip Output[30] -pin EXMEM_ALUResult RegIn[30] -pin alu_block Output[30]
load net EX_ALUResult[31] -attr @rip Output[31] -pin EXMEM_ALUResult RegIn[31] -pin alu_block Output[31]
load net EX_ALUResult[3] -attr @rip Output[3] -pin EXMEM_ALUResult RegIn[3] -pin alu_block Output[3]
load net EX_ALUResult[4] -attr @rip Output[4] -pin EXMEM_ALUResult RegIn[4] -pin alu_block Output[4]
load net EX_ALUResult[5] -attr @rip Output[5] -pin EXMEM_ALUResult RegIn[5] -pin alu_block Output[5]
load net EX_ALUResult[6] -attr @rip Output[6] -pin EXMEM_ALUResult RegIn[6] -pin alu_block Output[6]
load net EX_ALUResult[7] -attr @rip Output[7] -pin EXMEM_ALUResult RegIn[7] -pin alu_block Output[7]
load net EX_ALUResult[8] -attr @rip Output[8] -pin EXMEM_ALUResult RegIn[8] -pin alu_block Output[8]
load net EX_ALUResult[9] -attr @rip Output[9] -pin EXMEM_ALUResult RegIn[9] -pin alu_block Output[9]
load net EX_ALUSrc -pin IDEX_ALUSrc BitOut -pin muxALUSrc Select
netloc EX_ALUSrc 1 21 1 N 1200
load net EX_Branch -pin IDEX_Branch BitOut -pin andbneControl_i I0
netloc EX_Branch 1 11 1 4360 1210n
load net EX_Im16_Ext[0] -attr @rip RegOut[0] -pin ALUControl_Block1 Function[0] -pin IDEX_Im16_Ext RegOut[0] -pin muxALUSrc Data1[0] -pin shiftleft2_bne In32[0]
load net EX_Im16_Ext[10] -attr @rip RegOut[10] -pin IDEX_Im16_Ext RegOut[10] -pin muxALUSrc Data1[10] -pin shiftleft2_bne In32[10]
load net EX_Im16_Ext[11] -attr @rip RegOut[11] -pin IDEX_Im16_Ext RegOut[11] -pin muxALUSrc Data1[11] -pin shiftleft2_bne In32[11]
load net EX_Im16_Ext[12] -attr @rip RegOut[12] -pin IDEX_Im16_Ext RegOut[12] -pin muxALUSrc Data1[12] -pin shiftleft2_bne In32[12]
load net EX_Im16_Ext[13] -attr @rip RegOut[13] -pin IDEX_Im16_Ext RegOut[13] -pin muxALUSrc Data1[13] -pin shiftleft2_bne In32[13]
load net EX_Im16_Ext[14] -attr @rip RegOut[14] -pin IDEX_Im16_Ext RegOut[14] -pin muxALUSrc Data1[14] -pin shiftleft2_bne In32[14]
load net EX_Im16_Ext[15] -attr @rip RegOut[15] -pin IDEX_Im16_Ext RegOut[15] -pin muxALUSrc Data1[15] -pin shiftleft2_bne In32[15]
load net EX_Im16_Ext[16] -attr @rip RegOut[16] -pin IDEX_Im16_Ext RegOut[16] -pin muxALUSrc Data1[16] -pin shiftleft2_bne In32[16]
load net EX_Im16_Ext[17] -attr @rip RegOut[17] -pin IDEX_Im16_Ext RegOut[17] -pin muxALUSrc Data1[17] -pin shiftleft2_bne In32[17]
load net EX_Im16_Ext[18] -attr @rip RegOut[18] -pin IDEX_Im16_Ext RegOut[18] -pin muxALUSrc Data1[18] -pin shiftleft2_bne In32[18]
load net EX_Im16_Ext[19] -attr @rip RegOut[19] -pin IDEX_Im16_Ext RegOut[19] -pin muxALUSrc Data1[19] -pin shiftleft2_bne In32[19]
load net EX_Im16_Ext[1] -attr @rip RegOut[1] -pin ALUControl_Block1 Function[1] -pin IDEX_Im16_Ext RegOut[1] -pin muxALUSrc Data1[1] -pin shiftleft2_bne In32[1]
load net EX_Im16_Ext[20] -attr @rip RegOut[20] -pin IDEX_Im16_Ext RegOut[20] -pin muxALUSrc Data1[20] -pin shiftleft2_bne In32[20]
load net EX_Im16_Ext[21] -attr @rip RegOut[21] -pin IDEX_Im16_Ext RegOut[21] -pin muxALUSrc Data1[21] -pin shiftleft2_bne In32[21]
load net EX_Im16_Ext[22] -attr @rip RegOut[22] -pin IDEX_Im16_Ext RegOut[22] -pin muxALUSrc Data1[22] -pin shiftleft2_bne In32[22]
load net EX_Im16_Ext[23] -attr @rip RegOut[23] -pin IDEX_Im16_Ext RegOut[23] -pin muxALUSrc Data1[23] -pin shiftleft2_bne In32[23]
load net EX_Im16_Ext[24] -attr @rip RegOut[24] -pin IDEX_Im16_Ext RegOut[24] -pin muxALUSrc Data1[24] -pin shiftleft2_bne In32[24]
load net EX_Im16_Ext[25] -attr @rip RegOut[25] -pin IDEX_Im16_Ext RegOut[25] -pin muxALUSrc Data1[25] -pin shiftleft2_bne In32[25]
load net EX_Im16_Ext[26] -attr @rip RegOut[26] -pin IDEX_Im16_Ext RegOut[26] -pin muxALUSrc Data1[26] -pin shiftleft2_bne In32[26]
load net EX_Im16_Ext[27] -attr @rip RegOut[27] -pin IDEX_Im16_Ext RegOut[27] -pin muxALUSrc Data1[27] -pin shiftleft2_bne In32[27]
load net EX_Im16_Ext[28] -attr @rip RegOut[28] -pin IDEX_Im16_Ext RegOut[28] -pin muxALUSrc Data1[28] -pin shiftleft2_bne In32[28]
load net EX_Im16_Ext[29] -attr @rip RegOut[29] -pin IDEX_Im16_Ext RegOut[29] -pin muxALUSrc Data1[29] -pin shiftleft2_bne In32[29]
load net EX_Im16_Ext[2] -attr @rip RegOut[2] -pin ALUControl_Block1 Function[2] -pin IDEX_Im16_Ext RegOut[2] -pin muxALUSrc Data1[2] -pin shiftleft2_bne In32[2]
load net EX_Im16_Ext[30] -attr @rip RegOut[30] -pin IDEX_Im16_Ext RegOut[30] -pin muxALUSrc Data1[30] -pin shiftleft2_bne In32[30]
load net EX_Im16_Ext[31] -attr @rip RegOut[31] -pin IDEX_Im16_Ext RegOut[31] -pin muxALUSrc Data1[31] -pin shiftleft2_bne In32[31]
load net EX_Im16_Ext[3] -attr @rip RegOut[3] -pin ALUControl_Block1 Function[3] -pin IDEX_Im16_Ext RegOut[3] -pin muxALUSrc Data1[3] -pin shiftleft2_bne In32[3]
load net EX_Im16_Ext[4] -attr @rip RegOut[4] -pin ALUControl_Block1 Function[4] -pin IDEX_Im16_Ext RegOut[4] -pin muxALUSrc Data1[4] -pin shiftleft2_bne In32[4]
load net EX_Im16_Ext[5] -attr @rip RegOut[5] -pin ALUControl_Block1 Function[5] -pin IDEX_Im16_Ext RegOut[5] -pin muxALUSrc Data1[5] -pin shiftleft2_bne In32[5]
load net EX_Im16_Ext[6] -attr @rip RegOut[6] -pin IDEX_Im16_Ext RegOut[6] -pin muxALUSrc Data1[6] -pin shiftleft2_bne In32[6]
load net EX_Im16_Ext[7] -attr @rip RegOut[7] -pin IDEX_Im16_Ext RegOut[7] -pin muxALUSrc Data1[7] -pin shiftleft2_bne In32[7]
load net EX_Im16_Ext[8] -attr @rip RegOut[8] -pin IDEX_Im16_Ext RegOut[8] -pin muxALUSrc Data1[8] -pin shiftleft2_bne In32[8]
load net EX_Im16_Ext[9] -attr @rip RegOut[9] -pin IDEX_Im16_Ext RegOut[9] -pin muxALUSrc Data1[9] -pin shiftleft2_bne In32[9]
load net EX_Instruction[11] -attr @rip RegOut[11] -pin IDEX_rs_rt_rd RegOut[11] -pin muxRegDst Addr1[0]
load net EX_Instruction[12] -attr @rip RegOut[12] -pin IDEX_rs_rt_rd RegOut[12] -pin muxRegDst Addr1[1]
load net EX_Instruction[13] -attr @rip RegOut[13] -pin IDEX_rs_rt_rd RegOut[13] -pin muxRegDst Addr1[2]
load net EX_Instruction[14] -attr @rip RegOut[14] -pin IDEX_rs_rt_rd RegOut[14] -pin muxRegDst Addr1[3]
load net EX_Instruction[15] -attr @rip RegOut[15] -pin IDEX_rs_rt_rd RegOut[15] -pin muxRegDst Addr1[4]
load net EX_Instruction[16] -attr @rip RegOut[16] -pin Forwarding_Block EX_rt[0] -pin IDEX_rs_rt_rd RegOut[16] -pin StallControl_block EX_rt[0] -pin muxRegDst Addr0[0]
load net EX_Instruction[17] -attr @rip RegOut[17] -pin Forwarding_Block EX_rt[1] -pin IDEX_rs_rt_rd RegOut[17] -pin StallControl_block EX_rt[1] -pin muxRegDst Addr0[1]
load net EX_Instruction[18] -attr @rip RegOut[18] -pin Forwarding_Block EX_rt[2] -pin IDEX_rs_rt_rd RegOut[18] -pin StallControl_block EX_rt[2] -pin muxRegDst Addr0[2]
load net EX_Instruction[19] -attr @rip RegOut[19] -pin Forwarding_Block EX_rt[3] -pin IDEX_rs_rt_rd RegOut[19] -pin StallControl_block EX_rt[3] -pin muxRegDst Addr0[3]
load net EX_Instruction[20] -attr @rip RegOut[20] -pin Forwarding_Block EX_rt[4] -pin IDEX_rs_rt_rd RegOut[20] -pin StallControl_block EX_rt[4] -pin muxRegDst Addr0[4]
load net EX_Instruction[21] -attr @rip RegOut[21] -pin Forwarding_Block EX_rs[0] -pin IDEX_rs_rt_rd RegOut[21]
load net EX_Instruction[22] -attr @rip RegOut[22] -pin Forwarding_Block EX_rs[1] -pin IDEX_rs_rt_rd RegOut[22]
load net EX_Instruction[23] -attr @rip RegOut[23] -pin Forwarding_Block EX_rs[2] -pin IDEX_rs_rt_rd RegOut[23]
load net EX_Instruction[24] -attr @rip RegOut[24] -pin Forwarding_Block EX_rs[3] -pin IDEX_rs_rt_rd RegOut[24]
load net EX_Instruction[25] -attr @rip RegOut[25] -pin Forwarding_Block EX_rs[4] -pin IDEX_rs_rt_rd RegOut[25]
load net EX_JRControl -pin Discard_Instr_Block jr -pin IDEX_JRControl BitOut -pin muxJR Select
netloc EX_JRControl 1 14 2 5520 1370 5810J
load net EX_MemRead -pin EXMEM_MemRead BitData -pin IDEX_MemRead BitOut -pin StallControl_block EX_MemRead
netloc EX_MemRead 1 6 3 2150 630 NJ 630 NJ
load net EX_MemWrite -pin EXMEM_MemWrite BitData -pin IDEX_MemWrite BitOut
netloc EX_MemWrite 1 6 1 2230 1560n
load net EX_MemtoReg -pin EXMEM_MemtoReg BitData -pin IDEX_MemtoReg BitOut
netloc EX_MemtoReg 1 7 1 2620 1560n
load net EX_PC4[0] -attr @rip RegOut[0] -pin Add_bne A[0] -pin IDEX_PC4 RegOut[0]
load net EX_PC4[10] -attr @rip RegOut[10] -pin Add_bne A[10] -pin IDEX_PC4 RegOut[10]
load net EX_PC4[11] -attr @rip RegOut[11] -pin Add_bne A[11] -pin IDEX_PC4 RegOut[11]
load net EX_PC4[12] -attr @rip RegOut[12] -pin Add_bne A[12] -pin IDEX_PC4 RegOut[12]
load net EX_PC4[13] -attr @rip RegOut[13] -pin Add_bne A[13] -pin IDEX_PC4 RegOut[13]
load net EX_PC4[14] -attr @rip RegOut[14] -pin Add_bne A[14] -pin IDEX_PC4 RegOut[14]
load net EX_PC4[15] -attr @rip RegOut[15] -pin Add_bne A[15] -pin IDEX_PC4 RegOut[15]
load net EX_PC4[16] -attr @rip RegOut[16] -pin Add_bne A[16] -pin IDEX_PC4 RegOut[16]
load net EX_PC4[17] -attr @rip RegOut[17] -pin Add_bne A[17] -pin IDEX_PC4 RegOut[17]
load net EX_PC4[18] -attr @rip RegOut[18] -pin Add_bne A[18] -pin IDEX_PC4 RegOut[18]
load net EX_PC4[19] -attr @rip RegOut[19] -pin Add_bne A[19] -pin IDEX_PC4 RegOut[19]
load net EX_PC4[1] -attr @rip RegOut[1] -pin Add_bne A[1] -pin IDEX_PC4 RegOut[1]
load net EX_PC4[20] -attr @rip RegOut[20] -pin Add_bne A[20] -pin IDEX_PC4 RegOut[20]
load net EX_PC4[21] -attr @rip RegOut[21] -pin Add_bne A[21] -pin IDEX_PC4 RegOut[21]
load net EX_PC4[22] -attr @rip RegOut[22] -pin Add_bne A[22] -pin IDEX_PC4 RegOut[22]
load net EX_PC4[23] -attr @rip RegOut[23] -pin Add_bne A[23] -pin IDEX_PC4 RegOut[23]
load net EX_PC4[24] -attr @rip RegOut[24] -pin Add_bne A[24] -pin IDEX_PC4 RegOut[24]
load net EX_PC4[25] -attr @rip RegOut[25] -pin Add_bne A[25] -pin IDEX_PC4 RegOut[25]
load net EX_PC4[26] -attr @rip RegOut[26] -pin Add_bne A[26] -pin IDEX_PC4 RegOut[26]
load net EX_PC4[27] -attr @rip RegOut[27] -pin Add_bne A[27] -pin IDEX_PC4 RegOut[27]
load net EX_PC4[28] -attr @rip RegOut[28] -pin Add_bne A[28] -pin IDEX_PC4 RegOut[28]
load net EX_PC4[29] -attr @rip RegOut[29] -pin Add_bne A[29] -pin IDEX_PC4 RegOut[29]
load net EX_PC4[2] -attr @rip RegOut[2] -pin Add_bne A[2] -pin IDEX_PC4 RegOut[2]
load net EX_PC4[30] -attr @rip RegOut[30] -pin Add_bne A[30] -pin IDEX_PC4 RegOut[30]
load net EX_PC4[31] -attr @rip RegOut[31] -pin Add_bne A[31] -pin IDEX_PC4 RegOut[31]
load net EX_PC4[3] -attr @rip RegOut[3] -pin Add_bne A[3] -pin IDEX_PC4 RegOut[3]
load net EX_PC4[4] -attr @rip RegOut[4] -pin Add_bne A[4] -pin IDEX_PC4 RegOut[4]
load net EX_PC4[5] -attr @rip RegOut[5] -pin Add_bne A[5] -pin IDEX_PC4 RegOut[5]
load net EX_PC4[6] -attr @rip RegOut[6] -pin Add_bne A[6] -pin IDEX_PC4 RegOut[6]
load net EX_PC4[7] -attr @rip RegOut[7] -pin Add_bne A[7] -pin IDEX_PC4 RegOut[7]
load net EX_PC4[8] -attr @rip RegOut[8] -pin Add_bne A[8] -pin IDEX_PC4 RegOut[8]
load net EX_PC4[9] -attr @rip RegOut[9] -pin Add_bne A[9] -pin IDEX_PC4 RegOut[9]
load net EX_ReadData1[0] -attr @rip RegOut[0] -pin IDEX_ReadData1 RegOut[0] -pin mux3A A[0]
load net EX_ReadData1[10] -attr @rip RegOut[10] -pin IDEX_ReadData1 RegOut[10] -pin mux3A A[10]
load net EX_ReadData1[11] -attr @rip RegOut[11] -pin IDEX_ReadData1 RegOut[11] -pin mux3A A[11]
load net EX_ReadData1[12] -attr @rip RegOut[12] -pin IDEX_ReadData1 RegOut[12] -pin mux3A A[12]
load net EX_ReadData1[13] -attr @rip RegOut[13] -pin IDEX_ReadData1 RegOut[13] -pin mux3A A[13]
load net EX_ReadData1[14] -attr @rip RegOut[14] -pin IDEX_ReadData1 RegOut[14] -pin mux3A A[14]
load net EX_ReadData1[15] -attr @rip RegOut[15] -pin IDEX_ReadData1 RegOut[15] -pin mux3A A[15]
load net EX_ReadData1[16] -attr @rip RegOut[16] -pin IDEX_ReadData1 RegOut[16] -pin mux3A A[16]
load net EX_ReadData1[17] -attr @rip RegOut[17] -pin IDEX_ReadData1 RegOut[17] -pin mux3A A[17]
load net EX_ReadData1[18] -attr @rip RegOut[18] -pin IDEX_ReadData1 RegOut[18] -pin mux3A A[18]
load net EX_ReadData1[19] -attr @rip RegOut[19] -pin IDEX_ReadData1 RegOut[19] -pin mux3A A[19]
load net EX_ReadData1[1] -attr @rip RegOut[1] -pin IDEX_ReadData1 RegOut[1] -pin mux3A A[1]
load net EX_ReadData1[20] -attr @rip RegOut[20] -pin IDEX_ReadData1 RegOut[20] -pin mux3A A[20]
load net EX_ReadData1[21] -attr @rip RegOut[21] -pin IDEX_ReadData1 RegOut[21] -pin mux3A A[21]
load net EX_ReadData1[22] -attr @rip RegOut[22] -pin IDEX_ReadData1 RegOut[22] -pin mux3A A[22]
load net EX_ReadData1[23] -attr @rip RegOut[23] -pin IDEX_ReadData1 RegOut[23] -pin mux3A A[23]
load net EX_ReadData1[24] -attr @rip RegOut[24] -pin IDEX_ReadData1 RegOut[24] -pin mux3A A[24]
load net EX_ReadData1[25] -attr @rip RegOut[25] -pin IDEX_ReadData1 RegOut[25] -pin mux3A A[25]
load net EX_ReadData1[26] -attr @rip RegOut[26] -pin IDEX_ReadData1 RegOut[26] -pin mux3A A[26]
load net EX_ReadData1[27] -attr @rip RegOut[27] -pin IDEX_ReadData1 RegOut[27] -pin mux3A A[27]
load net EX_ReadData1[28] -attr @rip RegOut[28] -pin IDEX_ReadData1 RegOut[28] -pin mux3A A[28]
load net EX_ReadData1[29] -attr @rip RegOut[29] -pin IDEX_ReadData1 RegOut[29] -pin mux3A A[29]
load net EX_ReadData1[2] -attr @rip RegOut[2] -pin IDEX_ReadData1 RegOut[2] -pin mux3A A[2]
load net EX_ReadData1[30] -attr @rip RegOut[30] -pin IDEX_ReadData1 RegOut[30] -pin mux3A A[30]
load net EX_ReadData1[31] -attr @rip RegOut[31] -pin IDEX_ReadData1 RegOut[31] -pin mux3A A[31]
load net EX_ReadData1[3] -attr @rip RegOut[3] -pin IDEX_ReadData1 RegOut[3] -pin mux3A A[3]
load net EX_ReadData1[4] -attr @rip RegOut[4] -pin IDEX_ReadData1 RegOut[4] -pin mux3A A[4]
load net EX_ReadData1[5] -attr @rip RegOut[5] -pin IDEX_ReadData1 RegOut[5] -pin mux3A A[5]
load net EX_ReadData1[6] -attr @rip RegOut[6] -pin IDEX_ReadData1 RegOut[6] -pin mux3A A[6]
load net EX_ReadData1[7] -attr @rip RegOut[7] -pin IDEX_ReadData1 RegOut[7] -pin mux3A A[7]
load net EX_ReadData1[8] -attr @rip RegOut[8] -pin IDEX_ReadData1 RegOut[8] -pin mux3A A[8]
load net EX_ReadData1[9] -attr @rip RegOut[9] -pin IDEX_ReadData1 RegOut[9] -pin mux3A A[9]
load net EX_ReadData2[0] -attr @rip RegOut[0] -pin IDEX_ReadData2 RegOut[0] -pin mux3B A[0]
load net EX_ReadData2[10] -attr @rip RegOut[10] -pin IDEX_ReadData2 RegOut[10] -pin mux3B A[10]
load net EX_ReadData2[11] -attr @rip RegOut[11] -pin IDEX_ReadData2 RegOut[11] -pin mux3B A[11]
load net EX_ReadData2[12] -attr @rip RegOut[12] -pin IDEX_ReadData2 RegOut[12] -pin mux3B A[12]
load net EX_ReadData2[13] -attr @rip RegOut[13] -pin IDEX_ReadData2 RegOut[13] -pin mux3B A[13]
load net EX_ReadData2[14] -attr @rip RegOut[14] -pin IDEX_ReadData2 RegOut[14] -pin mux3B A[14]
load net EX_ReadData2[15] -attr @rip RegOut[15] -pin IDEX_ReadData2 RegOut[15] -pin mux3B A[15]
load net EX_ReadData2[16] -attr @rip RegOut[16] -pin IDEX_ReadData2 RegOut[16] -pin mux3B A[16]
load net EX_ReadData2[17] -attr @rip RegOut[17] -pin IDEX_ReadData2 RegOut[17] -pin mux3B A[17]
load net EX_ReadData2[18] -attr @rip RegOut[18] -pin IDEX_ReadData2 RegOut[18] -pin mux3B A[18]
load net EX_ReadData2[19] -attr @rip RegOut[19] -pin IDEX_ReadData2 RegOut[19] -pin mux3B A[19]
load net EX_ReadData2[1] -attr @rip RegOut[1] -pin IDEX_ReadData2 RegOut[1] -pin mux3B A[1]
load net EX_ReadData2[20] -attr @rip RegOut[20] -pin IDEX_ReadData2 RegOut[20] -pin mux3B A[20]
load net EX_ReadData2[21] -attr @rip RegOut[21] -pin IDEX_ReadData2 RegOut[21] -pin mux3B A[21]
load net EX_ReadData2[22] -attr @rip RegOut[22] -pin IDEX_ReadData2 RegOut[22] -pin mux3B A[22]
load net EX_ReadData2[23] -attr @rip RegOut[23] -pin IDEX_ReadData2 RegOut[23] -pin mux3B A[23]
load net EX_ReadData2[24] -attr @rip RegOut[24] -pin IDEX_ReadData2 RegOut[24] -pin mux3B A[24]
load net EX_ReadData2[25] -attr @rip RegOut[25] -pin IDEX_ReadData2 RegOut[25] -pin mux3B A[25]
load net EX_ReadData2[26] -attr @rip RegOut[26] -pin IDEX_ReadData2 RegOut[26] -pin mux3B A[26]
load net EX_ReadData2[27] -attr @rip RegOut[27] -pin IDEX_ReadData2 RegOut[27] -pin mux3B A[27]
load net EX_ReadData2[28] -attr @rip RegOut[28] -pin IDEX_ReadData2 RegOut[28] -pin mux3B A[28]
load net EX_ReadData2[29] -attr @rip RegOut[29] -pin IDEX_ReadData2 RegOut[29] -pin mux3B A[29]
load net EX_ReadData2[2] -attr @rip RegOut[2] -pin IDEX_ReadData2 RegOut[2] -pin mux3B A[2]
load net EX_ReadData2[30] -attr @rip RegOut[30] -pin IDEX_ReadData2 RegOut[30] -pin mux3B A[30]
load net EX_ReadData2[31] -attr @rip RegOut[31] -pin IDEX_ReadData2 RegOut[31] -pin mux3B A[31]
load net EX_ReadData2[3] -attr @rip RegOut[3] -pin IDEX_ReadData2 RegOut[3] -pin mux3B A[3]
load net EX_ReadData2[4] -attr @rip RegOut[4] -pin IDEX_ReadData2 RegOut[4] -pin mux3B A[4]
load net EX_ReadData2[5] -attr @rip RegOut[5] -pin IDEX_ReadData2 RegOut[5] -pin mux3B A[5]
load net EX_ReadData2[6] -attr @rip RegOut[6] -pin IDEX_ReadData2 RegOut[6] -pin mux3B A[6]
load net EX_ReadData2[7] -attr @rip RegOut[7] -pin IDEX_ReadData2 RegOut[7] -pin mux3B A[7]
load net EX_ReadData2[8] -attr @rip RegOut[8] -pin IDEX_ReadData2 RegOut[8] -pin mux3B A[8]
load net EX_ReadData2[9] -attr @rip RegOut[9] -pin IDEX_ReadData2 RegOut[9] -pin mux3B A[9]
load net EX_RegDst -pin IDEX_RegDst BitOut -pin muxRegDst Select
netloc EX_RegDst 1 1 1 370 760n
load net EX_RegWrite -pin EXMEM_RegWrite BitData -pin IDEX_RegWrite BitOut
netloc EX_RegWrite 1 2 1 710 860n
load net EX_WriteRegister[0] -attr @rip AddrOut[0] -pin EXMEM_WriteRegister0 BitData -pin muxRegDst AddrOut[0]
load net EX_WriteRegister[1] -attr @rip AddrOut[1] -pin EXMEM_WriteRegister1 BitData -pin muxRegDst AddrOut[1]
load net EX_WriteRegister[2] -attr @rip AddrOut[2] -pin EXMEM_WriteRegister2 BitData -pin muxRegDst AddrOut[2]
load net EX_WriteRegister[3] -attr @rip AddrOut[3] -pin EXMEM_WriteRegister3 BitData -pin muxRegDst AddrOut[3]
load net EX_WriteRegister[4] -attr @rip AddrOut[4] -pin EXMEM_WriteRegister4 BitData -pin muxRegDst AddrOut[4]
load net ForwardA[0] -attr @rip ForwardA[0] -pin Forwarding_Block ForwardA[0] -pin mux3A Select[0]
load net ForwardA[1] -attr @rip ForwardA[1] -pin Forwarding_Block ForwardA[1] -pin mux3A Select[1]
load net ForwardB[0] -attr @rip ForwardB[0] -pin Forwarding_Block ForwardB[0] -pin mux3B Select[0]
load net ForwardB[1] -attr @rip ForwardB[1] -pin Forwarding_Block ForwardB[1] -pin mux3B Select[1]
load net ID_ALUOp[0] -attr @rip ID_ALUOp[0] -pin IDEX_ALUOp0 BitData -pin flush_block1 ID_ALUOp[0]
load net ID_ALUOp[1] -attr @rip ID_ALUOp[1] -pin IDEX_ALUOp1 BitData -pin flush_block1 ID_ALUOp[1]
load net ID_ALUSrc -pin IDEX_ALUSrc BitData -pin flush_block1 ID_ALUSrc
netloc ID_ALUSrc 1 20 1 7760 890n
load net ID_Branch -pin IDEX_Branch BitData -pin flush_block1 ID_Branch
netloc ID_Branch 1 10 11 3970 1050 NJ 1050 NJ 1050 NJ 1050 NJ 1050 NJ 1050 NJ 1050 NJ 1050 NJ 1050 7280J 790 7700
load net ID_Instruction[0] -attr @rip RegOut[0] -pin IDEX_rs_rt_rd RegIn[0] -pin IFID_Instruction RegOut[0] -pin JRControl_Block1 Function[0] -pin shiftleft2_jump In32[0] -pin sign_extend1 sIn16[0] -pin zero_extend1 zIn16[0]
load net ID_Instruction[10] -attr @rip RegOut[10] -pin IDEX_rs_rt_rd RegIn[10] -pin IFID_Instruction RegOut[10] -pin shiftleft2_jump In32[10] -pin sign_extend1 sIn16[10] -pin zero_extend1 zIn16[10]
load net ID_Instruction[11] -attr @rip RegOut[11] -pin IDEX_rs_rt_rd RegIn[11] -pin IFID_Instruction RegOut[11] -pin shiftleft2_jump In32[11] -pin sign_extend1 sIn16[11] -pin zero_extend1 zIn16[11]
load net ID_Instruction[12] -attr @rip RegOut[12] -pin IDEX_rs_rt_rd RegIn[12] -pin IFID_Instruction RegOut[12] -pin shiftleft2_jump In32[12] -pin sign_extend1 sIn16[12] -pin zero_extend1 zIn16[12]
load net ID_Instruction[13] -attr @rip RegOut[13] -pin IDEX_rs_rt_rd RegIn[13] -pin IFID_Instruction RegOut[13] -pin shiftleft2_jump In32[13] -pin sign_extend1 sIn16[13] -pin zero_extend1 zIn16[13]
load net ID_Instruction[14] -attr @rip RegOut[14] -pin IDEX_rs_rt_rd RegIn[14] -pin IFID_Instruction RegOut[14] -pin shiftleft2_jump In32[14] -pin sign_extend1 sIn16[14] -pin zero_extend1 zIn16[14]
load net ID_Instruction[15] -attr @rip RegOut[15] -pin IDEX_rs_rt_rd RegIn[15] -pin IFID_Instruction RegOut[15] -pin shiftleft2_jump In32[15] -pin sign_extend1 sIn16[15] -pin zero_extend1 zIn16[15]
load net ID_Instruction[16] -attr @rip RegOut[16] -pin IDEX_rs_rt_rd RegIn[16] -pin IFID_Instruction RegOut[16] -pin Register_File ReadRegister2[0] -pin StallControl_block ID_rt[0] -pin WB_forward_block rt[0] -pin shiftleft2_jump In32[16]
load net ID_Instruction[17] -attr @rip RegOut[17] -pin IDEX_rs_rt_rd RegIn[17] -pin IFID_Instruction RegOut[17] -pin Register_File ReadRegister2[1] -pin StallControl_block ID_rt[1] -pin WB_forward_block rt[1] -pin shiftleft2_jump In32[17]
load net ID_Instruction[18] -attr @rip RegOut[18] -pin IDEX_rs_rt_rd RegIn[18] -pin IFID_Instruction RegOut[18] -pin Register_File ReadRegister2[2] -pin StallControl_block ID_rt[2] -pin WB_forward_block rt[2] -pin shiftleft2_jump In32[18]
load net ID_Instruction[19] -attr @rip RegOut[19] -pin IDEX_rs_rt_rd RegIn[19] -pin IFID_Instruction RegOut[19] -pin Register_File ReadRegister2[3] -pin StallControl_block ID_rt[3] -pin WB_forward_block rt[3] -pin shiftleft2_jump In32[19]
load net ID_Instruction[1] -attr @rip RegOut[1] -pin IDEX_rs_rt_rd RegIn[1] -pin IFID_Instruction RegOut[1] -pin JRControl_Block1 Function[1] -pin shiftleft2_jump In32[1] -pin sign_extend1 sIn16[1] -pin zero_extend1 zIn16[1]
load net ID_Instruction[20] -attr @rip RegOut[20] -pin IDEX_rs_rt_rd RegIn[20] -pin IFID_Instruction RegOut[20] -pin Register_File ReadRegister2[4] -pin StallControl_block ID_rt[4] -pin WB_forward_block rt[4] -pin shiftleft2_jump In32[20]
load net ID_Instruction[21] -attr @rip RegOut[21] -pin IDEX_rs_rt_rd RegIn[21] -pin IFID_Instruction RegOut[21] -pin Register_File ReadRegister1[0] -pin StallControl_block ID_rs[0] -pin WB_forward_block rs[0] -pin shiftleft2_jump In32[21]
load net ID_Instruction[22] -attr @rip RegOut[22] -pin IDEX_rs_rt_rd RegIn[22] -pin IFID_Instruction RegOut[22] -pin Register_File ReadRegister1[1] -pin StallControl_block ID_rs[1] -pin WB_forward_block rs[1] -pin shiftleft2_jump In32[22]
load net ID_Instruction[23] -attr @rip RegOut[23] -pin IDEX_rs_rt_rd RegIn[23] -pin IFID_Instruction RegOut[23] -pin Register_File ReadRegister1[2] -pin StallControl_block ID_rs[2] -pin WB_forward_block rs[2] -pin shiftleft2_jump In32[23]
load net ID_Instruction[24] -attr @rip RegOut[24] -pin IDEX_rs_rt_rd RegIn[24] -pin IFID_Instruction RegOut[24] -pin Register_File ReadRegister1[3] -pin StallControl_block ID_rs[3] -pin WB_forward_block rs[3] -pin shiftleft2_jump In32[24]
load net ID_Instruction[25] -attr @rip RegOut[25] -pin IDEX_rs_rt_rd RegIn[25] -pin IFID_Instruction RegOut[25] -pin Register_File ReadRegister1[4] -pin StallControl_block ID_rs[4] -pin WB_forward_block rs[4] -pin shiftleft2_jump In32[25]
load net ID_Instruction[26] -attr @rip RegOut[26] -pin IDEX_rs_rt_rd RegIn[26] -pin IFID_Instruction RegOut[26] -pin MainControl Opcode[0] -pin StallControl_block ID_Op[0]
load net ID_Instruction[27] -attr @rip RegOut[27] -pin IDEX_rs_rt_rd RegIn[27] -pin IFID_Instruction RegOut[27] -pin MainControl Opcode[1] -pin StallControl_block ID_Op[1]
load net ID_Instruction[28] -attr @rip RegOut[28] -pin IDEX_rs_rt_rd RegIn[28] -pin IFID_Instruction RegOut[28] -pin MainControl Opcode[2] -pin StallControl_block ID_Op[2]
load net ID_Instruction[29] -attr @rip RegOut[29] -pin IDEX_rs_rt_rd RegIn[29] -pin IFID_Instruction RegOut[29] -pin MainControl Opcode[3] -pin StallControl_block ID_Op[3]
load net ID_Instruction[2] -attr @rip RegOut[2] -pin IDEX_rs_rt_rd RegIn[2] -pin IFID_Instruction RegOut[2] -pin JRControl_Block1 Function[2] -pin shiftleft2_jump In32[2] -pin sign_extend1 sIn16[2] -pin zero_extend1 zIn16[2]
load net ID_Instruction[30] -attr @rip RegOut[30] -pin IDEX_rs_rt_rd RegIn[30] -pin IFID_Instruction RegOut[30] -pin MainControl Opcode[4] -pin StallControl_block ID_Op[4]
load net ID_Instruction[31] -attr @rip RegOut[31] -pin IDEX_rs_rt_rd RegIn[31] -pin IFID_Instruction RegOut[31] -pin MainControl Opcode[5] -pin StallControl_block ID_Op[5]
load net ID_Instruction[3] -attr @rip RegOut[3] -pin IDEX_rs_rt_rd RegIn[3] -pin IFID_Instruction RegOut[3] -pin JRControl_Block1 Function[3] -pin shiftleft2_jump In32[3] -pin sign_extend1 sIn16[3] -pin zero_extend1 zIn16[3]
load net ID_Instruction[4] -attr @rip RegOut[4] -pin IDEX_rs_rt_rd RegIn[4] -pin IFID_Instruction RegOut[4] -pin JRControl_Block1 Function[4] -pin shiftleft2_jump In32[4] -pin sign_extend1 sIn16[4] -pin zero_extend1 zIn16[4]
load net ID_Instruction[5] -attr @rip RegOut[5] -pin IDEX_rs_rt_rd RegIn[5] -pin IFID_Instruction RegOut[5] -pin JRControl_Block1 Function[5] -pin shiftleft2_jump In32[5] -pin sign_extend1 sIn16[5] -pin zero_extend1 zIn16[5]
load net ID_Instruction[6] -attr @rip RegOut[6] -pin IDEX_rs_rt_rd RegIn[6] -pin IFID_Instruction RegOut[6] -pin shiftleft2_jump In32[6] -pin sign_extend1 sIn16[6] -pin zero_extend1 zIn16[6]
load net ID_Instruction[7] -attr @rip RegOut[7] -pin IDEX_rs_rt_rd RegIn[7] -pin IFID_Instruction RegOut[7] -pin shiftleft2_jump In32[7] -pin sign_extend1 sIn16[7] -pin zero_extend1 zIn16[7]
load net ID_Instruction[8] -attr @rip RegOut[8] -pin IDEX_rs_rt_rd RegIn[8] -pin IFID_Instruction RegOut[8] -pin shiftleft2_jump In32[8] -pin sign_extend1 sIn16[8] -pin zero_extend1 zIn16[8]
load net ID_Instruction[9] -attr @rip RegOut[9] -pin IDEX_rs_rt_rd RegIn[9] -pin IFID_Instruction RegOut[9] -pin shiftleft2_jump In32[9] -pin sign_extend1 sIn16[9] -pin zero_extend1 zIn16[9]
load net ID_JRControl -pin IDEX_JRControl BitData -pin flush_block1 ID_JRControl
netloc ID_JRControl 1 13 8 5190 1070 NJ 1070 NJ 1070 NJ 1070 NJ 1070 NJ 1070 7320J 810 7660
load net ID_MemRead -pin IDEX_MemRead BitData -pin flush_block1 ID_MemRead
netloc ID_MemRead 1 5 16 1870 1260 2170J 1420 NJ 1420 NJ 1420 3420J 1470 3850J 1610 NJ 1610 4800J 1510 5190J 1490 NJ 1490 NJ 1490 NJ 1490 NJ 1490 NJ 1490 NJ 1490 7720
load net ID_MemWrite -pin IDEX_MemWrite BitData -pin flush_block1 ID_MemWrite
netloc ID_MemWrite 1 5 16 1870 1480 2150J 1660 NJ 1660 2930J 1790 3420J 1670 NJ 1670 NJ 1670 NJ 1670 NJ 1670 NJ 1670 NJ 1670 NJ 1670 NJ 1670 NJ 1670 NJ 1670 7740
load net ID_MemtoReg -pin IDEX_MemtoReg BitData -pin flush_block1 ID_MemtoReg
netloc ID_MemtoReg 1 6 15 2250 1400 NJ 1400 NJ 1400 3380J 1450 3890J 1470 NJ 1470 NJ 1470 NJ 1470 NJ 1470 NJ 1470 NJ 1470 NJ 1470 NJ 1470 NJ 1470 7700
load net ID_PC4[0] -attr @rip RegOut[0] -pin IDEX_PC4 RegIn[0] -pin IFID_PC4 RegOut[0]
load net ID_PC4[10] -attr @rip RegOut[10] -pin IDEX_PC4 RegIn[10] -pin IFID_PC4 RegOut[10]
load net ID_PC4[11] -attr @rip RegOut[11] -pin IDEX_PC4 RegIn[11] -pin IFID_PC4 RegOut[11]
load net ID_PC4[12] -attr @rip RegOut[12] -pin IDEX_PC4 RegIn[12] -pin IFID_PC4 RegOut[12]
load net ID_PC4[13] -attr @rip RegOut[13] -pin IDEX_PC4 RegIn[13] -pin IFID_PC4 RegOut[13]
load net ID_PC4[14] -attr @rip RegOut[14] -pin IDEX_PC4 RegIn[14] -pin IFID_PC4 RegOut[14]
load net ID_PC4[15] -attr @rip RegOut[15] -pin IDEX_PC4 RegIn[15] -pin IFID_PC4 RegOut[15]
load net ID_PC4[16] -attr @rip RegOut[16] -pin IDEX_PC4 RegIn[16] -pin IFID_PC4 RegOut[16]
load net ID_PC4[17] -attr @rip RegOut[17] -pin IDEX_PC4 RegIn[17] -pin IFID_PC4 RegOut[17]
load net ID_PC4[18] -attr @rip RegOut[18] -pin IDEX_PC4 RegIn[18] -pin IFID_PC4 RegOut[18]
load net ID_PC4[19] -attr @rip RegOut[19] -pin IDEX_PC4 RegIn[19] -pin IFID_PC4 RegOut[19]
load net ID_PC4[1] -attr @rip RegOut[1] -pin IDEX_PC4 RegIn[1] -pin IFID_PC4 RegOut[1]
load net ID_PC4[20] -attr @rip RegOut[20] -pin IDEX_PC4 RegIn[20] -pin IFID_PC4 RegOut[20]
load net ID_PC4[21] -attr @rip RegOut[21] -pin IDEX_PC4 RegIn[21] -pin IFID_PC4 RegOut[21]
load net ID_PC4[22] -attr @rip RegOut[22] -pin IDEX_PC4 RegIn[22] -pin IFID_PC4 RegOut[22]
load net ID_PC4[23] -attr @rip RegOut[23] -pin IDEX_PC4 RegIn[23] -pin IFID_PC4 RegOut[23]
load net ID_PC4[24] -attr @rip RegOut[24] -pin IDEX_PC4 RegIn[24] -pin IFID_PC4 RegOut[24]
load net ID_PC4[25] -attr @rip RegOut[25] -pin IDEX_PC4 RegIn[25] -pin IFID_PC4 RegOut[25]
load net ID_PC4[26] -attr @rip RegOut[26] -pin IDEX_PC4 RegIn[26] -pin IFID_PC4 RegOut[26]
load net ID_PC4[27] -attr @rip RegOut[27] -pin IDEX_PC4 RegIn[27] -pin IFID_PC4 RegOut[27]
load net ID_PC4[28] -attr @rip RegOut[28] -pin IDEX_PC4 RegIn[28] -pin IFID_PC4 RegOut[28] -pin muxJump Data1[28]
load net ID_PC4[29] -attr @rip RegOut[29] -pin IDEX_PC4 RegIn[29] -pin IFID_PC4 RegOut[29] -pin muxJump Data1[29]
load net ID_PC4[2] -attr @rip RegOut[2] -pin IDEX_PC4 RegIn[2] -pin IFID_PC4 RegOut[2]
load net ID_PC4[30] -attr @rip RegOut[30] -pin IDEX_PC4 RegIn[30] -pin IFID_PC4 RegOut[30] -pin muxJump Data1[30]
load net ID_PC4[31] -attr @rip RegOut[31] -pin IDEX_PC4 RegIn[31] -pin IFID_PC4 RegOut[31] -pin muxJump Data1[31]
load net ID_PC4[3] -attr @rip RegOut[3] -pin IDEX_PC4 RegIn[3] -pin IFID_PC4 RegOut[3]
load net ID_PC4[4] -attr @rip RegOut[4] -pin IDEX_PC4 RegIn[4] -pin IFID_PC4 RegOut[4]
load net ID_PC4[5] -attr @rip RegOut[5] -pin IDEX_PC4 RegIn[5] -pin IFID_PC4 RegOut[5]
load net ID_PC4[6] -attr @rip RegOut[6] -pin IDEX_PC4 RegIn[6] -pin IFID_PC4 RegOut[6]
load net ID_PC4[7] -attr @rip RegOut[7] -pin IDEX_PC4 RegIn[7] -pin IFID_PC4 RegOut[7]
load net ID_PC4[8] -attr @rip RegOut[8] -pin IDEX_PC4 RegIn[8] -pin IFID_PC4 RegOut[8]
load net ID_PC4[9] -attr @rip RegOut[9] -pin IDEX_PC4 RegIn[9] -pin IFID_PC4 RegOut[9]
load net ID_RegDst -pin IDEX_RegDst BitData -pin flush_block1 ID_RegDst
netloc ID_RegDst 1 0 21 60 1000 NJ 1000 NJ 1000 NJ 1000 NJ 1000 NJ 1000 NJ 1000 2580J 1020 3010J 1030 NJ 1030 3890J 1070 NJ 1070 NJ 1070 5170J 1090 NJ 1090 NJ 1090 NJ 1090 6530J 1130 NJ 1130 NJ 1130 7660
load net ID_RegWrite -pin IDEX_RegWrite BitData -pin flush_block1 ID_RegWrite
netloc ID_RegWrite 1 1 20 430 1440 NJ 1440 NJ 1440 NJ 1440 NJ 1440 NJ 1440 2540J 1480 2950J 1770 3500J 1630 NJ 1630 NJ 1630 4820J 1530 5210J 1510 NJ 1510 NJ 1510 NJ 1510 NJ 1510 NJ 1510 NJ 1510 7680
load net ID_flush -pin Discard_Instr_Block ID_flush -pin OR_flush_i I0
netloc ID_flush 1 16 2 6220 1270 6590J
load net IFID_WriteEn -pin IFID_Instruction WriteEn -pin IFID_PC4 WriteEn -pin IF_flush_bit WriteEn -pin StallControl_block IFID_WriteEn
netloc IFID_WriteEn 1 9 9 3460 990 NJ 990 NJ 990 NJ 990 NJ 990 NJ 990 NJ 990 6240 1210 NJ
load net IFID_flush -pin IF_flush_bit BitOut -pin OR_flush_i I1 -pin andJumpFlush_i I1
netloc IFID_flush 1 17 5 6530 1550 NJ 1550 NJ 1550 NJ 1550 NJ
load net IF_flush -pin Discard_Instr_Block IF_flush -pin IF_flush_bit BitData
netloc IF_flush 1 16 1 N 1350
load net Im16_Ext[0] -attr @rip DataOut[0] -pin IDEX_Im16_Ext RegIn[0] -pin muxSignZero DataOut[0]
load net Im16_Ext[10] -attr @rip DataOut[10] -pin IDEX_Im16_Ext RegIn[10] -pin muxSignZero DataOut[10]
load net Im16_Ext[11] -attr @rip DataOut[11] -pin IDEX_Im16_Ext RegIn[11] -pin muxSignZero DataOut[11]
load net Im16_Ext[12] -attr @rip DataOut[12] -pin IDEX_Im16_Ext RegIn[12] -pin muxSignZero DataOut[12]
load net Im16_Ext[13] -attr @rip DataOut[13] -pin IDEX_Im16_Ext RegIn[13] -pin muxSignZero DataOut[13]
load net Im16_Ext[14] -attr @rip DataOut[14] -pin IDEX_Im16_Ext RegIn[14] -pin muxSignZero DataOut[14]
load net Im16_Ext[15] -attr @rip DataOut[15] -pin IDEX_Im16_Ext RegIn[15] -pin muxSignZero DataOut[15]
load net Im16_Ext[16] -attr @rip DataOut[16] -pin IDEX_Im16_Ext RegIn[16] -pin muxSignZero DataOut[16]
load net Im16_Ext[17] -attr @rip DataOut[17] -pin IDEX_Im16_Ext RegIn[17] -pin muxSignZero DataOut[17]
load net Im16_Ext[18] -attr @rip DataOut[18] -pin IDEX_Im16_Ext RegIn[18] -pin muxSignZero DataOut[18]
load net Im16_Ext[19] -attr @rip DataOut[19] -pin IDEX_Im16_Ext RegIn[19] -pin muxSignZero DataOut[19]
load net Im16_Ext[1] -attr @rip DataOut[1] -pin IDEX_Im16_Ext RegIn[1] -pin muxSignZero DataOut[1]
load net Im16_Ext[20] -attr @rip DataOut[20] -pin IDEX_Im16_Ext RegIn[20] -pin muxSignZero DataOut[20]
load net Im16_Ext[21] -attr @rip DataOut[21] -pin IDEX_Im16_Ext RegIn[21] -pin muxSignZero DataOut[21]
load net Im16_Ext[22] -attr @rip DataOut[22] -pin IDEX_Im16_Ext RegIn[22] -pin muxSignZero DataOut[22]
load net Im16_Ext[23] -attr @rip DataOut[23] -pin IDEX_Im16_Ext RegIn[23] -pin muxSignZero DataOut[23]
load net Im16_Ext[24] -attr @rip DataOut[24] -pin IDEX_Im16_Ext RegIn[24] -pin muxSignZero DataOut[24]
load net Im16_Ext[25] -attr @rip DataOut[25] -pin IDEX_Im16_Ext RegIn[25] -pin muxSignZero DataOut[25]
load net Im16_Ext[26] -attr @rip DataOut[26] -pin IDEX_Im16_Ext RegIn[26] -pin muxSignZero DataOut[26]
load net Im16_Ext[27] -attr @rip DataOut[27] -pin IDEX_Im16_Ext RegIn[27] -pin muxSignZero DataOut[27]
load net Im16_Ext[28] -attr @rip DataOut[28] -pin IDEX_Im16_Ext RegIn[28] -pin muxSignZero DataOut[28]
load net Im16_Ext[29] -attr @rip DataOut[29] -pin IDEX_Im16_Ext RegIn[29] -pin muxSignZero DataOut[29]
load net Im16_Ext[2] -attr @rip DataOut[2] -pin IDEX_Im16_Ext RegIn[2] -pin muxSignZero DataOut[2]
load net Im16_Ext[30] -attr @rip DataOut[30] -pin IDEX_Im16_Ext RegIn[30] -pin muxSignZero DataOut[30]
load net Im16_Ext[31] -attr @rip DataOut[31] -pin IDEX_Im16_Ext RegIn[31] -pin muxSignZero DataOut[31]
load net Im16_Ext[3] -attr @rip DataOut[3] -pin IDEX_Im16_Ext RegIn[3] -pin muxSignZero DataOut[3]
load net Im16_Ext[4] -attr @rip DataOut[4] -pin IDEX_Im16_Ext RegIn[4] -pin muxSignZero DataOut[4]
load net Im16_Ext[5] -attr @rip DataOut[5] -pin IDEX_Im16_Ext RegIn[5] -pin muxSignZero DataOut[5]
load net Im16_Ext[6] -attr @rip DataOut[6] -pin IDEX_Im16_Ext RegIn[6] -pin muxSignZero DataOut[6]
load net Im16_Ext[7] -attr @rip DataOut[7] -pin IDEX_Im16_Ext RegIn[7] -pin muxSignZero DataOut[7]
load net Im16_Ext[8] -attr @rip DataOut[8] -pin IDEX_Im16_Ext RegIn[8] -pin muxSignZero DataOut[8]
load net Im16_Ext[9] -attr @rip DataOut[9] -pin IDEX_Im16_Ext RegIn[9] -pin muxSignZero DataOut[9]
load net Instruction[0] -attr @rip instruction[0] -pin IFID_Instruction RegIn[0] -pin InstructionMem1 instruction[0]
load net Instruction[10] -attr @rip instruction[10] -pin IFID_Instruction RegIn[10] -pin InstructionMem1 instruction[10]
load net Instruction[11] -attr @rip instruction[11] -pin IFID_Instruction RegIn[11] -pin InstructionMem1 instruction[11]
load net Instruction[12] -attr @rip instruction[12] -pin IFID_Instruction RegIn[12] -pin InstructionMem1 instruction[12]
load net Instruction[13] -attr @rip instruction[13] -pin IFID_Instruction RegIn[13] -pin InstructionMem1 instruction[13]
load net Instruction[14] -attr @rip instruction[14] -pin IFID_Instruction RegIn[14] -pin InstructionMem1 instruction[14]
load net Instruction[15] -attr @rip instruction[15] -pin IFID_Instruction RegIn[15] -pin InstructionMem1 instruction[15]
load net Instruction[16] -attr @rip instruction[16] -pin IFID_Instruction RegIn[16] -pin InstructionMem1 instruction[16]
load net Instruction[17] -attr @rip instruction[17] -pin IFID_Instruction RegIn[17] -pin InstructionMem1 instruction[17]
load net Instruction[18] -attr @rip instruction[18] -pin IFID_Instruction RegIn[18] -pin InstructionMem1 instruction[18]
load net Instruction[19] -attr @rip instruction[19] -pin IFID_Instruction RegIn[19] -pin InstructionMem1 instruction[19]
load net Instruction[1] -attr @rip instruction[1] -pin IFID_Instruction RegIn[1] -pin InstructionMem1 instruction[1]
load net Instruction[20] -attr @rip instruction[20] -pin IFID_Instruction RegIn[20] -pin InstructionMem1 instruction[20]
load net Instruction[21] -attr @rip instruction[21] -pin IFID_Instruction RegIn[21] -pin InstructionMem1 instruction[21]
load net Instruction[22] -attr @rip instruction[22] -pin IFID_Instruction RegIn[22] -pin InstructionMem1 instruction[22]
load net Instruction[23] -attr @rip instruction[23] -pin IFID_Instruction RegIn[23] -pin InstructionMem1 instruction[23]
load net Instruction[24] -attr @rip instruction[24] -pin IFID_Instruction RegIn[24] -pin InstructionMem1 instruction[24]
load net Instruction[25] -attr @rip instruction[25] -pin IFID_Instruction RegIn[25] -pin InstructionMem1 instruction[25]
load net Instruction[26] -attr @rip instruction[26] -pin IFID_Instruction RegIn[26] -pin InstructionMem1 instruction[26]
load net Instruction[27] -attr @rip instruction[27] -pin IFID_Instruction RegIn[27] -pin InstructionMem1 instruction[27]
load net Instruction[28] -attr @rip instruction[28] -pin IFID_Instruction RegIn[28] -pin InstructionMem1 instruction[28]
load net Instruction[29] -attr @rip instruction[29] -pin IFID_Instruction RegIn[29] -pin InstructionMem1 instruction[29]
load net Instruction[2] -attr @rip instruction[2] -pin IFID_Instruction RegIn[2] -pin InstructionMem1 instruction[2]
load net Instruction[30] -attr @rip instruction[30] -pin IFID_Instruction RegIn[30] -pin InstructionMem1 instruction[30]
load net Instruction[31] -attr @rip instruction[31] -pin IFID_Instruction RegIn[31] -pin InstructionMem1 instruction[31]
load net Instruction[3] -attr @rip instruction[3] -pin IFID_Instruction RegIn[3] -pin InstructionMem1 instruction[3]
load net Instruction[4] -attr @rip instruction[4] -pin IFID_Instruction RegIn[4] -pin InstructionMem1 instruction[4]
load net Instruction[5] -attr @rip instruction[5] -pin IFID_Instruction RegIn[5] -pin InstructionMem1 instruction[5]
load net Instruction[6] -attr @rip instruction[6] -pin IFID_Instruction RegIn[6] -pin InstructionMem1 instruction[6]
load net Instruction[7] -attr @rip instruction[7] -pin IFID_Instruction RegIn[7] -pin InstructionMem1 instruction[7]
load net Instruction[8] -attr @rip instruction[8] -pin IFID_Instruction RegIn[8] -pin InstructionMem1 instruction[8]
load net Instruction[9] -attr @rip instruction[9] -pin IFID_Instruction RegIn[9] -pin InstructionMem1 instruction[9]
load net JRControl -port JRControl -pin JRControl_Block1 JRControl -pin flush_block1 JRControl
netloc JRControl 1 19 5 7380 1350 NJ 1350 NJ 1350 NJ 1350 8680
load net Jump -pin MainControl Jump -pin andJumpFlush_i I0
netloc Jump 1 19 3 7260 1530 NJ 1530 NJ
load net JumpControl -pin Discard_Instr_Block jump -port JumpControl -pin andJumpBNE_i O -pin muxJump Select
netloc JumpControl 1 13 11 5210 1650 NJ 1650 5870 1710 NJ 1710 NJ 1710 NJ 1710 NJ 1710 NJ 1710 NJ 1710 NJ 1710 8660
load net JumpFlush -port JumpFlush -pin andJumpBNE_i I0 -pin andJumpFlush_i O
netloc JumpFlush 1 22 2 8360 1830 NJ
load net MEM_ALUResult[0] -attr @rip RegOut[0] -pin EXMEM_ALUResult RegOut[0] -pin MEMWB_ALUResult RegIn[0] -pin dataMem1 address[0] -pin mux3A B[0] -pin mux3B B[0]
load net MEM_ALUResult[10] -attr @rip RegOut[10] -pin EXMEM_ALUResult RegOut[10] -pin MEMWB_ALUResult RegIn[10] -pin dataMem1 address[10] -pin mux3A B[10] -pin mux3B B[10]
load net MEM_ALUResult[11] -attr @rip RegOut[11] -pin EXMEM_ALUResult RegOut[11] -pin MEMWB_ALUResult RegIn[11] -pin dataMem1 address[11] -pin mux3A B[11] -pin mux3B B[11]
load net MEM_ALUResult[12] -attr @rip RegOut[12] -pin EXMEM_ALUResult RegOut[12] -pin MEMWB_ALUResult RegIn[12] -pin dataMem1 address[12] -pin mux3A B[12] -pin mux3B B[12]
load net MEM_ALUResult[13] -attr @rip RegOut[13] -pin EXMEM_ALUResult RegOut[13] -pin MEMWB_ALUResult RegIn[13] -pin dataMem1 address[13] -pin mux3A B[13] -pin mux3B B[13]
load net MEM_ALUResult[14] -attr @rip RegOut[14] -pin EXMEM_ALUResult RegOut[14] -pin MEMWB_ALUResult RegIn[14] -pin dataMem1 address[14] -pin mux3A B[14] -pin mux3B B[14]
load net MEM_ALUResult[15] -attr @rip RegOut[15] -pin EXMEM_ALUResult RegOut[15] -pin MEMWB_ALUResult RegIn[15] -pin dataMem1 address[15] -pin mux3A B[15] -pin mux3B B[15]
load net MEM_ALUResult[16] -attr @rip RegOut[16] -pin EXMEM_ALUResult RegOut[16] -pin MEMWB_ALUResult RegIn[16] -pin dataMem1 address[16] -pin mux3A B[16] -pin mux3B B[16]
load net MEM_ALUResult[17] -attr @rip RegOut[17] -pin EXMEM_ALUResult RegOut[17] -pin MEMWB_ALUResult RegIn[17] -pin dataMem1 address[17] -pin mux3A B[17] -pin mux3B B[17]
load net MEM_ALUResult[18] -attr @rip RegOut[18] -pin EXMEM_ALUResult RegOut[18] -pin MEMWB_ALUResult RegIn[18] -pin dataMem1 address[18] -pin mux3A B[18] -pin mux3B B[18]
load net MEM_ALUResult[19] -attr @rip RegOut[19] -pin EXMEM_ALUResult RegOut[19] -pin MEMWB_ALUResult RegIn[19] -pin dataMem1 address[19] -pin mux3A B[19] -pin mux3B B[19]
load net MEM_ALUResult[1] -attr @rip RegOut[1] -pin EXMEM_ALUResult RegOut[1] -pin MEMWB_ALUResult RegIn[1] -pin dataMem1 address[1] -pin mux3A B[1] -pin mux3B B[1]
load net MEM_ALUResult[20] -attr @rip RegOut[20] -pin EXMEM_ALUResult RegOut[20] -pin MEMWB_ALUResult RegIn[20] -pin dataMem1 address[20] -pin mux3A B[20] -pin mux3B B[20]
load net MEM_ALUResult[21] -attr @rip RegOut[21] -pin EXMEM_ALUResult RegOut[21] -pin MEMWB_ALUResult RegIn[21] -pin dataMem1 address[21] -pin mux3A B[21] -pin mux3B B[21]
load net MEM_ALUResult[22] -attr @rip RegOut[22] -pin EXMEM_ALUResult RegOut[22] -pin MEMWB_ALUResult RegIn[22] -pin dataMem1 address[22] -pin mux3A B[22] -pin mux3B B[22]
load net MEM_ALUResult[23] -attr @rip RegOut[23] -pin EXMEM_ALUResult RegOut[23] -pin MEMWB_ALUResult RegIn[23] -pin dataMem1 address[23] -pin mux3A B[23] -pin mux3B B[23]
load net MEM_ALUResult[24] -attr @rip RegOut[24] -pin EXMEM_ALUResult RegOut[24] -pin MEMWB_ALUResult RegIn[24] -pin dataMem1 address[24] -pin mux3A B[24] -pin mux3B B[24]
load net MEM_ALUResult[25] -attr @rip RegOut[25] -pin EXMEM_ALUResult RegOut[25] -pin MEMWB_ALUResult RegIn[25] -pin dataMem1 address[25] -pin mux3A B[25] -pin mux3B B[25]
load net MEM_ALUResult[26] -attr @rip RegOut[26] -pin EXMEM_ALUResult RegOut[26] -pin MEMWB_ALUResult RegIn[26] -pin dataMem1 address[26] -pin mux3A B[26] -pin mux3B B[26]
load net MEM_ALUResult[27] -attr @rip RegOut[27] -pin EXMEM_ALUResult RegOut[27] -pin MEMWB_ALUResult RegIn[27] -pin dataMem1 address[27] -pin mux3A B[27] -pin mux3B B[27]
load net MEM_ALUResult[28] -attr @rip RegOut[28] -pin EXMEM_ALUResult RegOut[28] -pin MEMWB_ALUResult RegIn[28] -pin dataMem1 address[28] -pin mux3A B[28] -pin mux3B B[28]
load net MEM_ALUResult[29] -attr @rip RegOut[29] -pin EXMEM_ALUResult RegOut[29] -pin MEMWB_ALUResult RegIn[29] -pin dataMem1 address[29] -pin mux3A B[29] -pin mux3B B[29]
load net MEM_ALUResult[2] -attr @rip RegOut[2] -pin EXMEM_ALUResult RegOut[2] -pin MEMWB_ALUResult RegIn[2] -pin dataMem1 address[2] -pin mux3A B[2] -pin mux3B B[2]
load net MEM_ALUResult[30] -attr @rip RegOut[30] -pin EXMEM_ALUResult RegOut[30] -pin MEMWB_ALUResult RegIn[30] -pin dataMem1 address[30] -pin mux3A B[30] -pin mux3B B[30]
load net MEM_ALUResult[31] -attr @rip RegOut[31] -pin EXMEM_ALUResult RegOut[31] -pin MEMWB_ALUResult RegIn[31] -pin dataMem1 address[31] -pin mux3A B[31] -pin mux3B B[31]
load net MEM_ALUResult[3] -attr @rip RegOut[3] -pin EXMEM_ALUResult RegOut[3] -pin MEMWB_ALUResult RegIn[3] -pin dataMem1 address[3] -pin mux3A B[3] -pin mux3B B[3]
load net MEM_ALUResult[4] -attr @rip RegOut[4] -pin EXMEM_ALUResult RegOut[4] -pin MEMWB_ALUResult RegIn[4] -pin dataMem1 address[4] -pin mux3A B[4] -pin mux3B B[4]
load net MEM_ALUResult[5] -attr @rip RegOut[5] -pin EXMEM_ALUResult RegOut[5] -pin MEMWB_ALUResult RegIn[5] -pin dataMem1 address[5] -pin mux3A B[5] -pin mux3B B[5]
load net MEM_ALUResult[6] -attr @rip RegOut[6] -pin EXMEM_ALUResult RegOut[6] -pin MEMWB_ALUResult RegIn[6] -pin dataMem1 address[6] -pin mux3A B[6] -pin mux3B B[6]
load net MEM_ALUResult[7] -attr @rip RegOut[7] -pin EXMEM_ALUResult RegOut[7] -pin MEMWB_ALUResult RegIn[7] -pin dataMem1 address[7] -pin mux3A B[7] -pin mux3B B[7]
load net MEM_ALUResult[8] -attr @rip RegOut[8] -pin EXMEM_ALUResult RegOut[8] -pin MEMWB_ALUResult RegIn[8] -pin dataMem1 address[8] -pin mux3A B[8] -pin mux3B B[8]
load net MEM_ALUResult[9] -attr @rip RegOut[9] -pin EXMEM_ALUResult RegOut[9] -pin MEMWB_ALUResult RegIn[9] -pin dataMem1 address[9] -pin mux3A B[9] -pin mux3B B[9]
load net MEM_MemRead -pin EXMEM_MemRead BitOut -pin dataMem1 MemRead
netloc MEM_MemRead 1 7 1 2560 1280n
load net MEM_MemWrite -pin EXMEM_MemWrite BitOut -pin dataMem1 writeenable
netloc MEM_MemWrite 1 7 1 2560 1360n
load net MEM_MemtoReg -pin EXMEM_MemtoReg BitOut -pin MEMWB_MemtoReg BitData
netloc MEM_MemtoReg 1 8 1 2970 1500n
load net MEM_ReadDataOfMem[0] -attr @rip data[0] -pin MEMWB_ReadDataOfMem RegIn[0] -pin dataMem1 data[0]
load net MEM_ReadDataOfMem[10] -attr @rip data[10] -pin MEMWB_ReadDataOfMem RegIn[10] -pin dataMem1 data[10]
load net MEM_ReadDataOfMem[11] -attr @rip data[11] -pin MEMWB_ReadDataOfMem RegIn[11] -pin dataMem1 data[11]
load net MEM_ReadDataOfMem[12] -attr @rip data[12] -pin MEMWB_ReadDataOfMem RegIn[12] -pin dataMem1 data[12]
load net MEM_ReadDataOfMem[13] -attr @rip data[13] -pin MEMWB_ReadDataOfMem RegIn[13] -pin dataMem1 data[13]
load net MEM_ReadDataOfMem[14] -attr @rip data[14] -pin MEMWB_ReadDataOfMem RegIn[14] -pin dataMem1 data[14]
load net MEM_ReadDataOfMem[15] -attr @rip data[15] -pin MEMWB_ReadDataOfMem RegIn[15] -pin dataMem1 data[15]
load net MEM_ReadDataOfMem[16] -attr @rip data[16] -pin MEMWB_ReadDataOfMem RegIn[16] -pin dataMem1 data[16]
load net MEM_ReadDataOfMem[17] -attr @rip data[17] -pin MEMWB_ReadDataOfMem RegIn[17] -pin dataMem1 data[17]
load net MEM_ReadDataOfMem[18] -attr @rip data[18] -pin MEMWB_ReadDataOfMem RegIn[18] -pin dataMem1 data[18]
load net MEM_ReadDataOfMem[19] -attr @rip data[19] -pin MEMWB_ReadDataOfMem RegIn[19] -pin dataMem1 data[19]
load net MEM_ReadDataOfMem[1] -attr @rip data[1] -pin MEMWB_ReadDataOfMem RegIn[1] -pin dataMem1 data[1]
load net MEM_ReadDataOfMem[20] -attr @rip data[20] -pin MEMWB_ReadDataOfMem RegIn[20] -pin dataMem1 data[20]
load net MEM_ReadDataOfMem[21] -attr @rip data[21] -pin MEMWB_ReadDataOfMem RegIn[21] -pin dataMem1 data[21]
load net MEM_ReadDataOfMem[22] -attr @rip data[22] -pin MEMWB_ReadDataOfMem RegIn[22] -pin dataMem1 data[22]
load net MEM_ReadDataOfMem[23] -attr @rip data[23] -pin MEMWB_ReadDataOfMem RegIn[23] -pin dataMem1 data[23]
load net MEM_ReadDataOfMem[24] -attr @rip data[24] -pin MEMWB_ReadDataOfMem RegIn[24] -pin dataMem1 data[24]
load net MEM_ReadDataOfMem[25] -attr @rip data[25] -pin MEMWB_ReadDataOfMem RegIn[25] -pin dataMem1 data[25]
load net MEM_ReadDataOfMem[26] -attr @rip data[26] -pin MEMWB_ReadDataOfMem RegIn[26] -pin dataMem1 data[26]
load net MEM_ReadDataOfMem[27] -attr @rip data[27] -pin MEMWB_ReadDataOfMem RegIn[27] -pin dataMem1 data[27]
load net MEM_ReadDataOfMem[28] -attr @rip data[28] -pin MEMWB_ReadDataOfMem RegIn[28] -pin dataMem1 data[28]
load net MEM_ReadDataOfMem[29] -attr @rip data[29] -pin MEMWB_ReadDataOfMem RegIn[29] -pin dataMem1 data[29]
load net MEM_ReadDataOfMem[2] -attr @rip data[2] -pin MEMWB_ReadDataOfMem RegIn[2] -pin dataMem1 data[2]
load net MEM_ReadDataOfMem[30] -attr @rip data[30] -pin MEMWB_ReadDataOfMem RegIn[30] -pin dataMem1 data[30]
load net MEM_ReadDataOfMem[31] -attr @rip data[31] -pin MEMWB_ReadDataOfMem RegIn[31] -pin dataMem1 data[31]
load net MEM_ReadDataOfMem[3] -attr @rip data[3] -pin MEMWB_ReadDataOfMem RegIn[3] -pin dataMem1 data[3]
load net MEM_ReadDataOfMem[4] -attr @rip data[4] -pin MEMWB_ReadDataOfMem RegIn[4] -pin dataMem1 data[4]
load net MEM_ReadDataOfMem[5] -attr @rip data[5] -pin MEMWB_ReadDataOfMem RegIn[5] -pin dataMem1 data[5]
load net MEM_ReadDataOfMem[6] -attr @rip data[6] -pin MEMWB_ReadDataOfMem RegIn[6] -pin dataMem1 data[6]
load net MEM_ReadDataOfMem[7] -attr @rip data[7] -pin MEMWB_ReadDataOfMem RegIn[7] -pin dataMem1 data[7]
load net MEM_ReadDataOfMem[8] -attr @rip data[8] -pin MEMWB_ReadDataOfMem RegIn[8] -pin dataMem1 data[8]
load net MEM_ReadDataOfMem[9] -attr @rip data[9] -pin MEMWB_ReadDataOfMem RegIn[9] -pin dataMem1 data[9]
load net MEM_RegWrite -pin EXMEM_RegWrite BitOut -pin Forwarding_Block MEM_RegWrite -pin MEMWB_RegWrite BitData
netloc MEM_RegWrite 1 3 2 1010 920 1350
load net MEM_WriteRegister_0 -attr @rip 0 -pin EXMEM_WriteRegister0 BitOut -pin Forwarding_Block MEM_WriteRegister[0] -pin MEMWB_WriteRegister0 BitData
load net MEM_WriteRegister_1 -attr @rip 1 -pin EXMEM_WriteRegister1 BitOut -pin Forwarding_Block MEM_WriteRegister[1] -pin MEMWB_WriteRegister1 BitData
load net MEM_WriteRegister_2 -attr @rip 2 -pin EXMEM_WriteRegister2 BitOut -pin Forwarding_Block MEM_WriteRegister[2] -pin MEMWB_WriteRegister2 BitData
load net MEM_WriteRegister_3 -attr @rip 3 -pin EXMEM_WriteRegister3 BitOut -pin Forwarding_Block MEM_WriteRegister[3] -pin MEMWB_WriteRegister3 BitData
load net MEM_WriteRegister_4 -attr @rip 4 -pin EXMEM_WriteRegister4 BitOut -pin Forwarding_Block MEM_WriteRegister[4] -pin MEMWB_WriteRegister4 BitData
load net MemRead -pin MainControl MemRead -pin flush_block1 MemRead
netloc MemRead 1 19 1 7340 890n
load net MemWrite -pin MainControl MemWrite -pin flush_block1 MemWrite
netloc MemWrite 1 19 1 7300 910n
load net MemtoReg -pin MainControl MemtoReg -pin flush_block1 MemtoReg
netloc MemtoReg 1 19 1 7240 930n
load net NegativeFlag -port NegativeFlag -pin alu_block negative
netloc NegativeFlag 1 23 1 NJ 1450
load net OR_flush -pin OR_flush_i O -pin OR_flush_i__0 I0
netloc OR_flush 1 18 1 6900 1190n
load net OverflowFlag -port OverflowFlag -pin alu_block overflow
netloc OverflowFlag 1 23 1 NJ 1470
load net PC4[0] -attr @rip S[0] -pin Add1 S[0] -pin IFID_PC4 RegIn[0] -pin muxbneControl Data0[0]
load net PC4[10] -attr @rip S[10] -pin Add1 S[10] -pin IFID_PC4 RegIn[10] -pin muxbneControl Data0[10]
load net PC4[11] -attr @rip S[11] -pin Add1 S[11] -pin IFID_PC4 RegIn[11] -pin muxbneControl Data0[11]
load net PC4[12] -attr @rip S[12] -pin Add1 S[12] -pin IFID_PC4 RegIn[12] -pin muxbneControl Data0[12]
load net PC4[13] -attr @rip S[13] -pin Add1 S[13] -pin IFID_PC4 RegIn[13] -pin muxbneControl Data0[13]
load net PC4[14] -attr @rip S[14] -pin Add1 S[14] -pin IFID_PC4 RegIn[14] -pin muxbneControl Data0[14]
load net PC4[15] -attr @rip S[15] -pin Add1 S[15] -pin IFID_PC4 RegIn[15] -pin muxbneControl Data0[15]
load net PC4[16] -attr @rip S[16] -pin Add1 S[16] -pin IFID_PC4 RegIn[16] -pin muxbneControl Data0[16]
load net PC4[17] -attr @rip S[17] -pin Add1 S[17] -pin IFID_PC4 RegIn[17] -pin muxbneControl Data0[17]
load net PC4[18] -attr @rip S[18] -pin Add1 S[18] -pin IFID_PC4 RegIn[18] -pin muxbneControl Data0[18]
load net PC4[19] -attr @rip S[19] -pin Add1 S[19] -pin IFID_PC4 RegIn[19] -pin muxbneControl Data0[19]
load net PC4[1] -attr @rip S[1] -pin Add1 S[1] -pin IFID_PC4 RegIn[1] -pin muxbneControl Data0[1]
load net PC4[20] -attr @rip S[20] -pin Add1 S[20] -pin IFID_PC4 RegIn[20] -pin muxbneControl Data0[20]
load net PC4[21] -attr @rip S[21] -pin Add1 S[21] -pin IFID_PC4 RegIn[21] -pin muxbneControl Data0[21]
load net PC4[22] -attr @rip S[22] -pin Add1 S[22] -pin IFID_PC4 RegIn[22] -pin muxbneControl Data0[22]
load net PC4[23] -attr @rip S[23] -pin Add1 S[23] -pin IFID_PC4 RegIn[23] -pin muxbneControl Data0[23]
load net PC4[24] -attr @rip S[24] -pin Add1 S[24] -pin IFID_PC4 RegIn[24] -pin muxbneControl Data0[24]
load net PC4[25] -attr @rip S[25] -pin Add1 S[25] -pin IFID_PC4 RegIn[25] -pin muxbneControl Data0[25]
load net PC4[26] -attr @rip S[26] -pin Add1 S[26] -pin IFID_PC4 RegIn[26] -pin muxbneControl Data0[26]
load net PC4[27] -attr @rip S[27] -pin Add1 S[27] -pin IFID_PC4 RegIn[27] -pin muxbneControl Data0[27]
load net PC4[28] -attr @rip S[28] -pin Add1 S[28] -pin IFID_PC4 RegIn[28] -pin muxbneControl Data0[28]
load net PC4[29] -attr @rip S[29] -pin Add1 S[29] -pin IFID_PC4 RegIn[29] -pin muxbneControl Data0[29]
load net PC4[2] -attr @rip S[2] -pin Add1 S[2] -pin IFID_PC4 RegIn[2] -pin muxbneControl Data0[2]
load net PC4[30] -attr @rip S[30] -pin Add1 S[30] -pin IFID_PC4 RegIn[30] -pin muxbneControl Data0[30]
load net PC4[31] -attr @rip S[31] -pin Add1 S[31] -pin IFID_PC4 RegIn[31] -pin muxbneControl Data0[31]
load net PC4[3] -attr @rip S[3] -pin Add1 S[3] -pin IFID_PC4 RegIn[3] -pin muxbneControl Data0[3]
load net PC4[4] -attr @rip S[4] -pin Add1 S[4] -pin IFID_PC4 RegIn[4] -pin muxbneControl Data0[4]
load net PC4[5] -attr @rip S[5] -pin Add1 S[5] -pin IFID_PC4 RegIn[5] -pin muxbneControl Data0[5]
load net PC4[6] -attr @rip S[6] -pin Add1 S[6] -pin IFID_PC4 RegIn[6] -pin muxbneControl Data0[6]
load net PC4[7] -attr @rip S[7] -pin Add1 S[7] -pin IFID_PC4 RegIn[7] -pin muxbneControl Data0[7]
load net PC4[8] -attr @rip S[8] -pin Add1 S[8] -pin IFID_PC4 RegIn[8] -pin muxbneControl Data0[8]
load net PC4[9] -attr @rip S[9] -pin Add1 S[9] -pin IFID_PC4 RegIn[9] -pin muxbneControl Data0[9]
load net PC4bne[0] -attr @rip DataOut[0] -pin muxJump Data0[0] -pin muxbneControl DataOut[0]
load net PC4bne[10] -attr @rip DataOut[10] -pin muxJump Data0[10] -pin muxbneControl DataOut[10]
load net PC4bne[11] -attr @rip DataOut[11] -pin muxJump Data0[11] -pin muxbneControl DataOut[11]
load net PC4bne[12] -attr @rip DataOut[12] -pin muxJump Data0[12] -pin muxbneControl DataOut[12]
load net PC4bne[13] -attr @rip DataOut[13] -pin muxJump Data0[13] -pin muxbneControl DataOut[13]
load net PC4bne[14] -attr @rip DataOut[14] -pin muxJump Data0[14] -pin muxbneControl DataOut[14]
load net PC4bne[15] -attr @rip DataOut[15] -pin muxJump Data0[15] -pin muxbneControl DataOut[15]
load net PC4bne[16] -attr @rip DataOut[16] -pin muxJump Data0[16] -pin muxbneControl DataOut[16]
load net PC4bne[17] -attr @rip DataOut[17] -pin muxJump Data0[17] -pin muxbneControl DataOut[17]
load net PC4bne[18] -attr @rip DataOut[18] -pin muxJump Data0[18] -pin muxbneControl DataOut[18]
load net PC4bne[19] -attr @rip DataOut[19] -pin muxJump Data0[19] -pin muxbneControl DataOut[19]
load net PC4bne[1] -attr @rip DataOut[1] -pin muxJump Data0[1] -pin muxbneControl DataOut[1]
load net PC4bne[20] -attr @rip DataOut[20] -pin muxJump Data0[20] -pin muxbneControl DataOut[20]
load net PC4bne[21] -attr @rip DataOut[21] -pin muxJump Data0[21] -pin muxbneControl DataOut[21]
load net PC4bne[22] -attr @rip DataOut[22] -pin muxJump Data0[22] -pin muxbneControl DataOut[22]
load net PC4bne[23] -attr @rip DataOut[23] -pin muxJump Data0[23] -pin muxbneControl DataOut[23]
load net PC4bne[24] -attr @rip DataOut[24] -pin muxJump Data0[24] -pin muxbneControl DataOut[24]
load net PC4bne[25] -attr @rip DataOut[25] -pin muxJump Data0[25] -pin muxbneControl DataOut[25]
load net PC4bne[26] -attr @rip DataOut[26] -pin muxJump Data0[26] -pin muxbneControl DataOut[26]
load net PC4bne[27] -attr @rip DataOut[27] -pin muxJump Data0[27] -pin muxbneControl DataOut[27]
load net PC4bne[28] -attr @rip DataOut[28] -pin muxJump Data0[28] -pin muxbneControl DataOut[28]
load net PC4bne[29] -attr @rip DataOut[29] -pin muxJump Data0[29] -pin muxbneControl DataOut[29]
load net PC4bne[2] -attr @rip DataOut[2] -pin muxJump Data0[2] -pin muxbneControl DataOut[2]
load net PC4bne[30] -attr @rip DataOut[30] -pin muxJump Data0[30] -pin muxbneControl DataOut[30]
load net PC4bne[31] -attr @rip DataOut[31] -pin muxJump Data0[31] -pin muxbneControl DataOut[31]
load net PC4bne[3] -attr @rip DataOut[3] -pin muxJump Data0[3] -pin muxbneControl DataOut[3]
load net PC4bne[4] -attr @rip DataOut[4] -pin muxJump Data0[4] -pin muxbneControl DataOut[4]
load net PC4bne[5] -attr @rip DataOut[5] -pin muxJump Data0[5] -pin muxbneControl DataOut[5]
load net PC4bne[6] -attr @rip DataOut[6] -pin muxJump Data0[6] -pin muxbneControl DataOut[6]
load net PC4bne[7] -attr @rip DataOut[7] -pin muxJump Data0[7] -pin muxbneControl DataOut[7]
load net PC4bne[8] -attr @rip DataOut[8] -pin muxJump Data0[8] -pin muxbneControl DataOut[8]
load net PC4bne[9] -attr @rip DataOut[9] -pin muxJump Data0[9] -pin muxbneControl DataOut[9]
load net PC4bnej[0] -attr @rip DataOut[0] -pin muxJR Data0[0] -pin muxJump DataOut[0]
load net PC4bnej[10] -attr @rip DataOut[10] -pin muxJR Data0[10] -pin muxJump DataOut[10]
load net PC4bnej[11] -attr @rip DataOut[11] -pin muxJR Data0[11] -pin muxJump DataOut[11]
load net PC4bnej[12] -attr @rip DataOut[12] -pin muxJR Data0[12] -pin muxJump DataOut[12]
load net PC4bnej[13] -attr @rip DataOut[13] -pin muxJR Data0[13] -pin muxJump DataOut[13]
load net PC4bnej[14] -attr @rip DataOut[14] -pin muxJR Data0[14] -pin muxJump DataOut[14]
load net PC4bnej[15] -attr @rip DataOut[15] -pin muxJR Data0[15] -pin muxJump DataOut[15]
load net PC4bnej[16] -attr @rip DataOut[16] -pin muxJR Data0[16] -pin muxJump DataOut[16]
load net PC4bnej[17] -attr @rip DataOut[17] -pin muxJR Data0[17] -pin muxJump DataOut[17]
load net PC4bnej[18] -attr @rip DataOut[18] -pin muxJR Data0[18] -pin muxJump DataOut[18]
load net PC4bnej[19] -attr @rip DataOut[19] -pin muxJR Data0[19] -pin muxJump DataOut[19]
load net PC4bnej[1] -attr @rip DataOut[1] -pin muxJR Data0[1] -pin muxJump DataOut[1]
load net PC4bnej[20] -attr @rip DataOut[20] -pin muxJR Data0[20] -pin muxJump DataOut[20]
load net PC4bnej[21] -attr @rip DataOut[21] -pin muxJR Data0[21] -pin muxJump DataOut[21]
load net PC4bnej[22] -attr @rip DataOut[22] -pin muxJR Data0[22] -pin muxJump DataOut[22]
load net PC4bnej[23] -attr @rip DataOut[23] -pin muxJR Data0[23] -pin muxJump DataOut[23]
load net PC4bnej[24] -attr @rip DataOut[24] -pin muxJR Data0[24] -pin muxJump DataOut[24]
load net PC4bnej[25] -attr @rip DataOut[25] -pin muxJR Data0[25] -pin muxJump DataOut[25]
load net PC4bnej[26] -attr @rip DataOut[26] -pin muxJR Data0[26] -pin muxJump DataOut[26]
load net PC4bnej[27] -attr @rip DataOut[27] -pin muxJR Data0[27] -pin muxJump DataOut[27]
load net PC4bnej[28] -attr @rip DataOut[28] -pin muxJR Data0[28] -pin muxJump DataOut[28]
load net PC4bnej[29] -attr @rip DataOut[29] -pin muxJR Data0[29] -pin muxJump DataOut[29]
load net PC4bnej[2] -attr @rip DataOut[2] -pin muxJR Data0[2] -pin muxJump DataOut[2]
load net PC4bnej[30] -attr @rip DataOut[30] -pin muxJR Data0[30] -pin muxJump DataOut[30]
load net PC4bnej[31] -attr @rip DataOut[31] -pin muxJR Data0[31] -pin muxJump DataOut[31]
load net PC4bnej[3] -attr @rip DataOut[3] -pin muxJR Data0[3] -pin muxJump DataOut[3]
load net PC4bnej[4] -attr @rip DataOut[4] -pin muxJR Data0[4] -pin muxJump DataOut[4]
load net PC4bnej[5] -attr @rip DataOut[5] -pin muxJR Data0[5] -pin muxJump DataOut[5]
load net PC4bnej[6] -attr @rip DataOut[6] -pin muxJR Data0[6] -pin muxJump DataOut[6]
load net PC4bnej[7] -attr @rip DataOut[7] -pin muxJR Data0[7] -pin muxJump DataOut[7]
load net PC4bnej[8] -attr @rip DataOut[8] -pin muxJR Data0[8] -pin muxJump DataOut[8]
load net PC4bnej[9] -attr @rip DataOut[9] -pin muxJR Data0[9] -pin muxJump DataOut[9]
load net PC[0] -attr @rip RegOut[0] -pin Add1 A[0] -pin InstructionMem1 address[0] -pin PC_Reg RegOut[0]
load net PC[10] -attr @rip RegOut[10] -pin Add1 A[10] -pin InstructionMem1 address[10] -pin PC_Reg RegOut[10]
load net PC[11] -attr @rip RegOut[11] -pin Add1 A[11] -pin InstructionMem1 address[11] -pin PC_Reg RegOut[11]
load net PC[12] -attr @rip RegOut[12] -pin Add1 A[12] -pin InstructionMem1 address[12] -pin PC_Reg RegOut[12]
load net PC[13] -attr @rip RegOut[13] -pin Add1 A[13] -pin InstructionMem1 address[13] -pin PC_Reg RegOut[13]
load net PC[14] -attr @rip RegOut[14] -pin Add1 A[14] -pin InstructionMem1 address[14] -pin PC_Reg RegOut[14]
load net PC[15] -attr @rip RegOut[15] -pin Add1 A[15] -pin InstructionMem1 address[15] -pin PC_Reg RegOut[15]
load net PC[16] -attr @rip RegOut[16] -pin Add1 A[16] -pin InstructionMem1 address[16] -pin PC_Reg RegOut[16]
load net PC[17] -attr @rip RegOut[17] -pin Add1 A[17] -pin InstructionMem1 address[17] -pin PC_Reg RegOut[17]
load net PC[18] -attr @rip RegOut[18] -pin Add1 A[18] -pin InstructionMem1 address[18] -pin PC_Reg RegOut[18]
load net PC[19] -attr @rip RegOut[19] -pin Add1 A[19] -pin InstructionMem1 address[19] -pin PC_Reg RegOut[19]
load net PC[1] -attr @rip RegOut[1] -pin Add1 A[1] -pin InstructionMem1 address[1] -pin PC_Reg RegOut[1]
load net PC[20] -attr @rip RegOut[20] -pin Add1 A[20] -pin InstructionMem1 address[20] -pin PC_Reg RegOut[20]
load net PC[21] -attr @rip RegOut[21] -pin Add1 A[21] -pin InstructionMem1 address[21] -pin PC_Reg RegOut[21]
load net PC[22] -attr @rip RegOut[22] -pin Add1 A[22] -pin InstructionMem1 address[22] -pin PC_Reg RegOut[22]
load net PC[23] -attr @rip RegOut[23] -pin Add1 A[23] -pin InstructionMem1 address[23] -pin PC_Reg RegOut[23]
load net PC[24] -attr @rip RegOut[24] -pin Add1 A[24] -pin InstructionMem1 address[24] -pin PC_Reg RegOut[24]
load net PC[25] -attr @rip RegOut[25] -pin Add1 A[25] -pin InstructionMem1 address[25] -pin PC_Reg RegOut[25]
load net PC[26] -attr @rip RegOut[26] -pin Add1 A[26] -pin InstructionMem1 address[26] -pin PC_Reg RegOut[26]
load net PC[27] -attr @rip RegOut[27] -pin Add1 A[27] -pin InstructionMem1 address[27] -pin PC_Reg RegOut[27]
load net PC[28] -attr @rip RegOut[28] -pin Add1 A[28] -pin InstructionMem1 address[28] -pin PC_Reg RegOut[28]
load net PC[29] -attr @rip RegOut[29] -pin Add1 A[29] -pin InstructionMem1 address[29] -pin PC_Reg RegOut[29]
load net PC[2] -attr @rip RegOut[2] -pin Add1 A[2] -pin InstructionMem1 address[2] -pin PC_Reg RegOut[2]
load net PC[30] -attr @rip RegOut[30] -pin Add1 A[30] -pin InstructionMem1 address[30] -pin PC_Reg RegOut[30]
load net PC[31] -attr @rip RegOut[31] -pin Add1 A[31] -pin InstructionMem1 address[31] -pin PC_Reg RegOut[31]
load net PC[3] -attr @rip RegOut[3] -pin Add1 A[3] -pin InstructionMem1 address[3] -pin PC_Reg RegOut[3]
load net PC[4] -attr @rip RegOut[4] -pin Add1 A[4] -pin InstructionMem1 address[4] -pin PC_Reg RegOut[4]
load net PC[5] -attr @rip RegOut[5] -pin Add1 A[5] -pin InstructionMem1 address[5] -pin PC_Reg RegOut[5]
load net PC[6] -attr @rip RegOut[6] -pin Add1 A[6] -pin InstructionMem1 address[6] -pin PC_Reg RegOut[6]
load net PC[7] -attr @rip RegOut[7] -pin Add1 A[7] -pin InstructionMem1 address[7] -pin PC_Reg RegOut[7]
load net PC[8] -attr @rip RegOut[8] -pin Add1 A[8] -pin InstructionMem1 address[8] -pin PC_Reg RegOut[8]
load net PC[9] -attr @rip RegOut[9] -pin Add1 A[9] -pin InstructionMem1 address[9] -pin PC_Reg RegOut[9]
load net PC_WriteEn -pin PC_Reg WriteEn -pin StallControl_block PC_WriteEn
netloc PC_WriteEn 1 9 7 NJ 670 3970J 710 NJ 710 NJ 710 NJ 710 NJ 710 5830
load net PCbne[0] -attr @rip S[0] -pin Add_bne S[0] -pin muxbneControl Data1[0]
load net PCbne[10] -attr @rip S[10] -pin Add_bne S[10] -pin muxbneControl Data1[10]
load net PCbne[11] -attr @rip S[11] -pin Add_bne S[11] -pin muxbneControl Data1[11]
load net PCbne[12] -attr @rip S[12] -pin Add_bne S[12] -pin muxbneControl Data1[12]
load net PCbne[13] -attr @rip S[13] -pin Add_bne S[13] -pin muxbneControl Data1[13]
load net PCbne[14] -attr @rip S[14] -pin Add_bne S[14] -pin muxbneControl Data1[14]
load net PCbne[15] -attr @rip S[15] -pin Add_bne S[15] -pin muxbneControl Data1[15]
load net PCbne[16] -attr @rip S[16] -pin Add_bne S[16] -pin muxbneControl Data1[16]
load net PCbne[17] -attr @rip S[17] -pin Add_bne S[17] -pin muxbneControl Data1[17]
load net PCbne[18] -attr @rip S[18] -pin Add_bne S[18] -pin muxbneControl Data1[18]
load net PCbne[19] -attr @rip S[19] -pin Add_bne S[19] -pin muxbneControl Data1[19]
load net PCbne[1] -attr @rip S[1] -pin Add_bne S[1] -pin muxbneControl Data1[1]
load net PCbne[20] -attr @rip S[20] -pin Add_bne S[20] -pin muxbneControl Data1[20]
load net PCbne[21] -attr @rip S[21] -pin Add_bne S[21] -pin muxbneControl Data1[21]
load net PCbne[22] -attr @rip S[22] -pin Add_bne S[22] -pin muxbneControl Data1[22]
load net PCbne[23] -attr @rip S[23] -pin Add_bne S[23] -pin muxbneControl Data1[23]
load net PCbne[24] -attr @rip S[24] -pin Add_bne S[24] -pin muxbneControl Data1[24]
load net PCbne[25] -attr @rip S[25] -pin Add_bne S[25] -pin muxbneControl Data1[25]
load net PCbne[26] -attr @rip S[26] -pin Add_bne S[26] -pin muxbneControl Data1[26]
load net PCbne[27] -attr @rip S[27] -pin Add_bne S[27] -pin muxbneControl Data1[27]
load net PCbne[28] -attr @rip S[28] -pin Add_bne S[28] -pin muxbneControl Data1[28]
load net PCbne[29] -attr @rip S[29] -pin Add_bne S[29] -pin muxbneControl Data1[29]
load net PCbne[2] -attr @rip S[2] -pin Add_bne S[2] -pin muxbneControl Data1[2]
load net PCbne[30] -attr @rip S[30] -pin Add_bne S[30] -pin muxbneControl Data1[30]
load net PCbne[31] -attr @rip S[31] -pin Add_bne S[31] -pin muxbneControl Data1[31]
load net PCbne[3] -attr @rip S[3] -pin Add_bne S[3] -pin muxbneControl Data1[3]
load net PCbne[4] -attr @rip S[4] -pin Add_bne S[4] -pin muxbneControl Data1[4]
load net PCbne[5] -attr @rip S[5] -pin Add_bne S[5] -pin muxbneControl Data1[5]
load net PCbne[6] -attr @rip S[6] -pin Add_bne S[6] -pin muxbneControl Data1[6]
load net PCbne[7] -attr @rip S[7] -pin Add_bne S[7] -pin muxbneControl Data1[7]
load net PCbne[8] -attr @rip S[8] -pin Add_bne S[8] -pin muxbneControl Data1[8]
load net PCbne[9] -attr @rip S[9] -pin Add_bne S[9] -pin muxbneControl Data1[9]
load net PCin[0] -attr @rip DataOut[0] -pin PC_Reg RegIn[0] -pin muxJR DataOut[0]
load net PCin[10] -attr @rip DataOut[10] -pin PC_Reg RegIn[10] -pin muxJR DataOut[10]
load net PCin[11] -attr @rip DataOut[11] -pin PC_Reg RegIn[11] -pin muxJR DataOut[11]
load net PCin[12] -attr @rip DataOut[12] -pin PC_Reg RegIn[12] -pin muxJR DataOut[12]
load net PCin[13] -attr @rip DataOut[13] -pin PC_Reg RegIn[13] -pin muxJR DataOut[13]
load net PCin[14] -attr @rip DataOut[14] -pin PC_Reg RegIn[14] -pin muxJR DataOut[14]
load net PCin[15] -attr @rip DataOut[15] -pin PC_Reg RegIn[15] -pin muxJR DataOut[15]
load net PCin[16] -attr @rip DataOut[16] -pin PC_Reg RegIn[16] -pin muxJR DataOut[16]
load net PCin[17] -attr @rip DataOut[17] -pin PC_Reg RegIn[17] -pin muxJR DataOut[17]
load net PCin[18] -attr @rip DataOut[18] -pin PC_Reg RegIn[18] -pin muxJR DataOut[18]
load net PCin[19] -attr @rip DataOut[19] -pin PC_Reg RegIn[19] -pin muxJR DataOut[19]
load net PCin[1] -attr @rip DataOut[1] -pin PC_Reg RegIn[1] -pin muxJR DataOut[1]
load net PCin[20] -attr @rip DataOut[20] -pin PC_Reg RegIn[20] -pin muxJR DataOut[20]
load net PCin[21] -attr @rip DataOut[21] -pin PC_Reg RegIn[21] -pin muxJR DataOut[21]
load net PCin[22] -attr @rip DataOut[22] -pin PC_Reg RegIn[22] -pin muxJR DataOut[22]
load net PCin[23] -attr @rip DataOut[23] -pin PC_Reg RegIn[23] -pin muxJR DataOut[23]
load net PCin[24] -attr @rip DataOut[24] -pin PC_Reg RegIn[24] -pin muxJR DataOut[24]
load net PCin[25] -attr @rip DataOut[25] -pin PC_Reg RegIn[25] -pin muxJR DataOut[25]
load net PCin[26] -attr @rip DataOut[26] -pin PC_Reg RegIn[26] -pin muxJR DataOut[26]
load net PCin[27] -attr @rip DataOut[27] -pin PC_Reg RegIn[27] -pin muxJR DataOut[27]
load net PCin[28] -attr @rip DataOut[28] -pin PC_Reg RegIn[28] -pin muxJR DataOut[28]
load net PCin[29] -attr @rip DataOut[29] -pin PC_Reg RegIn[29] -pin muxJR DataOut[29]
load net PCin[2] -attr @rip DataOut[2] -pin PC_Reg RegIn[2] -pin muxJR DataOut[2]
load net PCin[30] -attr @rip DataOut[30] -pin PC_Reg RegIn[30] -pin muxJR DataOut[30]
load net PCin[31] -attr @rip DataOut[31] -pin PC_Reg RegIn[31] -pin muxJR DataOut[31]
load net PCin[3] -attr @rip DataOut[3] -pin PC_Reg RegIn[3] -pin muxJR DataOut[3]
load net PCin[4] -attr @rip DataOut[4] -pin PC_Reg RegIn[4] -pin muxJR DataOut[4]
load net PCin[5] -attr @rip DataOut[5] -pin PC_Reg RegIn[5] -pin muxJR DataOut[5]
load net PCin[6] -attr @rip DataOut[6] -pin PC_Reg RegIn[6] -pin muxJR DataOut[6]
load net PCin[7] -attr @rip DataOut[7] -pin PC_Reg RegIn[7] -pin muxJR DataOut[7]
load net PCin[8] -attr @rip DataOut[8] -pin PC_Reg RegIn[8] -pin muxJR DataOut[8]
load net PCin[9] -attr @rip DataOut[9] -pin PC_Reg RegIn[9] -pin muxJR DataOut[9]
load net PCjr[0] -attr @rip DataOut[0] -pin alu_block BussA[0] -pin mux3A DataOut[0] -pin muxJR Data1[0]
load net PCjr[10] -attr @rip DataOut[10] -pin alu_block BussA[10] -pin mux3A DataOut[10] -pin muxJR Data1[10]
load net PCjr[11] -attr @rip DataOut[11] -pin alu_block BussA[11] -pin mux3A DataOut[11] -pin muxJR Data1[11]
load net PCjr[12] -attr @rip DataOut[12] -pin alu_block BussA[12] -pin mux3A DataOut[12] -pin muxJR Data1[12]
load net PCjr[13] -attr @rip DataOut[13] -pin alu_block BussA[13] -pin mux3A DataOut[13] -pin muxJR Data1[13]
load net PCjr[14] -attr @rip DataOut[14] -pin alu_block BussA[14] -pin mux3A DataOut[14] -pin muxJR Data1[14]
load net PCjr[15] -attr @rip DataOut[15] -pin alu_block BussA[15] -pin mux3A DataOut[15] -pin muxJR Data1[15]
load net PCjr[16] -attr @rip DataOut[16] -pin alu_block BussA[16] -pin mux3A DataOut[16] -pin muxJR Data1[16]
load net PCjr[17] -attr @rip DataOut[17] -pin alu_block BussA[17] -pin mux3A DataOut[17] -pin muxJR Data1[17]
load net PCjr[18] -attr @rip DataOut[18] -pin alu_block BussA[18] -pin mux3A DataOut[18] -pin muxJR Data1[18]
load net PCjr[19] -attr @rip DataOut[19] -pin alu_block BussA[19] -pin mux3A DataOut[19] -pin muxJR Data1[19]
load net PCjr[1] -attr @rip DataOut[1] -pin alu_block BussA[1] -pin mux3A DataOut[1] -pin muxJR Data1[1]
load net PCjr[20] -attr @rip DataOut[20] -pin alu_block BussA[20] -pin mux3A DataOut[20] -pin muxJR Data1[20]
load net PCjr[21] -attr @rip DataOut[21] -pin alu_block BussA[21] -pin mux3A DataOut[21] -pin muxJR Data1[21]
load net PCjr[22] -attr @rip DataOut[22] -pin alu_block BussA[22] -pin mux3A DataOut[22] -pin muxJR Data1[22]
load net PCjr[23] -attr @rip DataOut[23] -pin alu_block BussA[23] -pin mux3A DataOut[23] -pin muxJR Data1[23]
load net PCjr[24] -attr @rip DataOut[24] -pin alu_block BussA[24] -pin mux3A DataOut[24] -pin muxJR Data1[24]
load net PCjr[25] -attr @rip DataOut[25] -pin alu_block BussA[25] -pin mux3A DataOut[25] -pin muxJR Data1[25]
load net PCjr[26] -attr @rip DataOut[26] -pin alu_block BussA[26] -pin mux3A DataOut[26] -pin muxJR Data1[26]
load net PCjr[27] -attr @rip DataOut[27] -pin alu_block BussA[27] -pin mux3A DataOut[27] -pin muxJR Data1[27]
load net PCjr[28] -attr @rip DataOut[28] -pin alu_block BussA[28] -pin mux3A DataOut[28] -pin muxJR Data1[28]
load net PCjr[29] -attr @rip DataOut[29] -pin alu_block BussA[29] -pin mux3A DataOut[29] -pin muxJR Data1[29]
load net PCjr[2] -attr @rip DataOut[2] -pin alu_block BussA[2] -pin mux3A DataOut[2] -pin muxJR Data1[2]
load net PCjr[30] -attr @rip DataOut[30] -pin alu_block BussA[30] -pin mux3A DataOut[30] -pin muxJR Data1[30]
load net PCjr[31] -attr @rip DataOut[31] -pin alu_block BussA[31] -pin mux3A DataOut[31] -pin muxJR Data1[31]
load net PCjr[3] -attr @rip DataOut[3] -pin alu_block BussA[3] -pin mux3A DataOut[3] -pin muxJR Data1[3]
load net PCjr[4] -attr @rip DataOut[4] -pin alu_block BussA[4] -pin mux3A DataOut[4] -pin muxJR Data1[4]
load net PCjr[5] -attr @rip DataOut[5] -pin alu_block BussA[5] -pin mux3A DataOut[5] -pin muxJR Data1[5]
load net PCjr[6] -attr @rip DataOut[6] -pin alu_block BussA[6] -pin mux3A DataOut[6] -pin muxJR Data1[6]
load net PCjr[7] -attr @rip DataOut[7] -pin alu_block BussA[7] -pin mux3A DataOut[7] -pin muxJR Data1[7]
load net PCjr[8] -attr @rip DataOut[8] -pin alu_block BussA[8] -pin mux3A DataOut[8] -pin muxJR Data1[8]
load net PCjr[9] -attr @rip DataOut[9] -pin alu_block BussA[9] -pin mux3A DataOut[9] -pin muxJR Data1[9]
load net ReadData1Out[0] -attr @rip ReadData1Out[0] -pin IDEX_ReadData1 RegIn[0] -pin WB_forward_block ReadData1Out[0]
load net ReadData1Out[10] -attr @rip ReadData1Out[10] -pin IDEX_ReadData1 RegIn[10] -pin WB_forward_block ReadData1Out[10]
load net ReadData1Out[11] -attr @rip ReadData1Out[11] -pin IDEX_ReadData1 RegIn[11] -pin WB_forward_block ReadData1Out[11]
load net ReadData1Out[12] -attr @rip ReadData1Out[12] -pin IDEX_ReadData1 RegIn[12] -pin WB_forward_block ReadData1Out[12]
load net ReadData1Out[13] -attr @rip ReadData1Out[13] -pin IDEX_ReadData1 RegIn[13] -pin WB_forward_block ReadData1Out[13]
load net ReadData1Out[14] -attr @rip ReadData1Out[14] -pin IDEX_ReadData1 RegIn[14] -pin WB_forward_block ReadData1Out[14]
load net ReadData1Out[15] -attr @rip ReadData1Out[15] -pin IDEX_ReadData1 RegIn[15] -pin WB_forward_block ReadData1Out[15]
load net ReadData1Out[16] -attr @rip ReadData1Out[16] -pin IDEX_ReadData1 RegIn[16] -pin WB_forward_block ReadData1Out[16]
load net ReadData1Out[17] -attr @rip ReadData1Out[17] -pin IDEX_ReadData1 RegIn[17] -pin WB_forward_block ReadData1Out[17]
load net ReadData1Out[18] -attr @rip ReadData1Out[18] -pin IDEX_ReadData1 RegIn[18] -pin WB_forward_block ReadData1Out[18]
load net ReadData1Out[19] -attr @rip ReadData1Out[19] -pin IDEX_ReadData1 RegIn[19] -pin WB_forward_block ReadData1Out[19]
load net ReadData1Out[1] -attr @rip ReadData1Out[1] -pin IDEX_ReadData1 RegIn[1] -pin WB_forward_block ReadData1Out[1]
load net ReadData1Out[20] -attr @rip ReadData1Out[20] -pin IDEX_ReadData1 RegIn[20] -pin WB_forward_block ReadData1Out[20]
load net ReadData1Out[21] -attr @rip ReadData1Out[21] -pin IDEX_ReadData1 RegIn[21] -pin WB_forward_block ReadData1Out[21]
load net ReadData1Out[22] -attr @rip ReadData1Out[22] -pin IDEX_ReadData1 RegIn[22] -pin WB_forward_block ReadData1Out[22]
load net ReadData1Out[23] -attr @rip ReadData1Out[23] -pin IDEX_ReadData1 RegIn[23] -pin WB_forward_block ReadData1Out[23]
load net ReadData1Out[24] -attr @rip ReadData1Out[24] -pin IDEX_ReadData1 RegIn[24] -pin WB_forward_block ReadData1Out[24]
load net ReadData1Out[25] -attr @rip ReadData1Out[25] -pin IDEX_ReadData1 RegIn[25] -pin WB_forward_block ReadData1Out[25]
load net ReadData1Out[26] -attr @rip ReadData1Out[26] -pin IDEX_ReadData1 RegIn[26] -pin WB_forward_block ReadData1Out[26]
load net ReadData1Out[27] -attr @rip ReadData1Out[27] -pin IDEX_ReadData1 RegIn[27] -pin WB_forward_block ReadData1Out[27]
load net ReadData1Out[28] -attr @rip ReadData1Out[28] -pin IDEX_ReadData1 RegIn[28] -pin WB_forward_block ReadData1Out[28]
load net ReadData1Out[29] -attr @rip ReadData1Out[29] -pin IDEX_ReadData1 RegIn[29] -pin WB_forward_block ReadData1Out[29]
load net ReadData1Out[2] -attr @rip ReadData1Out[2] -pin IDEX_ReadData1 RegIn[2] -pin WB_forward_block ReadData1Out[2]
load net ReadData1Out[30] -attr @rip ReadData1Out[30] -pin IDEX_ReadData1 RegIn[30] -pin WB_forward_block ReadData1Out[30]
load net ReadData1Out[31] -attr @rip ReadData1Out[31] -pin IDEX_ReadData1 RegIn[31] -pin WB_forward_block ReadData1Out[31]
load net ReadData1Out[3] -attr @rip ReadData1Out[3] -pin IDEX_ReadData1 RegIn[3] -pin WB_forward_block ReadData1Out[3]
load net ReadData1Out[4] -attr @rip ReadData1Out[4] -pin IDEX_ReadData1 RegIn[4] -pin WB_forward_block ReadData1Out[4]
load net ReadData1Out[5] -attr @rip ReadData1Out[5] -pin IDEX_ReadData1 RegIn[5] -pin WB_forward_block ReadData1Out[5]
load net ReadData1Out[6] -attr @rip ReadData1Out[6] -pin IDEX_ReadData1 RegIn[6] -pin WB_forward_block ReadData1Out[6]
load net ReadData1Out[7] -attr @rip ReadData1Out[7] -pin IDEX_ReadData1 RegIn[7] -pin WB_forward_block ReadData1Out[7]
load net ReadData1Out[8] -attr @rip ReadData1Out[8] -pin IDEX_ReadData1 RegIn[8] -pin WB_forward_block ReadData1Out[8]
load net ReadData1Out[9] -attr @rip ReadData1Out[9] -pin IDEX_ReadData1 RegIn[9] -pin WB_forward_block ReadData1Out[9]
load net ReadData1[0] -attr @rip ReadData1[0] -pin Register_File ReadData1[0] -pin WB_forward_block ReadData1[0]
load net ReadData1[10] -attr @rip ReadData1[10] -pin Register_File ReadData1[10] -pin WB_forward_block ReadData1[10]
load net ReadData1[11] -attr @rip ReadData1[11] -pin Register_File ReadData1[11] -pin WB_forward_block ReadData1[11]
load net ReadData1[12] -attr @rip ReadData1[12] -pin Register_File ReadData1[12] -pin WB_forward_block ReadData1[12]
load net ReadData1[13] -attr @rip ReadData1[13] -pin Register_File ReadData1[13] -pin WB_forward_block ReadData1[13]
load net ReadData1[14] -attr @rip ReadData1[14] -pin Register_File ReadData1[14] -pin WB_forward_block ReadData1[14]
load net ReadData1[15] -attr @rip ReadData1[15] -pin Register_File ReadData1[15] -pin WB_forward_block ReadData1[15]
load net ReadData1[16] -attr @rip ReadData1[16] -pin Register_File ReadData1[16] -pin WB_forward_block ReadData1[16]
load net ReadData1[17] -attr @rip ReadData1[17] -pin Register_File ReadData1[17] -pin WB_forward_block ReadData1[17]
load net ReadData1[18] -attr @rip ReadData1[18] -pin Register_File ReadData1[18] -pin WB_forward_block ReadData1[18]
load net ReadData1[19] -attr @rip ReadData1[19] -pin Register_File ReadData1[19] -pin WB_forward_block ReadData1[19]
load net ReadData1[1] -attr @rip ReadData1[1] -pin Register_File ReadData1[1] -pin WB_forward_block ReadData1[1]
load net ReadData1[20] -attr @rip ReadData1[20] -pin Register_File ReadData1[20] -pin WB_forward_block ReadData1[20]
load net ReadData1[21] -attr @rip ReadData1[21] -pin Register_File ReadData1[21] -pin WB_forward_block ReadData1[21]
load net ReadData1[22] -attr @rip ReadData1[22] -pin Register_File ReadData1[22] -pin WB_forward_block ReadData1[22]
load net ReadData1[23] -attr @rip ReadData1[23] -pin Register_File ReadData1[23] -pin WB_forward_block ReadData1[23]
load net ReadData1[24] -attr @rip ReadData1[24] -pin Register_File ReadData1[24] -pin WB_forward_block ReadData1[24]
load net ReadData1[25] -attr @rip ReadData1[25] -pin Register_File ReadData1[25] -pin WB_forward_block ReadData1[25]
load net ReadData1[26] -attr @rip ReadData1[26] -pin Register_File ReadData1[26] -pin WB_forward_block ReadData1[26]
load net ReadData1[27] -attr @rip ReadData1[27] -pin Register_File ReadData1[27] -pin WB_forward_block ReadData1[27]
load net ReadData1[28] -attr @rip ReadData1[28] -pin Register_File ReadData1[28] -pin WB_forward_block ReadData1[28]
load net ReadData1[29] -attr @rip ReadData1[29] -pin Register_File ReadData1[29] -pin WB_forward_block ReadData1[29]
load net ReadData1[2] -attr @rip ReadData1[2] -pin Register_File ReadData1[2] -pin WB_forward_block ReadData1[2]
load net ReadData1[30] -attr @rip ReadData1[30] -pin Register_File ReadData1[30] -pin WB_forward_block ReadData1[30]
load net ReadData1[31] -attr @rip ReadData1[31] -pin Register_File ReadData1[31] -pin WB_forward_block ReadData1[31]
load net ReadData1[3] -attr @rip ReadData1[3] -pin Register_File ReadData1[3] -pin WB_forward_block ReadData1[3]
load net ReadData1[4] -attr @rip ReadData1[4] -pin Register_File ReadData1[4] -pin WB_forward_block ReadData1[4]
load net ReadData1[5] -attr @rip ReadData1[5] -pin Register_File ReadData1[5] -pin WB_forward_block ReadData1[5]
load net ReadData1[6] -attr @rip ReadData1[6] -pin Register_File ReadData1[6] -pin WB_forward_block ReadData1[6]
load net ReadData1[7] -attr @rip ReadData1[7] -pin Register_File ReadData1[7] -pin WB_forward_block ReadData1[7]
load net ReadData1[8] -attr @rip ReadData1[8] -pin Register_File ReadData1[8] -pin WB_forward_block ReadData1[8]
load net ReadData1[9] -attr @rip ReadData1[9] -pin Register_File ReadData1[9] -pin WB_forward_block ReadData1[9]
load net ReadData2Out[0] -attr @rip ReadData2Out[0] -pin IDEX_ReadData2 RegIn[0] -pin WB_forward_block ReadData2Out[0]
load net ReadData2Out[10] -attr @rip ReadData2Out[10] -pin IDEX_ReadData2 RegIn[10] -pin WB_forward_block ReadData2Out[10]
load net ReadData2Out[11] -attr @rip ReadData2Out[11] -pin IDEX_ReadData2 RegIn[11] -pin WB_forward_block ReadData2Out[11]
load net ReadData2Out[12] -attr @rip ReadData2Out[12] -pin IDEX_ReadData2 RegIn[12] -pin WB_forward_block ReadData2Out[12]
load net ReadData2Out[13] -attr @rip ReadData2Out[13] -pin IDEX_ReadData2 RegIn[13] -pin WB_forward_block ReadData2Out[13]
load net ReadData2Out[14] -attr @rip ReadData2Out[14] -pin IDEX_ReadData2 RegIn[14] -pin WB_forward_block ReadData2Out[14]
load net ReadData2Out[15] -attr @rip ReadData2Out[15] -pin IDEX_ReadData2 RegIn[15] -pin WB_forward_block ReadData2Out[15]
load net ReadData2Out[16] -attr @rip ReadData2Out[16] -pin IDEX_ReadData2 RegIn[16] -pin WB_forward_block ReadData2Out[16]
load net ReadData2Out[17] -attr @rip ReadData2Out[17] -pin IDEX_ReadData2 RegIn[17] -pin WB_forward_block ReadData2Out[17]
load net ReadData2Out[18] -attr @rip ReadData2Out[18] -pin IDEX_ReadData2 RegIn[18] -pin WB_forward_block ReadData2Out[18]
load net ReadData2Out[19] -attr @rip ReadData2Out[19] -pin IDEX_ReadData2 RegIn[19] -pin WB_forward_block ReadData2Out[19]
load net ReadData2Out[1] -attr @rip ReadData2Out[1] -pin IDEX_ReadData2 RegIn[1] -pin WB_forward_block ReadData2Out[1]
load net ReadData2Out[20] -attr @rip ReadData2Out[20] -pin IDEX_ReadData2 RegIn[20] -pin WB_forward_block ReadData2Out[20]
load net ReadData2Out[21] -attr @rip ReadData2Out[21] -pin IDEX_ReadData2 RegIn[21] -pin WB_forward_block ReadData2Out[21]
load net ReadData2Out[22] -attr @rip ReadData2Out[22] -pin IDEX_ReadData2 RegIn[22] -pin WB_forward_block ReadData2Out[22]
load net ReadData2Out[23] -attr @rip ReadData2Out[23] -pin IDEX_ReadData2 RegIn[23] -pin WB_forward_block ReadData2Out[23]
load net ReadData2Out[24] -attr @rip ReadData2Out[24] -pin IDEX_ReadData2 RegIn[24] -pin WB_forward_block ReadData2Out[24]
load net ReadData2Out[25] -attr @rip ReadData2Out[25] -pin IDEX_ReadData2 RegIn[25] -pin WB_forward_block ReadData2Out[25]
load net ReadData2Out[26] -attr @rip ReadData2Out[26] -pin IDEX_ReadData2 RegIn[26] -pin WB_forward_block ReadData2Out[26]
load net ReadData2Out[27] -attr @rip ReadData2Out[27] -pin IDEX_ReadData2 RegIn[27] -pin WB_forward_block ReadData2Out[27]
load net ReadData2Out[28] -attr @rip ReadData2Out[28] -pin IDEX_ReadData2 RegIn[28] -pin WB_forward_block ReadData2Out[28]
load net ReadData2Out[29] -attr @rip ReadData2Out[29] -pin IDEX_ReadData2 RegIn[29] -pin WB_forward_block ReadData2Out[29]
load net ReadData2Out[2] -attr @rip ReadData2Out[2] -pin IDEX_ReadData2 RegIn[2] -pin WB_forward_block ReadData2Out[2]
load net ReadData2Out[30] -attr @rip ReadData2Out[30] -pin IDEX_ReadData2 RegIn[30] -pin WB_forward_block ReadData2Out[30]
load net ReadData2Out[31] -attr @rip ReadData2Out[31] -pin IDEX_ReadData2 RegIn[31] -pin WB_forward_block ReadData2Out[31]
load net ReadData2Out[3] -attr @rip ReadData2Out[3] -pin IDEX_ReadData2 RegIn[3] -pin WB_forward_block ReadData2Out[3]
load net ReadData2Out[4] -attr @rip ReadData2Out[4] -pin IDEX_ReadData2 RegIn[4] -pin WB_forward_block ReadData2Out[4]
load net ReadData2Out[5] -attr @rip ReadData2Out[5] -pin IDEX_ReadData2 RegIn[5] -pin WB_forward_block ReadData2Out[5]
load net ReadData2Out[6] -attr @rip ReadData2Out[6] -pin IDEX_ReadData2 RegIn[6] -pin WB_forward_block ReadData2Out[6]
load net ReadData2Out[7] -attr @rip ReadData2Out[7] -pin IDEX_ReadData2 RegIn[7] -pin WB_forward_block ReadData2Out[7]
load net ReadData2Out[8] -attr @rip ReadData2Out[8] -pin IDEX_ReadData2 RegIn[8] -pin WB_forward_block ReadData2Out[8]
load net ReadData2Out[9] -attr @rip ReadData2Out[9] -pin IDEX_ReadData2 RegIn[9] -pin WB_forward_block ReadData2Out[9]
load net ReadData2[0] -attr @rip ReadData2[0] -pin Register_File ReadData2[0] -pin WB_forward_block ReadData2[0]
load net ReadData2[10] -attr @rip ReadData2[10] -pin Register_File ReadData2[10] -pin WB_forward_block ReadData2[10]
load net ReadData2[11] -attr @rip ReadData2[11] -pin Register_File ReadData2[11] -pin WB_forward_block ReadData2[11]
load net ReadData2[12] -attr @rip ReadData2[12] -pin Register_File ReadData2[12] -pin WB_forward_block ReadData2[12]
load net ReadData2[13] -attr @rip ReadData2[13] -pin Register_File ReadData2[13] -pin WB_forward_block ReadData2[13]
load net ReadData2[14] -attr @rip ReadData2[14] -pin Register_File ReadData2[14] -pin WB_forward_block ReadData2[14]
load net ReadData2[15] -attr @rip ReadData2[15] -pin Register_File ReadData2[15] -pin WB_forward_block ReadData2[15]
load net ReadData2[16] -attr @rip ReadData2[16] -pin Register_File ReadData2[16] -pin WB_forward_block ReadData2[16]
load net ReadData2[17] -attr @rip ReadData2[17] -pin Register_File ReadData2[17] -pin WB_forward_block ReadData2[17]
load net ReadData2[18] -attr @rip ReadData2[18] -pin Register_File ReadData2[18] -pin WB_forward_block ReadData2[18]
load net ReadData2[19] -attr @rip ReadData2[19] -pin Register_File ReadData2[19] -pin WB_forward_block ReadData2[19]
load net ReadData2[1] -attr @rip ReadData2[1] -pin Register_File ReadData2[1] -pin WB_forward_block ReadData2[1]
load net ReadData2[20] -attr @rip ReadData2[20] -pin Register_File ReadData2[20] -pin WB_forward_block ReadData2[20]
load net ReadData2[21] -attr @rip ReadData2[21] -pin Register_File ReadData2[21] -pin WB_forward_block ReadData2[21]
load net ReadData2[22] -attr @rip ReadData2[22] -pin Register_File ReadData2[22] -pin WB_forward_block ReadData2[22]
load net ReadData2[23] -attr @rip ReadData2[23] -pin Register_File ReadData2[23] -pin WB_forward_block ReadData2[23]
load net ReadData2[24] -attr @rip ReadData2[24] -pin Register_File ReadData2[24] -pin WB_forward_block ReadData2[24]
load net ReadData2[25] -attr @rip ReadData2[25] -pin Register_File ReadData2[25] -pin WB_forward_block ReadData2[25]
load net ReadData2[26] -attr @rip ReadData2[26] -pin Register_File ReadData2[26] -pin WB_forward_block ReadData2[26]
load net ReadData2[27] -attr @rip ReadData2[27] -pin Register_File ReadData2[27] -pin WB_forward_block ReadData2[27]
load net ReadData2[28] -attr @rip ReadData2[28] -pin Register_File ReadData2[28] -pin WB_forward_block ReadData2[28]
load net ReadData2[29] -attr @rip ReadData2[29] -pin Register_File ReadData2[29] -pin WB_forward_block ReadData2[29]
load net ReadData2[2] -attr @rip ReadData2[2] -pin Register_File ReadData2[2] -pin WB_forward_block ReadData2[2]
load net ReadData2[30] -attr @rip ReadData2[30] -pin Register_File ReadData2[30] -pin WB_forward_block ReadData2[30]
load net ReadData2[31] -attr @rip ReadData2[31] -pin Register_File ReadData2[31] -pin WB_forward_block ReadData2[31]
load net ReadData2[3] -attr @rip ReadData2[3] -pin Register_File ReadData2[3] -pin WB_forward_block ReadData2[3]
load net ReadData2[4] -attr @rip ReadData2[4] -pin Register_File ReadData2[4] -pin WB_forward_block ReadData2[4]
load net ReadData2[5] -attr @rip ReadData2[5] -pin Register_File ReadData2[5] -pin WB_forward_block ReadData2[5]
load net ReadData2[6] -attr @rip ReadData2[6] -pin Register_File ReadData2[6] -pin WB_forward_block ReadData2[6]
load net ReadData2[7] -attr @rip ReadData2[7] -pin Register_File ReadData2[7] -pin WB_forward_block ReadData2[7]
load net ReadData2[8] -attr @rip ReadData2[8] -pin Register_File ReadData2[8] -pin WB_forward_block ReadData2[8]
load net ReadData2[9] -attr @rip ReadData2[9] -pin Register_File ReadData2[9] -pin WB_forward_block ReadData2[9]
load net RegDst -pin MainControl RegDst -pin flush_block1 RegDst
netloc RegDst 1 19 1 7220 950n
load net RegWrite -pin MainControl RegWrite -pin flush_block1 RegWrite
netloc RegWrite 1 19 1 7200 970n
load net SignZero -pin MainControl SignZero -pin muxSignZero Select
netloc SignZero 1 8 12 3050 1010 NJ 1010 NJ 1010 NJ 1010 4720J 1030 NJ 1030 NJ 1030 NJ 1030 NJ 1030 NJ 1030 NJ 1030 7180
load net Stall_flush -pin OR_flush_i__0 I1 -pin StallControl_block Stall_flush
netloc Stall_flush 1 9 10 NJ 690 3830J 730 NJ 730 NJ 730 NJ 730 NJ 730 NJ 730 NJ 730 NJ 730 6880
load net WB_ALUResult[0] -attr @rip RegOut[0] -pin MEMWB_ALUResult RegOut[0] -pin muxMemtoReg Data0[0]
load net WB_ALUResult[10] -attr @rip RegOut[10] -pin MEMWB_ALUResult RegOut[10] -pin muxMemtoReg Data0[10]
load net WB_ALUResult[11] -attr @rip RegOut[11] -pin MEMWB_ALUResult RegOut[11] -pin muxMemtoReg Data0[11]
load net WB_ALUResult[12] -attr @rip RegOut[12] -pin MEMWB_ALUResult RegOut[12] -pin muxMemtoReg Data0[12]
load net WB_ALUResult[13] -attr @rip RegOut[13] -pin MEMWB_ALUResult RegOut[13] -pin muxMemtoReg Data0[13]
load net WB_ALUResult[14] -attr @rip RegOut[14] -pin MEMWB_ALUResult RegOut[14] -pin muxMemtoReg Data0[14]
load net WB_ALUResult[15] -attr @rip RegOut[15] -pin MEMWB_ALUResult RegOut[15] -pin muxMemtoReg Data0[15]
load net WB_ALUResult[16] -attr @rip RegOut[16] -pin MEMWB_ALUResult RegOut[16] -pin muxMemtoReg Data0[16]
load net WB_ALUResult[17] -attr @rip RegOut[17] -pin MEMWB_ALUResult RegOut[17] -pin muxMemtoReg Data0[17]
load net WB_ALUResult[18] -attr @rip RegOut[18] -pin MEMWB_ALUResult RegOut[18] -pin muxMemtoReg Data0[18]
load net WB_ALUResult[19] -attr @rip RegOut[19] -pin MEMWB_ALUResult RegOut[19] -pin muxMemtoReg Data0[19]
load net WB_ALUResult[1] -attr @rip RegOut[1] -pin MEMWB_ALUResult RegOut[1] -pin muxMemtoReg Data0[1]
load net WB_ALUResult[20] -attr @rip RegOut[20] -pin MEMWB_ALUResult RegOut[20] -pin muxMemtoReg Data0[20]
load net WB_ALUResult[21] -attr @rip RegOut[21] -pin MEMWB_ALUResult RegOut[21] -pin muxMemtoReg Data0[21]
load net WB_ALUResult[22] -attr @rip RegOut[22] -pin MEMWB_ALUResult RegOut[22] -pin muxMemtoReg Data0[22]
load net WB_ALUResult[23] -attr @rip RegOut[23] -pin MEMWB_ALUResult RegOut[23] -pin muxMemtoReg Data0[23]
load net WB_ALUResult[24] -attr @rip RegOut[24] -pin MEMWB_ALUResult RegOut[24] -pin muxMemtoReg Data0[24]
load net WB_ALUResult[25] -attr @rip RegOut[25] -pin MEMWB_ALUResult RegOut[25] -pin muxMemtoReg Data0[25]
load net WB_ALUResult[26] -attr @rip RegOut[26] -pin MEMWB_ALUResult RegOut[26] -pin muxMemtoReg Data0[26]
load net WB_ALUResult[27] -attr @rip RegOut[27] -pin MEMWB_ALUResult RegOut[27] -pin muxMemtoReg Data0[27]
load net WB_ALUResult[28] -attr @rip RegOut[28] -pin MEMWB_ALUResult RegOut[28] -pin muxMemtoReg Data0[28]
load net WB_ALUResult[29] -attr @rip RegOut[29] -pin MEMWB_ALUResult RegOut[29] -pin muxMemtoReg Data0[29]
load net WB_ALUResult[2] -attr @rip RegOut[2] -pin MEMWB_ALUResult RegOut[2] -pin muxMemtoReg Data0[2]
load net WB_ALUResult[30] -attr @rip RegOut[30] -pin MEMWB_ALUResult RegOut[30] -pin muxMemtoReg Data0[30]
load net WB_ALUResult[31] -attr @rip RegOut[31] -pin MEMWB_ALUResult RegOut[31] -pin muxMemtoReg Data0[31]
load net WB_ALUResult[3] -attr @rip RegOut[3] -pin MEMWB_ALUResult RegOut[3] -pin muxMemtoReg Data0[3]
load net WB_ALUResult[4] -attr @rip RegOut[4] -pin MEMWB_ALUResult RegOut[4] -pin muxMemtoReg Data0[4]
load net WB_ALUResult[5] -attr @rip RegOut[5] -pin MEMWB_ALUResult RegOut[5] -pin muxMemtoReg Data0[5]
load net WB_ALUResult[6] -attr @rip RegOut[6] -pin MEMWB_ALUResult RegOut[6] -pin muxMemtoReg Data0[6]
load net WB_ALUResult[7] -attr @rip RegOut[7] -pin MEMWB_ALUResult RegOut[7] -pin muxMemtoReg Data0[7]
load net WB_ALUResult[8] -attr @rip RegOut[8] -pin MEMWB_ALUResult RegOut[8] -pin muxMemtoReg Data0[8]
load net WB_ALUResult[9] -attr @rip RegOut[9] -pin MEMWB_ALUResult RegOut[9] -pin muxMemtoReg Data0[9]
load net WB_MemtoReg -pin MEMWB_MemtoReg BitOut -pin muxMemtoReg Select
netloc WB_MemtoReg 1 9 1 3400 1210n
load net WB_ReadDataOfMem[0] -attr @rip RegOut[0] -pin MEMWB_ReadDataOfMem RegOut[0] -pin muxMemtoReg Data1[0]
load net WB_ReadDataOfMem[10] -attr @rip RegOut[10] -pin MEMWB_ReadDataOfMem RegOut[10] -pin muxMemtoReg Data1[10]
load net WB_ReadDataOfMem[11] -attr @rip RegOut[11] -pin MEMWB_ReadDataOfMem RegOut[11] -pin muxMemtoReg Data1[11]
load net WB_ReadDataOfMem[12] -attr @rip RegOut[12] -pin MEMWB_ReadDataOfMem RegOut[12] -pin muxMemtoReg Data1[12]
load net WB_ReadDataOfMem[13] -attr @rip RegOut[13] -pin MEMWB_ReadDataOfMem RegOut[13] -pin muxMemtoReg Data1[13]
load net WB_ReadDataOfMem[14] -attr @rip RegOut[14] -pin MEMWB_ReadDataOfMem RegOut[14] -pin muxMemtoReg Data1[14]
load net WB_ReadDataOfMem[15] -attr @rip RegOut[15] -pin MEMWB_ReadDataOfMem RegOut[15] -pin muxMemtoReg Data1[15]
load net WB_ReadDataOfMem[16] -attr @rip RegOut[16] -pin MEMWB_ReadDataOfMem RegOut[16] -pin muxMemtoReg Data1[16]
load net WB_ReadDataOfMem[17] -attr @rip RegOut[17] -pin MEMWB_ReadDataOfMem RegOut[17] -pin muxMemtoReg Data1[17]
load net WB_ReadDataOfMem[18] -attr @rip RegOut[18] -pin MEMWB_ReadDataOfMem RegOut[18] -pin muxMemtoReg Data1[18]
load net WB_ReadDataOfMem[19] -attr @rip RegOut[19] -pin MEMWB_ReadDataOfMem RegOut[19] -pin muxMemtoReg Data1[19]
load net WB_ReadDataOfMem[1] -attr @rip RegOut[1] -pin MEMWB_ReadDataOfMem RegOut[1] -pin muxMemtoReg Data1[1]
load net WB_ReadDataOfMem[20] -attr @rip RegOut[20] -pin MEMWB_ReadDataOfMem RegOut[20] -pin muxMemtoReg Data1[20]
load net WB_ReadDataOfMem[21] -attr @rip RegOut[21] -pin MEMWB_ReadDataOfMem RegOut[21] -pin muxMemtoReg Data1[21]
load net WB_ReadDataOfMem[22] -attr @rip RegOut[22] -pin MEMWB_ReadDataOfMem RegOut[22] -pin muxMemtoReg Data1[22]
load net WB_ReadDataOfMem[23] -attr @rip RegOut[23] -pin MEMWB_ReadDataOfMem RegOut[23] -pin muxMemtoReg Data1[23]
load net WB_ReadDataOfMem[24] -attr @rip RegOut[24] -pin MEMWB_ReadDataOfMem RegOut[24] -pin muxMemtoReg Data1[24]
load net WB_ReadDataOfMem[25] -attr @rip RegOut[25] -pin MEMWB_ReadDataOfMem RegOut[25] -pin muxMemtoReg Data1[25]
load net WB_ReadDataOfMem[26] -attr @rip RegOut[26] -pin MEMWB_ReadDataOfMem RegOut[26] -pin muxMemtoReg Data1[26]
load net WB_ReadDataOfMem[27] -attr @rip RegOut[27] -pin MEMWB_ReadDataOfMem RegOut[27] -pin muxMemtoReg Data1[27]
load net WB_ReadDataOfMem[28] -attr @rip RegOut[28] -pin MEMWB_ReadDataOfMem RegOut[28] -pin muxMemtoReg Data1[28]
load net WB_ReadDataOfMem[29] -attr @rip RegOut[29] -pin MEMWB_ReadDataOfMem RegOut[29] -pin muxMemtoReg Data1[29]
load net WB_ReadDataOfMem[2] -attr @rip RegOut[2] -pin MEMWB_ReadDataOfMem RegOut[2] -pin muxMemtoReg Data1[2]
load net WB_ReadDataOfMem[30] -attr @rip RegOut[30] -pin MEMWB_ReadDataOfMem RegOut[30] -pin muxMemtoReg Data1[30]
load net WB_ReadDataOfMem[31] -attr @rip RegOut[31] -pin MEMWB_ReadDataOfMem RegOut[31] -pin muxMemtoReg Data1[31]
load net WB_ReadDataOfMem[3] -attr @rip RegOut[3] -pin MEMWB_ReadDataOfMem RegOut[3] -pin muxMemtoReg Data1[3]
load net WB_ReadDataOfMem[4] -attr @rip RegOut[4] -pin MEMWB_ReadDataOfMem RegOut[4] -pin muxMemtoReg Data1[4]
load net WB_ReadDataOfMem[5] -attr @rip RegOut[5] -pin MEMWB_ReadDataOfMem RegOut[5] -pin muxMemtoReg Data1[5]
load net WB_ReadDataOfMem[6] -attr @rip RegOut[6] -pin MEMWB_ReadDataOfMem RegOut[6] -pin muxMemtoReg Data1[6]
load net WB_ReadDataOfMem[7] -attr @rip RegOut[7] -pin MEMWB_ReadDataOfMem RegOut[7] -pin muxMemtoReg Data1[7]
load net WB_ReadDataOfMem[8] -attr @rip RegOut[8] -pin MEMWB_ReadDataOfMem RegOut[8] -pin muxMemtoReg Data1[8]
load net WB_ReadDataOfMem[9] -attr @rip RegOut[9] -pin MEMWB_ReadDataOfMem RegOut[9] -pin muxMemtoReg Data1[9]
load net WB_RegWrite -pin Forwarding_Block WB_RegWrite -pin MEMWB_RegWrite BitOut -pin Register_File RegWrite -pin WB_forward_block RegWrite
netloc WB_RegWrite 1 4 8 1410 790 NJ 790 NJ 790 NJ 790 NJ 790 NJ 790 3810 430 4320
load net WB_WriteData[0] -attr @rip DataOut[0] -pin Register_File WriteData[0] -pin WB_forward_block WriteData[0] -pin mux3A C[0] -pin mux3B C[0] -pin muxMemtoReg DataOut[0]
load net WB_WriteData[10] -attr @rip DataOut[10] -pin Register_File WriteData[10] -pin WB_forward_block WriteData[10] -pin mux3A C[10] -pin mux3B C[10] -pin muxMemtoReg DataOut[10]
load net WB_WriteData[11] -attr @rip DataOut[11] -pin Register_File WriteData[11] -pin WB_forward_block WriteData[11] -pin mux3A C[11] -pin mux3B C[11] -pin muxMemtoReg DataOut[11]
load net WB_WriteData[12] -attr @rip DataOut[12] -pin Register_File WriteData[12] -pin WB_forward_block WriteData[12] -pin mux3A C[12] -pin mux3B C[12] -pin muxMemtoReg DataOut[12]
load net WB_WriteData[13] -attr @rip DataOut[13] -pin Register_File WriteData[13] -pin WB_forward_block WriteData[13] -pin mux3A C[13] -pin mux3B C[13] -pin muxMemtoReg DataOut[13]
load net WB_WriteData[14] -attr @rip DataOut[14] -pin Register_File WriteData[14] -pin WB_forward_block WriteData[14] -pin mux3A C[14] -pin mux3B C[14] -pin muxMemtoReg DataOut[14]
load net WB_WriteData[15] -attr @rip DataOut[15] -pin Register_File WriteData[15] -pin WB_forward_block WriteData[15] -pin mux3A C[15] -pin mux3B C[15] -pin muxMemtoReg DataOut[15]
load net WB_WriteData[16] -attr @rip DataOut[16] -pin Register_File WriteData[16] -pin WB_forward_block WriteData[16] -pin mux3A C[16] -pin mux3B C[16] -pin muxMemtoReg DataOut[16]
load net WB_WriteData[17] -attr @rip DataOut[17] -pin Register_File WriteData[17] -pin WB_forward_block WriteData[17] -pin mux3A C[17] -pin mux3B C[17] -pin muxMemtoReg DataOut[17]
load net WB_WriteData[18] -attr @rip DataOut[18] -pin Register_File WriteData[18] -pin WB_forward_block WriteData[18] -pin mux3A C[18] -pin mux3B C[18] -pin muxMemtoReg DataOut[18]
load net WB_WriteData[19] -attr @rip DataOut[19] -pin Register_File WriteData[19] -pin WB_forward_block WriteData[19] -pin mux3A C[19] -pin mux3B C[19] -pin muxMemtoReg DataOut[19]
load net WB_WriteData[1] -attr @rip DataOut[1] -pin Register_File WriteData[1] -pin WB_forward_block WriteData[1] -pin mux3A C[1] -pin mux3B C[1] -pin muxMemtoReg DataOut[1]
load net WB_WriteData[20] -attr @rip DataOut[20] -pin Register_File WriteData[20] -pin WB_forward_block WriteData[20] -pin mux3A C[20] -pin mux3B C[20] -pin muxMemtoReg DataOut[20]
load net WB_WriteData[21] -attr @rip DataOut[21] -pin Register_File WriteData[21] -pin WB_forward_block WriteData[21] -pin mux3A C[21] -pin mux3B C[21] -pin muxMemtoReg DataOut[21]
load net WB_WriteData[22] -attr @rip DataOut[22] -pin Register_File WriteData[22] -pin WB_forward_block WriteData[22] -pin mux3A C[22] -pin mux3B C[22] -pin muxMemtoReg DataOut[22]
load net WB_WriteData[23] -attr @rip DataOut[23] -pin Register_File WriteData[23] -pin WB_forward_block WriteData[23] -pin mux3A C[23] -pin mux3B C[23] -pin muxMemtoReg DataOut[23]
load net WB_WriteData[24] -attr @rip DataOut[24] -pin Register_File WriteData[24] -pin WB_forward_block WriteData[24] -pin mux3A C[24] -pin mux3B C[24] -pin muxMemtoReg DataOut[24]
load net WB_WriteData[25] -attr @rip DataOut[25] -pin Register_File WriteData[25] -pin WB_forward_block WriteData[25] -pin mux3A C[25] -pin mux3B C[25] -pin muxMemtoReg DataOut[25]
load net WB_WriteData[26] -attr @rip DataOut[26] -pin Register_File WriteData[26] -pin WB_forward_block WriteData[26] -pin mux3A C[26] -pin mux3B C[26] -pin muxMemtoReg DataOut[26]
load net WB_WriteData[27] -attr @rip DataOut[27] -pin Register_File WriteData[27] -pin WB_forward_block WriteData[27] -pin mux3A C[27] -pin mux3B C[27] -pin muxMemtoReg DataOut[27]
load net WB_WriteData[28] -attr @rip DataOut[28] -pin Register_File WriteData[28] -pin WB_forward_block WriteData[28] -pin mux3A C[28] -pin mux3B C[28] -pin muxMemtoReg DataOut[28]
load net WB_WriteData[29] -attr @rip DataOut[29] -pin Register_File WriteData[29] -pin WB_forward_block WriteData[29] -pin mux3A C[29] -pin mux3B C[29] -pin muxMemtoReg DataOut[29]
load net WB_WriteData[2] -attr @rip DataOut[2] -pin Register_File WriteData[2] -pin WB_forward_block WriteData[2] -pin mux3A C[2] -pin mux3B C[2] -pin muxMemtoReg DataOut[2]
load net WB_WriteData[30] -attr @rip DataOut[30] -pin Register_File WriteData[30] -pin WB_forward_block WriteData[30] -pin mux3A C[30] -pin mux3B C[30] -pin muxMemtoReg DataOut[30]
load net WB_WriteData[31] -attr @rip DataOut[31] -pin Register_File WriteData[31] -pin WB_forward_block WriteData[31] -pin mux3A C[31] -pin mux3B C[31] -pin muxMemtoReg DataOut[31]
load net WB_WriteData[3] -attr @rip DataOut[3] -pin Register_File WriteData[3] -pin WB_forward_block WriteData[3] -pin mux3A C[3] -pin mux3B C[3] -pin muxMemtoReg DataOut[3]
load net WB_WriteData[4] -attr @rip DataOut[4] -pin Register_File WriteData[4] -pin WB_forward_block WriteData[4] -pin mux3A C[4] -pin mux3B C[4] -pin muxMemtoReg DataOut[4]
load net WB_WriteData[5] -attr @rip DataOut[5] -pin Register_File WriteData[5] -pin WB_forward_block WriteData[5] -pin mux3A C[5] -pin mux3B C[5] -pin muxMemtoReg DataOut[5]
load net WB_WriteData[6] -attr @rip DataOut[6] -pin Register_File WriteData[6] -pin WB_forward_block WriteData[6] -pin mux3A C[6] -pin mux3B C[6] -pin muxMemtoReg DataOut[6]
load net WB_WriteData[7] -attr @rip DataOut[7] -pin Register_File WriteData[7] -pin WB_forward_block WriteData[7] -pin mux3A C[7] -pin mux3B C[7] -pin muxMemtoReg DataOut[7]
load net WB_WriteData[8] -attr @rip DataOut[8] -pin Register_File WriteData[8] -pin WB_forward_block WriteData[8] -pin mux3A C[8] -pin mux3B C[8] -pin muxMemtoReg DataOut[8]
load net WB_WriteData[9] -attr @rip DataOut[9] -pin Register_File WriteData[9] -pin WB_forward_block WriteData[9] -pin mux3A C[9] -pin mux3B C[9] -pin muxMemtoReg DataOut[9]
load net WB_WriteRegister[0] -attr @rip 0 -pin Forwarding_Block WB_WriteRegister[0] -pin MEMWB_WriteRegister0 BitOut -pin Register_File WriteRegister[0] -pin WB_forward_block WriteRegister[0]
load net WB_WriteRegister[1] -attr @rip 1 -pin Forwarding_Block WB_WriteRegister[1] -pin MEMWB_WriteRegister1 BitOut -pin Register_File WriteRegister[1] -pin WB_forward_block WriteRegister[1]
load net WB_WriteRegister[2] -attr @rip 2 -pin Forwarding_Block WB_WriteRegister[2] -pin MEMWB_WriteRegister2 BitOut -pin Register_File WriteRegister[2] -pin WB_forward_block WriteRegister[2]
load net WB_WriteRegister[3] -attr @rip 3 -pin Forwarding_Block WB_WriteRegister[3] -pin MEMWB_WriteRegister3 BitOut -pin Register_File WriteRegister[3] -pin WB_forward_block WriteRegister[3]
load net WB_WriteRegister[4] -attr @rip 4 -pin Forwarding_Block WB_WriteRegister[4] -pin MEMWB_WriteRegister4 BitOut -pin Register_File WriteRegister[4] -pin WB_forward_block WriteRegister[4]
load net WriteDataOfMem[0] -attr @rip RegOut[0] -pin EXMEM_WriteDataOfMem RegOut[0] -pin dataMem1 writedata[0]
load net WriteDataOfMem[10] -attr @rip RegOut[10] -pin EXMEM_WriteDataOfMem RegOut[10] -pin dataMem1 writedata[10]
load net WriteDataOfMem[11] -attr @rip RegOut[11] -pin EXMEM_WriteDataOfMem RegOut[11] -pin dataMem1 writedata[11]
load net WriteDataOfMem[12] -attr @rip RegOut[12] -pin EXMEM_WriteDataOfMem RegOut[12] -pin dataMem1 writedata[12]
load net WriteDataOfMem[13] -attr @rip RegOut[13] -pin EXMEM_WriteDataOfMem RegOut[13] -pin dataMem1 writedata[13]
load net WriteDataOfMem[14] -attr @rip RegOut[14] -pin EXMEM_WriteDataOfMem RegOut[14] -pin dataMem1 writedata[14]
load net WriteDataOfMem[15] -attr @rip RegOut[15] -pin EXMEM_WriteDataOfMem RegOut[15] -pin dataMem1 writedata[15]
load net WriteDataOfMem[16] -attr @rip RegOut[16] -pin EXMEM_WriteDataOfMem RegOut[16] -pin dataMem1 writedata[16]
load net WriteDataOfMem[17] -attr @rip RegOut[17] -pin EXMEM_WriteDataOfMem RegOut[17] -pin dataMem1 writedata[17]
load net WriteDataOfMem[18] -attr @rip RegOut[18] -pin EXMEM_WriteDataOfMem RegOut[18] -pin dataMem1 writedata[18]
load net WriteDataOfMem[19] -attr @rip RegOut[19] -pin EXMEM_WriteDataOfMem RegOut[19] -pin dataMem1 writedata[19]
load net WriteDataOfMem[1] -attr @rip RegOut[1] -pin EXMEM_WriteDataOfMem RegOut[1] -pin dataMem1 writedata[1]
load net WriteDataOfMem[20] -attr @rip RegOut[20] -pin EXMEM_WriteDataOfMem RegOut[20] -pin dataMem1 writedata[20]
load net WriteDataOfMem[21] -attr @rip RegOut[21] -pin EXMEM_WriteDataOfMem RegOut[21] -pin dataMem1 writedata[21]
load net WriteDataOfMem[22] -attr @rip RegOut[22] -pin EXMEM_WriteDataOfMem RegOut[22] -pin dataMem1 writedata[22]
load net WriteDataOfMem[23] -attr @rip RegOut[23] -pin EXMEM_WriteDataOfMem RegOut[23] -pin dataMem1 writedata[23]
load net WriteDataOfMem[24] -attr @rip RegOut[24] -pin EXMEM_WriteDataOfMem RegOut[24] -pin dataMem1 writedata[24]
load net WriteDataOfMem[25] -attr @rip RegOut[25] -pin EXMEM_WriteDataOfMem RegOut[25] -pin dataMem1 writedata[25]
load net WriteDataOfMem[26] -attr @rip RegOut[26] -pin EXMEM_WriteDataOfMem RegOut[26] -pin dataMem1 writedata[26]
load net WriteDataOfMem[27] -attr @rip RegOut[27] -pin EXMEM_WriteDataOfMem RegOut[27] -pin dataMem1 writedata[27]
load net WriteDataOfMem[28] -attr @rip RegOut[28] -pin EXMEM_WriteDataOfMem RegOut[28] -pin dataMem1 writedata[28]
load net WriteDataOfMem[29] -attr @rip RegOut[29] -pin EXMEM_WriteDataOfMem RegOut[29] -pin dataMem1 writedata[29]
load net WriteDataOfMem[2] -attr @rip RegOut[2] -pin EXMEM_WriteDataOfMem RegOut[2] -pin dataMem1 writedata[2]
load net WriteDataOfMem[30] -attr @rip RegOut[30] -pin EXMEM_WriteDataOfMem RegOut[30] -pin dataMem1 writedata[30]
load net WriteDataOfMem[31] -attr @rip RegOut[31] -pin EXMEM_WriteDataOfMem RegOut[31] -pin dataMem1 writedata[31]
load net WriteDataOfMem[3] -attr @rip RegOut[3] -pin EXMEM_WriteDataOfMem RegOut[3] -pin dataMem1 writedata[3]
load net WriteDataOfMem[4] -attr @rip RegOut[4] -pin EXMEM_WriteDataOfMem RegOut[4] -pin dataMem1 writedata[4]
load net WriteDataOfMem[5] -attr @rip RegOut[5] -pin EXMEM_WriteDataOfMem RegOut[5] -pin dataMem1 writedata[5]
load net WriteDataOfMem[6] -attr @rip RegOut[6] -pin EXMEM_WriteDataOfMem RegOut[6] -pin dataMem1 writedata[6]
load net WriteDataOfMem[7] -attr @rip RegOut[7] -pin EXMEM_WriteDataOfMem RegOut[7] -pin dataMem1 writedata[7]
load net WriteDataOfMem[8] -attr @rip RegOut[8] -pin EXMEM_WriteDataOfMem RegOut[8] -pin dataMem1 writedata[8]
load net WriteDataOfMem[9] -attr @rip RegOut[9] -pin EXMEM_WriteDataOfMem RegOut[9] -pin dataMem1 writedata[9]
load net ZeroFlag -port ZeroFlag -pin alu_block zero -pin notZero_i I0
netloc ZeroFlag 1 22 2 8380 1810 8680
load net bneControl -pin Discard_Instr_Block bne -pin andJumpBNE_i I1 -pin andbneControl_i O -pin muxbneControl Select
netloc bneControl 1 12 11 4700 1690 NJ 1690 NJ 1690 5830 1770 NJ 1770 NJ 1770 NJ 1770 NJ 1770 NJ 1770 NJ 1770 NJ
load net clk -pin EXMEM_ALUResult clk -pin EXMEM_MemRead clk -pin EXMEM_MemWrite clk -pin EXMEM_MemtoReg clk -pin EXMEM_RegWrite clk -pin EXMEM_WriteDataOfMem clk -pin EXMEM_WriteRegister0 clk -pin EXMEM_WriteRegister1 clk -pin EXMEM_WriteRegister2 clk -pin EXMEM_WriteRegister3 clk -pin EXMEM_WriteRegister4 clk -pin IDEX_ALUOp0 clk -pin IDEX_ALUOp1 clk -pin IDEX_ALUSrc clk -pin IDEX_Branch clk -pin IDEX_Im16_Ext clk -pin IDEX_JRControl clk -pin IDEX_MemRead clk -pin IDEX_MemWrite clk -pin IDEX_MemtoReg clk -pin IDEX_PC4 clk -pin IDEX_ReadData1 clk -pin IDEX_ReadData2 clk -pin IDEX_RegDst clk -pin IDEX_RegWrite clk -pin IDEX_rs_rt_rd clk -pin IFID_Instruction clk -pin IFID_PC4 clk -pin IF_flush_bit clk -pin MEMWB_ALUResult clk -pin MEMWB_MemtoReg clk -pin MEMWB_ReadDataOfMem clk -pin MEMWB_RegWrite clk -pin MEMWB_WriteRegister0 clk -pin MEMWB_WriteRegister1 clk -pin MEMWB_WriteRegister2 clk -pin MEMWB_WriteRegister3 clk -pin MEMWB_WriteRegister4 clk -pin PC_Reg clk -pin Register_File clk -port clk -pin dataMem1 clk
netloc clk 1 0 21 40 940 390 800 730 960 990 960 1310 1350 1850 1460 2190 1460 2580 1440 2990 1730 3440 1410 3910 930 NJ 930 4820 1110 5170 1110 NJ 1110 5870 1110 6140 1230 6550 1090 NJ 1090 NJ 1090 7780
load net flush -pin OR_flush_i__0 O -pin flush_block1 flush
netloc flush 1 19 1 7360 1050n
load net notZeroFlag -pin andbneControl_i I1 -port notZeroFlag -pin notZero_i O
netloc notZeroFlag 1 11 13 4340 1850 NJ 1850 NJ 1850 NJ 1850 NJ 1850 NJ 1850 NJ 1850 NJ 1850 NJ 1850 NJ 1850 NJ 1850 NJ 1850 8660
load net reset -pin EXMEM_ALUResult reset -pin EXMEM_MemRead reset -pin EXMEM_MemWrite reset -pin EXMEM_MemtoReg reset -pin EXMEM_RegWrite reset -pin EXMEM_WriteDataOfMem reset -pin EXMEM_WriteRegister0 reset -pin EXMEM_WriteRegister1 reset -pin EXMEM_WriteRegister2 reset -pin EXMEM_WriteRegister3 reset -pin EXMEM_WriteRegister4 reset -pin IDEX_ALUOp0 reset -pin IDEX_ALUOp1 reset -pin IDEX_ALUSrc reset -pin IDEX_Branch reset -pin IDEX_Im16_Ext reset -pin IDEX_JRControl reset -pin IDEX_MemRead reset -pin IDEX_MemWrite reset -pin IDEX_MemtoReg reset -pin IDEX_PC4 reset -pin IDEX_ReadData1 reset -pin IDEX_ReadData2 reset -pin IDEX_RegDst reset -pin IDEX_RegWrite reset -pin IDEX_rs_rt_rd reset -pin IFID_Instruction reset -pin IFID_PC4 reset -pin IF_flush_bit reset -pin MEMWB_ALUResult reset -pin MEMWB_MemtoReg reset -pin MEMWB_ReadDataOfMem reset -pin MEMWB_RegWrite reset -pin MEMWB_WriteRegister0 reset -pin MEMWB_WriteRegister1 reset -pin MEMWB_WriteRegister2 reset -pin MEMWB_WriteRegister3 reset -pin MEMWB_WriteRegister4 reset -pin PC_Reg reset -pin Register_File reset -port reset
netloc reset 1 0 21 20 960 410 820 750 980 1050 980 1290 1370 1810 1660 2210 1480 2600 1460 3010 1750 3480 1430 3930 950 NJ 950 4840 1130 5150 1290 5480J 1230 5830 1270 6200 1250 6570 1110 NJ 1110 NJ 1110 7800
load net shiftleft2_bne_out[0] -attr @rip Out32[0] -pin Add_bne B[0] -pin shiftleft2_bne Out32[0]
load net shiftleft2_bne_out[10] -attr @rip Out32[10] -pin Add_bne B[10] -pin shiftleft2_bne Out32[10]
load net shiftleft2_bne_out[11] -attr @rip Out32[11] -pin Add_bne B[11] -pin shiftleft2_bne Out32[11]
load net shiftleft2_bne_out[12] -attr @rip Out32[12] -pin Add_bne B[12] -pin shiftleft2_bne Out32[12]
load net shiftleft2_bne_out[13] -attr @rip Out32[13] -pin Add_bne B[13] -pin shiftleft2_bne Out32[13]
load net shiftleft2_bne_out[14] -attr @rip Out32[14] -pin Add_bne B[14] -pin shiftleft2_bne Out32[14]
load net shiftleft2_bne_out[15] -attr @rip Out32[15] -pin Add_bne B[15] -pin shiftleft2_bne Out32[15]
load net shiftleft2_bne_out[16] -attr @rip Out32[16] -pin Add_bne B[16] -pin shiftleft2_bne Out32[16]
load net shiftleft2_bne_out[17] -attr @rip Out32[17] -pin Add_bne B[17] -pin shiftleft2_bne Out32[17]
load net shiftleft2_bne_out[18] -attr @rip Out32[18] -pin Add_bne B[18] -pin shiftleft2_bne Out32[18]
load net shiftleft2_bne_out[19] -attr @rip Out32[19] -pin Add_bne B[19] -pin shiftleft2_bne Out32[19]
load net shiftleft2_bne_out[1] -attr @rip Out32[1] -pin Add_bne B[1] -pin shiftleft2_bne Out32[1]
load net shiftleft2_bne_out[20] -attr @rip Out32[20] -pin Add_bne B[20] -pin shiftleft2_bne Out32[20]
load net shiftleft2_bne_out[21] -attr @rip Out32[21] -pin Add_bne B[21] -pin shiftleft2_bne Out32[21]
load net shiftleft2_bne_out[22] -attr @rip Out32[22] -pin Add_bne B[22] -pin shiftleft2_bne Out32[22]
load net shiftleft2_bne_out[23] -attr @rip Out32[23] -pin Add_bne B[23] -pin shiftleft2_bne Out32[23]
load net shiftleft2_bne_out[24] -attr @rip Out32[24] -pin Add_bne B[24] -pin shiftleft2_bne Out32[24]
load net shiftleft2_bne_out[25] -attr @rip Out32[25] -pin Add_bne B[25] -pin shiftleft2_bne Out32[25]
load net shiftleft2_bne_out[26] -attr @rip Out32[26] -pin Add_bne B[26] -pin shiftleft2_bne Out32[26]
load net shiftleft2_bne_out[27] -attr @rip Out32[27] -pin Add_bne B[27] -pin shiftleft2_bne Out32[27]
load net shiftleft2_bne_out[28] -attr @rip Out32[28] -pin Add_bne B[28] -pin shiftleft2_bne Out32[28]
load net shiftleft2_bne_out[29] -attr @rip Out32[29] -pin Add_bne B[29] -pin shiftleft2_bne Out32[29]
load net shiftleft2_bne_out[2] -attr @rip Out32[2] -pin Add_bne B[2] -pin shiftleft2_bne Out32[2]
load net shiftleft2_bne_out[30] -attr @rip Out32[30] -pin Add_bne B[30] -pin shiftleft2_bne Out32[30]
load net shiftleft2_bne_out[31] -attr @rip Out32[31] -pin Add_bne B[31] -pin shiftleft2_bne Out32[31]
load net shiftleft2_bne_out[3] -attr @rip Out32[3] -pin Add_bne B[3] -pin shiftleft2_bne Out32[3]
load net shiftleft2_bne_out[4] -attr @rip Out32[4] -pin Add_bne B[4] -pin shiftleft2_bne Out32[4]
load net shiftleft2_bne_out[5] -attr @rip Out32[5] -pin Add_bne B[5] -pin shiftleft2_bne Out32[5]
load net shiftleft2_bne_out[6] -attr @rip Out32[6] -pin Add_bne B[6] -pin shiftleft2_bne Out32[6]
load net shiftleft2_bne_out[7] -attr @rip Out32[7] -pin Add_bne B[7] -pin shiftleft2_bne Out32[7]
load net shiftleft2_bne_out[8] -attr @rip Out32[8] -pin Add_bne B[8] -pin shiftleft2_bne Out32[8]
load net shiftleft2_bne_out[9] -attr @rip Out32[9] -pin Add_bne B[9] -pin shiftleft2_bne Out32[9]
load net shiftleft2_jump_out[0] -attr @rip Out32[0] -pin muxJump Data1[0] -pin shiftleft2_jump Out32[0]
load net shiftleft2_jump_out[10] -attr @rip Out32[10] -pin muxJump Data1[10] -pin shiftleft2_jump Out32[10]
load net shiftleft2_jump_out[11] -attr @rip Out32[11] -pin muxJump Data1[11] -pin shiftleft2_jump Out32[11]
load net shiftleft2_jump_out[12] -attr @rip Out32[12] -pin muxJump Data1[12] -pin shiftleft2_jump Out32[12]
load net shiftleft2_jump_out[13] -attr @rip Out32[13] -pin muxJump Data1[13] -pin shiftleft2_jump Out32[13]
load net shiftleft2_jump_out[14] -attr @rip Out32[14] -pin muxJump Data1[14] -pin shiftleft2_jump Out32[14]
load net shiftleft2_jump_out[15] -attr @rip Out32[15] -pin muxJump Data1[15] -pin shiftleft2_jump Out32[15]
load net shiftleft2_jump_out[16] -attr @rip Out32[16] -pin muxJump Data1[16] -pin shiftleft2_jump Out32[16]
load net shiftleft2_jump_out[17] -attr @rip Out32[17] -pin muxJump Data1[17] -pin shiftleft2_jump Out32[17]
load net shiftleft2_jump_out[18] -attr @rip Out32[18] -pin muxJump Data1[18] -pin shiftleft2_jump Out32[18]
load net shiftleft2_jump_out[19] -attr @rip Out32[19] -pin muxJump Data1[19] -pin shiftleft2_jump Out32[19]
load net shiftleft2_jump_out[1] -attr @rip Out32[1] -pin muxJump Data1[1] -pin shiftleft2_jump Out32[1]
load net shiftleft2_jump_out[20] -attr @rip Out32[20] -pin muxJump Data1[20] -pin shiftleft2_jump Out32[20]
load net shiftleft2_jump_out[21] -attr @rip Out32[21] -pin muxJump Data1[21] -pin shiftleft2_jump Out32[21]
load net shiftleft2_jump_out[22] -attr @rip Out32[22] -pin muxJump Data1[22] -pin shiftleft2_jump Out32[22]
load net shiftleft2_jump_out[23] -attr @rip Out32[23] -pin muxJump Data1[23] -pin shiftleft2_jump Out32[23]
load net shiftleft2_jump_out[24] -attr @rip Out32[24] -pin muxJump Data1[24] -pin shiftleft2_jump Out32[24]
load net shiftleft2_jump_out[25] -attr @rip Out32[25] -pin muxJump Data1[25] -pin shiftleft2_jump Out32[25]
load net shiftleft2_jump_out[26] -attr @rip Out32[26] -pin muxJump Data1[26] -pin shiftleft2_jump Out32[26]
load net shiftleft2_jump_out[27] -attr @rip Out32[27] -pin muxJump Data1[27] -pin shiftleft2_jump Out32[27]
load net shiftleft2_jump_out[2] -attr @rip Out32[2] -pin muxJump Data1[2] -pin shiftleft2_jump Out32[2]
load net shiftleft2_jump_out[3] -attr @rip Out32[3] -pin muxJump Data1[3] -pin shiftleft2_jump Out32[3]
load net shiftleft2_jump_out[4] -attr @rip Out32[4] -pin muxJump Data1[4] -pin shiftleft2_jump Out32[4]
load net shiftleft2_jump_out[5] -attr @rip Out32[5] -pin muxJump Data1[5] -pin shiftleft2_jump Out32[5]
load net shiftleft2_jump_out[6] -attr @rip Out32[6] -pin muxJump Data1[6] -pin shiftleft2_jump Out32[6]
load net shiftleft2_jump_out[7] -attr @rip Out32[7] -pin muxJump Data1[7] -pin shiftleft2_jump Out32[7]
load net shiftleft2_jump_out[8] -attr @rip Out32[8] -pin muxJump Data1[8] -pin shiftleft2_jump Out32[8]
load net shiftleft2_jump_out[9] -attr @rip Out32[9] -pin muxJump Data1[9] -pin shiftleft2_jump Out32[9]
load net sign_ext_out[0] -attr @rip sOut32[0] -pin muxSignZero Data0[0] -pin sign_extend1 sOut32[0]
load net sign_ext_out[10] -attr @rip sOut32[10] -pin muxSignZero Data0[10] -pin sign_extend1 sOut32[10]
load net sign_ext_out[11] -attr @rip sOut32[11] -pin muxSignZero Data0[11] -pin sign_extend1 sOut32[11]
load net sign_ext_out[12] -attr @rip sOut32[12] -pin muxSignZero Data0[12] -pin sign_extend1 sOut32[12]
load net sign_ext_out[13] -attr @rip sOut32[13] -pin muxSignZero Data0[13] -pin sign_extend1 sOut32[13]
load net sign_ext_out[14] -attr @rip sOut32[14] -pin muxSignZero Data0[14] -pin sign_extend1 sOut32[14]
load net sign_ext_out[15] -attr @rip sOut32[15] -pin muxSignZero Data0[15] -pin sign_extend1 sOut32[15]
load net sign_ext_out[16] -attr @rip sOut32[16] -pin muxSignZero Data0[16] -pin sign_extend1 sOut32[16]
load net sign_ext_out[17] -attr @rip sOut32[17] -pin muxSignZero Data0[17] -pin sign_extend1 sOut32[17]
load net sign_ext_out[18] -attr @rip sOut32[18] -pin muxSignZero Data0[18] -pin sign_extend1 sOut32[18]
load net sign_ext_out[19] -attr @rip sOut32[19] -pin muxSignZero Data0[19] -pin sign_extend1 sOut32[19]
load net sign_ext_out[1] -attr @rip sOut32[1] -pin muxSignZero Data0[1] -pin sign_extend1 sOut32[1]
load net sign_ext_out[20] -attr @rip sOut32[20] -pin muxSignZero Data0[20] -pin sign_extend1 sOut32[20]
load net sign_ext_out[21] -attr @rip sOut32[21] -pin muxSignZero Data0[21] -pin sign_extend1 sOut32[21]
load net sign_ext_out[22] -attr @rip sOut32[22] -pin muxSignZero Data0[22] -pin sign_extend1 sOut32[22]
load net sign_ext_out[23] -attr @rip sOut32[23] -pin muxSignZero Data0[23] -pin sign_extend1 sOut32[23]
load net sign_ext_out[24] -attr @rip sOut32[24] -pin muxSignZero Data0[24] -pin sign_extend1 sOut32[24]
load net sign_ext_out[25] -attr @rip sOut32[25] -pin muxSignZero Data0[25] -pin sign_extend1 sOut32[25]
load net sign_ext_out[26] -attr @rip sOut32[26] -pin muxSignZero Data0[26] -pin sign_extend1 sOut32[26]
load net sign_ext_out[27] -attr @rip sOut32[27] -pin muxSignZero Data0[27] -pin sign_extend1 sOut32[27]
load net sign_ext_out[28] -attr @rip sOut32[28] -pin muxSignZero Data0[28] -pin sign_extend1 sOut32[28]
load net sign_ext_out[29] -attr @rip sOut32[29] -pin muxSignZero Data0[29] -pin sign_extend1 sOut32[29]
load net sign_ext_out[2] -attr @rip sOut32[2] -pin muxSignZero Data0[2] -pin sign_extend1 sOut32[2]
load net sign_ext_out[30] -attr @rip sOut32[30] -pin muxSignZero Data0[30] -pin sign_extend1 sOut32[30]
load net sign_ext_out[31] -attr @rip sOut32[31] -pin muxSignZero Data0[31] -pin sign_extend1 sOut32[31]
load net sign_ext_out[3] -attr @rip sOut32[3] -pin muxSignZero Data0[3] -pin sign_extend1 sOut32[3]
load net sign_ext_out[4] -attr @rip sOut32[4] -pin muxSignZero Data0[4] -pin sign_extend1 sOut32[4]
load net sign_ext_out[5] -attr @rip sOut32[5] -pin muxSignZero Data0[5] -pin sign_extend1 sOut32[5]
load net sign_ext_out[6] -attr @rip sOut32[6] -pin muxSignZero Data0[6] -pin sign_extend1 sOut32[6]
load net sign_ext_out[7] -attr @rip sOut32[7] -pin muxSignZero Data0[7] -pin sign_extend1 sOut32[7]
load net sign_ext_out[8] -attr @rip sOut32[8] -pin muxSignZero Data0[8] -pin sign_extend1 sOut32[8]
load net sign_ext_out[9] -attr @rip sOut32[9] -pin muxSignZero Data0[9] -pin sign_extend1 sOut32[9]
load net zero_ext_out[0] -attr @rip zOut32[0] -pin muxSignZero Data1[0] -pin zero_extend1 zOut32[0]
load net zero_ext_out[10] -attr @rip zOut32[10] -pin muxSignZero Data1[10] -pin zero_extend1 zOut32[10]
load net zero_ext_out[11] -attr @rip zOut32[11] -pin muxSignZero Data1[11] -pin zero_extend1 zOut32[11]
load net zero_ext_out[12] -attr @rip zOut32[12] -pin muxSignZero Data1[12] -pin zero_extend1 zOut32[12]
load net zero_ext_out[13] -attr @rip zOut32[13] -pin muxSignZero Data1[13] -pin zero_extend1 zOut32[13]
load net zero_ext_out[14] -attr @rip zOut32[14] -pin muxSignZero Data1[14] -pin zero_extend1 zOut32[14]
load net zero_ext_out[15] -attr @rip zOut32[15] -pin muxSignZero Data1[15] -pin zero_extend1 zOut32[15]
load net zero_ext_out[16] -attr @rip zOut32[16] -pin muxSignZero Data1[16] -pin zero_extend1 zOut32[16]
load net zero_ext_out[17] -attr @rip zOut32[17] -pin muxSignZero Data1[17] -pin zero_extend1 zOut32[17]
load net zero_ext_out[18] -attr @rip zOut32[18] -pin muxSignZero Data1[18] -pin zero_extend1 zOut32[18]
load net zero_ext_out[19] -attr @rip zOut32[19] -pin muxSignZero Data1[19] -pin zero_extend1 zOut32[19]
load net zero_ext_out[1] -attr @rip zOut32[1] -pin muxSignZero Data1[1] -pin zero_extend1 zOut32[1]
load net zero_ext_out[20] -attr @rip zOut32[20] -pin muxSignZero Data1[20] -pin zero_extend1 zOut32[20]
load net zero_ext_out[21] -attr @rip zOut32[21] -pin muxSignZero Data1[21] -pin zero_extend1 zOut32[21]
load net zero_ext_out[22] -attr @rip zOut32[22] -pin muxSignZero Data1[22] -pin zero_extend1 zOut32[22]
load net zero_ext_out[23] -attr @rip zOut32[23] -pin muxSignZero Data1[23] -pin zero_extend1 zOut32[23]
load net zero_ext_out[24] -attr @rip zOut32[24] -pin muxSignZero Data1[24] -pin zero_extend1 zOut32[24]
load net zero_ext_out[25] -attr @rip zOut32[25] -pin muxSignZero Data1[25] -pin zero_extend1 zOut32[25]
load net zero_ext_out[26] -attr @rip zOut32[26] -pin muxSignZero Data1[26] -pin zero_extend1 zOut32[26]
load net zero_ext_out[27] -attr @rip zOut32[27] -pin muxSignZero Data1[27] -pin zero_extend1 zOut32[27]
load net zero_ext_out[28] -attr @rip zOut32[28] -pin muxSignZero Data1[28] -pin zero_extend1 zOut32[28]
load net zero_ext_out[29] -attr @rip zOut32[29] -pin muxSignZero Data1[29] -pin zero_extend1 zOut32[29]
load net zero_ext_out[2] -attr @rip zOut32[2] -pin muxSignZero Data1[2] -pin zero_extend1 zOut32[2]
load net zero_ext_out[30] -attr @rip zOut32[30] -pin muxSignZero Data1[30] -pin zero_extend1 zOut32[30]
load net zero_ext_out[31] -attr @rip zOut32[31] -pin muxSignZero Data1[31] -pin zero_extend1 zOut32[31]
load net zero_ext_out[3] -attr @rip zOut32[3] -pin muxSignZero Data1[3] -pin zero_extend1 zOut32[3]
load net zero_ext_out[4] -attr @rip zOut32[4] -pin muxSignZero Data1[4] -pin zero_extend1 zOut32[4]
load net zero_ext_out[5] -attr @rip zOut32[5] -pin muxSignZero Data1[5] -pin zero_extend1 zOut32[5]
load net zero_ext_out[6] -attr @rip zOut32[6] -pin muxSignZero Data1[6] -pin zero_extend1 zOut32[6]
load net zero_ext_out[7] -attr @rip zOut32[7] -pin muxSignZero Data1[7] -pin zero_extend1 zOut32[7]
load net zero_ext_out[8] -attr @rip zOut32[8] -pin muxSignZero Data1[8] -pin zero_extend1 zOut32[8]
load net zero_ext_out[9] -attr @rip zOut32[9] -pin muxSignZero Data1[9] -pin zero_extend1 zOut32[9]
load netBundle @ALUControl 2 ALUControl[1] ALUControl[0] -autobundled
netbloc @ALUControl 1 22 1 8360 1290n
load netBundle @PC4 32 PC4[31] PC4[30] PC4[29] PC4[28] PC4[27] PC4[26] PC4[25] PC4[24] PC4[23] PC4[22] PC4[21] PC4[20] PC4[19] PC4[18] PC4[17] PC4[16] PC4[15] PC4[14] PC4[13] PC4[12] PC4[11] PC4[10] PC4[9] PC4[8] PC4[7] PC4[6] PC4[5] PC4[4] PC4[3] PC4[2] PC4[1] PC4[0] -autobundled
netbloc @PC4 1 9 4 3520 1790 NJ 1790 NJ 1790 4740J
load netBundle @PCbne 32 PCbne[31] PCbne[30] PCbne[29] PCbne[28] PCbne[27] PCbne[26] PCbne[25] PCbne[24] PCbne[23] PCbne[22] PCbne[21] PCbne[20] PCbne[19] PCbne[18] PCbne[17] PCbne[16] PCbne[15] PCbne[14] PCbne[13] PCbne[12] PCbne[11] PCbne[10] PCbne[9] PCbne[8] PCbne[7] PCbne[6] PCbne[5] PCbne[4] PCbne[3] PCbne[2] PCbne[1] PCbne[0] -autobundled
netbloc @PCbne 1 12 1 4760 1550n
load netBundle @MEM_ALUResult 32 MEM_ALUResult[31] MEM_ALUResult[30] MEM_ALUResult[29] MEM_ALUResult[28] MEM_ALUResult[27] MEM_ALUResult[26] MEM_ALUResult[25] MEM_ALUResult[24] MEM_ALUResult[23] MEM_ALUResult[22] MEM_ALUResult[21] MEM_ALUResult[20] MEM_ALUResult[19] MEM_ALUResult[18] MEM_ALUResult[17] MEM_ALUResult[16] MEM_ALUResult[15] MEM_ALUResult[14] MEM_ALUResult[13] MEM_ALUResult[12] MEM_ALUResult[11] MEM_ALUResult[10] MEM_ALUResult[9] MEM_ALUResult[8] MEM_ALUResult[7] MEM_ALUResult[6] MEM_ALUResult[5] MEM_ALUResult[4] MEM_ALUResult[3] MEM_ALUResult[2] MEM_ALUResult[1] MEM_ALUResult[0] -autobundled
netbloc @MEM_ALUResult 1 5 9 1870 1220 NJ 1220 2600 1220 2950 1070 NJ 1070 3830J 1090 NJ 1090 NJ 1090 5150
load netBundle @WriteDataOfMem 32 WriteDataOfMem[31] WriteDataOfMem[30] WriteDataOfMem[29] WriteDataOfMem[28] WriteDataOfMem[27] WriteDataOfMem[26] WriteDataOfMem[25] WriteDataOfMem[24] WriteDataOfMem[23] WriteDataOfMem[22] WriteDataOfMem[21] WriteDataOfMem[20] WriteDataOfMem[19] WriteDataOfMem[18] WriteDataOfMem[17] WriteDataOfMem[16] WriteDataOfMem[15] WriteDataOfMem[14] WriteDataOfMem[13] WriteDataOfMem[12] WriteDataOfMem[11] WriteDataOfMem[10] WriteDataOfMem[9] WriteDataOfMem[8] WriteDataOfMem[7] WriteDataOfMem[6] WriteDataOfMem[5] WriteDataOfMem[4] WriteDataOfMem[3] WriteDataOfMem[2] WriteDataOfMem[1] WriteDataOfMem[0] -autobundled
netbloc @WriteDataOfMem 1 7 1 2540 1140n
load netBundle @ForwardA 2 ForwardA[1] ForwardA[0] -autobundled
netbloc @ForwardA 1 5 9 1810 840 NJ 840 2600J 1000 3010J 990 3380J 970 NJ 970 NJ 970 NJ 970 5190J
load netBundle @ForwardB 2 ForwardB[1] ForwardB[0] -autobundled
netbloc @ForwardB 1 5 1 1850 920n
load netBundle @EX_Im16_Ext 32 EX_Im16_Ext[31] EX_Im16_Ext[30] EX_Im16_Ext[29] EX_Im16_Ext[28] EX_Im16_Ext[27] EX_Im16_Ext[26] EX_Im16_Ext[25] EX_Im16_Ext[24] EX_Im16_Ext[23] EX_Im16_Ext[22] EX_Im16_Ext[21] EX_Im16_Ext[20] EX_Im16_Ext[19] EX_Im16_Ext[18] EX_Im16_Ext[17] EX_Im16_Ext[16] EX_Im16_Ext[15] EX_Im16_Ext[14] EX_Im16_Ext[13] EX_Im16_Ext[12] EX_Im16_Ext[11] EX_Im16_Ext[10] EX_Im16_Ext[9] EX_Im16_Ext[8] EX_Im16_Ext[7] EX_Im16_Ext[6] EX_Im16_Ext[5] EX_Im16_Ext[4] EX_Im16_Ext[3] EX_Im16_Ext[2] EX_Im16_Ext[1] EX_Im16_Ext[0] -autobundled
netbloc @EX_Im16_Ext 1 10 12 3970 1290 NJ 1290 NJ 1290 5130J 1310 5480J 1390 5810J 1410 6160J 1290 6570J 1370 NJ 1370 NJ 1370 NJ 1370 8070
load netBundle @EX_PC4 32 EX_PC4[31] EX_PC4[30] EX_PC4[29] EX_PC4[28] EX_PC4[27] EX_PC4[26] EX_PC4[25] EX_PC4[24] EX_PC4[23] EX_PC4[22] EX_PC4[21] EX_PC4[20] EX_PC4[19] EX_PC4[18] EX_PC4[17] EX_PC4[16] EX_PC4[15] EX_PC4[14] EX_PC4[13] EX_PC4[12] EX_PC4[11] EX_PC4[10] EX_PC4[9] EX_PC4[8] EX_PC4[7] EX_PC4[6] EX_PC4[5] EX_PC4[4] EX_PC4[3] EX_PC4[2] EX_PC4[1] EX_PC4[0] -autobundled
netbloc @EX_PC4 1 11 1 4320 1390n
load netBundle @EX_ReadData1 32 EX_ReadData1[31] EX_ReadData1[30] EX_ReadData1[29] EX_ReadData1[28] EX_ReadData1[27] EX_ReadData1[26] EX_ReadData1[25] EX_ReadData1[24] EX_ReadData1[23] EX_ReadData1[22] EX_ReadData1[21] EX_ReadData1[20] EX_ReadData1[19] EX_ReadData1[18] EX_ReadData1[17] EX_ReadData1[16] EX_ReadData1[15] EX_ReadData1[14] EX_ReadData1[13] EX_ReadData1[12] EX_ReadData1[11] EX_ReadData1[10] EX_ReadData1[9] EX_ReadData1[8] EX_ReadData1[7] EX_ReadData1[6] EX_ReadData1[5] EX_ReadData1[4] EX_ReadData1[3] EX_ReadData1[2] EX_ReadData1[1] EX_ReadData1[0] -autobundled
netbloc @EX_ReadData1 1 13 1 N 890
load netBundle @EX_ReadData2 32 EX_ReadData2[31] EX_ReadData2[30] EX_ReadData2[29] EX_ReadData2[28] EX_ReadData2[27] EX_ReadData2[26] EX_ReadData2[25] EX_ReadData2[24] EX_ReadData2[23] EX_ReadData2[22] EX_ReadData2[21] EX_ReadData2[20] EX_ReadData2[19] EX_ReadData2[18] EX_ReadData2[17] EX_ReadData2[16] EX_ReadData2[15] EX_ReadData2[14] EX_ReadData2[13] EX_ReadData2[12] EX_ReadData2[11] EX_ReadData2[10] EX_ReadData2[9] EX_ReadData2[8] EX_ReadData2[7] EX_ReadData2[6] EX_ReadData2[5] EX_ReadData2[4] EX_ReadData2[3] EX_ReadData2[2] EX_ReadData2[1] EX_ReadData2[0] -autobundled
netbloc @EX_ReadData2 1 5 1 1830 900n
load netBundle @EX_Instruction 15 EX_Instruction[25] EX_Instruction[24] EX_Instruction[23] EX_Instruction[22] EX_Instruction[21] EX_Instruction[20] EX_Instruction[19] EX_Instruction[18] EX_Instruction[17] EX_Instruction[16] EX_Instruction[15] EX_Instruction[14] EX_Instruction[13] EX_Instruction[12] EX_Instruction[11] -autobundled
netbloc @EX_Instruction 1 1 8 350 1040 NJ 1040 NJ 1040 1330 650 NJ 650 NJ 650 NJ 650 3010J
load netBundle @ID_Instruction 32 ID_Instruction[31] ID_Instruction[30] ID_Instruction[29] ID_Instruction[28] ID_Instruction[27] ID_Instruction[26] ID_Instruction[25] ID_Instruction[24] ID_Instruction[23] ID_Instruction[22] ID_Instruction[21] ID_Instruction[20] ID_Instruction[19] ID_Instruction[18] ID_Instruction[17] ID_Instruction[16] ID_Instruction[15] ID_Instruction[14] ID_Instruction[13] ID_Instruction[12] ID_Instruction[11] ID_Instruction[10] ID_Instruction[9] ID_Instruction[8] ID_Instruction[7] ID_Instruction[6] ID_Instruction[5] ID_Instruction[4] ID_Instruction[3] ID_Instruction[2] ID_Instruction[1] ID_Instruction[0] -autobundled
netbloc @ID_Instruction 1 0 23 60 1020 NJ 1020 NJ 1020 NJ 1020 NJ 1020 1850J 1040 NJ 1040 2540 710 3050 550 NJ 550 3850 690 4360 690 4780 1010 NJ 1010 NJ 1010 NJ 1010 NJ 1010 NJ 1010 6860 1150 NJ 1150 7820J 1100 NJ 1100 8380J
load netBundle @ID_PC4 32 ID_PC4[31] ID_PC4[30] ID_PC4[29] ID_PC4[28] ID_PC4[27] ID_PC4[26] ID_PC4[25] ID_PC4[24] ID_PC4[23] ID_PC4[22] ID_PC4[21] ID_PC4[20] ID_PC4[19] ID_PC4[18] ID_PC4[17] ID_PC4[16] ID_PC4[15] ID_PC4[14] ID_PC4[13] ID_PC4[12] ID_PC4[11] ID_PC4[10] ID_PC4[9] ID_PC4[8] ID_PC4[7] ID_PC4[6] ID_PC4[5] ID_PC4[4] ID_PC4[3] ID_PC4[2] ID_PC4[1] ID_PC4[0] -autobundled
netbloc @ID_PC4 1 10 4 3950 1490 NJ 1490 NJ 1490 5150
load netBundle @Instruction 32 Instruction[31] Instruction[30] Instruction[29] Instruction[28] Instruction[27] Instruction[26] Instruction[25] Instruction[24] Instruction[23] Instruction[22] Instruction[21] Instruction[20] Instruction[19] Instruction[18] Instruction[17] Instruction[16] Instruction[15] Instruction[14] Instruction[13] Instruction[12] Instruction[11] Instruction[10] Instruction[9] Instruction[8] Instruction[7] Instruction[6] Instruction[5] Instruction[4] Instruction[3] Instruction[2] Instruction[1] Instruction[0] -autobundled
netbloc @Instruction 1 17 1 6590J 1170n
load netBundle @WB_ALUResult 32 WB_ALUResult[31] WB_ALUResult[30] WB_ALUResult[29] WB_ALUResult[28] WB_ALUResult[27] WB_ALUResult[26] WB_ALUResult[25] WB_ALUResult[24] WB_ALUResult[23] WB_ALUResult[22] WB_ALUResult[21] WB_ALUResult[20] WB_ALUResult[19] WB_ALUResult[18] WB_ALUResult[17] WB_ALUResult[16] WB_ALUResult[15] WB_ALUResult[14] WB_ALUResult[13] WB_ALUResult[12] WB_ALUResult[11] WB_ALUResult[10] WB_ALUResult[9] WB_ALUResult[8] WB_ALUResult[7] WB_ALUResult[6] WB_ALUResult[5] WB_ALUResult[4] WB_ALUResult[3] WB_ALUResult[2] WB_ALUResult[1] WB_ALUResult[0] -autobundled
netbloc @WB_ALUResult 1 9 1 N 1170
load netBundle @WB_ReadDataOfMem 32 WB_ReadDataOfMem[31] WB_ReadDataOfMem[30] WB_ReadDataOfMem[29] WB_ReadDataOfMem[28] WB_ReadDataOfMem[27] WB_ReadDataOfMem[26] WB_ReadDataOfMem[25] WB_ReadDataOfMem[24] WB_ReadDataOfMem[23] WB_ReadDataOfMem[22] WB_ReadDataOfMem[21] WB_ReadDataOfMem[20] WB_ReadDataOfMem[19] WB_ReadDataOfMem[18] WB_ReadDataOfMem[17] WB_ReadDataOfMem[16] WB_ReadDataOfMem[15] WB_ReadDataOfMem[14] WB_ReadDataOfMem[13] WB_ReadDataOfMem[12] WB_ReadDataOfMem[11] WB_ReadDataOfMem[10] WB_ReadDataOfMem[9] WB_ReadDataOfMem[8] WB_ReadDataOfMem[7] WB_ReadDataOfMem[6] WB_ReadDataOfMem[5] WB_ReadDataOfMem[4] WB_ReadDataOfMem[3] WB_ReadDataOfMem[2] WB_ReadDataOfMem[1] WB_ReadDataOfMem[0] -autobundled
netbloc @WB_ReadDataOfMem 1 9 1 3380 1190n
load netBundle @ALUOp 2 ALUOp[1] ALUOp[0] -autobundled
netbloc @ALUOp 1 19 4 7300 770 NJ 770 NJ 770 8380J
load netBundle @PC 32 PC[31] PC[30] PC[29] PC[28] PC[27] PC[26] PC[25] PC[24] PC[23] PC[22] PC[21] PC[20] PC[19] PC[18] PC[17] PC[16] PC[15] PC[14] PC[13] PC[12] PC[11] PC[10] PC[9] PC[8] PC[7] PC[6] PC[5] PC[4] PC[3] PC[2] PC[1] PC[0] -autobundled
netbloc @PC 1 8 9 3030 1810 3540J 1770 NJ 1770 NJ 1770 4720J 1710 NJ 1710 NJ 1710 5850J 1690 6180
load netBundle @ReadData1 32 ReadData1[31] ReadData1[30] ReadData1[29] ReadData1[28] ReadData1[27] ReadData1[26] ReadData1[25] ReadData1[24] ReadData1[23] ReadData1[22] ReadData1[21] ReadData1[20] ReadData1[19] ReadData1[18] ReadData1[17] ReadData1[16] ReadData1[15] ReadData1[14] ReadData1[13] ReadData1[12] ReadData1[11] ReadData1[10] ReadData1[9] ReadData1[8] ReadData1[7] ReadData1[6] ReadData1[5] ReadData1[4] ReadData1[3] ReadData1[2] ReadData1[1] ReadData1[0] -autobundled
netbloc @ReadData1 1 11 1 N 530
load netBundle @ReadData2 32 ReadData2[31] ReadData2[30] ReadData2[29] ReadData2[28] ReadData2[27] ReadData2[26] ReadData2[25] ReadData2[24] ReadData2[23] ReadData2[22] ReadData2[21] ReadData2[20] ReadData2[19] ReadData2[18] ReadData2[17] ReadData2[16] ReadData2[15] ReadData2[14] ReadData2[13] ReadData2[12] ReadData2[11] ReadData2[10] ReadData2[9] ReadData2[8] ReadData2[7] ReadData2[6] ReadData2[5] ReadData2[4] ReadData2[3] ReadData2[2] ReadData2[1] ReadData2[0] -autobundled
netbloc @ReadData2 1 11 1 N 550
load netBundle @ReadData1Out 32 ReadData1Out[31] ReadData1Out[30] ReadData1Out[29] ReadData1Out[28] ReadData1Out[27] ReadData1Out[26] ReadData1Out[25] ReadData1Out[24] ReadData1Out[23] ReadData1Out[22] ReadData1Out[21] ReadData1Out[20] ReadData1Out[19] ReadData1Out[18] ReadData1Out[17] ReadData1Out[16] ReadData1Out[15] ReadData1Out[14] ReadData1Out[13] ReadData1Out[12] ReadData1Out[11] ReadData1Out[10] ReadData1Out[9] ReadData1Out[8] ReadData1Out[7] ReadData1Out[6] ReadData1Out[5] ReadData1Out[4] ReadData1Out[3] ReadData1Out[2] ReadData1Out[1] ReadData1Out[0] -autobundled
netbloc @ReadData1Out 1 12 1 4820 570n
load netBundle @ReadData2Out 32 ReadData2Out[31] ReadData2Out[30] ReadData2Out[29] ReadData2Out[28] ReadData2Out[27] ReadData2Out[26] ReadData2Out[25] ReadData2Out[24] ReadData2Out[23] ReadData2Out[22] ReadData2Out[21] ReadData2Out[20] ReadData2Out[19] ReadData2Out[18] ReadData2Out[17] ReadData2Out[16] ReadData2Out[15] ReadData2Out[14] ReadData2Out[13] ReadData2Out[12] ReadData2Out[11] ReadData2Out[10] ReadData2Out[9] ReadData2Out[8] ReadData2Out[7] ReadData2Out[6] ReadData2Out[5] ReadData2Out[4] ReadData2Out[3] ReadData2Out[2] ReadData2Out[1] ReadData2Out[0] -autobundled
netbloc @ReadData2Out 1 4 9 1430 750 NJ 750 NJ 750 NJ 750 NJ 750 NJ 750 NJ 750 NJ 750 4700
load netBundle @EX_ALUResult 32 EX_ALUResult[31] EX_ALUResult[30] EX_ALUResult[29] EX_ALUResult[28] EX_ALUResult[27] EX_ALUResult[26] EX_ALUResult[25] EX_ALUResult[24] EX_ALUResult[23] EX_ALUResult[22] EX_ALUResult[21] EX_ALUResult[20] EX_ALUResult[19] EX_ALUResult[18] EX_ALUResult[17] EX_ALUResult[16] EX_ALUResult[15] EX_ALUResult[14] EX_ALUResult[13] EX_ALUResult[12] EX_ALUResult[11] EX_ALUResult[10] EX_ALUResult[9] EX_ALUResult[8] EX_ALUResult[7] EX_ALUResult[6] EX_ALUResult[5] EX_ALUResult[4] EX_ALUResult[3] EX_ALUResult[2] EX_ALUResult[1] EX_ALUResult[0] -autobundled
netbloc @EX_ALUResult 1 4 20 1450 770 NJ 770 NJ 770 NJ 770 NJ 770 NJ 770 NJ 770 NJ 770 4720J 750 NJ 750 NJ 750 NJ 750 NJ 750 NJ 750 6900J 730 NJ 730 NJ 730 NJ 730 NJ 730 8660
load netBundle @MEM_ReadDataOfMem 32 MEM_ReadDataOfMem[31] MEM_ReadDataOfMem[30] MEM_ReadDataOfMem[29] MEM_ReadDataOfMem[28] MEM_ReadDataOfMem[27] MEM_ReadDataOfMem[26] MEM_ReadDataOfMem[25] MEM_ReadDataOfMem[24] MEM_ReadDataOfMem[23] MEM_ReadDataOfMem[22] MEM_ReadDataOfMem[21] MEM_ReadDataOfMem[20] MEM_ReadDataOfMem[19] MEM_ReadDataOfMem[18] MEM_ReadDataOfMem[17] MEM_ReadDataOfMem[16] MEM_ReadDataOfMem[15] MEM_ReadDataOfMem[14] MEM_ReadDataOfMem[13] MEM_ReadDataOfMem[12] MEM_ReadDataOfMem[11] MEM_ReadDataOfMem[10] MEM_ReadDataOfMem[9] MEM_ReadDataOfMem[8] MEM_ReadDataOfMem[7] MEM_ReadDataOfMem[6] MEM_ReadDataOfMem[5] MEM_ReadDataOfMem[4] MEM_ReadDataOfMem[3] MEM_ReadDataOfMem[2] MEM_ReadDataOfMem[1] MEM_ReadDataOfMem[0] -autobundled
netbloc @MEM_ReadDataOfMem 1 8 1 2950 1300n
load netBundle @ID_ALUOp 2 ID_ALUOp[1] ID_ALUOp[0] -autobundled
netbloc @ID_ALUOp 1 20 1 7820 850n
load netBundle @PCjr 32 PCjr[31] PCjr[30] PCjr[29] PCjr[28] PCjr[27] PCjr[26] PCjr[25] PCjr[24] PCjr[23] PCjr[22] PCjr[21] PCjr[20] PCjr[19] PCjr[18] PCjr[17] PCjr[16] PCjr[15] PCjr[14] PCjr[13] PCjr[12] PCjr[11] PCjr[10] PCjr[9] PCjr[8] PCjr[7] PCjr[6] PCjr[5] PCjr[4] PCjr[3] PCjr[2] PCjr[1] PCjr[0] -autobundled
netbloc @PCjr 1 14 9 5500 1450 NJ 1450 NJ 1450 NJ 1450 NJ 1450 NJ 1450 NJ 1450 NJ 1450 NJ
load netBundle @Bus_B_forwarded 32 Bus_B_forwarded[31] Bus_B_forwarded[30] Bus_B_forwarded[29] Bus_B_forwarded[28] Bus_B_forwarded[27] Bus_B_forwarded[26] Bus_B_forwarded[25] Bus_B_forwarded[24] Bus_B_forwarded[23] Bus_B_forwarded[22] Bus_B_forwarded[21] Bus_B_forwarded[20] Bus_B_forwarded[19] Bus_B_forwarded[18] Bus_B_forwarded[17] Bus_B_forwarded[16] Bus_B_forwarded[15] Bus_B_forwarded[14] Bus_B_forwarded[13] Bus_B_forwarded[12] Bus_B_forwarded[11] Bus_B_forwarded[10] Bus_B_forwarded[9] Bus_B_forwarded[8] Bus_B_forwarded[7] Bus_B_forwarded[6] Bus_B_forwarded[5] Bus_B_forwarded[4] Bus_B_forwarded[3] Bus_B_forwarded[2] Bus_B_forwarded[1] Bus_B_forwarded[0] -autobundled
netbloc @Bus_B_forwarded 1 6 16 2170 810 NJ 810 NJ 810 NJ 810 NJ 810 4320J 790 4740J 770 NJ 770 NJ 770 NJ 770 NJ 770 NJ 770 6920J 750 NJ 750 NJ 750 8070
load netBundle @Bus_B_ALU 32 Bus_B_ALU[31] Bus_B_ALU[30] Bus_B_ALU[29] Bus_B_ALU[28] Bus_B_ALU[27] Bus_B_ALU[26] Bus_B_ALU[25] Bus_B_ALU[24] Bus_B_ALU[23] Bus_B_ALU[22] Bus_B_ALU[21] Bus_B_ALU[20] Bus_B_ALU[19] Bus_B_ALU[18] Bus_B_ALU[17] Bus_B_ALU[16] Bus_B_ALU[15] Bus_B_ALU[14] Bus_B_ALU[13] Bus_B_ALU[12] Bus_B_ALU[11] Bus_B_ALU[10] Bus_B_ALU[9] Bus_B_ALU[8] Bus_B_ALU[7] Bus_B_ALU[6] Bus_B_ALU[5] Bus_B_ALU[4] Bus_B_ALU[3] Bus_B_ALU[2] Bus_B_ALU[1] Bus_B_ALU[0] -autobundled
netbloc @Bus_B_ALU 1 22 1 8380 1180n
load netBundle @PCin 32 PCin[31] PCin[30] PCin[29] PCin[28] PCin[27] PCin[26] PCin[25] PCin[24] PCin[23] PCin[22] PCin[21] PCin[20] PCin[19] PCin[18] PCin[17] PCin[16] PCin[15] PCin[14] PCin[13] PCin[12] PCin[11] PCin[10] PCin[9] PCin[8] PCin[7] PCin[6] PCin[5] PCin[4] PCin[3] PCin[2] PCin[1] PCin[0] -autobundled
netbloc @PCin 1 15 1 5810 1170n
load netBundle @PC4bnej 32 PC4bnej[31] PC4bnej[30] PC4bnej[29] PC4bnej[28] PC4bnej[27] PC4bnej[26] PC4bnej[25] PC4bnej[24] PC4bnej[23] PC4bnej[22] PC4bnej[21] PC4bnej[20] PC4bnej[19] PC4bnej[18] PC4bnej[17] PC4bnej[16] PC4bnej[15] PC4bnej[14] PC4bnej[13] PC4bnej[12] PC4bnej[11] PC4bnej[10] PC4bnej[9] PC4bnej[8] PC4bnej[7] PC4bnej[6] PC4bnej[5] PC4bnej[4] PC4bnej[3] PC4bnej[2] PC4bnej[1] PC4bnej[0] -autobundled
netbloc @PC4bnej 1 14 1 5540 1290n
load netBundle @WB_WriteData 32 WB_WriteData[31] WB_WriteData[30] WB_WriteData[29] WB_WriteData[28] WB_WriteData[27] WB_WriteData[26] WB_WriteData[25] WB_WriteData[24] WB_WriteData[23] WB_WriteData[22] WB_WriteData[21] WB_WriteData[20] WB_WriteData[19] WB_WriteData[18] WB_WriteData[17] WB_WriteData[16] WB_WriteData[15] WB_WriteData[14] WB_WriteData[13] WB_WriteData[12] WB_WriteData[11] WB_WriteData[10] WB_WriteData[9] WB_WriteData[8] WB_WriteData[7] WB_WriteData[6] WB_WriteData[5] WB_WriteData[4] WB_WriteData[3] WB_WriteData[2] WB_WriteData[1] WB_WriteData[0] -autobundled
netbloc @WB_WriteData 1 5 9 1890 1020 NJ 1020 2560J 1040 2990J 1050 NJ 1050 3870 650 4340 810 4760J 790 5190J
load netBundle @EX_WriteRegister 5 EX_WriteRegister[4] EX_WriteRegister[3] EX_WriteRegister[2] EX_WriteRegister[1] EX_WriteRegister[0] -autobundled
netbloc @EX_WriteRegister 1 2 1 710 110n
load netBundle @Im16_Ext 32 Im16_Ext[31] Im16_Ext[30] Im16_Ext[29] Im16_Ext[28] Im16_Ext[27] Im16_Ext[26] Im16_Ext[25] Im16_Ext[24] Im16_Ext[23] Im16_Ext[22] Im16_Ext[21] Im16_Ext[20] Im16_Ext[19] Im16_Ext[18] Im16_Ext[17] Im16_Ext[16] Im16_Ext[15] Im16_Ext[14] Im16_Ext[13] Im16_Ext[12] Im16_Ext[11] Im16_Ext[10] Im16_Ext[9] Im16_Ext[8] Im16_Ext[7] Im16_Ext[6] Im16_Ext[5] Im16_Ext[4] Im16_Ext[3] Im16_Ext[2] Im16_Ext[1] Im16_Ext[0] -autobundled
netbloc @Im16_Ext 1 9 1 3480 930n
load netBundle @PC4bne 32 PC4bne[31] PC4bne[30] PC4bne[29] PC4bne[28] PC4bne[27] PC4bne[26] PC4bne[25] PC4bne[24] PC4bne[23] PC4bne[22] PC4bne[21] PC4bne[20] PC4bne[19] PC4bne[18] PC4bne[17] PC4bne[16] PC4bne[15] PC4bne[14] PC4bne[13] PC4bne[12] PC4bne[11] PC4bne[10] PC4bne[9] PC4bne[8] PC4bne[7] PC4bne[6] PC4bne[5] PC4bne[4] PC4bne[3] PC4bne[2] PC4bne[1] PC4bne[0] -autobundled
netbloc @PC4bne 1 13 1 5190 1570n
load netBundle @shiftleft2_bne_out 32 shiftleft2_bne_out[31] shiftleft2_bne_out[30] shiftleft2_bne_out[29] shiftleft2_bne_out[28] shiftleft2_bne_out[27] shiftleft2_bne_out[26] shiftleft2_bne_out[25] shiftleft2_bne_out[24] shiftleft2_bne_out[23] shiftleft2_bne_out[22] shiftleft2_bne_out[21] shiftleft2_bne_out[20] shiftleft2_bne_out[19] shiftleft2_bne_out[18] shiftleft2_bne_out[17] shiftleft2_bne_out[16] shiftleft2_bne_out[15] shiftleft2_bne_out[14] shiftleft2_bne_out[13] shiftleft2_bne_out[12] shiftleft2_bne_out[11] shiftleft2_bne_out[10] shiftleft2_bne_out[9] shiftleft2_bne_out[8] shiftleft2_bne_out[7] shiftleft2_bne_out[6] shiftleft2_bne_out[5] shiftleft2_bne_out[4] shiftleft2_bne_out[3] shiftleft2_bne_out[2] shiftleft2_bne_out[1] shiftleft2_bne_out[0] -autobundled
netbloc @shiftleft2_bne_out 1 11 1 NJ 1570
load netBundle @shiftleft2_jump_out 28 shiftleft2_jump_out[27] shiftleft2_jump_out[26] shiftleft2_jump_out[25] shiftleft2_jump_out[24] shiftleft2_jump_out[23] shiftleft2_jump_out[22] shiftleft2_jump_out[21] shiftleft2_jump_out[20] shiftleft2_jump_out[19] shiftleft2_jump_out[18] shiftleft2_jump_out[17] shiftleft2_jump_out[16] shiftleft2_jump_out[15] shiftleft2_jump_out[14] shiftleft2_jump_out[13] shiftleft2_jump_out[12] shiftleft2_jump_out[11] shiftleft2_jump_out[10] shiftleft2_jump_out[9] shiftleft2_jump_out[8] shiftleft2_jump_out[7] shiftleft2_jump_out[6] shiftleft2_jump_out[5] shiftleft2_jump_out[4] shiftleft2_jump_out[3] shiftleft2_jump_out[2] shiftleft2_jump_out[1] shiftleft2_jump_out[0] -autobundled
netbloc @shiftleft2_jump_out 1 13 1 5130J 1590
load netBundle @sign_ext_out 32 sign_ext_out[31] sign_ext_out[30] sign_ext_out[29] sign_ext_out[28] sign_ext_out[27] sign_ext_out[26] sign_ext_out[25] sign_ext_out[24] sign_ext_out[23] sign_ext_out[22] sign_ext_out[21] sign_ext_out[20] sign_ext_out[19] sign_ext_out[18] sign_ext_out[17] sign_ext_out[16] sign_ext_out[15] sign_ext_out[14] sign_ext_out[13] sign_ext_out[12] sign_ext_out[11] sign_ext_out[10] sign_ext_out[9] sign_ext_out[8] sign_ext_out[7] sign_ext_out[6] sign_ext_out[5] sign_ext_out[4] sign_ext_out[3] sign_ext_out[2] sign_ext_out[1] sign_ext_out[0] -autobundled
netbloc @sign_ext_out 1 8 1 3010J 870n
load netBundle @zero_ext_out 32 zero_ext_out[31] zero_ext_out[30] zero_ext_out[29] zero_ext_out[28] zero_ext_out[27] zero_ext_out[26] zero_ext_out[25] zero_ext_out[24] zero_ext_out[23] zero_ext_out[22] zero_ext_out[21] zero_ext_out[20] zero_ext_out[19] zero_ext_out[18] zero_ext_out[17] zero_ext_out[16] zero_ext_out[15] zero_ext_out[14] zero_ext_out[13] zero_ext_out[12] zero_ext_out[11] zero_ext_out[10] zero_ext_out[9] zero_ext_out[8] zero_ext_out[7] zero_ext_out[6] zero_ext_out[5] zero_ext_out[4] zero_ext_out[3] zero_ext_out[2] zero_ext_out[1] zero_ext_out[0] -autobundled
netbloc @zero_ext_out 1 8 1 3010J 930n
load netBundle @EX_ALUOp 2 EX_ALUOp[1] EX_ALUOp[0] -autobundled
netbloc @EX_ALUOp 1 21 1 8050 870n
load netBundle @MEM_WriteRegister_ 5 MEM_WriteRegister_4 MEM_WriteRegister_3 MEM_WriteRegister_2 MEM_WriteRegister_1 MEM_WriteRegister_0 -autobundled
netbloc @MEM_WriteRegister_ 1 3 2 1030 940 1390
load netBundle @WB_WriteRegister 5 WB_WriteRegister[4] WB_WriteRegister[3] WB_WriteRegister[2] WB_WriteRegister[1] WB_WriteRegister[0] -autobundled
netbloc @WB_WriteRegister 1 4 8 1370 570 NJ 570 NJ 570 NJ 570 NJ 570 NJ 570 3990 670 4320J
levelinfo -pg 1 0 180 540 850 1150 1640 1980 2370 2760 3210 3640 4130 4490 4960 5310 5640 5970 6350 6690 7020 7480 7920 8180 8500 8700
pagesize -pg 1 -db -bbox -sgen -80 0 8840 1930
show
zoom 0.364602
scrollpos 1397 242
#
# initialize ictrl to current module MIPSpipeline work:MIPSpipeline:NOFILE
ictrl init topinfo |
