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
module 		 Timer(input clk,								//ʱ��
						 input Up,								//��������
						 input Load,							//������ֵ���ؿ���
						 input Start,
						 input[31:0]Timing_constants,		//��ʱ����
						 output reg[31:0]cnt,				//32������
						 output reg Alarm						//��ʱ����(���)
						 );							
								 
reg [1:0]go;

//	assign Rc = (~s & (~|cnt)) | (s & (&cnt)); 
	always @(posedge clk or posedge Start) begin 
		if(Start)begin 
			go <= 2'b01; Alarm <= 0;
			cnt <= Timing_constants;
			end
		else begin
			if(Load)cnt <= Timing_constants;
			else begin
				if (go==2'b01)begin
				Alarm<=0;
				if (Up) cnt <= cnt + 1; 		//Up==1ʱ���������
				else   cnt <= cnt - 1;			//Up==0ʱ���������
				end
		//�������Ҳ������������
				if((|cnt)==0 | 					//cnt[31��0]=32'h00000000,��|cnt=1
					(&cnt==1)) begin				//cnt[31��0]=32'hffffffff,��&cnt=1) Rc<=1;	
					Alarm <= 1;
					go <= 0;
				end
//				else Alarm<=0;
			end
		end
	end

endmodule

