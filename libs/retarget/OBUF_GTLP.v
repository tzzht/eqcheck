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
//  /   /             Output Buffer with GTLP I/O Standard (Discontinue in 13.1)
// /___/   /\     Filename : OBUF_GTLP.v
// \   \  /  \    Timestamp : Thu Aug 12 15:35:15 PDT 2010

//  \___\/\___\
//
// Revision:
//    03/04/09 - Initial version

`timescale  1 ps / 1 ps


module OBUF_GTLP (O, I);

    output O;

    input  I;

	OBUF #(.IOSTANDARD("GTLP") ) O4 (.O(O), .I(I));


endmodule


