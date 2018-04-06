`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:20:40 03/04/2017 
// Design Name: 
// Module Name:    RegisterFile 
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
module RegisterFile #(parameter addWidth=5, dataWidth=32)
							(input CLK,
							input [4:0] A1, // This is bassically rs
							input [4:0] A2, // This is bassically rt
							input [4:0] A3, // This is bassically rd
							input [31:0] WD3, // Register to write too
							input RegWrite,
							output  [31:0] RD1,
							output  [31:0] RD2);

	reg [dataWidth-1:0] registers [2**addWidth-1:0];

	//initial $readmemb("reg.mem", registers);
	
	assign RD1 = registers[A1]; // Register rs; A1(bassically rs) --> RD1
	assign RD2 = registers[A2]; // Register rs; A2(bassically rt) --> RD2

		// synchronous writes; handles $zero register
		always @(posedge CLK) begin
			if(RegWrite) // Write output into register A3
				registers[A3] <= WD3;
		end

endmodule
