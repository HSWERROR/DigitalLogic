`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:07:33 11/29/2016 
// Design Name: 
// Module Name:    VGADEMO 
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
module VGADEMO(
    				input  wire clk_100mhz,
					input  wire RSTN,
					input  wire [3:0] BTN_y,
					output wire[4:0] BTN_x,
	// I/O:
					input  wire[15:0]SW,
					output wire LEDCLK,
					output wire LEDCLR,
					output wire LEDDT,
					output wire LEDEN,
				
					output wire SEGCLK,
					output wire SEGCLR,
					output wire SEGDT,
					output wire SEGEN,
	
				
					output wire[3:0]Red,
					output wire[3:0]Green,
					output wire[3:0]Blue,
					output wire HSYNC, VSYNC
					);






/*	 VGA IO use on display More Information with Text & Graph   addre=	*/	

	VGAIO 		  U11(.vga_clk(VGA_clk), 
							.rst(rst),
							.vram_out(vram_out), 
							.Cursor(Cursor),
							.Blink(clkdiv[24]),
							.R(Red),
							.G(Green),
							.B(Blue),
							.HSYNC(HSYNC),
							.VSYNC(VSYNC),
							.vga_addr(vga_addr),
							.vga_rdn(vga_rdn)
							);
/* ����ģ��*/
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
	SEnter_2_32	M2();

	clkdiv		U9(.clk(clk),						//	ʱ�ӷ�Ƶģ��
						.rst(rst),
						.Sel_CLK(SW_OK[2]),
						.pulse(BTN_OK[0]),			//Ҳ����button_pulse����ʲô����
						.clkdiv(Div),
						.CK(CK)							//������ʱ��
						);

	Display		M6();
	Seg7_Dev		M61();
	GPIO 			M7();
	PIO			M71();
	
endmodule
