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
//  /   /             3-State Output Buffer with HSTL_IV I/O Standard (Discontinue in 13.1)
// /___/   /\     Filename : OBUFT_HSTL_IV.v
// \   \  /  \    Timestamp : Thu Aug 12 16:21:22 PDT 2010

//  \___\/\___\
//
// Revision:
//    03/04/09 - Initial version

`timescale  1 ps / 1 ps


module OBUFT_HSTL_IV (O, I, T);

    output O;

    input  I, T;

	OBUFT #(.IOSTANDARD("HSTL_IV") ) O1 (.O(O), .I(I), .T(T));


endmodule


