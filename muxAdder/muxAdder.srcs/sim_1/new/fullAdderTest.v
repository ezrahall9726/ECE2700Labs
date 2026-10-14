`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 03:12:12 PM
// Design Name: 
// Module Name: fullAdderTest
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


module fullAdderTest(
);
    reg A, B;
    wire Cout, sum;


    fullAdder adder (
        .A(A),
        .B(B),
        .Cin(1'b0),
        .Sum(sum),
        .Cout(Cout)
    );

    initial begin
        A = 0; B = 0;
        #10
        A = 1; B = 0;
        #10
        A = 0; B = 1;
        #10
        A = 1; B = 1;
        #10
        $finish;
    end
endmodule
