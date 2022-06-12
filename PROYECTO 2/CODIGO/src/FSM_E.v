module FSM_E(clk, X, Y );
input clk;
input X;
output reg Y;

    wire inJ1 , inK1, inJ0, inK0, Q1, Q0;

    FFJK ff1 (inJ1, inK1 ,clk ,Q1);
    FFJK ff0 (inJ0,inK0 ,clk ,Q0);

    //assign Q1 = ff1;
    //assign Q0 = ff0;

    assign inJ1 = X & Q0;
    assign inK1 = X | Q0;

    assign inJ0 = X ^ Q1;
    assign inK0 = 1'b1;
    
    

    
    always@(posedge clk) begin   
    

        Y = (X & Q1 & Q0);

    end
     
endmodule