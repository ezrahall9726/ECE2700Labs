`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2026 04:58:03 PM
// Design Name: 
// Module Name: fsmTop
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


module fsmTop(
    input wire    sw,
    input wire    btnC, clk,
    
    output     [4:0]    led
);

fsmDetect fsm (
    .clk(clk),
    .serial_in(sw),
    .unlock(led[0]),
    .state_out(led[2:1]),
    .next_state_out(led[4:3]),
    .reset(1'b0),
    .load(btnC)
);


endmodule
