`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/18 09:49:13
// Design Name: 
// Module Name: first
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module toptop;

	reg CLK, CLR;
	wire [3:0] R, G, B;
	wire HS, VS;
	
	top t(CLK, CLR, key, R, G, B, HS, VS);
	
	initial
	begin
	CLK<=0;
	forever
		#1 CLK=~CLK;
	end
	
endmodule
