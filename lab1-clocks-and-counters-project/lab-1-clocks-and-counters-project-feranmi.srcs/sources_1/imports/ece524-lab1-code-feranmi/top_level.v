module top_level_counter_mux (
    input wire clk_50MHz, // 50MHz system clock
    input wire rst,     // Active-low reset
  	input wire pause,     // Pause signal
  	input wire direction,
  	input wire [2:0] sel ,  // connected to sw0 - sw7
    output reg [7:0] mux_out // 8-bit output
);

    // Internal 1 Hz clock wire
    wire clk_1Hz;

    // Output wires for all 8 counters
    wire [7:0]  out_bit;
    wire [7:0]  out_even;
    wire [7:0]  out_fib;
    wire [7:0]  out_gray;
    wire [7:0]  out_johnson;
    wire [7:0]  out_odd;
    wire [7:0]  out_ring;
    wire [7:0]  out_bcd;
    
    // connected to sw0 - sw7

    

    
    // Instantiate Clock Divider (50MHz to 1Hz)
    clock_divider clk_div (
        .clk_in(clk_50MHz),
        .clk_out(clk_1Hz)
    );

    // Instantiate Bit Counter
    // bit_counter uses active-high reset, so rst_n is inverted.
    bit_counter cnt_bit (
        .clock(clk_1Hz),
        .rst(rst), 
        .pause(pause),
        .direction(direction),
        .counter_out(out_bit)
    );

    // Instantiate Even Counter
    even_counter cnt_even (
        .clk(clk_1Hz),
        .rst(rst),
        .pause(pause),
        .direction(direction),
        .q(out_even)
    );

    // Instantiate Fibonacci Counter
    fibonacci_counter cnt_fib (
        .clk(clk_1Hz),
        .rst(rst),
        .pause(pause),
        .direction(direction),
        .q(out_fib)
    );

    // Instantiate Gray Counter
    gray_counter cnt_gray (
        .clk(clk_1Hz),
        .rst(rst),
        .pause(pause),
        .direction(direction),
        .gray_out(out_gray)
    );

    // Instantiate Johnson Counter
    johnson_counter cnt_johnson (
        .clk(clk_1Hz),
        .rst(rst),
        .pause(pause),
        .direction(direction),
        .q(out_johnson)
    );

    // Instantiate Odd Counter
    odd_counter cnt_odd (
        .clk(clk_1Hz),
        .rst(rst),
        .pause(pause),
        .direction(direction),
        .q(out_odd)
    );

    // Instantiate Ring Counter
    ring_counter cnt_ring (
        .clk(clk_1Hz),
        .rst(rst),
        .pause(pause),
        .direction(direction),
        .q(out_ring)
    );
  
  	// Instantiate BCD Counter
    BCD_Counter cnt_bcd(
      .clk(clk_1Hz),
      .rst(rst),
      .pause(pause),
      .direction(direction),
      .q(out_bcd)
    );

    // Multiplexer Logic
    always @(*) begin
        case (sel)
            3'b000: mux_out = out_bit;     
            3'b001: mux_out = out_even;    
            3'b010: mux_out = out_fib;
            3'b011: mux_out = out_gray;    
            3'b100: mux_out = out_johnson; 
            3'b101: mux_out = out_odd;     
            3'b110: mux_out = out_ring;     
            3'b111: mux_out = out_bcd;		
            default: mux_out = 8'd0;              // Default case
        endcase
    end

endmodule