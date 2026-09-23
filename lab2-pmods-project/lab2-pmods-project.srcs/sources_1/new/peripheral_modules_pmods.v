`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2026 01:32:07 PM
// Design Name: 
// Module Name: peripheral_modules_pmods
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


module peripheral_modules_pmods(
    input [11:0] keypad,
    output [12:0] seven_seg
    );
    
    // Get a one digit input (0-9, A-F) from the Keypad pmod and 
    // display it on the right digit of the Pmod Seven
    // Segment Display (SSD)
    
    // reset = clear
    // 0-9
    // essentially if this button is pressed, the output should be this sequence of LEDs
    
    // 0 - A B C D E F
    // 1 - B C
    // 2 - A B G E D
    // 3 - A B G C D
    // 4 - F G B C
    // 5 - A F B C D 
    // 6 - A F G E C D
    // 7 - A B C
    // 8 - A B C D E F G
    // 9 = A B C F G
    
    // A-F
    
    // A
    // B
    // C
    // D
    // E
    // F
    
endmodule