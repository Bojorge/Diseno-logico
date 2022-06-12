`timescale 1ns / 1ns

module FFJK_tb;
    reg j;  
    reg k;  
    reg clk;  
    wire q;
  
   


   FFJK    DUT ( .J(j), .K(k),  .clk(clk), .Q(q));  

   initial begin
    clk=0;
       forever #5 clk = ~clk;  
  end 
  
    initial begin  
        j <= 0;  
        k <= 0;  
    
        #20 j <= 0;  
            k <= 1;
          
        #20 j <= 1;  
            k <= 0;  
        #20 j <= 1;  
            k <= 1;  
        #20 $finish;  
    end  
  
   initial  
      $monitor ("j=%0d k=%0d q=%0d", j, k, q);  
endmodule