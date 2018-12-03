`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/05 12:38:50
// Design Name: 
// Module Name: single
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


module single(clock,pcout,instrout,r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,
r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,Zero,aluresult,readdata1,readdata2,writedata,choosertrd,RegWrite,d0,d1,d2,MemWrite);
input clock;
output Zero;
output MemWrite;
output RegWrite;
output [31:0]writedata;
output [31:0]aluresult;
output [31:0]readdata1;
output [31:0]readdata2;
output [31:0]pcout;
output [31:0]instrout;
output [4:0]choosertrd;
output wire [31:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,
r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31;
output  wire [31:0]d0,d1,d2;
//input sw1,sw2,sw3,sw4,sw5,swpc;//five switches
//output reg [6:0]light1=7'b0000001;
//output reg [6:0]light2=7'b0000001;
//output reg [6:0]light3=7'b0000001;
//output reg [6:0]light4=7'b0000001;// four SSD drivers
//PC &IM

wire [31:0]pcin;
wire [31:0]pcout;
wire [31:0]instrout;
wire [31:0]pcadd4;
wire [27:0]out28;
wire [31:0]jumpadd;
//RF
wire [4:0]choosertrd;
wire [31:0]writedata;
wire [31:0]readdata1;
wire [31:0]readdata2;
//control signals
wire RegDst;wire RegWrite;wire Jump;wire Branch;
wire MemRead;wire MemtoReg;wire [1:0]ALUop;
wire MemWrite;wire ALUSrc; wire Bne;
// sign extend
wire [31:0]extendout;
// ALU
wire [31:0] muxALUout;
wire [3:0]alucontrol;
 wire [31:0]aluresult;
wire Zero;
wire [31:0] shiftout;
wire [31:0] jumpaddout;
wire beq;
wire bne;
wire muxafteradd;
wire [31:0]beqbneout;
wire [31:0] dmreaddata;
PC pc(clock,pcin,pcout);
// some jump component
Add add4(pcout,4,pcadd4);
ShiftLeft2_26 shiftleft2(instrout[25:0],out28);
composelines comp(out28,pcadd4,jumpadd);
// some R component
IM instrmem(pcout,instrout);
mux5b muxrtrd(RegDst,instrout[15:11],instrout[20:16],choosertrd);
Control control(instrout[31:26],RegDst,Jump,Branch,MemRead,MemtoReg,ALUop,MemWrite,ALUSrc,RegWrite,Bne);
RegFile registerfile(clock,RegWrite,instrout[25:21],instrout[20:16],choosertrd,writedata,readdata1,readdata2,r0,
r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,
r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31);
signExtend extend(instrout[15:0],extendout);
mux32b muxALU(ALUSrc,extendout,readdata2,muxALUout);
ALUcontrol alucon(ALUop,instrout[5:0],alucontrol);
ALU32b alu(readdata1,muxALUout,alucontrol,aluresult,Zero);
branchand beqand(Branch,Zero,beq);
branchand bneand(Bne,!Zero,bne);
branchor braor(beq,bne,muxafteradd);
ShiftLeft2_32 shileft(extendout,shiftout);
Add addbranch(shiftout,pcadd4,jumpaddout);
mux32b beqchoose(muxafteradd,jumpaddout,pcadd4,beqbneout);
DataMemory dm(clock,aluresult,readdata2,MemRead,MemWrite,dmreaddata,d0,d1,d2);
mux32b muxafterdm(MemtoReg,dmreaddata,aluresult,writedata);
mux32b newpcchoose(Jump,jumpadd,beqbneout,pcin);
always @(posedge clock)
begin
end
endmodule
