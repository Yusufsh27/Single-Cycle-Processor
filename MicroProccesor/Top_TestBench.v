`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:46:57 03/05/2017
// Design Name:   TopModule
// Module Name:   C:/Users/sani/Dropbox/School/College/4.Senior/Spring Semester/CompE475/Spring 2017/HW2/MicroProccesor/Top_TestBench.v
// Project Name:  MicroProccesor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TopModule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Top_TestBench;

	// Inputs
	reg CLK;
	reg Reset;
	reg [31:0] Instr;
	reg [31:0] ReadData;

	// Outputs
	wire [31:0] ALUResult;

	// Instantiate the Unit Under Test (UUT)
	TopModule uut (
		.CLK(CLK), 
		.Instr(Instr), 
		.ReadData(ReadData), 
		.ALUResult(ALUResult)
	);

	initial begin
		CLK = 0;
		Reset = 0;
		#5;
		Reset = 1;
		#5;
		Reset = 0;
		#200;
		$finish;
   end
	
	always #5 CLK = ~CLK;
      
endmodule

