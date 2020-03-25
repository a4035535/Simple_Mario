`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/17 09:58:29
// Design Name: 
// Module Name: div_clk
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


module div_clk(
    input CLK,
    input CLR,
    output clkdiv
    );
    parameter div = 1;
    reg [div:0]local; 
    always @ (posedge CLK or negedge CLR)
    if(CLR)
        local<=0;
    else
        local<=local+1;
    
    assign clkdiv=local[div];
endmodule
