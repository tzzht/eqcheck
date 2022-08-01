///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2005 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 12.1
//  \   \         Description : Xilinx Functional Simulation Library Component
//  /   /                  16K-Bit Data and 2K-Bit Parity Dual Port Block RAM
// /___/   /\     Filename : RAMB16BWE_S36.v
// \   \  /  \    Timestamp : Thu Jul 13 04:24:13 PST 2009
//  \___\/\___\
//
// Revision:
//    07/13/09 - Initial version.
// End Revision
`timescale 1 ps/1 ps
module RAMB16BWE_S36 (
	DO,
	DOP,
	ADDR,
	CLK,
	DI,
	DIP,
	EN,
	SSR,
	WE

);

output [31:0] DO;
output [3:0] DOP;

input CLK;
input EN;
input SSR;
input [3:0] WE;
input [31:0] DI;
input [3:0] DIP;
input [8:0] ADDR;

parameter [35:0] INIT = 36'h0;
parameter [255:0] INITP_00 = 256'h0;
parameter [255:0] INITP_01 = 256'h0;
parameter [255:0] INITP_02 = 256'h0;
parameter [255:0] INITP_03 = 256'h0;
parameter [255:0] INITP_04 = 256'h0;
parameter [255:0] INITP_05 = 256'h0;
parameter [255:0] INITP_06 = 256'h0;
parameter [255:0] INITP_07 = 256'h0;
parameter [255:0] INIT_00 = 256'h0;
parameter [255:0] INIT_01 = 256'h0;
parameter [255:0] INIT_02 = 256'h0;
parameter [255:0] INIT_03 = 256'h0;
parameter [255:0] INIT_04 = 256'h0;
parameter [255:0] INIT_05 = 256'h0;
parameter [255:0] INIT_06 = 256'h0;
parameter [255:0] INIT_07 = 256'h0;
parameter [255:0] INIT_08 = 256'h0;
parameter [255:0] INIT_09 = 256'h0;
parameter [255:0] INIT_0A = 256'h0;
parameter [255:0] INIT_0B = 256'h0;
parameter [255:0] INIT_0C = 256'h0;
parameter [255:0] INIT_0D = 256'h0;
parameter [255:0] INIT_0E = 256'h0;
parameter [255:0] INIT_0F = 256'h0;
parameter [255:0] INIT_10 = 256'h0;
parameter [255:0] INIT_11 = 256'h0;
parameter [255:0] INIT_12 = 256'h0;
parameter [255:0] INIT_13 = 256'h0;
parameter [255:0] INIT_14 = 256'h0;
parameter [255:0] INIT_15 = 256'h0;
parameter [255:0] INIT_16 = 256'h0;
parameter [255:0] INIT_17 = 256'h0;
parameter [255:0] INIT_18 = 256'h0;
parameter [255:0] INIT_19 = 256'h0;
parameter [255:0] INIT_1A = 256'h0;
parameter [255:0] INIT_1B = 256'h0;
parameter [255:0] INIT_1C = 256'h0;
parameter [255:0] INIT_1D = 256'h0;
parameter [255:0] INIT_1E = 256'h0;
parameter [255:0] INIT_1F = 256'h0;
parameter [255:0] INIT_20 = 256'h0;
parameter [255:0] INIT_21 = 256'h0;
parameter [255:0] INIT_22 = 256'h0;
parameter [255:0] INIT_23 = 256'h0;
parameter [255:0] INIT_24 = 256'h0;
parameter [255:0] INIT_25 = 256'h0;
parameter [255:0] INIT_26 = 256'h0;
parameter [255:0] INIT_27 = 256'h0;
parameter [255:0] INIT_28 = 256'h0;
parameter [255:0] INIT_29 = 256'h0;
parameter [255:0] INIT_2A = 256'h0;
parameter [255:0] INIT_2B = 256'h0;
parameter [255:0] INIT_2C = 256'h0;
parameter [255:0] INIT_2D = 256'h0;
parameter [255:0] INIT_2E = 256'h0;
parameter [255:0] INIT_2F = 256'h0;
parameter [255:0] INIT_30 = 256'h0;
parameter [255:0] INIT_31 = 256'h0;
parameter [255:0] INIT_32 = 256'h0;
parameter [255:0] INIT_33 = 256'h0;
parameter [255:0] INIT_34 = 256'h0;
parameter [255:0] INIT_35 = 256'h0;
parameter [255:0] INIT_36 = 256'h0;
parameter [255:0] INIT_37 = 256'h0;
parameter [255:0] INIT_38 = 256'h0;
parameter [255:0] INIT_39 = 256'h0;
parameter [255:0] INIT_3A = 256'h0;
parameter [255:0] INIT_3B = 256'h0;
parameter [255:0] INIT_3C = 256'h0;
parameter [255:0] INIT_3D = 256'h0;
parameter [255:0] INIT_3E = 256'h0;
parameter [255:0] INIT_3F = 256'h0;
parameter [35:0] SRVAL = 36'h0;
parameter WRITE_MODE = "WRITE_FIRST";

RAMB36E1 #(.INIT_A(INIT[35:0]), .SRVAL_A(SRVAL[35:0]), .WRITE_MODE_A(WRITE_MODE),  .READ_WIDTH_A(36), .READ_WIDTH_B(0), .WRITE_WIDTH_A(36), .WRITE_WIDTH_B(0),  .SIM_DEVICE("VIRTEX6"), .INIT_00(INIT_00), .INIT_01(INIT_01), .INIT_02(INIT_02), .INIT_03(INIT_03), .INIT_04(INIT_04), .INIT_05(INIT_05), .INIT_06(INIT_06), .INIT_07(INIT_07), .INIT_08(INIT_08), .INIT_09(INIT_09), .INIT_0A(INIT_0A), .INIT_0B(INIT_0B), .INIT_0C(INIT_0C), .INIT_0D(INIT_0D), .INIT_0E(INIT_0E), .INIT_0F(INIT_0F), .INIT_10(INIT_10), .INIT_11(INIT_11), .INIT_12(INIT_12), .INIT_13(INIT_13), .INIT_14(INIT_14), .INIT_15(INIT_15), .INIT_16(INIT_16), .INIT_17(INIT_17), .INIT_18(INIT_18), .INIT_19(INIT_19), .INIT_1A(INIT_1A), .INIT_1B(INIT_1B), .INIT_1C(INIT_1C), .INIT_1D(INIT_1D), .INIT_1E(INIT_1E), .INIT_1F(INIT_1F), .INIT_20(INIT_20), .INIT_21(INIT_21), .INIT_22(INIT_22), .INIT_23(INIT_23), .INIT_24(INIT_24), .INIT_25(INIT_25), .INIT_26(INIT_26), .INIT_27(INIT_27), .INIT_28(INIT_28), .INIT_29(INIT_29), .INIT_2A(INIT_2A), .INIT_2B(INIT_2B), .INIT_2C(INIT_2C), .INIT_2D(INIT_2D), .INIT_2E(INIT_2E), .INIT_2F(INIT_2F), .INIT_30(INIT_30), .INIT_31(INIT_31), .INIT_32(INIT_32), .INIT_33(INIT_33), .INIT_34(INIT_34), .INIT_35(INIT_35), .INIT_36(INIT_36), .INIT_37(INIT_37), .INIT_38(INIT_38), .INIT_39(INIT_39), .INIT_3A(INIT_3A), .INIT_3B(INIT_3B), .INIT_3C(INIT_3C), .INIT_3D(INIT_3D), .INIT_3E(INIT_3E), .INIT_3F(INIT_3F), .INITP_00(INITP_00), .INITP_01(INITP_01), .INITP_02(INITP_02), .INITP_03(INITP_03), .INITP_04(INITP_04), .INITP_05(INITP_05), .INITP_06(INITP_06), .INITP_07(INITP_07)) R1 (.CASCADEOUTA(), .CASCADEOUTB(), .DBITERR(), .SBITERR(), .DOADO(DO[31:0]), .DOBDO(), .DOPADOP(DOP[3:0]), .DOPBDOP(), .ECCPARITY(), .RDADDRECC(), .ADDRARDADDR({2'b0, ADDR, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .ADDRBWRADDR(16'b0), .CASCADEINA(1'b0), .CASCADEINB(1'b0), .CLKARDCLK(CLK), .CLKBWRCLK(1'b0), .DIADI(DI[31:0]), .DIBDI(1'b0), .DIPADIP(DIP[3:0]), .DIPBDIP(1'b0), .ENARDEN(EN), .ENBWREN(1'b0), .INJECTDBITERR(1'b0), .INJECTSBITERR(1'b0), .REGCEAREGCE(1'b0), .REGCEB(1'b0), .RSTRAMARSTRAM(SSR), .RSTRAMB(1'b0), .RSTREGARSTREG(SSR), .RSTREGB(1'b0), .WEA(WE), .WEBWE(8'b0)); 
endmodule
