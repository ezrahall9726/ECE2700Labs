`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 04:33:35 PM
// Design Name: 
// Module Name: carrySelectAdder
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


module carrySelectAdder(
    input wire [3:0] a,
    input wire [3:0] b,
    input wire cin,
    output wire [3:0] sum,
    output wire cout
    );
    
    wire [3:0] sum0;
    wire [3:0] sum1;
    wire cout0, cout1;
    
    // RCAs
    rippleCarryAdder adder0 (
        .a(a),
        .b(b),
        .cin(1'b0),
        .sum(sum0),
        .cout(cout0)
    );
    
    rippleCarryAdder adder1 (
        .a(a),
        .b(b),
        .cin(1'b1),
        .sum(sum1),
        .cout(cout1)
    );
    
    //Muxes
    mux2to1 mux0 (
        .i0(sum0[0]),
        .i1(sum1[0]),
        .sel(cin),
        .out(sum[0])
    );
    
    mux2to1 mux1 (
        .i0(sum0[1]),
        .i1(sum1[1]),
        .sel(cin),
        .out(sum[1])
    );
    
    mux2to1 mux2 (
        .i0(sum0[2]),
        .i1(sum1[2]),
        .sel(cin),
        .out(sum[2])
    );
    
    mux2to1 mux3 (
        .i0(sum0[3]),
        .i1(sum1[3]),
        .sel(cin),
        .out(sum[3])
    );
    
    mux2to1 muxCout (
        .i0(cout0),
        .i1(cout1),
        .sel(cin),
        .out(cout)
    );
    
endmodule
