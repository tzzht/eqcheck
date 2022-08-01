// $Header:  $
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
// /___/   /\     Filename : RAMB16_S4_S36.v
// \   \  /  \    Timestamp : Thu Jul 13 5:29:47 PST 2009
//  \___\/\___\
//
// Revision:
//    07/13/09 - Initial version.
// End Revision

`timescale  1 ps / 1 ps

module RAMB16_S4_S36 (DOA, DOB, DOPB, ADDRA, ADDRB, CLKA, CLKB, DIA, DIB, DIPB, ENA, ENB, SSRA, SSRB, WEA, WEB);

    parameter [3:0] INIT_A = 4'h0;
    parameter [35:0] INIT_B = 36'h0;
    parameter [3:0] SRVAL_A = 4'h0;
    parameter [35:0] SRVAL_B = 36'h0;
    parameter WRITE_MODE_A = "WRITE_FIRST";
    parameter WRITE_MODE_B = "WRITE_FIRST";
    parameter SIM_COLLISION_CHECK = "ALL";
    localparam SETUP_ALL = 1000;
    localparam SETUP_READ_FIRST = 3000;

    parameter [255:0] INIT_00 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_01 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_02 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_03 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_07 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_08 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_09 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_0A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_0B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_0C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_0D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_0E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_0F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_14 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_15 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_16 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_17 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_18 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_19 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_1A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_1B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_1C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_1D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_1E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_1F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_20 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_21 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_22 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_23 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_24 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_25 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_26 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_27 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_28 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_29 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_2A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_2B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_2C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_2D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_2E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_2F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_30 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_31 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_32 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_33 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_34 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_35 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_36 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_37 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_38 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_39 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_3A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_3B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_3C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_3D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_3E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INIT_3F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INITP_00 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INITP_01 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INITP_02 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INITP_03 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INITP_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INITP_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INITP_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter [255:0] INITP_07 = 256'h0000000000000000000000000000000000000000000000000000000000000000;

    output [3:0] DOA;

    input [11:0] ADDRA;
    input [3:0] DIA;
    input ENA, CLKA, WEA, SSRA;

    output [31:0] DOB;
    output [3:0] DOPB;

    input [8:0] ADDRB;
    input [31:0] DIB;
    input [3:0] DIPB;
    input ENB, CLKB, WEB, SSRB;
    wire [27:0] dummy_doa;
RAMB36E1 #(.INIT_A(INIT_A[3:0]), .INIT_B(INIT_B[35:0]),  .SRVAL_A(SRVAL_A[3:0]), .SRVAL_B(SRVAL_B[35:0]), .WRITE_MODE_A(WRITE_MODE_A),  .WRITE_MODE_B(WRITE_MODE_B), .READ_WIDTH_A(4), .READ_WIDTH_B(36), .WRITE_WIDTH_A(4), .WRITE_WIDTH_B(36),  .SIM_COLLISION_CHECK(SIM_COLLISION_CHECK), .SIM_DEVICE("VIRTEX6"),  .INIT_00(INIT_00),  .RSTREG_PRIORITY_A("REGCE"), .RSTREG_PRIORITY_B("REGCE"), .INIT_01(INIT_01), .INIT_02(INIT_02), .INIT_03(INIT_03), .INIT_04(INIT_04), .INIT_05(INIT_05), .INIT_06(INIT_06), .INIT_07(INIT_07), .INIT_08(INIT_08), .INIT_09(INIT_09), .INIT_0A(INIT_0A), .INIT_0B(INIT_0B), .INIT_0C(INIT_0C), .INIT_0D(INIT_0D), .INIT_0E(INIT_0E), .INIT_0F(INIT_0F), .INIT_10(INIT_10), .INIT_11(INIT_11), .INIT_12(INIT_12), .INIT_13(INIT_13), .INIT_14(INIT_14), .INIT_15(INIT_15), .INIT_16(INIT_16), .INIT_17(INIT_17), .INIT_18(INIT_18), .INIT_19(INIT_19), .INIT_1A(INIT_1A), .INIT_1B(INIT_1B), .INIT_1C(INIT_1C), .INIT_1D(INIT_1D), .INIT_1E(INIT_1E), .INIT_1F(INIT_1F), .INIT_20(INIT_20), .INIT_21(INIT_21), .INIT_22(INIT_22), .INIT_23(INIT_23), .INIT_24(INIT_24), .INIT_25(INIT_25), .INIT_26(INIT_26), .INIT_27(INIT_27), .INIT_28(INIT_28), .INIT_29(INIT_29), .INIT_2A(INIT_2A), .INIT_2B(INIT_2B), .INIT_2C(INIT_2C), .INIT_2D(INIT_2D), .INIT_2E(INIT_2E), .INIT_2F(INIT_2F), .INIT_30(INIT_30), .INIT_31(INIT_31), .INIT_32(INIT_32), .INIT_33(INIT_33), .INIT_34(INIT_34), .INIT_35(INIT_35), .INIT_36(INIT_36), .INIT_37(INIT_37), .INIT_38(INIT_38), .INIT_39(INIT_39), .INIT_3A(INIT_3A), .INIT_3B(INIT_3B), .INIT_3C(INIT_3C), .INIT_3D(INIT_3D), .INIT_3E(INIT_3E), .INIT_3F(INIT_3F), .INITP_00(INITP_00), .INITP_01(INITP_01), .INITP_02(INITP_02), .INITP_03(INITP_03), .INITP_04(INITP_04), .INITP_05(INITP_05), .INITP_06(INITP_06), .INITP_07(INITP_07)) R1 (.CASCADEOUTA(), .CASCADEOUTB(), .DBITERR(), .SBITERR(), .DOADO({dummy_doa, DOA}), .DOBDO(DOB), .DOPADOP(), .DOPBDOP(DOPB), .ECCPARITY(), .RDADDRECC(), .ADDRARDADDR({2'b0, ADDRA[11:0], 1'b0, 1'b0}), .ADDRBWRADDR({2'b0, ADDRB[8:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CASCADEINA(1'b0), .CASCADEINB(1'b0), .CLKARDCLK(CLKA), .CLKBWRCLK(CLKB), .DIADI({28'b0, DIA}), .DIBDI(DIB), .DIPADIP(4'b0), .DIPBDIP(DIPB), .ENARDEN(ENA), .ENBWREN(ENB), .INJECTDBITERR(1'b0), .INJECTSBITERR(1'b0), .REGCEAREGCE(1'b0), .REGCEB(1'b0), .RSTRAMARSTRAM(SSRA), .RSTRAMB(SSRB), .RSTREGARSTREG(SSRA), .RSTREGB(SSRB), .WEA({3'b0,WEA}), .WEBWE({4'b0, WEB, WEB, WEB, WEB})); 
endmodule
