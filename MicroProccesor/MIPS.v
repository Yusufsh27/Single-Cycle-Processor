`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:15:51 03/05/2017 
// Design Name: 
// Module Name:    MIPS 
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
module MIPS(input CLK, Reset,
				input [31:0] Instr,
				input [31:0] ReadData,
				output MemWrite,
				output [31:0] ALUResult, WriteData, PC);
				
		wire MemToReg, ALUSrc, PCSrc, RegDst, RegWrite, Jump, Zero;
		wire [2:0] ALUControl;
		
		ControlUnit U01(Instr[31:26],Instr[5:0],Zero,MemToReg,MemWrite,PCSrc,ALUControl,ALUSrc,RegDst,RegWrite,Jump);
		DataPath U02(CLK,Reset,MemToReg,PCSrc,ALUSrc,RegDst,RegWrite,Jump,ALUControl,ReadData,Instr, ALUResult,WriteData,Zero,PC);

endmodule
