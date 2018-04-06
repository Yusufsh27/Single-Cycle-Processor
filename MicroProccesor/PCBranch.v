`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:29 03/05/2017 
// Design Name: 
// Module Name:    PCBranch 
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
module PCBranch(input [31:0] SignImm,
					input [31:0] PCPlus1Out,
					output [31:0] PCBranchOut);
					
					
				assign PCBranchOut = SignImm + PCPlus1Out;


endmodule
