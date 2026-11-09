`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2026 04:04:59 PM
// Design Name: 
// Module Name: DecodedSevenSegment
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


module DecodedSevenSegment(
    input wire [3:0] code,
    output wire [6:0] display
    );
    
    wire [15:0] out16;    
    
    decoder4to16 decoder (
        .d(code),
        .en(1'b1),
        .out(out16)
    );
    
    assign display[0] = |(out16 & 16'hd7ed);    //a
    assign display[1] = |(out16 & 16'h279f);    //b
    assign display[2] = |(out16 & 16'h2ffb);    //c
    assign display[3] = |(out16 & 16'h7b6d);    //d
    assign display[4] = |(out16 & 16'hfd45);    //e
    assign display[5] = |(out16 & 16'hdf71);    //f
    assign display[6] = |(out16 & 16'hef7c);    //g
    
endmodule
