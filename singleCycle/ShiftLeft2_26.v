`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/05 20:03:51
// Design Name: 
// Module Name: ShiftLeft2_26
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


module ShiftLeft2_26(
in, out
    );
    input [25:0] in;
    output [27:0] out;
    
    assign out = in << 2;
   
endmodule
