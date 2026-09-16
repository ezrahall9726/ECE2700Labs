`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2026 03:10:02 PM
// Design Name: 
// Module Name: alwaysand
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

module alwaysand (
    output F,
    input A,
    input B
);

    always @(A, B) begin
        F = A & B;
    end

endmodule