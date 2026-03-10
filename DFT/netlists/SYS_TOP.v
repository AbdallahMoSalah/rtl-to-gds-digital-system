/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sun Oct  5 01:36:38 2025
/////////////////////////////////////////////////////////////


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
wand  OUT;
  assign N0 = SEL;

  MX2X8M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
wand  OUT;
  assign N0 = SEL;

  MX2X8M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_7 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module SYS_CTRL_test_1 ( CLK, RST, ALU_OUT, OUT_Valid, RdData, RdData_Valid, 
        RX_P_DATA, RX_D_VLD, ALU_FUN, EN, CLK_EN, Address, WrEn, RdEn, WrData, 
        TX_P_DATA, TX_D_VLD, clk_div_en, test_si, test_so, test_se );
  input [15:0] ALU_OUT;
  input [7:0] RdData;
  input [7:0] RX_P_DATA;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  output [7:0] TX_P_DATA;
  input CLK, RST, OUT_Valid, RdData_Valid, RX_D_VLD, test_si, test_se;
  output EN, CLK_EN, WrEn, RdEn, TX_D_VLD, clk_div_en, test_so;
  wire   n9, n10, n11, n12, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n76, n77, n78, n79, n80, n81;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
wand  CLK;
  assign test_so = n77;

  SDFFRX1M \Frame_reg[2]  ( .D(n73), .SI(n80), .SE(test_se), .CK(CLK), .RN(RST), .Q(n79), .QN(n10) );
  SDFFRX1M \Frame_reg[0]  ( .D(n75), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n81), .QN(n12) );
  SDFFRX1M \Frame_reg[1]  ( .D(n74), .SI(n81), .SE(test_se), .CK(CLK), .RN(RST), .Q(n80), .QN(n11) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n76), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(n26), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(n78), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .SI(n31), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[3]) );
  SDFFRX1M \Frame_reg[3]  ( .D(n72), .SI(n79), .SE(test_se), .CK(CLK), .RN(RST), .Q(n78), .QN(n9) );
  NOR2X2M U14 ( .A(n71), .B(n10), .Y(Address[2]) );
  NOR2X2M U15 ( .A(n70), .B(n10), .Y(ALU_FUN[2]) );
  NOR2X2M U16 ( .A(n70), .B(n12), .Y(ALU_FUN[0]) );
  INVX2M U17 ( .A(WrEn), .Y(n24) );
  INVX2M U18 ( .A(n56), .Y(n29) );
  INVX2M U19 ( .A(n70), .Y(EN) );
  NAND2X2M U20 ( .A(n69), .B(n31), .Y(n57) );
  AND2X2M U21 ( .A(n57), .B(n45), .Y(n71) );
  NOR4X1M U22 ( .A(n26), .B(n31), .C(n77), .D(n76), .Y(n59) );
  NOR2X2M U23 ( .A(n24), .B(n22), .Y(WrData[0]) );
  NOR2X2M U24 ( .A(n24), .B(n21), .Y(WrData[1]) );
  NOR2X2M U25 ( .A(n24), .B(n20), .Y(WrData[2]) );
  NOR2X2M U26 ( .A(n24), .B(n19), .Y(WrData[3]) );
  NOR2X2M U27 ( .A(n24), .B(n18), .Y(WrData[4]) );
  NOR2X2M U28 ( .A(n24), .B(n17), .Y(WrData[7]) );
  NAND3X2M U29 ( .A(n57), .B(n37), .C(n58), .Y(WrEn) );
  NAND3X2M U30 ( .A(n76), .B(n77), .C(n41), .Y(n37) );
  NAND3X2M U31 ( .A(n68), .B(n25), .C(n38), .Y(TX_D_VLD) );
  INVX2M U32 ( .A(n59), .Y(n25) );
  INVX2M U33 ( .A(n38), .Y(n28) );
  INVX2M U34 ( .A(n68), .Y(n23) );
  INVX2M U35 ( .A(n45), .Y(RdEn) );
  OAI21X2M U36 ( .A0(n50), .A1(n49), .B0(n30), .Y(n56) );
  NAND2X2M U37 ( .A(n76), .B(n31), .Y(n49) );
  INVX2M U38 ( .A(n42), .Y(n30) );
  AND4X2M U39 ( .A(n54), .B(n26), .C(n76), .D(n55), .Y(n44) );
  NOR3X2M U40 ( .A(n17), .B(n16), .C(n19), .Y(n54) );
  INVX2M U41 ( .A(n55), .Y(n32) );
  NOR2X2M U42 ( .A(n36), .B(n59), .Y(n70) );
  NOR3X2M U43 ( .A(n76), .B(current_state[3]), .C(n26), .Y(n69) );
  NOR2X2M U44 ( .A(n31), .B(current_state[0]), .Y(n41) );
  INVX2M U45 ( .A(current_state[1]), .Y(n76) );
  NAND3X2M U46 ( .A(current_state[1]), .B(n77), .C(n41), .Y(n45) );
  INVX2M U47 ( .A(current_state[3]), .Y(n77) );
  INVX2M U48 ( .A(current_state[2]), .Y(n31) );
  INVX2M U49 ( .A(current_state[0]), .Y(n26) );
  OAI21X2M U50 ( .A0(n71), .A1(n12), .B0(n58), .Y(Address[0]) );
  NOR2X2M U51 ( .A(n71), .B(n11), .Y(Address[1]) );
  NOR2X4M U52 ( .A(n71), .B(n9), .Y(Address[3]) );
  OAI2BB1X2M U53 ( .A0N(ALU_OUT[8]), .A1N(n59), .B0(n67), .Y(TX_P_DATA[0]) );
  AOI22X1M U54 ( .A0(RdData[0]), .A1(n23), .B0(ALU_OUT[0]), .B1(n28), .Y(n67)
         );
  OAI2BB1X2M U55 ( .A0N(ALU_OUT[9]), .A1N(n59), .B0(n66), .Y(TX_P_DATA[1]) );
  AOI22X1M U56 ( .A0(RdData[1]), .A1(n23), .B0(ALU_OUT[1]), .B1(n28), .Y(n66)
         );
  OAI2BB1X2M U57 ( .A0N(ALU_OUT[10]), .A1N(n59), .B0(n65), .Y(TX_P_DATA[2]) );
  AOI22X1M U58 ( .A0(RdData[2]), .A1(n23), .B0(ALU_OUT[2]), .B1(n28), .Y(n65)
         );
  OAI2BB1X2M U59 ( .A0N(ALU_OUT[11]), .A1N(n59), .B0(n64), .Y(TX_P_DATA[3]) );
  AOI22X1M U60 ( .A0(RdData[3]), .A1(n23), .B0(ALU_OUT[3]), .B1(n28), .Y(n64)
         );
  OAI2BB1X2M U61 ( .A0N(ALU_OUT[12]), .A1N(n59), .B0(n63), .Y(TX_P_DATA[4]) );
  AOI22X1M U62 ( .A0(RdData[4]), .A1(n23), .B0(ALU_OUT[4]), .B1(n28), .Y(n63)
         );
  OAI2BB1X2M U63 ( .A0N(ALU_OUT[13]), .A1N(n59), .B0(n62), .Y(TX_P_DATA[5]) );
  AOI22X1M U64 ( .A0(RdData[5]), .A1(n23), .B0(ALU_OUT[5]), .B1(n28), .Y(n62)
         );
  OAI2BB1X2M U65 ( .A0N(ALU_OUT[14]), .A1N(n59), .B0(n61), .Y(TX_P_DATA[6]) );
  AOI22X1M U66 ( .A0(RdData[6]), .A1(n23), .B0(ALU_OUT[6]), .B1(n28), .Y(n61)
         );
  OAI2BB1X2M U67 ( .A0N(ALU_OUT[15]), .A1N(n59), .B0(n60), .Y(TX_P_DATA[7]) );
  AOI22X1M U68 ( .A0(RdData[7]), .A1(n23), .B0(ALU_OUT[7]), .B1(n28), .Y(n60)
         );
  NAND3X2M U69 ( .A(current_state[3]), .B(current_state[1]), .C(n41), .Y(n38)
         );
  NAND3X2M U70 ( .A(current_state[3]), .B(n76), .C(n41), .Y(n58) );
  NAND3X2M U71 ( .A(RdData_Valid), .B(current_state[2]), .C(n69), .Y(n68) );
  AND2X2M U72 ( .A(RX_P_DATA[5]), .B(WrEn), .Y(WrData[5]) );
  AND2X2M U73 ( .A(RX_P_DATA[6]), .B(WrEn), .Y(WrData[6]) );
  NOR3X2M U74 ( .A(n76), .B(current_state[0]), .C(n77), .Y(n36) );
  OAI211X2M U75 ( .A0(n26), .A1(n51), .B0(n38), .C0(n52), .Y(next_state[0]) );
  OAI21X2M U76 ( .A0(n76), .A1(n16), .B0(n55), .Y(n51) );
  AOI32X1M U77 ( .A0(n22), .A1(n18), .A2(n47), .B0(RdData_Valid), .B1(RdEn), 
        .Y(n52) );
  NOR3X2M U78 ( .A(n76), .B(current_state[0]), .C(n32), .Y(n42) );
  XNOR2X2M U79 ( .A(current_state[0]), .B(current_state[3]), .Y(n50) );
  OAI31X1M U80 ( .A0(n33), .A1(current_state[1]), .A2(current_state[0]), .B0(
        n34), .Y(next_state[3]) );
  AOI21X2M U81 ( .A0(current_state[2]), .A1(RX_D_VLD), .B0(current_state[3]), 
        .Y(n33) );
  AOI31X2M U82 ( .A0(RX_P_DATA[0]), .A1(n35), .A2(RX_P_DATA[4]), .B0(n36), .Y(
        n34) );
  OAI22X1M U83 ( .A0(n29), .A1(n22), .B0(n56), .B1(n12), .Y(n75) );
  OAI22X1M U84 ( .A0(n29), .A1(n21), .B0(n56), .B1(n11), .Y(n74) );
  OAI22X1M U85 ( .A0(n29), .A1(n20), .B0(n56), .B1(n10), .Y(n73) );
  OAI22X1M U86 ( .A0(n29), .A1(n19), .B0(n56), .B1(n9), .Y(n72) );
  NOR2X2M U87 ( .A(current_state[2]), .B(current_state[3]), .Y(n55) );
  NAND4X2M U88 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(next_state[2]) );
  AOI222X1M U89 ( .A0(OUT_Valid), .A1(n36), .B0(n41), .B1(n16), .C0(n42), .C1(
        RX_D_VLD), .Y(n40) );
  AOI31X2M U90 ( .A0(n22), .A1(n18), .A2(n35), .B0(RdEn), .Y(n39) );
  NAND4X2M U91 ( .A(n27), .B(n30), .C(n45), .D(n46), .Y(next_state[1]) );
  INVX2M U92 ( .A(n36), .Y(n27) );
  AOI31X2M U93 ( .A0(RX_P_DATA[4]), .A1(RX_P_DATA[0]), .A2(n47), .B0(n48), .Y(
        n46) );
  OAI33X2M U94 ( .A0(n32), .A1(RX_D_VLD), .A2(n76), .B0(n49), .B1(n50), .B2(
        n16), .Y(n48) );
  INVX2M U95 ( .A(RX_D_VLD), .Y(n16) );
  INVX2M U96 ( .A(RX_P_DATA[0]), .Y(n22) );
  INVX2M U97 ( .A(RX_P_DATA[3]), .Y(n19) );
  AND4X2M U98 ( .A(RX_P_DATA[6]), .B(RX_P_DATA[2]), .C(n43), .D(n44), .Y(n35)
         );
  NOR2X2M U99 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[1]), .Y(n43) );
  INVX2M U100 ( .A(RX_P_DATA[1]), .Y(n21) );
  INVX2M U101 ( .A(RX_P_DATA[2]), .Y(n20) );
  AND4X2M U102 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[1]), .C(n53), .D(n44), .Y(n47)
         );
  NOR2X2M U103 ( .A(RX_P_DATA[6]), .B(RX_P_DATA[2]), .Y(n53) );
  INVX2M U104 ( .A(RX_P_DATA[4]), .Y(n18) );
  INVX2M U105 ( .A(RX_P_DATA[7]), .Y(n17) );
  NOR2X2M U106 ( .A(n70), .B(n11), .Y(ALU_FUN[1]) );
  NOR2X2M U107 ( .A(n70), .B(n9), .Y(ALU_FUN[3]) );
  OAI31X1M U108 ( .A0(n49), .A1(current_state[0]), .A2(n77), .B0(n70), .Y(
        CLK_EN) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U9 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NAND2X2M U10 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U11 ( .A(a[5]), .Y(n3) );
  INVX2M U12 ( .A(n18), .Y(n2) );
  NAND2X2M U13 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U14 ( .A(a[4]), .Y(n5) );
  INVX2M U15 ( .A(n18), .Y(n4) );
  NAND2X2M U16 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U17 ( .A(a[3]), .Y(n7) );
  INVX2M U18 ( .A(n18), .Y(n6) );
  NAND2X2M U19 ( .A(n2), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n8) );
  NAND2X2M U21 ( .A(n6), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U22 ( .A(a[1]), .Y(n9) );
  NAND2X2M U23 ( .A(n4), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U24 ( .A(a[0]), .Y(n10) );
  NAND2X2M U25 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U26 ( .A(a[6]), .Y(n1) );
  INVX2M U27 ( .A(b[6]), .Y(n12) );
  INVX2M U28 ( .A(b[1]), .Y(n17) );
  INVX2M U29 ( .A(b[2]), .Y(n16) );
  INVX2M U30 ( .A(b[3]), .Y(n15) );
  INVX2M U31 ( .A(b[4]), .Y(n14) );
  INVX2M U32 ( .A(b[5]), .Y(n13) );
  INVX2M U33 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[6]), .Y(n3) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  NAND2X2M U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U9 ( .A(B[1]), .Y(n8) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U4 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U5 ( .A(B[7]), .Y(n8) );
  XNOR2X2M U6 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  INVX2M U7 ( .A(A[6]), .Y(n9) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n7), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n6), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U18 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U19 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U20 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U21 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n18) );
  XNOR2X2M U23 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U24 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U25 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U26 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U27 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U29 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U30 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U35 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U37 ( .A(A[7]), .Y(n32) );
  INVX2M U38 ( .A(A[6]), .Y(n33) );
  INVX2M U39 ( .A(A[1]), .Y(n38) );
  INVX2M U40 ( .A(A[0]), .Y(n39) );
  INVX2M U41 ( .A(A[3]), .Y(n36) );
  INVX2M U42 ( .A(A[2]), .Y(n37) );
  INVX2M U43 ( .A(A[5]), .Y(n34) );
  INVX2M U44 ( .A(A[4]), .Y(n35) );
  INVX2M U45 ( .A(B[6]), .Y(n25) );
  INVX2M U46 ( .A(B[0]), .Y(n31) );
  INVX2M U47 ( .A(B[2]), .Y(n29) );
  INVX2M U48 ( .A(B[3]), .Y(n28) );
  INVX2M U49 ( .A(B[7]), .Y(n24) );
  INVX2M U50 ( .A(B[4]), .Y(n27) );
  INVX2M U51 ( .A(B[5]), .Y(n26) );
  INVX2M U52 ( .A(B[1]), .Y(n30) );
  NOR2X1M U54 ( .A(n32), .B(n24), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n32), .B(n25), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n32), .B(n26), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n32), .B(n27), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n32), .B(n28), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n32), .B(n29), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n32), .B(n30), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n32), .B(n31), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n24), .B(n33), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n25), .B(n33), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n26), .B(n33), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n27), .B(n33), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n28), .B(n33), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n29), .B(n33), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n30), .B(n33), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n31), .B(n33), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n24), .B(n34), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n25), .B(n34), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n26), .B(n34), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n27), .B(n34), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n28), .B(n34), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n29), .B(n34), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n30), .B(n34), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n31), .B(n34), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n24), .B(n35), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n25), .B(n35), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n26), .B(n35), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n27), .B(n35), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n28), .B(n35), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n29), .B(n35), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n30), .B(n35), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n31), .B(n35), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n24), .B(n36), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n25), .B(n36), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n26), .B(n36), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n27), .B(n36), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n28), .B(n36), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n29), .B(n36), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n30), .B(n36), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n31), .B(n36), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n24), .B(n37), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n25), .B(n37), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n26), .B(n37), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n27), .B(n37), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n28), .B(n37), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n29), .B(n37), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n30), .B(n37), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n31), .B(n37), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n24), .B(n38), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n25), .B(n38), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n26), .B(n38), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n27), .B(n38), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n28), .B(n38), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n29), .B(n38), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n30), .B(n38), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n31), .B(n38), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n24), .B(n39), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n25), .B(n39), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n26), .B(n39), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n27), .B(n39), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n28), .B(n39), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n29), .B(n39), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n30), .B(n39), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n31), .B(n39), .Y(PRODUCT[0]) );
  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, n15, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_test_1 ( A, B, EN, ALU_FUN, CLK, RST, ALU_OUT, OUT_VALID, test_si, 
        test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, CLK, RST, test_si, test_se;
  output OUT_VALID;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N157, N158, N159, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n3, n4, n5, n6,
         n7, n8, n9, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157;
  wire   [15:0] ALU_OUT_Comb;

  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_Comb[15]), .SI(ALU_OUT[14]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_Comb[14]), .SI(ALU_OUT[13]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_Comb[13]), .SI(ALU_OUT[12]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_Comb[12]), .SI(ALU_OUT[11]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_Comb[11]), .SI(ALU_OUT[10]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_Comb[10]), .SI(ALU_OUT[9]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_Comb[9]), .SI(ALU_OUT[8]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[9]) );
  SDFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_Comb[8]), .SI(ALU_OUT[7]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[8]) );
  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .SI(ALU_OUT[6]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .SI(ALU_OUT[5]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .SI(ALU_OUT[4]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .SI(ALU_OUT[3]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .SI(ALU_OUT[2]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .SI(ALU_OUT[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .SI(ALU_OUT[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[0]) );
  SDFFRQX2M OUT_VALID_reg ( .D(EN), .SI(ALU_OUT[15]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(OUT_VALID) );
  BUFX2M U7 ( .A(A[6]), .Y(n28) );
  INVX2M U23 ( .A(EN), .Y(n157) );
  OAI2BB1X2M U24 ( .A0N(N118), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[9]) );
  OAI2BB1X2M U25 ( .A0N(N119), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[10]) );
  OAI2BB1X2M U26 ( .A0N(N120), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[11]) );
  OAI2BB1X2M U27 ( .A0N(N121), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[12]) );
  OAI2BB1X2M U28 ( .A0N(N122), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[13]) );
  OAI2BB1X2M U29 ( .A0N(N123), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[14]) );
  OAI2BB1X2M U30 ( .A0N(N124), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[15]) );
  OAI2BB1X2M U31 ( .A0N(n156), .A1N(n122), .B0(n118), .Y(n64) );
  OAI2BB1X2M U32 ( .A0N(n117), .A1N(n116), .B0(n118), .Y(n65) );
  NOR2BX2M U33 ( .AN(n123), .B(n153), .Y(n54) );
  AND2X2M U34 ( .A(n116), .B(n122), .Y(n59) );
  NOR2BX2M U35 ( .AN(n52), .B(n157), .Y(n48) );
  AND2X2M U36 ( .A(n123), .B(n122), .Y(n67) );
  NAND2X2M U37 ( .A(EN), .B(n140), .Y(n49) );
  BUFX2M U38 ( .A(n58), .Y(n30) );
  NOR2X2M U39 ( .A(n124), .B(n153), .Y(n58) );
  INVX2M U40 ( .A(n117), .Y(n153) );
  INVX2M U41 ( .A(n108), .Y(n154) );
  INVX2M U42 ( .A(n124), .Y(n156) );
  NOR3BX2M U43 ( .AN(n122), .B(n155), .C(ALU_FUN[2]), .Y(n66) );
  INVX2M U44 ( .A(n4), .Y(n139) );
  NOR3X2M U45 ( .A(n153), .B(ALU_FUN[2]), .C(n155), .Y(n52) );
  OAI222X1M U46 ( .A0(n72), .A1(n139), .B0(n4), .B1(n73), .C0(n53), .C1(n146), 
        .Y(n71) );
  AOI221XLM U47 ( .A0(n28), .A1(n63), .B0(n64), .B1(n145), .C0(n30), .Y(n73)
         );
  AOI221XLM U48 ( .A0(n63), .A1(n145), .B0(n28), .B1(n65), .C0(n59), .Y(n72)
         );
  NOR2X2M U49 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n123) );
  AND3X2M U50 ( .A(n123), .B(n152), .C(n3), .Y(n63) );
  NAND3X2M U51 ( .A(n156), .B(n152), .C(n3), .Y(n53) );
  NAND2X2M U52 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n124) );
  AOI31X2M U53 ( .A0(n92), .A1(n93), .A2(n94), .B0(n157), .Y(ALU_OUT_Comb[2])
         );
  AOI22X1M U54 ( .A0(N102), .A1(n67), .B0(N93), .B1(n54), .Y(n92) );
  AOI221XLM U55 ( .A0(n8), .A1(n154), .B0(n30), .B1(n149), .C0(n95), .Y(n94)
         );
  AOI222X1M U56 ( .A0(N111), .A1(n52), .B0(n7), .B1(n59), .C0(N127), .C1(n66), 
        .Y(n93) );
  AOI31X2M U57 ( .A0(n86), .A1(n87), .A2(n88), .B0(n157), .Y(ALU_OUT_Comb[3])
         );
  AOI22X1M U58 ( .A0(N103), .A1(n67), .B0(N94), .B1(n54), .Y(n86) );
  AOI221XLM U59 ( .A0(n9), .A1(n154), .B0(n30), .B1(n148), .C0(n89), .Y(n88)
         );
  AOI222X1M U60 ( .A0(N112), .A1(n52), .B0(n8), .B1(n59), .C0(N128), .C1(n66), 
        .Y(n87) );
  AOI31X2M U61 ( .A0(n80), .A1(n81), .A2(n82), .B0(n157), .Y(ALU_OUT_Comb[4])
         );
  AOI22X1M U62 ( .A0(N104), .A1(n67), .B0(N95), .B1(n54), .Y(n80) );
  AOI221XLM U63 ( .A0(n154), .A1(n27), .B0(n30), .B1(n147), .C0(n83), .Y(n82)
         );
  AOI222X1M U64 ( .A0(N113), .A1(n52), .B0(n9), .B1(n59), .C0(N129), .C1(n66), 
        .Y(n81) );
  AOI31X2M U65 ( .A0(n74), .A1(n75), .A2(n76), .B0(n157), .Y(ALU_OUT_Comb[5])
         );
  AOI22X1M U66 ( .A0(N105), .A1(n67), .B0(N96), .B1(n54), .Y(n74) );
  AOI221XLM U67 ( .A0(n154), .A1(n28), .B0(n30), .B1(n146), .C0(n77), .Y(n76)
         );
  AOI222X1M U68 ( .A0(N114), .A1(n52), .B0(n27), .B1(n59), .C0(N130), .C1(n66), 
        .Y(n75) );
  AOI31X2M U69 ( .A0(n68), .A1(n69), .A2(n70), .B0(n157), .Y(ALU_OUT_Comb[6])
         );
  AOI22X1M U70 ( .A0(N106), .A1(n67), .B0(N97), .B1(n54), .Y(n68) );
  AOI221XLM U71 ( .A0(n154), .A1(n29), .B0(n30), .B1(n145), .C0(n71), .Y(n70)
         );
  AOI222X1M U72 ( .A0(N115), .A1(n52), .B0(n59), .B1(n28), .C0(N131), .C1(n66), 
        .Y(n69) );
  AOI31X2M U73 ( .A0(n55), .A1(n56), .A2(n57), .B0(n157), .Y(ALU_OUT_Comb[7])
         );
  AOI22X1M U74 ( .A0(N132), .A1(n66), .B0(N116), .B1(n52), .Y(n56) );
  AOI22X1M U75 ( .A0(N107), .A1(n67), .B0(N98), .B1(n54), .Y(n55) );
  AOI221XLM U76 ( .A0(n30), .A1(n144), .B0(n59), .B1(n29), .C0(n60), .Y(n57)
         );
  AOI31X2M U77 ( .A0(n110), .A1(n111), .A2(n112), .B0(n157), .Y(
        ALU_OUT_Comb[0]) );
  AOI22X1M U78 ( .A0(N100), .A1(n67), .B0(N91), .B1(n54), .Y(n110) );
  AOI211X2M U79 ( .A0(n30), .A1(n151), .B0(n113), .C0(n114), .Y(n112) );
  AOI222X1M U80 ( .A0(N109), .A1(n52), .B0(n5), .B1(n59), .C0(N125), .C1(n66), 
        .Y(n111) );
  AOI31X2M U81 ( .A0(n98), .A1(n99), .A2(n100), .B0(n157), .Y(ALU_OUT_Comb[1])
         );
  AOI211X2M U82 ( .A0(n7), .A1(n154), .B0(n101), .C0(n102), .Y(n100) );
  AOI222X1M U83 ( .A0(N126), .A1(n66), .B0(n30), .B1(n150), .C0(n6), .C1(n59), 
        .Y(n99) );
  AOI222X1M U84 ( .A0(N92), .A1(n54), .B0(N110), .B1(n52), .C0(N101), .C1(n67), 
        .Y(n98) );
  INVX2M U85 ( .A(ALU_FUN[0]), .Y(n152) );
  NOR2X2M U86 ( .A(n152), .B(n3), .Y(n122) );
  NOR2X2M U87 ( .A(n3), .B(ALU_FUN[0]), .Y(n117) );
  NAND3X2M U88 ( .A(n3), .B(ALU_FUN[0]), .C(n116), .Y(n108) );
  INVX2M U89 ( .A(n109), .Y(n140) );
  AOI211X2M U90 ( .A0(N108), .A1(n67), .B0(n30), .C0(n64), .Y(n109) );
  INVX2M U91 ( .A(ALU_FUN[1]), .Y(n155) );
  AOI21X2M U92 ( .A0(n50), .A1(n51), .B0(n157), .Y(ALU_OUT_Comb[8]) );
  AOI21X2M U93 ( .A0(N99), .A1(n54), .B0(n140), .Y(n50) );
  AOI2BB2XLM U94 ( .B0(N117), .B1(n52), .A0N(n144), .A1N(n53), .Y(n51) );
  NAND3X2M U95 ( .A(n123), .B(ALU_FUN[0]), .C(n3), .Y(n118) );
  AND2X2M U96 ( .A(ALU_FUN[2]), .B(n155), .Y(n116) );
  AND4X2M U97 ( .A(N159), .B(n116), .C(n3), .D(n152), .Y(n107) );
  INVX2M U98 ( .A(n6), .Y(n150) );
  INVX2M U99 ( .A(n5), .Y(n151) );
  INVX2M U100 ( .A(n28), .Y(n145) );
  INVX2M U101 ( .A(n29), .Y(n144) );
  INVX2M U102 ( .A(n8), .Y(n148) );
  INVX2M U103 ( .A(n7), .Y(n149) );
  INVX2M U104 ( .A(n27), .Y(n146) );
  INVX2M U105 ( .A(n9), .Y(n147) );
  OAI222X1M U106 ( .A0(n96), .A1(n136), .B0(B[2]), .B1(n97), .C0(n53), .C1(
        n150), .Y(n95) );
  AOI221XLM U107 ( .A0(n7), .A1(n63), .B0(n64), .B1(n149), .C0(n30), .Y(n97)
         );
  AOI221XLM U108 ( .A0(n63), .A1(n149), .B0(n7), .B1(n65), .C0(n59), .Y(n96)
         );
  OAI222X1M U109 ( .A0(n90), .A1(n138), .B0(B[3]), .B1(n91), .C0(n53), .C1(
        n149), .Y(n89) );
  AOI221XLM U110 ( .A0(n8), .A1(n63), .B0(n64), .B1(n148), .C0(n30), .Y(n91)
         );
  AOI221XLM U111 ( .A0(n63), .A1(n148), .B0(n8), .B1(n65), .C0(n59), .Y(n90)
         );
  OAI222X1M U112 ( .A0(n84), .A1(n143), .B0(B[4]), .B1(n85), .C0(n53), .C1(
        n148), .Y(n83) );
  INVX2M U113 ( .A(B[4]), .Y(n143) );
  AOI221XLM U114 ( .A0(n9), .A1(n63), .B0(n64), .B1(n147), .C0(n30), .Y(n85)
         );
  AOI221XLM U115 ( .A0(n63), .A1(n147), .B0(n9), .B1(n65), .C0(n59), .Y(n84)
         );
  OAI222X1M U116 ( .A0(n78), .A1(n142), .B0(B[5]), .B1(n79), .C0(n53), .C1(
        n147), .Y(n77) );
  INVX2M U117 ( .A(B[5]), .Y(n142) );
  AOI221XLM U118 ( .A0(n27), .A1(n63), .B0(n64), .B1(n146), .C0(n30), .Y(n79)
         );
  AOI221XLM U119 ( .A0(n63), .A1(n146), .B0(n27), .B1(n65), .C0(n59), .Y(n78)
         );
  OAI222X1M U120 ( .A0(n61), .A1(n141), .B0(B[7]), .B1(n62), .C0(n53), .C1(
        n145), .Y(n60) );
  INVX2M U121 ( .A(B[7]), .Y(n141) );
  AOI221XLM U122 ( .A0(n63), .A1(n29), .B0(n64), .B1(n144), .C0(n30), .Y(n62)
         );
  AOI221XLM U123 ( .A0(n63), .A1(n144), .B0(n29), .B1(n65), .C0(n59), .Y(n61)
         );
  INVX2M U124 ( .A(n31), .Y(n135) );
  OAI2B2X1M U125 ( .A1N(B[0]), .A0(n115), .B0(n108), .B1(n150), .Y(n114) );
  AOI221XLM U126 ( .A0(n63), .A1(n151), .B0(n5), .B1(n65), .C0(n59), .Y(n115)
         );
  OAI2B2X1M U127 ( .A1N(B[1]), .A0(n103), .B0(n53), .B1(n151), .Y(n102) );
  AOI221XLM U128 ( .A0(n63), .A1(n150), .B0(n6), .B1(n65), .C0(n59), .Y(n103)
         );
  INVX2M U129 ( .A(n42), .Y(n137) );
  OAI21X2M U130 ( .A0(B[0]), .A1(n119), .B0(n120), .Y(n113) );
  AOI31X2M U131 ( .A0(N157), .A1(n3), .A2(n121), .B0(n107), .Y(n120) );
  AOI221XLM U132 ( .A0(n5), .A1(n63), .B0(n64), .B1(n151), .C0(n30), .Y(n119)
         );
  NOR3X2M U133 ( .A(n155), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n121) );
  OAI21X2M U134 ( .A0(B[1]), .A1(n104), .B0(n105), .Y(n101) );
  AOI31X2M U135 ( .A0(N158), .A1(n3), .A2(n106), .B0(n107), .Y(n105) );
  AOI221XLM U136 ( .A0(n6), .A1(n63), .B0(n64), .B1(n150), .C0(n30), .Y(n104)
         );
  NOR3X2M U137 ( .A(n152), .B(ALU_FUN[2]), .C(n155), .Y(n106) );
  BUFX2M U138 ( .A(A[7]), .Y(n29) );
  BUFX2M U139 ( .A(A[1]), .Y(n6) );
  BUFX2M U140 ( .A(A[0]), .Y(n5) );
  BUFX2M U141 ( .A(A[3]), .Y(n8) );
  BUFX2M U142 ( .A(A[2]), .Y(n7) );
  BUFX2M U143 ( .A(A[5]), .Y(n27) );
  BUFX2M U144 ( .A(A[4]), .Y(n9) );
  BUFX2M U145 ( .A(B[6]), .Y(n4) );
  BUFX2M U146 ( .A(ALU_FUN[3]), .Y(n3) );
  INVX2M U147 ( .A(B[0]), .Y(n134) );
  INVX2M U148 ( .A(B[2]), .Y(n136) );
  INVX2M U149 ( .A(B[3]), .Y(n138) );
  NOR2X1M U150 ( .A(n144), .B(B[7]), .Y(n130) );
  NAND2BX1M U151 ( .AN(B[4]), .B(n9), .Y(n46) );
  NAND2BX1M U152 ( .AN(n9), .B(B[4]), .Y(n35) );
  CLKNAND2X2M U153 ( .A(n46), .B(n35), .Y(n125) );
  NOR2X1M U154 ( .A(n138), .B(n8), .Y(n43) );
  NOR2X1M U155 ( .A(n136), .B(n7), .Y(n34) );
  NOR2X1M U156 ( .A(n134), .B(n5), .Y(n31) );
  CLKNAND2X2M U157 ( .A(n7), .B(n136), .Y(n45) );
  NAND2BX1M U158 ( .AN(n34), .B(n45), .Y(n40) );
  AOI21X1M U159 ( .A0(n31), .A1(n150), .B0(B[1]), .Y(n32) );
  AOI211X1M U160 ( .A0(n6), .A1(n135), .B0(n40), .C0(n32), .Y(n33) );
  CLKNAND2X2M U161 ( .A(n8), .B(n138), .Y(n44) );
  OAI31X1M U162 ( .A0(n43), .A1(n34), .A2(n33), .B0(n44), .Y(n36) );
  NAND2BX1M U163 ( .AN(n27), .B(B[5]), .Y(n128) );
  OAI211X1M U164 ( .A0(n125), .A1(n36), .B0(n35), .C0(n128), .Y(n37) );
  NAND2BX1M U165 ( .AN(B[5]), .B(n27), .Y(n47) );
  XNOR2X1M U166 ( .A(n28), .B(n4), .Y(n127) );
  AOI32X1M U167 ( .A0(n37), .A1(n47), .A2(n127), .B0(n4), .B1(n145), .Y(n38)
         );
  CLKNAND2X2M U168 ( .A(B[7]), .B(n144), .Y(n131) );
  OAI21X1M U169 ( .A0(n130), .A1(n38), .B0(n131), .Y(N159) );
  CLKNAND2X2M U170 ( .A(n5), .B(n134), .Y(n41) );
  OA21X1M U171 ( .A0(n41), .A1(n150), .B0(B[1]), .Y(n39) );
  AOI211X1M U172 ( .A0(n41), .A1(n150), .B0(n40), .C0(n39), .Y(n42) );
  AOI31X1M U173 ( .A0(n137), .A1(n45), .A2(n44), .B0(n43), .Y(n126) );
  OAI2B11X1M U174 ( .A1N(n126), .A0(n125), .B0(n47), .C0(n46), .Y(n129) );
  AOI32X1M U175 ( .A0(n129), .A1(n128), .A2(n127), .B0(n28), .B1(n139), .Y(
        n132) );
  AOI2B1X1M U176 ( .A1N(n132), .A0(n131), .B0(n130), .Y(n133) );
  CLKINVX1M U177 ( .A(n133), .Y(N158) );
  NOR2X1M U178 ( .A(N159), .B(N158), .Y(N157) );
  ALU_DW_div_uns_0 div_52 ( .a({n29, n28, n27, n9, n8, n7, n6, n5}), .b({B[7], 
        n4, B[5:0]}), .quotient({N132, N131, N130, N129, N128, N127, N126, 
        N125}) );
  ALU_DW01_sub_0 sub_46 ( .A({1'b0, n29, n28, n27, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .DIFF({N108, N107, N106, N105, 
        N104, N103, N102, N101, N100}) );
  ALU_DW01_add_0 add_43 ( .A({1'b0, n29, n28, n27, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .SUM({N99, N98, N97, N96, N95, 
        N94, N93, N92, N91}) );
  ALU_DW02_mult_0 mult_49 ( .A({n29, n28, n27, n9, n8, n7, n6, n5}), .B({B[7], 
        n4, B[5:0]}), .TC(1'b0), .PRODUCT({N124, N123, N122, N121, N120, N119, 
        N118, N117, N116, N115, N114, N113, N112, N111, N110, N109}) );
