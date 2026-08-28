`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2026 07:22:40 PM
// Design Name: 
// Module Name: tbSwToLed
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


module tbSwToLed;

    reg [7:0] sw;
    wire [7:0] led;

swToLed uut(
    .sw (sw), 
    .led (led));

initial begin

sw = 8'b00000000;

// Testing LED0
sw[0] = 1; #10;
sw[0] = 0; #10;
// Testing LED1
sw[1] = 1; sw[2] = 0; #10;
sw[1] = 0; sw[2] = 0; #10;
// Testing LED2
sw[2] = 1; sw[3] = 1; #10;
sw[2] = 0; sw[3] = 0; #10;
// Testing LED3
sw[2] = 1; sw[3] = 1; #10;
sw[2] = 0; sw[3] = 0; #10;
// Testing LED4, LED5, LED6, LED7
sw = 8'b11110000; #10;
sw[7:4] = 8'b00000000; #10;

$finish(2);
end
    
    
endmodule
