`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2026 02:22:25 PM
// Design Name: 
// Module Name: muxTB
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


module muxTB();
    reg [7:0] sw;
    reg [0:0] b;
    
    wire [3:0] led;
    
    MUXArray mux (
        .a(sw[3:0]),
        .b(sw[7:4]),
        .sel(b[0]),
        .out(led)
    );
    
    initial begin
        sw[3:0] = 4'b0101;
        sw[7:4] = 4'b1010; 
        b[0] = 1'b0; # 10;
        b[0] = 1'b1; # 10;
        $stop;
    end
    
    
endmodule
