`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/05 18:28:46
// Design Name: 
// Module Name: ALU
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


module ALU(
ReadData1, ReadData2, ALUcontrol, ALUresult, zero
    );
	input [31:0] ReadData1;
	input [31:0] ReadData2;
	input [3:0] ALUcontrol;
	output [31:0] ALUresult;
	output zero;
	
	reg [31:0] ALUresult;
	reg zero;
	
    always@(ReadData1 || ReadData2 || ALUcontrol) begin
        case(ALUcontrol)
            4'b0000: // and
                ALUresult <= ReadData1 & ReadData2;
            4'b0001: // or
                ALUresult <= ReadData1 | ReadData2;
            4'b0010: // add
                ALUresult <= ReadData1 + ReadData2;
            4'b0110: // sub
                ALUresult <= ReadData1 - ReadData2;
            4'b0111: // slt
	           ALUresult <= (ReadData1 < ReadData2) ? 1 : 0;
           default: 
               ALUresult = 0;
       endcase
       if ((ReadData1  - ReadData2 ) == 0) zero = 0;
       else zero = 1;
   end
endmodule
