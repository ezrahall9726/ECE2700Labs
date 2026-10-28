`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2026 02:38:28 PM
// Design Name: 
// Module Name: generic
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


module mux4to1(
    input wire i0, i1, i2, i3, 
    input wire [1:0] sel,
    output out    
    );
    
    wire out1, out2;
   
    mux2to1 mux1 (
        .i0(i0),
        .i1(i1),
        .sel(sel[0]),
        .out(out1)
    );
    
    mux2to1 mux2 (
        .i0(i2),
        .i1(i3),
        .sel(sel[0]),
        .out(out2)
    );
    
    mux2to1 mux3 (
        .i0(out1),
        .i1(out2),
        .sel(sel[1]),
        .out(out)
    );
    
endmodule