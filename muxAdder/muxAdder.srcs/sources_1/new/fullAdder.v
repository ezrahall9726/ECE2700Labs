`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 03:05:15 PM
// Design Name: 
// Module Name: fullAdder
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


module fullAdder(
    input wire A,
    input wire B,
    input wire Cin,
    output wire Sum,
    output wire Cout
    );
    
    wire SB, C1, C2;
    
    halfAdder ha1 (
        .A(A),
        .B(B),
        .Sum(SB),
        .Cout(C1)
    );
    
    halfAdder ha2 (
        .A(Cin),
        .B(SB),
        .Sum(Sum),
        .Cout(C2)
    );
    
    assign Cout = C1 | C2;    

endmodule
