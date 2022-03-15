`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 24.03.2021 09:11:59
// Module Name: bistabilTypeD
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////

module bistabilTypeD(input in, input clk, input reset, input en, output reg q);

always @(posedge clk)
if (reset)
begin
q <= 1'b0;
end 
else if (en)
begin
q <= in;
end
endmodule
