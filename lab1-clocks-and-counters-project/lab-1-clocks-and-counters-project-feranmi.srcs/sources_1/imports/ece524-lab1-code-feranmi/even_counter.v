module even_counter (
    input wire clk,
    input wire rst,    // Active low asynchronous reset
    input wire pause,
    input wire direction,
    output reg [7:0] q
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // Initialize to 0
            q <= 8'd0;
        end else if (pause) begin
            
        end
        
        else begin
            // Increment by 2 to ensure the number stays even
            q <= direction ? q + 2 : q - 2;
        end
    end

endmodule

// tb
// module tb_even_counter();

//     // Parameters
//     parameter WIDTH = 4;

//     // Signals
//     reg clk;
//     reg rst_n;
//     wire [WIDTH-1:0] q;

//     // Instantiate the Unit Under Test (UUT)
//     even_counter #(.WIDTH(WIDTH)) uut (
//         .clk(clk),
//         .rst_n(rst_n),
//         .q(q)
//     );

//     // Clock Generation: 10ns period (100MHz)
//     always #5 clk = ~clk;

//     initial begin
//         // Initialize signals
//         clk = 0;
//         rst_n = 0;

//         // Apply reset for a few cycles
//         #15 rst_n = 1;

//         // Monitor the value of q whenever it changes
//         $monitor("Time=%0t | Reset=%b | Count (Even)=%d (Binary: %b)", $time, rst_n, q, q);

//         // Run for enough cycles to see the counter wrap around
//         // For 4 bits, it takes 8 cycles to wrap (0, 2, 4, 6, 8, 10, 12, 14 -> 0)
//         #100;

//         $display("Simulation Finished");
//         $finish;
//     end

// endmodule