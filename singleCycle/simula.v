`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/08 13:28:38
// Design Name: 
// Module Name: simula
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


module simula();
reg clock=0;
wire [31:0]pcout;
wire [31:0]instrout;
wire [31:0]r0,r1,r2,r3,r4,r5,r6,r7,t0,t1,t2,t3,t4,t5,t6,t7,s0,s1,
s2,s3,s4,s5,s6,s7,t8,t9,r26,r27,r28,r29,r30,r31;
wire Zero;
wire [31:0]aluresult;
wire [31:0]readdata1;
wire [31:0]readdata2;
wire [31:0]writedata;
wire [4:0]chooserd;
wire RegWrite;
wire MemWrite;
wire [31:0]d0,d1,d2;
initial begin
end
always #20 clock<=~clock;
single single1(clock,pcout,instrout,r0,r1,r2,r3,r4,r5,r6,r7,t0,t1,t2,t3,t4,t5,t6,t7,s0,s1,
s2,s3,s4,s5,s6,s7,t8,t9,r26,r27,r28,r29,r30,r31,Zero,aluresult,readdata1,readdata2,writedata,chooserd,RegWrite,d0,d1,d2,MemWrite);
endmodule
