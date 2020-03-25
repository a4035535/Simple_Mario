`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/17 10:07:20
// Design Name: 
// Module Name: set_area
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


module set_area(
    input CLK,
    output HS,
    output VS,
    output [9:0]x_pos,
    output [9:0]y_pos,
    output valid
    );
    //常量定义60hz
    parameter 
    hsync_end = 'd117,
    hdat_begin= 'd205,
    hdat_end  = 'd1005,
    hp_end    = 'd1045,
    
    vsync_end = 'd3,
    vdat_begin= 'd26,
    vdat_end  = 'd626,
    vl_end    = 'd627;

    reg[10:0] x_counter;
    reg[10:0] y_counter;

    initial begin
        x_counter = 0;
        y_counter = 0;
        clkdiv = 0;
    end
    
    reg [1:0]clkdiv;
    always @ (posedge CLK)
        clkdiv<=clkdiv+1;

    always @(posedge clkdiv) begin
        if(x_counter == hp_end)
        begin
            x_counter = 0;
            if(y_counter == vl_end)
                y_counter = 0;
            else
                y_counter = y_counter + 1;
        end
        else
            x_counter = x_counter + 1;
    end
    
    wire [9:0]x_pos,y_pos;
    
    assign x_pos = x_counter - hsync_end - 'd100;
    assign y_pos = y_counter  - 'd60;
    
    assign valid =(x_pos>0) & (x_pos< 'd600) & (y_pos > 0) &(y_pos< 'd480);
    
    assign HS = x_counter > hdat_end && x_counter <= hp_end;
    assign VS = y_counter > vdat_end && y_counter <= vl_end;
endmodule
