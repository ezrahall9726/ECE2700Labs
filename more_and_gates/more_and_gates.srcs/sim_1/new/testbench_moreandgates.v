`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2026 03:27:58 PM
// Design Name: 
// Module Name: testbench_moreandgates
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


module testbench_moreandgates(
);
    reg in1, in2, in3, in4, clk;
    wire out1, out2;

    moreandgates DUT (
    .A(in1), 
    .B(in2), 
    .C(in3), 
    .D(in4), 
    .F1(out1), 
    .F2(out2)
    );

    initial begin
        in1 = 0; in2 = 0; in3 = 0; in4 = 0; clk = 0;
        forever #10 clk = ~clk;
    end

    always @(posedge clk) begin
        {in1, in2, in3, in4} = {in1, in2, in3, in4} + 1;
    end

endmodule
