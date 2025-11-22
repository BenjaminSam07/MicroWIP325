`timescale 1ps /100fs
//////////////////////////////////////////////////////////////////////////////////
// Company: Aeolus Electronics
// Engineer: Benjamin George Samuel
// 
// Create Date: 11.01.2022 11:31:02
// Design Name: ALU Control Unit
// Module Name: ALUControl_Block
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
module ALUControl_Block( ALUControl, ALUOp, Function);
output [1:0] ALUControl;
reg [1:0] ALUControl;
input [1:0] ALUOp;
input [5:0] Function;
wire [7:0] ALUControlIn;
assign ALUControlIn = {ALUOp,Function};
always @(ALUControlIn)
casex (ALUControlIn)
 8'b11xxxxxx: ALUControl=2'b01;
 8'b00xxxxxx: ALUControl=2'b00;
 8'b01xxxxxx: ALUControl=2'b10;
 8'b10100000: ALUControl=2'b00;
 8'b10100010: ALUControl=2'b10;
 8'b10101010: ALUControl=2'b11;
 default: ALUControl=2'b00;
 endcase
endmodule