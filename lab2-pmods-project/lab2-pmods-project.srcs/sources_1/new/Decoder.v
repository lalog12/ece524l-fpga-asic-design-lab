`timescale 1ns / 1ps

module Decoder(
    clk,
    Row,
    Col,
    DecodeOut,
    KeyValid
    );

// ==============================================================================================
// 											Port Declarations
// ==============================================================================================
    input clk;						// 125MHz onboard clock
    input [3:0] Row;				// Rows on KYPD
    output [3:0] Col;			// Columns on KYPD
    output [3:0] DecodeOut;	// Output data
    output KeyValid;        // New keypad key pressed

// ==============================================================================================
// 							  		Parameters, Regsiters, and Wires
// ==============================================================================================
	
	// Output wires and registers
	reg [3:0] Col;
	reg [3:0] DecodeOut;
    reg KeyValid = 1'b0;

   
	// Count register
	reg [19:0] sclk = 20'd0;
    
    // A 1'b1 value indicates a button press was detected during keyboard scan
    reg KeyActive = 1'b0;
    
    // Detected Keypad digit 
    reg [3:0] DetectedDigit;
    
    // 1'b1 indicates Keypad digit has not been released
    reg KeyHeld = 1'b0;

// ==============================================================================================
// 												Implementation
// ==============================================================================================

	always @(posedge clk) begin
	       KeyValid <= 0;

            if (sclk == 20'd0) begin
                KeyActive <= 1'b0;
                sclk <= sclk + 1'b1;
            end
            
			// 0.8ms
			if (sclk == 20'b00011000011010100000) begin
				//C1
				Col <= 4'b0111;
				sclk <= sclk + 1'b1;
			end
			
			// check row pins ... 0.8ms + 64ns
			else if(sclk == 20'b00011000011010101000) begin
				//R1
				if (Row == 4'b0111) begin
					DetectedDigit <= 4'b0001;		//1
					KeyActive <= 1;
				end
				//R2
				else if(Row == 4'b1011) begin
					DetectedDigit <= 4'b0100; 		//4
					KeyActive <= 1;
				end
				//R3
				else if(Row == 4'b1101) begin
					DetectedDigit <= 4'b0111; 		//7
					KeyActive <= 1;
				end
				//R4
				else if(Row == 4'b1110) begin
					DetectedDigit <= 4'b0000; 		//0
					KeyActive <= 1;
				end
				sclk <= sclk + 1'b1;
			end

			// 1.6ms
			else if(sclk == 20'b00110000110101000000) begin
				//C2
				Col<= 4'b1011;
				sclk <= sclk + 1'b1;
			end
			
			// check row pins     1.6ms + 64ns
			else if(sclk == 20'b00110000110101001000) begin
				//R1
				if (Row == 4'b0111) begin
					DetectedDigit <= 4'b0010; 		//2
					KeyActive <= 1;
				end
				//R2
				else if(Row == 4'b1011) begin
					DetectedDigit <= 4'b0101; 		//5
					KeyActive <= 1;
				end
				//R3
				else if(Row == 4'b1101) begin
					DetectedDigit <= 4'b1000; 		//8
					KeyActive <= 1;
				end
				//R4
				else if(Row == 4'b1110) begin
					DetectedDigit <= 4'b1111; 		//F
					KeyActive <= 1;
				end
				sclk <= sclk + 1'b1;
			end

			// 2.4ms  
			else if(sclk == 20'b01001001001111100000) begin
				//C3
				Col<= 4'b1101;
				sclk <= sclk + 1'b1;
			end
			
			// check row pins ... 2.4ms + 64ns
			else if(sclk == 20'b01001001001111101000) begin
				//R1
				if(Row == 4'b0111) begin
					DetectedDigit <= 4'b0011; 		//3	
					KeyActive <= 1;
				end
				//R2
				else if(Row == 4'b1011) begin
					DetectedDigit <= 4'b0110; 		//6
					KeyActive <= 1;
				end
				//R3
				else if(Row == 4'b1101) begin
					DetectedDigit <= 4'b1001; 		//9
					KeyActive <= 1;
				end
				//R4
				else if(Row == 4'b1110) begin
					DetectedDigit <= 4'b1110; 		//E
					KeyActive <= 1;
				end

				sclk <= sclk + 1'b1;
			end

			// 3.2ms +64ns 
			else if(sclk == 20'b01100001101010000000) begin
				//C4
				Col<= 4'b1110;
				sclk <= sclk + 1'b1;
			end

			// Check row pins ... 4ms + 64ns
			else if(sclk == 20'b01100001101010001000) begin
				//R1
				if(Row == 4'b0111) begin
					DetectedDigit <= 4'b1010; //A
					KeyActive <= 1;
				end
				//R2
				else if(Row == 4'b1011) begin
					DetectedDigit <= 4'b1011; //B
					KeyActive <= 1;
				end
				//R3
				else if(Row == 4'b1101) begin
					DetectedDigit <= 4'b1100; //C
					KeyActive <= 1;
				end
				//R4
				else if(Row == 4'b1110) begin
					DetectedDigit <= 4'b1101; //D
					KeyActive <= 1;
				end
                
                sclk <= sclk + 1'b1;

			end
			// 3.2ms + 72ns
			else if (sclk == 20'b01100001101010001001) begin
				DecodeOut <= DetectedDigit; 
				
				// The button that was pressed is no longer being pressed.
				if (!KeyActive && KeyHeld) begin
				    KeyHeld <= 1'b0;
				end 
				
				// detected button press and key has not been registered.
				if (KeyActive && !KeyHeld) begin
				    KeyValid <= KeyActive;
				    KeyHeld <= 1'b1;
				end
				
				sclk <= 20'b00000000000000000000;
			end
			
			// Otherwise increment
			else begin
				sclk <= sclk + 1'b1;
			end
			
	end

endmodule