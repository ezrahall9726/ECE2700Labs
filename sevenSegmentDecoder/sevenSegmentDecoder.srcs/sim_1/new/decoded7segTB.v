`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2026 04:10:05 PM
// Design Name: 
// Module Name: decoded7segTB
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


module decoded7segTB();

    reg [3:0] code_input;
    wire [6:0] display_test;
    wire [15:0] decoder_test;
    
    decoder4to16 dec (
        .d(code_input),
        .en(1'b1),
        .out(decoder_test)
    );
    
    DecodedSevenSegment decoded7 (
        .code(code_input),
        .display(display_test)     
    );
    
    
    initial begin
        code_input = 4'b0001; # 10;
        code_input = 4'b0101; # 10;
        code_input = 4'b1010; # 10;
        code_input = 4'b0110; # 10;
        
        $stop;
    end
    
endmodule
