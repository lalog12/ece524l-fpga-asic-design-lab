`timescale 1ns / 1ps

// Single-digit active-low seven-segment decoder 
module DisplayController(
    input [3:0] DispVal,
    output reg [6:0] segOut
    );
    
    always @(*)
        begin
            case (DispVal)
                4'h0: segOut = 7'b0111111;
                4'h1: segOut = 7'b0000110;
                4'h2: segOut = 7'b1011011;
                4'h3: segOut = 7'b1001111;
                4'h4: segOut = 7'b1100110;
                4'h5: segOut = 7'b1101101;
                4'h6: segOut = 7'b1111101;
                4'h7: segOut = 7'b0000111;
                4'h8: segOut = 7'b1111111;
                4'h9: segOut = 7'b1100111;
                4'hA: segOut = 7'b1110111;
                4'hB: segOut = 7'b1111100;
                4'hC: segOut = 7'b0111001;
                4'hD: segOut = 7'b1011110;
                4'hE: segOut = 7'b1111001;
                4'hF: segOut = 7'b1110001;
                default: segOut = 7'b1111111;
            endcase
        end    
   
endmodule