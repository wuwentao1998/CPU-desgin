`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/06 12:26:13
// Design Name: 
// Module Name: PC
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


module PC(clock,in,out);
input [31:0]in;
input clock;
output[31:0]out;
reg firsttime=1;
reg [31:0]out;
always @(posedge clock) begin
if (firsttime==1) begin firsttime=0;out=0;end
else begin out=in; end
end
endmodule
