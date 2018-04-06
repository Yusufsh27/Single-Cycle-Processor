`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:45:06 03/04/2017 
// Design Name: 
// Module Name:    ALU 
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
module ALU(input [2:0] ALUControl, 
			input signed [31:0] SrcA, 
			input signed [31:0] SrcB, 
			output reg signed [31:0] ALUResult,
			output reg Zero); 
	
	always @(*) begin
		case(ALUControl)
			0:  ALUResult = SrcA+SrcB; // add
			1:  ALUResult = SrcA-SrcB; // sub
			2:  ALUResult = SrcA&SrcB; // and
			4:  ALUResult = SrcA|SrcB; // or
			5:  ALUResult = SrcA&~SrcB; //nand
			6:  ALUResult = SrcA|~SrcB; // nor
			7:  ALUResult = (SrcA<SrcB)?1:0; //SLT
			default begin 
				ALUResult = 3'bxxx;
			end
		endcase
		
		Zero = (ALUResult==0) ? 1'b1 : 1'b0;
		
	end
	
endmodule
