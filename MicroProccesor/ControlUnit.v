`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:07:18 03/05/2017 
// Design Name: 
// Module Name:    ControlUnit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ControlUnit(input [5:0] Opcode, Funct,
						input Zero,
						output MemtoReg, MemWrite, PCSrc,
						output [2:0] ALUControl,
						output  ALUSrc, RegDst, RegWrite, Jump);

		wire [1:0] ALUOp;
		wire Branch;
	  

		MainDecoder U00(Opcode, MemtoReg, MemWrite, Branch, ALUSrc, RegDst, RegWrite, Jump, ALUOp);
		ALUDecoder U01(Funct, ALUOp, ALUControl);
		  
		assign PCSrc = Branch & Zero;

endmodule
