`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:44:21 06/08/2017 
// Design Name: 
// Module Name:    Mixcounter 
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
module Mixcounter(input clk, 
						input reset,
						output[31:0] Time_hourt
						);
wire [7:0] hour, minute,second;
						
	assign Time_hourt = {hour, 4'h0, minute, 4'h0, second};
	
	ms_1000		Tm(.clk(clk_1ms), .rst(reset),		//��ʱ�ӷ�����·
						.ms(msecond), 							//�������
						.clk_1s(clk_1s)						//��ʱ��
						);	
	Counter_60 	 Tsec(.clk(clk_1s), .rst(reset),				//�������"��"ʱ�ӷ�����
						.Q(second),								//���ʱ���
						.C60(clk_1min) 						//��ʱ��
						);	
						
	Counter_60 	 Tmin(.clk(clk_1min), .rst(reset), 	//�ּ�����"Сʱ"ʱ�ӷ�����
							.Q (minute),						//�ּ�ʱ���
							.C60(clk_1hour) 					//"ʱ"ʱ��
							);		
							
	Counter_24	Thour(.clk(clk_1hour), .rst(reset), //"ʱ"��������ʱ�ӷ�����
							.Q(hour),							//ʱ��ʱ���
							.C24(clk_1day)
							);			


endmodule
