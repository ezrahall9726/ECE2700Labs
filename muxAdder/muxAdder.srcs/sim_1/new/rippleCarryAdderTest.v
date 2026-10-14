`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 03:37:30 PM
// Design Name: 
// Module Name: rippleCarryAdderTest
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


module adderTest(

    );
    reg [3:0] A, B;
    reg carry_in;
    wire [3:0] result;
    wire carry_out;
    
    // Instantiate your AddSubtractTop module here
//    rippleCarryAdder adder (
//        .a(A),
//        .b(B),
//        .cin(1'b0),
//        .sum(result),
//        .cout(carry_out)
//        );
    
    carrySelectAdder adder (
        .a(A),
        .b(B),
        .cin(carry_in),
        .sum(result),
        .cout(carry_out)
    );
    
    
    initial begin
        carry_in = 1'b0;
        // Test 1: Basic addition (3 + 5 = 8, overflow)
        A = 4'b0011; B = 4'b0101;  #10;
        
        // Test 2: Basic subtraction (5 - 3 = 2)
        A = 4'b0101; B = 4'b0011;  #10;
        
        // Test 4: Addition with negative operand (5 + (-3) = 2)
        A = 4'b0101; B = 4'b1101;  #10;
        
        // Test 5: Negative + negative (-2 + -3 = -5, no overflow)
        A = 4'b1110; B = 4'b1101;  #10;
        
        // Test 6: Overflow case (7 + 1 = -8)
        A = 4'b0111; B = 4'b0001;  #10;
        
        // Test 7: Overflow case (-8 - 1 = 7)
        A = 4'b1000; B = 4'b0001;  #10;
        
        // Test 8: Zero operand (0 + 5 = 5)
        A = 4'b0000; B = 4'b0101;  #10;
        
        carry_in = 1'b1;
        // Test 9: Subtract from zero (0 - 5 = -5)
        A = 4'b0000; B = 4'b0101;  #10;
        
        // Test 10: Adding inverses (5 + (-5) = 0)
        A = 4'b0101; B = 4'b1011;  #10;
        
        // Test 11: Double negative (-5 - (-3) = -2)
        A = 4'b1011; B = 4'b1101;  #10;
        
        // Test 12: Minimum value addition (-8 + 0 = -8)
        A = 4'b1000; B = 4'b0000;  #10;
        
        // Test 13: Maximum value addition (7 + 0 = 7)
        A = 4'b0111; B = 4'b0000;  #10;
        
        // Test 14: Subtract to minimum (-7 - 1 = -8)
        A = 4'b1001; B = 4'b0001;  #10;
        
        // Test 15: Subtract to maximum (6 - (-2) = 8, overflow)
        A = 4'b0110; B = 4'b1110;  #10;
        
        $stop;
    end
endmodule