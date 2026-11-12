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


module shiftDetect(
    input logic clk, reset, serial_in,
    output logic unlock
    );
    
    reg [2:0] shift = 3'b000;
    
    always @(posedge clk) begin
        shift <= {shift[1:0], serial_in};
        if(reset) begin
            shift = 3'b000;        
        end
    end
    
    assign unlock = (shift == 3'b101);
    
endmodule
