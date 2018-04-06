`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:51:15 03/05/2017 
// Design Name: 
// Module Name:    ProgramCounter 
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
module ProgramCounter #(parameter Width = 8)
							(input CLK,Reset,
							input [Width - 1: 0]PCin,
							output reg [Width - 1: 0]PC);
			
			
			always @(posedge CLK) begin
				if (Reset) PC<= 0;
				else PC <= PCin;
			end

endmodule

