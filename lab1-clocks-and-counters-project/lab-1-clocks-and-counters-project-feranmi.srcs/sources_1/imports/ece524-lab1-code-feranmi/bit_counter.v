module bit_counter(
  input wire clock,
  input wire rst,
  input wire pause,
  input wire direction,
  output reg [7:0] counter_out
);

always @ (posedge clock or posedge rst) begin
    if (rst) begin
        counter_out <= 8'd0;
    end else if (pause) begin
        
    end
    
    else begin 
        counter_out <= direction ? counter_out + 1 : counter_out - 1;
    end
end 
endmodule