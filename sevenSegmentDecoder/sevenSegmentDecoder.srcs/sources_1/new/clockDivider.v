`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2026 03:14:20 PM
// Design Name: 
// Module Name: clockDivider
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


module ClockDivider #(parameter PRESCALER = 50_000)(
    input clkin,
    output reg clkout    
    );
    
    reg [16:0] count; // a 25-bit register to count up to N
    
    initial begin
        count = 0; // initialize the counter to 0
        clkout = 0; // inititalize the output clock to 0
    end
    always @( posedge clkin ) begin // at every input clock cycle
        if ( count == PRESCALER ) begin // check if the count has reached N
            count <= 0; // reset the count
            clkout = ~clkout; // toggle the output clock
        end
        else begin
            count <= count + 1; // leave the output clock alone and keep counting
        end
    end
endmodule
