module RCA_aproximado_2_compuertas_C(
    input [7:0] A,
    input [7:0] B,
    input Cin,
    
    output [8:0] S,
    output Cout 
);


wire[7:0] C;

assign S[0] = A[0] | B[0];

assign S[1] = A[1] | B[1];

assign S[2] = A[2] | B[2];
assign C[2] = A[2] & B[2];

FA_exacto fa3 (A[3], B[3], C[2], S[3], C[3]);
FA_exacto fa4 (A[4], B[4], C[3], S[4], C[4]);
FA_exacto fa5 (A[5], B[5], C[4], S[5], C[5]);
FA_exacto fa6 (A[6], B[6], C[5], S[6], C[6]);
FA_exacto fa7 (A[7], B[7], C[6], S[7], C[7]);

assign S[8] = C[7];
assign Cout = 0;


endmodule