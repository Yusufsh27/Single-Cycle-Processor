`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:39 03/05/2017 
// Design Name: 
// Module Name:    PCPlus1 
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
module PCPlus1(input [31:0] PC,
					output [31:0] PCPlus1Out);
					
				assign PCPlus1Out = PC + 1;
endmodule
