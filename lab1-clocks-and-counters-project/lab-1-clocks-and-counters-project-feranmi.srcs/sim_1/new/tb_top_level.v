`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2026 02:56:00 PM
// Design Name: 
// Module Name: tb_top_level
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_top_level;
    reg tb_direction;
    reg tb_rst;
    reg tb_pause;
    reg [2:0] tb_sel;
    wire [7:0] tb_mux_out;
    
   
    // simulated clock
    reg tb_clk = 1'b0;
    always #5 tb_clk = ~tb_clk;
     
    top_level_counter_mux UUT(
        .clk_50MHz(tb_clk),
        .rst(tb_rst),
        .pause(tb_pause),
        .direction(tb_direction),
        .sel(tb_sel),
        .mux_out(tb_mux_out)
    );
    
    initial begin
    
        tb_rst = 1'b1;
        #5;
        
        tb_rst = 1'b0;
        tb_pause = 1'b0;
        
        tb_direction = 1'b1;

        
        
        // bit counter
        tb_sel = 3'b000;
        
        @(negedge tb_clk);
        tb_rst = 1'b0;
        
        #125;
        tb_direction = 1'b0;
        #75; 
        tb_pause = 1'b1;
        #20; 
        tb_pause = 1'b0;
        
        tb_direction = 1'b1;
        tb_rst = 1'b1;
        
        
        // even counter
        
        tb_sel = 3'b001;
        
        @(negedge tb_clk); 
        tb_rst = 1'b1;
        @(negedge tb_clk);
        tb_rst = 1'b0;
        
        #125;
        tb_direction = 1'b0;
        #75; 
        tb_pause = 1'b1;
        #20; 
        tb_pause = 1'b0;
        
        tb_direction = 1'b1;
        tb_rst = 1'b1;
        
        // fibbonacci counter
        tb_sel = 3'b010;
        @(negedge tb_clk);
        tb_rst = 1'b0;
        #125;
        tb_direction = 1'b0;
        #75; 
        tb_pause = 1'b1;
        #20; 
        tb_pause = 1'b0;
        
        tb_direction = 1'b1;
        tb_rst = 1'b1;
        
        
        
        // gray counter
        tb_sel = 3'b011;
        @(negedge tb_clk);
        tb_rst = 1'b0;
        #125;
        tb_direction = 1'b0;
        #75; 
        tb_pause = 1'b1;
        #20; 
        tb_pause = 1'b0;
        
        tb_direction = 1'b1;
        tb_rst = 1'b1;
        
        
        
        
        // johnson counter
        tb_sel = 3'b100;
        @(negedge tb_clk);
        tb_rst = 1'b0;
        #125;
        tb_direction = 1'b0;
        #75; 
        tb_pause = 1'b1;
        #20; 
        tb_pause = 1'b0;
        tb_direction = 1'b1;
        tb_rst = 1'b1;
        
        // odd counter
        tb_sel = 3'b101;
        @(negedge tb_clk);
        tb_rst = 1'b0;
        #125;
        tb_direction = 1'b0;
        #75; 
        tb_pause = 1'b1;
        #20; 
        tb_pause = 1'b0;
        tb_direction = 1'b1;
        tb_rst = 1'b1;
        
        // ring counter
        tb_sel = 3'b110;
        @(negedge tb_clk);
        tb_rst = 1'b0;
        #125;
        tb_direction = 1'b0;
        #75; 
        tb_pause = 1'b1;
        #20; 
        tb_pause = 1'b0;
        tb_direction = 1'b1;
        tb_rst = 1'b1;
        
        
        // bcd counter
        tb_sel = 3'b111;
        @(negedge tb_clk);
        tb_rst = 1'b0;
        #125;
        tb_direction = 1'b0;
        #75; 
        tb_pause = 1'b1;
        #20; 
        tb_pause = 1'b0;
        tb_direction = 1'b1;
        tb_rst = 1'b1;
    end   
    
    
endmodule
