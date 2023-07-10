module clockGenerator
(
    input  I_clock,
    input  I_N_rst,
    output O_serial_clk,
    output O_pixel_clk,    
    output O_N_reset,
    output reg O_phase_0,
    output reg O_phase_1,
    output reg O_phase_2,
    output reg O_phase_3,
    output reg O_phase_4
);

assign O_N_reset = I_N_rst & O_pll_lock;

// PLL

TMDS_rPLL u_tmds_rpll
(
    .clkin     (I_clock),        //input clk 
    .clkout    (O_serial_clk),   //output clk 
    .lock      (O_pll_lock)      //output lock
);

// Clock divisor

CLKDIV u_clkdiv
(
    .RESETN(I_N_rst),
    .HCLKIN(O_serial_clk), //clk  x5
    .CLKOUT(O_pixel_clk),  //clk  x1
    .CALIB (1'b1)
);

defparam u_clkdiv.DIV_MODE="5";
defparam u_clkdiv.GSREN="false";

// Phase generator

always @ ( posedge O_serial_clk or negedge O_N_reset ) begin
    if ( O_N_reset ) begin        
        O_phase_1 <= O_phase_0;
        O_phase_2 <= O_phase_1;
        O_phase_3 <= O_phase_2;
        O_phase_4 <= O_phase_3;
        O_phase_0 <= O_phase_4;
    end else begin
        O_phase_0 <= 1;       
        O_phase_1 <= 0;       
        O_phase_2 <= 0;       
        O_phase_3 <= 0;       
        O_phase_4 <= 0;       
    end
end


endmodule