`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 05:18:29 PM
// Design Name: 
// Module Name: carrySelect16bit
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


module carrySelect16bit(
        input wire [15:0] A,
        input wire [15:0] B,
        input wire cin,
        output wire [15:0] sum,
        output wire cout
    );
    
    wire c0c1, c1c2, c2c3;
    
    carrySelectAdder adder0 (
        .a(A[3:0]),
        .b(B[3:0]),
        .cin(cin),
        .sum(sum[3:0]),
        .cout(c0c1)
    );
    
    carrySelectAdder adder1 (
        .a(A[7:4]),
        .b(B[7:4]),
        .cin(c0c1),
        .sum(sum[7:4]),
        .cout(c1c2)
    );
    
    carrySelectAdder adder2 (
        .a(A[11:8]),
        .b(B[11:8]),
        .cin(c1c2),
        .sum(sum[11:8]),
        .cout(c2c3)
    );
    
    carrySelectAdder adder3 (
        .a(A[15:12]),
        .b(B[15:12]),
        .cin(c2c3),
        .sum(sum[15:12]),
        .cout(cout)
    );
    
endmodule
