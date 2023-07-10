//Copyright (C)2014-2023 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: IP file
//GOWIN Version: V1.9.8.11 Education
//Part Number: GW2AR-LV18QN88C8/I7
//Device: GW2AR-18
//Device Version: C
//Created Time: Mon Jul 10 05:25:53 2023

module foregroundVRam_00 (dout, clka, cea, reseta, clkb, ceb, resetb, oce, ada, din, adb);

output [3:0] dout;
input clka;
input cea;
input reseta;
input clkb;
input ceb;
input resetb;
input oce;
input [15:0] ada;
input [7:0] din;
input [16:0] adb;

wire lut_f_0;
wire lut_f_1;
wire [30:0] sdpb_inst_0_dout_w;
wire [0:0] sdpb_inst_0_dout;
wire [30:0] sdpb_inst_1_dout_w;
wire [0:0] sdpb_inst_1_dout;
wire [30:0] sdpb_inst_2_dout_w;
wire [0:0] sdpb_inst_2_dout;
wire [30:0] sdpb_inst_3_dout_w;
wire [0:0] sdpb_inst_3_dout;
wire [30:0] sdpb_inst_4_dout_w;
wire [1:1] sdpb_inst_4_dout;
wire [30:0] sdpb_inst_5_dout_w;
wire [1:1] sdpb_inst_5_dout;
wire [30:0] sdpb_inst_6_dout_w;
wire [1:1] sdpb_inst_6_dout;
wire [30:0] sdpb_inst_7_dout_w;
wire [1:1] sdpb_inst_7_dout;
wire [30:0] sdpb_inst_8_dout_w;
wire [2:2] sdpb_inst_8_dout;
wire [30:0] sdpb_inst_9_dout_w;
wire [2:2] sdpb_inst_9_dout;
wire [30:0] sdpb_inst_10_dout_w;
wire [2:2] sdpb_inst_10_dout;
wire [30:0] sdpb_inst_11_dout_w;
wire [2:2] sdpb_inst_11_dout;
wire [30:0] sdpb_inst_12_dout_w;
wire [3:3] sdpb_inst_12_dout;
wire [30:0] sdpb_inst_13_dout_w;
wire [3:3] sdpb_inst_13_dout;
wire [30:0] sdpb_inst_14_dout_w;
wire [3:3] sdpb_inst_14_dout;
wire [30:0] sdpb_inst_15_dout_w;
wire [3:3] sdpb_inst_15_dout;
wire [30:0] sdpb_inst_16_dout_w;
wire [0:0] sdpb_inst_16_dout;
wire [30:0] sdpb_inst_17_dout_w;
wire [0:0] sdpb_inst_17_dout;
wire [30:0] sdpb_inst_18_dout_w;
wire [1:1] sdpb_inst_18_dout;
wire [30:0] sdpb_inst_19_dout_w;
wire [1:1] sdpb_inst_19_dout;
wire [30:0] sdpb_inst_20_dout_w;
wire [2:2] sdpb_inst_20_dout;
wire [30:0] sdpb_inst_21_dout_w;
wire [2:2] sdpb_inst_21_dout;
wire [30:0] sdpb_inst_22_dout_w;
wire [3:3] sdpb_inst_22_dout;
wire [30:0] sdpb_inst_23_dout_w;
wire [3:3] sdpb_inst_23_dout;
wire [30:0] sdpb_inst_24_dout_w;
wire [0:0] sdpb_inst_24_dout;
wire [30:0] sdpb_inst_25_dout_w;
wire [1:1] sdpb_inst_25_dout;
wire [30:0] sdpb_inst_26_dout_w;
wire [2:2] sdpb_inst_26_dout;
wire [30:0] sdpb_inst_27_dout_w;
wire [3:3] sdpb_inst_27_dout;
wire [27:0] sdpb_inst_28_dout_w;
wire [3:0] sdpb_inst_28_dout;
wire dff_q_0;
wire dff_q_1;
wire dff_q_2;
wire mux_o_16;
wire mux_o_17;
wire mux_o_18;
wire mux_o_19;
wire mux_o_20;
wire mux_o_21;
wire mux_o_39;
wire mux_o_40;
wire mux_o_41;
wire mux_o_42;
wire mux_o_43;
wire mux_o_44;
wire mux_o_62;
wire mux_o_63;
wire mux_o_64;
wire mux_o_65;
wire mux_o_66;
wire mux_o_67;
wire mux_o_85;
wire mux_o_86;
wire mux_o_87;
wire mux_o_88;
wire mux_o_89;
wire mux_o_90;
wire gw_gnd;

