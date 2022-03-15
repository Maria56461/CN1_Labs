`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2021 22:41:18
// Design Name: 
// Module Name: Multiplexer
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


module Multiplexer(input [3:0] i1, i2, i3, i4, input[1:0] s,
                   output [3:0] y);

 assign y = s[1] ? (s[0] ? i4 : i3) : (s[0] ? i2 : i1);   
endmodule
