`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:15:57 03/04/2017 
// Design Name: 
// Module Name:    DataMemory 
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
module DataMemory #(parameter addWidth=6, dataWidth=32)
						(input CLK,MemWrite,
						input [dataWidth-1:0] ALUResult,
						input [dataWidth-1:0] WriteData,
						output [dataWidth-1:0] ReadData);
					
			reg [dataWidth-1:0] RAM [2**addWidth-1:0];
					
			initial $readmemb("dmem.mem", RAM);
					
			assign ReadData = RAM[ALUResult];
			always@(posedge CLK) begin
				if(MemWrite == 1) begin
					RAM[ALUResult] <= WriteData;
				end
			end


endmodule


