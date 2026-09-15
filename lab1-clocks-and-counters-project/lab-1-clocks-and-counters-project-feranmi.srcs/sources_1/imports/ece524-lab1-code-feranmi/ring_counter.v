module ring_counter (
    input  wire clk,
    input  wire rst,
    input wire pause,
    input wire direction,
    output reg  [7:0] q
);
// ring counter - continuously circulates one bit set at logic high
// through the buffer
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            q <= direction ? 8'b00000001 : 8'b10000000;
        end else if (pause) begin

        end
        
        else begin 
            // Rotate the MSB into the LSB.
            q <= direction ? {q[6:0], q[7]} : {q[0], q[7:1]};
        end
    end

endmodule

// tb
// module tb_ring_counter();

//     reg clk;
//     reg rst_n;
//     wire [3:0] q;

//     // Instantiate 4-bit Ring Counter
//     ring_counter #(.WIDTH(4)) uut (
//         .clk(clk),
//         .rst_n(rst_n),
//         .q(q)
//     );

//     // Clock generation
//     always #5 clk = ~clk;

//     initial begin
//         $monitor("Time=%0t | Ring State q = %b", $time, q);
        
//         clk = 0;
//         rst_n = 0;

//         // Apply reset to load the seed value (0001)
//         #15 rst_n = 1;

//         // Run for 6 cycles to see the '1' rotate fully and start again
//         #60;

//         $display("Simulation Complete");
//         $finish;
//     end

// endmodule