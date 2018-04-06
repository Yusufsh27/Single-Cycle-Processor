`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:52:40 03/05/2017 
// Design Name: 
// Module Name:    ALUDecoder 
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
module ALUDecoder(input [5:0] Funct,
				  input [1:0] ALUOp,
				  output reg [2:0] ALUControl);
					
					
			always @ (*) begin		
				case (ALUOp)
					2'b00: ALUControl = 3'b010; // add
					2'b01: ALUControl = 3'b110; // sub
					default: begin
						case(Funct) // RTYPE
							6'b100000: ALUControl = 3'b010; // ADD
							6'b100010: ALUControl = 3'b110; // SUB
							6'b100100: ALUControl = 3'b000; // AND
							6'b100101: ALUControl = 3'b001; // OR
							6'b101010: ALUControl = 3'b111; // SLT
							default: ALUControl  = 3'bxxx; 
						endcase
					end
				endcase
			end


endmodule
