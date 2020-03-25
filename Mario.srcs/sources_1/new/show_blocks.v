`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/18 00:37:49
// Design Name: 
// Module Name: show_blocks
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


module show_blocks(
    input [9:0]x_pos,
    input [9:0]y_pos,
    
    output reg [11:0]RGB,
    input is_valid,
    
    input [499:0]map0,
    input [499:0]map1,
    input CLK,
    
    input [9:0] mario_up,
    input [9:0] mario_down,
    input [9:0] mario_left,
    input [9:0] mario_right
    );
    
    wire [24*24-1:0]wall;
    assign wall='hFC7E3FFC7E3FFC7E3F0FC3F00FC3F00FC3F0FC7E3FFC7E3FFC7E3F0FC3F00FC3F00FC3F0FC7E3FFC7E3FFC7E3F0FC3F00FC3F00FC3F0FC7E3FFC7E3FFC7E3F0FC3F00FC3F00FC3F0;
	parameter wall_color = 4095;
    
    wire [24*24-1:0]coin;
    
    wire [24*24-1:0]other;
    
    wire [4:0]x_block,y_block;
    assign x_block = x_pos / 24;
    assign y_block = y_pos / 24;
    
    wire [4:0]x_sblock,y_sblock;
    assign x_sblock = x_pos % 24;
    assign y_sblock = y_pos % 24;
    
    wire [1:0]block_type;
    assign block_type = {map1[x_block + y_block * 25] ,map0[x_block + y_block * 25] };
    
    wire is_mario;
    assign is_mario = (x_pos > mario_left) & (x_pos < mario_right) & (y_pos < mario_down) & (y_pos > mario_up);
    
    always @ (posedge CLK)
    if(is_valid)
        if(is_mario)
            RGB<=500;
        else
            case(block_type)
            0:RGB<= 0;  
            1:RGB<= (wall[x_sblock + y_sblock * 24]) ? wall_color :0;
            2:RGB<= coin[x_sblock + y_sblock * 24];
            3:RGB<= other[x_sblock + y_sblock * 24];
            endcase 
    else 
    RGB <= 0;
endmodule
