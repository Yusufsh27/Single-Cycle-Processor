`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:03:38 03/05/2017 
// Design Name: 
// Module Name:    DataPath 
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
module DataPath(input CLK, Reset,MemToReg,PCSrc, ALUSrc, RegDst, RegWrite, Jump,
					input [2:0] ALUControl,
					input [31:0] ReadData,
					input [31:0] Instr,
					output [31:0] ALUResult, WriteData,
					output Zero,
					output [31:0] PC);
	
	wire [4:0] WriteReg;
	wire [31:0] PCNext, PCNextBranch, PCPlus1Out, PCBranchOut;
	wire [31:0] SignImm, SignImmSh;
	wire [31:0] SrcA, SrcB;
	wire [31:0] Result;
	
	ProgramCounter #(32) U01(CLK,Reset,PCNext, PC); // Needs Reset
	PCPlus1 U02(PC,PCPlus1Out);
	SignExtend U03(Instr[15:0],SignImm);
	PCBranch U04(SignImm,PCPlus1Out,PCBranchOut);
	MainMux #(32) U05(PCSrc,PCBranchOut,PCPlus1Out,PCNextBranch);
	MainMux #(32) U06(Jump,{PCPlus1Out[31:28], Instr[25:0], 2'b00},PCNextBranch,PCNext);
	RegisterFile #(5,32) U07(CLK,Instr[25:21],Instr[20:16], WriteReg, Result,RegWrite,SrcA,WriteData);
	MainMux #(5) U08(RegDst,Instr[15:11], Instr[20:16],WriteReg);
	MainMux #(32) U09(MemToReg,ReadData,ALUResult,Result);
	MainMux #(32) U10(ALUSrc,SignImm,WriteData,SrcB);
	ALU U11 (ALUControl,SrcA,SrcB,ALUResult,Zero);


endmodule
