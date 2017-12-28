`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:58:11 07/01/2012 
// Design Name: 
// Module Name:    Device_led 
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
module 	Top_Trigger(input clk_100mhz,
							input wire RSTN,
							input wire [3:0]K_COL,
							output wire[4:0]K_ROW,
							input wire[15:0]SW, 

							output wire LEDCLK,          //������λʱ��
							output wire LEDDT,         	//�������
							output wire LEDCLR,         	//LED��ʾ����
							output wire LEDEN,       		//LED��ʾˢ��ʹ��
							output [7:0] LED,
							output Buzzer						//������
							);
							
wire[31:0]Div,PD;
wire [15:0]SW_OK;
wire [3:0]BTN_OK, pulse_out;
wire rst, CK;

	assign clk = clk_100mhz;								//ʱ���ź�
	assign Buzzer = 1'b1;									//�رշ�����
	
	RS_Trig		M1(.S(SW_OK[0]),					//"???"������߸���Լ��������д
						.R(SW_OK[1]),
						.C(CK),
						.Y(PD[2]),
						.Q(PD[0]),
						.Qn(PD[1])
						);
					
	D_Trig		M2(.D(SW_OK[3]),
						.C(CK),
						.Q(PD[3]),
						.Qn(PD[4])
					);
					
	MB_DFF		 M3(.D(SW_OK[4]),
					.Cp(CK),
					.Sn(SW_OK[5]),
					.Rn(SW_OK[6]),
					.Q(PD[5]),
					.Qn(PD[6])
					);
					
//--------------�����Ǹ���ģ��	����ʹ�ýӿڿ����ÿ�����
	SAnti_jitter	U8(.clk(clk), 					//ȥ����ģ��
							.RSTN(RSTN),
							.readn(),					//��ʹ�õ��ź��ÿ�����
							.Key_y(K_COL),
							.Key_x(K_ROW),
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
						.CK(CK)							//������ʱ��
						);

	SPLIO			U7(.clk(clk),						//GPIOģ�鴮�������LED��̬��ʾ
						.rst(rst),                   
						.Start(Div[20]),          	//��λ��������ź�
						.EN(1'b1),               	//PIO���&LED��ʾˢ��ʹ��
						.P_Data(PD),        			//GPIO������ݣ�ͨ����λ���
						.LED(),        				//16λLED��״̬
						.led_clk(LEDCLK),       	//������λʱ��
						.led_sout(LEDDT),  			//��λ�������
						.led_clrn(LEDCLR),      	//LED(74LS164)��ʾ����
						.LED_PEN(LEDEN),       		//LED(74LS164)��ʾˢ��ʹ��
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
