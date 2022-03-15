`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 26.05.2021 09:50:25
// Module Name: simulare
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////

module simulare( );
    reg CLK;
    reg reset, a, b, c, d, e;
    wire out;

    pipeline pipeline1(reset, CLK, a, b, c, d, e, out);
    
    initial begin
        CLK = 1; reset = 0; 
        a = 1; b = 1; c = 1; d = 0; e = 0;
        #60 a = 0; b = 1; c = 1; d = 1; e = 1; 
        #60 a = 1; b = 1; c = 1; d = 1; e = 1;
        end
        
    always
    #30 CLK = ~CLK;
    
endmodule
