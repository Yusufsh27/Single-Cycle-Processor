`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:18:11 03/05/2017 
// Design Name: 
// Module Name:    TopModule 
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
module TopModule(input CLK, Reset, 
					input [31:0] ReadData, 
					output [31:0] ALUResult);
					
			wire [31:0] PC, WriteData, Instr;
			wire MemWrite;

			MIPS U01 (CLK,Reset,Instr, ReadData, MemWrite,ALUResult,WriteData, PC);
			InstructionMem U02 (PC, Instr);
			DataMemory U03 (CLK,MemWrite,ALUResult, WriteData,ReadData);
endmodule
