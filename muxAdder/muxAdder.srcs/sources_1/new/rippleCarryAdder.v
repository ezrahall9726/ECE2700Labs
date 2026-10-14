`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 03:29:39 PM
// Design Name: 
// Module Name: rippleCarryAdder
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


module rippleCarryAdder (
    input wire [3:0] a,
    input wire [3:0] b,
    input wire cin,
    output wire [3:0] sum,
    output wire cout
);

wire c0c1, c1c2, c2c3;

fullAdder add0 (
    .A(a[0]),
    .B(b[0]),
    .Cin(cin),
    .Sum(sum[0]),
    .Cout(c0c1)
);

fullAdder add1 (
    .A(a[1]),
    .B(b[1]),
    .Cin(c0c1),
    .Sum(sum[1]),
    .Cout(c1c2)
);

fullAdder add2 (
    .A(a[2]),
    .B(b[2]),
    .Cin(c1c2),
    .Sum(sum[2]),
    .Cout(c2c3)
);

fullAdder add3 (
    .A(a[3]),
    .B(b[3]),
    .Cin(c2c3),
    .Sum(sum[3]),
    .Cout(cout)
);



endmodule
