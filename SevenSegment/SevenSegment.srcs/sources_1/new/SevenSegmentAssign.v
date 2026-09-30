`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2026 04:53:48 PM
// Design Name: 
// Module Name: SevenSegmentAssign
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


module SevenSegmentAssign(
    input x3,
    input x2,
    input x1,
    input x0,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g
    );
    
//    wire [3:0] inputbv;
//    assign inputbv = {x3, x2, x1, x0};
    
    assign a = x3 | x1 | x2&x0 | ~x2&~x0;
    assign b = ~x2 | x1&x0 | ~x1&~x0;
    assign c = x3 | x2 | ~x1 | x0;
    assign d = (~x0 | x1 | x2 | x3) & (x0 | x1 | ~x2) & (~x0 | ~x1 | ~x2);
    assign e = ~(x2 | x0) | x1&x0;
    assign f = (~x1 | ~x0) & (x2 | ~x1) & (~x0 | x2 | x3);
    assign g = x1&~x0 | x2&~x1 | x3 | ~x2&x1;

endmodule
