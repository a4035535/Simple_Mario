`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/17 10:26:23
// Design Name: 
// Module Name: out_test
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


module out_test(
    input valid,
    input CLK,
    output reg [11:0]RGB
    );
    always @ (posedge CLK)
        if(valid)
        RGB<='b1111_1111_1111;
        else
        RGB<=0;
endmodule
