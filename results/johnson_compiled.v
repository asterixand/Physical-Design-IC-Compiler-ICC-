// IC Compiler II Version S-2021.06-SP4 Verilog Writer
// Generated on 2/11/2025 at 22:20:3
// Library Name: johnson
// Block Name: johnson
// User Label: 
// Write Command: write_verilog -include { all } ../results/johnson_compiled.v
module johnson ( clk , r , out , VDD , VSS ) ;
input  clk ;
input  r ;
output [0:7] out ;
input  VDD ;
input  VSS ;

wire n1 ;
wire n2 ;
supply0 VSS ;
supply1 VDD ;
wire copt_net_0 ;
wire copt_net_2 ;
wire copt_net_4 ;
wire gre_net_5 ;

SAEDRVT14_FDPRBQ_V2LP_0P5 out_reg_7_ ( .D ( copt_net_0 ) , .CK ( clk ) , 
    .RD ( n1 ) , .Q ( out[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 out_reg_0_ ( .D ( n2 ) , .CK ( clk ) , .RD ( n1 ) , 
    .Q ( out[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2_0P5 out_reg_1_ ( .D ( out[0] ) , .CK ( clk ) , 
    .RD ( n1 ) , .Q ( out[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2_0P5 out_reg_2_ ( .D ( out[1] ) , .CK ( clk ) , 
    .RD ( n1 ) , .Q ( out[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 out_reg_3_ ( .D ( gre_net_5 ) , .CK ( clk ) , 
    .RD ( n1 ) , .Q ( out[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 out_reg_4_ ( .D ( copt_net_2 ) , .CK ( clk ) , 
    .RD ( n1 ) , .Q ( out[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 out_reg_5_ ( .D ( out[4] ) , .CK ( clk ) , 
    .RD ( n1 ) , .Q ( out[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FDPRBQ_V2LP_0P5 out_reg_6_ ( .D ( copt_net_4 ) , .CK ( clk ) , 
    .RD ( n1 ) , .Q ( out[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_S_0P5 U3 ( .A ( r ) , .X ( n1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_INV_3 U5 ( .A ( out[7] ) , .X ( n2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_432 ( .A ( out[6] ) , .X ( copt_net_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_434 ( .A ( out[3] ) , .X ( copt_net_2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V3_2 copt_h_inst_444 ( .A ( out[5] ) , .X ( copt_net_4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_DEL_R2V3_2 gre_h_inst_446 ( .A ( out[2] ) , .X ( gre_net_5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SAEDRVT14_FILL_ECO_1 \xofiller!SAEDRVT14_FILL_ECO_1!x31820y24000 () ;
endmodule


