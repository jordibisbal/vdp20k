// ==============0ooo===================================================0ooo===========
// =  Copyright (C) 2014-2020 Gowin Semiconductor Technology Co.,Ltd.
// =                     All rights reserved.
// ====================================================================================
// 
//  __      __      __
//  \ \    /  \    / /   [File name   ] video_top.v
//   \ \  / /\ \  / /    [Description ] Video demo
//    \ \/ /  \ \/ /     [Timestamp   ] Friday April 10 14:00:30 2020
//     \  /    \  /      [version     ] 2.0
//      \/      \/
//
// ==============0ooo===================================================0ooo===========
// Code Revision History :
// ----------------------------------------------------------------------------------
// Ver:    |  Author    | Mod. Date    | Changes Made:
// ----------------------------------------------------------------------------------
// V1.0    | Caojie     |  4/10/20     | Initial version 
// ----------------------------------------------------------------------------------
// V2.0    | Caojie     | 10/30/20     | DVI IP update 
// ----------------------------------------------------------------------------------
// ==============0ooo===================================================0ooo===========

module top
(
    input             I_clk           , // 27Mhz 
    input             I_rst_n         ,
    output            O_tmds_clk_p    ,
    output            O_tmds_clk_n    ,
    output     [2:0]  O_tmds_data_p   ,//{r,g,b}
    output     [2:0]  O_tmds_data_n   
);

//==================================================
reg  [31:0] run_cnt;
wire        running;

//--------------------------
wire        tp0_vs_in;
wire        tp0_hs_in;
wire        tp0_de_in;
wire [ 7:0] tp0_data_r /*synthesis syn_keep=1*/; 
wire [ 7:0] tp0_data_g /*synthesis syn_keep=1*/; 
wire [ 7:0] tp0_data_b /*synthesis syn_keep=1*/; 

reg         vs_r;
reg  [9:0]  cnt_vs;

//===========================================================================
// clock generation

wire pixel_latch;
wire serial_clk;


clockGenerator clockGenerator_inst (
    .I_clock(I_clk),
    .I_N_rst(I_rst_n),
    .O_serial_clk(serial_clk),    
    .O_pixel_clk(pix_clk),
    .O_N_reset(reset_n),
    .O_phase_0(a),
    .O_phase_1(b),
    .O_phase_2(c),
    .O_phase_3(d),
    .O_phase_4(pixel_latch)
);

//===========================================================================
// pixel wires

wire [11:0] pixel_x;
wire [11:0] pixel_y;


//===========================================================================
// foregroundPlane


ForegroundPlane foregroundPlane
(
    .pixel_latch (pixel_latch),     // pixel latch
    .N_reset     (reset_n),         
    .pixel_x     (pixel_x),
    .pixel_y     (pixel_y),

    .pixel       ()
);


//===========================================================================
// videoPlanes

PlaneMixer planeMixer
(
    .I_pxl_clk   (pixel_latch),                // pixel clock
    .I_pxl_latch (pixel_latch),                // pixel latch  

    .foreground_pixel(foregroundPlane.pixel), // pixels from foreground plane

    .I_N_reset   (reset_n),           
    .I_mode      ({1'b0,cnt_vs[9:8]} ),//data select
    .I_h_total   (12'd1650           ),//hor total time  // 12'd1056  // 12'd1344  // 12'd1650  
    .I_h_sync    (12'd40             ),//hor sync time   // 12'd128   // 12'd136   // 12'd40    
    .I_h_bporch  (12'd220            ),//hor back porch  // 12'd88    // 12'd160   // 12'd220   
    .I_h_res     (12'd1280           ),//hor resolution  // 12'd800   // 12'd1024  // 12'd1280  
    .I_v_total   (12'd750            ),//ver total time  // 12'd628   // 12'd806   // 12'd750    
    .I_v_sync    (12'd5              ),//ver sync time   // 12'd4     // 12'd6     // 12'd5     
    .I_v_bporch  (12'd20             ),//ver back porch  // 12'd23    // 12'd29    // 12'd20    
    .I_v_res     (12'd720            ),//ver resolution  // 12'd600   // 12'd768   // 12'd720    
    .I_hs_pol    (1'b1               ),//HS polarity , 0:negetive ploarity，1：positive polarity
    .I_vs_pol    (1'b1               ),//VS polarity , 0:negetive ploarity，1：positive polarity
    .O_de        (tp0_de_in          ),   
    .O_hs        (tp0_hs_in          ),
    .O_vs        (tp0_vs_in          ),
    .O_data_r    (tp0_data_r         ),   
    .O_data_g    (tp0_data_g         ),
    .O_data_b    (tp0_data_b         ),

    .O_pixel_x (pixel_x),
    .O_pixel_y (pixel_y)

    
);


always@(posedge pix_clk)
begin
    vs_r <= tp0_vs_in;
end

always@(posedge pix_clk or negedge reset_n)
begin
    if(!reset_n)
        cnt_vs <= 0;
    else if(vs_r && !tp0_vs_in) //vs24 falling edge
        cnt_vs <= cnt_vs + 1'b1;
end 

//==============================================================================
//TMDS TX(HDMI4)





DVI_TX_Top DVI_TX_Top_inst
(
    .I_rst_n       (reset_n   ),  //asynchronous reset, low active
    .I_serial_clk  (serial_clk    ),
    .I_rgb_clk     (pix_clk       ),  //pixel clock
    .I_rgb_vs      (tp0_vs_in     ), 
    .I_rgb_hs      (tp0_hs_in     ),    
    .I_rgb_de      (tp0_de_in     ), 
    .I_rgb_r       (  tp0_data_r ),  //tp0_data_r
    .I_rgb_g       (  tp0_data_g  ),  
    .I_rgb_b       (  tp0_data_b  ),  
    .O_tmds_clk_p  (O_tmds_clk_p  ),
    .O_tmds_clk_n  (O_tmds_clk_n  ),
    .O_tmds_data_p (O_tmds_data_p ),  //{r,g,b}
    .O_tmds_data_n (O_tmds_data_n )
);

endmodule