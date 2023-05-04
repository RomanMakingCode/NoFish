`default_nettype none

module my_chip (
    input logic [11:0] io_in, // Inputs to your chip
    output logic [11:0] io_out, // Outputs from your chip
    input logic clock,
    input logic reset // Important: Reset is ACTIVE-HIGH
);
    
    mychip_wrapper wrapper (io_in[11:0], io_out[11:0], clock, reset); 
    
endmodule
