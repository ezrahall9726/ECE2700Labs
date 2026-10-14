`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 02:46:40 PM
// Design Name: 
// Module Name: muxTest
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


module muxTest;

reg i0, i1, sel;
wire out;

mux2to1 mux (
    .i0(i0),
    .i1(i1),
    .sel(sel),
    .out(out)
);

initial begin
    i0 = 1; i1 = 0; sel = 0; #10;
    
    i0 = 1; i1 = 0; sel = 1; #10;

    i0 = 0; i1 = 1; sel = 0; #10;

    i0 = 0; i1 = 1; sel = 1; #10;
    
    $stop;
    end
    
endmodule
