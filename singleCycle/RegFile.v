`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/05 14:00:19
// Design Name: 
// Module Name: RegFile
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module RegFile
(clock,Regwrite, rs, rt, rd, Write_data, Read_data1, Read_data2,
r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,
r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31);
input Regwrite;
input clock;
input [4 : 0] rs, rt, rd;
input [31 : 0] Write_data;
output wire [31 : 0] Read_data1, Read_data2;
output wire [31:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,
r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31;
reg [6:0]i;
reg [31 : 0] Data_register[0:31];
initial begin
for (i=0;i<32;i=i+1)
begin
Data_register[i]=0;
end
end
assign Read_data1 = Data_register[rs];
assign Read_data2 = Data_register[rt];


assign r0=Data_register[0];
assign r1=Data_register[1];
assign r2=Data_register[2];
assign r3=Data_register[3];
assign r4=Data_register[4];
assign r5=Data_register[5];
assign r6=Data_register[6];
assign r7=Data_register[7];
assign r8=Data_register[8];
assign r9=Data_register[9];
assign r10=Data_register[10];
assign r11=Data_register[11];
assign r12=Data_register[12];
assign r13=Data_register[13];
assign r14=Data_register[14];
assign r15=Data_register[15];
assign r16=Data_register[16];
assign r17=Data_register[17];
assign r18=Data_register[18];
assign r19=Data_register[19];
assign r20=Data_register[20];
assign r21=Data_register[21];
assign r22=Data_register[22];
assign r23=Data_register[23];
assign r24=Data_register[24];
assign r25=Data_register[25];
assign r26=Data_register[26];
assign r27=Data_register[27];
assign r28=Data_register[28];
assign r29=Data_register[29];
assign r30=Data_register[30];
assign r31=Data_register[31];


always @ (negedge clock) begin
if (Regwrite==1) begin Data_register[rd] = Write_data; end
end
endmodule// RegFile
