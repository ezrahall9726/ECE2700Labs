`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2026 02:37:58 PM
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
        output reg [15:0] y
    );
    
    decoder3to8 dec1 (
        .d(d[2:0]),
        .en(~d[3] & en),
        .y(y[7:0])
    );
    
    decoder3to8 dec2 (
        .d(d[2:0]),
        .en(d[3] & en),
        .y(y[15:8])
    );
       
    
endmodule
