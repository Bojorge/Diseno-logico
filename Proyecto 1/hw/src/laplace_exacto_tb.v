`timescale 1ns / 10ps

module laplace_exacto_tb();

	parameter ROWS = 512;
	parameter COLS = 512;

	reg [7:0] b;
	reg [7:0] d;
	reg [7:0] e;
	reg [7:0] f;
	reg [7:0] h;
	wire [8:0] s;

	integer k;
	integer j;
	integer file;
	reg [7:0] pixel = 0;
	
	reg [7:0] img [0:262143];

	laplace_exacto DUT (.b(b), .d(d), .e(e), .f(f), .h(h), .s(s));

	initial begin
		$display("--- Beginning simulation ---");
		
		$readmemb("../../sw/image.txt", img);
		file = $fopen("imageFiltered.txt","w");

		b = 8'b00000000; 
		d = 8'b00000000; 
		e = 8'b00000000; 
		f = 8'b00000000; 
		h = 8'b00000000; 

		#10;

		for (k = 0; k < COLS-2; k = k + 1) begin
			
			for (j = 0; j < ROWS-2; j = j + 1) begin
			
				b=img[k*512+(j+1)];
				d=img[k*512+(j+512)];
				e=img[k*512+(j+513)];
				f=img[k*512+(j+514)];
				h=img[k*512+(j+1025)];
	
				pixel=s[7:0];
	
				#10
				$fwrite(file,"%b\n",pixel);
		
			end
	
        end
	
		$fclose(file);
		$display("-- Ending simulation --");
		$finish;
	end

endmodule
