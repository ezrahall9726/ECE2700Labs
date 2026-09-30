`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2026 04:49:46 PM
// Design Name: 
// Module Name: SevenSegmentTruthTable
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


module SevenSegmentTruthTable(
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
    
    wire [3:0] inputbv;
    assign inputbv = {x3, x2, x1, x0};
    
    reg [6:0] outputbv;
    
    assign a = outputbv[6];
    assign b = outputbv[5];
    assign c = outputbv[4];
    assign d = outputbv[3];
    assign e = outputbv[2];
    assign f = outputbv[1];
    assign g = outputbv[0];
    
    always @(*) begin 
        case (inputbv)   
    
            4'b0000: outputbv = 7'b1111110; // 0
            4'b0001: outputbv = 7'b0110000; // 1
            4'b0010: outputbv = 7'b1101101; // 2
            4'b0011: outputbv = 7'b1111001; // 3
            4'b0100: outputbv = 7'b0110011; // 4
            4'b0101: outputbv = 7'b1011011; // 5
            4'b0110: outputbv = 7'b1011111; // 6
            4'b0111: outputbv = 7'b1110000; // 7
            4'b1000: outputbv = 7'b1111111; // 8
            4'b1001: outputbv = 7'b1111011; // 9

            default: outputbv = 7'b0000000;
    
    
        endcase
    end
endmodule