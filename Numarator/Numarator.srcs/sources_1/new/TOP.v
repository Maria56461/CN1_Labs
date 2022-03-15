`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 06.04.2021 15:50:20
// Module Name: TOP
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////

module TOP(input clk, input reset, input pause, output [3:0] BCD1, output [3:0] BCD2,
           output [3:0] BCD3, output [3:0] BCD4);
           
wire cout1, cout2;
wire [5:0] valoare_bin1, valoare_bin2;
numarator n1(clk, reset, pause, valoare_bin1, cout1);
numarator n2(cout1, reset, pause, valoare_bin2, cout2);
convertor b1(valoare_bin1, BCD3, BCD4);
convertor b2(valoare_bin2, BCD1, BCD2);

endmodule
