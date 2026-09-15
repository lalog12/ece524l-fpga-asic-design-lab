module gray_counter (
    input wire clk,
    input wire rst,
    input wire pause,
    input wire direction,
    output wire [7:0] gray_out
);

    reg [7:0] binary_count;

    // 1. Maintain a standard binary counter
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            binary_count <= 0;
        end else if (pause) begin
            
        end
        else begin
            binary_count <= direction ? binary_count + 1 : binary_count - 1;
        end
    end

    // 2. Convert Binary to Gray Code
    // Formula: Gray = Binary ^ (Binary >> 1)
    assign gray_out = binary_count ^ (binary_count >> 1);

endmodule

// tb

// module tb_gray_counter();

//     reg clk;
//     reg rst_n;
//     wire [3:0] gray_out;

//     // Instantiate 4-bit Gray Counter
//     gray_counter #(.WIDTH(4)) uut (
//         .clk(clk),
//         .rst_n(rst_n),
//         .gray_out(gray_out)
//     );

//     always #5 clk = ~clk;

//     initial begin
//         $monitor("Time=%0t | Gray Output = %b", $time, gray_out);
        
//         clk = 0;
//         rst_n = 0;
//         #15 rst_n = 1;
        
//         // Run for 16 cycles to see the full 4-bit loop
//         #160;
        
//         $finish;
//     end

// endmodule