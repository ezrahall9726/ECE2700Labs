`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2026 02:34:39 PM
// Design Name: 
// Module Name: testbench_continuousand
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


module testbench_continuousand (
);
    reg in1, in2;
    wire out;

    continuousand CTA (.A(in1), .B(in2), .F(out));

    initial begin
        in1 = 0; in2 = 0;
        #10
        in1 = 1; in2 = 0;
        #10
        in1 = 0; in2 = 1;
        #10
        in1 = 1; in2 = 1;
        #10
        $finish;
    end
endmodule

