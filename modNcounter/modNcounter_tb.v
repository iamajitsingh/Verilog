module mod7counter_tb;  
  parameter N = 7;  
 
  
  reg clk;  
  reg rst;  
  wire [7:0] out;  
  
  mod7counter  u0  (    .clk(clk),  
                    .rst(rst),  
                    .out(out));  
  
  initial begin
  clk = 0;
  forever #5 clk =~clk;
  end
  initial begin
  rst = 0;
  #20;
  rst = 1;
  end
endmodule  
