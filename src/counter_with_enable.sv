// Asynchronous reset here is needed for one of FPGA boards we use

`include "config.svh"

module counter_with_enable
# (
    parameter w = 24
)
(
    input  clk,
    input  rst,
    input  enable,
    output logic [w - 1:0] cnt
);

    always_ff @ (posedge clk)
    begin 
        if (rst)
            cnt <= '0;
        else if (enable)
            cnt <= cnt + 1'd1;
    end

endmodule