assign gw_gnd = 1'b0;

LUT5 lut_inst_0 (
  .F(lut_f_0),
  .I0(ada[11]),
  .I1(ada[12]),
  .I2(ada[13]),
  .I3(ada[14]),
  .I4(ada[15])
);
defparam lut_inst_0.INIT = 32'h10000000;
LUT5 lut_inst_1 (
  .F(lut_f_1),
  .I0(adb[12]),
  .I1(adb[13]),
  .I2(adb[14]),
  .I3(adb[15]),
  .I4(adb[16])
);
defparam lut_inst_1.INIT = 32'h10000000;
SDPB sdpb_inst_0 (
    .DO({sdpb_inst_0_dout_w[30:0],sdpb_inst_0_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[4],din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_0.READ_MODE = 1'b0;
defparam sdpb_inst_0.BIT_WIDTH_0 = 2;
defparam sdpb_inst_0.BIT_WIDTH_1 = 1;
defparam sdpb_inst_0.BLK_SEL_0 = 3'b000;
defparam sdpb_inst_0.BLK_SEL_1 = 3'b000;
defparam sdpb_inst_0.RESET_MODE = "SYNC";

SDPB sdpb_inst_1 (
    .DO({sdpb_inst_1_dout_w[30:0],sdpb_inst_1_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[4],din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_1.READ_MODE = 1'b0;
defparam sdpb_inst_1.BIT_WIDTH_0 = 2;
defparam sdpb_inst_1.BIT_WIDTH_1 = 1;
defparam sdpb_inst_1.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_1.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_1.RESET_MODE = "SYNC";

SDPB sdpb_inst_2 (
    .DO({sdpb_inst_2_dout_w[30:0],sdpb_inst_2_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[4],din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_2.READ_MODE = 1'b0;
defparam sdpb_inst_2.BIT_WIDTH_0 = 2;
defparam sdpb_inst_2.BIT_WIDTH_1 = 1;
defparam sdpb_inst_2.BLK_SEL_0 = 3'b010;
defparam sdpb_inst_2.BLK_SEL_1 = 3'b010;
defparam sdpb_inst_2.RESET_MODE = "SYNC";

SDPB sdpb_inst_3 (
    .DO({sdpb_inst_3_dout_w[30:0],sdpb_inst_3_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[4],din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_3.READ_MODE = 1'b0;
defparam sdpb_inst_3.BIT_WIDTH_0 = 2;
defparam sdpb_inst_3.BIT_WIDTH_1 = 1;
defparam sdpb_inst_3.BLK_SEL_0 = 3'b011;
defparam sdpb_inst_3.BLK_SEL_1 = 3'b011;
defparam sdpb_inst_3.RESET_MODE = "SYNC";

SDPB sdpb_inst_4 (
    .DO({sdpb_inst_4_dout_w[30:0],sdpb_inst_4_dout[1]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[5],din[1]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_4.READ_MODE = 1'b0;
defparam sdpb_inst_4.BIT_WIDTH_0 = 2;
defparam sdpb_inst_4.BIT_WIDTH_1 = 1;
defparam sdpb_inst_4.BLK_SEL_0 = 3'b000;
defparam sdpb_inst_4.BLK_SEL_1 = 3'b000;
defparam sdpb_inst_4.RESET_MODE = "SYNC";

SDPB sdpb_inst_5 (
    .DO({sdpb_inst_5_dout_w[30:0],sdpb_inst_5_dout[1]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[5],din[1]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_5.READ_MODE = 1'b0;
defparam sdpb_inst_5.BIT_WIDTH_0 = 2;
defparam sdpb_inst_5.BIT_WIDTH_1 = 1;
defparam sdpb_inst_5.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_5.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_5.RESET_MODE = "SYNC";

SDPB sdpb_inst_6 (
    .DO({sdpb_inst_6_dout_w[30:0],sdpb_inst_6_dout[1]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[5],din[1]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_6.READ_MODE = 1'b0;
defparam sdpb_inst_6.BIT_WIDTH_0 = 2;
defparam sdpb_inst_6.BIT_WIDTH_1 = 1;
defparam sdpb_inst_6.BLK_SEL_0 = 3'b010;
defparam sdpb_inst_6.BLK_SEL_1 = 3'b010;
defparam sdpb_inst_6.RESET_MODE = "SYNC";

SDPB sdpb_inst_7 (
    .DO({sdpb_inst_7_dout_w[30:0],sdpb_inst_7_dout[1]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[5],din[1]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_7.READ_MODE = 1'b0;
defparam sdpb_inst_7.BIT_WIDTH_0 = 2;
defparam sdpb_inst_7.BIT_WIDTH_1 = 1;
defparam sdpb_inst_7.BLK_SEL_0 = 3'b011;
defparam sdpb_inst_7.BLK_SEL_1 = 3'b011;
defparam sdpb_inst_7.RESET_MODE = "SYNC";

SDPB sdpb_inst_8 (
    .DO({sdpb_inst_8_dout_w[30:0],sdpb_inst_8_dout[2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[6],din[2]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_8.READ_MODE = 1'b0;
defparam sdpb_inst_8.BIT_WIDTH_0 = 2;
defparam sdpb_inst_8.BIT_WIDTH_1 = 1;
defparam sdpb_inst_8.BLK_SEL_0 = 3'b000;
defparam sdpb_inst_8.BLK_SEL_1 = 3'b000;
defparam sdpb_inst_8.RESET_MODE = "SYNC";

SDPB sdpb_inst_9 (
    .DO({sdpb_inst_9_dout_w[30:0],sdpb_inst_9_dout[2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[6],din[2]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_9.READ_MODE = 1'b0;
defparam sdpb_inst_9.BIT_WIDTH_0 = 2;
defparam sdpb_inst_9.BIT_WIDTH_1 = 1;
defparam sdpb_inst_9.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_9.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_9.RESET_MODE = "SYNC";

SDPB sdpb_inst_10 (
    .DO({sdpb_inst_10_dout_w[30:0],sdpb_inst_10_dout[2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[6],din[2]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_10.READ_MODE = 1'b0;
defparam sdpb_inst_10.BIT_WIDTH_0 = 2;
defparam sdpb_inst_10.BIT_WIDTH_1 = 1;
defparam sdpb_inst_10.BLK_SEL_0 = 3'b010;
defparam sdpb_inst_10.BLK_SEL_1 = 3'b010;
defparam sdpb_inst_10.RESET_MODE = "SYNC";

SDPB sdpb_inst_11 (
    .DO({sdpb_inst_11_dout_w[30:0],sdpb_inst_11_dout[2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[6],din[2]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_11.READ_MODE = 1'b0;
defparam sdpb_inst_11.BIT_WIDTH_0 = 2;
defparam sdpb_inst_11.BIT_WIDTH_1 = 1;
defparam sdpb_inst_11.BLK_SEL_0 = 3'b011;
defparam sdpb_inst_11.BLK_SEL_1 = 3'b011;
defparam sdpb_inst_11.RESET_MODE = "SYNC";

SDPB sdpb_inst_12 (
    .DO({sdpb_inst_12_dout_w[30:0],sdpb_inst_12_dout[3]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[7],din[3]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_12.READ_MODE = 1'b0;
defparam sdpb_inst_12.BIT_WIDTH_0 = 2;
defparam sdpb_inst_12.BIT_WIDTH_1 = 1;
defparam sdpb_inst_12.BLK_SEL_0 = 3'b000;
defparam sdpb_inst_12.BLK_SEL_1 = 3'b000;
defparam sdpb_inst_12.RESET_MODE = "SYNC";

SDPB sdpb_inst_13 (
    .DO({sdpb_inst_13_dout_w[30:0],sdpb_inst_13_dout[3]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[7],din[3]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_13.READ_MODE = 1'b0;
defparam sdpb_inst_13.BIT_WIDTH_0 = 2;
defparam sdpb_inst_13.BIT_WIDTH_1 = 1;
defparam sdpb_inst_13.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_13.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_13.RESET_MODE = "SYNC";

SDPB sdpb_inst_14 (
    .DO({sdpb_inst_14_dout_w[30:0],sdpb_inst_14_dout[3]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[7],din[3]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_14.READ_MODE = 1'b0;
defparam sdpb_inst_14.BIT_WIDTH_0 = 2;
defparam sdpb_inst_14.BIT_WIDTH_1 = 1;
defparam sdpb_inst_14.BLK_SEL_0 = 3'b010;
defparam sdpb_inst_14.BLK_SEL_1 = 3'b010;
defparam sdpb_inst_14.RESET_MODE = "SYNC";

SDPB sdpb_inst_15 (
    .DO({sdpb_inst_15_dout_w[30:0],sdpb_inst_15_dout[3]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[7],din[3]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_15.READ_MODE = 1'b0;
defparam sdpb_inst_15.BIT_WIDTH_0 = 2;
defparam sdpb_inst_15.BIT_WIDTH_1 = 1;
defparam sdpb_inst_15.BLK_SEL_0 = 3'b011;
defparam sdpb_inst_15.BLK_SEL_1 = 3'b011;
defparam sdpb_inst_15.RESET_MODE = "SYNC";

SDPB sdpb_inst_16 (
    .DO({sdpb_inst_16_dout_w[30:0],sdpb_inst_16_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[4],din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_16.READ_MODE = 1'b0;
defparam sdpb_inst_16.BIT_WIDTH_0 = 2;
defparam sdpb_inst_16.BIT_WIDTH_1 = 1;
defparam sdpb_inst_16.BLK_SEL_0 = 3'b100;
defparam sdpb_inst_16.BLK_SEL_1 = 3'b100;
defparam sdpb_inst_16.RESET_MODE = "SYNC";

SDPB sdpb_inst_17 (
    .DO({sdpb_inst_17_dout_w[30:0],sdpb_inst_17_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[4],din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_17.READ_MODE = 1'b0;
defparam sdpb_inst_17.BIT_WIDTH_0 = 2;
defparam sdpb_inst_17.BIT_WIDTH_1 = 1;
defparam sdpb_inst_17.BLK_SEL_0 = 3'b101;
defparam sdpb_inst_17.BLK_SEL_1 = 3'b101;
defparam sdpb_inst_17.RESET_MODE = "SYNC";

SDPB sdpb_inst_18 (
    .DO({sdpb_inst_18_dout_w[30:0],sdpb_inst_18_dout[1]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[5],din[1]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_18.READ_MODE = 1'b0;
defparam sdpb_inst_18.BIT_WIDTH_0 = 2;
defparam sdpb_inst_18.BIT_WIDTH_1 = 1;
defparam sdpb_inst_18.BLK_SEL_0 = 3'b100;
defparam sdpb_inst_18.BLK_SEL_1 = 3'b100;
defparam sdpb_inst_18.RESET_MODE = "SYNC";

SDPB sdpb_inst_19 (
    .DO({sdpb_inst_19_dout_w[30:0],sdpb_inst_19_dout[1]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[5],din[1]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_19.READ_MODE = 1'b0;
defparam sdpb_inst_19.BIT_WIDTH_0 = 2;
defparam sdpb_inst_19.BIT_WIDTH_1 = 1;
defparam sdpb_inst_19.BLK_SEL_0 = 3'b101;
defparam sdpb_inst_19.BLK_SEL_1 = 3'b101;
defparam sdpb_inst_19.RESET_MODE = "SYNC";

SDPB sdpb_inst_20 (
    .DO({sdpb_inst_20_dout_w[30:0],sdpb_inst_20_dout[2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[6],din[2]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_20.READ_MODE = 1'b0;
defparam sdpb_inst_20.BIT_WIDTH_0 = 2;
defparam sdpb_inst_20.BIT_WIDTH_1 = 1;
defparam sdpb_inst_20.BLK_SEL_0 = 3'b100;
defparam sdpb_inst_20.BLK_SEL_1 = 3'b100;
defparam sdpb_inst_20.RESET_MODE = "SYNC";

SDPB sdpb_inst_21 (
    .DO({sdpb_inst_21_dout_w[30:0],sdpb_inst_21_dout[2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[6],din[2]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_21.READ_MODE = 1'b0;
defparam sdpb_inst_21.BIT_WIDTH_0 = 2;
defparam sdpb_inst_21.BIT_WIDTH_1 = 1;
defparam sdpb_inst_21.BLK_SEL_0 = 3'b101;
defparam sdpb_inst_21.BLK_SEL_1 = 3'b101;
defparam sdpb_inst_21.RESET_MODE = "SYNC";

SDPB sdpb_inst_22 (
    .DO({sdpb_inst_22_dout_w[30:0],sdpb_inst_22_dout[3]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[7],din[3]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_22.READ_MODE = 1'b0;
defparam sdpb_inst_22.BIT_WIDTH_0 = 2;
defparam sdpb_inst_22.BIT_WIDTH_1 = 1;
defparam sdpb_inst_22.BLK_SEL_0 = 3'b100;
defparam sdpb_inst_22.BLK_SEL_1 = 3'b100;
defparam sdpb_inst_22.RESET_MODE = "SYNC";

SDPB sdpb_inst_23 (
    .DO({sdpb_inst_23_dout_w[30:0],sdpb_inst_23_dout[3]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[7],din[3]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_23.READ_MODE = 1'b0;
defparam sdpb_inst_23.BIT_WIDTH_0 = 2;
defparam sdpb_inst_23.BIT_WIDTH_1 = 1;
defparam sdpb_inst_23.BLK_SEL_0 = 3'b101;
defparam sdpb_inst_23.BLK_SEL_1 = 3'b101;
defparam sdpb_inst_23.RESET_MODE = "SYNC";

SDPB sdpb_inst_24 (
    .DO({sdpb_inst_24_dout_w[30:0],sdpb_inst_24_dout[0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[4],din[0]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_24.READ_MODE = 1'b0;
defparam sdpb_inst_24.BIT_WIDTH_0 = 2;
defparam sdpb_inst_24.BIT_WIDTH_1 = 1;
defparam sdpb_inst_24.BLK_SEL_0 = 3'b110;
defparam sdpb_inst_24.BLK_SEL_1 = 3'b110;
defparam sdpb_inst_24.RESET_MODE = "SYNC";

SDPB sdpb_inst_25 (
    .DO({sdpb_inst_25_dout_w[30:0],sdpb_inst_25_dout[1]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[5],din[1]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_25.READ_MODE = 1'b0;
defparam sdpb_inst_25.BIT_WIDTH_0 = 2;
defparam sdpb_inst_25.BIT_WIDTH_1 = 1;
defparam sdpb_inst_25.BLK_SEL_0 = 3'b110;
defparam sdpb_inst_25.BLK_SEL_1 = 3'b110;
defparam sdpb_inst_25.RESET_MODE = "SYNC";

SDPB sdpb_inst_26 (
    .DO({sdpb_inst_26_dout_w[30:0],sdpb_inst_26_dout[2]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[6],din[2]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_26.READ_MODE = 1'b0;
defparam sdpb_inst_26.BIT_WIDTH_0 = 2;
defparam sdpb_inst_26.BIT_WIDTH_1 = 1;
defparam sdpb_inst_26.BLK_SEL_0 = 3'b110;
defparam sdpb_inst_26.BLK_SEL_1 = 3'b110;
defparam sdpb_inst_26.RESET_MODE = "SYNC";

SDPB sdpb_inst_27 (
    .DO({sdpb_inst_27_dout_w[30:0],sdpb_inst_27_dout[3]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({ada[15],ada[14],ada[13]}),
    .BLKSELB({adb[16],adb[15],adb[14]}),
    .ADA({ada[12:0],gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[7],din[3]}),
    .ADB(adb[13:0])
);

defparam sdpb_inst_27.READ_MODE = 1'b0;
defparam sdpb_inst_27.BIT_WIDTH_0 = 2;
defparam sdpb_inst_27.BIT_WIDTH_1 = 1;
defparam sdpb_inst_27.BLK_SEL_0 = 3'b110;
defparam sdpb_inst_27.BLK_SEL_1 = 3'b110;
defparam sdpb_inst_27.RESET_MODE = "SYNC";

SDPB sdpb_inst_28 (
    .DO({sdpb_inst_28_dout_w[27:0],sdpb_inst_28_dout[3:0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_0}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_1}),
    .ADA({ada[10:0],gw_gnd,gw_gnd,gw_gnd}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[7:4],din[3:0]}),
    .ADB({adb[11:0],gw_gnd,gw_gnd})
);

defparam sdpb_inst_28.READ_MODE = 1'b0;
defparam sdpb_inst_28.BIT_WIDTH_0 = 8;
defparam sdpb_inst_28.BIT_WIDTH_1 = 4;
defparam sdpb_inst_28.BLK_SEL_0 = 3'b001;
defparam sdpb_inst_28.BLK_SEL_1 = 3'b001;
defparam sdpb_inst_28.RESET_MODE = "SYNC";

DFFE dff_inst_0 (
  .Q(dff_q_0),
  .D(adb[16]),
  .CLK(clkb),
  .CE(ceb)
);
DFFE dff_inst_1 (
  .Q(dff_q_1),
  .D(adb[15]),
  .CLK(clkb),
  .CE(ceb)
);
DFFE dff_inst_2 (
  .Q(dff_q_2),
  .D(adb[14]),
  .CLK(clkb),
  .CE(ceb)
);
MUX2 mux_inst_16 (
  .O(mux_o_16),
  .I0(sdpb_inst_0_dout[0]),
  .I1(sdpb_inst_1_dout[0]),
  .S0(dff_q_2)
);
MUX2 mux_inst_17 (
  .O(mux_o_17),
  .I0(sdpb_inst_2_dout[0]),
  .I1(sdpb_inst_3_dout[0]),
  .S0(dff_q_2)
);
MUX2 mux_inst_18 (
  .O(mux_o_18),
  .I0(sdpb_inst_16_dout[0]),
  .I1(sdpb_inst_17_dout[0]),
  .S0(dff_q_2)
);
MUX2 mux_inst_19 (
  .O(mux_o_19),
  .I0(sdpb_inst_24_dout[0]),
  .I1(sdpb_inst_28_dout[0]),
  .S0(dff_q_2)
);
MUX2 mux_inst_20 (
  .O(mux_o_20),
  .I0(mux_o_16),
  .I1(mux_o_17),
  .S0(dff_q_1)
);
MUX2 mux_inst_21 (
  .O(mux_o_21),
  .I0(mux_o_18),
  .I1(mux_o_19),
  .S0(dff_q_1)
);
MUX2 mux_inst_22 (
  .O(dout[0]),
  .I0(mux_o_20),
  .I1(mux_o_21),
  .S0(dff_q_0)
);
MUX2 mux_inst_39 (
  .O(mux_o_39),
  .I0(sdpb_inst_4_dout[1]),
  .I1(sdpb_inst_5_dout[1]),
  .S0(dff_q_2)
);
MUX2 mux_inst_40 (
  .O(mux_o_40),
  .I0(sdpb_inst_6_dout[1]),
  .I1(sdpb_inst_7_dout[1]),
  .S0(dff_q_2)
);
MUX2 mux_inst_41 (
  .O(mux_o_41),
  .I0(sdpb_inst_18_dout[1]),
  .I1(sdpb_inst_19_dout[1]),
  .S0(dff_q_2)
);
MUX2 mux_inst_42 (
  .O(mux_o_42),
  .I0(sdpb_inst_25_dout[1]),
  .I1(sdpb_inst_28_dout[1]),
  .S0(dff_q_2)
);
MUX2 mux_inst_43 (
  .O(mux_o_43),
  .I0(mux_o_39),
  .I1(mux_o_40),
  .S0(dff_q_1)
);
MUX2 mux_inst_44 (
  .O(mux_o_44),
  .I0(mux_o_41),
  .I1(mux_o_42),
  .S0(dff_q_1)
);
MUX2 mux_inst_45 (
  .O(dout[1]),
  .I0(mux_o_43),
  .I1(mux_o_44),
  .S0(dff_q_0)
);
MUX2 mux_inst_62 (
  .O(mux_o_62),
  .I0(sdpb_inst_8_dout[2]),
  .I1(sdpb_inst_9_dout[2]),
  .S0(dff_q_2)
);
MUX2 mux_inst_63 (
  .O(mux_o_63),
  .I0(sdpb_inst_10_dout[2]),
  .I1(sdpb_inst_11_dout[2]),
  .S0(dff_q_2)
);
MUX2 mux_inst_64 (
  .O(mux_o_64),
  .I0(sdpb_inst_20_dout[2]),
  .I1(sdpb_inst_21_dout[2]),
  .S0(dff_q_2)
);
MUX2 mux_inst_65 (
  .O(mux_o_65),
  .I0(sdpb_inst_26_dout[2]),
  .I1(sdpb_inst_28_dout[2]),
  .S0(dff_q_2)
);
MUX2 mux_inst_66 (
  .O(mux_o_66),
  .I0(mux_o_62),
  .I1(mux_o_63),
  .S0(dff_q_1)
);
MUX2 mux_inst_67 (
  .O(mux_o_67),
  .I0(mux_o_64),
  .I1(mux_o_65),
  .S0(dff_q_1)
);
MUX2 mux_inst_68 (
  .O(dout[2]),
  .I0(mux_o_66),
  .I1(mux_o_67),
  .S0(dff_q_0)
);
MUX2 mux_inst_85 (
  .O(mux_o_85),
  .I0(sdpb_inst_12_dout[3]),
  .I1(sdpb_inst_13_dout[3]),
  .S0(dff_q_2)
);
MUX2 mux_inst_86 (
  .O(mux_o_86),
  .I0(sdpb_inst_14_dout[3]),
  .I1(sdpb_inst_15_dout[3]),
  .S0(dff_q_2)
);
MUX2 mux_inst_87 (
  .O(mux_o_87),
  .I0(sdpb_inst_22_dout[3]),
  .I1(sdpb_inst_23_dout[3]),
  .S0(dff_q_2)
);
MUX2 mux_inst_88 (
  .O(mux_o_88),
  .I0(sdpb_inst_27_dout[3]),
  .I1(sdpb_inst_28_dout[3]),
  .S0(dff_q_2)
);
MUX2 mux_inst_89 (
  .O(mux_o_89),
  .I0(mux_o_85),
  .I1(mux_o_86),
  .S0(dff_q_1)
);
MUX2 mux_inst_90 (
  .O(mux_o_90),
  .I0(mux_o_87),
  .I1(mux_o_88),
  .S0(dff_q_1)
);
MUX2 mux_inst_91 (
  .O(dout[3]),
  .I0(mux_o_89),
  .I1(mux_o_90),
  .S0(dff_q_0)
);
endmodule //foregroundVRam_00
