
module johnson ( SCANINPORT, SCANOUTPORT, SE, clk, r, out );
  output [0:7] out;
  input SCANINPORT, SE, clk, r;
  output SCANOUTPORT;
  wire   n8, n10, n12, n13, n14, n15, n16, n17, n18;

  SDFFARX1_RVT \out_reg[7]  ( .D(out[6]), .SI(n12), .SE(SE), .CLK(clk), .RSTB(
        n8), .Q(out[7]), .QN(n10) );
  SDFFARX1_RVT \out_reg[0]  ( .D(n10), .SI(SCANINPORT), .SE(SE), .CLK(clk), 
        .RSTB(n8), .Q(out[0]), .QN(n18) );
  SDFFARX1_RVT \out_reg[1]  ( .D(out[0]), .SI(n18), .SE(SE), .CLK(clk), .RSTB(
        n8), .Q(out[1]), .QN(n17) );
  SDFFARX1_RVT \out_reg[2]  ( .D(out[1]), .SI(n17), .SE(SE), .CLK(clk), .RSTB(
        n8), .Q(out[2]), .QN(n16) );
  SDFFARX1_RVT \out_reg[3]  ( .D(out[2]), .SI(n16), .SE(SE), .CLK(clk), .RSTB(
        n8), .Q(out[3]), .QN(n15) );
  SDFFARX1_RVT \out_reg[4]  ( .D(out[3]), .SI(n15), .SE(SE), .CLK(clk), .RSTB(
        n8), .Q(out[4]), .QN(n14) );
  SDFFARX1_RVT \out_reg[5]  ( .D(out[4]), .SI(n14), .SE(SE), .CLK(clk), .RSTB(
        n8), .Q(out[5]), .QN(n13) );
  SDFFARX1_RVT \out_reg[6]  ( .D(out[5]), .SI(n13), .SE(SE), .CLK(clk), .RSTB(
        n8), .Q(out[6]), .QN(n12) );
  INVX2_RVT U12 ( .A(r), .Y(n8) );
  NBUFFX2_RVT U13 ( .A(out[7]), .Y(SCANOUTPORT) );
endmodule

