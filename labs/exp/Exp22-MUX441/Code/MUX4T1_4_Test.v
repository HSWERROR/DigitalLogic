// Verilog test fixture created from schematic D:\FPGA_work\Logic-2015\Exp07-MUX441\Code\MUX4T1_4.sch - Sun Nov 01 17:38:40 2015

`timescale 1ns / 1ps

module MUX4T1_4_MUX4T1_4_sch_tb();

// Inputs
   reg [1:0] s;
   reg [3:0] I1;
   reg [3:0] I2;
   reg [3:0] I3;
   reg [3:0] I0;

// Output
   wire [3:0] o;

// Bidirs

// Instantiate the UUT
   MUX4T1_4 UUT (
		.s(s), 
		.I1(I1), 
		.I2(I2), 
		.I3(I3), 
		.I0(I0), 
		.o(o)
   );
// Initialize Inputs
	initial begin
		s =  0;
		I0 = 0;
		I1 = 1;
		I2 = 2;
		I3 = 3;
		
		#50 s = 0;
		#50 s = 1;
		#50 s = 2;
		#50 s = 3;
		
		#50;
		I0 = 4'h5;
		I1 = 4'hA;
		I2 = 4'h5;
		I3 = 4'hA;
		
		#50 s = 0;
		#50 s = 1;
		#50 s = 2;
		#50 s = 3;
		#50 s = 0;
		
	end
			
endmodule
