`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2026 06:53:36 PM
// Design Name: 
// Module Name: swToLed
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


module swToLed(
    input [7:0] sw,
    output [7:0] led
    );
assign led[0] = ~sw[0];
assign led[1] = (sw[1] & ~sw[2]);
assign led[2] = led[1] | led[3];
assign led[3] = sw[2] & sw[3];
assign led[7:4] = sw[7:4];

endmodule
