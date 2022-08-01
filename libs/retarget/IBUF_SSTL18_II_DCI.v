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
//  /   /             Input Buffer with SSTL18_II_DCI I/O Standard (Discontinue in 13.1)
// /___/   /\     Filename : IBUF_SSTL18_II_DCI.v
// \   \  /  \    Timestamp : Thu Dec  3 09:59:18 PST 2009

//  \___\/\___\
//
// Revision:
//    03/06/09 - Initial version

`timescale  1 ps / 1 ps


module IBUF_SSTL18_II_DCI (O, I);

    output O;

    input  I;

	IBUF #(.IOSTANDARD("SSTL18_II_DCI")) I0 (.O(O), .I(I));


endmodule

