`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/17 09:55:41
// Design Name: 
// Module Name: top
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


module top(
    input CLK,
    input CLR,
    input [3:0]key,
    output [3:0]R,
    output [3:0]G,
    output [3:0]B,
    output HS,
    output VS
    );
    //var set
    wire clkdiv;//时钟分频
    wire [9:0]x_pos,y_pos;//图像位置
    wire is_valid;//图像是否有效
    
    wire [11:0]RGB;//颜色合集
    
    wire [499:0]map1,map0;//地图定义
    assign map1=0;
    assign map0={
    25'b11111_11111_11111_11111_11111,
    {6{{2{25'b1000000000_0000000000_00001}},
    25'b10001_11100_11110_01111_00001}},
    25'b11111_11111_11111_11111_11111
    };
    
    wire [9:0] mario_up ;
    wire [9:0] mario_down ;
    wire [9:0] mario_left ;
    wire [9:0] mario_right;//马里奥边界定义
    
    assign R = RGB[11:8];//中间变量传递
    assign G = RGB[7:4];
    assign B = RGB[3:0];
    
    //module
    div_clk div(CLK,CLR,clkdiv);
    set_area area(CLK,HS,VS,x_pos,y_pos,is_valid);
    
    //out_test outtest(is_valid,clkdiv,RGB);
    show_blocks show(x_pos,y_pos,RGB,is_valid,map0,map1,clkdiv,mario_up,mario_down,mario_left,mario_right);

    control con(key,map0,CLK,CLR,mario_up,mario_down,mario_left,mario_right);
    
    
endmodule