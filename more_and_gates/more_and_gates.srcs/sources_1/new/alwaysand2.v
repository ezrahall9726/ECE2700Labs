`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2026 03:16:26 PM
// Design Name: 
// Module Name: alwaysand2
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
    output reg F,
    input A,
    input B
);

    always @(A, B) begin
        F = A & B;
    end

endmodule
