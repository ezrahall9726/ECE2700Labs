`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2026 03:14:54 PM
// Design Name: 
// Module Name: testbench_ClockDivider
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


module testbench_ClockDivider(

    );
    reg board_clk;
    wire slow_clk;
    
    ClockDivider #(.PRESCALER(8)) DUT(
        .clkin(board_clk), 
        .clkout(slow_clk)
        );
    
    // I changed clkin to board_clk because clkin is for
    // the design source and not the testbench
    
    initial begin
        board_clk = 0;
        forever #10 board_clk = ~board_clk;
    end

endmodule
