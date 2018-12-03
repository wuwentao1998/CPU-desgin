`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/05 12:46:14
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


module ALU32b (in1,in2,control,result,zero);
input [31:0] in1,in2;
output zero;
reg zero=0;
input [3:0]control;
output [31:0]result;
reg [31:0]result;
always @(*)begin
if (control==4'b0010) begin result=in1+in2; zero=0;end      //add
else if (control==4'b0110) begin 
result=in1-in2; 
if (in1==in2) begin zero=1;end
end       //subtract
else if (control==4'b0000) begin result=in1 & in2; zero=0;end  // and
else if (control==4'b0001) begin result=in1 | in2; zero=0;end   // or
else if (control==4'b0111) begin  //slt
if (in1<in2) begin result=1; end
else begin result=0; end               
end

end
endmodule
