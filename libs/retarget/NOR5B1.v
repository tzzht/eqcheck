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
//  /   /             5-input NOR Gate (Discontinue in 13.1)
// /___/   /\     Filename : NOR5B1.v
// \   \  /  \    Timestamp : Wed Mar  4 15:36:17 PST 2009

//  \___\/\___\
//
// Revision:
//    03/04/09 - Initial version

`timescale  1 ps / 1 ps


module NOR5B1 (O, I0, I1, I2, I3, I4);

    output O;

    input  I0, I1, I2, I3, I4;

    LUT5 #(.INIT(32'h00000002)) L5 (O, I0, I1, I2, I3, I4);

endmodule