endmodule


module RegFile_test_1 ( CLK, RST, WrEn, RdEn, Address, WrData, RdData, 
        RdData_VLD, REG0, REG1, REG2, REG3, test_si3, test_si2, test_si1, 
        test_so2, test_so1, test_se );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn, test_si3, test_si2, test_si1, test_se;
  output RdData_VLD, test_so2, test_so1;
  wire   N11, N12, N13, N14, \regArr[15][7] , \regArr[15][6] , \regArr[15][5] ,
         \regArr[15][4] , \regArr[15][3] , \regArr[15][2] , \regArr[15][1] ,
         \regArr[15][0] , \regArr[14][7] , \regArr[14][6] , \regArr[14][5] ,
         \regArr[14][4] , \regArr[14][3] , \regArr[14][2] , \regArr[14][1] ,
         \regArr[14][0] , \regArr[13][7] , \regArr[13][6] , \regArr[13][5] ,
         \regArr[13][4] , \regArr[13][3] , \regArr[13][2] , \regArr[13][1] ,
         \regArr[13][0] , \regArr[12][7] , \regArr[12][6] , \regArr[12][5] ,
         \regArr[12][4] , \regArr[12][3] , \regArr[12][2] , \regArr[12][1] ,
         \regArr[12][0] , \regArr[11][7] , \regArr[11][6] , \regArr[11][5] ,
         \regArr[11][4] , \regArr[11][3] , \regArr[11][2] , \regArr[11][1] ,
         \regArr[11][0] , \regArr[10][7] , \regArr[10][6] , \regArr[10][5] ,
         \regArr[10][4] , \regArr[10][3] , \regArr[10][2] , \regArr[10][1] ,
         \regArr[10][0] , \regArr[9][7] , \regArr[9][6] , \regArr[9][5] ,
         \regArr[9][4] , \regArr[9][3] , \regArr[9][2] , \regArr[9][1] ,
         \regArr[9][0] , \regArr[8][7] , \regArr[8][6] , \regArr[8][5] ,
         \regArr[8][4] , \regArr[8][3] , \regArr[8][2] , \regArr[8][1] ,
         \regArr[8][0] , \regArr[7][7] , \regArr[7][6] , \regArr[7][5] ,
         \regArr[7][4] , \regArr[7][3] , \regArr[7][2] , \regArr[7][1] ,
         \regArr[7][0] , \regArr[6][7] , \regArr[6][6] , \regArr[6][5] ,
         \regArr[6][4] , \regArr[6][3] , \regArr[6][2] , \regArr[6][1] ,
         \regArr[6][0] , \regArr[5][7] , \regArr[5][6] , \regArr[5][5] ,
         \regArr[5][4] , \regArr[5][3] , \regArr[5][2] , \regArr[5][1] ,
         \regArr[5][0] , \regArr[4][7] , \regArr[4][6] , \regArr[4][5] ,
         \regArr[4][4] , \regArr[4][3] , \regArr[4][2] , \regArr[4][1] ,
         \regArr[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n370, n371, n372, n373;
wand  CLK;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];
  assign test_so2 = \regArr[15][7] ;
  assign test_so1 = \regArr[12][7] ;

  SDFFRQX1M \regArr_reg[13][7]  ( .D(n297), .SI(\regArr[13][6] ), .SE(n373), 
        .CK(CLK), .RN(n350), .Q(\regArr[13][7] ) );
  SDFFRQX1M \regArr_reg[13][6]  ( .D(n296), .SI(\regArr[13][5] ), .SE(n372), 
        .CK(CLK), .RN(n350), .Q(\regArr[13][6] ) );
  SDFFRQX1M \regArr_reg[13][5]  ( .D(n295), .SI(\regArr[13][4] ), .SE(n371), 
        .CK(CLK), .RN(n350), .Q(\regArr[13][5] ) );
  SDFFRQX1M \regArr_reg[13][4]  ( .D(n294), .SI(\regArr[13][3] ), .SE(n370), 
        .CK(CLK), .RN(n350), .Q(\regArr[13][4] ) );
  SDFFRQX1M \regArr_reg[13][3]  ( .D(n293), .SI(\regArr[13][2] ), .SE(n373), 
        .CK(CLK), .RN(n350), .Q(\regArr[13][3] ) );
  SDFFRQX1M \regArr_reg[13][2]  ( .D(n292), .SI(\regArr[13][1] ), .SE(n372), 
        .CK(CLK), .RN(n350), .Q(\regArr[13][2] ) );
  SDFFRQX1M \regArr_reg[13][1]  ( .D(n291), .SI(\regArr[13][0] ), .SE(n371), 
        .CK(CLK), .RN(n350), .Q(\regArr[13][1] ) );
  SDFFRQX1M \regArr_reg[13][0]  ( .D(n290), .SI(test_si3), .SE(n370), .CK(CLK), 
        .RN(n350), .Q(\regArr[13][0] ) );
  SDFFRQX1M \regArr_reg[9][7]  ( .D(n265), .SI(\regArr[9][6] ), .SE(n373), 
        .CK(CLK), .RN(n348), .Q(\regArr[9][7] ) );
  SDFFRQX1M \regArr_reg[9][6]  ( .D(n264), .SI(\regArr[9][5] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\regArr[9][6] ) );
  SDFFRQX1M \regArr_reg[9][5]  ( .D(n263), .SI(\regArr[9][4] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\regArr[9][5] ) );
  SDFFRQX1M \regArr_reg[9][4]  ( .D(n262), .SI(\regArr[9][3] ), .SE(n370), 
        .CK(CLK), .RN(n348), .Q(\regArr[9][4] ) );
  SDFFRQX1M \regArr_reg[9][3]  ( .D(n261), .SI(\regArr[9][2] ), .SE(n373), 
        .CK(CLK), .RN(n348), .Q(\regArr[9][3] ) );
  SDFFRQX1M \regArr_reg[9][2]  ( .D(n260), .SI(\regArr[9][1] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\regArr[9][2] ) );
  SDFFRQX1M \regArr_reg[9][1]  ( .D(n259), .SI(\regArr[9][0] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\regArr[9][1] ) );
  SDFFRQX1M \regArr_reg[9][0]  ( .D(n258), .SI(\regArr[8][7] ), .SE(n370), 
        .CK(CLK), .RN(n347), .Q(\regArr[9][0] ) );
  SDFFRQX1M \regArr_reg[5][7]  ( .D(n233), .SI(\regArr[5][6] ), .SE(n373), 
        .CK(CLK), .RN(n346), .Q(\regArr[5][7] ) );
  SDFFRQX1M \regArr_reg[5][6]  ( .D(n232), .SI(\regArr[5][5] ), .SE(n372), 
        .CK(CLK), .RN(n346), .Q(\regArr[5][6] ) );
  SDFFRQX1M \regArr_reg[5][5]  ( .D(n231), .SI(\regArr[5][4] ), .SE(n371), 
        .CK(CLK), .RN(n345), .Q(\regArr[5][5] ) );
  SDFFRQX1M \regArr_reg[5][4]  ( .D(n230), .SI(\regArr[5][3] ), .SE(n370), 
        .CK(CLK), .RN(n345), .Q(\regArr[5][4] ) );
  SDFFRQX1M \regArr_reg[5][3]  ( .D(n229), .SI(\regArr[5][2] ), .SE(n373), 
        .CK(CLK), .RN(n345), .Q(\regArr[5][3] ) );
  SDFFRQX1M \regArr_reg[5][2]  ( .D(n228), .SI(\regArr[5][1] ), .SE(n372), 
        .CK(CLK), .RN(n345), .Q(\regArr[5][2] ) );
  SDFFRQX1M \regArr_reg[5][1]  ( .D(n227), .SI(\regArr[5][0] ), .SE(n371), 
        .CK(CLK), .RN(n345), .Q(\regArr[5][1] ) );
  SDFFRQX1M \regArr_reg[5][0]  ( .D(n226), .SI(\regArr[4][7] ), .SE(n370), 
        .CK(CLK), .RN(n345), .Q(\regArr[5][0] ) );
  SDFFRQX1M \regArr_reg[15][7]  ( .D(n313), .SI(\regArr[15][6] ), .SE(n373), 
        .CK(CLK), .RN(n342), .Q(\regArr[15][7] ) );
  SDFFRQX1M \regArr_reg[15][6]  ( .D(n312), .SI(\regArr[15][5] ), .SE(n372), 
        .CK(CLK), .RN(n351), .Q(\regArr[15][6] ) );
  SDFFRQX1M \regArr_reg[15][5]  ( .D(n311), .SI(\regArr[15][4] ), .SE(n371), 
        .CK(CLK), .RN(n351), .Q(\regArr[15][5] ) );
  SDFFRQX1M \regArr_reg[15][4]  ( .D(n310), .SI(\regArr[15][3] ), .SE(n370), 
        .CK(CLK), .RN(n351), .Q(\regArr[15][4] ) );
  SDFFRQX1M \regArr_reg[15][3]  ( .D(n309), .SI(\regArr[15][2] ), .SE(n373), 
        .CK(CLK), .RN(n351), .Q(\regArr[15][3] ) );
  SDFFRQX1M \regArr_reg[15][2]  ( .D(n308), .SI(\regArr[15][1] ), .SE(n372), 
        .CK(CLK), .RN(n351), .Q(\regArr[15][2] ) );
  SDFFRQX1M \regArr_reg[15][1]  ( .D(n307), .SI(\regArr[15][0] ), .SE(n371), 
        .CK(CLK), .RN(n351), .Q(\regArr[15][1] ) );
  SDFFRQX1M \regArr_reg[15][0]  ( .D(n306), .SI(\regArr[14][7] ), .SE(n370), 
        .CK(CLK), .RN(n351), .Q(\regArr[15][0] ) );
  SDFFRQX1M \regArr_reg[11][7]  ( .D(n281), .SI(\regArr[11][6] ), .SE(n373), 
        .CK(CLK), .RN(n349), .Q(\regArr[11][7] ) );
  SDFFRQX1M \regArr_reg[11][6]  ( .D(n280), .SI(\regArr[11][5] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\regArr[11][6] ) );
  SDFFRQX1M \regArr_reg[11][5]  ( .D(n279), .SI(\regArr[11][4] ), .SE(n371), 
        .CK(CLK), .RN(n349), .Q(\regArr[11][5] ) );
  SDFFRQX1M \regArr_reg[11][4]  ( .D(n278), .SI(\regArr[11][3] ), .SE(n370), 
        .CK(CLK), .RN(n349), .Q(\regArr[11][4] ) );
  SDFFRQX1M \regArr_reg[11][3]  ( .D(n277), .SI(\regArr[11][2] ), .SE(n373), 
        .CK(CLK), .RN(n349), .Q(\regArr[11][3] ) );
  SDFFRQX1M \regArr_reg[11][2]  ( .D(n276), .SI(\regArr[11][1] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\regArr[11][2] ) );
  SDFFRQX1M \regArr_reg[11][1]  ( .D(n275), .SI(\regArr[11][0] ), .SE(n371), 
        .CK(CLK), .RN(n349), .Q(\regArr[11][1] ) );
  SDFFRQX1M \regArr_reg[11][0]  ( .D(n274), .SI(\regArr[10][7] ), .SE(n370), 
        .CK(CLK), .RN(n349), .Q(\regArr[11][0] ) );
  SDFFRQX1M \regArr_reg[7][7]  ( .D(n249), .SI(\regArr[7][6] ), .SE(n373), 
        .CK(CLK), .RN(n347), .Q(\regArr[7][7] ) );
  SDFFRQX1M \regArr_reg[7][6]  ( .D(n248), .SI(\regArr[7][5] ), .SE(n372), 
        .CK(CLK), .RN(n347), .Q(\regArr[7][6] ) );
  SDFFRQX1M \regArr_reg[7][5]  ( .D(n247), .SI(\regArr[7][4] ), .SE(n371), 
        .CK(CLK), .RN(n347), .Q(\regArr[7][5] ) );
  SDFFRQX1M \regArr_reg[7][4]  ( .D(n246), .SI(\regArr[7][3] ), .SE(n370), 
        .CK(CLK), .RN(n347), .Q(\regArr[7][4] ) );
  SDFFRQX1M \regArr_reg[7][3]  ( .D(n245), .SI(\regArr[7][2] ), .SE(n373), 
        .CK(CLK), .RN(n347), .Q(\regArr[7][3] ) );
  SDFFRQX1M \regArr_reg[7][2]  ( .D(n244), .SI(\regArr[7][1] ), .SE(n372), 
        .CK(CLK), .RN(n346), .Q(\regArr[7][2] ) );
  SDFFRQX1M \regArr_reg[7][1]  ( .D(n243), .SI(\regArr[7][0] ), .SE(n371), 
        .CK(CLK), .RN(n346), .Q(\regArr[7][1] ) );
  SDFFRQX1M \regArr_reg[7][0]  ( .D(n242), .SI(\regArr[6][7] ), .SE(n370), 
        .CK(CLK), .RN(n346), .Q(\regArr[7][0] ) );
  SDFFRQX1M \regArr_reg[14][7]  ( .D(n305), .SI(\regArr[14][6] ), .SE(n373), 
        .CK(CLK), .RN(n351), .Q(\regArr[14][7] ) );
  SDFFRQX1M \regArr_reg[14][6]  ( .D(n304), .SI(\regArr[14][5] ), .SE(n372), 
        .CK(CLK), .RN(n351), .Q(\regArr[14][6] ) );
  SDFFRQX1M \regArr_reg[14][5]  ( .D(n303), .SI(\regArr[14][4] ), .SE(n371), 
        .CK(CLK), .RN(n351), .Q(\regArr[14][5] ) );
  SDFFRQX1M \regArr_reg[14][4]  ( .D(n302), .SI(\regArr[14][3] ), .SE(n370), 
        .CK(CLK), .RN(n351), .Q(\regArr[14][4] ) );
  SDFFRQX1M \regArr_reg[14][3]  ( .D(n301), .SI(\regArr[14][2] ), .SE(n373), 
        .CK(CLK), .RN(n351), .Q(\regArr[14][3] ) );
  SDFFRQX1M \regArr_reg[14][2]  ( .D(n300), .SI(\regArr[14][1] ), .SE(n372), 
        .CK(CLK), .RN(n350), .Q(\regArr[14][2] ) );
  SDFFRQX1M \regArr_reg[14][1]  ( .D(n299), .SI(\regArr[14][0] ), .SE(n371), 
        .CK(CLK), .RN(n350), .Q(\regArr[14][1] ) );
  SDFFRQX1M \regArr_reg[14][0]  ( .D(n298), .SI(\regArr[13][7] ), .SE(n370), 
        .CK(CLK), .RN(n350), .Q(\regArr[14][0] ) );
  SDFFRQX1M \regArr_reg[10][7]  ( .D(n273), .SI(\regArr[10][6] ), .SE(n373), 
        .CK(CLK), .RN(n349), .Q(\regArr[10][7] ) );
  SDFFRQX1M \regArr_reg[10][6]  ( .D(n272), .SI(\regArr[10][5] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\regArr[10][6] ) );
  SDFFRQX1M \regArr_reg[10][5]  ( .D(n271), .SI(\regArr[10][4] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\regArr[10][5] ) );
  SDFFRQX1M \regArr_reg[10][4]  ( .D(n270), .SI(\regArr[10][3] ), .SE(n370), 
        .CK(CLK), .RN(n348), .Q(\regArr[10][4] ) );
  SDFFRQX1M \regArr_reg[10][3]  ( .D(n269), .SI(\regArr[10][2] ), .SE(n373), 
        .CK(CLK), .RN(n348), .Q(\regArr[10][3] ) );
  SDFFRQX1M \regArr_reg[10][2]  ( .D(n268), .SI(\regArr[10][1] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\regArr[10][2] ) );
  SDFFRQX1M \regArr_reg[10][1]  ( .D(n267), .SI(\regArr[10][0] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\regArr[10][1] ) );
  SDFFRQX1M \regArr_reg[10][0]  ( .D(n266), .SI(\regArr[9][7] ), .SE(n370), 
        .CK(CLK), .RN(n348), .Q(\regArr[10][0] ) );
  SDFFRQX1M \regArr_reg[6][7]  ( .D(n241), .SI(\regArr[6][6] ), .SE(n373), 
        .CK(CLK), .RN(n346), .Q(\regArr[6][7] ) );
  SDFFRQX1M \regArr_reg[6][6]  ( .D(n240), .SI(\regArr[6][5] ), .SE(n372), 
        .CK(CLK), .RN(n346), .Q(\regArr[6][6] ) );
  SDFFRQX1M \regArr_reg[6][5]  ( .D(n239), .SI(\regArr[6][4] ), .SE(n371), 
        .CK(CLK), .RN(n346), .Q(\regArr[6][5] ) );
  SDFFRQX1M \regArr_reg[6][4]  ( .D(n238), .SI(\regArr[6][3] ), .SE(n370), 
        .CK(CLK), .RN(n346), .Q(\regArr[6][4] ) );
  SDFFRQX1M \regArr_reg[6][3]  ( .D(n237), .SI(\regArr[6][2] ), .SE(n373), 
        .CK(CLK), .RN(n346), .Q(\regArr[6][3] ) );
  SDFFRQX1M \regArr_reg[6][2]  ( .D(n236), .SI(\regArr[6][1] ), .SE(n372), 
        .CK(CLK), .RN(n346), .Q(\regArr[6][2] ) );
  SDFFRQX1M \regArr_reg[6][1]  ( .D(n235), .SI(\regArr[6][0] ), .SE(n373), 
        .CK(CLK), .RN(n346), .Q(\regArr[6][1] ) );
  SDFFRQX1M \regArr_reg[6][0]  ( .D(n234), .SI(\regArr[5][7] ), .SE(n372), 
        .CK(CLK), .RN(n346), .Q(\regArr[6][0] ) );
  SDFFRQX2M \regArr_reg[12][7]  ( .D(n289), .SI(\regArr[12][6] ), .SE(n371), 
        .CK(CLK), .RN(n350), .Q(\regArr[12][7] ) );
  SDFFRQX2M \regArr_reg[12][6]  ( .D(n288), .SI(\regArr[12][5] ), .SE(n370), 
        .CK(CLK), .RN(n350), .Q(\regArr[12][6] ) );
  SDFFRQX2M \regArr_reg[12][5]  ( .D(n287), .SI(\regArr[12][4] ), .SE(n373), 
        .CK(CLK), .RN(n350), .Q(\regArr[12][5] ) );
  SDFFRQX2M \regArr_reg[12][4]  ( .D(n286), .SI(\regArr[12][3] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\regArr[12][4] ) );
  SDFFRQX2M \regArr_reg[12][3]  ( .D(n285), .SI(\regArr[12][2] ), .SE(n371), 
        .CK(CLK), .RN(n349), .Q(\regArr[12][3] ) );
  SDFFRQX2M \regArr_reg[12][2]  ( .D(n284), .SI(\regArr[12][1] ), .SE(n370), 
        .CK(CLK), .RN(n349), .Q(\regArr[12][2] ) );
  SDFFRQX2M \regArr_reg[12][1]  ( .D(n283), .SI(\regArr[12][0] ), .SE(n373), 
        .CK(CLK), .RN(n349), .Q(\regArr[12][1] ) );
  SDFFRQX2M \regArr_reg[12][0]  ( .D(n282), .SI(\regArr[11][7] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\regArr[12][0] ) );
  SDFFRQX2M \regArr_reg[8][7]  ( .D(n257), .SI(\regArr[8][6] ), .SE(n371), 
        .CK(CLK), .RN(n347), .Q(\regArr[8][7] ) );
  SDFFRQX2M \regArr_reg[8][6]  ( .D(n256), .SI(\regArr[8][5] ), .SE(n370), 
        .CK(CLK), .RN(n347), .Q(\regArr[8][6] ) );
  SDFFRQX2M \regArr_reg[8][5]  ( .D(n255), .SI(\regArr[8][4] ), .SE(n373), 
        .CK(CLK), .RN(n347), .Q(\regArr[8][5] ) );
  SDFFRQX2M \regArr_reg[8][4]  ( .D(n254), .SI(\regArr[8][3] ), .SE(n372), 
        .CK(CLK), .RN(n347), .Q(\regArr[8][4] ) );
  SDFFRQX2M \regArr_reg[8][3]  ( .D(n253), .SI(\regArr[8][2] ), .SE(n371), 
        .CK(CLK), .RN(n347), .Q(\regArr[8][3] ) );
  SDFFRQX2M \regArr_reg[8][2]  ( .D(n252), .SI(\regArr[8][1] ), .SE(n370), 
        .CK(CLK), .RN(n347), .Q(\regArr[8][2] ) );
  SDFFRQX2M \regArr_reg[8][1]  ( .D(n251), .SI(\regArr[8][0] ), .SE(n373), 
        .CK(CLK), .RN(n347), .Q(\regArr[8][1] ) );
  SDFFRQX2M \regArr_reg[8][0]  ( .D(n250), .SI(\regArr[7][7] ), .SE(n372), 
        .CK(CLK), .RN(n347), .Q(\regArr[8][0] ) );
  SDFFRQX2M \regArr_reg[4][7]  ( .D(n225), .SI(\regArr[4][6] ), .SE(n371), 
        .CK(CLK), .RN(n345), .Q(\regArr[4][7] ) );
  SDFFRQX2M \regArr_reg[4][6]  ( .D(n224), .SI(\regArr[4][5] ), .SE(n370), 
        .CK(CLK), .RN(n345), .Q(\regArr[4][6] ) );
  SDFFRQX2M \regArr_reg[4][5]  ( .D(n223), .SI(\regArr[4][4] ), .SE(n373), 
        .CK(CLK), .RN(n345), .Q(\regArr[4][5] ) );
  SDFFRQX2M \regArr_reg[4][4]  ( .D(n222), .SI(\regArr[4][3] ), .SE(n372), 
        .CK(CLK), .RN(n345), .Q(\regArr[4][4] ) );
  SDFFRQX2M \regArr_reg[4][3]  ( .D(n221), .SI(\regArr[4][2] ), .SE(n371), 
        .CK(CLK), .RN(n345), .Q(\regArr[4][3] ) );
  SDFFRQX2M \regArr_reg[4][2]  ( .D(n220), .SI(\regArr[4][1] ), .SE(n370), 
        .CK(CLK), .RN(n345), .Q(\regArr[4][2] ) );
  SDFFRQX2M \regArr_reg[4][1]  ( .D(n219), .SI(\regArr[4][0] ), .SE(n373), 
        .CK(CLK), .RN(n345), .Q(\regArr[4][1] ) );
  SDFFRQX2M \regArr_reg[4][0]  ( .D(n218), .SI(REG3[7]), .SE(n372), .CK(CLK), 
        .RN(n345), .Q(\regArr[4][0] ) );
  SDFFRQX2M \RdData_reg[7]  ( .D(n184), .SI(RdData[6]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n183), .SI(RdData[5]), .SE(n370), .CK(CLK), 
        .RN(n342), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n182), .SI(RdData[4]), .SE(n373), .CK(CLK), 
        .RN(n342), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n181), .SI(RdData[3]), .SE(n372), .CK(CLK), 
        .RN(n342), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n180), .SI(RdData[2]), .SE(n371), .CK(CLK), 
        .RN(n342), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n179), .SI(RdData[1]), .SE(n370), .CK(CLK), 
        .RN(n342), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n178), .SI(RdData[0]), .SE(n373), .CK(CLK), 
        .RN(n342), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n177), .SI(RdData_VLD), .SE(n372), .CK(CLK), 
        .RN(n346), .Q(RdData[0]) );
  SDFFRQX2M \regArr_reg[1][6]  ( .D(n200), .SI(REG1[5]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(REG1[6]) );
  SDFFRQX2M \regArr_reg[0][7]  ( .D(n193), .SI(REG0[6]), .SE(n370), .CK(CLK), 
        .RN(n343), .Q(REG0[7]) );
  SDFFRQX2M \regArr_reg[0][6]  ( .D(n192), .SI(REG0[5]), .SE(n373), .CK(CLK), 
        .RN(n343), .Q(REG0[6]) );
  SDFFRQX2M \regArr_reg[0][5]  ( .D(n191), .SI(REG0[4]), .SE(n372), .CK(CLK), 
        .RN(n343), .Q(REG0[5]) );
  SDFFRQX2M \regArr_reg[0][4]  ( .D(n190), .SI(REG0[3]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(REG0[4]) );
  SDFFRQX2M \regArr_reg[0][3]  ( .D(n189), .SI(REG0[2]), .SE(n370), .CK(CLK), 
        .RN(n343), .Q(REG0[3]) );
  SDFFRQX2M \regArr_reg[0][2]  ( .D(n188), .SI(REG0[1]), .SE(n373), .CK(CLK), 
        .RN(n343), .Q(REG0[2]) );
  SDFFRQX2M \regArr_reg[0][1]  ( .D(n187), .SI(REG0[0]), .SE(n372), .CK(CLK), 
        .RN(n342), .Q(REG0[1]) );
  SDFFRQX2M \regArr_reg[0][0]  ( .D(n186), .SI(RdData[7]), .SE(n371), .CK(CLK), 
        .RN(n342), .Q(REG0[0]) );
  SDFFRQX2M \regArr_reg[2][1]  ( .D(n203), .SI(REG2[0]), .SE(n370), .CK(CLK), 
        .RN(n344), .Q(REG2[1]) );
  SDFFRQX2M RdData_VLD_reg ( .D(n185), .SI(test_si1), .SE(n373), .CK(CLK), 
        .RN(n342), .Q(RdData_VLD) );
  SDFFRQX2M \regArr_reg[3][0]  ( .D(n210), .SI(REG2[7]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG3[0]) );
  SDFFSQX2M \regArr_reg[2][0]  ( .D(n202), .SI(REG1[7]), .SE(test_se), .CK(CLK), .SN(n342), .Q(REG2[0]) );
  SDFFRQX2M \regArr_reg[1][1]  ( .D(n195), .SI(REG1[0]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(REG1[1]) );
  SDFFRQX2M \regArr_reg[1][5]  ( .D(n199), .SI(REG1[4]), .SE(n370), .CK(CLK), 
        .RN(n344), .Q(REG1[5]) );
  SDFFRQX2M \regArr_reg[1][4]  ( .D(n198), .SI(REG1[3]), .SE(n373), .CK(CLK), 
        .RN(n343), .Q(REG1[4]) );
  SDFFRQX2M \regArr_reg[1][7]  ( .D(n201), .SI(REG1[6]), .SE(n372), .CK(CLK), 
        .RN(n343), .Q(REG1[7]) );
  SDFFRQX2M \regArr_reg[1][3]  ( .D(n197), .SI(REG1[2]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(REG1[3]) );
  SDFFRQX2M \regArr_reg[1][2]  ( .D(n196), .SI(REG1[1]), .SE(n370), .CK(CLK), 
        .RN(n343), .Q(REG1[2]) );
  SDFFRQX2M \regArr_reg[1][0]  ( .D(n194), .SI(REG0[7]), .SE(n373), .CK(CLK), 
        .RN(n343), .Q(REG1[0]) );
  SDFFSQX2M \regArr_reg[3][5]  ( .D(n215), .SI(REG3[4]), .SE(n371), .CK(CLK), 
        .SN(n342), .Q(REG3[5]) );
  SDFFRQX2M \regArr_reg[3][7]  ( .D(n217), .SI(REG3[6]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG3[7]) );
  SDFFRQX2M \regArr_reg[3][6]  ( .D(n216), .SI(REG3[5]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG3[6]) );
  SDFFRQX2M \regArr_reg[3][2]  ( .D(n212), .SI(REG3[1]), .SE(n370), .CK(CLK), 
        .RN(n344), .Q(REG3[2]) );
  SDFFRQX2M \regArr_reg[3][3]  ( .D(n213), .SI(REG3[2]), .SE(n373), .CK(CLK), 
        .RN(n344), .Q(REG3[3]) );
  SDFFRQX2M \regArr_reg[3][4]  ( .D(n214), .SI(REG3[3]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG3[4]) );
  SDFFRQX2M \regArr_reg[3][1]  ( .D(n211), .SI(REG3[0]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG3[1]) );
  SDFFRQX2M \regArr_reg[2][3]  ( .D(n205), .SI(REG2[2]), .SE(n370), .CK(CLK), 
        .RN(n344), .Q(REG2[3]) );
  SDFFRQX2M \regArr_reg[2][5]  ( .D(n207), .SI(REG2[4]), .SE(n373), .CK(CLK), 
        .RN(n344), .Q(REG2[5]) );
  SDFFRQX2M \regArr_reg[2][2]  ( .D(n204), .SI(REG2[1]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG2[2]) );
  SDFFRQX2M \regArr_reg[2][4]  ( .D(n206), .SI(REG2[3]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG2[4]) );
  SDFFRQX2M \regArr_reg[2][6]  ( .D(n208), .SI(test_si2), .SE(n370), .CK(CLK), 
        .RN(n344), .Q(REG2[6]) );
  SDFFSQX1M \regArr_reg[2][7]  ( .D(n209), .SI(REG2[6]), .SE(n370), .CK(CLK), 
        .SN(RST), .Q(REG2[7]) );
  NOR2BX2M U141 ( .AN(n175), .B(n340), .Y(n169) );
  NOR2BX2M U142 ( .AN(n164), .B(n340), .Y(n155) );
  NOR2BX2M U143 ( .AN(N13), .B(N12), .Y(n160) );
  NOR2BX2M U144 ( .AN(N13), .B(n341), .Y(n163) );
  NOR2X2M U145 ( .A(n341), .B(N13), .Y(n157) );
  NOR2X2M U146 ( .A(N12), .B(N13), .Y(n152) );
  INVX2M U147 ( .A(WrData[5]), .Y(n359) );
  INVX2M U148 ( .A(WrData[6]), .Y(n358) );
  INVX2M U149 ( .A(n337), .Y(n338) );
  INVX2M U150 ( .A(n337), .Y(n339) );
  BUFX2M U151 ( .A(n340), .Y(n337) );
  INVX2M U152 ( .A(n341), .Y(n336) );
  INVX2M U153 ( .A(n149), .Y(n365) );
  NOR2BX2M U154 ( .AN(n164), .B(N11), .Y(n153) );
  NOR2BX2M U155 ( .AN(n175), .B(N11), .Y(n167) );
  NAND2X2M U156 ( .A(n155), .B(n152), .Y(n154) );
  NAND2X2M U157 ( .A(n167), .B(n152), .Y(n166) );
  NAND2X2M U158 ( .A(n169), .B(n152), .Y(n168) );
  NAND2X2M U159 ( .A(n167), .B(n157), .Y(n170) );
  NAND2X2M U160 ( .A(n169), .B(n157), .Y(n171) );
  NAND2X2M U161 ( .A(n157), .B(n153), .Y(n156) );
  NAND2X2M U162 ( .A(n157), .B(n155), .Y(n158) );
  NAND2X2M U163 ( .A(n160), .B(n153), .Y(n159) );
  NAND2X2M U164 ( .A(n160), .B(n155), .Y(n161) );
  NAND2X2M U165 ( .A(n163), .B(n153), .Y(n162) );
  NAND2X2M U166 ( .A(n163), .B(n155), .Y(n165) );
  NAND2X2M U167 ( .A(n167), .B(n160), .Y(n172) );
  NAND2X2M U168 ( .A(n169), .B(n160), .Y(n173) );
  NAND2X2M U169 ( .A(n167), .B(n163), .Y(n174) );
  NAND2X2M U170 ( .A(n169), .B(n163), .Y(n176) );
  NAND2X2M U171 ( .A(n152), .B(n153), .Y(n151) );
  NAND2BX2M U172 ( .AN(WrEn), .B(RdEn), .Y(n149) );
  NOR2BX2M U173 ( .AN(WrEn), .B(RdEn), .Y(n150) );
  BUFX2M U174 ( .A(n356), .Y(n343) );
  BUFX2M U175 ( .A(n355), .Y(n344) );
  BUFX2M U176 ( .A(n355), .Y(n345) );
  BUFX2M U177 ( .A(n354), .Y(n346) );
  BUFX2M U178 ( .A(n354), .Y(n347) );
  BUFX2M U179 ( .A(n353), .Y(n348) );
  BUFX2M U180 ( .A(n353), .Y(n349) );
  BUFX2M U181 ( .A(n352), .Y(n350) );
  BUFX2M U182 ( .A(n356), .Y(n342) );
  BUFX2M U183 ( .A(n352), .Y(n351) );
  INVX2M U184 ( .A(WrData[0]), .Y(n364) );
  INVX2M U185 ( .A(WrData[1]), .Y(n363) );
  INVX2M U186 ( .A(WrData[2]), .Y(n362) );
  INVX2M U187 ( .A(WrData[3]), .Y(n361) );
  INVX2M U188 ( .A(WrData[4]), .Y(n360) );
  INVX2M U189 ( .A(WrData[7]), .Y(n357) );
  NOR2BX2M U190 ( .AN(n150), .B(N14), .Y(n164) );
  AND2X2M U191 ( .A(N14), .B(n150), .Y(n175) );
  BUFX2M U192 ( .A(RST), .Y(n355) );
  BUFX2M U193 ( .A(RST), .Y(n354) );
  BUFX2M U194 ( .A(RST), .Y(n353) );
  BUFX2M U195 ( .A(RST), .Y(n352) );
  BUFX2M U196 ( .A(RST), .Y(n356) );
  AO22X1M U197 ( .A0(N42), .A1(n365), .B0(RdData[1]), .B1(n149), .Y(n178) );
  MX4X1M U198 ( .A(n146), .B(n144), .C(n145), .D(n143), .S0(N14), .S1(N13), 
        .Y(N42) );
  MX4X1M U199 ( .A(\regArr[8][1] ), .B(\regArr[9][1] ), .C(\regArr[10][1] ), 
        .D(\regArr[11][1] ), .S0(N11), .S1(N12), .Y(n144) );
  MX4X1M U200 ( .A(\regArr[12][1] ), .B(\regArr[13][1] ), .C(\regArr[14][1] ), 
        .D(\regArr[15][1] ), .S0(n339), .S1(n336), .Y(n143) );
  AO22X1M U201 ( .A0(N38), .A1(n365), .B0(RdData[5]), .B1(n149), .Y(n182) );
  MX4X1M U202 ( .A(n327), .B(n325), .C(n326), .D(n324), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U203 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n339), 
        .S1(n336), .Y(n327) );
  MX4X1M U204 ( .A(\regArr[8][5] ), .B(\regArr[9][5] ), .C(\regArr[10][5] ), 
        .D(\regArr[11][5] ), .S0(n339), .S1(n336), .Y(n325) );
  AO22X1M U205 ( .A0(N37), .A1(n365), .B0(RdData[6]), .B1(n149), .Y(n183) );
  MX4X1M U206 ( .A(n331), .B(n329), .C(n330), .D(n328), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U207 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n339), 
        .S1(n336), .Y(n331) );
  MX4X1M U208 ( .A(\regArr[8][6] ), .B(\regArr[9][6] ), .C(\regArr[10][6] ), 
        .D(\regArr[11][6] ), .S0(n339), .S1(n336), .Y(n329) );
  AO22X1M U209 ( .A0(N36), .A1(n365), .B0(RdData[7]), .B1(n149), .Y(n184) );
  MX4X1M U210 ( .A(n335), .B(n333), .C(n334), .D(n332), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U211 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n339), 
        .S1(n336), .Y(n335) );
  MX4X1M U212 ( .A(\regArr[8][7] ), .B(\regArr[9][7] ), .C(\regArr[10][7] ), 
        .D(\regArr[11][7] ), .S0(n339), .S1(n336), .Y(n333) );
  MX4X1M U213 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n338), 
        .S1(N12), .Y(n146) );
  MX4X1M U214 ( .A(\regArr[4][0] ), .B(\regArr[5][0] ), .C(\regArr[6][0] ), 
        .D(\regArr[7][0] ), .S0(N11), .S1(N12), .Y(n141) );
  MX4X1M U215 ( .A(\regArr[4][1] ), .B(\regArr[5][1] ), .C(\regArr[6][1] ), 
        .D(\regArr[7][1] ), .S0(n338), .S1(N12), .Y(n145) );
  MX4X1M U216 ( .A(\regArr[4][2] ), .B(\regArr[5][2] ), .C(\regArr[6][2] ), 
        .D(\regArr[7][2] ), .S0(n338), .S1(N12), .Y(n314) );
  MX4X1M U217 ( .A(\regArr[4][3] ), .B(\regArr[5][3] ), .C(\regArr[6][3] ), 
        .D(\regArr[7][3] ), .S0(n338), .S1(N12), .Y(n318) );
  MX4X1M U218 ( .A(\regArr[4][4] ), .B(\regArr[5][4] ), .C(\regArr[6][4] ), 
        .D(\regArr[7][4] ), .S0(n338), .S1(N12), .Y(n322) );
  MX4X1M U219 ( .A(\regArr[4][5] ), .B(\regArr[5][5] ), .C(\regArr[6][5] ), 
        .D(\regArr[7][5] ), .S0(n339), .S1(n336), .Y(n326) );
  MX4X1M U220 ( .A(\regArr[4][6] ), .B(\regArr[5][6] ), .C(\regArr[6][6] ), 
        .D(\regArr[7][6] ), .S0(n339), .S1(n336), .Y(n330) );
  MX4X1M U221 ( .A(\regArr[4][7] ), .B(\regArr[5][7] ), .C(\regArr[6][7] ), 
        .D(\regArr[7][7] ), .S0(n339), .S1(n336), .Y(n334) );
  MX4X1M U222 ( .A(\regArr[12][0] ), .B(\regArr[13][0] ), .C(\regArr[14][0] ), 
        .D(\regArr[15][0] ), .S0(n338), .S1(n336), .Y(n139) );
  MX4X1M U223 ( .A(\regArr[12][2] ), .B(\regArr[13][2] ), .C(\regArr[14][2] ), 
        .D(\regArr[15][2] ), .S0(n338), .S1(N12), .Y(n147) );
  MX4X1M U224 ( .A(\regArr[12][3] ), .B(\regArr[13][3] ), .C(\regArr[14][3] ), 
        .D(\regArr[15][3] ), .S0(n338), .S1(N12), .Y(n316) );
  MX4X1M U225 ( .A(\regArr[12][4] ), .B(\regArr[13][4] ), .C(\regArr[14][4] ), 
        .D(\regArr[15][4] ), .S0(n338), .S1(N12), .Y(n320) );
  MX4X1M U226 ( .A(\regArr[12][5] ), .B(\regArr[13][5] ), .C(\regArr[14][5] ), 
        .D(\regArr[15][5] ), .S0(n339), .S1(n336), .Y(n324) );
  MX4X1M U227 ( .A(\regArr[12][6] ), .B(\regArr[13][6] ), .C(\regArr[14][6] ), 
        .D(\regArr[15][6] ), .S0(n339), .S1(n336), .Y(n328) );
  MX4X1M U228 ( .A(\regArr[12][7] ), .B(\regArr[13][7] ), .C(\regArr[14][7] ), 
        .D(\regArr[15][7] ), .S0(n339), .S1(n336), .Y(n332) );
  AO22X1M U229 ( .A0(N43), .A1(n365), .B0(RdData[0]), .B1(n149), .Y(n177) );
  MX4X1M U230 ( .A(n142), .B(n140), .C(n141), .D(n139), .S0(N14), .S1(N13), 
        .Y(N43) );
  MX4X1M U231 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N11), 
        .S1(N12), .Y(n142) );
  MX4X1M U232 ( .A(\regArr[8][0] ), .B(\regArr[9][0] ), .C(\regArr[10][0] ), 
        .D(\regArr[11][0] ), .S0(N11), .S1(N12), .Y(n140) );
  AO22X1M U233 ( .A0(N41), .A1(n365), .B0(RdData[2]), .B1(n149), .Y(n179) );
  MX4X1M U234 ( .A(n315), .B(n148), .C(n314), .D(n147), .S0(N14), .S1(N13), 
        .Y(N41) );
  MX4X1M U235 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n338), 
        .S1(N12), .Y(n315) );
  MX4X1M U236 ( .A(\regArr[8][2] ), .B(\regArr[9][2] ), .C(\regArr[10][2] ), 
        .D(\regArr[11][2] ), .S0(n338), .S1(N12), .Y(n148) );
  AO22X1M U237 ( .A0(N40), .A1(n365), .B0(RdData[3]), .B1(n149), .Y(n180) );
  MX4X1M U238 ( .A(n319), .B(n317), .C(n318), .D(n316), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U239 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n338), 
        .S1(N12), .Y(n319) );
  MX4X1M U240 ( .A(\regArr[8][3] ), .B(\regArr[9][3] ), .C(\regArr[10][3] ), 
        .D(\regArr[11][3] ), .S0(n338), .S1(N12), .Y(n317) );
  AO22X1M U241 ( .A0(N39), .A1(n365), .B0(RdData[4]), .B1(n149), .Y(n181) );
  MX4X1M U242 ( .A(n323), .B(n321), .C(n322), .D(n320), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U243 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n339), 
        .S1(N12), .Y(n323) );
  MX4X1M U244 ( .A(\regArr[8][4] ), .B(\regArr[9][4] ), .C(\regArr[10][4] ), 
        .D(\regArr[11][4] ), .S0(n338), .S1(N12), .Y(n321) );
  INVX2M U245 ( .A(N11), .Y(n340) );
  INVX2M U246 ( .A(N12), .Y(n341) );
  OAI2BB2X1M U247 ( .B0(n151), .B1(n364), .A0N(REG0[0]), .A1N(n151), .Y(n186)
         );
  OAI2BB2X1M U248 ( .B0(n151), .B1(n363), .A0N(REG0[1]), .A1N(n151), .Y(n187)
         );
  OAI2BB2X1M U249 ( .B0(n151), .B1(n362), .A0N(REG0[2]), .A1N(n151), .Y(n188)
         );
  OAI2BB2X1M U250 ( .B0(n151), .B1(n361), .A0N(REG0[3]), .A1N(n151), .Y(n189)
         );
  OAI2BB2X1M U251 ( .B0(n151), .B1(n360), .A0N(REG0[4]), .A1N(n151), .Y(n190)
         );
  OAI2BB2X1M U252 ( .B0(n151), .B1(n359), .A0N(REG0[5]), .A1N(n151), .Y(n191)
         );
  OAI2BB2X1M U253 ( .B0(n151), .B1(n358), .A0N(REG0[6]), .A1N(n151), .Y(n192)
         );
  OAI2BB2X1M U254 ( .B0(n151), .B1(n357), .A0N(REG0[7]), .A1N(n151), .Y(n193)
         );
  OAI2BB2X1M U255 ( .B0(n364), .B1(n154), .A0N(REG1[0]), .A1N(n154), .Y(n194)
         );
  OAI2BB2X1M U256 ( .B0(n363), .B1(n154), .A0N(REG1[1]), .A1N(n154), .Y(n195)
         );
  OAI2BB2X1M U257 ( .B0(n362), .B1(n154), .A0N(REG1[2]), .A1N(n154), .Y(n196)
         );
  OAI2BB2X1M U258 ( .B0(n361), .B1(n154), .A0N(REG1[3]), .A1N(n154), .Y(n197)
         );
  OAI2BB2X1M U259 ( .B0(n360), .B1(n154), .A0N(REG1[4]), .A1N(n154), .Y(n198)
         );
  OAI2BB2X1M U260 ( .B0(n359), .B1(n154), .A0N(REG1[5]), .A1N(n154), .Y(n199)
         );
  OAI2BB2X1M U261 ( .B0(n358), .B1(n154), .A0N(REG1[6]), .A1N(n154), .Y(n200)
         );
  OAI2BB2X1M U262 ( .B0(n357), .B1(n154), .A0N(REG1[7]), .A1N(n154), .Y(n201)
         );
  OAI2BB2X1M U263 ( .B0(n364), .B1(n159), .A0N(\regArr[4][0] ), .A1N(n159), 
        .Y(n218) );
  OAI2BB2X1M U264 ( .B0(n363), .B1(n159), .A0N(\regArr[4][1] ), .A1N(n159), 
        .Y(n219) );
  OAI2BB2X1M U265 ( .B0(n362), .B1(n159), .A0N(\regArr[4][2] ), .A1N(n159), 
        .Y(n220) );
  OAI2BB2X1M U266 ( .B0(n361), .B1(n159), .A0N(\regArr[4][3] ), .A1N(n159), 
        .Y(n221) );
  OAI2BB2X1M U267 ( .B0(n360), .B1(n159), .A0N(\regArr[4][4] ), .A1N(n159), 
        .Y(n222) );
  OAI2BB2X1M U268 ( .B0(n359), .B1(n159), .A0N(\regArr[4][5] ), .A1N(n159), 
        .Y(n223) );
  OAI2BB2X1M U269 ( .B0(n358), .B1(n159), .A0N(\regArr[4][6] ), .A1N(n159), 
        .Y(n224) );
  OAI2BB2X1M U270 ( .B0(n357), .B1(n159), .A0N(\regArr[4][7] ), .A1N(n159), 
        .Y(n225) );
  OAI2BB2X1M U271 ( .B0(n364), .B1(n161), .A0N(\regArr[5][0] ), .A1N(n161), 
        .Y(n226) );
  OAI2BB2X1M U272 ( .B0(n363), .B1(n161), .A0N(\regArr[5][1] ), .A1N(n161), 
        .Y(n227) );
  OAI2BB2X1M U273 ( .B0(n362), .B1(n161), .A0N(\regArr[5][2] ), .A1N(n161), 
        .Y(n228) );
  OAI2BB2X1M U274 ( .B0(n361), .B1(n161), .A0N(\regArr[5][3] ), .A1N(n161), 
        .Y(n229) );
  OAI2BB2X1M U275 ( .B0(n360), .B1(n161), .A0N(\regArr[5][4] ), .A1N(n161), 
        .Y(n230) );
  OAI2BB2X1M U276 ( .B0(n359), .B1(n161), .A0N(\regArr[5][5] ), .A1N(n161), 
        .Y(n231) );
  OAI2BB2X1M U277 ( .B0(n358), .B1(n161), .A0N(\regArr[5][6] ), .A1N(n161), 
        .Y(n232) );
  OAI2BB2X1M U278 ( .B0(n357), .B1(n161), .A0N(\regArr[5][7] ), .A1N(n161), 
        .Y(n233) );
  OAI2BB2X1M U279 ( .B0(n364), .B1(n162), .A0N(\regArr[6][0] ), .A1N(n162), 
        .Y(n234) );
  OAI2BB2X1M U280 ( .B0(n363), .B1(n162), .A0N(\regArr[6][1] ), .A1N(n162), 
        .Y(n235) );
  OAI2BB2X1M U281 ( .B0(n362), .B1(n162), .A0N(\regArr[6][2] ), .A1N(n162), 
        .Y(n236) );
  OAI2BB2X1M U282 ( .B0(n361), .B1(n162), .A0N(\regArr[6][3] ), .A1N(n162), 
        .Y(n237) );
  OAI2BB2X1M U283 ( .B0(n360), .B1(n162), .A0N(\regArr[6][4] ), .A1N(n162), 
        .Y(n238) );
  OAI2BB2X1M U284 ( .B0(n359), .B1(n162), .A0N(\regArr[6][5] ), .A1N(n162), 
        .Y(n239) );
  OAI2BB2X1M U285 ( .B0(n358), .B1(n162), .A0N(\regArr[6][6] ), .A1N(n162), 
        .Y(n240) );
  OAI2BB2X1M U286 ( .B0(n357), .B1(n162), .A0N(\regArr[6][7] ), .A1N(n162), 
        .Y(n241) );
  OAI2BB2X1M U287 ( .B0(n364), .B1(n165), .A0N(\regArr[7][0] ), .A1N(n165), 
        .Y(n242) );
  OAI2BB2X1M U288 ( .B0(n363), .B1(n165), .A0N(\regArr[7][1] ), .A1N(n165), 
        .Y(n243) );
  OAI2BB2X1M U289 ( .B0(n362), .B1(n165), .A0N(\regArr[7][2] ), .A1N(n165), 
        .Y(n244) );
  OAI2BB2X1M U290 ( .B0(n361), .B1(n165), .A0N(\regArr[7][3] ), .A1N(n165), 
        .Y(n245) );
  OAI2BB2X1M U291 ( .B0(n360), .B1(n165), .A0N(\regArr[7][4] ), .A1N(n165), 
        .Y(n246) );
  OAI2BB2X1M U292 ( .B0(n359), .B1(n165), .A0N(\regArr[7][5] ), .A1N(n165), 
        .Y(n247) );
  OAI2BB2X1M U293 ( .B0(n358), .B1(n165), .A0N(\regArr[7][6] ), .A1N(n165), 
        .Y(n248) );
  OAI2BB2X1M U294 ( .B0(n357), .B1(n165), .A0N(\regArr[7][7] ), .A1N(n165), 
        .Y(n249) );
  OAI2BB2X1M U295 ( .B0(n364), .B1(n166), .A0N(\regArr[8][0] ), .A1N(n166), 
        .Y(n250) );
  OAI2BB2X1M U296 ( .B0(n363), .B1(n166), .A0N(\regArr[8][1] ), .A1N(n166), 
        .Y(n251) );
  OAI2BB2X1M U297 ( .B0(n362), .B1(n166), .A0N(\regArr[8][2] ), .A1N(n166), 
        .Y(n252) );
  OAI2BB2X1M U298 ( .B0(n361), .B1(n166), .A0N(\regArr[8][3] ), .A1N(n166), 
        .Y(n253) );
  OAI2BB2X1M U299 ( .B0(n360), .B1(n166), .A0N(\regArr[8][4] ), .A1N(n166), 
        .Y(n254) );
  OAI2BB2X1M U300 ( .B0(n359), .B1(n166), .A0N(\regArr[8][5] ), .A1N(n166), 
        .Y(n255) );
  OAI2BB2X1M U301 ( .B0(n358), .B1(n166), .A0N(\regArr[8][6] ), .A1N(n166), 
        .Y(n256) );
  OAI2BB2X1M U302 ( .B0(n357), .B1(n166), .A0N(\regArr[8][7] ), .A1N(n166), 
        .Y(n257) );
  OAI2BB2X1M U303 ( .B0(n364), .B1(n168), .A0N(\regArr[9][0] ), .A1N(n168), 
        .Y(n258) );
  OAI2BB2X1M U304 ( .B0(n363), .B1(n168), .A0N(\regArr[9][1] ), .A1N(n168), 
        .Y(n259) );
  OAI2BB2X1M U305 ( .B0(n362), .B1(n168), .A0N(\regArr[9][2] ), .A1N(n168), 
        .Y(n260) );
  OAI2BB2X1M U306 ( .B0(n361), .B1(n168), .A0N(\regArr[9][3] ), .A1N(n168), 
        .Y(n261) );
  OAI2BB2X1M U307 ( .B0(n360), .B1(n168), .A0N(\regArr[9][4] ), .A1N(n168), 
        .Y(n262) );
  OAI2BB2X1M U308 ( .B0(n359), .B1(n168), .A0N(\regArr[9][5] ), .A1N(n168), 
        .Y(n263) );
  OAI2BB2X1M U309 ( .B0(n358), .B1(n168), .A0N(\regArr[9][6] ), .A1N(n168), 
        .Y(n264) );
  OAI2BB2X1M U310 ( .B0(n357), .B1(n168), .A0N(\regArr[9][7] ), .A1N(n168), 
        .Y(n265) );
  OAI2BB2X1M U311 ( .B0(n364), .B1(n170), .A0N(\regArr[10][0] ), .A1N(n170), 
        .Y(n266) );
  OAI2BB2X1M U312 ( .B0(n363), .B1(n170), .A0N(\regArr[10][1] ), .A1N(n170), 
        .Y(n267) );
  OAI2BB2X1M U313 ( .B0(n362), .B1(n170), .A0N(\regArr[10][2] ), .A1N(n170), 
        .Y(n268) );
  OAI2BB2X1M U314 ( .B0(n361), .B1(n170), .A0N(\regArr[10][3] ), .A1N(n170), 
        .Y(n269) );
  OAI2BB2X1M U315 ( .B0(n360), .B1(n170), .A0N(\regArr[10][4] ), .A1N(n170), 
        .Y(n270) );
  OAI2BB2X1M U316 ( .B0(n359), .B1(n170), .A0N(\regArr[10][5] ), .A1N(n170), 
        .Y(n271) );
  OAI2BB2X1M U317 ( .B0(n358), .B1(n170), .A0N(\regArr[10][6] ), .A1N(n170), 
        .Y(n272) );
  OAI2BB2X1M U318 ( .B0(n357), .B1(n170), .A0N(\regArr[10][7] ), .A1N(n170), 
        .Y(n273) );
  OAI2BB2X1M U319 ( .B0(n364), .B1(n171), .A0N(\regArr[11][0] ), .A1N(n171), 
        .Y(n274) );
  OAI2BB2X1M U320 ( .B0(n363), .B1(n171), .A0N(\regArr[11][1] ), .A1N(n171), 
        .Y(n275) );
  OAI2BB2X1M U321 ( .B0(n362), .B1(n171), .A0N(\regArr[11][2] ), .A1N(n171), 
        .Y(n276) );
  OAI2BB2X1M U322 ( .B0(n361), .B1(n171), .A0N(\regArr[11][3] ), .A1N(n171), 
        .Y(n277) );
  OAI2BB2X1M U323 ( .B0(n360), .B1(n171), .A0N(\regArr[11][4] ), .A1N(n171), 
        .Y(n278) );
  OAI2BB2X1M U324 ( .B0(n359), .B1(n171), .A0N(\regArr[11][5] ), .A1N(n171), 
        .Y(n279) );
  OAI2BB2X1M U325 ( .B0(n358), .B1(n171), .A0N(\regArr[11][6] ), .A1N(n171), 
        .Y(n280) );
  OAI2BB2X1M U326 ( .B0(n357), .B1(n171), .A0N(\regArr[11][7] ), .A1N(n171), 
        .Y(n281) );
  OAI2BB2X1M U327 ( .B0(n364), .B1(n172), .A0N(\regArr[12][0] ), .A1N(n172), 
        .Y(n282) );
  OAI2BB2X1M U328 ( .B0(n363), .B1(n172), .A0N(\regArr[12][1] ), .A1N(n172), 
        .Y(n283) );
  OAI2BB2X1M U329 ( .B0(n362), .B1(n172), .A0N(\regArr[12][2] ), .A1N(n172), 
        .Y(n284) );
  OAI2BB2X1M U330 ( .B0(n361), .B1(n172), .A0N(\regArr[12][3] ), .A1N(n172), 
        .Y(n285) );
  OAI2BB2X1M U331 ( .B0(n360), .B1(n172), .A0N(\regArr[12][4] ), .A1N(n172), 
        .Y(n286) );
  OAI2BB2X1M U332 ( .B0(n359), .B1(n172), .A0N(\regArr[12][5] ), .A1N(n172), 
        .Y(n287) );
  OAI2BB2X1M U333 ( .B0(n358), .B1(n172), .A0N(\regArr[12][6] ), .A1N(n172), 
        .Y(n288) );
  OAI2BB2X1M U334 ( .B0(n357), .B1(n172), .A0N(\regArr[12][7] ), .A1N(n172), 
        .Y(n289) );
  OAI2BB2X1M U335 ( .B0(n364), .B1(n173), .A0N(\regArr[13][0] ), .A1N(n173), 
        .Y(n290) );
  OAI2BB2X1M U336 ( .B0(n363), .B1(n173), .A0N(\regArr[13][1] ), .A1N(n173), 
        .Y(n291) );
  OAI2BB2X1M U337 ( .B0(n362), .B1(n173), .A0N(\regArr[13][2] ), .A1N(n173), 
        .Y(n292) );
  OAI2BB2X1M U338 ( .B0(n361), .B1(n173), .A0N(\regArr[13][3] ), .A1N(n173), 
        .Y(n293) );
  OAI2BB2X1M U339 ( .B0(n360), .B1(n173), .A0N(\regArr[13][4] ), .A1N(n173), 
        .Y(n294) );
  OAI2BB2X1M U340 ( .B0(n359), .B1(n173), .A0N(\regArr[13][5] ), .A1N(n173), 
        .Y(n295) );
  OAI2BB2X1M U341 ( .B0(n358), .B1(n173), .A0N(\regArr[13][6] ), .A1N(n173), 
        .Y(n296) );
  OAI2BB2X1M U342 ( .B0(n357), .B1(n173), .A0N(\regArr[13][7] ), .A1N(n173), 
        .Y(n297) );
  OAI2BB2X1M U343 ( .B0(n364), .B1(n174), .A0N(\regArr[14][0] ), .A1N(n174), 
        .Y(n298) );
  OAI2BB2X1M U344 ( .B0(n363), .B1(n174), .A0N(\regArr[14][1] ), .A1N(n174), 
        .Y(n299) );
  OAI2BB2X1M U345 ( .B0(n362), .B1(n174), .A0N(\regArr[14][2] ), .A1N(n174), 
        .Y(n300) );
  OAI2BB2X1M U346 ( .B0(n361), .B1(n174), .A0N(\regArr[14][3] ), .A1N(n174), 
        .Y(n301) );
  OAI2BB2X1M U347 ( .B0(n360), .B1(n174), .A0N(\regArr[14][4] ), .A1N(n174), 
        .Y(n302) );
  OAI2BB2X1M U348 ( .B0(n359), .B1(n174), .A0N(\regArr[14][5] ), .A1N(n174), 
        .Y(n303) );
  OAI2BB2X1M U349 ( .B0(n358), .B1(n174), .A0N(\regArr[14][6] ), .A1N(n174), 
        .Y(n304) );
  OAI2BB2X1M U350 ( .B0(n357), .B1(n174), .A0N(\regArr[14][7] ), .A1N(n174), 
        .Y(n305) );
  OAI2BB2X1M U351 ( .B0(n364), .B1(n176), .A0N(\regArr[15][0] ), .A1N(n176), 
        .Y(n306) );
  OAI2BB2X1M U352 ( .B0(n363), .B1(n176), .A0N(\regArr[15][1] ), .A1N(n176), 
        .Y(n307) );
  OAI2BB2X1M U353 ( .B0(n362), .B1(n176), .A0N(\regArr[15][2] ), .A1N(n176), 
        .Y(n308) );
  OAI2BB2X1M U354 ( .B0(n361), .B1(n176), .A0N(\regArr[15][3] ), .A1N(n176), 
        .Y(n309) );
  OAI2BB2X1M U355 ( .B0(n360), .B1(n176), .A0N(\regArr[15][4] ), .A1N(n176), 
        .Y(n310) );
  OAI2BB2X1M U356 ( .B0(n359), .B1(n176), .A0N(\regArr[15][5] ), .A1N(n176), 
        .Y(n311) );
  OAI2BB2X1M U357 ( .B0(n358), .B1(n176), .A0N(\regArr[15][6] ), .A1N(n176), 
        .Y(n312) );
  OAI2BB2X1M U358 ( .B0(n357), .B1(n176), .A0N(\regArr[15][7] ), .A1N(n176), 
        .Y(n313) );
  OAI2BB2X1M U359 ( .B0(n363), .B1(n156), .A0N(REG2[1]), .A1N(n156), .Y(n203)
         );
  OAI2BB2X1M U360 ( .B0(n362), .B1(n156), .A0N(REG2[2]), .A1N(n156), .Y(n204)
         );
  OAI2BB2X1M U361 ( .B0(n361), .B1(n156), .A0N(REG2[3]), .A1N(n156), .Y(n205)
         );
  OAI2BB2X1M U362 ( .B0(n360), .B1(n156), .A0N(REG2[4]), .A1N(n156), .Y(n206)
         );
  OAI2BB2X1M U363 ( .B0(n359), .B1(n156), .A0N(REG2[5]), .A1N(n156), .Y(n207)
         );
  OAI2BB2X1M U364 ( .B0(n358), .B1(n156), .A0N(REG2[6]), .A1N(n156), .Y(n208)
         );
  OAI2BB2X1M U365 ( .B0(n364), .B1(n158), .A0N(REG3[0]), .A1N(n158), .Y(n210)
         );
  OAI2BB2X1M U366 ( .B0(n363), .B1(n158), .A0N(REG3[1]), .A1N(n158), .Y(n211)
         );
  OAI2BB2X1M U367 ( .B0(n362), .B1(n158), .A0N(REG3[2]), .A1N(n158), .Y(n212)
         );
  OAI2BB2X1M U368 ( .B0(n361), .B1(n158), .A0N(REG3[3]), .A1N(n158), .Y(n213)
         );
  OAI2BB2X1M U369 ( .B0(n360), .B1(n158), .A0N(REG3[4]), .A1N(n158), .Y(n214)
         );
  OAI2BB2X1M U370 ( .B0(n358), .B1(n158), .A0N(REG3[6]), .A1N(n158), .Y(n216)
         );
  OAI2BB2X1M U371 ( .B0(n357), .B1(n158), .A0N(REG3[7]), .A1N(n158), .Y(n217)
         );
  OAI2BB2X1M U372 ( .B0(n364), .B1(n156), .A0N(REG2[0]), .A1N(n156), .Y(n202)
         );
  OAI2BB2X1M U373 ( .B0(n357), .B1(n156), .A0N(REG2[7]), .A1N(n156), .Y(n209)
         );
  OAI2BB2X1M U374 ( .B0(n359), .B1(n158), .A0N(REG3[5]), .A1N(n158), .Y(n215)
         );
  OAI2BB1X2M U375 ( .A0N(RdData_VLD), .A1N(n150), .B0(n149), .Y(n185) );
  DLY1X1M U376 ( .A(test_se), .Y(n370) );
  DLY1X1M U377 ( .A(test_se), .Y(n371) );
  DLY1X1M U378 ( .A(test_se), .Y(n372) );
  DLY1X1M U379 ( .A(test_se), .Y(n373) );
