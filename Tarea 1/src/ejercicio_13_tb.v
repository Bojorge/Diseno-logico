`timescale 1ns / 10ps

module ejercicio_13_tb();

    reg A;
    reg B;
    reg C;

    wire Y;

    ejercicio_13 DUT(A, B, C, Y); 

    
    initial begin
    
        $monitor("entradas: %b %b %b , salida: %b ", A, B, C, Y);
        
        //000
        A = 1'b0;
        B = 1'b0;
        C = 1'b0;
       

        #10
        //001
        A = 1'b0;
        B = 1'b0;
        C = 1'b1;
        

        #10
        //010
        A = 1'b0;
        B = 1'b1;
        C = 1'b0;
        

        #10
        //011
        A = 1'b0;
        B = 1'b1;
        C = 1'b1;
        

        #10
        //100
        A = 1'b1;
        B = 1'b0;
        C = 1'b0;
        

        #10
        //101
        A = 1'b1;
        B = 1'b0;
        C = 1'b1;
        

        #10
        //110
        A = 1'b1;
        B = 1'b1;
        C = 1'b0;
    

        #10
        //111
        A = 1'b1;
        B = 1'b1;
        C = 1'b1;
    

        $finish;

    end
endmodule
