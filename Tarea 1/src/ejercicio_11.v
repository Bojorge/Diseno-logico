module ejercicio_11(
    
    input A, B, C,
    output Y
);
    assign Y = (A & B & C) + (A & (!B)) & !((!A) & (!B));
endmodule