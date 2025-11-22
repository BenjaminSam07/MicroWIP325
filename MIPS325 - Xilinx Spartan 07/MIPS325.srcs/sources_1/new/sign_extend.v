`timescale 1ps / 100fs
//////////////////////////////////////////////////////////////////////////////////
// Company: Aeolus Electronics
// Engineer: Benjamin George Samuel
// 
// Create Date: 11.01.2022 11:31:02
// Design Name: Sign Extension & Shift Left by 2 Modules. 
// Module Name: sign_extend, shift_left_2
// Project Name: MicroWIP325
// Target Devices: XC7S100-676FGGA-2
// Tool Versions: Xilinx Vivado 2020.2 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module sign_extend(sOut32,sIn16);
output [31:0] sOut32;
input [15:0] sIn16;
assign sOut32 = {{16{sIn16[15]}},sIn16};
endmodule

// Shift left 2 module 
module shift_left_2(Out32, In32);
output [31:0] Out32;
input [31:0] In32;
assign Out32 = {In32[29:0],2'b00};
endmodule
