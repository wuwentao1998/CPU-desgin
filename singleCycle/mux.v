`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/05 12:39:07
// Design Name: 
// Module Name: mux
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


module mux32b(sel,in1,in0,out);
input sel;
input [31:0]in1;
input [31:0]in0;
output [31:0]out;
reg [31:0]out;
always @(*) begin
if (sel) begin out = in1; end
if (sel==0) begin out=in0; end
end
endmodule
