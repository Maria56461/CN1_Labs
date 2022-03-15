`timescale 1ns / 1ps
// Create Date: 28.04.2021 04:50:38
// Module Name: simularee
// Revision 0.01 - File Created

module simularee( );
reg reset, clk;
reg [0:0] B1;
reg [0:0] B2;
reg [0:0] B3;
wire [0:0] eb1;
wire [0:0] eb2;
wire [0:0] eb3;

automat auto(clk, reset, B1, B2, B3, eb1, eb2, eb3);
initial
begin
B1 = 0; B2 = 0; B3 = 0;
clk = 0;
reset = 1;

  #100  B1 = 0; B2 = 0; B3 = 1;
  reset = 0;
  #100  B1 = 0; B2 = 0; B3 = 0;
  reset = 0;
  # 100  B1 = 0; B2 = 1; B3 = 0;
  reset = 0;
  # 100 B1 = 0; B2 = 0; B3 = 0; reset = 0;
  # 100 B1 = 1; B2 = 0; B3 = 0; reset = 0;
  end
always
# 50 clk = ~clk;

endmodule
