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


module Vending_Binary_D(
        input wire clk, reset, nickel, dime,
        output reg dispense,
        output reg [3:0] value
    );
    
    reg [1:0] state, next_state;
    reg next_out;
    
    localparam [1:0] S_0    = 2'b00;
    localparam [1:0] S_5    = 2'b01;
    localparam [1:0] S_10   = 2'b10;
    localparam [1:0] S_15   = 2'b11;
    
    always @(posedge clk or posedge reset) begin
        if(reset) state <= S_0;
        else begin
            state <= next_state;
            dispense <= next_out;
        end
    end
     
    always @(*) begin
        next_state  = state;
        next_out    = 1'b0;
        
        case(state)
            S_0: begin 
                if (nickel)     next_state = S_5;
                else if (dime)  next_state = S_10;
                else            next_state = S_0;
            end
            S_5: begin
                if (nickel)     next_state = S_10;
                else if (dime)  next_state = S_15;
                else            next_state = S_5;
            end
            S_10: begin
                if (nickel)     next_state = S_15;
                else if (dime)  next_state = S_15;
                else            next_state = S_10;
            end
            S_15: begin
                next_state = S_15;
            end
            
            default: next_state = S_0;            
        endcase
    end
        
endmodule