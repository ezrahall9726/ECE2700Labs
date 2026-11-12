`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2026 03:16:55 PM
// Design Name: 
// Module Name: fsmDetect
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


module fsmDetect(
        input wire clk, reset,
        input wire din,
        output reg dout
    );
    
    localparam [1:0] S_0 = 2'b00;
    localparam [1:0] S_1 = 2'b01;
    localparam [1:0] S_2 = 2'b10;
    localparam [1:0] S_3 = 2'b11;
    
    reg [1:0] state, next_state;
    reg next_out;
    
    always @(*) begin
        next_state  = state;
        next_out    = 1'b0;
        
        case(state)
            S_0: begin
                if (din)    next_state = S_1;
                else        next_state = S_0;
            end
            S_1: begin
                if (din)    next_state = S_1;
                else        next_state = S_2;
            end
            S_2: begin
                if (din) begin
                    next_state = S_3;
                    next_out = 1'b1;
                end
                else        next_state = S_0;
            end
            S_3: begin
                if (din)    next_state = S_1;
                else        next_state = S_2;
            end
            
            default: next_state = S_0;
            
        endcase
    end
    
    always @(posedge clk or posedge reset) begin
        if(reset) state <= S_0;
        else begin
            state <= next_state;
            dout <= next_out;
        end
    end
    
endmodule
