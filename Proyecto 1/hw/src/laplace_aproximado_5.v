module laplace_aproximado_5(
	input [7:0] b,
	input [7:0] d,
	input [7:0] e,
	input [7:0] f,
	input [7:0] h,

	output [8:0] s
);

    wire[8:0] suma1;
    wire[8:0] suma2;
    wire[9:0] suma3;

	wire[9:0] laplace;
	

    RCA_aproximado8b_1 rca0 (b, d, suma1);
    RCA_aproximado8b_2 rca1 (f, h, suma2);
	RCA_exacto9b rca2 (suma1, suma2, suma3);


	assign laplace = suma3 - e*4;
	
	
	assign s = (laplace > 255) ? 255 : (laplace < 0) ? 0 : laplace;
endmodule
