`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:11:39 12/14/2013 
// Design Name: 
// Module Name:    register_32bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Reg_32(clk, D, clear, Load, Q );
	input clk,clear,Load;
	input  [31:0] D;
	output [31:0] Q;
	
	wire   [31:0] Qbar;
	wire	 [31:0] Di;
	
	assign Di=(Load)? D : Q;		//Load=0,����
	BUFG cc(clk1, clk);				//ʱ�ӻ���,���Implement �г�ͻ����ȥ��
	//��������һ��8λ�Ĵ�������32λ�Ĵ���
	Reg_8bit		Reg81(clk1, Di[31:24], clear, Q[31:24] ),
					Reg82(clk1, Di[23:16], clear, Q[23:16] ),
					Reg83(clk1, Di[15:8],  clear, Q[15:8] ),
					Reg84(clk1, Di[7:0],   clear, Q[7:0] );

	//32λ�Ĵ�����Ϊ����
/*	reg [31:0] Q1;
	always @(posedge clk or posedge clear)
		if(clear) Q1 <= 0; else 
		if (Load)  Q1 <= D; else Q1 <= Q1;
*/					
endmodule
