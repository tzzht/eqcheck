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
//  /   /             3-State Output Buffer with SLOW Slew 12 ma Drive (Discontinue in 13.1)
// /___/   /\     Filename : OBUFT_S_12.v
// \   \  /  \    Timestamp : Thu Aug 12 16:22:11 PDT 2010

//  \___\/\___\
//
// Revision:
//    03/04/09 - Initial version

`timescale  1 ps / 1 ps


module OBUFT_S_12 (O, I, T);

    output O;

    input  I, T;

	OBUFT #( .SLEW("SLOW"), .DRIVE(12)) O1 (.O(O), .I(I), .T(T));


endmodule


