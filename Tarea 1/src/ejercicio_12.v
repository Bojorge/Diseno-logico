module ejercicio_12(
    
    input A, B, C,
    output Y
);
    assign Y = ((!A) & B & C) + (!(B & (!C))) + (B & C);
endmodule
