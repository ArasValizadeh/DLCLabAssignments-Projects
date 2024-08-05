include "ringCounter.v";
module ringCounter_tb;   
    
  reg CLK;  
  reg CLR;  
  wire [3:0] out;  
    
  rinCounter  rinCounter(CLK, CLR, out);  
    
  always #10 CLK = ~CLK;  
    
  initial begin  
    CLK <= 0;
    CLR <= 1;  
    #500   
    CLR <= 0;
  end  
endmodule  