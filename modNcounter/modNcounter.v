`timescale 1ns / 1ps


module mod7counter  
  # (parameter N = 7); // You can choose the N of your liking  
  
  ( input   clk,  
    input   rst,  
    output  reg[7:0] out);  
  
  always @ (posedge clk)
   begin  
    if (!rst) // rst --> 0 then out --> 0
    begin  
      out <= 0;  
    end 
    else 
    begin  
      if (out == N-1)  
        out <= 0;   // when out ---> 6 then out ---> 0 otherwise GO UP
      else  
        out <= out + 1;  
    end  
  end  
endmodule  
