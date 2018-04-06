`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:56:59 03/04/2017 
// Design Name: 
// Module Name:    InstructionMem 
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
module InstructionMem#(parameter addWidth=6, dataWidth=32)
							(input [dataWidth-1:0] PC, //this is address from PC
							output [dataWidth-1:0] Instr); 
	
	reg [dataWidth-1:0] instructions [2**addWidth-1:0];

		initial $readmemb("\\Mac\Dropbox\School\College\4.Senior\Spring Semester\CompE475\Spring 2017\HW2\MicroProccesor\instruction.txt", instructions);
	
	
	assign Instr = instructions[PC];

endmodule
