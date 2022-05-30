module RCA_exacto9b(
    input [8:0] A,
    input [8:0] B,
    
    output [9:0] S
);


wire[8:0] Cout;

FA_exacto fa0 (A[0], B[0], 1'b0, S[0], Cout[0]);
FA_exacto fa1 (A[1], B[1], Cout[0], S[1], Cout[1]);
FA_exacto fa2 (A[2], B[2], Cout[1], S[2], Cout[2]);
FA_exacto fa3 (A[3], B[3], Cout[2], S[3], Cout[3]);
FA_exacto fa4 (A[4], B[4], Cout[3], S[4], Cout[4]);
FA_exacto fa5 (A[5], B[5], Cout[4], S[5], Cout[5]);
FA_exacto fa6 (A[6], B[6], Cout[5], S[6], Cout[6]);
FA_exacto fa7 (A[7], B[7], Cout[6], S[7], Cout[7]);
FA_exacto fa8 (A[8], B[8], Cout[7], S[8], Cout[8]);

assign S[9] = Cout[8];

endmodule