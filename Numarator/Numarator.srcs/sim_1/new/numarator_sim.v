`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 06.04.2021 10:24:20
// Module Name: numarator_sim
// Revision 0.01 - File Created 
//////////////////////////////////////////////////////////////////////////////////

module numarator_sim( );

reg clk;
reg reset;
reg pauza;
wire [5:0] valoare_bin;
wire cout;

numarator n1(clk, reset, pauza, valoare_bin, cout);

initial begin
clk = 0;
pauza = 0;
reset = 1;

#25 pauza = 0;
reset = 0;
#200 pauza = 1;
#50 reset = 0;
#25
$finish;
end

always 
#25 clk = ~clk;

endmodule
