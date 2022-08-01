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
//  /   /             3-State Output Buffer with LVCMOS33 I/O Standard FAST Slew 16 ma Drive (Discontinue in 13.1)
// /___/   /\     Filename : OBUFT_LVCMOS33_F_16.v
// \   \  /  \    Timestamp : Thu Aug 12 16:21:42 PDT 2010

//  \___\/\___\
//
// Revision:
//    03/04/09 - Initial version

`timescale  1 ps / 1 ps


module OBUFT_LVCMOS33_F_16 (O, I, T);

    output O;

    input  I, T;

	OBUFT #(.IOSTANDARD("LVCMOS33"), .SLEW("FAST"), .DRIVE(16)) O1 (.O(O), .I(I), .T(T));


endmodule


