`timescale 1ps / 100fs
//////////////////////////////////////////////////////////////////////////////////
// Company: Aeolus Electronics
// Engineer: Benjamin George Samuel
// 
// Create Date: 11.01.2022 11:31:02
// Design Name: Multiplexer 3 x 32to32
// Module Name: mux3x32to32
// Project Name: MicroWIP325
// Target Devices: XC7S100-676FGGA-2
// Tool Versions: Xilinx Vivado 2020.2 
// Description: After adding the forwarding unit to solve the data hazard, 
// the 2x32 to 32 multiplexers at the input of the ALU become 3x32 to 32 multiplexers.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux3x32to32(DataOut,A,B,C,Select);
output [31:0] DataOut;
input [1:0] Select;
input [31:0] A,B,C;
wire [31:0] DataOut1,DataOut2;

mux2x32to32 muxAB(DataOut1,A,B, Select[1]);
mux2x32to32 muxCA(DataOut2,C,A, Select[1]);
mux2x32to32 muxABC(DataOut,DataOut1,DataOut2, Select[0]);

endmodule