endmodule


module FIFO_wptr_n_full_ADDR_WIDTH4_test_1 ( wclk, wrst_n, winc, wq2_rptr, 
        wfull, waddr, Gwptr, test_si, test_so, test_se );
  input [4:0] wq2_rptr;
  output [3:0] waddr;
  output [4:0] Gwptr;
  input wclk, wrst_n, winc, test_si, test_se;
  output wfull, test_so;
  wire   N7, N8, N9, N10, N11, n1, n9, n11, n13, n15, n17, \eq_19/A[2] ,
         \eq_19/A[3] , \add_30/carry[4] , \add_30/carry[3] , \add_30/carry[2] ,
         n2, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;
  wire   [4:0] comb_Gwptr;
wand  wclk;
  assign test_so = n26;

  SDFFRQX2M \wptr_reg[4]  ( .D(n15), .SI(waddr[3]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(comb_Gwptr[4]) );
  SDFFRQX2M \wptr_reg[0]  ( .D(n17), .SI(Gwptr[4]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(waddr[0]) );
  SDFFRQX2M \wptr_reg[3]  ( .D(n9), .SI(waddr[2]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(waddr[3]) );
  SDFFRQX2M \wptr_reg[1]  ( .D(n13), .SI(N7), .SE(test_se), .CK(wclk), .RN(
        wrst_n), .Q(waddr[1]) );
  SDFFRQX2M \wptr_reg[2]  ( .D(n11), .SI(waddr[1]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(waddr[2]) );
  SDFFRQX2M \Gwptr_reg[4]  ( .D(comb_Gwptr[4]), .SI(Gwptr[3]), .SE(test_se), 
        .CK(wclk), .RN(wrst_n), .Q(Gwptr[4]) );
  SDFFRQX2M \Gwptr_reg[3]  ( .D(n25), .SI(Gwptr[2]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(Gwptr[3]) );
  SDFFRQX2M \Gwptr_reg[2]  ( .D(n27), .SI(Gwptr[1]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(Gwptr[2]) );
  SDFFRQX2M \Gwptr_reg[1]  ( .D(comb_Gwptr[1]), .SI(Gwptr[0]), .SE(test_se), 
        .CK(wclk), .RN(wrst_n), .Q(Gwptr[1]) );
  SDFFRQX2M \Gwptr_reg[0]  ( .D(comb_Gwptr[0]), .SI(test_si), .SE(test_se), 
        .CK(wclk), .RN(wrst_n), .Q(Gwptr[0]) );
  NOR2BX2M U3 ( .AN(winc), .B(wfull), .Y(n1) );
  OAI2BB2X1M U4 ( .B0(n1), .B1(n28), .A0N(N9), .A1N(n1), .Y(n11) );
  INVX2M U5 ( .A(\eq_19/A[2] ), .Y(n27) );
  INVX2M U6 ( .A(\eq_19/A[3] ), .Y(n25) );
  OAI2BB2X1M U7 ( .B0(n26), .B1(n1), .A0N(N11), .A1N(n1), .Y(n15) );
  INVX2M U8 ( .A(waddr[2]), .Y(n28) );
  CLKXOR2X2M U9 ( .A(n28), .B(waddr[3]), .Y(\eq_19/A[2] ) );
  CLKXOR2X2M U10 ( .A(n26), .B(waddr[3]), .Y(\eq_19/A[3] ) );
  INVX2M U11 ( .A(comb_Gwptr[4]), .Y(n26) );
  AO2B2X2M U12 ( .B0(N10), .B1(n1), .A0(waddr[3]), .A1N(n1), .Y(n9) );
  AO2B2X2M U13 ( .B0(N8), .B1(n1), .A0(waddr[1]), .A1N(n1), .Y(n13) );
  AO2B2X2M U14 ( .B0(N7), .B1(n1), .A0(waddr[0]), .A1N(n1), .Y(n17) );
  CLKXOR2X2M U15 ( .A(waddr[2]), .B(waddr[1]), .Y(comb_Gwptr[1]) );
  CLKXOR2X2M U16 ( .A(waddr[1]), .B(waddr[0]), .Y(comb_Gwptr[0]) );
  ADDHX1M U27 ( .A(waddr[2]), .B(\add_30/carry[2] ), .CO(\add_30/carry[3] ), 
        .S(N9) );
  ADDHX1M U28 ( .A(waddr[1]), .B(waddr[0]), .CO(\add_30/carry[2] ), .S(N8) );
  ADDHX1M U29 ( .A(waddr[3]), .B(\add_30/carry[3] ), .CO(\add_30/carry[4] ), 
        .S(N10) );
  CLKINVX1M U30 ( .A(waddr[0]), .Y(N7) );
  CLKXOR2X2M U31 ( .A(\add_30/carry[4] ), .B(comb_Gwptr[4]), .Y(N11) );
  CLKXOR2X2M U32 ( .A(wq2_rptr[2]), .B(\eq_19/A[2] ), .Y(n24) );
  NOR2BX1M U33 ( .AN(wq2_rptr[0]), .B(comb_Gwptr[0]), .Y(n2) );
  OAI2B2X1M U34 ( .A1N(comb_Gwptr[1]), .A0(n2), .B0(wq2_rptr[1]), .B1(n2), .Y(
        n20) );
  NOR2BX1M U35 ( .AN(comb_Gwptr[0]), .B(wq2_rptr[0]), .Y(n18) );
  OAI2B2X1M U36 ( .A1N(wq2_rptr[1]), .A0(n18), .B0(comb_Gwptr[1]), .B1(n18), 
        .Y(n19) );
  CLKNAND2X2M U37 ( .A(n20), .B(n19), .Y(n23) );
  CLKXOR2X2M U38 ( .A(wq2_rptr[3]), .B(\eq_19/A[3] ), .Y(n22) );
  CLKXOR2X2M U39 ( .A(wq2_rptr[4]), .B(n26), .Y(n21) );
  NOR4X1M U40 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(wfull) );
endmodule


module FIFO_rptr_n_empty_ADDR_WIDTH4_test_1 ( rclk, rrst_n, rinc, rq2_wptr, 
        rempty, raddr, Grptr, test_si, test_so, test_se );
  input [4:0] rq2_wptr;
  output [3:0] raddr;
  output [4:0] Grptr;
  input rclk, rrst_n, rinc, test_si, test_se;
  output rempty, test_so;
  wire   N5, N6, N7, N8, n1, n8, n10, n12, n14, n16, \add_30/carry[4] ,
         \add_30/carry[3] , \add_30/carry[2] , n17, n18, n19, n20, n21, n22,
         n23, n24, n25;
  wire   [4:0] comb_Grptr;
  assign test_so = comb_Grptr[4];

  SDFFRQX2M \rptr_reg[4]  ( .D(n14), .SI(raddr[3]), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(comb_Grptr[4]) );
  SDFFRQX2M \rptr_reg[0]  ( .D(n16), .SI(Grptr[4]), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(raddr[0]) );
  SDFFRQX2M \rptr_reg[1]  ( .D(n12), .SI(n17), .SE(test_se), .CK(rclk), .RN(
        rrst_n), .Q(raddr[1]) );
  SDFFRQX2M \rptr_reg[2]  ( .D(n10), .SI(raddr[1]), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(raddr[2]) );
  SDFFRQX2M \Grptr_reg[4]  ( .D(comb_Grptr[4]), .SI(Grptr[3]), .SE(test_se), 
        .CK(rclk), .RN(rrst_n), .Q(Grptr[4]) );
  SDFFRQX2M \Grptr_reg[3]  ( .D(comb_Grptr[3]), .SI(Grptr[2]), .SE(test_se), 
        .CK(rclk), .RN(rrst_n), .Q(Grptr[3]) );
  SDFFRQX2M \Grptr_reg[2]  ( .D(comb_Grptr[2]), .SI(Grptr[1]), .SE(test_se), 
        .CK(rclk), .RN(rrst_n), .Q(Grptr[2]) );
  SDFFRQX2M \Grptr_reg[1]  ( .D(comb_Grptr[1]), .SI(Grptr[0]), .SE(test_se), 
        .CK(rclk), .RN(rrst_n), .Q(Grptr[1]) );
  SDFFRQX2M \Grptr_reg[0]  ( .D(comb_Grptr[0]), .SI(test_si), .SE(test_se), 
        .CK(rclk), .RN(rrst_n), .Q(Grptr[0]) );
  SDFFRQX2M \rptr_reg[3]  ( .D(n8), .SI(raddr[2]), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(raddr[3]) );
  NOR2BX2M U3 ( .AN(rinc), .B(rempty), .Y(n1) );
  AO2B2X2M U4 ( .B0(n17), .B1(n1), .A0(raddr[0]), .A1N(n1), .Y(n16) );
  AO2B2X2M U5 ( .B0(N7), .B1(n1), .A0(raddr[3]), .A1N(n1), .Y(n8) );
  AO2B2X2M U6 ( .B0(N6), .B1(n1), .A0(raddr[2]), .A1N(n1), .Y(n10) );
  AO2B2X2M U7 ( .B0(N5), .B1(n1), .A0(raddr[1]), .A1N(n1), .Y(n12) );
  AO2B2X2M U8 ( .B0(N8), .B1(n1), .A0(comb_Grptr[4]), .A1N(n1), .Y(n14) );
  INVX2M U9 ( .A(raddr[0]), .Y(n17) );
  CLKXOR2X2M U10 ( .A(raddr[3]), .B(raddr[2]), .Y(comb_Grptr[2]) );
  CLKXOR2X2M U11 ( .A(raddr[3]), .B(comb_Grptr[4]), .Y(comb_Grptr[3]) );
  CLKXOR2X2M U12 ( .A(raddr[2]), .B(raddr[1]), .Y(comb_Grptr[1]) );
  CLKXOR2X2M U23 ( .A(raddr[1]), .B(raddr[0]), .Y(comb_Grptr[0]) );
  ADDHX1M U24 ( .A(raddr[2]), .B(\add_30/carry[2] ), .CO(\add_30/carry[3] ), 
        .S(N6) );
  ADDHX1M U25 ( .A(raddr[1]), .B(raddr[0]), .CO(\add_30/carry[2] ), .S(N5) );
  ADDHX1M U26 ( .A(raddr[3]), .B(\add_30/carry[3] ), .CO(\add_30/carry[4] ), 
        .S(N7) );
  CLKXOR2X2M U27 ( .A(\add_30/carry[4] ), .B(comb_Grptr[4]), .Y(N8) );
  CLKXOR2X2M U28 ( .A(rq2_wptr[2]), .B(comb_Grptr[2]), .Y(n25) );
  NOR2BX1M U29 ( .AN(rq2_wptr[0]), .B(comb_Grptr[0]), .Y(n18) );
  OAI2B2X1M U30 ( .A1N(comb_Grptr[1]), .A0(n18), .B0(rq2_wptr[1]), .B1(n18), 
        .Y(n21) );
  NOR2BX1M U31 ( .AN(comb_Grptr[0]), .B(rq2_wptr[0]), .Y(n19) );
  OAI2B2X1M U32 ( .A1N(rq2_wptr[1]), .A0(n19), .B0(comb_Grptr[1]), .B1(n19), 
        .Y(n20) );
  CLKNAND2X2M U33 ( .A(n21), .B(n20), .Y(n24) );
  CLKXOR2X2M U34 ( .A(rq2_wptr[3]), .B(comb_Grptr[3]), .Y(n23) );
  CLKXOR2X2M U35 ( .A(rq2_wptr[4]), .B(comb_Grptr[4]), .Y(n22) );
  NOR4X1M U36 ( .A(n25), .B(n24), .C(n23), .D(n22), .Y(rempty) );
endmodule


module FIFO_MEM_DATA_WIDTH8_ADDR_WIDTH4_test_1 ( wclk, wrst_n, winc, wfull, 
        waddr, raddr, wdata, rdata, test_si3, test_si2, test_si1, test_so3, 
        test_so2, test_so1, test_se );
  input [3:0] waddr;
  input [3:0] raddr;
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, wrst_n, winc, wfull, test_si3, test_si2, test_si1, test_se;
  output test_so3, test_so2, test_so1;
  wire   N9, N10, N11, N12, \mem[15][7] , \mem[15][6] , \mem[15][5] ,
         \mem[15][4] , \mem[15][3] , \mem[15][2] , \mem[15][1] , \mem[15][0] ,
         \mem[14][7] , \mem[14][6] , \mem[14][5] , \mem[14][4] , \mem[14][3] ,
         \mem[14][2] , \mem[14][1] , \mem[14][0] , \mem[13][7] , \mem[13][6] ,
         \mem[13][5] , \mem[13][4] , \mem[13][3] , \mem[13][2] , \mem[13][1] ,
         \mem[13][0] , \mem[12][7] , \mem[12][6] , \mem[12][5] , \mem[12][4] ,
         \mem[12][3] , \mem[12][2] , \mem[12][1] , \mem[12][0] , \mem[11][7] ,
         \mem[11][6] , \mem[11][5] , \mem[11][4] , \mem[11][3] , \mem[11][2] ,
         \mem[11][1] , \mem[11][0] , \mem[10][7] , \mem[10][6] , \mem[10][5] ,
         \mem[10][4] , \mem[10][3] , \mem[10][2] , \mem[10][1] , \mem[10][0] ,
         \mem[9][7] , \mem[9][6] , \mem[9][5] , \mem[9][4] , \mem[9][3] ,
         \mem[9][2] , \mem[9][1] , \mem[9][0] , \mem[8][7] , \mem[8][6] ,
         \mem[8][5] , \mem[8][4] , \mem[8][3] , \mem[8][2] , \mem[8][1] ,
         \mem[8][0] , \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] ,
         \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , \mem[6][7] ,
         \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] ,
         \mem[6][1] , \mem[6][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] ,
         \mem[5][4] , \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] ,
         \mem[4][7] , \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] ,
         \mem[4][2] , \mem[4][1] , \mem[4][0] , \mem[3][7] , \mem[3][6] ,
         \mem[3][5] , \mem[3][4] , \mem[3][3] , \mem[3][2] , \mem[3][1] ,
         \mem[3][0] , \mem[2][7] , \mem[2][6] , \mem[2][5] , \mem[2][4] ,
         \mem[2][3] , \mem[2][2] , \mem[2][1] , \mem[2][0] , \mem[1][7] ,
         \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] ,
         \mem[1][1] , \mem[1][0] , \mem[0][7] , \mem[0][6] , \mem[0][5] ,
         \mem[0][4] , \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n354, n355, n356, n357, n358, n359, n360;
