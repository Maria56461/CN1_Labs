`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: registru
//////////////////////////////////////////////////////////////////////////////////
module registru(input CLK, input reset, input [4:0] inp, output reg [4:0] outp);

    always @(posedge CLK, posedge reset)
        if (reset)
            begin outp <= 5'b0;
            end
        else 
            begin outp <= inp;
            end
           
endmodule
