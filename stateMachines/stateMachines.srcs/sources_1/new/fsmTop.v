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
    input sw, btnC,
    output led
);

fsmDetect fsm (
    .clk(btnC),
    .din(sw),
    .dout(led),
    .reset(1'b0)
);


endmodule
