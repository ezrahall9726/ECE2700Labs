`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2026 05:11:04 PM
// Design Name: 
// Module Name: muxTop
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


module muxTop(
        input [5:0] sw,
        output [0:0] led
    );
    
    mux4to1 mux (
        .i0(sw[3]),
        .i1(sw[2]),
        .i2(sw[1]),
        .i3(sw[0]),
        
        .sel(sw[5:4]),
        
        .out(led[0])
    );
    
    
endmodule
