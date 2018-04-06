`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:36:28 03/05/2017 
// Design Name: 
// Module Name:    MainMux 
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
module MainMux#(parameter W=32)
					(input SEL,
					input [W-1:0] One,
					input [W-1:0] Zero,
					output [W-1:0] Out);

			assign Out = SEL ? One: Zero;


endmodule
