`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Utah State University
// Engineer: Ezra Hall
// 
// Create Date: 09/09/2026 01:47:12 PM
// Design Name: Lab 1
// Module Name: myandgate
// Project Name: myandgate
// Target Devices: Basys3
// Tool Versions: Vivado 2021.4
// Description: a trivial module implementing an and gate
// 
// Dependencies: none
// 
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module myandgate(
    output F,
    input A,
    input B
    );
    
    and GATE1 (F, A, B);
    
endmodule

