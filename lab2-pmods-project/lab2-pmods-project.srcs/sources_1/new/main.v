`timescale 1ns / 1ps

module main(
    input clk,
    
    // switch on: left seven seg, switch off: right seven seg
    input SwitchSelect,
    
    // keypad
    // JC[3:0]: cols ... JC[0] = col 0, JC[1] = col 1, etc.
    // JC[7:4]: rows ... JC[4] = row 0, JC[5] = row 1, etc.
    inout [7:0] JC,   

    // connected to seven segment display Segment A-G and Digit Selection pin
    output [7:0] display_seg
 );

    wire [3:0] Decode;
    wire [3:0] rows;
    

    Decoder C0 (
        .clk(clk),
        .Row(rows[3:0]),
        .Col(JC[3:0]),
        .DecodeOut(Decode)
    );


    DisplayController display_controller (
        .DispVal(Decode), // input ... value to display on seven seg
        .segOut(display_seg[6:0]) // output
    );
// physical digit select pin 
assign display_seg[7] = SwitchSelect;

// detects if a row is pressed
assign rows[0] = (~JC[4] && JC[5] && JC[6] && JC[7]) ? 1'b0 : 1'b1;
assign rows[1] = (~JC[5] && JC[4] && JC[6] && JC[7]) ? 1'b0 : 1'b1;
assign rows[2] = (~JC[6] && JC[4] && JC[5] && JC[7]) ? 1'b0 : 1'b1;
assign rows[3] = (~JC[7] && JC[4] && JC[5] && JC[6]) ? 1'b0 : 1'b1;

endmodule