module clockGenerator
(
    input  I_clock,
    input  I_N_rst,
    input  I_pll_lock,
    input  I_serial_clk,
    output O_pixel_clk,    
    output O_N_reset
);

assign O_N_reset = I_N_rst & I_pll_lock;

// PLL

//TMDS_rPLL u_tmds_rpll
//(
//    .clkin     (I_clk     ),     //input clk 
//    .clkout    (O_serial_clk),   //output clk 
//    .lock      (O_pll_lock)      //output lock
//);

// Clock divisor

CLKDIV u_clkdiv
(
    .RESETN(I_N_rst),
    .HCLKIN(I_serial_clk), //clk  x5
    .CLKOUT(O_pixel_clk),  //clk  x1
    .CALIB (1'b1)
);

defparam u_clkdiv.DIV_MODE="5";
defparam u_clkdiv.GSREN="false";

// Phase generator

reg [2:0] O_phase;

always @ ( posedge I_clock, posedge I_N_rst ) begin
    if ( ~I_N_rst ) begin
        O_phase <= O_phase << 1;
        O_phase[0] <= O_phase[2];            
    end else begin
        O_phase <= 2'b01;
    end
end


endmodule