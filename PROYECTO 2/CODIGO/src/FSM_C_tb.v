module FSM_C_tb;

    reg CLK; 
    reg E; 
    reg RST; 
    wire Y;


	FSM_C  DUT ( CLK, E, RST, Y );

    initial begin
        CLK=0;
           forever #20 CLK = !CLK;  
      end

	initial begin
        $monitor ("E=%0d Y=%0d RST=%0d", E, Y, RST);

        
        E <= 1; 
        #20
        RST <= 0;
        #20
        E <= 1; 
        #20
        RST <= 0;
        #20
        E <= 0; 
        #20
        RST <= 0;
        #20
        E <= 1; 
        #20
        RST <= 0;
        #20
        
		$finish;
	end

endmodule