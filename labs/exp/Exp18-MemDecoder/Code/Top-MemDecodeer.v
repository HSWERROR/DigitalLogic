`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:52:38 04/25/2016 
// Design Name: 
// Module Name:    Top-MemDecodeer 
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
module  Top_MemDecodeer(input clk_100mhz,
								input wire RSTN,
								input wire [3:0]BTN_y,
								output wire[4:0]BTN_x,
								input wire[15:0]SW, 

								output wire led_clk,      	//������λʱ��
								output wire led_sout,     	//�������
								output wire led_clrn,     	//LED��ʾ����
								output wire LED_PEN,      	//LED��ʾˢ��ʹ��
								output [7:0] LED,
								output Buzzer					//�رշ�����
								);
								
wire [31:0]Din,Do,Div,PD;
wire [15:0]SW_OK;
wire [3:0]BTN_OK, pulse_out;
wire rst, WE;

	assign clk = clk_100mhz;								//��ַ����ʱ��
	assign Buzzer = 1'b1;									//�رշ�����
	wire[5:0] A = SW_OK[15:10];							//16λ�ֵ�ַ((����������))

	MEM_BANK		 BANK(.DiL(Din[15:0]),
							.DiH(Din[31:16]),
							.we(BTN_OK[0]),					//д�ź�BTN_OK[0]
							.A(A[5:1]),							//�洢����ַ��
							.clk(Div[10]),
							.DoL(Do[15:0]),					//��LED��ʾ
							.DoH(Do[31:16])					//��LED��ʾ
							);
							
	assign PD = (A[0]) ? {16'h0000,Do[31:16]} : {16'h0000,Do[15:0]}; 
	//A[0]��ϵ����(16λ��)��ַ,�л��ߵ�16λ��ʾ��
	assign Din = {A[5:1],3'b100,{SW_OK[7:0]+8'h08},A[5:1],3'b000,SW_OK[7:0]};//��������=���ֵ�ַ+SW_OK[7:0]
	
			 
	
	
	//--------------�����Ǹ���ģ��	����ʹ�ýӿڿ����ÿ�����
	SAnti_jitter	U8(.clk(clk), 					//ȥ����ģ��
							.RSTN(RSTN),
							.readn(),					//��ʹ�õ��ź��ÿ�����
							.Key_y(BTN_y),
							.Key_x(BTN_x),
							.SW(SW), 
							.Key_out(),
                     .Key_ready(),
							.pulse_out(),
							.BTN_OK(BTN_OK),
							.SW_OK(SW_OK),
							.CR(),
							.rst(rst)
							);

	clkdiv		U9(.clk(clk),						//	ʱ�ӷ�Ƶģ��
						.rst(rst),
						.Sel_CLK(SW_OK[2]),
						.pulse(BTN_OK[0]),			//Ҳ����button_pulse����ʲô����
						.clkdiv(Div),
						.CK(CK)							
						);

	SPLIO			U7(.clk(clk),						//GPIOģ�鴮�������LED��̬��ʾ
						.rst(rst),                   
						.Start(Div[20]),          	//��λ��������ź�
						.EN(1'b1),               	//PIO���&LED��ʾˢ��ʹ��
						.P_Data(PD),        			//GPIO������ݣ�ͨ����λ���
						.LED(),        				//16λLED��״̬
						.led_clk(led_clk),       	//������λʱ��
						.led_sout(led_sout),  		//��λ�������
						.led_clrn(led_clrn),      	//LED(74LS164)��ʾ����
						.LED_PEN(LED_PEN),       	//LED(74LS164)��ʾˢ��ʹ��
						.GPIOf0()						//����GPIOλ			 
						);
	
	PLIO	  U71(.clk(clk),							//GPIOģ�鴮�������LED��̬��ʾ
					.rst(rst),
					.EN(1'b1),							//PIO���&LED��ʾˢ��ʹ��
					.PData_in(PD),						//GPIO������ݣ�ֱ�����
					.LED(LED),							//��LEDָʾ��
					.GPIOf0()							//����GPIOλ		 
					);
					
endmodule
