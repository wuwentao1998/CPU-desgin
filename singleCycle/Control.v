`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/05 13:39:16
// Design Name: 
// Module Name: Control
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


module Control(instr,RegDst,Jump,Branch,MemRead,MemtoReg,ALUop,MemWrite,ALUSrc,RegWrite,Bne);
input[5:0]instr;
output RegDst,Jump,Branch,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite,Bne;
output reg [1:0]ALUop;
reg RegDst=0,Jump=0,Branch=0,MemRead=0,MemtoReg=0,MemWrite=0,ALUSrc=0,RegWrite=0,Bne=0;
always @(*)begin
if (instr==6'b100011) begin //lw
RegDst=0;Jump=0;Branch=0;MemRead=1;MemtoReg=1;
ALUop=2'b00;MemWrite=0;ALUSrc=1;RegWrite=1;Bne=0;
end 
else if (instr==6'b101011) begin //sw
RegDst=0;Jump=0;Branch=0;MemRead=0;MemtoReg=0;
ALUop=2'b00;MemWrite=1;ALUSrc=1;RegWrite=0;Bne=0;
end 
else if (instr==6'b000000) begin //add,sub,and,or,slt
RegDst=1;Jump=0;Branch=0;MemRead=0;MemtoReg=0;
ALUop=2'b10;MemWrite=0;ALUSrc=0;RegWrite=1;Bne=0;
end
else if (instr==6'b001000) begin //addi
RegDst=0;Jump=0;Branch=0;MemRead=0;MemtoReg=0;
ALUop=2'b00;MemWrite=0;ALUSrc=1;RegWrite=1;Bne=0;
end
else if (instr==6'b001100) begin //andi
RegDst=0;Jump=0;Branch=0;MemRead=0;MemtoReg=0;
ALUop=2'b11;MemWrite=0;ALUSrc=1;RegWrite=1;Bne=0;
end
else if (instr==6'b000010) begin //jump
RegDst=0;Jump=1;Branch=0;MemRead=0;MemtoReg=0;
ALUop=2'b00;MemWrite=0;ALUSrc=0;RegWrite=0;Bne=0;
end
else if (instr==6'b000100) begin //beq
RegDst=0;Jump=0;Branch=1;MemRead=0;MemtoReg=0;
ALUop=2'b01;MemWrite=0;ALUSrc=0;RegWrite=0;Bne=0;
end
else if (instr==6'b000101) begin //bne
RegDst=0;Jump=0;Branch=0;MemRead=0;MemtoReg=0;
ALUop=2'b01;MemWrite=0;ALUSrc=0;RegWrite=0;Bne=1;
end
end
endmodule
