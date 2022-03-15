`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 06.04.2021 00:04:45
// Module Name: numarator
//////////////////////////////////////////////////////////////////////////////////

module numarator(input clk, input reset, input pauza,
            output reg [5:0] valoare_bin, reg cout);

always @(posedge clk or posedge reset)
begin
    if (reset == 1)
        begin 
            valoare_bin = 6'b0;
            cout = 0;
        end
    else 
        begin
            if (pauza == 0)
                begin
                    valoare_bin = valoare_bin + 1;
                    cout = 0;
                    if (valoare_bin > 59)
                        begin
                            cout = 1;
                            valoare_bin = 0;
                        end
                 end
        end
end
endmodule
