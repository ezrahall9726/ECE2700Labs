`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2026 03:22:25 PM
// Design Name: 
// Module Name: decoderTest
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


module decoderTest;
//    reg [3:0] sw;
//    wire [7:0] led;
    reg [4:0] sw;
    wire [15:0] led;
    
    
//    decoder3to8 decoder (
//        .d(sw[2:0]),
//        .en(sw[3]),
        
//        .out(led)
//    );
    decoder4to16 decoder (
        .d(sw[3:0]),
        .en(sw[4]),
        
        .y(led)
    );
    
//    initial begin
//        sw[3] = 1'b1;
    
//        sw[2:0] = 3'b000; #10;
//        sw[2:0] = 3'b001; #10;
//        sw[2:0] = 3'b010; #10;
//        sw[2:0] = 3'b011; #10;
//        sw[2:0] = 3'b100; #10;
//        sw[2:0] = 3'b101; #10;
//        sw[2:0] = 3'b110; #10;
//        sw[2:0] = 3'b111; #10;

//        $stop;
//    end

    initial begin
        sw[4] = 1'b1;
        
        sw[3:0] = 4'b0000; #10;
        sw[3:0] = 4'b0001; #10;
        sw[3:0] = 4'b0010; #10;
        sw[3:0] = 4'b0011; #10;
        sw[3:0] = 4'b0100; #10;
        sw[3:0] = 4'b0101; #10;
        sw[3:0] = 4'b0110; #10;
        sw[3:0] = 4'b0111; #10;
        
        sw[3:0] = 4'b1000; #10;
        sw[3:0] = 4'b1001; #10;
        sw[3:0] = 4'b1010; #10;
        sw[3:0] = 4'b1011; #10;
        sw[3:0] = 4'b1100; #10;
        sw[3:0] = 4'b1101; #10;
        sw[3:0] = 4'b1110; #10;
        sw[3:0] = 4'b1111; #10;
        
        $stop;

    end

endmodule
