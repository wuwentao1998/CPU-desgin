`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/05 18:12:02
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


module ALUcontrol2(
ALUop, funct, ALUcontrol
    );
    input [1:0] ALUop;
    input [5:0] funct;
    output [3:0] ALUcontrol;
    
    reg [3:0] ALUcontrol;
    
    always@(ALUop || funct) begin
        case(ALUop)
            2'b00: // add
                ALUcontrol = 4'b0010;
            2'b01: // sub
                ALUcontrol = 4'b0110;
            2'b10: // r-type
                case (funct)
                    6'b100000: // add
                        ALUcontrol = 4'b0010;
                    6'b100010: // sub
                        ALUcontrol = 4'b0110;
                    6'b100100: // and
                        ALUcontrol = 4'b0000;
                    6'b100101: // or
                        ALUcontrol = 4'b0001;
                    6'b101010: // slt
                        ALUcontrol = 4'b0111;
                    default: 
                        ALUcontrol = 0;
                endcase
           default: 
                ALUcontrol = 0;
       endcase
   end
                 
endmodule










