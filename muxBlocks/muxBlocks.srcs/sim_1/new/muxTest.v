`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2026 07:45:29 PM
// Design Name: 
// Module Name: muxTest
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


module muxTest;

    reg [5:0] sw;
    reg clk;
    
    wire led;
    
    mux4to1 mux (
        .i0(sw[0]),
        .i1(sw[1]),
        .i2(sw[2]),
        .i3(sw[3]),
        
        .sel(sw[5:4]),
        
        
        .out(led)    
    );
    

    initial begin
        sw[3:0] = 4'b0000; #10;
        sw[4] = 1'b0;
        sw[4] = 1'b1;
        
        sw[3:0] = 4'b0001; #10;
        sw[4] = 1'b0;
        sw[4] = 1'b1;
        
        sw[3:0] = 4'b0010; #10;
        sw[4] = 1'b0;
        sw[4] = 1'b1;
        
        sw[3:0] = 4'b0011; #10;
        sw[4] = 1'b0;
        sw[4] = 1'b1;
        
        sw[3:0] = 4'b0100; #10;
        sw[4] = 1'b0;
        sw[4] = 1'b1;
        
        sw[3:0] = 4'b0101; #10;
        sw[4] = 1'b0;
        sw[4] = 1'b1;
        
        sw[3:0] = 4'b0110; #10;
        sw[4] = 1'b0;
        sw[4] = 1'b1;
        
        sw[3:0] = 4'b0111; #10;
        sw[4] = 1'b0;
        sw[4] = 1'b1;
        
        sw[3:0] = 4'b1000; #10;
        sw[4] = 1'b0;
        sw[4] = 1'b1;
        
        sw[3:0] = 4'b1001; #10;
        sw[4] = 1'b0;
        sw[4] = 1'b1;
        
        sw[3:0] = 4'b1010; #10;
        sw[4] = 1'b0;
        sw[4] = 1'b1;
        
        sw[3:0] = 4'b1011; #10;
        sw[4] = 1'b0;
        sw[4] = 1'b1;
        
        sw[3:0] = 4'b1100; #10;
        sw[4] = 1'b0;
        sw[4] = 1'b1;
        
        sw[3:0] = 4'b1101; #10;
        sw[4] = 1'b0;
        sw[4] = 1'b1;
        
        sw[3:0] = 4'b1110; #10;
        sw[4] = 1'b0;
        sw[4] = 1'b1;
        
        sw[3:0] = 4'b1111; #10;
        sw[4] = 1'b0;
        sw[4] = 1'b1;
        
        
        
        $stop;
    end
    
    
    
endmodule
