`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/05 20:06:39
// Design Name: 
// Module Name: ShiftLeft2_32
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


module ShiftLeft2_32(
in, out
    );
    input [31:0] in;
    output [31:0] out;
    
    assign out = in << 2;
   
endmodule
