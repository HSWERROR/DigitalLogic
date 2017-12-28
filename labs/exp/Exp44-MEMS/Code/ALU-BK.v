`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:20:25 11/07/2015 
// Design Name: 
// Module Name:    ALU 
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
module 		ALU(input[31:0] A, 
					 input[31:0] B,
					 input [2:0] ALU_Ctr,			//SW[4:2],ѡ��ALU������ALU_Ctr(2)���ƼӼ�����010��������110����������
					 output[31:0] res,
					 output Co,
					 output zero,						//������Ϊ��0������ǰû����
					 output overflow					//�������ǰû��
					 );

wire [31:0] Sum, Bo, And, Or,Slt;

		wire  sub = ALU_Ctr[2];
		assign Bo = B ^ {32{sub}};					//���Ƽ���ʱ�����뷴��

		ADC32		ADD_32(.a(A),						//32λ�ӷ�ģ��
							 .b(Bo),
							 .C0(sub),
							 .s(Sum),
							 .Co(Co)
							 );								

		assign And = A & B;							//����32λ�����
		assign Or  =  A | B;							//����32λ�����
		assign Slt = (A < B)? 1:0;

		
		MUX8T1_32    MUX1(.I0(And),
								.I1(Or),
								.I2(Sum), 
								.I3(32'hA5A5A5),
								.I4(32'hA5A5A5),
								.I5(32'h5A5A5A), 
								.I6(Sum), 
								.I7(Slt),
								.s(ALU_Ctr),
								.o(res)
								);

endmodule
