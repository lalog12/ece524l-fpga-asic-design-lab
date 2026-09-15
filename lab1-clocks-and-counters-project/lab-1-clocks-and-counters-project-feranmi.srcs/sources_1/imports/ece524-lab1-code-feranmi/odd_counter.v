module odd_counter (
    input wire clk,
    input wire rst,    
    input wire pause,
    input wire direction,
    output reg [7:0] q
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // Initialize to 1. 
            // An odd counter MUST start at 1 to maintain the odd sequence.
            q <= 8'd1; 
        end else if (pause) begin

        end
        
        else begin 
            // Increment by 2 to jump from one odd number to the next
            q <= direction ? q + 2 : q - 2;
        end
    end

endmodule

// tb
// module tb_odd_counter();

//     parameter WIDTH = 4;

//     reg clk;
//     reg rst_n;
//     wire [WIDTH-1:0] q;

//     // Instantiate the Odd Counter
//     odd_counter #(.WIDTH(WIDTH)) uut (
//         .clk(clk),
//         .rst_n(rst_n),
//         .q(q)
//     );

//     // Clock generation: 10ns period
//     always #5 clk = ~clk;

//     initial begin
//         // Initialize
//         clk = 0;
//         rst_n = 0;

//         // Apply reset
//         #15 rst_n = 1;

//         // Monitor output
//         $monitor("Time=%0t | Reset=%b | Count (Odd)=%d (Binary: %b)", $time, rst_n, q, q);

//         // Run for enough cycles to see the full 4-bit range wrap around
//         // (1, 3, 5, 7, 9, 11, 13, 15 -> 1)
//         #100;

//         $display("Simulation Finished");
//         $finish;
//     end

// endmodule