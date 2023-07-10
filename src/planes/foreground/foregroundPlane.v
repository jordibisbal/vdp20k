
module foregroundPlane(
    input              I_pxl_clk, //pixel clock
    input              I_rst_n,   //low active     
    output reg [23:0]  O_pixel    // Module ouput
);  

    // VRAM

//    foregroundVRam_00 foregroundVRam_00_inst (
//        .dout(foregroundVRam_dout_0)     
//    );

    // Logic

    always @(posedge I_pxl_clk or negedge I_rst_n) begin
        if(!I_rst_n)
            O_pixel <= 24'd0;          
        else
            O_pixel <= 24'h3F5F7F;
    end
endmodule