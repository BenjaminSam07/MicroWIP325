`timescale 1ps / 100fs
//////////////////////////////////////////////////////////////////////////////////
// Company: Aeolus Electronics
// Engineer: Benjamin George Samuel
// 
// Create Date: 11.01.2022 11:31:02
// Design Name: Zero Extension
// Module Name: zero_extend
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

module zero_extend (zOut32,zIn16);
output [31:0] zOut32;
input [15:0] zIn16;
assign zOut32 = {{16{1'b0}},zIn16};
endmodule