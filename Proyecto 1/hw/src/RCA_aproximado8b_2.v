module RCA_aproximado8b_2(
    input [7:0] A,
    input [7:0] B,
    
    output [8:0] S
);


wire[7:0] Cout;

assign S[0] = A[0] | B[0];

assign S[1] = A[1] | B[1];

assign S[2] = A[2] | B[2];
assign Cout[2] = A[2] & B[2];

FA_exacto fa3 (A[3], B[3], Cout[2], S[3], Cout[3]);
FA_exacto fa4 (A[4], B[4], Cout[3], S[4], Cout[4]);
FA_exacto fa5 (A[5], B[5], Cout[4], S[5], Cout[5]);
FA_exacto fa6 (A[6], B[6], Cout[5], S[6], Cout[6]);
FA_exacto fa7 (A[7], B[7], Cout[6], S[7], Cout[7]);

assign S[8] = Cout[7];


endmodule