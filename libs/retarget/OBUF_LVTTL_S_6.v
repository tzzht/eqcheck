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
//  /   /             Output Buffer with LVTTL I/O Standard SLOW Slew 6 ma Drive (Discontinue in 13.1)
// /___/   /\     Filename : OBUF_LVTTL_S_6.v
// \   \  /  \    Timestamp : Thu Aug 12 15:36:00 PDT 2010

//  \___\/\___\
//
// Revision:
//    03/04/09 - Initial version

`timescale  1 ps / 1 ps


module OBUF_LVTTL_S_6 (O, I);

    output O;

    input  I;

	OBUF #(.IOSTANDARD("LVTTL"), .SLEW("SLOW"), .DRIVE(6)) O4 (.O(O), .I(I));


endmodule


