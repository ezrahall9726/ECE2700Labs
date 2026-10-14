`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 03:56:07 PM
// Design Name: 
// Module Name: adderTop
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


module adderTop(
    input [7:0] sw,
    output [4:0] led
    );
    
    wire [3:0] A = sw[3:0];
    wire [3:0] B = sw[7:4];
    
    wire [3:0] result;
    wire cout;
    
    // adder goes here
    
//    rippleCarryAdder adder (
//        .a(A),
//        .b(B),
//        .cin(1'b0),
//        .sum(result),
//        .cout(cout)
//   ); 

    carrySelectAdder adder (
        .a(A),
        .b(B),
        .cin(1'b0),
        .sum(result),
        .cout(cout)
    );
    
    assign led[3:0] = result[3:0];
    assign led[4] = cout;
    
endmodule
