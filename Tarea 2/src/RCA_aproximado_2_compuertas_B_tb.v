`timescale 1ns / 10ps

module RCA_aproximado_2_compuertas_B_tb();

	reg [7:0] a;
	reg [7:0] b;
	reg cin;
	wire [8:0] s;
	wire cout;

	integer i,j;
	integer file;

	RCA_aproximado_2_compuertas_B DUT (.A(a),.B(b),.Cin(cin),.S(s),.Cout(cout));

	initial begin
		$display("--- Beginning simulation ---");

		file = $fopen("RCA_aproximado_2_B.txt","w");

		a = 0; b = 0; cin = 0;
		#10;
		
		for (i = 0; i < 256; i = i + 1) begin
			for (j = 0; j < 256; j = j + 1) begin
				a = i;
				b = j;
				#10
				$fwrite(file,"%d\n",{cout,s});
			end
		end
		
		$fclose(file);
		$display("-- Ending simulation --");
		$finish;
	end

endmodule
