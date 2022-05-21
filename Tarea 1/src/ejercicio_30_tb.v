`timescale 1ns / 10ps

module ejercicio_30_tb();

    reg A;
    reg B;
    reg C;
    reg D;

    wire Y;

    ejercicio_30 DUT(A, B, C, D, Y); 

    
    initial begin
    
        $monitor("entradas: %b %b %b %b , salida: %b ", A, B, C, D, Y);
        
        //0000  0
        A = 1'b0;
        B = 1'b0;
        C = 1'b0;
        D = 1'b0;
       

        #10
        //0001  1
        A = 1'b0;
        B = 1'b0;
        C = 1'b0;
        D = 1'b1;
        

        #10
        //0010  2
        A = 1'b0;
        B = 1'b0;
        C = 1'b1;
        D = 1'b0;
        

        #10
        //0011  3
        A = 1'b0;
        B = 1'b0;
        C = 1'b1;
        D = 1'b1;
        

        #10
        //0100  4
        A = 1'b0;
        B = 1'b1;
        C = 1'b0;
        D = 1'b0;
        

        #10
        //0101  5
        A = 1'b0;
        B = 1'b1;
        C = 1'b0;
        D = 1'b1;
        

        #10
        //0110  6
        A = 1'b0;
        B = 1'b1;
        C = 1'b1;
        D = 1'b0;
    

        #10
        //0111  7
        A = 1'b0;
        B = 1'b1;
        C = 1'b1;
        D = 1'b1;
    
        #10
        //1000  8
        A = 1'b1;
        B = 1'b0;
        C = 1'b0;
        D = 1'b0;
       

        #10
        //1001  9
        A = 1'b1;
        B = 1'b0;
        C = 1'b0;
        D = 1'b1;
        

        #10
        //1010  10
        A = 1'b1;
        B = 1'b0;
        C = 1'b1;
        D = 1'b0;
        

        #10
        //1011  11
        A = 1'b1;
        B = 1'b0;
        C = 1'b1;
        D = 1'b1;
        

        #10
        //1100  12
        A = 1'b1;
        B = 1'b1;
        C = 1'b0;
        D = 1'b0;
        

        #10
        //1101  13
        A = 1'b1;
        B = 1'b1;
        C = 1'b0;
        D = 1'b1;
        

        #10
        //1110  14
        A = 1'b1;
        B = 1'b1;
        C = 1'b1;
        D = 1'b0;
    

        #10
        //1111  15
        A = 1'b1;
        B = 1'b1;
        C = 1'b1;
        D = 1'b1;

        $finish;

    end
endmodule
