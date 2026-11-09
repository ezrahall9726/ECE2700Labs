`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2026 01:58:05 PM
// Design Name: 
// Module Name: decoder4to16
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


module decoder4to16(
        input wire [3:0] d,
        input wire en,
        output wire [15:0] out
    );
    
    decoder3to8 dec1 (
        .d(d[2:0]),
        .en(~d[3] & en),
        .out(out[7:0])
    );
    
    decoder3to8 dec2 (
        .d(d[2:0]),
        .en(d[3] & en),
        .out(out[15:8])
    );
       
    
endmodule
