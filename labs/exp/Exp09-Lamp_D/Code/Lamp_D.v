`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:10:58 10/21/2013 
// Design Name: 
// Module Name:    lamp_Ctr1 
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
module	  Lamp_D(input clk,					// Lamp_Dleay
						input S1, 
						input S2, 
						input S3, 
						output TG,					//�����ӵ���
						output reg F
						);
						
parameter COUNTER = 28;							//������������޸���ʱ,ʵ��ʱ�޸�Ϊ28
reg [COUNTER-1:0] count;						//��ʱ����ʱ������
`define Dleay 28'hFFFFFFFF						//�궨�壬ʵ��ʱ�޸�Ϊ28'hFFFFFFF
wire w;
initial begin
	count <= `Dleay;								//��ʼ��������
	F = 0;											//��ʼ�ص�
end
	 assign TG = 0;								//�����ӵ���
	 
	 assign w = ~{S1 && S2 && S3};			//���������������һ���ذ���w = 1
	 always@*										//���ر������룬�ƿ��������
		if(w || count < `Dleay) F =1;			//����п��ذ��»���ʱδ����������
		else 	F = 0;								//��ʱ�����ص�
		
	 always@(posedge clk)						//ʱ�Ӵ�����ʱ(��ʱ) ����
		if(w || count < `Dleay)					//�ж���ʱ����
				count <= count+1;					//��ʱδ�������������
		else 	count <= count;					//��ʱ�������ּ���������

endmodule
