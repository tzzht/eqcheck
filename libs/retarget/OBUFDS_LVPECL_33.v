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
//  /   /             Differential Signaling Buffer with LVPECL_33 I/O Standard (Discontinue in 13.1)
// /___/   /\     Filename : OBUFDS_LVPECL_33.v
// \   \  /  \    Timestamp : Wed Mar  4 10:31:25 PST 2009

//  \___\/\___\
//
// Revision:
//    03/04/09 - Initial version

`timescale  1 ps / 1 ps


module OBUFDS_LVPECL_33 (O, OB, I);

    output O, OB;

    input  I;

	OBUFDS #(.IOSTANDARD("LVPECL_33")) O0 (.O(O), .I(I), .OB(OB));


endmodule


