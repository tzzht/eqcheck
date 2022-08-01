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
//  /   /             2-input XNOR Gate (Discontinue in 13.1)
// /___/   /\     Filename : XNOR2.v
// \   \  /  \    Timestamp : Wed Mar  4 16:15:59 PST 2009

//  \___\/\___\
//
// Revision:
//    03/04/09 - Initial version

`timescale  1 ps / 1 ps


module XNOR2 (O, I0, I1);

    output O;

    input  I0, I1;

    LUT2 #(.INIT(4'h9)) L2 (O, I0, I1);

endmodule
