`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2026 11:47:42 AM
// Design Name: 
// Module Name: AddSubtract4Bit
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


module AddSubtract4Bit(
        input  [3:0] A,
        input  [3:0] B,
        input        subtract,    // 0 = add, 1 = subtract
        output [3:0] result,
        output       overflow,
        output       carry_out
    );
    
    wire [3:0] B_adjusted;
    wire [4:0] sum;  // 5 bits to capture sum and final carry_out
    wire [4:1] carry;
    
    // Implement 2's complement subtraction:
    // If subtract=1, compute -B by inverting and adding 1
    // XOR with subtract signal: if subtract=1, invert B; otherwise pass through
    assign B_adjusted = B ^ {4{subtract}};
    
    // Perform addition with conditional carry-in
    // implemented from pseudocode
    assign carry[1]   = (A[0] & B_adjusted[0]) | (subtract & (A[0] ^ B_adjusted[0]));
    assign carry[4:2] = (A[3:1] & B_adjusted[3:1]) | (carry[3:1] & (A[3:1] ^ B_adjusted[3:1]));
    
    // carry_in = 1 when subtracting (to implement +1 in 2's complement)
    // MSB is  final carry out bit\
    // everything else adds normally just like the pseudocode
    assign sum = {carry[4], A ^ B_adjusted ^ {carry[3:1], subtract}};
    
    assign result = sum[3:0];
    assign carry_out = sum[4];
    
    // Overflow detection: occurs when same-sign operands produce opposite-sign result
    // Adjusted B represents the actual second operand in the operation
    
    // ~(A[3] ^ B_adjusted[3]) checks if signs equal
    // (result[3] ^ A[3]) checks if result sign different
    assign overflow = ~(A[3] ^ B_adjusted[3]) & (result[3] ^ A[3]);
    
endmodule
