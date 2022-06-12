`timescale 1ns / 1ns

module FSM_E_tb;

    reg clk;
	reg X;

    wire Y;

	FSM_E  DUT ( .clk(clk), .X(X), .Y(Y) );

    initial begin
        clk=0;
           forever #5 clk = ~clk;  
      end 

	initial begin
        $monitor ("X=%b Y=%b", X, Y);
     
        X = 1; 
        #20
        X = 1; 
        #20
        X = 0; 
        #20
        X = 1; 
        #20
        

		$finish;
	end


       

endmodule