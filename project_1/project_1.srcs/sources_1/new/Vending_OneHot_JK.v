`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2026 01:48:12 PM
// Design Name: 
// Module Name: Vending_Binary_JK
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


module Vending_OneHot_JK(
        input wire clk, reset, nickel, dime,
        output reg dispense,
        output reg [3:0] value
    );
    
    localparam [3:0] S_0    = 4'b0001;
    localparam [3:0] S_5    = 4'b0010;
    localparam [3:0] S_10   = 4'b0100;
    localparam [3:0] S_15   = 4'b1000;
    
    
endmodule