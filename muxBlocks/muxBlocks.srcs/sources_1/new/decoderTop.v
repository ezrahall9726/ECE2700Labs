`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2026 04:38:39 PM
// Design Name: 
// Module Name: decoderTop
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


module decoderTop(
        input [3:0] sw,
        output [7:0] led
    );
    
    decoder3to8 decoder (
        .d(sw[2:0]),
        .en(sw[3]),
        .out(led)    
    );
    
endmodule
