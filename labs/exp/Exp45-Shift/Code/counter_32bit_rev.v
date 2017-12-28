`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:35:16 11/24/2013 
// Design Name: 
// Module Name:    counter_32bit_rev 
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
module counter_32bit_rev(input clk,					//ʱ��
								 input Up,					//��������
								 input Load,				//������ֵ���ؿ���
								 input[31:0]PData,		//������ֵ����
								 output reg[31:0]cnt,	//32������
								 output reg Rc				//���������
								 );							
								 

	//�����������
	// (~|cnt)���ȶ�cnt��ÿһλ����"��"����,�ٶԽ��ȡ�ǡ���cnt[31:0]=0ʱ: (~|cnt)=1
	//?���������cnt=ȫ0ʱ��λ������(~Up?&?(~|cnt)) ==1����Up=0, cnt[3:0]=0��
	// ���������cnt=ȫ1ʱ��λ������(  Up?&?( &cnt)) ==1����Up=1, cnt[3:0]=F��

//	assign Rc = (~Up & (~|cnt)) | (Up & (&cnt)); 
	always @(posedge clk) begin 
		if(Load)cnt <= PData;
		else begin
			if (Up) cnt <= cnt + 1; 		//Up==1ʱ���������
			else   cnt <= cnt - 1;		//Up==0ʱ���������
	//�������Ҳ������������
			if((|cnt)==0 | 				//cnt[31��0]=32'h00000000,��|cnt=1
				(&cnt==1)) Rc<=1;			//cnt[31��0]=32'hffffffff,��&cnt=1) Rc<=1;	
			else Rc<=0;
		end 
	end

endmodule

