module ejercicio_22(
    
    input A, B, C,
    output X, Y
);

    assign X = (!A & !B) + (!A & B & !C);  //!A & (!B + !C);   

    assign Y = A + (!A & B & C);     //A + (B & C);   
endmodule