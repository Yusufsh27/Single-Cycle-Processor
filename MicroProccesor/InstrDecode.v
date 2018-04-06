`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:03:36 03/04/2017 
// Design Name: 
// Module Name:    InstrDecode 
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
module InstrDecode(input [31:0] Instruction,
						output [5:0] Opcode,
						output [4:0] rs,
						output [4:0] rt,
						output [4:0] rd,
						output [15:0] Immediate,
						output [25:0] Jump,
						output [5:0] Funct);
	 
		// Decodes Each assignment based on the Instruction.
		assign Opcode = Instruction [31:26]; // Opcode bits are last 6 bits
		assign rs = Instruction[25:21]; // Register Bits
		assign rt = Instruction[20:16]; 
		assign rd = Instruction[15:11]; 
		assign Immediate = Instruction[15:0]; // only needed for addi, multi..etc
		assign Jump = Instruction[25:0]; // only needed for jump functions
		assign Funct = Instruction[5:0]; // only needed for add and sub..etc
		
		
		// Even though an instruction may not use all of these, we are unsure what the in struction is
		// Thereby if we do need it it will be there later.

endmodule
