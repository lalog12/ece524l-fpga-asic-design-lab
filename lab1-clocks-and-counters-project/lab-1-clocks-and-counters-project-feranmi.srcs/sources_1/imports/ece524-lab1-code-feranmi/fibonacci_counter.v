module fibonacci_counter (
    input wire clk,
    input wire rst,
    input wire pause,
    input wire direction,  // 1 = forward, 0 = backward
    output reg  [7:0] q
);

    reg [7:0] next_fibo;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            if (direction) begin
                // Start at the bottom
                q <= 8'd0;
                next_fibo <= 8'd1;
            end else begin
                // Start at the top
                q <= 8'd233;
                next_fibo <= 8'd121;
            end
        end else if (!pause) begin
            if (direction) begin
                // Count forward
                if (q == 8'd233) begin
                    q <= 8'd0;
                    next_fibo <= 8'd1;
                end else begin
                    q <= next_fibo;
                    next_fibo <= q + next_fibo;
                end
            end else begin
                // Count backward
                if (q == 8'd0) begin
                    q <= 8'd233;
                    next_fibo <= 8'd121;
                end else begin
                    q <= next_fibo - q;
                    next_fibo <= q;
                end
            end
        end
    end

endmodule

// tb
// module tb_fibonacci_counter();

//     reg clk;
//     reg rst_n;
//     wire [15:0] q;

//     // Instantiate UUT
//     fibonacci_counter uut (
//         .clk(clk),
//         .rst_n(rst_n),
//         .q(q)
//     );

//     // Clock generation
//     always #5 clk = ~clk;

//     initial begin
//         // Setup monitoring
//         $monitor("Time=%0t | Fibonacci Value q = %d", $time, q);
        
//         clk = 0;
//         rst_n = 0;

//         // Reset the system
//         #15 rst_n = 1;

//         // Let it run for 20 cycles to see the sequence grow
//         #200;

//         $display("Simulation Finished");
//         $finish;
//     end

// endmodule