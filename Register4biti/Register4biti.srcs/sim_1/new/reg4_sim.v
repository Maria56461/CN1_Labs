`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 24.03.2021 08:25:06
// Module Name: reg4_sim
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////


module reg4_sim( );

reg [3:0] rin;
reg clk, load, clear;
wire [3:0] rout;

reg4biti r1(rin, clk, clear, load, rout);
initial 
begin

clk = 0;
load = 0;
clear = 0;
rin = 4'b 1101;

#50 load = 1;
#50 clear = 1;
#50 clear = 0;
#50
$finish;
end

always 
#25 clk = ~clk;
endmodule
