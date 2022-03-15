`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 16.03.2021 00:16:45
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////


module SIMULARE_HALFADDER();
reg a, b;
wire sum, cout;
design_halfAdder_wrapper s1(a, b, cout, sum);

initial begin
a = 0; b = 0;
#30 a = 1; b = 1;
#30 a = 0; b = 1;
#30 a = 1; b = 0;
end 

endmodule
