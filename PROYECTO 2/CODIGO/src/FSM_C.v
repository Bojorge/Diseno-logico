module FSM_C (CLK, E, RST, Y);
    input CLK, E, RST;
    output reg Y;

    reg[1:0] State = 0;
    reg[1:0] NextState = 0;

    parameter s0=2'd0, s1=2'd1, s2=2'd2, s3=2'd3;

    // Registro de estado de memoria
    always @(posedge CLK)
        begin
            if(RST)
                State<=s0;
            else
                State<=NextState;
        end
    
    // Logica combinacional de estado siguiente
    always @*
        begin
            case(State)
                s0: begin // Estado s0
                    if(E) NextState <= s1;
                    else NextState <= s0;
                end
                s1: begin // Estado s1
                    if(E) NextState <= s2;
                    else NextState <= s0;
                end
                s2: begin // Estado s2
                    if(!E) NextState <= s3;
                    else NextState <= s0;
                end
                s3: begin // Estado s3
                    if(E) NextState <= s0;
                    else NextState <= s0;
                end
                default: begin
                    NextState <= s0;
                end
            endcase
        end

    // Logica combinacional de salida
    always @*
        begin
            case(State)
                s0: begin // Estado s0
                    Y <= 1'b0;
                end
                s1: begin // Estado s1
                    Y <= 1'b0;
                end
                s2: begin // Estado s2
                    Y <= 1'b0;
                end
                s3: begin // Estado s3
                    if(E) Y <= 1'b1;
                    else Y <= 1'b0;
                end
                default begin
                    Y <= 1'bx;
                end
            endcase
        end
endmodule