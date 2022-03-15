`timescale 1ns / 1ps

// Create Date: 06.04.2021 18:02:45
// Module Name: Top_simulare
// Revision 0.01 - File Created

module Top_simulare(  );

reg reset, clk, pauza;
wire [3:0] BCD1, BCD2, BCD3, BCD4;

TOP top(clk, reset, pauza, BCD1, BCD2, BCD3, BCD4);

initial begin
clk = 0;
pauza = 0;
reset = 1;
#10 reset = 0;
#10000
$finish;
end

always
#5 clk = ~clk;

endmodule
