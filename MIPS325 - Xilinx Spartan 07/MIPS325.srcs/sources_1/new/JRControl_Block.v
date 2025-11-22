`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Aeolus Electronics
// Engineer: Benjamin George Samuel
// 
// Create Date: 11.01.2022 11:31:02
// Design Name: JR Control Unit
// Module Name: JRControl_Block
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


module JRControl_Block( JRControl, ALUOp, Function);
output JRControl;
reg JRControl;
input [1:0] ALUOp;
input [5:0] Function;
wire [7:0] test;
assign test = {ALUOp,Function};
always @(test)
case (test)
 8'b10001000 : JRControl=1'b1; 
 default: JRControl=1'b0;
 endcase
endmodule