wand  wclk;
  assign N9 = raddr[0];
  assign N10 = raddr[1];
  assign N11 = raddr[2];
  assign N12 = raddr[3];
  assign test_so3 = \mem[15][7] ;
  assign test_so2 = \mem[12][0] ;
  assign test_so1 = \mem[1][6] ;

  SDFFRQX1M \mem_reg[13][7]  ( .D(n277), .SI(\mem[13][6] ), .SE(n359), .CK(
        wclk), .RN(n326), .Q(\mem[13][7] ) );
  SDFFRQX1M \mem_reg[13][6]  ( .D(n276), .SI(\mem[13][5] ), .SE(n358), .CK(
        wclk), .RN(n326), .Q(\mem[13][6] ) );
  SDFFRQX1M \mem_reg[13][5]  ( .D(n275), .SI(\mem[13][4] ), .SE(n357), .CK(
        wclk), .RN(n326), .Q(\mem[13][5] ) );
  SDFFRQX1M \mem_reg[13][4]  ( .D(n274), .SI(\mem[13][3] ), .SE(n356), .CK(
        wclk), .RN(n326), .Q(\mem[13][4] ) );
  SDFFRQX1M \mem_reg[13][3]  ( .D(n273), .SI(\mem[13][2] ), .SE(n359), .CK(
        wclk), .RN(n326), .Q(\mem[13][3] ) );
  SDFFRQX1M \mem_reg[13][2]  ( .D(n272), .SI(\mem[13][1] ), .SE(n358), .CK(
        wclk), .RN(n326), .Q(\mem[13][2] ) );
  SDFFRQX1M \mem_reg[13][1]  ( .D(n271), .SI(\mem[13][0] ), .SE(n357), .CK(
        wclk), .RN(n326), .Q(\mem[13][1] ) );
  SDFFRQX1M \mem_reg[13][0]  ( .D(n270), .SI(\mem[12][7] ), .SE(n356), .CK(
        wclk), .RN(n326), .Q(\mem[13][0] ) );
  SDFFRQX1M \mem_reg[9][7]  ( .D(n245), .SI(\mem[9][6] ), .SE(n359), .CK(wclk), 
        .RN(n329), .Q(\mem[9][7] ) );
  SDFFRQX1M \mem_reg[9][6]  ( .D(n244), .SI(\mem[9][5] ), .SE(n358), .CK(wclk), 
        .RN(n329), .Q(\mem[9][6] ) );
  SDFFRQX1M \mem_reg[9][5]  ( .D(n243), .SI(\mem[9][4] ), .SE(n357), .CK(wclk), 
        .RN(n329), .Q(\mem[9][5] ) );
  SDFFRQX1M \mem_reg[9][4]  ( .D(n242), .SI(\mem[9][3] ), .SE(n356), .CK(wclk), 
        .RN(n329), .Q(\mem[9][4] ) );
  SDFFRQX1M \mem_reg[9][3]  ( .D(n241), .SI(\mem[9][2] ), .SE(n359), .CK(wclk), 
        .RN(n329), .Q(\mem[9][3] ) );
  SDFFRQX1M \mem_reg[9][2]  ( .D(n240), .SI(\mem[9][1] ), .SE(n358), .CK(wclk), 
        .RN(n329), .Q(\mem[9][2] ) );
  SDFFRQX1M \mem_reg[9][1]  ( .D(n239), .SI(\mem[9][0] ), .SE(n357), .CK(wclk), 
        .RN(n329), .Q(\mem[9][1] ) );
  SDFFRQX1M \mem_reg[9][0]  ( .D(n238), .SI(\mem[8][7] ), .SE(n356), .CK(wclk), 
        .RN(n329), .Q(\mem[9][0] ) );
  SDFFRQX1M \mem_reg[5][7]  ( .D(n213), .SI(\mem[5][6] ), .SE(n359), .CK(wclk), 
        .RN(n331), .Q(\mem[5][7] ) );
  SDFFRQX1M \mem_reg[5][6]  ( .D(n212), .SI(\mem[5][5] ), .SE(n358), .CK(wclk), 
        .RN(n331), .Q(\mem[5][6] ) );
  SDFFRQX1M \mem_reg[5][5]  ( .D(n211), .SI(\mem[5][4] ), .SE(n357), .CK(wclk), 
        .RN(n331), .Q(\mem[5][5] ) );
  SDFFRQX1M \mem_reg[5][4]  ( .D(n210), .SI(\mem[5][3] ), .SE(n356), .CK(wclk), 
        .RN(n331), .Q(\mem[5][4] ) );
  SDFFRQX1M \mem_reg[5][3]  ( .D(n209), .SI(\mem[5][2] ), .SE(n359), .CK(wclk), 
        .RN(n332), .Q(\mem[5][3] ) );
  SDFFRQX1M \mem_reg[5][2]  ( .D(n208), .SI(\mem[5][1] ), .SE(n358), .CK(wclk), 
        .RN(n332), .Q(\mem[5][2] ) );
  SDFFRQX1M \mem_reg[5][1]  ( .D(n207), .SI(\mem[5][0] ), .SE(n357), .CK(wclk), 
        .RN(n332), .Q(\mem[5][1] ) );
  SDFFRQX1M \mem_reg[5][0]  ( .D(n206), .SI(\mem[4][7] ), .SE(n356), .CK(wclk), 
        .RN(n332), .Q(\mem[5][0] ) );
  SDFFRQX1M \mem_reg[1][7]  ( .D(n181), .SI(test_si2), .SE(n359), .CK(wclk), 
        .RN(n334), .Q(\mem[1][7] ) );
  SDFFRQX1M \mem_reg[1][5]  ( .D(n179), .SI(\mem[1][4] ), .SE(n357), .CK(wclk), 
        .RN(n334), .Q(\mem[1][5] ) );
  SDFFRQX1M \mem_reg[1][4]  ( .D(n178), .SI(\mem[1][3] ), .SE(n356), .CK(wclk), 
        .RN(n334), .Q(\mem[1][4] ) );
  SDFFRQX1M \mem_reg[1][3]  ( .D(n177), .SI(\mem[1][2] ), .SE(n359), .CK(wclk), 
        .RN(n334), .Q(\mem[1][3] ) );
  SDFFRQX1M \mem_reg[1][2]  ( .D(n176), .SI(\mem[1][1] ), .SE(n358), .CK(wclk), 
        .RN(n334), .Q(\mem[1][2] ) );
  SDFFRQX1M \mem_reg[1][1]  ( .D(n175), .SI(\mem[1][0] ), .SE(n357), .CK(wclk), 
        .RN(n334), .Q(\mem[1][1] ) );
  SDFFRQX1M \mem_reg[1][0]  ( .D(n174), .SI(\mem[0][7] ), .SE(n356), .CK(wclk), 
        .RN(n334), .Q(\mem[1][0] ) );
  SDFFRQX1M \mem_reg[15][7]  ( .D(n293), .SI(\mem[15][6] ), .SE(n359), .CK(
        wclk), .RN(n325), .Q(\mem[15][7] ) );
  SDFFRQX1M \mem_reg[15][6]  ( .D(n292), .SI(\mem[15][5] ), .SE(n358), .CK(
        wclk), .RN(n325), .Q(\mem[15][6] ) );
  SDFFRQX1M \mem_reg[15][5]  ( .D(n291), .SI(\mem[15][4] ), .SE(n357), .CK(
        wclk), .RN(n325), .Q(\mem[15][5] ) );
  SDFFRQX1M \mem_reg[15][4]  ( .D(n290), .SI(\mem[15][3] ), .SE(n356), .CK(
        wclk), .RN(n325), .Q(\mem[15][4] ) );
  SDFFRQX1M \mem_reg[15][3]  ( .D(n289), .SI(\mem[15][2] ), .SE(n359), .CK(
        wclk), .RN(n325), .Q(\mem[15][3] ) );
  SDFFRQX1M \mem_reg[15][2]  ( .D(n288), .SI(\mem[15][1] ), .SE(n358), .CK(
        wclk), .RN(n325), .Q(\mem[15][2] ) );
  SDFFRQX1M \mem_reg[15][1]  ( .D(n287), .SI(\mem[15][0] ), .SE(n357), .CK(
        wclk), .RN(n325), .Q(\mem[15][1] ) );
  SDFFRQX1M \mem_reg[15][0]  ( .D(n286), .SI(\mem[14][7] ), .SE(n356), .CK(
        wclk), .RN(n325), .Q(\mem[15][0] ) );
  SDFFRQX1M \mem_reg[11][7]  ( .D(n261), .SI(\mem[11][6] ), .SE(n359), .CK(
        wclk), .RN(n327), .Q(\mem[11][7] ) );
  SDFFRQX1M \mem_reg[11][6]  ( .D(n260), .SI(\mem[11][5] ), .SE(n358), .CK(
        wclk), .RN(n327), .Q(\mem[11][6] ) );
  SDFFRQX1M \mem_reg[11][5]  ( .D(n259), .SI(\mem[11][4] ), .SE(n357), .CK(
        wclk), .RN(n327), .Q(\mem[11][5] ) );
  SDFFRQX1M \mem_reg[11][4]  ( .D(n258), .SI(\mem[11][3] ), .SE(n356), .CK(
        wclk), .RN(n327), .Q(\mem[11][4] ) );
  SDFFRQX1M \mem_reg[11][3]  ( .D(n257), .SI(\mem[11][2] ), .SE(n359), .CK(
        wclk), .RN(n328), .Q(\mem[11][3] ) );
  SDFFRQX1M \mem_reg[11][2]  ( .D(n256), .SI(\mem[11][1] ), .SE(n358), .CK(
        wclk), .RN(n328), .Q(\mem[11][2] ) );
  SDFFRQX1M \mem_reg[11][1]  ( .D(n255), .SI(\mem[11][0] ), .SE(n357), .CK(
        wclk), .RN(n328), .Q(\mem[11][1] ) );
  SDFFRQX1M \mem_reg[11][0]  ( .D(n254), .SI(\mem[10][7] ), .SE(n356), .CK(
        wclk), .RN(n328), .Q(\mem[11][0] ) );
  SDFFRQX1M \mem_reg[7][7]  ( .D(n229), .SI(\mem[7][6] ), .SE(n359), .CK(wclk), 
        .RN(n330), .Q(\mem[7][7] ) );
  SDFFRQX1M \mem_reg[7][6]  ( .D(n228), .SI(\mem[7][5] ), .SE(n358), .CK(wclk), 
        .RN(n330), .Q(\mem[7][6] ) );
  SDFFRQX1M \mem_reg[7][5]  ( .D(n227), .SI(\mem[7][4] ), .SE(n357), .CK(wclk), 
        .RN(n330), .Q(\mem[7][5] ) );
  SDFFRQX1M \mem_reg[7][4]  ( .D(n226), .SI(\mem[7][3] ), .SE(n356), .CK(wclk), 
        .RN(n330), .Q(\mem[7][4] ) );
  SDFFRQX1M \mem_reg[7][3]  ( .D(n225), .SI(\mem[7][2] ), .SE(n359), .CK(wclk), 
        .RN(n330), .Q(\mem[7][3] ) );
  SDFFRQX1M \mem_reg[7][2]  ( .D(n224), .SI(\mem[7][1] ), .SE(n358), .CK(wclk), 
        .RN(n330), .Q(\mem[7][2] ) );
  SDFFRQX1M \mem_reg[7][1]  ( .D(n223), .SI(\mem[7][0] ), .SE(n357), .CK(wclk), 
        .RN(n330), .Q(\mem[7][1] ) );
  SDFFRQX1M \mem_reg[7][0]  ( .D(n222), .SI(\mem[6][7] ), .SE(n356), .CK(wclk), 
        .RN(n330), .Q(\mem[7][0] ) );
  SDFFRQX1M \mem_reg[3][7]  ( .D(n197), .SI(\mem[3][6] ), .SE(n359), .CK(wclk), 
        .RN(n333), .Q(\mem[3][7] ) );
  SDFFRQX1M \mem_reg[3][6]  ( .D(n196), .SI(\mem[3][5] ), .SE(n358), .CK(wclk), 
        .RN(n333), .Q(\mem[3][6] ) );
  SDFFRQX1M \mem_reg[3][5]  ( .D(n195), .SI(\mem[3][4] ), .SE(n357), .CK(wclk), 
        .RN(n333), .Q(\mem[3][5] ) );
  SDFFRQX1M \mem_reg[3][4]  ( .D(n194), .SI(\mem[3][3] ), .SE(n356), .CK(wclk), 
        .RN(n333), .Q(\mem[3][4] ) );
  SDFFRQX1M \mem_reg[3][3]  ( .D(n193), .SI(\mem[3][2] ), .SE(n359), .CK(wclk), 
        .RN(n333), .Q(\mem[3][3] ) );
  SDFFRQX1M \mem_reg[3][2]  ( .D(n192), .SI(\mem[3][1] ), .SE(n358), .CK(wclk), 
        .RN(n333), .Q(\mem[3][2] ) );
  SDFFRQX1M \mem_reg[3][1]  ( .D(n191), .SI(\mem[3][0] ), .SE(n357), .CK(wclk), 
        .RN(n333), .Q(\mem[3][1] ) );
  SDFFRQX1M \mem_reg[3][0]  ( .D(n190), .SI(\mem[2][7] ), .SE(n356), .CK(wclk), 
        .RN(n333), .Q(\mem[3][0] ) );
  SDFFRQX1M \mem_reg[14][7]  ( .D(n285), .SI(\mem[14][6] ), .SE(n359), .CK(
        wclk), .RN(n325), .Q(\mem[14][7] ) );
  SDFFRQX1M \mem_reg[14][6]  ( .D(n284), .SI(\mem[14][5] ), .SE(n358), .CK(
        wclk), .RN(n325), .Q(\mem[14][6] ) );
  SDFFRQX1M \mem_reg[14][5]  ( .D(n283), .SI(\mem[14][4] ), .SE(n357), .CK(
        wclk), .RN(n325), .Q(\mem[14][5] ) );
  SDFFRQX1M \mem_reg[14][4]  ( .D(n282), .SI(\mem[14][3] ), .SE(n356), .CK(
        wclk), .RN(n325), .Q(\mem[14][4] ) );
  SDFFRQX1M \mem_reg[14][3]  ( .D(n281), .SI(\mem[14][2] ), .SE(n359), .CK(
        wclk), .RN(n326), .Q(\mem[14][3] ) );
  SDFFRQX1M \mem_reg[14][2]  ( .D(n280), .SI(\mem[14][1] ), .SE(n358), .CK(
        wclk), .RN(n326), .Q(\mem[14][2] ) );
  SDFFRQX1M \mem_reg[14][1]  ( .D(n279), .SI(\mem[14][0] ), .SE(n357), .CK(
        wclk), .RN(n326), .Q(\mem[14][1] ) );
  SDFFRQX1M \mem_reg[14][0]  ( .D(n278), .SI(\mem[13][7] ), .SE(n356), .CK(
        wclk), .RN(n326), .Q(\mem[14][0] ) );
  SDFFRQX1M \mem_reg[10][7]  ( .D(n253), .SI(\mem[10][6] ), .SE(n359), .CK(
        wclk), .RN(n328), .Q(\mem[10][7] ) );
  SDFFRQX1M \mem_reg[10][6]  ( .D(n252), .SI(\mem[10][5] ), .SE(n358), .CK(
        wclk), .RN(n328), .Q(\mem[10][6] ) );
  SDFFRQX1M \mem_reg[10][5]  ( .D(n251), .SI(\mem[10][4] ), .SE(n357), .CK(
        wclk), .RN(n328), .Q(\mem[10][5] ) );
  SDFFRQX1M \mem_reg[10][4]  ( .D(n250), .SI(\mem[10][3] ), .SE(n356), .CK(
        wclk), .RN(n328), .Q(\mem[10][4] ) );
  SDFFRQX1M \mem_reg[10][3]  ( .D(n249), .SI(\mem[10][2] ), .SE(n359), .CK(
        wclk), .RN(n328), .Q(\mem[10][3] ) );
  SDFFRQX1M \mem_reg[10][2]  ( .D(n248), .SI(\mem[10][1] ), .SE(n358), .CK(
        wclk), .RN(n328), .Q(\mem[10][2] ) );
  SDFFRQX1M \mem_reg[10][1]  ( .D(n247), .SI(\mem[10][0] ), .SE(n357), .CK(
        wclk), .RN(n328), .Q(\mem[10][1] ) );
  SDFFRQX1M \mem_reg[10][0]  ( .D(n246), .SI(\mem[9][7] ), .SE(n356), .CK(wclk), .RN(n328), .Q(\mem[10][0] ) );
  SDFFRQX1M \mem_reg[6][7]  ( .D(n221), .SI(\mem[6][6] ), .SE(n359), .CK(wclk), 
        .RN(n331), .Q(\mem[6][7] ) );
  SDFFRQX1M \mem_reg[6][6]  ( .D(n220), .SI(\mem[6][5] ), .SE(n358), .CK(wclk), 
        .RN(n331), .Q(\mem[6][6] ) );
  SDFFRQX1M \mem_reg[6][5]  ( .D(n219), .SI(\mem[6][4] ), .SE(n357), .CK(wclk), 
        .RN(n331), .Q(\mem[6][5] ) );
  SDFFRQX1M \mem_reg[6][4]  ( .D(n218), .SI(\mem[6][3] ), .SE(n356), .CK(wclk), 
        .RN(n331), .Q(\mem[6][4] ) );
  SDFFRQX2M \mem_reg[6][3]  ( .D(n217), .SI(\mem[6][2] ), .SE(n359), .CK(wclk), 
        .RN(n331), .Q(\mem[6][3] ) );
  SDFFRQX2M \mem_reg[6][2]  ( .D(n216), .SI(\mem[6][1] ), .SE(n358), .CK(wclk), 
        .RN(n331), .Q(\mem[6][2] ) );
  SDFFRQX2M \mem_reg[6][1]  ( .D(n215), .SI(\mem[6][0] ), .SE(n357), .CK(wclk), 
        .RN(n331), .Q(\mem[6][1] ) );
  SDFFRQX2M \mem_reg[6][0]  ( .D(n214), .SI(\mem[5][7] ), .SE(n356), .CK(wclk), 
        .RN(n331), .Q(\mem[6][0] ) );
  SDFFRQX2M \mem_reg[2][7]  ( .D(n189), .SI(\mem[2][6] ), .SE(n359), .CK(wclk), 
        .RN(n333), .Q(\mem[2][7] ) );
  SDFFRQX2M \mem_reg[2][6]  ( .D(n188), .SI(\mem[2][5] ), .SE(n358), .CK(wclk), 
        .RN(n333), .Q(\mem[2][6] ) );
  SDFFRQX2M \mem_reg[2][5]  ( .D(n187), .SI(\mem[2][4] ), .SE(n357), .CK(wclk), 
        .RN(n333), .Q(\mem[2][5] ) );
  SDFFRQX2M \mem_reg[2][4]  ( .D(n186), .SI(\mem[2][3] ), .SE(n356), .CK(wclk), 
        .RN(n333), .Q(\mem[2][4] ) );
  SDFFRQX2M \mem_reg[2][3]  ( .D(n185), .SI(\mem[2][2] ), .SE(n359), .CK(wclk), 
        .RN(n334), .Q(\mem[2][3] ) );
  SDFFRQX2M \mem_reg[2][2]  ( .D(n184), .SI(\mem[2][1] ), .SE(n358), .CK(wclk), 
        .RN(n334), .Q(\mem[2][2] ) );
  SDFFRQX2M \mem_reg[2][1]  ( .D(n183), .SI(\mem[2][0] ), .SE(n357), .CK(wclk), 
        .RN(n334), .Q(\mem[2][1] ) );
  SDFFRQX2M \mem_reg[2][0]  ( .D(n182), .SI(\mem[1][7] ), .SE(n356), .CK(wclk), 
        .RN(n334), .Q(\mem[2][0] ) );
  SDFFRQX2M \mem_reg[12][7]  ( .D(n269), .SI(\mem[12][6] ), .SE(n359), .CK(
        wclk), .RN(n327), .Q(\mem[12][7] ) );
  SDFFRQX2M \mem_reg[12][6]  ( .D(n268), .SI(\mem[12][5] ), .SE(n358), .CK(
        wclk), .RN(n327), .Q(\mem[12][6] ) );
  SDFFRQX2M \mem_reg[12][5]  ( .D(n267), .SI(\mem[12][4] ), .SE(n357), .CK(
        wclk), .RN(n327), .Q(\mem[12][5] ) );
  SDFFRQX2M \mem_reg[12][4]  ( .D(n266), .SI(\mem[12][3] ), .SE(n356), .CK(
        wclk), .RN(n327), .Q(\mem[12][4] ) );
  SDFFRQX2M \mem_reg[12][3]  ( .D(n265), .SI(\mem[12][2] ), .SE(n359), .CK(
        wclk), .RN(n327), .Q(\mem[12][3] ) );
  SDFFRQX2M \mem_reg[12][2]  ( .D(n264), .SI(\mem[12][1] ), .SE(n358), .CK(
        wclk), .RN(n327), .Q(\mem[12][2] ) );
  SDFFRQX2M \mem_reg[12][1]  ( .D(n263), .SI(test_si3), .SE(n357), .CK(wclk), 
        .RN(n327), .Q(\mem[12][1] ) );
  SDFFRQX2M \mem_reg[12][0]  ( .D(n262), .SI(\mem[11][7] ), .SE(n356), .CK(
        wclk), .RN(n327), .Q(\mem[12][0] ) );
  SDFFRQX2M \mem_reg[8][7]  ( .D(n237), .SI(\mem[8][6] ), .SE(n359), .CK(wclk), 
        .RN(n329), .Q(\mem[8][7] ) );
  SDFFRQX2M \mem_reg[8][6]  ( .D(n236), .SI(\mem[8][5] ), .SE(n358), .CK(wclk), 
        .RN(n329), .Q(\mem[8][6] ) );
  SDFFRQX2M \mem_reg[8][5]  ( .D(n235), .SI(\mem[8][4] ), .SE(n357), .CK(wclk), 
        .RN(n329), .Q(\mem[8][5] ) );
  SDFFRQX2M \mem_reg[8][4]  ( .D(n234), .SI(\mem[8][3] ), .SE(n356), .CK(wclk), 
        .RN(n329), .Q(\mem[8][4] ) );
  SDFFRQX2M \mem_reg[8][3]  ( .D(n233), .SI(\mem[8][2] ), .SE(n359), .CK(wclk), 
        .RN(n330), .Q(\mem[8][3] ) );
  SDFFRQX2M \mem_reg[8][2]  ( .D(n232), .SI(\mem[8][1] ), .SE(n358), .CK(wclk), 
        .RN(n330), .Q(\mem[8][2] ) );
  SDFFRQX2M \mem_reg[8][1]  ( .D(n231), .SI(\mem[8][0] ), .SE(n357), .CK(wclk), 
        .RN(n330), .Q(\mem[8][1] ) );
  SDFFRQX2M \mem_reg[8][0]  ( .D(n230), .SI(\mem[7][7] ), .SE(n356), .CK(wclk), 
        .RN(n330), .Q(\mem[8][0] ) );
  SDFFRQX2M \mem_reg[4][7]  ( .D(n205), .SI(\mem[4][6] ), .SE(n359), .CK(wclk), 
        .RN(n332), .Q(\mem[4][7] ) );
  SDFFRQX2M \mem_reg[4][6]  ( .D(n204), .SI(\mem[4][5] ), .SE(n358), .CK(wclk), 
        .RN(n332), .Q(\mem[4][6] ) );
  SDFFRQX2M \mem_reg[4][5]  ( .D(n203), .SI(\mem[4][4] ), .SE(n357), .CK(wclk), 
        .RN(n332), .Q(\mem[4][5] ) );
  SDFFRQX2M \mem_reg[4][4]  ( .D(n202), .SI(\mem[4][3] ), .SE(n356), .CK(wclk), 
        .RN(n332), .Q(\mem[4][4] ) );
  SDFFRQX2M \mem_reg[4][3]  ( .D(n201), .SI(\mem[4][2] ), .SE(n359), .CK(wclk), 
        .RN(n332), .Q(\mem[4][3] ) );
  SDFFRQX2M \mem_reg[4][2]  ( .D(n200), .SI(\mem[4][1] ), .SE(n358), .CK(wclk), 
        .RN(n332), .Q(\mem[4][2] ) );
  SDFFRQX2M \mem_reg[4][1]  ( .D(n199), .SI(\mem[4][0] ), .SE(n357), .CK(wclk), 
        .RN(n332), .Q(\mem[4][1] ) );
  SDFFRQX2M \mem_reg[4][0]  ( .D(n198), .SI(\mem[3][7] ), .SE(n356), .CK(wclk), 
        .RN(n332), .Q(\mem[4][0] ) );
  SDFFRQX2M \mem_reg[0][7]  ( .D(n173), .SI(\mem[0][6] ), .SE(n359), .CK(wclk), 
        .RN(n335), .Q(\mem[0][7] ) );
  SDFFRQX2M \mem_reg[0][6]  ( .D(n172), .SI(\mem[0][5] ), .SE(n358), .CK(wclk), 
        .RN(n335), .Q(\mem[0][6] ) );
  SDFFRQX2M \mem_reg[0][5]  ( .D(n171), .SI(\mem[0][4] ), .SE(n357), .CK(wclk), 
        .RN(n335), .Q(\mem[0][5] ) );
  SDFFRQX2M \mem_reg[0][4]  ( .D(n170), .SI(\mem[0][3] ), .SE(n356), .CK(wclk), 
        .RN(n335), .Q(\mem[0][4] ) );
  SDFFRQX2M \mem_reg[0][3]  ( .D(n169), .SI(\mem[0][2] ), .SE(n359), .CK(wclk), 
        .RN(n335), .Q(\mem[0][3] ) );
  SDFFRQX2M \mem_reg[0][2]  ( .D(n168), .SI(\mem[0][1] ), .SE(n358), .CK(wclk), 
        .RN(n335), .Q(\mem[0][2] ) );
  SDFFRQX2M \mem_reg[0][1]  ( .D(n167), .SI(\mem[0][0] ), .SE(n357), .CK(wclk), 
        .RN(n335), .Q(\mem[0][1] ) );
  SDFFRQX2M \mem_reg[0][0]  ( .D(n166), .SI(test_si1), .SE(n356), .CK(wclk), 
        .RN(n335), .Q(\mem[0][0] ) );
  INVX2M U130 ( .A(wdata[0]), .Y(n349) );
  INVX2M U131 ( .A(wdata[1]), .Y(n348) );
  INVX2M U132 ( .A(wdata[2]), .Y(n347) );
  INVX2M U133 ( .A(wdata[3]), .Y(n346) );
  INVX2M U134 ( .A(wdata[4]), .Y(n345) );
  INVX2M U135 ( .A(wdata[5]), .Y(n344) );
  INVX2M U136 ( .A(wdata[6]), .Y(n343) );
  INVX2M U137 ( .A(wdata[7]), .Y(n342) );
  NOR2X2M U138 ( .A(n341), .B(waddr[2]), .Y(n145) );
  NOR2X2M U139 ( .A(waddr[1]), .B(waddr[2]), .Y(n140) );
  INVX2M U140 ( .A(n320), .Y(n321) );
  BUFX2M U141 ( .A(n336), .Y(n334) );
  BUFX2M U142 ( .A(n336), .Y(n333) );
  BUFX2M U143 ( .A(n337), .Y(n332) );
  BUFX2M U144 ( .A(n337), .Y(n331) );
  BUFX2M U145 ( .A(n337), .Y(n330) );
  BUFX2M U146 ( .A(n338), .Y(n329) );
  BUFX2M U147 ( .A(n338), .Y(n328) );
  BUFX2M U148 ( .A(n338), .Y(n327) );
  BUFX2M U149 ( .A(n339), .Y(n326) );
  BUFX2M U150 ( .A(n339), .Y(n325) );
  BUFX2M U151 ( .A(n336), .Y(n335) );
  INVX2M U152 ( .A(n320), .Y(n322) );
  BUFX2M U153 ( .A(n319), .Y(n320) );
  BUFX2M U154 ( .A(n323), .Y(n336) );
  BUFX2M U155 ( .A(n323), .Y(n337) );
  BUFX2M U156 ( .A(n324), .Y(n338) );
  BUFX2M U157 ( .A(n324), .Y(n339) );
  INVX2M U158 ( .A(n317), .Y(n318) );
  INVX2M U159 ( .A(N9), .Y(n319) );
  BUFX2M U160 ( .A(wrst_n), .Y(n323) );
  BUFX2M U161 ( .A(wrst_n), .Y(n324) );
  NAND2X2M U162 ( .A(n143), .B(n140), .Y(n142) );
  NAND2X2M U163 ( .A(n145), .B(n141), .Y(n144) );
  NAND2X2M U164 ( .A(n145), .B(n143), .Y(n146) );
  NAND2X2M U165 ( .A(n148), .B(n141), .Y(n147) );
  NAND2X2M U166 ( .A(n148), .B(n143), .Y(n149) );
  NAND2X2M U167 ( .A(n151), .B(n141), .Y(n150) );
  NAND2X2M U168 ( .A(n151), .B(n143), .Y(n153) );
  NAND2X2M U169 ( .A(n156), .B(n140), .Y(n155) );
  NAND2X2M U170 ( .A(n158), .B(n140), .Y(n157) );
  NAND2X2M U171 ( .A(n156), .B(n145), .Y(n159) );
  NAND2X2M U172 ( .A(n158), .B(n145), .Y(n160) );
  NAND2X2M U173 ( .A(n156), .B(n148), .Y(n161) );
  NAND2X2M U174 ( .A(n158), .B(n148), .Y(n162) );
  NAND2X2M U175 ( .A(n156), .B(n151), .Y(n163) );
  NAND2X2M U176 ( .A(n158), .B(n151), .Y(n165) );
  NAND2X2M U177 ( .A(n140), .B(n141), .Y(n139) );
  NOR2BX2M U178 ( .AN(winc), .B(wfull), .Y(n154) );
  AND2X2M U179 ( .A(n152), .B(n340), .Y(n141) );
  AND2X2M U180 ( .A(n164), .B(n340), .Y(n156) );
  BUFX2M U181 ( .A(n316), .Y(n317) );
  OAI2BB2X1M U182 ( .B0(n139), .B1(n349), .A0N(\mem[0][0] ), .A1N(n139), .Y(
        n166) );
  OAI2BB2X1M U183 ( .B0(n139), .B1(n348), .A0N(\mem[0][1] ), .A1N(n139), .Y(
        n167) );
  OAI2BB2X1M U184 ( .B0(n139), .B1(n347), .A0N(\mem[0][2] ), .A1N(n139), .Y(
        n168) );
  OAI2BB2X1M U185 ( .B0(n139), .B1(n346), .A0N(\mem[0][3] ), .A1N(n139), .Y(
        n169) );
  OAI2BB2X1M U186 ( .B0(n139), .B1(n345), .A0N(\mem[0][4] ), .A1N(n139), .Y(
        n170) );
  OAI2BB2X1M U187 ( .B0(n139), .B1(n344), .A0N(\mem[0][5] ), .A1N(n139), .Y(
        n171) );
  OAI2BB2X1M U188 ( .B0(n139), .B1(n343), .A0N(\mem[0][6] ), .A1N(n139), .Y(
        n172) );
  OAI2BB2X1M U189 ( .B0(n139), .B1(n342), .A0N(\mem[0][7] ), .A1N(n139), .Y(
        n173) );
  OAI2BB2X1M U190 ( .B0(n349), .B1(n144), .A0N(\mem[2][0] ), .A1N(n144), .Y(
        n182) );
  OAI2BB2X1M U191 ( .B0(n348), .B1(n144), .A0N(\mem[2][1] ), .A1N(n144), .Y(
        n183) );
  OAI2BB2X1M U192 ( .B0(n347), .B1(n144), .A0N(\mem[2][2] ), .A1N(n144), .Y(
        n184) );
  OAI2BB2X1M U193 ( .B0(n346), .B1(n144), .A0N(\mem[2][3] ), .A1N(n144), .Y(
        n185) );
  OAI2BB2X1M U194 ( .B0(n345), .B1(n144), .A0N(\mem[2][4] ), .A1N(n144), .Y(
        n186) );
  OAI2BB2X1M U195 ( .B0(n344), .B1(n144), .A0N(\mem[2][5] ), .A1N(n144), .Y(
        n187) );
  OAI2BB2X1M U196 ( .B0(n343), .B1(n144), .A0N(\mem[2][6] ), .A1N(n144), .Y(
        n188) );
  OAI2BB2X1M U197 ( .B0(n342), .B1(n144), .A0N(\mem[2][7] ), .A1N(n144), .Y(
        n189) );
  OAI2BB2X1M U198 ( .B0(n349), .B1(n146), .A0N(\mem[3][0] ), .A1N(n146), .Y(
        n190) );
  OAI2BB2X1M U199 ( .B0(n348), .B1(n146), .A0N(\mem[3][1] ), .A1N(n146), .Y(
        n191) );
  OAI2BB2X1M U200 ( .B0(n347), .B1(n146), .A0N(\mem[3][2] ), .A1N(n146), .Y(
        n192) );
  OAI2BB2X1M U201 ( .B0(n346), .B1(n146), .A0N(\mem[3][3] ), .A1N(n146), .Y(
        n193) );
  OAI2BB2X1M U202 ( .B0(n345), .B1(n146), .A0N(\mem[3][4] ), .A1N(n146), .Y(
        n194) );
  OAI2BB2X1M U203 ( .B0(n344), .B1(n146), .A0N(\mem[3][5] ), .A1N(n146), .Y(
        n195) );
  OAI2BB2X1M U204 ( .B0(n343), .B1(n146), .A0N(\mem[3][6] ), .A1N(n146), .Y(
        n196) );
  OAI2BB2X1M U205 ( .B0(n342), .B1(n146), .A0N(\mem[3][7] ), .A1N(n146), .Y(
        n197) );
  OAI2BB2X1M U206 ( .B0(n349), .B1(n142), .A0N(\mem[1][0] ), .A1N(n142), .Y(
        n174) );
  OAI2BB2X1M U207 ( .B0(n348), .B1(n142), .A0N(\mem[1][1] ), .A1N(n142), .Y(
        n175) );
  OAI2BB2X1M U208 ( .B0(n347), .B1(n142), .A0N(\mem[1][2] ), .A1N(n142), .Y(
        n176) );
  OAI2BB2X1M U209 ( .B0(n346), .B1(n142), .A0N(\mem[1][3] ), .A1N(n142), .Y(
        n177) );
  OAI2BB2X1M U210 ( .B0(n345), .B1(n142), .A0N(\mem[1][4] ), .A1N(n142), .Y(
        n178) );
  OAI2BB2X1M U211 ( .B0(n344), .B1(n142), .A0N(\mem[1][5] ), .A1N(n142), .Y(
        n179) );
  OAI2BB2X1M U212 ( .B0(n343), .B1(n142), .A0N(n360), .A1N(n142), .Y(n180) );
  OAI2BB2X1M U213 ( .B0(n342), .B1(n142), .A0N(\mem[1][7] ), .A1N(n142), .Y(
        n181) );
  OAI2BB2X1M U214 ( .B0(n349), .B1(n155), .A0N(\mem[8][0] ), .A1N(n155), .Y(
        n230) );
  OAI2BB2X1M U215 ( .B0(n348), .B1(n155), .A0N(\mem[8][1] ), .A1N(n155), .Y(
        n231) );
  OAI2BB2X1M U216 ( .B0(n347), .B1(n155), .A0N(\mem[8][2] ), .A1N(n155), .Y(
        n232) );
  OAI2BB2X1M U217 ( .B0(n346), .B1(n155), .A0N(\mem[8][3] ), .A1N(n155), .Y(
        n233) );
  OAI2BB2X1M U218 ( .B0(n345), .B1(n155), .A0N(\mem[8][4] ), .A1N(n155), .Y(
        n234) );
  OAI2BB2X1M U219 ( .B0(n344), .B1(n155), .A0N(\mem[8][5] ), .A1N(n155), .Y(
        n235) );
  OAI2BB2X1M U220 ( .B0(n343), .B1(n155), .A0N(\mem[8][6] ), .A1N(n155), .Y(
        n236) );
  OAI2BB2X1M U221 ( .B0(n342), .B1(n155), .A0N(\mem[8][7] ), .A1N(n155), .Y(
        n237) );
  OAI2BB2X1M U222 ( .B0(n349), .B1(n157), .A0N(\mem[9][0] ), .A1N(n157), .Y(
        n238) );
  OAI2BB2X1M U223 ( .B0(n348), .B1(n157), .A0N(\mem[9][1] ), .A1N(n157), .Y(
        n239) );
  OAI2BB2X1M U224 ( .B0(n347), .B1(n157), .A0N(\mem[9][2] ), .A1N(n157), .Y(
        n240) );
  OAI2BB2X1M U225 ( .B0(n346), .B1(n157), .A0N(\mem[9][3] ), .A1N(n157), .Y(
        n241) );
  OAI2BB2X1M U226 ( .B0(n345), .B1(n157), .A0N(\mem[9][4] ), .A1N(n157), .Y(
        n242) );
  OAI2BB2X1M U227 ( .B0(n344), .B1(n157), .A0N(\mem[9][5] ), .A1N(n157), .Y(
        n243) );
  OAI2BB2X1M U228 ( .B0(n343), .B1(n157), .A0N(\mem[9][6] ), .A1N(n157), .Y(
        n244) );
  OAI2BB2X1M U229 ( .B0(n342), .B1(n157), .A0N(\mem[9][7] ), .A1N(n157), .Y(
        n245) );
  OAI2BB2X1M U230 ( .B0(n349), .B1(n159), .A0N(\mem[10][0] ), .A1N(n159), .Y(
        n246) );
  OAI2BB2X1M U231 ( .B0(n348), .B1(n159), .A0N(\mem[10][1] ), .A1N(n159), .Y(
        n247) );
  OAI2BB2X1M U232 ( .B0(n347), .B1(n159), .A0N(\mem[10][2] ), .A1N(n159), .Y(
        n248) );
  OAI2BB2X1M U233 ( .B0(n346), .B1(n159), .A0N(\mem[10][3] ), .A1N(n159), .Y(
        n249) );
  OAI2BB2X1M U234 ( .B0(n345), .B1(n159), .A0N(\mem[10][4] ), .A1N(n159), .Y(
        n250) );
  OAI2BB2X1M U235 ( .B0(n344), .B1(n159), .A0N(\mem[10][5] ), .A1N(n159), .Y(
        n251) );
  OAI2BB2X1M U236 ( .B0(n343), .B1(n159), .A0N(\mem[10][6] ), .A1N(n159), .Y(
        n252) );
  OAI2BB2X1M U237 ( .B0(n342), .B1(n159), .A0N(\mem[10][7] ), .A1N(n159), .Y(
        n253) );
  OAI2BB2X1M U238 ( .B0(n349), .B1(n160), .A0N(\mem[11][0] ), .A1N(n160), .Y(
        n254) );
  OAI2BB2X1M U239 ( .B0(n348), .B1(n160), .A0N(\mem[11][1] ), .A1N(n160), .Y(
        n255) );
  OAI2BB2X1M U240 ( .B0(n347), .B1(n160), .A0N(\mem[11][2] ), .A1N(n160), .Y(
        n256) );
  OAI2BB2X1M U241 ( .B0(n346), .B1(n160), .A0N(\mem[11][3] ), .A1N(n160), .Y(
        n257) );
  OAI2BB2X1M U242 ( .B0(n345), .B1(n160), .A0N(\mem[11][4] ), .A1N(n160), .Y(
        n258) );
  OAI2BB2X1M U243 ( .B0(n344), .B1(n160), .A0N(\mem[11][5] ), .A1N(n160), .Y(
        n259) );
  OAI2BB2X1M U244 ( .B0(n343), .B1(n160), .A0N(\mem[11][6] ), .A1N(n160), .Y(
        n260) );
  OAI2BB2X1M U245 ( .B0(n342), .B1(n160), .A0N(\mem[11][7] ), .A1N(n160), .Y(
        n261) );
  OAI2BB2X1M U246 ( .B0(n349), .B1(n147), .A0N(\mem[4][0] ), .A1N(n147), .Y(
        n198) );
  OAI2BB2X1M U247 ( .B0(n348), .B1(n147), .A0N(\mem[4][1] ), .A1N(n147), .Y(
        n199) );
  OAI2BB2X1M U248 ( .B0(n347), .B1(n147), .A0N(\mem[4][2] ), .A1N(n147), .Y(
        n200) );
  OAI2BB2X1M U249 ( .B0(n346), .B1(n147), .A0N(\mem[4][3] ), .A1N(n147), .Y(
        n201) );
  OAI2BB2X1M U250 ( .B0(n345), .B1(n147), .A0N(\mem[4][4] ), .A1N(n147), .Y(
        n202) );
  OAI2BB2X1M U251 ( .B0(n344), .B1(n147), .A0N(\mem[4][5] ), .A1N(n147), .Y(
        n203) );
  OAI2BB2X1M U252 ( .B0(n343), .B1(n147), .A0N(\mem[4][6] ), .A1N(n147), .Y(
        n204) );
  OAI2BB2X1M U253 ( .B0(n342), .B1(n147), .A0N(\mem[4][7] ), .A1N(n147), .Y(
        n205) );
  OAI2BB2X1M U254 ( .B0(n349), .B1(n149), .A0N(\mem[5][0] ), .A1N(n149), .Y(
        n206) );
  OAI2BB2X1M U255 ( .B0(n348), .B1(n149), .A0N(\mem[5][1] ), .A1N(n149), .Y(
        n207) );
  OAI2BB2X1M U256 ( .B0(n347), .B1(n149), .A0N(\mem[5][2] ), .A1N(n149), .Y(
        n208) );
  OAI2BB2X1M U257 ( .B0(n346), .B1(n149), .A0N(\mem[5][3] ), .A1N(n149), .Y(
        n209) );
  OAI2BB2X1M U258 ( .B0(n345), .B1(n149), .A0N(\mem[5][4] ), .A1N(n149), .Y(
        n210) );
  OAI2BB2X1M U259 ( .B0(n344), .B1(n149), .A0N(\mem[5][5] ), .A1N(n149), .Y(
        n211) );
  OAI2BB2X1M U260 ( .B0(n343), .B1(n149), .A0N(\mem[5][6] ), .A1N(n149), .Y(
        n212) );
  OAI2BB2X1M U261 ( .B0(n342), .B1(n149), .A0N(\mem[5][7] ), .A1N(n149), .Y(
        n213) );
  OAI2BB2X1M U262 ( .B0(n349), .B1(n150), .A0N(\mem[6][0] ), .A1N(n150), .Y(
        n214) );
  OAI2BB2X1M U263 ( .B0(n348), .B1(n150), .A0N(\mem[6][1] ), .A1N(n150), .Y(
        n215) );
  OAI2BB2X1M U264 ( .B0(n347), .B1(n150), .A0N(\mem[6][2] ), .A1N(n150), .Y(
        n216) );
  OAI2BB2X1M U265 ( .B0(n346), .B1(n150), .A0N(\mem[6][3] ), .A1N(n150), .Y(
        n217) );
  OAI2BB2X1M U266 ( .B0(n345), .B1(n150), .A0N(\mem[6][4] ), .A1N(n150), .Y(
        n218) );
  OAI2BB2X1M U267 ( .B0(n344), .B1(n150), .A0N(\mem[6][5] ), .A1N(n150), .Y(
        n219) );
  OAI2BB2X1M U268 ( .B0(n343), .B1(n150), .A0N(\mem[6][6] ), .A1N(n150), .Y(
        n220) );
  OAI2BB2X1M U269 ( .B0(n342), .B1(n150), .A0N(\mem[6][7] ), .A1N(n150), .Y(
        n221) );
  OAI2BB2X1M U270 ( .B0(n349), .B1(n153), .A0N(\mem[7][0] ), .A1N(n153), .Y(
        n222) );
  OAI2BB2X1M U271 ( .B0(n348), .B1(n153), .A0N(\mem[7][1] ), .A1N(n153), .Y(
        n223) );
  OAI2BB2X1M U272 ( .B0(n347), .B1(n153), .A0N(\mem[7][2] ), .A1N(n153), .Y(
        n224) );
  OAI2BB2X1M U273 ( .B0(n346), .B1(n153), .A0N(\mem[7][3] ), .A1N(n153), .Y(
        n225) );
  OAI2BB2X1M U274 ( .B0(n345), .B1(n153), .A0N(\mem[7][4] ), .A1N(n153), .Y(
        n226) );
  OAI2BB2X1M U275 ( .B0(n344), .B1(n153), .A0N(\mem[7][5] ), .A1N(n153), .Y(
        n227) );
  OAI2BB2X1M U276 ( .B0(n343), .B1(n153), .A0N(\mem[7][6] ), .A1N(n153), .Y(
        n228) );
  OAI2BB2X1M U277 ( .B0(n342), .B1(n153), .A0N(\mem[7][7] ), .A1N(n153), .Y(
        n229) );
  OAI2BB2X1M U278 ( .B0(n349), .B1(n161), .A0N(\mem[12][0] ), .A1N(n161), .Y(
        n262) );
  OAI2BB2X1M U279 ( .B0(n348), .B1(n161), .A0N(\mem[12][1] ), .A1N(n161), .Y(
        n263) );
  OAI2BB2X1M U280 ( .B0(n347), .B1(n161), .A0N(\mem[12][2] ), .A1N(n161), .Y(
        n264) );
  OAI2BB2X1M U281 ( .B0(n346), .B1(n161), .A0N(\mem[12][3] ), .A1N(n161), .Y(
        n265) );
  OAI2BB2X1M U282 ( .B0(n345), .B1(n161), .A0N(\mem[12][4] ), .A1N(n161), .Y(
        n266) );
  OAI2BB2X1M U283 ( .B0(n344), .B1(n161), .A0N(\mem[12][5] ), .A1N(n161), .Y(
        n267) );
  OAI2BB2X1M U284 ( .B0(n343), .B1(n161), .A0N(\mem[12][6] ), .A1N(n161), .Y(
        n268) );
  OAI2BB2X1M U285 ( .B0(n342), .B1(n161), .A0N(\mem[12][7] ), .A1N(n161), .Y(
        n269) );
  OAI2BB2X1M U286 ( .B0(n349), .B1(n162), .A0N(\mem[13][0] ), .A1N(n162), .Y(
        n270) );
  OAI2BB2X1M U287 ( .B0(n348), .B1(n162), .A0N(\mem[13][1] ), .A1N(n162), .Y(
        n271) );
  OAI2BB2X1M U288 ( .B0(n347), .B1(n162), .A0N(\mem[13][2] ), .A1N(n162), .Y(
        n272) );
  OAI2BB2X1M U289 ( .B0(n346), .B1(n162), .A0N(\mem[13][3] ), .A1N(n162), .Y(
        n273) );
  OAI2BB2X1M U290 ( .B0(n345), .B1(n162), .A0N(\mem[13][4] ), .A1N(n162), .Y(
        n274) );
  OAI2BB2X1M U291 ( .B0(n344), .B1(n162), .A0N(\mem[13][5] ), .A1N(n162), .Y(
        n275) );
  OAI2BB2X1M U292 ( .B0(n343), .B1(n162), .A0N(\mem[13][6] ), .A1N(n162), .Y(
        n276) );
  OAI2BB2X1M U293 ( .B0(n342), .B1(n162), .A0N(\mem[13][7] ), .A1N(n162), .Y(
        n277) );
  OAI2BB2X1M U294 ( .B0(n349), .B1(n163), .A0N(\mem[14][0] ), .A1N(n163), .Y(
        n278) );
  OAI2BB2X1M U295 ( .B0(n348), .B1(n163), .A0N(\mem[14][1] ), .A1N(n163), .Y(
        n279) );
  OAI2BB2X1M U296 ( .B0(n347), .B1(n163), .A0N(\mem[14][2] ), .A1N(n163), .Y(
        n280) );
  OAI2BB2X1M U297 ( .B0(n346), .B1(n163), .A0N(\mem[14][3] ), .A1N(n163), .Y(
        n281) );
  OAI2BB2X1M U298 ( .B0(n345), .B1(n163), .A0N(\mem[14][4] ), .A1N(n163), .Y(
        n282) );
  OAI2BB2X1M U299 ( .B0(n344), .B1(n163), .A0N(\mem[14][5] ), .A1N(n163), .Y(
        n283) );
  OAI2BB2X1M U300 ( .B0(n343), .B1(n163), .A0N(\mem[14][6] ), .A1N(n163), .Y(
        n284) );
  OAI2BB2X1M U301 ( .B0(n342), .B1(n163), .A0N(\mem[14][7] ), .A1N(n163), .Y(
        n285) );
  OAI2BB2X1M U302 ( .B0(n349), .B1(n165), .A0N(\mem[15][0] ), .A1N(n165), .Y(
        n286) );
  OAI2BB2X1M U303 ( .B0(n348), .B1(n165), .A0N(\mem[15][1] ), .A1N(n165), .Y(
        n287) );
  OAI2BB2X1M U304 ( .B0(n347), .B1(n165), .A0N(\mem[15][2] ), .A1N(n165), .Y(
        n288) );
  OAI2BB2X1M U305 ( .B0(n346), .B1(n165), .A0N(\mem[15][3] ), .A1N(n165), .Y(
        n289) );
  OAI2BB2X1M U306 ( .B0(n345), .B1(n165), .A0N(\mem[15][4] ), .A1N(n165), .Y(
        n290) );
  OAI2BB2X1M U307 ( .B0(n344), .B1(n165), .A0N(\mem[15][5] ), .A1N(n165), .Y(
        n291) );
  OAI2BB2X1M U308 ( .B0(n343), .B1(n165), .A0N(\mem[15][6] ), .A1N(n165), .Y(
        n292) );
  OAI2BB2X1M U309 ( .B0(n342), .B1(n165), .A0N(\mem[15][7] ), .A1N(n165), .Y(
        n293) );
  NOR2BX2M U310 ( .AN(n154), .B(waddr[3]), .Y(n152) );
  AND2X2M U311 ( .A(n152), .B(waddr[0]), .Y(n143) );
  AND2X2M U312 ( .A(n164), .B(waddr[0]), .Y(n158) );
  AND2X2M U313 ( .A(waddr[3]), .B(n154), .Y(n164) );
  MX4X1M U314 ( .A(n132), .B(n130), .C(n131), .D(n129), .S0(N12), .S1(N11), 
        .Y(rdata[0]) );
  MX4X1M U315 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .C(\mem[2][0] ), .D(
        \mem[3][0] ), .S0(N9), .S1(N10), .Y(n132) );
  MX4X1M U316 ( .A(\mem[8][0] ), .B(\mem[9][0] ), .C(\mem[10][0] ), .D(
        \mem[11][0] ), .S0(N9), .S1(N10), .Y(n130) );
  MX4X1M U317 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .C(\mem[6][0] ), .D(
        \mem[7][0] ), .S0(N9), .S1(N10), .Y(n131) );
  MX4X1M U318 ( .A(n136), .B(n134), .C(n135), .D(n133), .S0(N12), .S1(N11), 
        .Y(rdata[1]) );
  MX4X1M U319 ( .A(\mem[8][1] ), .B(\mem[9][1] ), .C(\mem[10][1] ), .D(
        \mem[11][1] ), .S0(N9), .S1(N10), .Y(n134) );
  MX4X1M U320 ( .A(\mem[12][1] ), .B(\mem[13][1] ), .C(\mem[14][1] ), .D(
        \mem[15][1] ), .S0(n322), .S1(n318), .Y(n133) );
  MX4X1M U321 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .C(\mem[2][1] ), .D(
        \mem[3][1] ), .S0(n321), .S1(N10), .Y(n136) );
  MX4X1M U322 ( .A(n295), .B(n138), .C(n294), .D(n137), .S0(N12), .S1(N11), 
        .Y(rdata[2]) );
  MX4X1M U323 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .C(\mem[2][2] ), .D(
        \mem[3][2] ), .S0(n321), .S1(n318), .Y(n295) );
  MX4X1M U324 ( .A(\mem[8][2] ), .B(\mem[9][2] ), .C(\mem[10][2] ), .D(
        \mem[11][2] ), .S0(n321), .S1(n318), .Y(n138) );
  MX4X1M U325 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .C(\mem[6][2] ), .D(
        \mem[7][2] ), .S0(n321), .S1(n318), .Y(n294) );
  MX4X1M U326 ( .A(n299), .B(n297), .C(n298), .D(n296), .S0(N12), .S1(N11), 
        .Y(rdata[3]) );
  MX4X1M U327 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .C(\mem[2][3] ), .D(
        \mem[3][3] ), .S0(n321), .S1(n318), .Y(n299) );
  MX4X1M U328 ( .A(\mem[8][3] ), .B(\mem[9][3] ), .C(\mem[10][3] ), .D(
        \mem[11][3] ), .S0(n321), .S1(n318), .Y(n297) );
  MX4X1M U329 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .C(\mem[6][3] ), .D(
        \mem[7][3] ), .S0(n321), .S1(n318), .Y(n298) );
  MX4X1M U330 ( .A(n303), .B(n301), .C(n302), .D(n300), .S0(N12), .S1(N11), 
        .Y(rdata[4]) );
  MX4X1M U331 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .C(\mem[2][4] ), .D(
        \mem[3][4] ), .S0(n322), .S1(n318), .Y(n303) );
  MX4X1M U332 ( .A(\mem[8][4] ), .B(\mem[9][4] ), .C(\mem[10][4] ), .D(
        \mem[11][4] ), .S0(n321), .S1(n318), .Y(n301) );
  MX4X1M U333 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .C(\mem[6][4] ), .D(
        \mem[7][4] ), .S0(n321), .S1(n318), .Y(n302) );
  MX4X1M U334 ( .A(n307), .B(n305), .C(n306), .D(n304), .S0(N12), .S1(N11), 
        .Y(rdata[5]) );
  MX4X1M U335 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .C(\mem[2][5] ), .D(
        \mem[3][5] ), .S0(n322), .S1(N10), .Y(n307) );
  MX4X1M U336 ( .A(\mem[8][5] ), .B(\mem[9][5] ), .C(\mem[10][5] ), .D(
        \mem[11][5] ), .S0(n322), .S1(N10), .Y(n305) );
  MX4X1M U337 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .C(\mem[6][5] ), .D(
        \mem[7][5] ), .S0(n322), .S1(N10), .Y(n306) );
  MX4X1M U338 ( .A(n311), .B(n309), .C(n310), .D(n308), .S0(N12), .S1(N11), 
        .Y(rdata[6]) );
  MX4X1M U339 ( .A(\mem[0][6] ), .B(n360), .C(\mem[2][6] ), .D(\mem[3][6] ), 
        .S0(n322), .S1(N10), .Y(n311) );
  MX4X1M U340 ( .A(\mem[8][6] ), .B(\mem[9][6] ), .C(\mem[10][6] ), .D(
        \mem[11][6] ), .S0(n322), .S1(N10), .Y(n309) );
  MX4X1M U341 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .C(\mem[6][6] ), .D(
        \mem[7][6] ), .S0(n322), .S1(N10), .Y(n310) );
  MX4X1M U342 ( .A(n315), .B(n313), .C(n314), .D(n312), .S0(N12), .S1(N11), 
        .Y(rdata[7]) );
  MX4X1M U343 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .C(\mem[2][7] ), .D(
        \mem[3][7] ), .S0(n322), .S1(N10), .Y(n315) );
  MX4X1M U344 ( .A(\mem[8][7] ), .B(\mem[9][7] ), .C(\mem[10][7] ), .D(
        \mem[11][7] ), .S0(n322), .S1(N10), .Y(n313) );
  MX4X1M U345 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .C(\mem[6][7] ), .D(
        \mem[7][7] ), .S0(n322), .S1(N10), .Y(n314) );
  MX4X1M U346 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .C(\mem[6][1] ), .D(
        \mem[7][1] ), .S0(n321), .S1(N10), .Y(n135) );
  MX4X1M U347 ( .A(\mem[12][0] ), .B(\mem[13][0] ), .C(\mem[14][0] ), .D(
        \mem[15][0] ), .S0(n321), .S1(N10), .Y(n129) );
  MX4X1M U348 ( .A(\mem[12][2] ), .B(\mem[13][2] ), .C(\mem[14][2] ), .D(
        \mem[15][2] ), .S0(n321), .S1(n318), .Y(n137) );
  MX4X1M U349 ( .A(\mem[12][3] ), .B(\mem[13][3] ), .C(\mem[14][3] ), .D(
        \mem[15][3] ), .S0(n321), .S1(n318), .Y(n296) );
  MX4X1M U350 ( .A(\mem[12][4] ), .B(\mem[13][4] ), .C(\mem[14][4] ), .D(
        \mem[15][4] ), .S0(n321), .S1(n318), .Y(n300) );
  MX4X1M U351 ( .A(\mem[12][5] ), .B(\mem[13][5] ), .C(\mem[14][5] ), .D(
        \mem[15][5] ), .S0(n322), .S1(N10), .Y(n304) );
  MX4X1M U352 ( .A(\mem[12][6] ), .B(\mem[13][6] ), .C(\mem[14][6] ), .D(
        \mem[15][6] ), .S0(n322), .S1(N10), .Y(n308) );
  MX4X1M U353 ( .A(\mem[12][7] ), .B(\mem[13][7] ), .C(\mem[14][7] ), .D(
        \mem[15][7] ), .S0(n322), .S1(N10), .Y(n312) );
  INVX2M U354 ( .A(N10), .Y(n316) );
  AND2X2M U355 ( .A(waddr[2]), .B(n341), .Y(n148) );
  AND2X2M U356 ( .A(waddr[2]), .B(waddr[1]), .Y(n151) );
  INVX2M U357 ( .A(waddr[1]), .Y(n341) );
  INVX2M U358 ( .A(waddr[0]), .Y(n340) );
  INVXLM U359 ( .A(\mem[1][6] ), .Y(n354) );
  INVXLM U360 ( .A(n354), .Y(n355) );
  DLY1X1M U361 ( .A(test_se), .Y(n356) );
  DLY1X1M U362 ( .A(test_se), .Y(n357) );
  DLY1X1M U363 ( .A(test_se), .Y(n358) );
  DLY1X1M U364 ( .A(test_se), .Y(n359) );
  DLY1X1M U365 ( .A(n355), .Y(n360) );
  SDFFRQX2M \mem_reg[1][6]  ( .D(n180), .SI(\mem[1][5] ), .SE(n358), .CK(wclk), 
        .RN(n334), .Q(\mem[1][6] ) );
