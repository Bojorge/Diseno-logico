module ejercicio_13(
    
    input A, B, C,
    output Y
);
    assign Y = ((!A) & (!B) & (!C)) + ((!A) & (!B) & C)+((!A) & B & (!C)) + ((!A) & B & C) + (A & (!B) & (!C)) + (A & B & (!C));
endmodule