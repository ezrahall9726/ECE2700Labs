`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2026 03:28:32 PM
// Design Name: 
// Module Name: DoubleSevenSegment
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


module DoubleSevenSegment(
    input [7:0] sw,
    input clk,
    output [6:0] seg
    );
    
    wire [3:0] mux_out;
    wire [15:0] out16;
    reg clk_slow;
    
    ClockDivider cd (
        .clkin(clk),
        .clkout(clk_slow)
    );
    
    MUXArray mux (
        .a(sw[3:0]),
        .b(sw[7:4]),
        .sel(clk_slow),
        .out(mux_out)    
    );
    
    // implement decoded 7 segment heres
    

endmodule
