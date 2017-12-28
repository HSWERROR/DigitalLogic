`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:20:14 10/31/2016 
// Design Name: 
// Module Name:    Top-HTC138 
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
module    Top_HTC138(input clk_100mhz,
							input wire[15:0]SW, 
							input A,B,C,G,G_2a,G_2B,
							output wire led_clk,          //������λʱ��
							output wire led_sout,         //�������
							output wire led_clrn,         //LED��ʾ����
							output wire LED_PEN,       	//LED��ʾˢ��ʹ��
							output [7:0] Y,
							output Buzzer						//�رշ�����
							);
							
wire[31:0]Div,PD;
wire [7:0]Y;
wire ny0,ny1,ny2,ny3,ny4,ny5,ny6,ny7;
	assign clk = clk_100mhz;						//ʱ���ź�
	assign Buzzer = 1'b1;							//�رշ�����
	
	HCT138	M5(A,B,C,G,G_2A,G_2B,ny0,ny1,ny2,ny3,ny4,ny5,ny6,ny7);
	assign Y = ~{ny7,ny6,ny5,ny4,ny3,ny2,ny1,ny0};

//--------------�����Ǹ���ģ��	����ʹ�ýӿڿ����ÿ�����

	clkdiv		U9(.clk(clk),						//	ʱ�ӷ�Ƶģ��
						.clkdiv(Div)
						);

	SPLIO			U7(.clk(clk),						//GPIOģ�鴮�������LED��̬��ʾ
						.rst(rst),                   
						.Start(Div[20]),          	//��λ��������ź�
						.EN(1'b1),               	//PIO���&LED��ʾˢ��ʹ��
						.P_Data({24'hFFFFFF,Y}),   //GPIO������ݣ�ͨ����λ���
						.LED(),        				//16λLED��״̬
						.led_clk(led_clk),       	//������λʱ��
						.led_sout(led_sout),  		//��λ�������
						.led_clrn(led_clrn),      	//LED(74LS164)��ʾ����
						.LED_PEN(LED_PEN),       	//LED��ʾʹ��
						.GPIOf0()						//����GPIOλ			 
						);	

endmodule
