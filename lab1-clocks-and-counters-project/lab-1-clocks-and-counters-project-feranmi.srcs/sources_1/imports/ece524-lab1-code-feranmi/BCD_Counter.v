module BCD_Counter (
    input  wire  clk,
    input  wire  rst,   
    input  wire  pause,
    input  wire direction,
    output reg  [7:0] q
);
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            q <= 8'd0;
            
        end else if (pause) begin
        
        end
        
        else if (q[3:0] == (direction ? 4'd9 : 4'd0)) begin
            q[7:4] <= direction ? q[7:4] + 1 : q[7:4] - 1;
            q[3:0] <= direction ? 4'd0 : 4'd9;
                
            if ((q[7:4]) == (direction ? 4'd9 : 4'd0)) begin
                q[7:4] <= direction ? 4'd0 : 4'd9;
            end
                
       end 
        
        else begin
                q <= direction ? q + 1'b1 : q - 1'b1;
        end
    end


endmodule

// tb
// module tb_bcd_counter();
//     reg clk;
//     reg rst_n;
//   	reg enable;
//   	wire [3:0] q;

//   BCD_Counter uut (.clk(clk), .rst_n(rst_n), .enable(enable), .q(q));

//     always #5 clk = ~clk;

//     initial begin
//         $monitor("Time=%0t | q=%b", $time, q); // Required for output
//         clk = 0;
//         rst_n = 0;
//       	enable = 0;
//         #15 enable = 1;
//         #15 rst_n = 1;
//         #100 $finish; // Required to stop and output
//     end
// endmodule
