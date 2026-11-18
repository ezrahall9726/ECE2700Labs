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


module Vending_OneHot_D(
        input wire clk, reset, nickel, dime,
        output reg dispense,
        output reg [3:0] value
    );
    
    reg [3:0] state, next_state;
    reg next_out;
    
    localparam [3:0] S_0    = 4'b0001;
    localparam [3:0] S_5    = 4'b0010;
    localparam [3:0] S_10   = 4'b0100;
    localparam [3:0] S_15   = 4'b1000;
    
    always @(posedge clk or posedge reset) begin
        if(reset) state <= S_0;
        else begin
            state <= next_state;
            dispense <= next_out;
        end
    end
    
    always @(*) begin
        next_state = state;
        next_out = 1'b0;        
        
        next_state[0] = (state[0] & ~nickel & ~dime);                                   //S_0
        next_state[1] = (state[0] & nickel);                                            //S_5
        next_state[2] = ((state[1] & nickel) | (state[0] & dime));                      //S_10
        next_state[3] = (state[3] | (state[1] & dime) | (state[2] & (nickel | dime)));  //S_15
                
    end
    
    
endmodule