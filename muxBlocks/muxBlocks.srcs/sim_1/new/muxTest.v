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
//    reg [2:0] sw;
    reg [5:0] sw;
    
    wire led;
    
//    mux2to1 mux (
//        .i0(sw[0]),
//        .i1(sw[1]),
        
//        .sel(sw[2]),
        
//        .out(led)
//    );
    
    mux4to1 mux (
        .i0(sw[0]),
        .i1(sw[1]),
        .i2(sw[2]),
        .i3(sw[3]),
        
        .sel(sw[5:4]),
        
        
        .out(led)    
    );
    

    initial begin
//        sw[1:0] = 2'b01; 
//        sw[2] = 1'b0; #10;
//        sw[2] = 1'b1; #10;
        
//        sw[1:0] = 2'b10; 
//        sw[2] = 1'b0; #10;
//        sw[2] = 1'b1; #10; 
       
        sw[3:0] = 4'b1010; 
        sw[5:4] = 2'b00; #10;
        sw[5:4] = 2'b01; #10;
        sw[5:4] = 2'b10; #10;
        sw[5:4] = 2'b11; #10;
        
        sw[3:0] = 4'b0101; 
        sw[5:4] = 2'b00; #10;
        sw[5:4] = 2'b01; #10;
        sw[5:4] = 2'b10; #10;
        sw[5:4] = 2'b11; #10;

        $stop;
    end
    
    
    
endmodule
