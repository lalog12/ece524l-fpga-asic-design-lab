module clock_divider (
    input wire clk_in,    // 50MHz input clock

    output reg clk_out = 1'b0    // 1Hz output clock
);

    // counter that can hold the value 100,000,000.
    // 2^24 = 16,777,216 (Too small)
    // 2^25 = 33,554,432 (Too small)
    reg [25:0] counter = 26'd0;

    always @(posedge clk_in) begin

//        if (counter == 49999999) begin // 25 million cycles (0 to 24,999,999)
//            counter <= 0;
        clk_out <= ~clk_out;      // Toggle the output clock
//        end
        
//        else begin
//            counter <= counter + 1;
//        end
       
    end

endmodule

// tb
// module tb_clock_divider();

//     reg clk_in;
//     reg rst_n;
//   	reg enable;
//     wire clk_out;

//     // To make simulation fast, we override the counter threshold 
//     // by modifying the code or just simulating the logic.
//     // For this TB, we use the actual module but be aware it may be slow.
//     clock_divider uut (
//         .clk_in(clk_in),
//         .rst_n(rst_n),
//         .enable(enable),
//         .clk_out(clk_out)
//     );

//     // 50MHz Clock = 20ns period
//     always #10 clk_in = ~clk_in;

//     initial begin
//         clk_in = 0;
//         rst_n = 0;
//         #20 rst_n = 1;

//         // NOTE: Waiting for 25 million cycles in a simulator 
//         // would take a massive amount of real time.
//         // In a real testbench, you would change 24999999 to 24 for testing.
        
//         #1000000; // Simulate for a short burst
//         $finish;
//     end

//     initial begin
//         $monitor("Time=%0t | clk_out=%b", $time, clk_out);
//     end

// endmodule