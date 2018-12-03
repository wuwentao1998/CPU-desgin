`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/05 19:02:25
// Design Name: 
// Module Name: DataMemory
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


module DataMemory(clock,
Address, WriteData, MemRead, MemWrite, ReadData,d0,d1,d2
);
    input MemRead, MemWrite,clock;
    input [31:0] Address, WriteData;
    output [31:0] ReadData;
    reg [31:0] ReadData;
    reg [9:0]i;
    reg [31:0] memory [0:63];
    output  wire [31:0]d0,d1,d2;
    initial begin
    for (i=0;i<64;i=i+1) begin
    memory[i]=0;
    end
    end
     
     assign d0=memory[0];
     assign d1=memory[1];
     assign d2=memory[2];
   
    // sw 
    always@(MemRead or MemWrite or Address) begin
        if(MemRead==1) 
        begin
        ReadData=memory[Address/4];
        end // lw
        if(MemWrite == 1)
        begin
            memory[Address/4] = WriteData;
            end
    end
endmodule
