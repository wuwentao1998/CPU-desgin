`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/05 13:00:15
// Design Name: 
// Module Name: mux5b
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


module mux5b(sel,in1,in0,out);
input sel;
input [4:0]in1;
input [4:0]in0;
output [4:0]out;
reg [4:0]out;
always @(*) begin
if (sel) begin out = in1; end
if (sel==0) begin out=in0; end
end
endmodule

