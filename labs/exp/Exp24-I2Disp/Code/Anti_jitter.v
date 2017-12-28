`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:03:38 04/29/2014 
// Design Name: 
// Module Name:    Anti_jitter 
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
module Anti_jitter(input wire clk, 							//ʱ��
						 input wire RSTN,                   //��λ���룬������λ
						 input wire [4:0] K_COL,            //�������ź�
						 input wire [15:0] SW,              //��������
						 output reg [4:0]button_out,        //�ȶ���������ź�
						 output reg [4:0]button_pulse,      //�ȶ����������
						 output reg [15:0] SW_OK,           //�ȶ������������
						 output [4:0]K_ROW,                 //�������ź�
						 output reg CR,                     //�̰���������źţ���ӦRSTN
						 output reg rst                     //���������λ�źţ���ӦRSTN

						);
	 
reg [31:0] counter, rst_counter;
reg [5:0]  btn_temp;
reg [15:0] sw_temp;
reg pulse;
initial begin
button_out=0;
button_pulse=0;
SW_OK=0;
counter=0;
CR=0; rst=0;
end

	wire [5:0] button = {~RSTN,~K_COL[4:0]};
	assign K_ROW = {SW[15:11]};								//K_ROW ����ڡ�0��
	
	always @(posedge clk) begin
		btn_temp <= button;										//������ֵ
		sw_temp <= SW; 											//��������
		if(btn_temp != button || sw_temp !=SW) begin		//�м����»��ͷţ���ʼ����
			counter <= 32'h00000000;
			rst_counter <= 0;
			pulse <= 0;
			end
		else if(counter < 50) 								//ȥ������������ʱ100000
				counter<=counter+1;
			  else begin											//��ʱ����
					button_out <= button[4:0];					//����ȶ�����
					CR <= ~RSTN;									//�̰�����ȶ�CR
					SW_OK <= SW; 									//����ȶ���������
					pulse <= 1;										//�������
					if(!pulse)button_pulse <= button;		//�������
					else button_pulse <= 0;	
					if(button[4] && rst_counter<100)	//������λ��ʱ 200000000
						rst_counter <= rst_counter + 1;
					else rst <= ~RSTN;							//������λ���
			  end
	 end
	 
endmodule
