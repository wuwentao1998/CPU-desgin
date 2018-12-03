`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/11 13:05:55
// Design Name: 
// Module Name: branchand
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


module branchand(in1,in2,out);
input in1;
input in2;
output reg out;
always @(*)
begin
out=in1&in2;
end
endmodule