endmodule


module synchronizer_ADDR_WIDTH4_test_0 ( clk, rst_n, sync_in, sync_reg, 
        test_si, test_se );
  input [4:0] sync_in;
  output [4:0] sync_reg;
  input clk, rst_n, test_si, test_se;

  wire   [4:0] dest_reg;
wand  clk;

  SDFFRQX2M \sync_reg_reg[1]  ( .D(dest_reg[1]), .SI(sync_reg[0]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(sync_reg[1]) );
  SDFFRQX2M \sync_reg_reg[3]  ( .D(dest_reg[3]), .SI(sync_reg[2]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(sync_reg[3]) );
  SDFFRQX2M \sync_reg_reg[2]  ( .D(dest_reg[2]), .SI(sync_reg[1]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(sync_reg[2]) );
  SDFFRQX2M \sync_reg_reg[0]  ( .D(dest_reg[0]), .SI(dest_reg[4]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(sync_reg[0]) );
  SDFFRQX2M \dest_reg_reg[4]  ( .D(sync_in[4]), .SI(dest_reg[3]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(dest_reg[4]) );
  SDFFRQX2M \dest_reg_reg[3]  ( .D(sync_in[3]), .SI(dest_reg[2]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(dest_reg[3]) );
  SDFFRQX2M \dest_reg_reg[2]  ( .D(sync_in[2]), .SI(dest_reg[1]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(dest_reg[2]) );
  SDFFRQX2M \dest_reg_reg[1]  ( .D(sync_in[1]), .SI(dest_reg[0]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(dest_reg[1]) );
  SDFFRQX2M \dest_reg_reg[0]  ( .D(sync_in[0]), .SI(test_si), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(dest_reg[0]) );
  SDFFRQX1M \sync_reg_reg[4]  ( .D(dest_reg[4]), .SI(sync_reg[3]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(sync_reg[4]) );
endmodule


module synchronizer_ADDR_WIDTH4_test_1 ( clk, rst_n, sync_in, sync_reg, 
        test_si, test_se );
  input [4:0] sync_in;
  output [4:0] sync_reg;
  input clk, rst_n, test_si, test_se;

  wire   [4:0] dest_reg;

  SDFFRQX2M \sync_reg_reg[1]  ( .D(dest_reg[1]), .SI(sync_reg[0]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(sync_reg[1]) );
  SDFFRQX2M \sync_reg_reg[3]  ( .D(dest_reg[3]), .SI(sync_reg[2]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(sync_reg[3]) );
  SDFFRQX2M \sync_reg_reg[2]  ( .D(dest_reg[2]), .SI(sync_reg[1]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(sync_reg[2]) );
  SDFFRQX2M \sync_reg_reg[0]  ( .D(dest_reg[0]), .SI(dest_reg[4]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(sync_reg[0]) );
  SDFFRQX2M \dest_reg_reg[4]  ( .D(sync_in[4]), .SI(dest_reg[3]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(dest_reg[4]) );
  SDFFRQX2M \dest_reg_reg[3]  ( .D(sync_in[3]), .SI(dest_reg[2]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(dest_reg[3]) );
  SDFFRQX2M \dest_reg_reg[2]  ( .D(sync_in[2]), .SI(dest_reg[1]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(dest_reg[2]) );
  SDFFRQX2M \dest_reg_reg[1]  ( .D(sync_in[1]), .SI(dest_reg[0]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(dest_reg[1]) );
  SDFFRQX2M \dest_reg_reg[0]  ( .D(sync_in[0]), .SI(test_si), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(dest_reg[0]) );
  SDFFRQX1M \sync_reg_reg[4]  ( .D(dest_reg[4]), .SI(sync_reg[3]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(sync_reg[4]) );
endmodule


module ASYC_FIFO_test_1 ( W_CLK, R_CLK, WRST_N, RRST_N, WINC, RINC, WR_DATA, 
        RD_DATA, FULL, EMPTY, test_si3, test_si2, test_si1, test_so3, test_so2, 
        test_so1, test_se );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, R_CLK, WRST_N, RRST_N, WINC, RINC, test_si3, test_si2, test_si1,
         test_se;
  output FULL, EMPTY, test_so3, test_so2, test_so1;
  wire   n1, n2, n3, n4, n5, n8, n9;
  wire   [4:0] wq2_rptr;
  wire   [3:0] waddr;
  wire   [4:0] Gwptr;
  wire   [4:0] rq2_wptr;
  wire   [3:0] raddr;
  wire   [4:0] Grptr;
wand  W_CLK;
  assign test_so3 = rq2_wptr[4];

  INVX2M U6 ( .A(n4), .Y(n3) );
  INVX2M U7 ( .A(WRST_N), .Y(n4) );
  INVX2M U8 ( .A(n2), .Y(n1) );
  INVX2M U9 ( .A(RRST_N), .Y(n2) );
  FIFO_wptr_n_full_ADDR_WIDTH4_test_1 U1 ( .wclk(W_CLK), .wrst_n(n3), .winc(
        WINC), .wq2_rptr(wq2_rptr), .wfull(FULL), .waddr(waddr), .Gwptr(Gwptr), 
        .test_si(test_si1), .test_so(n9), .test_se(test_se) );
  FIFO_rptr_n_empty_ADDR_WIDTH4_test_1 U2 ( .rclk(R_CLK), .rrst_n(n1), .rinc(
        RINC), .rq2_wptr(rq2_wptr), .rempty(EMPTY), .raddr(raddr), .Grptr(
        Grptr), .test_si(n9), .test_so(n8), .test_se(test_se) );
  FIFO_MEM_DATA_WIDTH8_ADDR_WIDTH4_test_1 U3 ( .wclk(W_CLK), .wrst_n(n3), 
        .winc(WINC), .wfull(FULL), .waddr(waddr), .raddr(raddr), .wdata(
        WR_DATA), .rdata(RD_DATA), .test_si3(test_si3), .test_si2(test_si2), 
        .test_si1(n8), .test_so3(n5), .test_so2(test_so2), .test_so1(test_so1), 
        .test_se(test_se) );
  synchronizer_ADDR_WIDTH4_test_0 U4 ( .clk(W_CLK), .rst_n(n3), .sync_in(Grptr), .sync_reg(wq2_rptr), .test_si(n5), .test_se(test_se) );
  synchronizer_ADDR_WIDTH4_test_1 U5 ( .clk(R_CLK), .rst_n(n1), .sync_in(Gwptr), .sync_reg(rq2_wptr), .test_si(wq2_rptr[4]), .test_se(test_se) );
endmodule


module ClkDiv_0_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_test_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N4, div_clk, tog_flag, N11, N14, N18, N19, N20, N21, N22, n10, n11,
         n12, n13, n15, n16, n17, n20, n22, n24, n27, n29, n30, n31,
         \add_49/carry[4] , \add_49/carry[3] , \add_49/carry[2] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n14, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47;
  wire   [7:0] half_tog;
  wire   [7:0] half_tog_p1;
  wire   [4:0] cnt;
  assign test_so = n47;

  SDFFSQX2M div_clk_reg ( .D(n31), .SI(cnt[4]), .SE(test_se), .CK(i_ref_clk), 
        .SN(i_rst_n), .Q(div_clk) );
  SDFFRQX2M tog_flag_reg ( .D(n30), .SI(div_clk), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(tog_flag) );
  SDFFRQX2M \cnt_reg[4]  ( .D(n27), .SI(cnt[3]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(cnt[4]) );
  SDFFRQX2M \cnt_reg[0]  ( .D(n29), .SI(test_si), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(cnt[0]) );
  SDFFRQX2M \cnt_reg[3]  ( .D(n24), .SI(cnt[2]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(cnt[3]) );
  SDFFRQX2M \cnt_reg[2]  ( .D(n22), .SI(cnt[1]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(cnt[2]) );
  SDFFRQX2M \cnt_reg[1]  ( .D(n20), .SI(N18), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(cnt[1]) );
  OAI2B2X1M U3 ( .A1N(n17), .A0(N14), .B0(N11), .B1(n17), .Y(n12) );
  AND2X2M U4 ( .A(i_div_ratio[0]), .B(n47), .Y(n17) );
  NOR2BX2M U5 ( .AN(n12), .B(n10), .Y(n11) );
  OR2X2M U6 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  OAI21X2M U7 ( .A0(n13), .A1(n47), .B0(n15), .Y(n30) );
  AND3X2M U8 ( .A(N11), .B(i_div_ratio[0]), .C(n46), .Y(n13) );
  NAND4X2M U9 ( .A(N14), .B(n46), .C(i_div_ratio[0]), .D(n47), .Y(n15) );
  INVX2M U10 ( .A(n10), .Y(n46) );
  AO22X1M U11 ( .A0(cnt[1]), .A1(n10), .B0(N19), .B1(n11), .Y(n20) );
  AO22X1M U12 ( .A0(cnt[2]), .A1(n10), .B0(N20), .B1(n11), .Y(n22) );
  AO22X1M U13 ( .A0(cnt[3]), .A1(n10), .B0(N21), .B1(n11), .Y(n24) );
  AO22X1M U14 ( .A0(cnt[4]), .A1(n10), .B0(N22), .B1(n11), .Y(n27) );
  AO22X1M U15 ( .A0(cnt[0]), .A1(n10), .B0(N18), .B1(n11), .Y(n29) );
  CLKXOR2X2M U16 ( .A(div_clk), .B(n16), .Y(n31) );
  NOR2X2M U17 ( .A(n10), .B(n12), .Y(n16) );
  NAND2X2M U18 ( .A(i_clk_en), .B(N4), .Y(n10) );
  INVX2M U19 ( .A(tog_flag), .Y(n47) );
  ADDHX1M U20 ( .A(cnt[1]), .B(cnt[0]), .CO(\add_49/carry[2] ), .S(N19) );
  ADDHX1M U21 ( .A(cnt[2]), .B(\add_49/carry[2] ), .CO(\add_49/carry[3] ), .S(
        N20) );
  ADDHX1M U22 ( .A(cnt[3]), .B(\add_49/carry[3] ), .CO(\add_49/carry[4] ), .S(
        N21) );
  MX2X2M U23 ( .A(i_ref_clk), .B(div_clk), .S0(n46), .Y(o_div_clk) );
  CLKINVX1M U31 ( .A(i_div_ratio[1]), .Y(half_tog[0]) );
  OAI2BB1X1M U32 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        half_tog[1]) );
  OR2X1M U33 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U34 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(half_tog[2]) );
  OR2X1M U35 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  OAI2BB1X1M U36 ( .A0N(n2), .A1N(i_div_ratio[4]), .B0(n3), .Y(half_tog[3]) );
  OR2X1M U37 ( .A(n3), .B(i_div_ratio[5]), .Y(n4) );
  OAI2BB1X1M U38 ( .A0N(n3), .A1N(i_div_ratio[5]), .B0(n4), .Y(half_tog[4]) );
  XNOR2X1M U39 ( .A(i_div_ratio[6]), .B(n4), .Y(half_tog[5]) );
  NOR3X1M U40 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n4), .Y(half_tog[7]) );
  OAI21X1M U41 ( .A0(i_div_ratio[6]), .A1(n4), .B0(i_div_ratio[7]), .Y(n5) );
  NAND2BX1M U42 ( .AN(half_tog[7]), .B(n5), .Y(half_tog[6]) );
  CLKINVX1M U43 ( .A(cnt[0]), .Y(N18) );
  CLKXOR2X2M U44 ( .A(\add_49/carry[4] ), .B(cnt[4]), .Y(N22) );
  OR4X1M U45 ( .A(i_div_ratio[5]), .B(i_div_ratio[4]), .C(i_div_ratio[7]), .D(
        i_div_ratio[6]), .Y(n6) );
  OR4X1M U46 ( .A(i_div_ratio[3]), .B(i_div_ratio[2]), .C(i_div_ratio[1]), .D(
        n6), .Y(N4) );
  XNOR2X1M U47 ( .A(half_tog[4]), .B(cnt[4]), .Y(n32) );
  XNOR2X1M U48 ( .A(half_tog[3]), .B(cnt[3]), .Y(n14) );
  XNOR2X1M U49 ( .A(half_tog[2]), .B(cnt[2]), .Y(n9) );
  NOR2BX1M U50 ( .AN(cnt[0]), .B(half_tog[0]), .Y(n7) );
  OAI2B2X1M U51 ( .A1N(half_tog[1]), .A0(n7), .B0(cnt[1]), .B1(n7), .Y(n8) );
  NAND4X1M U52 ( .A(n32), .B(n14), .C(n9), .D(n8), .Y(n36) );
  NOR2BX1M U53 ( .AN(half_tog[0]), .B(cnt[0]), .Y(n33) );
  OAI2B2X1M U54 ( .A1N(cnt[1]), .A0(n33), .B0(half_tog[1]), .B1(n33), .Y(n34)
         );
  NAND2BX1M U55 ( .AN(half_tog[5]), .B(n34), .Y(n35) );
  NOR4X1M U56 ( .A(n36), .B(n35), .C(half_tog[7]), .D(half_tog[6]), .Y(N11) );
  XNOR2X1M U57 ( .A(half_tog_p1[4]), .B(cnt[4]), .Y(n41) );
  XNOR2X1M U58 ( .A(half_tog_p1[3]), .B(cnt[3]), .Y(n40) );
  XNOR2X1M U59 ( .A(half_tog_p1[2]), .B(cnt[2]), .Y(n39) );
  NOR2BX1M U60 ( .AN(cnt[0]), .B(half_tog_p1[0]), .Y(n37) );
  OAI2B2X1M U61 ( .A1N(half_tog_p1[1]), .A0(n37), .B0(cnt[1]), .B1(n37), .Y(
        n38) );
  NAND4X1M U62 ( .A(n41), .B(n40), .C(n39), .D(n38), .Y(n45) );
  NOR2BX1M U63 ( .AN(half_tog_p1[0]), .B(cnt[0]), .Y(n42) );
  OAI2B2X1M U64 ( .A1N(cnt[1]), .A0(n42), .B0(half_tog_p1[1]), .B1(n42), .Y(
        n43) );
  NAND2BX1M U65 ( .AN(half_tog_p1[5]), .B(n43), .Y(n44) );
  NOR4X1M U66 ( .A(n45), .B(n44), .C(half_tog_p1[7]), .D(half_tog_p1[6]), .Y(
        N14) );
  ClkDiv_0_DW01_inc_1 add_18 ( .A(half_tog), .SUM(half_tog_p1) );
endmodule


module ClkDiv_1_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N4, div_clk, tog_flag, N11, N14, N18, N19, N20, N21, N22,
         \add_49/carry[4] , \add_49/carry[3] , \add_49/carry[2] , n2, n3, n4,
         n5, n6, n7, n8, n9, n14, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n53, n56, n58,
         n60, n63, n64, n65, n66, n67, n68, n69;
  wire   [7:0] half_tog;
  wire   [7:0] half_tog_p1;
  wire   [4:0] cnt;
  assign test_so = n47;

  SDFFRQX2M tog_flag_reg ( .D(n50), .SI(div_clk), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(tog_flag) );
  SDFFRQX2M \cnt_reg[4]  ( .D(n53), .SI(cnt[3]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(cnt[4]) );
  SDFFRQX2M \cnt_reg[0]  ( .D(n51), .SI(test_si), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(cnt[0]) );
  SDFFRQX2M \cnt_reg[3]  ( .D(n56), .SI(cnt[2]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(cnt[3]) );
  SDFFRQX2M \cnt_reg[2]  ( .D(n58), .SI(cnt[1]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(cnt[2]) );
  SDFFRQX2M \cnt_reg[1]  ( .D(n60), .SI(N18), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(cnt[1]) );
  SDFFSQX1M div_clk_reg ( .D(n49), .SI(cnt[4]), .SE(test_se), .CK(i_ref_clk), 
        .SN(i_rst_n), .Q(div_clk) );
  NOR2BX2M U4 ( .AN(n67), .B(n69), .Y(n68) );
  OAI2B2X1M U5 ( .A1N(n63), .A0(N14), .B0(N11), .B1(n63), .Y(n67) );
  AND2X2M U6 ( .A(i_div_ratio[0]), .B(n47), .Y(n63) );
  OAI21X2M U7 ( .A0(n66), .A1(n47), .B0(n65), .Y(n50) );
  AND3X2M U8 ( .A(N11), .B(i_div_ratio[0]), .C(n48), .Y(n66) );
  NAND4X2M U9 ( .A(N14), .B(n48), .C(i_div_ratio[0]), .D(n47), .Y(n65) );
  INVX2M U10 ( .A(n69), .Y(n48) );
  OR2X2M U11 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  AO22X1M U12 ( .A0(cnt[1]), .A1(n69), .B0(N19), .B1(n68), .Y(n60) );
  AO22X1M U13 ( .A0(cnt[2]), .A1(n69), .B0(N20), .B1(n68), .Y(n58) );
  AO22X1M U14 ( .A0(cnt[3]), .A1(n69), .B0(N21), .B1(n68), .Y(n56) );
  AO22X1M U15 ( .A0(cnt[4]), .A1(n69), .B0(N22), .B1(n68), .Y(n53) );
  AO22X1M U16 ( .A0(cnt[0]), .A1(n69), .B0(N18), .B1(n68), .Y(n51) );
  CLKXOR2X2M U17 ( .A(div_clk), .B(n64), .Y(n49) );
  NOR2X2M U18 ( .A(n69), .B(n67), .Y(n64) );
  NAND2X2M U19 ( .A(i_clk_en), .B(N4), .Y(n69) );
  INVX2M U20 ( .A(tog_flag), .Y(n47) );
  ADDHX1M U21 ( .A(cnt[1]), .B(cnt[0]), .CO(\add_49/carry[2] ), .S(N19) );
  ADDHX1M U22 ( .A(cnt[2]), .B(\add_49/carry[2] ), .CO(\add_49/carry[3] ), .S(
        N20) );
  ADDHX1M U23 ( .A(cnt[3]), .B(\add_49/carry[3] ), .CO(\add_49/carry[4] ), .S(
        N21) );
  MX2X2M U31 ( .A(i_ref_clk), .B(div_clk), .S0(n48), .Y(o_div_clk) );
  CLKINVX1M U32 ( .A(i_div_ratio[1]), .Y(half_tog[0]) );
  OAI2BB1X1M U33 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n2), .Y(
        half_tog[1]) );
  OR2X1M U34 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U35 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(half_tog[2]) );
  OR2X1M U36 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  OAI2BB1X1M U37 ( .A0N(n3), .A1N(i_div_ratio[4]), .B0(n4), .Y(half_tog[3]) );
  OR2X1M U38 ( .A(n4), .B(i_div_ratio[5]), .Y(n5) );
  OAI2BB1X1M U39 ( .A0N(n4), .A1N(i_div_ratio[5]), .B0(n5), .Y(half_tog[4]) );
  XNOR2X1M U40 ( .A(i_div_ratio[6]), .B(n5), .Y(half_tog[5]) );
  NOR3X1M U41 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n5), .Y(half_tog[7]) );
  OAI21X1M U42 ( .A0(i_div_ratio[6]), .A1(n5), .B0(i_div_ratio[7]), .Y(n6) );
  NAND2BX1M U43 ( .AN(half_tog[7]), .B(n6), .Y(half_tog[6]) );
  CLKINVX1M U44 ( .A(cnt[0]), .Y(N18) );
  CLKXOR2X2M U45 ( .A(\add_49/carry[4] ), .B(cnt[4]), .Y(N22) );
  OR4X1M U46 ( .A(i_div_ratio[5]), .B(i_div_ratio[4]), .C(i_div_ratio[7]), .D(
        i_div_ratio[6]), .Y(n7) );
  OR4X1M U47 ( .A(i_div_ratio[3]), .B(i_div_ratio[2]), .C(i_div_ratio[1]), .D(
        n7), .Y(N4) );
  XNOR2X1M U48 ( .A(half_tog[4]), .B(cnt[4]), .Y(n33) );
  XNOR2X1M U49 ( .A(half_tog[3]), .B(cnt[3]), .Y(n32) );
  XNOR2X1M U50 ( .A(half_tog[2]), .B(cnt[2]), .Y(n14) );
  NOR2BX1M U51 ( .AN(cnt[0]), .B(half_tog[0]), .Y(n8) );
  OAI2B2X1M U52 ( .A1N(half_tog[1]), .A0(n8), .B0(cnt[1]), .B1(n8), .Y(n9) );
  NAND4X1M U53 ( .A(n33), .B(n32), .C(n14), .D(n9), .Y(n37) );
  NOR2BX1M U54 ( .AN(half_tog[0]), .B(cnt[0]), .Y(n34) );
  OAI2B2X1M U55 ( .A1N(cnt[1]), .A0(n34), .B0(half_tog[1]), .B1(n34), .Y(n35)
         );
  NAND2BX1M U56 ( .AN(half_tog[5]), .B(n35), .Y(n36) );
  NOR4X1M U57 ( .A(n37), .B(n36), .C(half_tog[7]), .D(half_tog[6]), .Y(N11) );
  XNOR2X1M U58 ( .A(half_tog_p1[4]), .B(cnt[4]), .Y(n42) );
  XNOR2X1M U59 ( .A(half_tog_p1[3]), .B(cnt[3]), .Y(n41) );
  XNOR2X1M U60 ( .A(half_tog_p1[2]), .B(cnt[2]), .Y(n40) );
  NOR2BX1M U61 ( .AN(cnt[0]), .B(half_tog_p1[0]), .Y(n38) );
  OAI2B2X1M U62 ( .A1N(half_tog_p1[1]), .A0(n38), .B0(cnt[1]), .B1(n38), .Y(
        n39) );
  NAND4X1M U63 ( .A(n42), .B(n41), .C(n40), .D(n39), .Y(n46) );
  NOR2BX1M U64 ( .AN(half_tog_p1[0]), .B(cnt[0]), .Y(n43) );
  OAI2B2X1M U65 ( .A1N(cnt[1]), .A0(n43), .B0(half_tog_p1[1]), .B1(n43), .Y(
        n44) );
  NAND2BX1M U66 ( .AN(half_tog_p1[5]), .B(n44), .Y(n45) );
  NOR4X1M U67 ( .A(n46), .B(n45), .C(half_tog_p1[7]), .D(half_tog_p1[6]), .Y(
        N14) );
  ClkDiv_1_DW01_inc_1 add_18 ( .A(half_tog), .SUM(half_tog_p1) );
endmodule


module CLKDIV_MUX ( prescale, OUT );
  input [5:0] prescale;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  NAND4BX1M U11 ( .AN(prescale[4]), .B(prescale[3]), .C(n15), .D(n14), .Y(n6)
         );
  NOR3X2M U12 ( .A(n6), .B(prescale[1]), .C(prescale[0]), .Y(OUT[2]) );
  INVX2M U13 ( .A(prescale[2]), .Y(n15) );
  NAND4BX1M U14 ( .AN(prescale[3]), .B(prescale[4]), .C(n15), .D(n14), .Y(n7)
         );
  NOR3X2M U15 ( .A(n7), .B(prescale[1]), .C(prescale[0]), .Y(OUT[1]) );
  NOR4X1M U16 ( .A(n5), .B(prescale[3]), .C(prescale[5]), .D(prescale[4]), .Y(
        OUT[3]) );
  NAND3X2M U17 ( .A(n17), .B(n16), .C(prescale[2]), .Y(n5) );
  INVX2M U18 ( .A(prescale[0]), .Y(n17) );
  INVX2M U19 ( .A(prescale[1]), .Y(n16) );
  INVX2M U20 ( .A(prescale[5]), .Y(n14) );
  OAI211X2M U21 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(OUT[0]) );
  NOR4X1M U22 ( .A(prescale[5]), .B(prescale[4]), .C(prescale[3]), .D(n15), 
        .Y(n8) );
  NAND2X2M U23 ( .A(n7), .B(n6), .Y(n9) );
  INVX2M U3 ( .A(1'b1), .Y(OUT[4]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[7]) );
endmodule


module CLK_GATE ( CLK_EN, test_en, CLK, GATED_CLK );
  input CLK_EN, test_en, CLK;
  output GATED_CLK;
  wire   _0_net_;
wand  CLK;

  TLATNCAX12M U0_TLATNCAX12M ( .E(_0_net_), .CK(CLK), .ECK(GATED_CLK) );
  OR2X2M U1 ( .A(CLK_EN), .B(test_en), .Y(_0_net_) );
endmodule


module DATA_SYNC_test_1 ( clk, rst_n, bus_enable, unsync_bus, sync_bus, 
        enable_pulse, test_si, test_so, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input clk, rst_n, bus_enable, test_si, test_se;
  output enable_pulse, test_so;
  wire   pulse_reg, n1, n3, n5, n7, n9, n11, n13, n15, n17, n22;
  wire   [1:0] sync_reg;
wand  clk;
  assign test_so = sync_reg[1];

  SDFFRQX1M pulse_reg_reg ( .D(sync_reg[0]), .SI(enable_pulse), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(pulse_reg) );
  SDFFRQX2M \sync_reg_reg[0]  ( .D(sync_reg[1]), .SI(sync_bus[7]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(sync_reg[0]) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n17), .SI(sync_bus[6]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n9), .SI(sync_bus[2]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n11), .SI(sync_bus[3]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n3), .SI(pulse_reg), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n15), .SI(sync_bus[5]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n13), .SI(sync_bus[4]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[5]) );
  SDFFRQX2M enable_pulse_reg ( .D(n22), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(enable_pulse) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n7), .SI(sync_bus[1]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n5), .SI(sync_bus[0]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_bus[1]) );
  SDFFRQX2M \sync_reg_reg[1]  ( .D(bus_enable), .SI(sync_reg[0]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(sync_reg[1]) );
  INVX2M U3 ( .A(n1), .Y(n22) );
  NAND2BX2M U4 ( .AN(pulse_reg), .B(sync_reg[0]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n22), .B0(sync_bus[0]), .B1(n1), .Y(n3)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n22), .B0(sync_bus[1]), .B1(n1), .Y(n5)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n22), .B0(sync_bus[2]), .B1(n1), .Y(n7)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n22), .B0(sync_bus[3]), .B1(n1), .Y(n9)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n22), .B0(sync_bus[4]), .B1(n1), .Y(n11) );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n22), .B0(sync_bus[5]), .B1(n1), .Y(
        n13) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n22), .B0(sync_bus[6]), .B1(n1), .Y(
        n15) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n22), .B0(sync_bus[7]), .B1(n1), .Y(
        n17) );
endmodule


module RST_SYNC_test_1 ( clk, rst_n_in, rst_n_out, test_si, test_so, test_se
 );
  input clk, rst_n_in, test_si, test_se;
  output rst_n_out, test_so;
  wire   \sync_reg[1] ;
wand  clk;
  assign test_so = \sync_reg[1] ;

  SDFFRQX2M \sync_reg_reg[1]  ( .D(1'b1), .SI(rst_n_out), .SE(test_se), .CK(
        clk), .RN(rst_n_in), .Q(\sync_reg[1] ) );
  SDFFRQX1M \sync_reg_reg[0]  ( .D(\sync_reg[1] ), .SI(test_si), .SE(test_se), 
        .CK(clk), .RN(rst_n_in), .Q(rst_n_out) );
endmodule


module RST_SYNC_test_0 ( clk, rst_n_in, rst_n_out, test_si, test_so, test_se
 );
  input clk, rst_n_in, test_si, test_se;
  output rst_n_out, test_so;
  wire   \sync_reg[1] ;
  assign test_so = \sync_reg[1] ;

  SDFFRQX2M \sync_reg_reg[0]  ( .D(\sync_reg[1] ), .SI(test_si), .SE(test_se), 
        .CK(clk), .RN(rst_n_in), .Q(rst_n_out) );
  SDFFRQX2M \sync_reg_reg[1]  ( .D(1'b1), .SI(rst_n_out), .SE(test_se), .CK(
        clk), .RN(rst_n_in), .Q(\sync_reg[1] ) );
endmodule


module FSMT_test_1 ( clk, n_RST, PAR_EN, Data_Valid, ser_done, ser_en, busy, 
        mux_sel, idle_flag, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input clk, n_RST, PAR_EN, Data_Valid, ser_done, test_si, test_se;
  output ser_en, busy, idle_flag, test_so;
  wire   n9, n10, n11, n12, n13, n14, n15, n4, n5, n6, n7, n8;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign test_so = n6;

  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(clk), .RN(n_RST), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n7), .SE(test_se), 
        .CK(clk), .RN(n_RST), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(clk), .RN(n_RST), .Q(current_state[0]) );
  INVX2M U6 ( .A(ser_done), .Y(n4) );
  NAND3X2M U7 ( .A(n7), .B(n6), .C(n5), .Y(n14) );
  NAND2X2M U8 ( .A(n15), .B(n14), .Y(idle_flag) );
  NAND3X2M U9 ( .A(n9), .B(n14), .C(n10), .Y(mux_sel[1]) );
  NAND2X2M U10 ( .A(n10), .B(n15), .Y(mux_sel[0]) );
  NAND3BX2M U11 ( .AN(mux_sel[0]), .B(n12), .C(n9), .Y(busy) );
  OAI31X1M U12 ( .A0(n8), .A1(n9), .A2(n4), .B0(n13), .Y(next_state[0]) );
  INVX2M U13 ( .A(PAR_EN), .Y(n8) );
  NAND2X2M U14 ( .A(Data_Valid), .B(idle_flag), .Y(n13) );
  NOR3X2M U15 ( .A(n7), .B(current_state[2]), .C(current_state[0]), .Y(ser_en)
         );
  OAI31X1M U16 ( .A0(n4), .A1(PAR_EN), .A2(n9), .B0(n10), .Y(next_state[2]) );
  NAND3X2M U17 ( .A(n5), .B(n6), .C(current_state[1]), .Y(n9) );
  NAND3X2M U18 ( .A(current_state[1]), .B(n6), .C(current_state[0]), .Y(n10)
         );
  NAND3X2M U19 ( .A(n5), .B(n7), .C(current_state[2]), .Y(n15) );
  OAI21X2M U20 ( .A0(n11), .A1(n9), .B0(n12), .Y(next_state[1]) );
  NOR2X2M U21 ( .A(PAR_EN), .B(n4), .Y(n11) );
  INVX2M U22 ( .A(current_state[1]), .Y(n7) );
  INVX2M U23 ( .A(current_state[2]), .Y(n6) );
  INVX2M U24 ( .A(current_state[0]), .Y(n5) );
  NAND3X2M U25 ( .A(n7), .B(n6), .C(current_state[0]), .Y(n12) );
endmodule


module UMUX ( mux_sel, ser_data, par_bit, TX_OUT );
  input [1:0] mux_sel;
  input ser_data, par_bit;
  output TX_OUT;
  wire   n2, n3, n1;

  OAI21X4M U3 ( .A0(n2), .A1(n1), .B0(n3), .Y(TX_OUT) );
  NAND3X2M U4 ( .A(mux_sel[1]), .B(n1), .C(ser_data), .Y(n3) );
  NOR2BX2M U5 ( .AN(mux_sel[1]), .B(par_bit), .Y(n2) );
  INVX2M U6 ( .A(mux_sel[0]), .Y(n1) );
endmodule


module serializer_test_1 ( clk, n_RST, P_DATA, ser_en, idle_flag, Data_Valid, 
        ser_done, ser_data, rdy_pulse, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input clk, n_RST, ser_en, idle_flag, Data_Valid, test_si, test_se;
  output ser_done, ser_data, rdy_pulse, test_so;
  wire   N2, N3, N4, N6, n1, n3, n4, n6, n8, n10, n12, n14, n16, n18, n20, n22,
         n24, n26, n27, n28, n29, n33, n34;
  wire   [7:0] DATA;
  assign test_so = N4;

  SDFFRQX2M \DATA_reg[5]  ( .D(n16), .SI(DATA[4]), .SE(n34), .CK(clk), .RN(
        n_RST), .Q(DATA[5]) );
  SDFFRQX2M \DATA_reg[1]  ( .D(n8), .SI(DATA[0]), .SE(n34), .CK(clk), .RN(
        n_RST), .Q(DATA[1]) );
  SDFFRQX2M \DATA_reg[7]  ( .D(n20), .SI(DATA[6]), .SE(n34), .CK(clk), .RN(
        n_RST), .Q(DATA[7]) );
  SDFFRQX2M \DATA_reg[3]  ( .D(n12), .SI(DATA[2]), .SE(n34), .CK(clk), .RN(
        n_RST), .Q(DATA[3]) );
  SDFFRQX2M \DATA_reg[6]  ( .D(n18), .SI(DATA[5]), .SE(n34), .CK(clk), .RN(
        n_RST), .Q(DATA[6]) );
  SDFFRQX2M \DATA_reg[2]  ( .D(n10), .SI(DATA[1]), .SE(n34), .CK(clk), .RN(
        n_RST), .Q(DATA[2]) );
  SDFFRQX2M \DATA_reg[4]  ( .D(n14), .SI(DATA[3]), .SE(n34), .CK(clk), .RN(
        n_RST), .Q(DATA[4]) );
  SDFFRQX2M \DATA_reg[0]  ( .D(n6), .SI(test_si), .SE(n34), .CK(clk), .RN(
        n_RST), .Q(DATA[0]) );
  SDFFRQX2M \counter_reg[2]  ( .D(n22), .SI(N3), .SE(n34), .CK(clk), .RN(n_RST), .Q(N4) );
  SDFFRQX2M \counter_reg[1]  ( .D(n24), .SI(N2), .SE(n34), .CK(clk), .RN(n_RST), .Q(N3) );
  SDFFRQX2M \counter_reg[0]  ( .D(n26), .SI(DATA[7]), .SE(n34), .CK(clk), .RN(
        n_RST), .Q(N2) );
  INVX2M U3 ( .A(n1), .Y(n29) );
  NAND2X2M U4 ( .A(idle_flag), .B(Data_Valid), .Y(n1) );
  AO22X1M U5 ( .A0(DATA[0]), .A1(n1), .B0(P_DATA[0]), .B1(n29), .Y(n6) );
  AO22X1M U6 ( .A0(DATA[1]), .A1(n1), .B0(P_DATA[1]), .B1(n29), .Y(n8) );
  AO22X1M U7 ( .A0(DATA[2]), .A1(n1), .B0(P_DATA[2]), .B1(n29), .Y(n10) );
  AO22X1M U8 ( .A0(DATA[3]), .A1(n1), .B0(P_DATA[3]), .B1(n29), .Y(n12) );
  AO22X1M U9 ( .A0(DATA[4]), .A1(n1), .B0(P_DATA[4]), .B1(n29), .Y(n14) );
  AO22X1M U10 ( .A0(DATA[5]), .A1(n1), .B0(P_DATA[5]), .B1(n29), .Y(n16) );
  AO22X1M U11 ( .A0(DATA[6]), .A1(n1), .B0(P_DATA[6]), .B1(n29), .Y(n18) );
  AO22X1M U12 ( .A0(DATA[7]), .A1(n1), .B0(P_DATA[7]), .B1(n29), .Y(n20) );
  XNOR2X2M U13 ( .A(N3), .B(n4), .Y(n24) );
  NAND2X2M U14 ( .A(ser_en), .B(N2), .Y(n4) );
  CLKXOR2X2M U15 ( .A(ser_en), .B(N2), .Y(n26) );
  CLKXOR2X2M U16 ( .A(N4), .B(n3), .Y(n22) );
  NOR2BX2M U17 ( .AN(N3), .B(n4), .Y(n3) );
  NAND2BX2M U18 ( .AN(N6), .B(ser_en), .Y(ser_data) );
  MX2X2M U19 ( .A(n28), .B(n27), .S0(N4), .Y(N6) );
  MX4X1M U31 ( .A(DATA[4]), .B(DATA[5]), .C(DATA[6]), .D(DATA[7]), .S0(N2), 
        .S1(N3), .Y(n27) );
  MX4X1M U32 ( .A(DATA[0]), .B(DATA[1]), .C(DATA[2]), .D(DATA[3]), .S0(N2), 
        .S1(N3), .Y(n28) );
  BUFX2M U33 ( .A(rdy_pulse), .Y(ser_done) );
  AND3X2M U34 ( .A(N4), .B(N2), .C(N3), .Y(rdy_pulse) );
  INVXLM U35 ( .A(test_se), .Y(n33) );
  INVXLM U36 ( .A(n33), .Y(n34) );
endmodule


module parityCalc_test_1 ( n_RST, clk, P_DATA, Data_Valid, idle_flag, PAR_TYP, 
        par_bit, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input n_RST, clk, Data_Valid, idle_flag, PAR_TYP, test_si, test_se;
  output par_bit, test_so;
  wire   n1, n2, n3, n4, n5, n7, n9, n11, n13, n15, n17, n19, n21;
  wire   [7:0] DATA;
  assign test_so = DATA[7];

  SDFFRQX2M \DATA_reg[5]  ( .D(n17), .SI(DATA[4]), .SE(test_se), .CK(clk), 
        .RN(n_RST), .Q(DATA[5]) );
  SDFFRQX2M \DATA_reg[1]  ( .D(n9), .SI(DATA[0]), .SE(test_se), .CK(clk), .RN(
        n_RST), .Q(DATA[1]) );
  SDFFRQX2M \DATA_reg[4]  ( .D(n15), .SI(DATA[3]), .SE(test_se), .CK(clk), 
        .RN(n_RST), .Q(DATA[4]) );
  SDFFRQX2M \DATA_reg[0]  ( .D(n7), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        n_RST), .Q(DATA[0]) );
  SDFFRQX2M \DATA_reg[6]  ( .D(n19), .SI(DATA[5]), .SE(test_se), .CK(clk), 
        .RN(n_RST), .Q(DATA[6]) );
  SDFFRQX2M \DATA_reg[2]  ( .D(n11), .SI(DATA[1]), .SE(test_se), .CK(clk), 
        .RN(n_RST), .Q(DATA[2]) );
  SDFFRQX2M \DATA_reg[7]  ( .D(n21), .SI(DATA[6]), .SE(test_se), .CK(clk), 
        .RN(n_RST), .Q(DATA[7]) );
  SDFFRQX2M \DATA_reg[3]  ( .D(n13), .SI(DATA[2]), .SE(test_se), .CK(clk), 
        .RN(n_RST), .Q(DATA[3]) );
  AND2X2M U2 ( .A(idle_flag), .B(Data_Valid), .Y(n5) );
  AO2B2X2M U3 ( .B0(P_DATA[0]), .B1(n5), .A0(DATA[0]), .A1N(n5), .Y(n7) );
  AO2B2X2M U4 ( .B0(P_DATA[1]), .B1(n5), .A0(DATA[1]), .A1N(n5), .Y(n9) );
  AO2B2X2M U5 ( .B0(P_DATA[2]), .B1(n5), .A0(DATA[2]), .A1N(n5), .Y(n11) );
  AO2B2X2M U6 ( .B0(P_DATA[3]), .B1(n5), .A0(DATA[3]), .A1N(n5), .Y(n13) );
  AO2B2X2M U7 ( .B0(P_DATA[4]), .B1(n5), .A0(DATA[4]), .A1N(n5), .Y(n15) );
  AO2B2X2M U8 ( .B0(P_DATA[5]), .B1(n5), .A0(DATA[5]), .A1N(n5), .Y(n17) );
  AO2B2X2M U9 ( .B0(P_DATA[6]), .B1(n5), .A0(DATA[6]), .A1N(n5), .Y(n19) );
  AO2B2X2M U10 ( .B0(P_DATA[7]), .B1(n5), .A0(DATA[7]), .A1N(n5), .Y(n21) );
  XOR3XLM U11 ( .A(n1), .B(n2), .C(PAR_TYP), .Y(par_bit) );
  XOR3XLM U12 ( .A(DATA[5]), .B(DATA[4]), .C(n4), .Y(n1) );
  XOR3XLM U13 ( .A(DATA[1]), .B(DATA[0]), .C(n3), .Y(n2) );
  CLKXOR2X2M U14 ( .A(DATA[7]), .B(DATA[6]), .Y(n4) );
  CLKXOR2X2M U15 ( .A(DATA[3]), .B(DATA[2]), .Y(n3) );
endmodule


module UART_TX_test_1 ( clk, n_RST, P_DATA, Data_Valid, PAR_EN, PAR_TYP, 
        TX_OUT, busy, rdy_pulse, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input clk, n_RST, Data_Valid, PAR_EN, PAR_TYP, test_si, test_se;
  output TX_OUT, busy, rdy_pulse, test_so;
  wire   ser_done, ser_en, idle_flag, ser_data, par_bit, n1, n2, n4, n5;
  wire   [1:0] mux_sel;

  INVX2M U4 ( .A(n2), .Y(n1) );
  INVX2M U5 ( .A(n_RST), .Y(n2) );
  FSMT_test_1 U0 ( .clk(clk), .n_RST(n1), .PAR_EN(PAR_EN), .Data_Valid(
        Data_Valid), .ser_done(ser_done), .ser_en(ser_en), .busy(busy), 
        .mux_sel(mux_sel), .idle_flag(idle_flag), .test_si(test_si), .test_so(
        n5), .test_se(test_se) );
  UMUX U1 ( .mux_sel(mux_sel), .ser_data(ser_data), .par_bit(par_bit), 
        .TX_OUT(TX_OUT) );
  serializer_test_1 U2 ( .clk(clk), .n_RST(n1), .P_DATA(P_DATA), .ser_en(
        ser_en), .idle_flag(idle_flag), .Data_Valid(Data_Valid), .ser_done(
        ser_done), .ser_data(ser_data), .rdy_pulse(rdy_pulse), .test_si(n5), 
        .test_so(n4), .test_se(test_se) );
  parityCalc_test_1 U3 ( .n_RST(n1), .clk(clk), .P_DATA(P_DATA), .Data_Valid(
        Data_Valid), .idle_flag(idle_flag), .PAR_TYP(PAR_TYP), .par_bit(
        par_bit), .test_si(n4), .test_so(test_so), .test_se(test_se) );
endmodule


module FSM_RX_test_1 ( CLK, RST_N, RX_IN, PAR_EN, bit_cnt, Prescale, edge_cnt, 
        stp_err, strt_glitch, par_err, dat_samp_en, cnt_en, data_valid, 
        stp_chk_en, strt_chk_en, par_chk_en, deser_en, test_so, test_se );
  input [3:0] bit_cnt;
  input [5:0] Prescale;
  input [4:0] edge_cnt;
  input CLK, RST_N, RX_IN, PAR_EN, stp_err, strt_glitch, par_err, test_se;
  output dat_samp_en, cnt_en, data_valid, stp_chk_en, strt_chk_en, par_chk_en,
         deser_en, test_so;
  wire   N17, N18, N19, N20, N21, N22, N23, last_edge, N55, N56, N57, N58, N59,
         N60, N62, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, \sub_75/carry[5] , \sub_75/carry[4] , \sub_75/carry[3] , n1, n2,
         n3, n4, n5, n6, n7, n8, n12, n13, n14, n15, n16, n17, n18, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign test_so = current_state[2];
  assign N55 = Prescale[0];

  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(edge_cnt[4]), .SE(
        test_se), .CK(CLK), .RN(RST_N), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(n41), .SE(test_se), 
        .CK(CLK), .RN(RST_N), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n42), .SE(test_se), 
        .CK(CLK), .RN(RST_N), .Q(current_state[2]) );
  NOR2X2M U5 ( .A(Prescale[5]), .B(\sub_75/carry[5] ), .Y(n1) );
  NOR3X2M U6 ( .A(current_state[0]), .B(current_state[2]), .C(n42), .Y(
        deser_en) );
  INVX2M U7 ( .A(last_edge), .Y(n38) );
  INVX2M U8 ( .A(n24), .Y(n39) );
  INVX2M U10 ( .A(n25), .Y(n40) );
  NAND3X2M U11 ( .A(n41), .B(n42), .C(n31), .Y(dat_samp_en) );
  NAND3X2M U12 ( .A(last_edge), .B(bit_cnt[3]), .C(n29), .Y(n24) );
  NOR3X2M U13 ( .A(bit_cnt[0]), .B(bit_cnt[2]), .C(bit_cnt[1]), .Y(n29) );
  OAI211XLM U14 ( .A0(last_edge), .A1(n19), .B0(n22), .C0(n23), .Y(
        next_state[1]) );
  NAND3BXLM U15 ( .AN(strt_glitch), .B(last_edge), .C(strt_chk_en), .Y(n23) );
  OAI21X2M U16 ( .A0(PAR_EN), .A1(n24), .B0(deser_en), .Y(n22) );
  OAI211X2M U17 ( .A0(n38), .A1(n19), .B0(n20), .C0(n21), .Y(next_state[2]) );
  NAND3BX2M U18 ( .AN(PAR_EN), .B(n39), .C(deser_en), .Y(n20) );
  OR2X2M U19 ( .A(Prescale[1]), .B(N55), .Y(n2) );
  NAND2X2M U20 ( .A(n26), .B(n27), .Y(next_state[0]) );
  AOI33X2M U21 ( .A0(n43), .A1(n42), .A2(n28), .B0(deser_en), .B1(n39), .B2(
        PAR_EN), .Y(n27) );
  AOI22X1M U22 ( .A0(n25), .A1(n38), .B0(N62), .B1(stp_chk_en), .Y(n26) );
  CLKXOR2X2M U23 ( .A(n41), .B(current_state[2]), .Y(n28) );
  OAI211X2M U24 ( .A0(current_state[0]), .A1(n31), .B0(n40), .C0(n42), .Y(
        cnt_en) );
  NOR2X2M U25 ( .A(n41), .B(current_state[2]), .Y(n25) );
  NOR2X2M U26 ( .A(n43), .B(current_state[2]), .Y(n31) );
  INVX2M U27 ( .A(current_state[1]), .Y(n42) );
  INVX2M U28 ( .A(current_state[0]), .Y(n41) );
  NOR4X1M U29 ( .A(n30), .B(current_state[1]), .C(stp_err), .D(par_err), .Y(
        data_valid) );
  NAND2X2M U30 ( .A(current_state[2]), .B(current_state[0]), .Y(n30) );
  NAND3X2M U31 ( .A(n41), .B(n42), .C(current_state[2]), .Y(n21) );
  NAND2X2M U32 ( .A(current_state[1]), .B(n25), .Y(n19) );
  INVX2M U33 ( .A(n21), .Y(stp_chk_en) );
  INVX2M U34 ( .A(n19), .Y(par_chk_en) );
  NOR2X2M U35 ( .A(n40), .B(current_state[1]), .Y(strt_chk_en) );
  INVX2M U36 ( .A(Prescale[1]), .Y(N56) );
  INVX2M U37 ( .A(RX_IN), .Y(n43) );
  XNOR2X1M U38 ( .A(\sub_75/carry[5] ), .B(Prescale[5]), .Y(N60) );
  OR2X1M U39 ( .A(Prescale[4]), .B(\sub_75/carry[4] ), .Y(\sub_75/carry[5] )
         );
  XNOR2X1M U40 ( .A(\sub_75/carry[4] ), .B(Prescale[4]), .Y(N59) );
  OR2X1M U41 ( .A(Prescale[3]), .B(\sub_75/carry[3] ), .Y(\sub_75/carry[4] )
         );
  XNOR2X1M U42 ( .A(\sub_75/carry[3] ), .B(Prescale[3]), .Y(N58) );
  OR2X1M U43 ( .A(Prescale[2]), .B(Prescale[1]), .Y(\sub_75/carry[3] ) );
  XNOR2X1M U44 ( .A(Prescale[1]), .B(Prescale[2]), .Y(N57) );
  CLKINVX1M U45 ( .A(N55), .Y(N17) );
  OAI2BB1X1M U46 ( .A0N(N55), .A1N(Prescale[1]), .B0(n2), .Y(N18) );
  OR2X1M U47 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  OAI2BB1X1M U48 ( .A0N(n2), .A1N(Prescale[2]), .B0(n3), .Y(N19) );
  OR2X1M U49 ( .A(n3), .B(Prescale[3]), .Y(n4) );
  OAI2BB1X1M U50 ( .A0N(n3), .A1N(Prescale[3]), .B0(n4), .Y(N20) );
  OR2X1M U51 ( .A(n4), .B(Prescale[4]), .Y(n5) );
  OAI2BB1X1M U52 ( .A0N(n4), .A1N(Prescale[4]), .B0(n5), .Y(N21) );
  NOR2X1M U53 ( .A(n5), .B(Prescale[5]), .Y(N23) );
  AO21XLM U54 ( .A0(n5), .A1(Prescale[5]), .B0(N23), .Y(N22) );
  NOR2BX1M U55 ( .AN(edge_cnt[0]), .B(N17), .Y(n6) );
  OAI2B2X1M U56 ( .A1N(N18), .A0(n6), .B0(edge_cnt[1]), .B1(n6), .Y(n12) );
  NOR2BX1M U57 ( .AN(N17), .B(edge_cnt[0]), .Y(n7) );
  OAI2B2X1M U58 ( .A1N(edge_cnt[1]), .A0(n7), .B0(N18), .B1(n7), .Y(n8) );
  NAND4BBX1M U59 ( .AN(N23), .BN(N22), .C(n12), .D(n8), .Y(n16) );
  CLKXOR2X2M U60 ( .A(N21), .B(edge_cnt[4]), .Y(n15) );
  CLKXOR2X2M U61 ( .A(N19), .B(edge_cnt[2]), .Y(n14) );
  CLKXOR2X2M U62 ( .A(N20), .B(edge_cnt[3]), .Y(n13) );
  NOR4X1M U63 ( .A(n16), .B(n15), .C(n14), .D(n13), .Y(last_edge) );
  NOR2BX1M U64 ( .AN(edge_cnt[0]), .B(N55), .Y(n17) );
  OAI2B2X1M U65 ( .A1N(N56), .A0(n17), .B0(edge_cnt[1]), .B1(n17), .Y(n33) );
  NOR2BX1M U66 ( .AN(N55), .B(edge_cnt[0]), .Y(n18) );
  OAI2B2X1M U67 ( .A1N(edge_cnt[1]), .A0(n18), .B0(N56), .B1(n18), .Y(n32) );
  NAND4BBX1M U68 ( .AN(n1), .BN(N60), .C(n33), .D(n32), .Y(n37) );
  CLKXOR2X2M U69 ( .A(N59), .B(edge_cnt[4]), .Y(n36) );
  CLKXOR2X2M U70 ( .A(N57), .B(edge_cnt[2]), .Y(n35) );
  CLKXOR2X2M U71 ( .A(N58), .B(edge_cnt[3]), .Y(n34) );
  NOR4X1M U72 ( .A(n37), .B(n36), .C(n35), .D(n34), .Y(N62) );
endmodule


module edge_bit_counter_test_1 ( CLK, RST_N, cnt_en, Prescale, bit_cnt, 
        edge_cnt, test_si, test_se );
  input [5:0] Prescale;
  output [3:0] bit_cnt;
  output [4:0] edge_cnt;
  input CLK, RST_N, cnt_en, test_si, test_se;
  wire   N4, N5, N6, N7, N8, N9, N10, last_edge, N20, N21, N22, N23, N24, N35,
         N36, N37, N38, N39, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         \add_22/carry[4] , \add_22/carry[3] , \add_22/carry[2] , n1, n2, n3,
         n4, n14, n15, n16, n17, n18, n19, n20, n31, n32, n33, n34, n35, n36,
         n37, n38, n41, n42;

  SDFFRQX2M \bit_cnt_reg[3]  ( .D(n27), .SI(n36), .SE(n42), .CK(CLK), .RN(
        RST_N), .Q(bit_cnt[3]) );
  SDFFRQX2M \bit_cnt_reg[2]  ( .D(n28), .SI(n35), .SE(n42), .CK(CLK), .RN(
        RST_N), .Q(bit_cnt[2]) );
  SDFFRQX2M \bit_cnt_reg[1]  ( .D(n29), .SI(n34), .SE(n42), .CK(CLK), .RN(
        RST_N), .Q(bit_cnt[1]) );
  SDFFRQX2M \bit_cnt_reg[0]  ( .D(n30), .SI(test_si), .SE(n42), .CK(CLK), .RN(
        RST_N), .Q(bit_cnt[0]) );
  SDFFRQX2M \edge_cnt_reg[4]  ( .D(N39), .SI(edge_cnt[3]), .SE(n42), .CK(CLK), 
        .RN(RST_N), .Q(edge_cnt[4]) );
  SDFFRQX2M \edge_cnt_reg[0]  ( .D(N35), .SI(n37), .SE(n42), .CK(CLK), .RN(
        RST_N), .Q(edge_cnt[0]) );
  SDFFRQX2M \edge_cnt_reg[3]  ( .D(N38), .SI(edge_cnt[2]), .SE(n42), .CK(CLK), 
        .RN(RST_N), .Q(edge_cnt[3]) );
  SDFFRQX2M \edge_cnt_reg[2]  ( .D(N37), .SI(edge_cnt[1]), .SE(n42), .CK(CLK), 
        .RN(RST_N), .Q(edge_cnt[2]) );
  SDFFRQX2M \edge_cnt_reg[1]  ( .D(N36), .SI(N20), .SE(n42), .CK(CLK), .RN(
        RST_N), .Q(edge_cnt[1]) );
  INVX2M U7 ( .A(n26), .Y(n32) );
  NOR2X2M U8 ( .A(n38), .B(last_edge), .Y(n26) );
  AOI21X2M U14 ( .A0(n34), .A1(cnt_en), .B0(n26), .Y(n25) );
  AND2X2M U15 ( .A(N21), .B(n26), .Y(N36) );
  AND2X2M U16 ( .A(N22), .B(n26), .Y(N37) );
  AND2X2M U17 ( .A(N23), .B(n26), .Y(N38) );
  INVX2M U18 ( .A(cnt_en), .Y(n38) );
  NOR3X2M U19 ( .A(n35), .B(n34), .C(n36), .Y(n22) );
  OAI32X1M U20 ( .A0(n38), .A1(bit_cnt[0]), .A2(n26), .B0(n34), .B1(n32), .Y(
        n30) );
  OAI32X1M U21 ( .A0(n23), .A1(bit_cnt[2]), .A2(n35), .B0(n24), .B1(n36), .Y(
        n28) );
  OA21X2M U22 ( .A0(n38), .A1(bit_cnt[1]), .B0(n25), .Y(n24) );
  OAI22X1M U23 ( .A0(n37), .A1(n32), .B0(n21), .B1(n38), .Y(n27) );
  AOI32X1M U24 ( .A0(n22), .A1(n37), .A2(last_edge), .B0(bit_cnt[3]), .B1(n33), 
        .Y(n21) );
  INVX2M U25 ( .A(bit_cnt[3]), .Y(n37) );
  INVX2M U26 ( .A(n22), .Y(n33) );
  OAI22X1M U27 ( .A0(n25), .A1(n35), .B0(bit_cnt[1]), .B1(n23), .Y(n29) );
  OR2X2M U28 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n1) );
  NAND3X2M U29 ( .A(bit_cnt[0]), .B(n32), .C(cnt_en), .Y(n23) );
  AND2X2M U30 ( .A(N24), .B(n26), .Y(N39) );
  AND2X2M U31 ( .A(N20), .B(n26), .Y(N35) );
  INVX2M U32 ( .A(bit_cnt[0]), .Y(n34) );
  INVX2M U33 ( .A(bit_cnt[1]), .Y(n35) );
  INVX2M U34 ( .A(bit_cnt[2]), .Y(n36) );
  ADDHX1M U35 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_22/carry[2] ), .S(
        N21) );
  ADDHX1M U36 ( .A(edge_cnt[2]), .B(\add_22/carry[2] ), .CO(\add_22/carry[3] ), 
        .S(N22) );
  ADDHX1M U37 ( .A(edge_cnt[3]), .B(\add_22/carry[3] ), .CO(\add_22/carry[4] ), 
        .S(N23) );
  CLKINVX1M U38 ( .A(Prescale[0]), .Y(N4) );
  OAI2BB1X1M U39 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n1), .Y(N5) );
  OR2X1M U40 ( .A(n1), .B(Prescale[2]), .Y(n2) );
  OAI2BB1X1M U41 ( .A0N(n1), .A1N(Prescale[2]), .B0(n2), .Y(N6) );
  OR2X1M U42 ( .A(n2), .B(Prescale[3]), .Y(n3) );
  OAI2BB1X1M U43 ( .A0N(n2), .A1N(Prescale[3]), .B0(n3), .Y(N7) );
  OR2X1M U44 ( .A(n3), .B(Prescale[4]), .Y(n4) );
  OAI2BB1X1M U45 ( .A0N(n3), .A1N(Prescale[4]), .B0(n4), .Y(N8) );
  NOR2X1M U46 ( .A(n4), .B(Prescale[5]), .Y(N10) );
  AO21XLM U47 ( .A0(n4), .A1(Prescale[5]), .B0(N10), .Y(N9) );
  CLKINVX1M U48 ( .A(edge_cnt[0]), .Y(N20) );
  CLKXOR2X2M U49 ( .A(\add_22/carry[4] ), .B(edge_cnt[4]), .Y(N24) );
  NOR2BX1M U50 ( .AN(edge_cnt[0]), .B(N4), .Y(n14) );
  OAI2B2X1M U51 ( .A1N(N5), .A0(n14), .B0(edge_cnt[1]), .B1(n14), .Y(n17) );
  NOR2BX1M U52 ( .AN(N4), .B(edge_cnt[0]), .Y(n15) );
  OAI2B2X1M U53 ( .A1N(edge_cnt[1]), .A0(n15), .B0(N5), .B1(n15), .Y(n16) );
  NAND4BBX1M U54 ( .AN(N10), .BN(N9), .C(n17), .D(n16), .Y(n31) );
  CLKXOR2X2M U55 ( .A(N8), .B(edge_cnt[4]), .Y(n20) );
  CLKXOR2X2M U56 ( .A(N6), .B(edge_cnt[2]), .Y(n19) );
  CLKXOR2X2M U57 ( .A(N7), .B(edge_cnt[3]), .Y(n18) );
  NOR4X1M U58 ( .A(n31), .B(n20), .C(n19), .D(n18), .Y(last_edge) );
  INVXLM U59 ( .A(test_se), .Y(n41) );
  INVXLM U60 ( .A(n41), .Y(n42) );
