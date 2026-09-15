module johnson_counter (
    input wire clk,
    input wire rst,    // Active low asynchronous reset
    input wire pause,
    input wire direction,
    output reg [7:0] q
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            q <= 8'd0;
        end else if (pause) begin

        end
        else begin
            // Shift right and feed back the inverted last bit to the first bit
            // q[0] -> q[1] -> q[2] -> q[3]
            // ~q[3] -> q[0]
            q <= direction ? {q[6:0], ~q[7]} : {~q[0], q[7:1]};
        end
    end

endmodule

// tb
// module tb_johnson_counter();
//     reg clk;
//     reg rst_n;
//     wire [3:0] q;

//     johnson_counter uut (.clk(clk), .rst_n(rst_n), .q(q));

//     always #5 clk = ~clk;

//     initial begin
//         $monitor("Time=%0t | q=%b", $time, q); // Required for output
//         clk = 0;
//         rst_n = 0;
//         #15 rst_n = 1;
//         #100 $finish; // Required to stop and output
//     end
// endmodule

