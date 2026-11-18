`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2026 03:16:55 PM
// Design Name: 
// Module Name: fsmDetect
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

module fsmDetect (
    input  wire       clk,
    input  wire       reset,       // synchronous, active-high
    input  wire       load,        // asynchronous button, active-high
    input  wire       serial_in,   // switch bit to commit
    output reg        unlock,      // one-cycle pulse when 101 is detected
    output wire [1:0] state_out,
    output wire [1:0] next_state_out 
);

/////////////////////////////////////////////////////////////////////////////

    // Housekeeping
    localparam [1:0] S0 = 2'd0; // no matching prefix
    localparam [1:0] S1 = 2'd1; // matched 1
    localparam [1:0] S2 = 2'd2; // matched 10
    localparam [1:0] S3 = 2'd3; // matched 101

    reg [1:0] state;
    reg [1:0] next_state;
    reg next_out;

/////////////////////////////////////////////////////////////////////////////

    // Synchronize the button to clk and make a one-cycle pulse
    // on each low-to-high transition.
    reg load_meta; // Meta-signal
    reg load_sync; // Synchronized signal (to posedge clk)
    reg load_prev; // Previous signal (to create single pulse)

    always @(posedge clk) begin
        if (reset) begin
            load_meta <= 1'b0;
            load_sync <= 1'b0;
            load_prev <= 1'b0;
        end else begin
            load_meta <= load;
            load_sync <= load_meta;
            load_prev <= load_sync;
        end
    end

    wire load_pulse = load_sync & ~load_prev;

/////////////////////////////////////////////////////////////////////////////

    // Preview the next state for the current switch position.
    // The input is committed only when load_pulse is asserted.
    always @* begin
        case(state)
            S0: begin
                if (serial_in)    next_state = S1;
                else        next_state = S0;
            end
            S1: begin
                if (serial_in)    next_state = S1;
                else        next_state = S2;
            end
            S2: begin
                if (serial_in) begin
                    next_state = S3;
                    next_out = 1'b1;
                end
                else        next_state = S0;
            end
            S3: begin
                if (serial_in)    next_state = S1;
                else        next_state = S2;
            end
            
            default: next_state = S0;
            
        endcase
    end

    // Commit one input bit on each button press.
    always @(posedge clk) begin
        if (reset) begin
            state  <= S0;
            unlock <= 1'b0;
        end else begin
            //unlock <= 1'b0; // uncomment to make unlock a one-cycle pulse

            if (load_pulse) begin
                state  <= next_state;
                unlock <= (next_state == S3);
            end
        end
    end
    
/////////////////////////////////////////////////////////////////////////////

    // Expose current and next state as outputs to help you debug
    assign state_out      = state;
    assign next_state_out = next_state;

/////////////////////////////////////////////////////////////////////////////

endmodule
