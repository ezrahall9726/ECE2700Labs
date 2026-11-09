`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2026 02:02:37 PM
// Design Name: 
// Module Name: MUXArray
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


module MUXArray # (parameter SIZE = 4)
    (
    input wire [SIZE-1 : 0] a, b,
    input wire sel,
    output wire [SIZE-1 : 0] out
    );
    
    genvar i;
    generate
        for (i = 0; i < SIZE; i = i+1) begin : muxParam
            mux2to1 mux (
                .i0(a[i]),
                .i1(b[i]),
                .sel(sel),
                .out(out[i])
            );
        end
    endgenerate
    
endmodule
