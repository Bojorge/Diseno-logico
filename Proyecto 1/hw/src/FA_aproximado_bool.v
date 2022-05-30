module FA_aproximado_bool (
    input A, B, Cin,
    output S, Cout
);
    assign S = (A ^ B) | Cin;
    assign Cout = A & B;
endmodule