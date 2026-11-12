`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2026 03:53:11 PM
// Design Name: 
// Module Name: detectorTB
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


//module detectorTB();

//wire unlock;
//reg board_clk, reset, data_in;

////shiftDetect shift (
////    .clk(board_clk),
////    .reset(reset),
////    .serial_in(data_in),
////    .unlock(unlock)
////);


//fsmDetect fsm (
//    .clk(board_clk),
//    .reset(reset),
//    .din(data_in),
//    .dout(unlock)
//);

//initial begin
//    board_clk = 0;
//    reset = 0;
//    data_in = 0;
    
//    data_in = 1; #20;
////    reset = 1; #10;
        
//    data_in = 1; #40;
//    data_in = 0; #40;
//    data_in = 1; #40;
//    data_in = 0; #40;
//    data_in = 1; #40;
//    data_in = 0; #40;
//    data_in = 1; #40;
//    data_in = 0; #40;
//    data_in = 1; #40;
//    data_in = 0; #40;
//    data_in = 1; #40;
//    data_in = 0; #40;
//    data_in = 1; #40;
    

//end

//always @(*) begin
//    forever #3 board_clk = ~board_clk;
//end

//endmodule

//`timescale 1ns/1ps

module ShiftFSMTest;

    reg clk = 0, reset = 1, serial_in = 0;
    wire unlock_shift, unlock_fsm;
    
    // Clock is faster than input -- very important
    always #5 clk = ~clk;

    // Instantiation of my Shift Register and FSM modules
    shiftDetect u1 (.clk(clk), .reset(reset), .serial_in(serial_in), .unlock(unlock_shift));
    fsmDetect  u2 (.clk(clk), .reset(reset), .din(serial_in), .dout(unlock_fsm));

    integer i;
    reg [15:0] pattern = 16'b1010100000111010;
    initial begin
        #5;
        reset = 0;
        for (i = 15; i >= 0; i = i - 1) begin
            serial_in = pattern[i];
            #10;
            // Print to console, if desired
            $display("t=%0t in=%b shift_unlock=%b fsm_unlock=%b state=%b", $time, serial_in, unlock_shift, unlock_fsm, u2.state);
        end
        #20;
        $finish;
    end

endmodule