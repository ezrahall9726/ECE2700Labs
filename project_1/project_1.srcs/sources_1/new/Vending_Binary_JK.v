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


module Vending_Binary_JK(
        input wire clk, reset, nickel, dime,
        output reg dispense,
        output reg [3:0] value
    );
    
    reg [1:0] state, next_state;
    reg next_out;
    reg [1:0] J, K;
    
    localparam [1:0] S_0    = 2'b00;
    localparam [1:0] S_5    = 2'b01;
    localparam [1:0] S_10   = 2'b10;
    localparam [1:0] S_15   = 2'b11;
    
    always @(posedge clk) begin
        if (reset) state <= S_0;
        else       state <= (J & ~state) | (~K & state);
    end
    
    
endmodule
