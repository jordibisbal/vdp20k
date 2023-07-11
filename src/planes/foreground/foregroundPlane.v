
module ForegroundPlane(
    input              pixel_latch, // pixel latch
    input              N_reset,     

    input [11:0]       pixel_x,
    input [11:0]       pixel_y,

    output reg [23:0]  pixel        // pixel ouput
    
);  

    // VRAM

    // Logic

    always @(posedge pixel_latch or negedge N_reset) begin
        if(!N_reset)
            pixel <= 0;          
        else
            pixel <= ((pixel_y & 8'hFF) << 8) + ((pixel_x & 8'hFF) << 16);
    end
endmodule