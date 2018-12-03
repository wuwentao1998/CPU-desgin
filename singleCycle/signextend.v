`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/05 13:33:16
// Design Name: 
// Module Name: signextend
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


module signextend(in,out);
input [15:0]in;
output [32:0]out;
reg [32:0]out;
always @(*)begin
if (in<0) begin out=32'b11111111111111110000000000000000+in;end
else begin out=32'b00000000000000000000000000000000+in;end 
end
endmodule
