`timescale 1ns / 1ps

// Single-digit active-high seven-segment decoder 
module DisplayController(
    input clk,
    input [3:0] DispVal,
    input KeyValid,
    output reg [6:0] segOut = 7'd0,
    output reg sevenSegSelect = 1'b0
    );
        
    
    
    reg [20:0] sclk = 21'd0; // max value of 1,048,576
    
    reg [6:0] leftDigit = 7'd0;
    reg [6:0] rightDigit = 7'd0;
    
    reg DigitPresent = 1'b0;
    reg twoDigits = 1'b0;
    reg [6:0] DigitSelected = 7'd0;
     
    always @(*)
        begin
            case (DispVal)
                4'h0: DigitSelected = 7'b0111111;
                4'h1: DigitSelected = 7'b0000110;
                4'h2: DigitSelected = 7'b1011011;
                4'h3: DigitSelected = 7'b1001111;
                4'h4: DigitSelected = 7'b1100110;
                4'h5: DigitSelected = 7'b1101101;
                4'h6: DigitSelected = 7'b1111101;
                4'h7: DigitSelected = 7'b0000111;
                4'h8: DigitSelected = 7'b1111111;
                4'h9: DigitSelected = 7'b1100111;
                4'hA: DigitSelected = 7'b1110111;
                4'hB: DigitSelected = 7'b1111100;
                4'hC: DigitSelected = 7'b0111001;
                4'hD: DigitSelected = 7'b1011110;
                4'hE: DigitSelected = 7'b1111001;
                4'hF: DigitSelected = 7'b1110001;
                default: DigitSelected = 7'b0000000;
            endcase
        end    
        
        
        
    
    always @(posedge clk) begin
          // inserting new digit onto seven seg
          if (KeyValid == 1'b1) begin
                // one digit present
              if (DigitPresent) begin
                  // move old digit over 1 spot to the left.
                  leftDigit <= rightDigit;
                  rightDigit <= DigitSelected;
                  // two digits displayed on seven seg
                  twoDigits <= 1'b1;
              end
              // one digit
              else begin
                  rightDigit <= DigitSelected;
                  DigitPresent <= 1'b1;
              end
          end
    
          // switch seven sig digit that lights up
          if (sclk == 21'd1_249_999 ) begin
          
              sclk <= 21'd0;
         
              if (twoDigits) begin
                  // displaying left seven seg value for 10ms as directed on seven seg reference manual.
                  if (sevenSegSelect == 1'b0) begin
                      segOut <= leftDigit;
                      sevenSegSelect <= 1'b1;             
                  end
                  // displaying right seven seg value for 10ms as directed on seven seg reference manual.
                  else begin
                      segOut <= rightDigit;
                      sevenSegSelect <= 1'b0;                      
                  end
              end
              
              else begin
                  segOut <= rightDigit;
              end
          end
        
        else begin
            sclk <= sclk + 1;
        end
    end

   
endmodule