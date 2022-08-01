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
//  /   /             Bi-Directional Buffer with LVCMOS25 I/O Standard FAST Slew 24 ma Drive (Discontinue in 13.1)
// /___/   /\     Filename : IOBUF_LVCMOS25_F_24.v
// \   \  /  \    Timestamp : Wed Dec 15 17:34:41 PST 2010

//  \___\/\___\
//
// Revision:
//    03/03/09 - Initial version

`timescale  1 ps / 1 ps


module IOBUF_LVCMOS25_F_24 (O, IO, I, T);

    output O;

    inout  IO;

    input  I, T;

        OBUFT #(.IOSTANDARD("LVCMOS25"), .SLEW("FAST"), .DRIVE(24)) O1 (.O(IO), .I(I), .T(T)); 
	IBUF #(.IOSTANDARD("LVCMOS25"))  I0 (.O(O), .I(IO));
        

endmodule


