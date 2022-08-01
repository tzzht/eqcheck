// $Header:  $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2005 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 12.1
//  \   \         Description : Xilinx Functional Simulation Library Component
//  /   /                  User Interface to Global Clock, Reset and 3-State Controls for SPARTAN3
// /___/   /\     Filename : STARTUP_SPARTAN3.v
// \   \  /  \    Timestamp : Fri Jul 30 10:58:23 PST 2010
//  \___\/\___\
//
// Revision:
//    07/30/10 - Initial version.
// End Revision
`timescale 1 ps/1 ps

module STARTUP_SPARTAN3 (CLK, GSR, GTS);

    input  CLK, GSR, GTS;

STARTUPE2 S7 (
             		.CFGCLK(),
             		.CFGMCLK(),
             		.EOS(),
             		.PREQ(),
             		.CLK(CLK),
             		.GSR(GSR),
             		.GTS(GTS),
             		.KEYCLEARB(1'b0),
             		.PACK(1'b0),
             		.USRCCLKO(1'b0),
             		.USRCCLKTS(1'b0),
             		.USRDONEO(1'b0),
             		.USRDONETS(1'b0));

endmodule
