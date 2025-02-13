/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Tue Feb 15 14:47:17 2022
/////////////////////////////////////////////////////////////


module up_counter ( clk, reset, counter );
  output [3:0] counter;
  input clk, reset;
  wire   N2, N3, N4, n1, n2, n3, n4, n5;

  SAEDRVT14_FDPRBQ_V2_0P5 counter_up_reg_0_ ( .D(n3), .CK(clk), .RD(n1), .Q(
        counter[0]) );
  SAEDRVT14_FDPRBQ_V2_0P5 counter_up_reg_1_ ( .D(N2), .CK(clk), .RD(n1), .Q(
        counter[1]) );
  SAEDRVT14_FDPRBQ_V2_0P5 counter_up_reg_2_ ( .D(N3), .CK(clk), .RD(n1), .Q(
        counter[2]) );
  SAEDRVT14_FDPRBQ_V2_0P5 counter_up_reg_3_ ( .D(N4), .CK(clk), .RD(n1), .Q(
        counter[3]) );
  SAEDRVT14_INV_S_0P75 U3 ( .A(reset), .X(n1) );
  SAEDRVT14_EO2_V1_0P75 U8 ( .A1(counter[3]), .A2(n4), .X(N4) );
  SAEDRVT14_EO2_V1_0P75 U9 ( .A1(n2), .A2(n5), .X(N3) );
  SAEDRVT14_EO2_V1_0P75 U10 ( .A1(counter[1]), .A2(counter[0]), .X(N2) );
  SAEDRVT14_NR2_ISO_1 U11 ( .CK(n5), .EN(n2), .X(n4) );
  SAEDRVT14_ND2_CDC_1 U12 ( .A1(counter[1]), .A2(counter[0]), .X(n5) );
  SAEDRVT14_INV_1 U13 ( .A(counter[2]), .X(n2) );
  SAEDRVT14_INV_1 U14 ( .A(counter[0]), .X(n3) );
endmodule

