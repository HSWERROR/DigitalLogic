`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:22:29 08/14/2016 
// Design Name: 
// Module Name:    Top-add4 
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
module Top_add4(input clk_100mhz,
					 input RSTN,
					 input [size-1:0] a,
					 input [size-1:0] b,
	
					 output led_clk,          		 //������λʱ��
					 output led_sout,         		 //�������
					 output led_clrn,              //LED��ʾ����
					 output LED_PEN          		 //LED��ʾˢ��ʹ��
					 );
					 
parameter size = 4;

wire [3:0] s;
wire co,Clk_CPU;
wire [4:0] sum;
wire [31:0]clkdiv;

	add4	add4(a, b, 1'b0, s, co	);

assign sum = {co, s};
assign rst = ~RSTN;	

	clk_div	M1(clk_100mhz, rst, clkdiv);
	
	SPIO	 M6(.clk(clk_100mhz),
				 .rst(rst),              			//��λ
				 .Start(clkdiv[20]),      			//����ɨ������
				 .EN(1'b1),     			 			//PIO/LED��ʾˢ��ʹ��
				 .P_Data({25'b0, sum,2'b00}),   	//�������룬P_Data[31:0] ���ڴ����������
				 .counter_set(),  					//���ڼ���/��ʱģ����ƣ�counter_set[1:0] ��ʵ�鲻��
				 .LED_out(),       		 			//�����������LED_out[15:0] 
				 .led_clk(led_clk),        		//������λʱ��
				 .led_sout(led_sout),     			//�������
				 .led_clrn(led_clrn),      		//LED��ʾ����
				 .LED_PEN(LED_PEN),        		//LED��ʾˢ��ʹ��
				 .GPIOf0()				    			//���ã�GPIO[13:0] 
				  );
				
				
endmodule
