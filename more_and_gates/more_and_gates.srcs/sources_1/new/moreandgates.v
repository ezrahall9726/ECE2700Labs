`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2026 03:26:31 PM
// Design Name: 
// Module Name: moreandgates
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

module moreandgates (
    input A, B, C, D,
    output F1, F2
);

    continuousand carrot (
        .F(F1),
        .A(A),
        .B(B)
    );

    alwaysand avocado (
        .F(F2),
        .A(C),
        .B(D)
    );

endmodule
