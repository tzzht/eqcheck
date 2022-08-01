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
//  /   /             2-to-1 Look-Up-Table Multiplexer with Local Output (Discontinue in 13.1)
// /___/   /\     Filename : MUXF8_L.v
// \   \  /  \    Timestamp : Tue Mar 05 12:52:10 PST 2009
//  \___\/\___\
//
// Revision:
//    03/05/09 - Initial version

`timescale  1 ps / 1 ps

module MUXF8_L (LO, I0, I1, S);

    output LO;

    input  I0, I1, S;

    MUXF8 M8 (.O(LO), .I0(I0), .I1(I1), .S(S));

endmodule