endmodule


module data_sampling_test_1 ( CLK, RST_N, RX_IN, Prescale, edge_cnt, 
        dat_samp_en, sampled_bit, test_si, test_se );
  input [5:0] Prescale;
  input [4:0] edge_cnt;
  input CLK, RST_N, RX_IN, dat_samp_en, test_si, test_se;
  output sampled_bit;
  wire   N24, n19, n20, n21, \add_15/carry[4] , \add_15/carry[3] ,
         \add_15/carry[2] , n1, n2, n3, n4, n5, n6, n11, n12, n13, n14, n15,
         n16, n17, n18, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45;
  wire   [4:0] mid_edge;
  wire   [4:0] mid_edge_plus1;
  wire   [4:0] mid_edge_minus1;
  wire   [2:0] sample;

  SDFFRQX2M \sample_reg[2]  ( .D(n21), .SI(sample[1]), .SE(test_se), .CK(CLK), 
        .RN(RST_N), .Q(sample[2]) );
  SDFFRQX2M \sample_reg[0]  ( .D(n19), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST_N), .Q(sample[0]) );
  SDFFRQX2M \sample_reg[1]  ( .D(n20), .SI(sample[0]), .SE(test_se), .CK(CLK), 
        .RN(RST_N), .Q(sample[1]) );
  SDFFRQX2M sampled_bit_reg ( .D(N24), .SI(sample[2]), .SE(test_se), .CK(CLK), 
        .RN(RST_N), .Q(sampled_bit) );
  INVX2M U4 ( .A(mid_edge[2]), .Y(n12) );
  ADDHX1M U5 ( .A(mid_edge[2]), .B(\add_15/carry[2] ), .CO(\add_15/carry[3] ), 
        .S(mid_edge_plus1[2]) );
  ADDHX1M U6 ( .A(mid_edge[1]), .B(mid_edge[0]), .CO(\add_15/carry[2] ), .S(
        mid_edge_plus1[1]) );
  ADDHX1M U10 ( .A(mid_edge[3]), .B(\add_15/carry[3] ), .CO(\add_15/carry[4] ), 
        .S(mid_edge_plus1[3]) );
  INVX2M U11 ( .A(Prescale[3]), .Y(n4) );
  CLKINVX1M U12 ( .A(Prescale[1]), .Y(mid_edge[0]) );
  NOR2X1M U13 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n1) );
  AO21XLM U14 ( .A0(Prescale[1]), .A1(Prescale[2]), .B0(n1), .Y(mid_edge[1])
         );
  CLKNAND2X2M U15 ( .A(n1), .B(n4), .Y(n2) );
  OAI21X1M U16 ( .A0(n1), .A1(n4), .B0(n2), .Y(mid_edge[2]) );
  XNOR2X1M U17 ( .A(Prescale[4]), .B(n2), .Y(mid_edge[3]) );
  NOR2X1M U18 ( .A(Prescale[4]), .B(n2), .Y(n3) );
  CLKXOR2X2M U19 ( .A(Prescale[5]), .B(n3), .Y(mid_edge[4]) );
  CLKXOR2X2M U20 ( .A(\add_15/carry[4] ), .B(mid_edge[4]), .Y(
        mid_edge_plus1[4]) );
  NOR2X1M U21 ( .A(mid_edge[1]), .B(mid_edge[0]), .Y(n5) );
  AO21XLM U22 ( .A0(mid_edge[0]), .A1(mid_edge[1]), .B0(n5), .Y(
        mid_edge_minus1[1]) );
  CLKNAND2X2M U23 ( .A(n5), .B(n12), .Y(n6) );
  OAI21X1M U24 ( .A0(n5), .A1(n12), .B0(n6), .Y(mid_edge_minus1[2]) );
  XNOR2X1M U25 ( .A(mid_edge[3]), .B(n6), .Y(mid_edge_minus1[3]) );
  NOR2X1M U26 ( .A(mid_edge[3]), .B(n6), .Y(n11) );
  CLKXOR2X2M U27 ( .A(mid_edge[4]), .B(n11), .Y(mid_edge_minus1[4]) );
  CLKMX2X2M U28 ( .A(sample[2]), .B(RX_IN), .S0(n13), .Y(n21) );
  NOR4X1M U29 ( .A(n14), .B(n15), .C(n16), .D(n17), .Y(n13) );
  NOR4X1M U30 ( .A(n18), .B(n22), .C(n23), .D(n24), .Y(n17) );
  CLKNAND2X2M U31 ( .A(n25), .B(dat_samp_en), .Y(n15) );
  XNOR2X1M U32 ( .A(edge_cnt[0]), .B(Prescale[1]), .Y(n25) );
  NAND4X1M U33 ( .A(n26), .B(n27), .C(n28), .D(n29), .Y(n14) );
  CLKXOR2X2M U34 ( .A(n30), .B(mid_edge_plus1[1]), .Y(n29) );
  XNOR2X1M U35 ( .A(edge_cnt[2]), .B(mid_edge_plus1[2]), .Y(n28) );
  XNOR2X1M U36 ( .A(edge_cnt[3]), .B(mid_edge_plus1[3]), .Y(n27) );
  XNOR2X1M U37 ( .A(edge_cnt[4]), .B(mid_edge_plus1[4]), .Y(n26) );
  CLKMX2X2M U38 ( .A(sample[1]), .B(RX_IN), .S0(n31), .Y(n20) );
  NOR4X1M U39 ( .A(n32), .B(n22), .C(n16), .D(n18), .Y(n31) );
  CLKXOR2X2M U40 ( .A(edge_cnt[2]), .B(mid_edge[2]), .Y(n18) );
  CLKINVX1M U41 ( .A(n33), .Y(n16) );
  CLKXOR2X2M U42 ( .A(edge_cnt[4]), .B(mid_edge[4]), .Y(n22) );
  OR3X1M U43 ( .A(n24), .B(n23), .C(n34), .Y(n32) );
  CLKNAND2X2M U44 ( .A(n35), .B(n36), .Y(n23) );
  XNOR2X1M U45 ( .A(edge_cnt[0]), .B(mid_edge[0]), .Y(n36) );
  CLKXOR2X2M U46 ( .A(n30), .B(mid_edge[1]), .Y(n35) );
  CLKINVX1M U47 ( .A(edge_cnt[1]), .Y(n30) );
  CLKXOR2X2M U48 ( .A(edge_cnt[3]), .B(mid_edge[3]), .Y(n24) );
  CLKMX2X2M U49 ( .A(sample[0]), .B(RX_IN), .S0(n37), .Y(n19) );
  NOR2X1M U50 ( .A(n34), .B(n33), .Y(n37) );
  NAND4X1M U51 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n33) );
  XNOR2X1M U52 ( .A(edge_cnt[0]), .B(Prescale[1]), .Y(n41) );
  NOR2X1M U53 ( .A(n42), .B(n43), .Y(n40) );
  CLKXOR2X2M U54 ( .A(mid_edge_minus1[2]), .B(edge_cnt[2]), .Y(n43) );
  CLKXOR2X2M U55 ( .A(mid_edge_minus1[1]), .B(edge_cnt[1]), .Y(n42) );
  XNOR2X1M U56 ( .A(edge_cnt[3]), .B(mid_edge_minus1[3]), .Y(n39) );
  XNOR2X1M U57 ( .A(edge_cnt[4]), .B(mid_edge_minus1[4]), .Y(n38) );
  AOI21X1M U58 ( .A0(n44), .A1(n45), .B0(n34), .Y(N24) );
  CLKINVX1M U59 ( .A(dat_samp_en), .Y(n34) );
  OAI21X1M U60 ( .A0(sample[0]), .A1(sample[1]), .B0(sample[2]), .Y(n45) );
  CLKNAND2X2M U61 ( .A(sample[0]), .B(sample[1]), .Y(n44) );
