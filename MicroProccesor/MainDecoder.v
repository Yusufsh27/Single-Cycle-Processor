`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:52:28 03/05/2017 
// Design Name: 
// Module Name:    MainDecoder 
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
module MainDecoder(input [5:0] Opcode,
					 output MemtoReg, MemWrite, Branch, ALUSrc, RegDst,
					 output RegWrite, Jump,
					 output [1:0] ALUOp);

		reg [8:0] Signal;

		assign {RegWrite, RegDst, ALUSrc, Branch, MemWrite, MemtoReg, Jump, ALUOp} = Signal;

		always @ (*) begin
			case (Opcode)
				6'b000000: Signal = 9'b110000010;
				6'b100011: Signal = 9'b101001000;
				6'b101011: Signal = 9'b001010000;
				6'b000100: Signal = 9'b000100001;
				6'b001000: Signal = 9'b101000000;
				6'b000010: Signal = 9'b000000100;
				default : Signal = 9'bbxxxxxxxxx;
			endcase
		end

endmodule