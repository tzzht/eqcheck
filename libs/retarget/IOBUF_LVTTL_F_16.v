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
//  /   /             Bi-Directional Buffer with LVTTL I/O Standard FAST Slew 16 ma Drive (Discontinue in 13.1)
// /___/   /\     Filename : IOBUF_LVTTL_F_16.v
// \   \  /  \    Timestamp : Wed Dec 15 17:35:06 PST 2010

//  \___\/\___\
//
// Revision:
//    03/03/09 - Initial version

`timescale  1 ps / 1 ps


module IOBUF_LVTTL_F_16 (O, IO, I, T);

    output O;

    inout  IO;

    input  I, T;

        OBUFT #(.IOSTANDARD("LVTTL"), .SLEW("FAST"), .DRIVE(16)) O1 (.O(IO), .I(I), .T(T)); 
	IBUF #(.IOSTANDARD("LVTTL"))  I0 (.O(O), .I(IO));
        

endmodule