endmodule


module deserializer_test_1 ( CLK, RST_N, Prescale, edge_cnt, deser_en, 
        sampled_bit, P_DATA, test_so, test_se );
  input [5:0] Prescale;
  input [4:0] edge_cnt;
  output [7:0] P_DATA;
  input CLK, RST_N, deser_en, sampled_bit, test_se;
  output test_so;
  wire   N1, N2, N3, N4, N5, N6, N7, N8, n1, n11, n13, n15, n17, n19, n21, n23,
         n25, n2, n3, n4, n5, n6, n7, n8, n9, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37;
  assign test_so = n30;

  SDFFRQX2M \P_DATA_reg[0]  ( .D(n11), .SI(sampled_bit), .SE(test_se), .CK(CLK), .RN(RST_N), .Q(P_DATA[0]) );
  SDFFRQX2M \P_DATA_reg[5]  ( .D(n21), .SI(n33), .SE(test_se), .CK(CLK), .RN(
        RST_N), .Q(P_DATA[5]) );
  SDFFRQX2M \P_DATA_reg[1]  ( .D(n13), .SI(P_DATA[0]), .SE(test_se), .CK(CLK), 
        .RN(RST_N), .Q(P_DATA[1]) );
  SDFFRQX2M \P_DATA_reg[4]  ( .D(n19), .SI(n34), .SE(test_se), .CK(CLK), .RN(
        RST_N), .Q(P_DATA[4]) );
  SDFFRQX2M \P_DATA_reg[7]  ( .D(n25), .SI(n31), .SE(test_se), .CK(CLK), .RN(
        RST_N), .Q(P_DATA[7]) );
  SDFFRQX2M \P_DATA_reg[3]  ( .D(n17), .SI(n35), .SE(test_se), .CK(CLK), .RN(
        RST_N), .Q(P_DATA[3]) );
  SDFFRQX2M \P_DATA_reg[6]  ( .D(n23), .SI(n32), .SE(test_se), .CK(CLK), .RN(
        RST_N), .Q(P_DATA[6]) );
  SDFFRQX2M \P_DATA_reg[2]  ( .D(n15), .SI(n36), .SE(test_se), .CK(CLK), .RN(
        RST_N), .Q(P_DATA[2]) );
  OAI22X1M U3 ( .A0(n37), .A1(n36), .B0(n1), .B1(n35), .Y(n13) );
  OAI22X1M U4 ( .A0(n37), .A1(n35), .B0(n1), .B1(n34), .Y(n15) );
  OAI22X1M U5 ( .A0(n37), .A1(n34), .B0(n1), .B1(n33), .Y(n17) );
  OAI22X1M U6 ( .A0(n37), .A1(n33), .B0(n1), .B1(n32), .Y(n19) );
  OAI22X1M U7 ( .A0(n37), .A1(n32), .B0(n1), .B1(n31), .Y(n21) );
  OAI22X1M U8 ( .A0(n37), .A1(n31), .B0(n1), .B1(n30), .Y(n23) );
  INVX2M U9 ( .A(n1), .Y(n37) );
  NAND2X2M U10 ( .A(deser_en), .B(N8), .Y(n1) );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n36), .A0N(P_DATA[0]), .A1N(n1), .Y(n11) );
  OAI2BB2X1M U12 ( .B0(n37), .B1(n30), .A0N(sampled_bit), .A1N(n37), .Y(n25)
         );
  OR2X2M U13 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n2) );
  INVX2M U14 ( .A(P_DATA[2]), .Y(n35) );
  INVX2M U15 ( .A(P_DATA[6]), .Y(n31) );
  INVX2M U16 ( .A(P_DATA[7]), .Y(n30) );
  INVX2M U17 ( .A(P_DATA[3]), .Y(n34) );
  INVX2M U18 ( .A(P_DATA[4]), .Y(n33) );
  INVX2M U19 ( .A(P_DATA[5]), .Y(n32) );
  INVX2M U28 ( .A(P_DATA[1]), .Y(n36) );
  CLKINVX1M U29 ( .A(Prescale[0]), .Y(N1) );
  OAI2BB1X1M U30 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n2), .Y(N2) );
  OR2X1M U31 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  OAI2BB1X1M U32 ( .A0N(n2), .A1N(Prescale[2]), .B0(n3), .Y(N3) );
  OR2X1M U33 ( .A(n3), .B(Prescale[3]), .Y(n4) );
  OAI2BB1X1M U34 ( .A0N(n3), .A1N(Prescale[3]), .B0(n4), .Y(N4) );
  OR2X1M U35 ( .A(n4), .B(Prescale[4]), .Y(n5) );
  OAI2BB1X1M U36 ( .A0N(n4), .A1N(Prescale[4]), .B0(n5), .Y(N5) );
  NOR2X1M U37 ( .A(n5), .B(Prescale[5]), .Y(N7) );
  AO21XLM U38 ( .A0(n5), .A1(Prescale[5]), .B0(N7), .Y(N6) );
  NOR2BX1M U39 ( .AN(edge_cnt[0]), .B(N1), .Y(n6) );
  OAI2B2X1M U40 ( .A1N(N2), .A0(n6), .B0(edge_cnt[1]), .B1(n6), .Y(n9) );
  NOR2BX1M U41 ( .AN(N1), .B(edge_cnt[0]), .Y(n7) );
  OAI2B2X1M U42 ( .A1N(edge_cnt[1]), .A0(n7), .B0(N2), .B1(n7), .Y(n8) );
  NAND4BBX1M U43 ( .AN(N7), .BN(N6), .C(n9), .D(n8), .Y(n29) );
  CLKXOR2X2M U44 ( .A(N5), .B(edge_cnt[4]), .Y(n28) );
  CLKXOR2X2M U45 ( .A(N3), .B(edge_cnt[2]), .Y(n27) );
  CLKXOR2X2M U46 ( .A(N4), .B(edge_cnt[3]), .Y(n26) );
  NOR4X1M U47 ( .A(n29), .B(n28), .C(n27), .D(n26), .Y(N8) );
