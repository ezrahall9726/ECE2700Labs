`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2026 03:16:20 PM
// Design Name: 
// Module Name: clockTB
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


module clockTB(
);
    reg board_clk;
    wire slow_clk;
    
    ClockDivider #(.PRESCALER(8)) DUT(
        .clkin(board_clk), 
        .clkout(slow_clk)
        );
    
    initial begin
        board_clk = 0;
        forever #10 board_clk = ~board_clk;
    end
endmodule
