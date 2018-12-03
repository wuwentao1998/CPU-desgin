`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/05 13:16:11
// Design Name: 
// Module Name: ALUcontrol
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


module ALUcontrol(ALUop,funct,control);
input [1:0]ALUop;
input [5:0]funct;
output [3:0]control;
reg [3:0]control;
always @(*)
begin
if (ALUop==2'b00) begin control=4'b0010;end
else if (ALUop==2'b11) begin control=4'b0000; end //for andi
else if (ALUop==2'b01) begin control=4'b0110; end
else if (ALUop==2'b10)begin
if (funct==6'b100000)begin control=4'b0010;end
else if (funct==6'b100010)begin control=4'b0110;end
else if (funct==6'b100100)begin control=4'b0000;end
else if (funct==6'b100101)begin control=4'b0001;end
else if (funct==6'b101010)begin control=4'b0111;end
end

end
endmodule