endmodule


module parityCheck_test_1 ( CLK, RST_N, PAR_TYP, P_DATA, sampled_bit, 
        par_chk_en, par_err, test_si, test_se );
  input [7:0] P_DATA;
  input CLK, RST_N, PAR_TYP, sampled_bit, par_chk_en, test_si, test_se;
  output par_err;
  wire   n1, n3, n4, n5, n6, n7, n9, n2;

  SDFFRQX2M par_err_reg ( .D(n9), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST_N), .Q(par_err) );
  XNOR2X2M U2 ( .A(sampled_bit), .B(PAR_TYP), .Y(n5) );
  XOR3XLM U3 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n4) );
  XNOR2X2M U4 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  XOR3XLM U5 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n7), .Y(n3) );
  XNOR2X2M U6 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n7) );
  OAI2BB2X1M U7 ( .B0(n1), .B1(n2), .A0N(par_err), .A1N(n2), .Y(n9) );
  INVX2M U8 ( .A(par_chk_en), .Y(n2) );
  XOR3XLM U9 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
endmodule


module strtCheck_test_1 ( CLK, RST_N, sampled_bit, strt_chk_en, strt_glitch, 
        test_si, test_se );
  input CLK, RST_N, sampled_bit, strt_chk_en, test_si, test_se;
  output strt_glitch;
  wire   N4;

  SDFFRQX2M strt_glitch_reg ( .D(N4), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST_N), .Q(strt_glitch) );
  AND2X2M U4 ( .A(strt_chk_en), .B(sampled_bit), .Y(N4) );
endmodule


module StopCheck_test_1 ( CLK, RST_N, sampled_bit, stp_chk_en, stp_err, 
        test_si, test_se );
  input CLK, RST_N, sampled_bit, stp_chk_en, test_si, test_se;
  output stp_err;
  wire   n3, n1;

  SDFFRQX2M stp_err_reg ( .D(n3), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST_N), .Q(stp_err) );
  OAI2BB2X1M U2 ( .B0(sampled_bit), .B1(n1), .A0N(stp_err), .A1N(n1), .Y(n3)
         );
  INVX2M U3 ( .A(stp_chk_en), .Y(n1) );
endmodule


module UART_RX_test_1 ( CLK, RST_N, RX_IN, PAR_EN, PAR_TYP, Prescale, 
        data_valid, P_DATA, Stop_Error, Parity_Error, test_si, test_so, 
        test_se );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST_N, RX_IN, PAR_EN, PAR_TYP, test_si, test_se;
  output data_valid, Stop_Error, Parity_Error, test_so;
  wire   strt_glitch, dat_samp_en, cnt_en, stp_chk_en, strt_chk_en, par_chk_en,
         deser_en, sampled_bit, n1, n2, n3, n4;
  wire   [3:0] bit_cnt;
  wire   [4:0] edge_cnt;
  assign test_so = strt_glitch;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST_N), .Y(n2) );
  FSM_RX_test_1 u_fsm_rx ( .CLK(CLK), .RST_N(n1), .RX_IN(RX_IN), .PAR_EN(
        PAR_EN), .bit_cnt(bit_cnt), .Prescale(Prescale), .edge_cnt(edge_cnt), 
        .stp_err(Stop_Error), .strt_glitch(strt_glitch), .par_err(Parity_Error), .dat_samp_en(dat_samp_en), .cnt_en(cnt_en), .data_valid(data_valid), 
        .stp_chk_en(stp_chk_en), .strt_chk_en(strt_chk_en), .par_chk_en(
        par_chk_en), .deser_en(deser_en), .test_so(n3), .test_se(test_se) );
  edge_bit_counter_test_1 u_edge_bit_counter ( .CLK(CLK), .RST_N(n1), .cnt_en(
        cnt_en), .Prescale(Prescale), .bit_cnt(bit_cnt), .edge_cnt(edge_cnt), 
        .test_si(n4), .test_se(test_se) );
  data_sampling_test_1 u_data_sampling ( .CLK(CLK), .RST_N(n1), .RX_IN(RX_IN), 
        .Prescale(Prescale), .edge_cnt(edge_cnt), .dat_samp_en(dat_samp_en), 
        .sampled_bit(sampled_bit), .test_si(Stop_Error), .test_se(test_se) );
  deserializer_test_1 u_deserializer ( .CLK(CLK), .RST_N(n1), .Prescale(
        Prescale), .edge_cnt(edge_cnt), .deser_en(deser_en), .sampled_bit(
        sampled_bit), .P_DATA(P_DATA), .test_so(n4), .test_se(test_se) );
  parityCheck_test_1 u_parityCheck ( .CLK(CLK), .RST_N(n1), .PAR_TYP(PAR_TYP), 
        .P_DATA(P_DATA), .sampled_bit(sampled_bit), .par_chk_en(par_chk_en), 
        .par_err(Parity_Error), .test_si(n3), .test_se(test_se) );
  strtCheck_test_1 u_strtCheck ( .CLK(CLK), .RST_N(n1), .sampled_bit(
        sampled_bit), .strt_chk_en(strt_chk_en), .strt_glitch(strt_glitch), 
        .test_si(Parity_Error), .test_se(test_se) );
  StopCheck_test_1 u_StopCheck ( .CLK(CLK), .RST_N(n1), .sampled_bit(
        sampled_bit), .stp_chk_en(stp_chk_en), .stp_err(Stop_Error), .test_si(
        test_si), .test_se(test_se) );
endmodule


module UART_TOP_test_1 ( TX_CLK, RX_CLK, RST, PAR_TYP, PAR_EN, Prescale, 
        TX_IN_P, TX_IN_V, RX_IN_S, TX_OUT_S, TX_OUT_V, RX_OUT_P, RX_OUT_V, 
        rdy_pulse, test_si, test_so, test_se );
  input [5:0] Prescale;
  input [7:0] TX_IN_P;
  output [7:0] RX_OUT_P;
  input TX_CLK, RX_CLK, RST, PAR_TYP, PAR_EN, TX_IN_V, RX_IN_S, test_si,
         test_se;
  output TX_OUT_S, TX_OUT_V, RX_OUT_V, rdy_pulse, test_so;
  wire   n1, n2, n4;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  UART_TX_test_1 u_uart_tx ( .clk(TX_CLK), .n_RST(n1), .P_DATA(TX_IN_P), 
        .Data_Valid(TX_IN_V), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .TX_OUT(
        TX_OUT_S), .busy(TX_OUT_V), .rdy_pulse(rdy_pulse), .test_si(n4), 
        .test_so(test_so), .test_se(test_se) );
  UART_RX_test_1 u_uart_rx ( .CLK(RX_CLK), .RST_N(n1), .RX_IN(RX_IN_S), 
        .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .Prescale(Prescale), .data_valid(
        RX_OUT_V), .P_DATA(RX_OUT_P), .test_si(test_si), .test_so(n4), 
        .test_se(test_se) );
endmodule


module SYS_TOP ( REF_CLK, UART_CLK, RST, RX_IN, scan_clk, SI, SE, scan_rst, 
        test_mode, SO, TX_OUT, test_si2, test_so2, test_si3, test_so3, 
        test_si4, test_so4, test_si5, test_so5 );
  input REF_CLK, UART_CLK, RST, RX_IN, scan_clk, SI, SE, scan_rst, test_mode,
         test_si2, test_si3, test_si4, test_si5;
  output SO, TX_OUT, test_so2, test_so3, test_so4, test_so5;
  wire   UART_CLK_M, TX_CLK, TX_CLK_M, RX_CLK, RX_CLK_M, RST_M, SYNC_RST_1,
         SYNC_RST_1_M, SYNC_RST_2, SYNC_RST_2_M, OUT_Valid, Rd_D_Vld, RX_valid,
         EN, Gate_EN, WrEn, RdEn, WR_INC, ALU_CLK, Parity_Type, Parity_Enable,
         RD_INC, F_EMPTY, RX_valid_ASYNC, n1, n2, n3, n4, n5, n6, n7, n8, n11,
         n12, n16, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37;
  wire   [15:0] ALU_OUT;
  wire   [7:0] Rd_D;
  wire   [7:0] RX_DATA;
  wire   [3:0] FUN;
  wire   [3:0] Addr;
  wire   [7:0] Wr_D;
  wire   [7:0] WR_DATA;
  wire   [7:0] Op_A;
  wire   [7:0] Op_B;
  wire   [7:0] DIV_RATIO;
  wire   [5:0] prescale;
  wire   [7:0] RD_DATA;
  wire   [7:0] RX_DR;
  wire   [7:0] RX_DATA_ASYNC;
wand  REF_CLK_M;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;
  assign test_so3 = prescale[3];

  INVX2M U2 ( .A(n6), .Y(n5) );
  INVX2M U3 ( .A(F_EMPTY), .Y(n1) );
  BUFX2M U4 ( .A(Addr[0]), .Y(n3) );
  BUFX2M U5 ( .A(Addr[1]), .Y(n4) );
  INVX4M U6 ( .A(n8), .Y(n7) );
  INVX2M U7 ( .A(SYNC_RST_1_M), .Y(n8) );
  INVX2M U8 ( .A(SYNC_RST_2_M), .Y(n6) );
  BUFX2M U9 ( .A(test_mode), .Y(n2) );
  INVXLM U15 ( .A(n31), .Y(n27) );
  DLY1X1M U16 ( .A(n35), .Y(n28) );
  INVXLM U17 ( .A(n37), .Y(n29) );
  INVXLM U18 ( .A(n29), .Y(n30) );
  INVXLM U19 ( .A(SE), .Y(n31) );
  INVXLM U20 ( .A(n31), .Y(n32) );
  INVXLM U21 ( .A(n27), .Y(n33) );
  INVXLM U22 ( .A(n33), .Y(n34) );
  INVXLM U23 ( .A(n33), .Y(n35) );
  INVXLM U24 ( .A(n33), .Y(n36) );
  INVXLM U25 ( .A(n33), .Y(n37) );
  mux2X1_1 M0 ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(REF_CLK_M) );
  mux2X1_5 M1 ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(UART_CLK_M)
         );
  mux2X1_4 M2 ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(REF_CLK_M) );
  mux2X1_3 M4 ( .IN_0(TX_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(TX_CLK_M) );
  mux2X1_2 M5 ( .IN_0(RX_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(RX_CLK_M) );
  mux2X1_0 M6 ( .IN_0(RST), .IN_1(scan_rst), .SEL(n2), .OUT(RST_M) );
  mux2X1_7 M7 ( .IN_0(SYNC_RST_1), .IN_1(scan_rst), .SEL(n2), .OUT(
        SYNC_RST_1_M) );
  mux2X1_6 M8 ( .IN_0(SYNC_RST_2), .IN_1(scan_rst), .SEL(n2), .OUT(
        SYNC_RST_2_M) );
  SYS_CTRL_test_1 system_ctrl ( .CLK(REF_CLK_M), .RST(n7), .ALU_OUT(ALU_OUT), 
        .OUT_Valid(OUT_Valid), .RdData(Rd_D), .RdData_Valid(Rd_D_Vld), 
        .RX_P_DATA(RX_DATA), .RX_D_VLD(RX_valid), .ALU_FUN(FUN), .EN(EN), 
        .CLK_EN(Gate_EN), .Address(Addr), .WrEn(WrEn), .RdEn(RdEn), .WrData(
        Wr_D), .TX_P_DATA(WR_DATA), .TX_D_VLD(WR_INC), .test_si(n12), 
        .test_so(n11), .test_se(n34) );
  ALU_test_1 alu_unit ( .A(Op_A), .B(Op_B), .EN(EN), .ALU_FUN(FUN), .CLK(
        ALU_CLK), .RST(n7), .ALU_OUT(ALU_OUT), .OUT_VALID(OUT_Valid), 
        .test_si(n22), .test_se(n32) );
  RegFile_test_1 regfile_u ( .CLK(REF_CLK_M), .RST(n7), .WrEn(WrEn), .RdEn(
        RdEn), .Address({Addr[3:2], n4, n3}), .WrData(Wr_D), .RdData(Rd_D), 
        .RdData_VLD(Rd_D_Vld), .REG0(Op_A), .REG1(Op_B), .REG2({prescale, 
        Parity_Type, Parity_Enable}), .REG3(DIV_RATIO), .test_si3(test_si5), 
        .test_si2(test_si4), .test_si1(n16), .test_so2(n12), .test_so1(
        test_so4), .test_se(SE) );
  ASYC_FIFO_test_1 fifo_unit ( .W_CLK(REF_CLK_M), .R_CLK(TX_CLK_M), .WRST_N(n7), .RRST_N(n5), .WINC(WR_INC), .RINC(RD_INC), .WR_DATA(WR_DATA), .RD_DATA(
        RD_DATA), .EMPTY(F_EMPTY), .test_si3(test_si3), .test_si2(test_si2), 
        .test_si1(n21), .test_so3(n16), .test_so2(test_so2), .test_so1(SO), 
        .test_se(SE) );
  ClkDiv_test_0 RX_CLkDIV ( .i_ref_clk(UART_CLK_M), .i_rst_n(n5), .i_clk_en(
        1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, RX_DR[3:0]}), .o_div_clk(
        RX_CLK), .test_si(n24), .test_so(n23), .test_se(n36) );
  ClkDiv_test_1 TX_CLkDIV ( .i_ref_clk(UART_CLK_M), .i_rst_n(n5), .i_clk_en(
        1'b1), .i_div_ratio(DIV_RATIO), .o_div_clk(TX_CLK), .test_si(n23), 
        .test_so(n22), .test_se(n30) );
  CLKDIV_MUX CMUX_unit ( .prescale(prescale), .OUT({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, RX_DR[3:0]}) );
  CLK_GATE clk_gate_unit ( .CLK_EN(Gate_EN), .test_en(n2), .CLK(REF_CLK_M), 
        .GATED_CLK(ALU_CLK) );
  DATA_SYNC_test_1 data_sync_unit ( .clk(REF_CLK_M), .rst_n(n7), .bus_enable(
        RX_valid_ASYNC), .unsync_bus(RX_DATA_ASYNC), .sync_bus(RX_DATA), 
        .enable_pulse(RX_valid), .test_si(OUT_Valid), .test_so(n21), .test_se(
        n37) );
  RST_SYNC_test_1 RST_SYNC_1 ( .clk(REF_CLK_M), .rst_n_in(RST_M), .rst_n_out(
        SYNC_RST_1), .test_si(SI), .test_so(n25), .test_se(n35) );
  RST_SYNC_test_0 RST_SYNC_2 ( .clk(UART_CLK_M), .rst_n_in(RST_M), .rst_n_out(
        SYNC_RST_2), .test_si(n25), .test_so(n24), .test_se(n30) );
  UART_TOP_test_1 uart_unit ( .TX_CLK(TX_CLK_M), .RX_CLK(RX_CLK_M), .RST(n5), 
        .PAR_TYP(Parity_Type), .PAR_EN(Parity_Enable), .Prescale(prescale), 
        .TX_IN_P(RD_DATA), .TX_IN_V(n1), .RX_IN_S(RX_IN), .TX_OUT_S(TX_OUT), 
        .RX_OUT_P(RX_DATA_ASYNC), .RX_OUT_V(RX_valid_ASYNC), .rdy_pulse(RD_INC), .test_si(n11), .test_so(test_so5), .test_se(n28) );
endmodule

