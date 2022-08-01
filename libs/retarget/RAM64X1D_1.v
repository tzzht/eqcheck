// $Header: $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2009 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 12.1
//  \   \         Description : Xilinx Retarget Simulation Library Component
//  /   /             Static Dual Port Synchronous RAM 64-Deep by 1-Wide (Discontinue in 13.1)
// /___/   /\     Filename : RAM64X1D_1.v
// \   \  /  \    Timestamp : Tue Aug 19 11:10:39 PST 2009
//  \___\/\___\
//
// Revision:
//    08/19/09 - Initial version
//    08/23/13 - PR683925 - add invertible pin support.

`timescale  1 ps / 1 ps

module RAM64X1D_1 (DPO, SPO, A0, A1, A2, A3, A4, A5, D, DPRA0, DPRA1, DPRA2, DPRA3, DPRA4, DPRA5, WCLK, WE);

    parameter [63:0] INIT = 64'h0000000000000000;
    parameter [0:0] IS_WCLK_INVERTED = 1'b0;

    output DPO, SPO;

    input  A0, A1, A2, A3, A4, A5, D, DPRA0, DPRA1, DPRA2, DPRA3, DPRA4, DPRA5, WCLK, WE;

    RAM64X1D #(.INIT(INIT), .IS_WCLK_INVERTED(IS_WCLK_INVERTED)) R4 (
	       .DPO (DPO),
	       .SPO (SPO),
	       .A0 (A0),
	       .A1 (A1),
	       .A2 (A2),
	       .A3 (A3),
	       .A4 (A4),
	       .A5 (A5),
	       .D (D),
	       .DPRA0 (DPRA0),
	       .DPRA1 (DPRA1),
	       .DPRA2 (DPRA2),
	       .DPRA3 (DPRA3),
	       .DPRA4 (DPRA4),
	       .DPRA5 (DPRA5),
	       .WCLK (~WCLK),
	       .WE (WE));

endmodule
