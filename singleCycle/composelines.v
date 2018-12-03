`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/11 12:22:38
// Design Name: 
// Module Name: composelines
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


module composelines(instr,pc4b,jumpadd);
input [27:0]instr;
input [31:0]pc4b;
output [31:0]jumpadd;
assign jumpadd={pc4b[31:28],instr};
endmodule
