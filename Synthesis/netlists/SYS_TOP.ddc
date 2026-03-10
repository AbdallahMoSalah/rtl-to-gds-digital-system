/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sat Oct  4 01:00:28 2025
/////////////////////////////////////////////////////////////


module SYS_CTRL ( CLK, RST, ALU_OUT, OUT_Valid, RdData, RdData_Valid, 
        RX_P_DATA, RX_D_VLD, ALU_FUN, EN, CLK_EN, Address, WrEn, RdEn, WrData, 
        TX_P_DATA, TX_D_VLD, clk_div_en );
  input [15:0] ALU_OUT;
  input [7:0] RdData;
  input [7:0] RX_P_DATA;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  output [7:0] TX_P_DATA;
  input CLK, RST, OUT_Valid, RdData_Valid, RX_D_VLD;
  output EN, CLK_EN, WrEn, RdEn, TX_D_VLD, clk_div_en;
  wire   n1, n2, n3, n4, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n68;
  wire   [3:0] current_state;
  wire   [3:0] next_state;

  DFFRX1M \Frame_reg[0]  ( .D(n67), .CK(CLK), .RN(RST), .QN(n4) );
  DFFRX1M \Frame_reg[3]  ( .D(n64), .CK(CLK), .RN(RST), .QN(n1) );
  DFFRX1M \Frame_reg[2]  ( .D(n65), .CK(CLK), .RN(RST), .QN(n2) );
  DFFRX1M \Frame_reg[1]  ( .D(n66), .CK(CLK), .RN(RST), .QN(n3) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .CK(CLK), .RN(RST), .Q(
        current_state[3]) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
  NOR4X1M U5 ( .A(n17), .B(n22), .C(n68), .D(n24), .Y(n51) );
  NOR2X2M U6 ( .A(n62), .B(n2), .Y(ALU_FUN[2]) );
  NOR2X2M U7 ( .A(n62), .B(n4), .Y(ALU_FUN[0]) );
  NOR2X2M U8 ( .A(n63), .B(n2), .Y(Address[2]) );
  INVX2M U9 ( .A(WrEn), .Y(n15) );
  INVX2M U10 ( .A(n62), .Y(EN) );
  INVX2M U11 ( .A(n48), .Y(n20) );
  NOR2X2M U12 ( .A(n28), .B(n51), .Y(n62) );
  NAND2X2M U13 ( .A(n61), .B(n22), .Y(n49) );
  AND2X2M U14 ( .A(n49), .B(n37), .Y(n63) );
  NOR2X2M U15 ( .A(n15), .B(n13), .Y(WrData[0]) );
  NOR2X2M U16 ( .A(n15), .B(n12), .Y(WrData[1]) );
  NOR2X2M U17 ( .A(n15), .B(n11), .Y(WrData[2]) );
  NOR2X2M U18 ( .A(n15), .B(n10), .Y(WrData[3]) );
  NOR2X2M U19 ( .A(n15), .B(n9), .Y(WrData[4]) );
  NOR2X2M U20 ( .A(n15), .B(n8), .Y(WrData[7]) );
  NAND3X2M U21 ( .A(n49), .B(n29), .C(n50), .Y(WrEn) );
  NAND3X2M U22 ( .A(n24), .B(n68), .C(n33), .Y(n29) );
  NAND3X2M U23 ( .A(n60), .B(n16), .C(n30), .Y(TX_D_VLD) );
  INVX2M U24 ( .A(n51), .Y(n16) );
  INVX2M U25 ( .A(n30), .Y(n19) );
  INVX2M U26 ( .A(n60), .Y(n14) );
  INVX2M U27 ( .A(n37), .Y(RdEn) );
  OAI21X2M U28 ( .A0(n42), .A1(n41), .B0(n21), .Y(n48) );
  NAND2X2M U29 ( .A(n24), .B(n22), .Y(n41) );
  INVX2M U30 ( .A(n34), .Y(n21) );
  AND4X2M U31 ( .A(n46), .B(n17), .C(n24), .D(n47), .Y(n36) );
  NOR3X2M U32 ( .A(n8), .B(n7), .C(n10), .Y(n46) );
  INVX2M U33 ( .A(n47), .Y(n23) );
  NOR3X2M U34 ( .A(n24), .B(current_state[0]), .C(n68), .Y(n28) );
  NOR3X2M U35 ( .A(n24), .B(current_state[3]), .C(n17), .Y(n61) );
  NOR2X2M U36 ( .A(n22), .B(current_state[0]), .Y(n33) );
  NOR2X2M U37 ( .A(n62), .B(n3), .Y(ALU_FUN[1]) );
  INVX2M U38 ( .A(current_state[1]), .Y(n24) );
  NAND3X2M U39 ( .A(current_state[1]), .B(n68), .C(n33), .Y(n37) );
  INVX2M U40 ( .A(current_state[3]), .Y(n68) );
  INVX2M U41 ( .A(current_state[2]), .Y(n22) );
  INVX2M U42 ( .A(current_state[0]), .Y(n17) );
  NOR2X2M U43 ( .A(n62), .B(n1), .Y(ALU_FUN[3]) );
  OAI21X2M U44 ( .A0(n63), .A1(n4), .B0(n50), .Y(Address[0]) );
  NOR2X4M U45 ( .A(n63), .B(n1), .Y(Address[3]) );
  NAND3X2M U46 ( .A(current_state[3]), .B(current_state[1]), .C(n33), .Y(n30)
         );
  OAI2BB1X2M U47 ( .A0N(ALU_OUT[8]), .A1N(n51), .B0(n59), .Y(TX_P_DATA[0]) );
  AOI22X1M U48 ( .A0(RdData[0]), .A1(n14), .B0(ALU_OUT[0]), .B1(n19), .Y(n59)
         );
  OAI2BB1X2M U49 ( .A0N(ALU_OUT[9]), .A1N(n51), .B0(n58), .Y(TX_P_DATA[1]) );
  AOI22X1M U50 ( .A0(RdData[1]), .A1(n14), .B0(ALU_OUT[1]), .B1(n19), .Y(n58)
         );
  OAI2BB1X2M U51 ( .A0N(ALU_OUT[10]), .A1N(n51), .B0(n57), .Y(TX_P_DATA[2]) );
  AOI22X1M U52 ( .A0(RdData[2]), .A1(n14), .B0(ALU_OUT[2]), .B1(n19), .Y(n57)
         );
  OAI2BB1X2M U53 ( .A0N(ALU_OUT[11]), .A1N(n51), .B0(n56), .Y(TX_P_DATA[3]) );
  AOI22X1M U54 ( .A0(RdData[3]), .A1(n14), .B0(ALU_OUT[3]), .B1(n19), .Y(n56)
         );
  OAI2BB1X2M U55 ( .A0N(ALU_OUT[12]), .A1N(n51), .B0(n55), .Y(TX_P_DATA[4]) );
  AOI22X1M U56 ( .A0(RdData[4]), .A1(n14), .B0(ALU_OUT[4]), .B1(n19), .Y(n55)
         );
  OAI2BB1X2M U57 ( .A0N(ALU_OUT[13]), .A1N(n51), .B0(n54), .Y(TX_P_DATA[5]) );
  AOI22X1M U58 ( .A0(RdData[5]), .A1(n14), .B0(ALU_OUT[5]), .B1(n19), .Y(n54)
         );
  OAI2BB1X2M U59 ( .A0N(ALU_OUT[14]), .A1N(n51), .B0(n53), .Y(TX_P_DATA[6]) );
  AOI22X1M U60 ( .A0(RdData[6]), .A1(n14), .B0(ALU_OUT[6]), .B1(n19), .Y(n53)
         );
  OAI2BB1X2M U61 ( .A0N(ALU_OUT[15]), .A1N(n51), .B0(n52), .Y(TX_P_DATA[7]) );
  AOI22X1M U62 ( .A0(RdData[7]), .A1(n14), .B0(ALU_OUT[7]), .B1(n19), .Y(n52)
         );
  NAND3X2M U63 ( .A(current_state[3]), .B(n24), .C(n33), .Y(n50) );
  NAND3X2M U64 ( .A(RdData_Valid), .B(current_state[2]), .C(n61), .Y(n60) );
  AND2X2M U65 ( .A(RX_P_DATA[5]), .B(WrEn), .Y(WrData[5]) );
  AND2X2M U66 ( .A(RX_P_DATA[6]), .B(WrEn), .Y(WrData[6]) );
  NOR2X2M U67 ( .A(n63), .B(n3), .Y(Address[1]) );
  OAI31X1M U68 ( .A0(n41), .A1(current_state[0]), .A2(n68), .B0(n62), .Y(
        CLK_EN) );
  NOR3X2M U69 ( .A(n24), .B(current_state[0]), .C(n23), .Y(n34) );
  XNOR2X2M U70 ( .A(current_state[0]), .B(current_state[3]), .Y(n42) );
  OAI31X1M U71 ( .A0(n25), .A1(current_state[1]), .A2(current_state[0]), .B0(
        n26), .Y(next_state[3]) );
  AOI21X2M U72 ( .A0(current_state[2]), .A1(RX_D_VLD), .B0(current_state[3]), 
        .Y(n25) );
  AOI31X2M U73 ( .A0(RX_P_DATA[0]), .A1(n27), .A2(RX_P_DATA[4]), .B0(n28), .Y(
        n26) );
  OAI22X1M U74 ( .A0(n20), .A1(n12), .B0(n48), .B1(n3), .Y(n66) );
  OAI22X1M U75 ( .A0(n20), .A1(n11), .B0(n48), .B1(n2), .Y(n65) );
  OAI22X1M U76 ( .A0(n20), .A1(n10), .B0(n48), .B1(n1), .Y(n64) );
  OAI22X1M U77 ( .A0(n20), .A1(n13), .B0(n48), .B1(n4), .Y(n67) );
  NOR2X2M U78 ( .A(current_state[2]), .B(current_state[3]), .Y(n47) );
  OAI211X2M U79 ( .A0(n17), .A1(n43), .B0(n30), .C0(n44), .Y(next_state[0]) );
  OAI21X2M U80 ( .A0(n24), .A1(n7), .B0(n47), .Y(n43) );
  AOI32X1M U81 ( .A0(n13), .A1(n9), .A2(n39), .B0(RdData_Valid), .B1(RdEn), 
        .Y(n44) );
  NAND4X2M U82 ( .A(n29), .B(n30), .C(n31), .D(n32), .Y(next_state[2]) );
  AOI222X1M U83 ( .A0(OUT_Valid), .A1(n28), .B0(n33), .B1(n7), .C0(n34), .C1(
        RX_D_VLD), .Y(n32) );
  AOI31X2M U84 ( .A0(n13), .A1(n9), .A2(n27), .B0(RdEn), .Y(n31) );
  NAND4X2M U85 ( .A(n18), .B(n21), .C(n37), .D(n38), .Y(next_state[1]) );
  INVX2M U86 ( .A(n28), .Y(n18) );
  AOI31X2M U87 ( .A0(RX_P_DATA[4]), .A1(RX_P_DATA[0]), .A2(n39), .B0(n40), .Y(
        n38) );
  OAI33X2M U88 ( .A0(n23), .A1(RX_D_VLD), .A2(n24), .B0(n41), .B1(n42), .B2(n7), .Y(n40) );
  INVX2M U89 ( .A(RX_D_VLD), .Y(n7) );
  INVX2M U90 ( .A(RX_P_DATA[0]), .Y(n13) );
  INVX2M U91 ( .A(RX_P_DATA[3]), .Y(n10) );
  AND4X2M U92 ( .A(RX_P_DATA[6]), .B(RX_P_DATA[2]), .C(n35), .D(n36), .Y(n27)
         );
  NOR2X2M U93 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[1]), .Y(n35) );
  INVX2M U94 ( .A(RX_P_DATA[1]), .Y(n12) );
  INVX2M U95 ( .A(RX_P_DATA[2]), .Y(n11) );
  AND4X2M U96 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[1]), .C(n45), .D(n36), .Y(n39)
         );
  NOR2X2M U97 ( .A(RX_P_DATA[6]), .B(RX_P_DATA[2]), .Y(n45) );
  INVX2M U98 ( .A(RX_P_DATA[4]), .Y(n9) );
  INVX2M U99 ( .A(RX_P_DATA[7]), .Y(n8) );
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
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
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
  NAND2X2M U9 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U10 ( .A(a[5]), .Y(n4) );
  INVX2M U11 ( .A(n18), .Y(n3) );
  NAND2X2M U12 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U13 ( .A(a[4]), .Y(n6) );
  INVX2M U14 ( .A(n18), .Y(n5) );
  NAND2X2M U15 ( .A(n5), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U16 ( .A(a[3]), .Y(n7) );
  NAND2X2M U17 ( .A(n5), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U18 ( .A(a[2]), .Y(n8) );
  NAND2X2M U19 ( .A(n5), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U20 ( .A(a[1]), .Y(n9) );
  NAND2X2M U21 ( .A(n5), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U22 ( .A(a[0]), .Y(n10) );
  NAND2X2M U23 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U24 ( .A(a[6]), .Y(n2) );
  INVX2M U25 ( .A(n18), .Y(n1) );
  XNOR2X2M U26 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
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
  INVX2M U1 ( .A(B[6]), .Y(n3) );
  XNOR2X2M U2 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  INVX2M U8 ( .A(B[1]), .Y(n8) );
  NAND2X2M U9 ( .A(B[0]), .B(n1), .Y(carry[1]) );
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
  XNOR2X2M U4 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U5 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n8) );
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

  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n14, n13, n15, n11, n12, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n6), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n8), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n7), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n4), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n3), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  AND2X2M U2 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U13 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U14 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U15 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U16 ( .A(\ab[0][3] ), .Y(n19) );
  AND2X2M U17 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U18 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U19 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U21 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U22 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U23 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n14) );
  CLKXOR2X2M U24 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  AND2X2M U25 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  XNOR2X2M U27 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U28 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U29 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U30 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U31 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U32 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U33 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U34 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U35 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  INVX2M U36 ( .A(A[1]), .Y(n38) );
  INVX2M U37 ( .A(A[0]), .Y(n39) );
  INVX2M U38 ( .A(B[6]), .Y(n25) );
  XNOR2X2M U39 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U40 ( .A(A[3]), .Y(n36) );
  INVX2M U41 ( .A(A[2]), .Y(n37) );
  INVX2M U42 ( .A(A[4]), .Y(n35) );
  INVX2M U43 ( .A(A[7]), .Y(n32) );
  INVX2M U44 ( .A(A[6]), .Y(n33) );
  INVX2M U45 ( .A(A[5]), .Y(n34) );
  INVX2M U46 ( .A(B[3]), .Y(n28) );
  INVX2M U47 ( .A(B[7]), .Y(n24) );
  INVX2M U48 ( .A(B[4]), .Y(n27) );
  INVX2M U49 ( .A(B[5]), .Y(n26) );
  INVX2M U50 ( .A(B[0]), .Y(n31) );
  INVX2M U51 ( .A(B[2]), .Y(n29) );
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
endmodule


module ALU ( A, B, EN, ALU_FUN, CLK, RST, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, CLK, RST;
  output OUT_VALID;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N157, N158, N159, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140;
  wire   [15:0] ALU_OUT_Comb;

  ALU_DW_div_uns_0 div_52 ( .a({n12, n11, n10, n9, n8, n7, n6, n5}), .b({B[7], 
        n4, B[5:0]}), .quotient({N132, N131, N130, N129, N128, N127, N126, 
        N125}) );
  ALU_DW01_sub_0 sub_46 ( .A({1'b0, n12, n11, n10, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .DIFF({N108, N107, N106, N105, 
        N104, N103, N102, N101, N100}) );
  ALU_DW01_add_0 add_43 ( .A({1'b0, n12, n11, n10, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .SUM({N99, N98, N97, N96, N95, 
        N94, N93, N92, N91}) );
  ALU_DW02_mult_0 mult_49 ( .A({n12, n11, n10, n9, n8, n7, n6, n5}), .B({B[7], 
        n4, B[5:0]}), .TC(1'b0), .PRODUCT({N124, N123, N122, N121, N120, N119, 
        N118, N117, N116, N115, N114, N113, N112, N111, N110, N109}) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_Comb[15]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[15]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_Comb[14]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[14]) );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_Comb[13]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[13]) );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_Comb[12]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[12]) );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_Comb[11]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[11]) );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_Comb[10]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[10]) );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_Comb[9]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_Comb[8]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[8]) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[1]) );
  DFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[0]) );
  DFFRQX2M OUT_VALID_reg ( .D(EN), .CK(CLK), .RN(RST), .Q(OUT_VALID) );
  NOR3BX2M U3 ( .AN(n105), .B(n138), .C(ALU_FUN[2]), .Y(n49) );
  NOR3X2M U4 ( .A(n136), .B(ALU_FUN[2]), .C(n138), .Y(n35) );
  BUFX2M U7 ( .A(A[6]), .Y(n11) );
  OAI2BB1X2M U8 ( .A0N(N124), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[15]) );
  OAI2BB1X2M U9 ( .A0N(N123), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[14]) );
  OAI2BB1X2M U10 ( .A0N(N121), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[12]) );
  OAI2BB1X2M U11 ( .A0N(N122), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[13]) );
  OAI2BB1X2M U12 ( .A0N(N118), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[9]) );
  OAI2BB1X2M U13 ( .A0N(N119), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[10]) );
  OAI2BB1X2M U14 ( .A0N(N120), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[11]) );
  INVX2M U15 ( .A(EN), .Y(n140) );
  OAI2BB1X2M U16 ( .A0N(n139), .A1N(n105), .B0(n101), .Y(n47) );
  OAI2BB1X2M U17 ( .A0N(n100), .A1N(n99), .B0(n101), .Y(n48) );
  AND2X2M U18 ( .A(n99), .B(n105), .Y(n42) );
  NAND2X2M U19 ( .A(EN), .B(n123), .Y(n32) );
  BUFX2M U20 ( .A(n41), .Y(n13) );
  NOR2X2M U21 ( .A(n107), .B(n136), .Y(n41) );
  INVX2M U22 ( .A(n100), .Y(n136) );
  INVX2M U23 ( .A(n107), .Y(n139) );
  NOR2BX2M U24 ( .AN(n106), .B(n136), .Y(n37) );
  NOR2BX2M U25 ( .AN(n35), .B(n140), .Y(n31) );
  AND2X2M U26 ( .A(n106), .B(n105), .Y(n50) );
  INVX2M U27 ( .A(n91), .Y(n137) );
  AOI31X2M U28 ( .A0(n93), .A1(n94), .A2(n95), .B0(n140), .Y(ALU_OUT_Comb[0])
         );
  AOI22X1M U29 ( .A0(N100), .A1(n50), .B0(N91), .B1(n37), .Y(n93) );
  AOI211X2M U30 ( .A0(n13), .A1(n134), .B0(n96), .C0(n97), .Y(n95) );
  AOI222X1M U31 ( .A0(N109), .A1(n35), .B0(n5), .B1(n42), .C0(N125), .C1(n49), 
        .Y(n94) );
  AOI31X2M U32 ( .A0(n81), .A1(n82), .A2(n83), .B0(n140), .Y(ALU_OUT_Comb[1])
         );
  AOI222X1M U33 ( .A0(N92), .A1(n37), .B0(N110), .B1(n35), .C0(N101), .C1(n50), 
        .Y(n81) );
  AOI211X2M U34 ( .A0(n7), .A1(n137), .B0(n84), .C0(n85), .Y(n83) );
  AOI222X1M U35 ( .A0(N126), .A1(n49), .B0(n13), .B1(n133), .C0(n6), .C1(n42), 
        .Y(n82) );
  AOI31X2M U36 ( .A0(n75), .A1(n76), .A2(n77), .B0(n140), .Y(ALU_OUT_Comb[2])
         );
  AOI22X1M U37 ( .A0(N102), .A1(n50), .B0(N93), .B1(n37), .Y(n75) );
  AOI221XLM U38 ( .A0(n8), .A1(n137), .B0(n13), .B1(n132), .C0(n78), .Y(n77)
         );
  AOI222X1M U39 ( .A0(N111), .A1(n35), .B0(n7), .B1(n42), .C0(N127), .C1(n49), 
        .Y(n76) );
  AOI31X2M U40 ( .A0(n69), .A1(n70), .A2(n71), .B0(n140), .Y(ALU_OUT_Comb[3])
         );
  AOI22X1M U41 ( .A0(N103), .A1(n50), .B0(N94), .B1(n37), .Y(n69) );
  AOI221XLM U42 ( .A0(n9), .A1(n137), .B0(n13), .B1(n131), .C0(n72), .Y(n71)
         );
  AOI222X1M U43 ( .A0(N112), .A1(n35), .B0(n8), .B1(n42), .C0(N128), .C1(n49), 
        .Y(n70) );
  AOI31X2M U44 ( .A0(n63), .A1(n64), .A2(n65), .B0(n140), .Y(ALU_OUT_Comb[4])
         );
  AOI22X1M U45 ( .A0(N104), .A1(n50), .B0(N95), .B1(n37), .Y(n63) );
  AOI221XLM U46 ( .A0(n137), .A1(n10), .B0(n13), .B1(n130), .C0(n66), .Y(n65)
         );
  AOI222X1M U47 ( .A0(N113), .A1(n35), .B0(n9), .B1(n42), .C0(N129), .C1(n49), 
        .Y(n64) );
  AOI31X2M U48 ( .A0(n51), .A1(n52), .A2(n53), .B0(n140), .Y(ALU_OUT_Comb[6])
         );
  AOI22X1M U49 ( .A0(N106), .A1(n50), .B0(N97), .B1(n37), .Y(n51) );
  AOI221XLM U50 ( .A0(n137), .A1(n12), .B0(n13), .B1(n128), .C0(n54), .Y(n53)
         );
  AOI222X1M U51 ( .A0(N115), .A1(n35), .B0(n42), .B1(n11), .C0(N131), .C1(n49), 
        .Y(n52) );
  AOI31X2M U52 ( .A0(n57), .A1(n58), .A2(n59), .B0(n140), .Y(ALU_OUT_Comb[5])
         );
  AOI22X1M U53 ( .A0(N105), .A1(n50), .B0(N96), .B1(n37), .Y(n57) );
  AOI221XLM U54 ( .A0(n137), .A1(n11), .B0(n13), .B1(n129), .C0(n60), .Y(n59)
         );
  AOI222X1M U55 ( .A0(N114), .A1(n35), .B0(n10), .B1(n42), .C0(N130), .C1(n49), 
        .Y(n58) );
  AOI31X2M U56 ( .A0(n38), .A1(n39), .A2(n40), .B0(n140), .Y(ALU_OUT_Comb[7])
         );
  AOI22X1M U57 ( .A0(N107), .A1(n50), .B0(N98), .B1(n37), .Y(n38) );
  AOI221XLM U58 ( .A0(n13), .A1(n127), .B0(n42), .B1(n12), .C0(n43), .Y(n40)
         );
  AOI22X1M U59 ( .A0(N132), .A1(n49), .B0(N116), .B1(n35), .Y(n39) );
  AOI21X2M U60 ( .A0(n33), .A1(n34), .B0(n140), .Y(ALU_OUT_Comb[8]) );
  AOI21X2M U61 ( .A0(N99), .A1(n37), .B0(n123), .Y(n33) );
  AOI2BB2XLM U62 ( .B0(N117), .B1(n35), .A0N(n127), .A1N(n36), .Y(n34) );
  OAI222X1M U63 ( .A0(n55), .A1(n122), .B0(n4), .B1(n56), .C0(n36), .C1(n129), 
        .Y(n54) );
  AOI221XLM U64 ( .A0(n11), .A1(n46), .B0(n47), .B1(n128), .C0(n13), .Y(n56)
         );
  AOI221XLM U65 ( .A0(n46), .A1(n128), .B0(n11), .B1(n48), .C0(n42), .Y(n55)
         );
  INVX2M U66 ( .A(n4), .Y(n122) );
  NOR2X2M U67 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n106) );
  AND3X2M U68 ( .A(n106), .B(n135), .C(n3), .Y(n46) );
  NAND2X2M U69 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n107) );
  INVX2M U70 ( .A(ALU_FUN[0]), .Y(n135) );
  NOR2X2M U71 ( .A(n135), .B(n3), .Y(n105) );
  NOR2X2M U72 ( .A(n3), .B(ALU_FUN[0]), .Y(n100) );
  INVX2M U73 ( .A(n92), .Y(n123) );
  AOI211X2M U74 ( .A0(N108), .A1(n50), .B0(n13), .C0(n47), .Y(n92) );
  INVX2M U75 ( .A(ALU_FUN[1]), .Y(n138) );
  NAND3X2M U76 ( .A(n106), .B(ALU_FUN[0]), .C(n3), .Y(n101) );
  AND2X2M U77 ( .A(ALU_FUN[2]), .B(n138), .Y(n99) );
  AND4X2M U78 ( .A(N159), .B(n99), .C(n3), .D(n135), .Y(n90) );
  NAND3X2M U79 ( .A(n139), .B(n135), .C(n3), .Y(n36) );
  NAND3X2M U80 ( .A(n3), .B(ALU_FUN[0]), .C(n99), .Y(n91) );
  INVX2M U81 ( .A(n6), .Y(n133) );
  INVX2M U82 ( .A(n5), .Y(n134) );
  INVX2M U83 ( .A(n11), .Y(n128) );
  INVX2M U84 ( .A(n12), .Y(n127) );
  INVX2M U85 ( .A(n8), .Y(n131) );
  INVX2M U86 ( .A(n7), .Y(n132) );
  INVX2M U87 ( .A(n10), .Y(n129) );
  INVX2M U88 ( .A(n9), .Y(n130) );
  BUFX2M U89 ( .A(A[7]), .Y(n12) );
  BUFX2M U90 ( .A(B[6]), .Y(n4) );
  BUFX2M U91 ( .A(A[5]), .Y(n10) );
  BUFX2M U92 ( .A(A[4]), .Y(n9) );
  BUFX2M U93 ( .A(A[3]), .Y(n8) );
  BUFX2M U94 ( .A(A[2]), .Y(n7) );
  BUFX2M U95 ( .A(A[1]), .Y(n6) );
  BUFX2M U96 ( .A(A[0]), .Y(n5) );
  INVX2M U97 ( .A(n25), .Y(n120) );
  OAI222X1M U98 ( .A0(n79), .A1(n119), .B0(B[2]), .B1(n80), .C0(n36), .C1(n133), .Y(n78) );
  AOI221XLM U99 ( .A0(n7), .A1(n46), .B0(n47), .B1(n132), .C0(n13), .Y(n80) );
  AOI221XLM U100 ( .A0(n46), .A1(n132), .B0(n7), .B1(n48), .C0(n42), .Y(n79)
         );
  OAI222X1M U101 ( .A0(n73), .A1(n121), .B0(B[3]), .B1(n74), .C0(n36), .C1(
        n132), .Y(n72) );
  AOI221XLM U102 ( .A0(n8), .A1(n46), .B0(n47), .B1(n131), .C0(n13), .Y(n74)
         );
  AOI221XLM U103 ( .A0(n46), .A1(n131), .B0(n8), .B1(n48), .C0(n42), .Y(n73)
         );
  OAI222X1M U104 ( .A0(n67), .A1(n126), .B0(B[4]), .B1(n68), .C0(n36), .C1(
        n131), .Y(n66) );
  INVX2M U105 ( .A(B[4]), .Y(n126) );
  AOI221XLM U106 ( .A0(n9), .A1(n46), .B0(n47), .B1(n130), .C0(n13), .Y(n68)
         );
  AOI221XLM U107 ( .A0(n46), .A1(n130), .B0(n9), .B1(n48), .C0(n42), .Y(n67)
         );
  OAI222X1M U108 ( .A0(n61), .A1(n125), .B0(B[5]), .B1(n62), .C0(n36), .C1(
        n130), .Y(n60) );
  INVX2M U109 ( .A(B[5]), .Y(n125) );
  AOI221XLM U110 ( .A0(n10), .A1(n46), .B0(n47), .B1(n129), .C0(n13), .Y(n62)
         );
  AOI221XLM U111 ( .A0(n46), .A1(n129), .B0(n10), .B1(n48), .C0(n42), .Y(n61)
         );
  OAI222X1M U112 ( .A0(n44), .A1(n124), .B0(B[7]), .B1(n45), .C0(n36), .C1(
        n128), .Y(n43) );
  INVX2M U113 ( .A(B[7]), .Y(n124) );
  AOI221XLM U114 ( .A0(n46), .A1(n12), .B0(n47), .B1(n127), .C0(n13), .Y(n45)
         );
  AOI221XLM U115 ( .A0(n46), .A1(n127), .B0(n12), .B1(n48), .C0(n42), .Y(n44)
         );
  INVX2M U116 ( .A(n14), .Y(n118) );
  OAI2B2X1M U117 ( .A1N(B[0]), .A0(n98), .B0(n91), .B1(n133), .Y(n97) );
  AOI221XLM U118 ( .A0(n46), .A1(n134), .B0(n5), .B1(n48), .C0(n42), .Y(n98)
         );
  OAI2B2X1M U119 ( .A1N(B[1]), .A0(n86), .B0(n36), .B1(n134), .Y(n85) );
  AOI221XLM U120 ( .A0(n46), .A1(n133), .B0(n6), .B1(n48), .C0(n42), .Y(n86)
         );
  OAI21X2M U121 ( .A0(B[0]), .A1(n102), .B0(n103), .Y(n96) );
  AOI221XLM U122 ( .A0(n5), .A1(n46), .B0(n47), .B1(n134), .C0(n13), .Y(n102)
         );
  AOI31X2M U123 ( .A0(N157), .A1(n3), .A2(n104), .B0(n90), .Y(n103) );
  NOR3X2M U124 ( .A(n138), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n104) );
  OAI21X2M U125 ( .A0(B[1]), .A1(n87), .B0(n88), .Y(n84) );
  AOI221XLM U126 ( .A0(n6), .A1(n46), .B0(n47), .B1(n133), .C0(n13), .Y(n87)
         );
  AOI31X2M U127 ( .A0(N158), .A1(n3), .A2(n89), .B0(n90), .Y(n88) );
  NOR3X2M U128 ( .A(n135), .B(ALU_FUN[2]), .C(n138), .Y(n89) );
  BUFX2M U129 ( .A(ALU_FUN[3]), .Y(n3) );
  INVX2M U130 ( .A(B[0]), .Y(n117) );
  INVX2M U131 ( .A(B[2]), .Y(n119) );
  INVX2M U132 ( .A(B[3]), .Y(n121) );
  NOR2X1M U133 ( .A(n127), .B(B[7]), .Y(n113) );
  NAND2BX1M U134 ( .AN(B[4]), .B(n9), .Y(n29) );
  NAND2BX1M U135 ( .AN(n9), .B(B[4]), .Y(n18) );
  CLKNAND2X2M U136 ( .A(n29), .B(n18), .Y(n108) );
  NOR2X1M U137 ( .A(n121), .B(n8), .Y(n26) );
  NOR2X1M U138 ( .A(n119), .B(n7), .Y(n17) );
  NOR2X1M U139 ( .A(n117), .B(n5), .Y(n14) );
  CLKNAND2X2M U140 ( .A(n7), .B(n119), .Y(n28) );
  NAND2BX1M U141 ( .AN(n17), .B(n28), .Y(n23) );
  AOI21X1M U142 ( .A0(n14), .A1(n133), .B0(B[1]), .Y(n15) );
  AOI211X1M U143 ( .A0(n6), .A1(n118), .B0(n23), .C0(n15), .Y(n16) );
  CLKNAND2X2M U144 ( .A(n8), .B(n121), .Y(n27) );
  OAI31X1M U145 ( .A0(n26), .A1(n17), .A2(n16), .B0(n27), .Y(n19) );
  NAND2BX1M U146 ( .AN(n10), .B(B[5]), .Y(n111) );
  OAI211X1M U147 ( .A0(n108), .A1(n19), .B0(n18), .C0(n111), .Y(n20) );
  NAND2BX1M U148 ( .AN(B[5]), .B(n10), .Y(n30) );
  XNOR2X1M U149 ( .A(n11), .B(n4), .Y(n110) );
  AOI32X1M U150 ( .A0(n20), .A1(n30), .A2(n110), .B0(n4), .B1(n128), .Y(n21)
         );
  CLKNAND2X2M U151 ( .A(B[7]), .B(n127), .Y(n114) );
  OAI21X1M U152 ( .A0(n113), .A1(n21), .B0(n114), .Y(N159) );
  CLKNAND2X2M U153 ( .A(n5), .B(n117), .Y(n24) );
  OA21X1M U154 ( .A0(n24), .A1(n133), .B0(B[1]), .Y(n22) );
  AOI211X1M U155 ( .A0(n24), .A1(n133), .B0(n23), .C0(n22), .Y(n25) );
  AOI31X1M U156 ( .A0(n120), .A1(n28), .A2(n27), .B0(n26), .Y(n109) );
  OAI2B11X1M U157 ( .A1N(n109), .A0(n108), .B0(n30), .C0(n29), .Y(n112) );
  AOI32X1M U158 ( .A0(n112), .A1(n111), .A2(n110), .B0(n11), .B1(n122), .Y(
        n115) );
  AOI2B1X1M U159 ( .A1N(n115), .A0(n114), .B0(n113), .Y(n116) );
  CLKINVX1M U160 ( .A(n116), .Y(N158) );
  NOR2X1M U161 ( .A(N159), .B(N158), .Y(N157) );
endmodule


module RegFile ( CLK, RST, WrEn, RdEn, Address, WrData, RdData, RdData_VLD, 
        REG0, REG1, REG2, REG3 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn;
  output RdData_VLD;
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
         \regArr[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];

  DFFSQX2M \regArr_reg[3][5]  ( .D(n78), .CK(CLK), .SN(n205), .Q(REG3[5]) );
  DFFRQX2M \regArr_reg[13][7]  ( .D(n160), .CK(CLK), .RN(n213), .Q(
        \regArr[13][7] ) );
  DFFRQX2M \regArr_reg[13][6]  ( .D(n159), .CK(CLK), .RN(n213), .Q(
        \regArr[13][6] ) );
  DFFRQX2M \regArr_reg[13][5]  ( .D(n158), .CK(CLK), .RN(n212), .Q(
        \regArr[13][5] ) );
  DFFRQX2M \regArr_reg[13][4]  ( .D(n157), .CK(CLK), .RN(n212), .Q(
        \regArr[13][4] ) );
  DFFRQX2M \regArr_reg[13][3]  ( .D(n156), .CK(CLK), .RN(n212), .Q(
        \regArr[13][3] ) );
  DFFRQX2M \regArr_reg[13][2]  ( .D(n155), .CK(CLK), .RN(n212), .Q(
        \regArr[13][2] ) );
  DFFRQX2M \regArr_reg[13][1]  ( .D(n154), .CK(CLK), .RN(n212), .Q(
        \regArr[13][1] ) );
  DFFRQX2M \regArr_reg[13][0]  ( .D(n153), .CK(CLK), .RN(n212), .Q(
        \regArr[13][0] ) );
  DFFRQX2M \regArr_reg[9][7]  ( .D(n128), .CK(CLK), .RN(n210), .Q(
        \regArr[9][7] ) );
  DFFRQX2M \regArr_reg[9][6]  ( .D(n127), .CK(CLK), .RN(n210), .Q(
        \regArr[9][6] ) );
  DFFRQX2M \regArr_reg[9][5]  ( .D(n126), .CK(CLK), .RN(n210), .Q(
        \regArr[9][5] ) );
  DFFRQX2M \regArr_reg[9][4]  ( .D(n125), .CK(CLK), .RN(n210), .Q(
        \regArr[9][4] ) );
  DFFRQX2M \regArr_reg[9][3]  ( .D(n124), .CK(CLK), .RN(n210), .Q(
        \regArr[9][3] ) );
  DFFRQX2M \regArr_reg[9][2]  ( .D(n123), .CK(CLK), .RN(n210), .Q(
        \regArr[9][2] ) );
  DFFRQX2M \regArr_reg[9][1]  ( .D(n122), .CK(CLK), .RN(n210), .Q(
        \regArr[9][1] ) );
  DFFRQX2M \regArr_reg[9][0]  ( .D(n121), .CK(CLK), .RN(n210), .Q(
        \regArr[9][0] ) );
  DFFRQX2M \regArr_reg[5][7]  ( .D(n96), .CK(CLK), .RN(n208), .Q(
        \regArr[5][7] ) );
  DFFRQX2M \regArr_reg[5][6]  ( .D(n95), .CK(CLK), .RN(n208), .Q(
        \regArr[5][6] ) );
  DFFRQX2M \regArr_reg[5][5]  ( .D(n94), .CK(CLK), .RN(n208), .Q(
        \regArr[5][5] ) );
  DFFRQX2M \regArr_reg[5][4]  ( .D(n93), .CK(CLK), .RN(n208), .Q(
        \regArr[5][4] ) );
  DFFRQX2M \regArr_reg[5][3]  ( .D(n92), .CK(CLK), .RN(n208), .Q(
        \regArr[5][3] ) );
  DFFRQX2M \regArr_reg[5][2]  ( .D(n91), .CK(CLK), .RN(n208), .Q(
        \regArr[5][2] ) );
  DFFRQX2M \regArr_reg[5][1]  ( .D(n90), .CK(CLK), .RN(n208), .Q(
        \regArr[5][1] ) );
  DFFRQX2M \regArr_reg[5][0]  ( .D(n89), .CK(CLK), .RN(n208), .Q(
        \regArr[5][0] ) );
  DFFRQX2M \regArr_reg[15][7]  ( .D(n176), .CK(CLK), .RN(n205), .Q(
        \regArr[15][7] ) );
  DFFRQX2M \regArr_reg[15][6]  ( .D(n175), .CK(CLK), .RN(n214), .Q(
        \regArr[15][6] ) );
  DFFRQX2M \regArr_reg[15][5]  ( .D(n174), .CK(CLK), .RN(n214), .Q(
        \regArr[15][5] ) );
  DFFRQX2M \regArr_reg[15][4]  ( .D(n173), .CK(CLK), .RN(n213), .Q(
        \regArr[15][4] ) );
  DFFRQX2M \regArr_reg[15][3]  ( .D(n172), .CK(CLK), .RN(n213), .Q(
        \regArr[15][3] ) );
  DFFRQX2M \regArr_reg[15][2]  ( .D(n171), .CK(CLK), .RN(n213), .Q(
        \regArr[15][2] ) );
  DFFRQX2M \regArr_reg[15][1]  ( .D(n170), .CK(CLK), .RN(n213), .Q(
        \regArr[15][1] ) );
  DFFRQX2M \regArr_reg[15][0]  ( .D(n169), .CK(CLK), .RN(n213), .Q(
        \regArr[15][0] ) );
  DFFRQX2M \regArr_reg[11][7]  ( .D(n144), .CK(CLK), .RN(n212), .Q(
        \regArr[11][7] ) );
  DFFRQX2M \regArr_reg[11][6]  ( .D(n143), .CK(CLK), .RN(n211), .Q(
        \regArr[11][6] ) );
  DFFRQX2M \regArr_reg[11][5]  ( .D(n142), .CK(CLK), .RN(n211), .Q(
        \regArr[11][5] ) );
  DFFRQX2M \regArr_reg[11][4]  ( .D(n141), .CK(CLK), .RN(n211), .Q(
        \regArr[11][4] ) );
  DFFRQX2M \regArr_reg[11][3]  ( .D(n140), .CK(CLK), .RN(n211), .Q(
        \regArr[11][3] ) );
  DFFRQX2M \regArr_reg[11][2]  ( .D(n139), .CK(CLK), .RN(n211), .Q(
        \regArr[11][2] ) );
  DFFRQX2M \regArr_reg[11][1]  ( .D(n138), .CK(CLK), .RN(n211), .Q(
        \regArr[11][1] ) );
  DFFRQX2M \regArr_reg[11][0]  ( .D(n137), .CK(CLK), .RN(n211), .Q(
        \regArr[11][0] ) );
  DFFRQX2M \regArr_reg[7][7]  ( .D(n112), .CK(CLK), .RN(n209), .Q(
        \regArr[7][7] ) );
  DFFRQX2M \regArr_reg[7][6]  ( .D(n111), .CK(CLK), .RN(n209), .Q(
        \regArr[7][6] ) );
  DFFRQX2M \regArr_reg[7][5]  ( .D(n110), .CK(CLK), .RN(n209), .Q(
        \regArr[7][5] ) );
  DFFRQX2M \regArr_reg[7][4]  ( .D(n109), .CK(CLK), .RN(n209), .Q(
        \regArr[7][4] ) );
  DFFRQX2M \regArr_reg[7][3]  ( .D(n108), .CK(CLK), .RN(n209), .Q(
        \regArr[7][3] ) );
  DFFRQX2M \regArr_reg[7][2]  ( .D(n107), .CK(CLK), .RN(n209), .Q(
        \regArr[7][2] ) );
  DFFRQX2M \regArr_reg[7][1]  ( .D(n106), .CK(CLK), .RN(n209), .Q(
        \regArr[7][1] ) );
  DFFRQX2M \regArr_reg[7][0]  ( .D(n105), .CK(CLK), .RN(n209), .Q(
        \regArr[7][0] ) );
  DFFRQX2M \regArr_reg[14][7]  ( .D(n168), .CK(CLK), .RN(n213), .Q(
        \regArr[14][7] ) );
  DFFRQX2M \regArr_reg[14][6]  ( .D(n167), .CK(CLK), .RN(n213), .Q(
        \regArr[14][6] ) );
  DFFRQX2M \regArr_reg[14][5]  ( .D(n166), .CK(CLK), .RN(n213), .Q(
        \regArr[14][5] ) );
  DFFRQX2M \regArr_reg[14][4]  ( .D(n165), .CK(CLK), .RN(n213), .Q(
        \regArr[14][4] ) );
  DFFRQX2M \regArr_reg[14][3]  ( .D(n164), .CK(CLK), .RN(n213), .Q(
        \regArr[14][3] ) );
  DFFRQX2M \regArr_reg[14][2]  ( .D(n163), .CK(CLK), .RN(n213), .Q(
        \regArr[14][2] ) );
  DFFRQX2M \regArr_reg[14][1]  ( .D(n162), .CK(CLK), .RN(n213), .Q(
        \regArr[14][1] ) );
  DFFRQX2M \regArr_reg[14][0]  ( .D(n161), .CK(CLK), .RN(n213), .Q(
        \regArr[14][0] ) );
  DFFRQX2M \regArr_reg[10][7]  ( .D(n136), .CK(CLK), .RN(n211), .Q(
        \regArr[10][7] ) );
  DFFRQX2M \regArr_reg[10][6]  ( .D(n135), .CK(CLK), .RN(n211), .Q(
        \regArr[10][6] ) );
  DFFRQX2M \regArr_reg[10][5]  ( .D(n134), .CK(CLK), .RN(n211), .Q(
        \regArr[10][5] ) );
  DFFRQX2M \regArr_reg[10][4]  ( .D(n133), .CK(CLK), .RN(n211), .Q(
        \regArr[10][4] ) );
  DFFRQX2M \regArr_reg[10][3]  ( .D(n132), .CK(CLK), .RN(n211), .Q(
        \regArr[10][3] ) );
  DFFRQX2M \regArr_reg[10][2]  ( .D(n131), .CK(CLK), .RN(n211), .Q(
        \regArr[10][2] ) );
  DFFRQX2M \regArr_reg[10][1]  ( .D(n130), .CK(CLK), .RN(n211), .Q(
        \regArr[10][1] ) );
  DFFRQX2M \regArr_reg[10][0]  ( .D(n129), .CK(CLK), .RN(n211), .Q(
        \regArr[10][0] ) );
  DFFRQX2M \regArr_reg[6][7]  ( .D(n104), .CK(CLK), .RN(n209), .Q(
        \regArr[6][7] ) );
  DFFRQX2M \regArr_reg[6][6]  ( .D(n103), .CK(CLK), .RN(n209), .Q(
        \regArr[6][6] ) );
  DFFRQX2M \regArr_reg[6][5]  ( .D(n102), .CK(CLK), .RN(n209), .Q(
        \regArr[6][5] ) );
  DFFRQX2M \regArr_reg[6][4]  ( .D(n101), .CK(CLK), .RN(n209), .Q(
        \regArr[6][4] ) );
  DFFRQX2M \regArr_reg[6][3]  ( .D(n100), .CK(CLK), .RN(n209), .Q(
        \regArr[6][3] ) );
  DFFRQX2M \regArr_reg[6][2]  ( .D(n99), .CK(CLK), .RN(n208), .Q(
        \regArr[6][2] ) );
  DFFRQX2M \regArr_reg[6][1]  ( .D(n98), .CK(CLK), .RN(n208), .Q(
        \regArr[6][1] ) );
  DFFRQX2M \regArr_reg[6][0]  ( .D(n97), .CK(CLK), .RN(n208), .Q(
        \regArr[6][0] ) );
  DFFRQX2M \regArr_reg[12][7]  ( .D(n152), .CK(CLK), .RN(n212), .Q(
        \regArr[12][7] ) );
  DFFRQX2M \regArr_reg[12][6]  ( .D(n151), .CK(CLK), .RN(n212), .Q(
        \regArr[12][6] ) );
  DFFRQX2M \regArr_reg[12][5]  ( .D(n150), .CK(CLK), .RN(n212), .Q(
        \regArr[12][5] ) );
  DFFRQX2M \regArr_reg[12][4]  ( .D(n149), .CK(CLK), .RN(n212), .Q(
        \regArr[12][4] ) );
  DFFRQX2M \regArr_reg[12][3]  ( .D(n148), .CK(CLK), .RN(n212), .Q(
        \regArr[12][3] ) );
  DFFRQX2M \regArr_reg[12][2]  ( .D(n147), .CK(CLK), .RN(n212), .Q(
        \regArr[12][2] ) );
  DFFRQX2M \regArr_reg[12][1]  ( .D(n146), .CK(CLK), .RN(n212), .Q(
        \regArr[12][1] ) );
  DFFRQX2M \regArr_reg[12][0]  ( .D(n145), .CK(CLK), .RN(n212), .Q(
        \regArr[12][0] ) );
  DFFRQX2M \regArr_reg[8][7]  ( .D(n120), .CK(CLK), .RN(n210), .Q(
        \regArr[8][7] ) );
  DFFRQX2M \regArr_reg[8][6]  ( .D(n119), .CK(CLK), .RN(n210), .Q(
        \regArr[8][6] ) );
  DFFRQX2M \regArr_reg[8][5]  ( .D(n118), .CK(CLK), .RN(n210), .Q(
        \regArr[8][5] ) );
  DFFRQX2M \regArr_reg[8][4]  ( .D(n117), .CK(CLK), .RN(n210), .Q(
        \regArr[8][4] ) );
  DFFRQX2M \regArr_reg[8][3]  ( .D(n116), .CK(CLK), .RN(n210), .Q(
        \regArr[8][3] ) );
  DFFRQX2M \regArr_reg[8][2]  ( .D(n115), .CK(CLK), .RN(n210), .Q(
        \regArr[8][2] ) );
  DFFRQX2M \regArr_reg[8][1]  ( .D(n114), .CK(CLK), .RN(n210), .Q(
        \regArr[8][1] ) );
  DFFRQX2M \regArr_reg[8][0]  ( .D(n113), .CK(CLK), .RN(n209), .Q(
        \regArr[8][0] ) );
  DFFRQX2M \regArr_reg[4][7]  ( .D(n88), .CK(CLK), .RN(n208), .Q(
        \regArr[4][7] ) );
  DFFRQX2M \regArr_reg[4][6]  ( .D(n87), .CK(CLK), .RN(n208), .Q(
        \regArr[4][6] ) );
  DFFRQX2M \regArr_reg[4][5]  ( .D(n86), .CK(CLK), .RN(n208), .Q(
        \regArr[4][5] ) );
  DFFRQX2M \regArr_reg[4][4]  ( .D(n85), .CK(CLK), .RN(n208), .Q(
        \regArr[4][4] ) );
  DFFRQX2M \regArr_reg[4][3]  ( .D(n84), .CK(CLK), .RN(n207), .Q(
        \regArr[4][3] ) );
  DFFRQX2M \regArr_reg[4][2]  ( .D(n83), .CK(CLK), .RN(n207), .Q(
        \regArr[4][2] ) );
  DFFRQX2M \regArr_reg[4][1]  ( .D(n82), .CK(CLK), .RN(n207), .Q(
        \regArr[4][1] ) );
  DFFRQX2M \regArr_reg[4][0]  ( .D(n81), .CK(CLK), .RN(n207), .Q(
        \regArr[4][0] ) );
  DFFRQX2M \RdData_reg[7]  ( .D(n47), .CK(CLK), .RN(n205), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n46), .CK(CLK), .RN(n205), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n45), .CK(CLK), .RN(n205), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n44), .CK(CLK), .RN(n205), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n43), .CK(CLK), .RN(n205), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n42), .CK(CLK), .RN(n205), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n41), .CK(CLK), .RN(n205), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n40), .CK(CLK), .RN(n209), .Q(RdData[0]) );
  DFFRQX2M \regArr_reg[3][2]  ( .D(n75), .CK(CLK), .RN(n207), .Q(REG3[2]) );
  DFFRQX2M \regArr_reg[3][3]  ( .D(n76), .CK(CLK), .RN(n207), .Q(REG3[3]) );
  DFFRQX2M \regArr_reg[3][4]  ( .D(n77), .CK(CLK), .RN(n207), .Q(REG3[4]) );
  DFFRQX2M \regArr_reg[3][7]  ( .D(n80), .CK(CLK), .RN(n207), .Q(REG3[7]) );
  DFFRQX2M \regArr_reg[3][6]  ( .D(n79), .CK(CLK), .RN(n207), .Q(REG3[6]) );
  DFFRQX2M \regArr_reg[2][1]  ( .D(n66), .CK(CLK), .RN(n206), .Q(REG2[1]) );
  DFFRQX2M RdData_VLD_reg ( .D(n48), .CK(CLK), .RN(n205), .Q(RdData_VLD) );
  DFFRQX2M \regArr_reg[3][1]  ( .D(n74), .CK(CLK), .RN(n207), .Q(REG3[1]) );
  DFFRQX2M \regArr_reg[3][0]  ( .D(n73), .CK(CLK), .RN(n207), .Q(REG3[0]) );
  DFFSQX2M \regArr_reg[2][0]  ( .D(n65), .CK(CLK), .SN(n205), .Q(REG2[0]) );
  DFFRQX2M \regArr_reg[2][4]  ( .D(n69), .CK(CLK), .RN(n207), .Q(REG2[4]) );
  DFFSQX2M \regArr_reg[2][7]  ( .D(n72), .CK(CLK), .SN(n205), .Q(REG2[7]) );
  DFFRQX2M \regArr_reg[2][6]  ( .D(n71), .CK(CLK), .RN(n207), .Q(REG2[6]) );
  DFFRQX2M \regArr_reg[2][3]  ( .D(n68), .CK(CLK), .RN(n206), .Q(REG2[3]) );
  DFFRQX2M \regArr_reg[2][5]  ( .D(n70), .CK(CLK), .RN(n207), .Q(REG2[5]) );
  DFFRQX2M \regArr_reg[2][2]  ( .D(n67), .CK(CLK), .RN(n207), .Q(REG2[2]) );
  DFFRQX2M \regArr_reg[0][1]  ( .D(n50), .CK(CLK), .RN(n205), .Q(REG0[1]) );
  DFFRQX2M \regArr_reg[0][0]  ( .D(n49), .CK(CLK), .RN(n205), .Q(REG0[0]) );
  DFFRQX2M \regArr_reg[0][2]  ( .D(n51), .CK(CLK), .RN(n205), .Q(REG0[2]) );
  DFFRQX2M \regArr_reg[0][3]  ( .D(n52), .CK(CLK), .RN(n206), .Q(REG0[3]) );
  DFFRQX2M \regArr_reg[0][4]  ( .D(n53), .CK(CLK), .RN(n206), .Q(REG0[4]) );
  DFFRQX2M \regArr_reg[0][5]  ( .D(n54), .CK(CLK), .RN(n206), .Q(REG0[5]) );
  DFFRQX2M \regArr_reg[0][6]  ( .D(n55), .CK(CLK), .RN(n206), .Q(REG0[6]) );
  DFFRQX2M \regArr_reg[1][6]  ( .D(n63), .CK(CLK), .RN(n206), .Q(REG1[6]) );
  DFFRQX2M \regArr_reg[0][7]  ( .D(n56), .CK(CLK), .RN(n206), .Q(REG0[7]) );
  DFFRQX2M \regArr_reg[1][1]  ( .D(n58), .CK(CLK), .RN(n206), .Q(REG1[1]) );
  DFFRQX2M \regArr_reg[1][5]  ( .D(n62), .CK(CLK), .RN(n206), .Q(REG1[5]) );
  DFFRQX2M \regArr_reg[1][4]  ( .D(n61), .CK(CLK), .RN(n206), .Q(REG1[4]) );
  DFFRQX2M \regArr_reg[1][7]  ( .D(n64), .CK(CLK), .RN(n206), .Q(REG1[7]) );
  DFFRQX2M \regArr_reg[1][3]  ( .D(n60), .CK(CLK), .RN(n206), .Q(REG1[3]) );
  DFFRQX2M \regArr_reg[1][2]  ( .D(n59), .CK(CLK), .RN(n206), .Q(REG1[2]) );
  DFFRQX2M \regArr_reg[1][0]  ( .D(n57), .CK(CLK), .RN(n206), .Q(REG1[0]) );
  NOR2BX2M U3 ( .AN(n38), .B(n203), .Y(n32) );
  NOR2BX2M U4 ( .AN(n27), .B(n203), .Y(n18) );
  NOR2BX2M U5 ( .AN(N13), .B(n199), .Y(n23) );
  NOR2BX2M U6 ( .AN(N13), .B(n204), .Y(n26) );
  NOR2X2M U7 ( .A(n204), .B(N13), .Y(n20) );
  NOR2X2M U8 ( .A(n199), .B(N13), .Y(n15) );
  INVX2M U9 ( .A(WrData[5]), .Y(n222) );
  INVX2M U10 ( .A(WrData[6]), .Y(n221) );
  INVX2M U11 ( .A(n200), .Y(n201) );
  INVX2M U12 ( .A(n198), .Y(n199) );
  INVX2M U13 ( .A(n200), .Y(n202) );
  BUFX2M U14 ( .A(n203), .Y(n200) );
  INVX2M U15 ( .A(n12), .Y(n228) );
  BUFX2M U16 ( .A(n204), .Y(n198) );
  NOR2BX2M U17 ( .AN(n27), .B(N11), .Y(n16) );
  NOR2BX2M U18 ( .AN(n38), .B(N11), .Y(n30) );
  NAND2X2M U19 ( .A(n18), .B(n15), .Y(n17) );
  NAND2X2M U20 ( .A(n30), .B(n15), .Y(n29) );
  NAND2X2M U21 ( .A(n32), .B(n15), .Y(n31) );
  NAND2X2M U22 ( .A(n30), .B(n20), .Y(n33) );
  NAND2X2M U23 ( .A(n32), .B(n20), .Y(n34) );
  NAND2X2M U24 ( .A(n20), .B(n16), .Y(n19) );
  NAND2X2M U25 ( .A(n20), .B(n18), .Y(n21) );
  NAND2X2M U26 ( .A(n23), .B(n16), .Y(n22) );
  NAND2X2M U27 ( .A(n23), .B(n18), .Y(n24) );
  NAND2X2M U28 ( .A(n26), .B(n16), .Y(n25) );
  NAND2X2M U29 ( .A(n26), .B(n18), .Y(n28) );
  NAND2X2M U30 ( .A(n30), .B(n23), .Y(n35) );
  NAND2X2M U31 ( .A(n32), .B(n23), .Y(n36) );
  NAND2X2M U32 ( .A(n30), .B(n26), .Y(n37) );
  NAND2X2M U33 ( .A(n32), .B(n26), .Y(n39) );
  NAND2X2M U34 ( .A(n15), .B(n16), .Y(n14) );
  NAND2BX2M U35 ( .AN(WrEn), .B(RdEn), .Y(n12) );
  NOR2BX2M U36 ( .AN(WrEn), .B(RdEn), .Y(n13) );
  BUFX2M U37 ( .A(n219), .Y(n205) );
  BUFX2M U38 ( .A(n219), .Y(n206) );
  BUFX2M U39 ( .A(n218), .Y(n207) );
  BUFX2M U40 ( .A(n218), .Y(n208) );
  BUFX2M U41 ( .A(n217), .Y(n209) );
  BUFX2M U42 ( .A(n217), .Y(n210) );
  BUFX2M U43 ( .A(n216), .Y(n211) );
  BUFX2M U44 ( .A(n216), .Y(n212) );
  BUFX2M U45 ( .A(n215), .Y(n213) );
  BUFX2M U46 ( .A(n215), .Y(n214) );
  INVX2M U47 ( .A(WrData[0]), .Y(n227) );
  INVX2M U48 ( .A(WrData[1]), .Y(n226) );
  INVX2M U49 ( .A(WrData[2]), .Y(n225) );
  INVX2M U50 ( .A(WrData[3]), .Y(n224) );
  INVX2M U51 ( .A(WrData[4]), .Y(n223) );
  INVX2M U52 ( .A(WrData[7]), .Y(n220) );
  NOR2BX2M U53 ( .AN(n13), .B(N14), .Y(n27) );
  AND2X2M U54 ( .A(N14), .B(n13), .Y(n38) );
  BUFX2M U55 ( .A(RST), .Y(n218) );
  BUFX2M U56 ( .A(RST), .Y(n217) );
  BUFX2M U57 ( .A(RST), .Y(n216) );
  BUFX2M U58 ( .A(RST), .Y(n215) );
  BUFX2M U59 ( .A(RST), .Y(n219) );
  MX4X1M U60 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n201), 
        .S1(n199), .Y(n8) );
  MX4X1M U61 ( .A(\regArr[4][0] ), .B(\regArr[5][0] ), .C(\regArr[6][0] ), .D(
        \regArr[7][0] ), .S0(N11), .S1(n199), .Y(n3) );
  MX4X1M U62 ( .A(\regArr[4][1] ), .B(\regArr[5][1] ), .C(\regArr[6][1] ), .D(
        \regArr[7][1] ), .S0(n201), .S1(n199), .Y(n7) );
  MX4X1M U63 ( .A(\regArr[4][2] ), .B(\regArr[5][2] ), .C(\regArr[6][2] ), .D(
        \regArr[7][2] ), .S0(n201), .S1(N12), .Y(n11) );
  MX4X1M U64 ( .A(\regArr[4][3] ), .B(\regArr[5][3] ), .C(\regArr[6][3] ), .D(
        \regArr[7][3] ), .S0(n201), .S1(N12), .Y(n180) );
  MX4X1M U65 ( .A(\regArr[4][4] ), .B(\regArr[5][4] ), .C(\regArr[6][4] ), .D(
        \regArr[7][4] ), .S0(n201), .S1(N12), .Y(n184) );
  MX4X1M U66 ( .A(\regArr[4][5] ), .B(\regArr[5][5] ), .C(\regArr[6][5] ), .D(
        \regArr[7][5] ), .S0(n202), .S1(N12), .Y(n188) );
  MX4X1M U67 ( .A(\regArr[4][6] ), .B(\regArr[5][6] ), .C(\regArr[6][6] ), .D(
        \regArr[7][6] ), .S0(n202), .S1(N12), .Y(n192) );
  MX4X1M U68 ( .A(\regArr[4][7] ), .B(\regArr[5][7] ), .C(\regArr[6][7] ), .D(
        \regArr[7][7] ), .S0(n202), .S1(N12), .Y(n196) );
  MX4X1M U69 ( .A(\regArr[12][0] ), .B(\regArr[13][0] ), .C(\regArr[14][0] ), 
        .D(\regArr[15][0] ), .S0(n202), .S1(n199), .Y(n1) );
  MX4X1M U70 ( .A(\regArr[12][2] ), .B(\regArr[13][2] ), .C(\regArr[14][2] ), 
        .D(\regArr[15][2] ), .S0(n201), .S1(n199), .Y(n9) );
  MX4X1M U71 ( .A(\regArr[12][3] ), .B(\regArr[13][3] ), .C(\regArr[14][3] ), 
        .D(\regArr[15][3] ), .S0(n201), .S1(n199), .Y(n178) );
  MX4X1M U72 ( .A(\regArr[12][4] ), .B(\regArr[13][4] ), .C(\regArr[14][4] ), 
        .D(\regArr[15][4] ), .S0(n201), .S1(N12), .Y(n182) );
  MX4X1M U73 ( .A(\regArr[12][5] ), .B(\regArr[13][5] ), .C(\regArr[14][5] ), 
        .D(\regArr[15][5] ), .S0(n202), .S1(n199), .Y(n186) );
  MX4X1M U74 ( .A(\regArr[12][6] ), .B(\regArr[13][6] ), .C(\regArr[14][6] ), 
        .D(\regArr[15][6] ), .S0(n202), .S1(n199), .Y(n190) );
  MX4X1M U75 ( .A(\regArr[12][7] ), .B(\regArr[13][7] ), .C(\regArr[14][7] ), 
        .D(\regArr[15][7] ), .S0(n202), .S1(n199), .Y(n194) );
  AO22X1M U76 ( .A0(N43), .A1(n228), .B0(RdData[0]), .B1(n12), .Y(n40) );
  MX4X1M U77 ( .A(n4), .B(n2), .C(n3), .D(n1), .S0(N14), .S1(N13), .Y(N43) );
  MX4X1M U78 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N11), 
        .S1(n199), .Y(n4) );
  MX4X1M U79 ( .A(\regArr[8][0] ), .B(\regArr[9][0] ), .C(\regArr[10][0] ), 
        .D(\regArr[11][0] ), .S0(N11), .S1(n199), .Y(n2) );
  AO22X1M U80 ( .A0(N42), .A1(n228), .B0(RdData[1]), .B1(n12), .Y(n41) );
  MX4X1M U81 ( .A(n8), .B(n6), .C(n7), .D(n5), .S0(N14), .S1(N13), .Y(N42) );
  MX4X1M U82 ( .A(\regArr[8][1] ), .B(\regArr[9][1] ), .C(\regArr[10][1] ), 
        .D(\regArr[11][1] ), .S0(N11), .S1(n199), .Y(n6) );
  MX4X1M U83 ( .A(\regArr[12][1] ), .B(\regArr[13][1] ), .C(\regArr[14][1] ), 
        .D(\regArr[15][1] ), .S0(n201), .S1(n199), .Y(n5) );
  AO22X1M U84 ( .A0(N41), .A1(n228), .B0(RdData[2]), .B1(n12), .Y(n42) );
  MX4X1M U85 ( .A(n177), .B(n10), .C(n11), .D(n9), .S0(N14), .S1(N13), .Y(N41)
         );
  MX4X1M U86 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n201), 
        .S1(N12), .Y(n177) );
  MX4X1M U87 ( .A(\regArr[8][2] ), .B(\regArr[9][2] ), .C(\regArr[10][2] ), 
        .D(\regArr[11][2] ), .S0(n201), .S1(N12), .Y(n10) );
  AO22X1M U88 ( .A0(N40), .A1(n228), .B0(RdData[3]), .B1(n12), .Y(n43) );
  MX4X1M U89 ( .A(n181), .B(n179), .C(n180), .D(n178), .S0(N14), .S1(N13), .Y(
        N40) );
  MX4X1M U90 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n201), 
        .S1(N12), .Y(n181) );
  MX4X1M U91 ( .A(\regArr[8][3] ), .B(\regArr[9][3] ), .C(\regArr[10][3] ), 
        .D(\regArr[11][3] ), .S0(n201), .S1(N12), .Y(n179) );
  AO22X1M U92 ( .A0(N39), .A1(n228), .B0(RdData[4]), .B1(n12), .Y(n44) );
  MX4X1M U93 ( .A(n185), .B(n183), .C(n184), .D(n182), .S0(N14), .S1(N13), .Y(
        N39) );
  MX4X1M U94 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n202), 
        .S1(N12), .Y(n185) );
  MX4X1M U95 ( .A(\regArr[8][4] ), .B(\regArr[9][4] ), .C(\regArr[10][4] ), 
        .D(\regArr[11][4] ), .S0(n201), .S1(N12), .Y(n183) );
  AO22X1M U96 ( .A0(N38), .A1(n228), .B0(RdData[5]), .B1(n12), .Y(n45) );
  MX4X1M U97 ( .A(n189), .B(n187), .C(n188), .D(n186), .S0(N14), .S1(N13), .Y(
        N38) );
  MX4X1M U98 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n202), 
        .S1(N12), .Y(n189) );
  MX4X1M U99 ( .A(\regArr[8][5] ), .B(\regArr[9][5] ), .C(\regArr[10][5] ), 
        .D(\regArr[11][5] ), .S0(n202), .S1(N12), .Y(n187) );
  AO22X1M U100 ( .A0(N37), .A1(n228), .B0(RdData[6]), .B1(n12), .Y(n46) );
  MX4X1M U101 ( .A(n193), .B(n191), .C(n192), .D(n190), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U102 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n202), 
        .S1(N12), .Y(n193) );
  MX4X1M U103 ( .A(\regArr[8][6] ), .B(\regArr[9][6] ), .C(\regArr[10][6] ), 
        .D(\regArr[11][6] ), .S0(n202), .S1(N12), .Y(n191) );
  AO22X1M U104 ( .A0(N36), .A1(n228), .B0(RdData[7]), .B1(n12), .Y(n47) );
  MX4X1M U105 ( .A(n197), .B(n195), .C(n196), .D(n194), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U106 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n202), 
        .S1(N12), .Y(n197) );
  MX4X1M U107 ( .A(\regArr[8][7] ), .B(\regArr[9][7] ), .C(\regArr[10][7] ), 
        .D(\regArr[11][7] ), .S0(n202), .S1(N12), .Y(n195) );
  INVX2M U108 ( .A(N11), .Y(n203) );
  OAI2BB2X1M U109 ( .B0(n14), .B1(n227), .A0N(REG0[0]), .A1N(n14), .Y(n49) );
  OAI2BB2X1M U110 ( .B0(n14), .B1(n226), .A0N(REG0[1]), .A1N(n14), .Y(n50) );
  OAI2BB2X1M U111 ( .B0(n14), .B1(n225), .A0N(REG0[2]), .A1N(n14), .Y(n51) );
  OAI2BB2X1M U112 ( .B0(n14), .B1(n224), .A0N(REG0[3]), .A1N(n14), .Y(n52) );
  OAI2BB2X1M U113 ( .B0(n14), .B1(n223), .A0N(REG0[4]), .A1N(n14), .Y(n53) );
  OAI2BB2X1M U114 ( .B0(n14), .B1(n222), .A0N(REG0[5]), .A1N(n14), .Y(n54) );
  OAI2BB2X1M U115 ( .B0(n14), .B1(n221), .A0N(REG0[6]), .A1N(n14), .Y(n55) );
  OAI2BB2X1M U116 ( .B0(n14), .B1(n220), .A0N(REG0[7]), .A1N(n14), .Y(n56) );
  OAI2BB2X1M U117 ( .B0(n227), .B1(n17), .A0N(REG1[0]), .A1N(n17), .Y(n57) );
  OAI2BB2X1M U118 ( .B0(n226), .B1(n17), .A0N(REG1[1]), .A1N(n17), .Y(n58) );
  OAI2BB2X1M U119 ( .B0(n225), .B1(n17), .A0N(REG1[2]), .A1N(n17), .Y(n59) );
  OAI2BB2X1M U120 ( .B0(n224), .B1(n17), .A0N(REG1[3]), .A1N(n17), .Y(n60) );
  OAI2BB2X1M U121 ( .B0(n223), .B1(n17), .A0N(REG1[4]), .A1N(n17), .Y(n61) );
  OAI2BB2X1M U122 ( .B0(n222), .B1(n17), .A0N(REG1[5]), .A1N(n17), .Y(n62) );
  OAI2BB2X1M U123 ( .B0(n221), .B1(n17), .A0N(REG1[6]), .A1N(n17), .Y(n63) );
  OAI2BB2X1M U124 ( .B0(n220), .B1(n17), .A0N(REG1[7]), .A1N(n17), .Y(n64) );
  OAI2BB2X1M U125 ( .B0(n227), .B1(n22), .A0N(\regArr[4][0] ), .A1N(n22), .Y(
        n81) );
  OAI2BB2X1M U126 ( .B0(n226), .B1(n22), .A0N(\regArr[4][1] ), .A1N(n22), .Y(
        n82) );
  OAI2BB2X1M U127 ( .B0(n225), .B1(n22), .A0N(\regArr[4][2] ), .A1N(n22), .Y(
        n83) );
  OAI2BB2X1M U128 ( .B0(n224), .B1(n22), .A0N(\regArr[4][3] ), .A1N(n22), .Y(
        n84) );
  OAI2BB2X1M U129 ( .B0(n223), .B1(n22), .A0N(\regArr[4][4] ), .A1N(n22), .Y(
        n85) );
  OAI2BB2X1M U130 ( .B0(n222), .B1(n22), .A0N(\regArr[4][5] ), .A1N(n22), .Y(
        n86) );
  OAI2BB2X1M U131 ( .B0(n221), .B1(n22), .A0N(\regArr[4][6] ), .A1N(n22), .Y(
        n87) );
  OAI2BB2X1M U132 ( .B0(n220), .B1(n22), .A0N(\regArr[4][7] ), .A1N(n22), .Y(
        n88) );
  OAI2BB2X1M U133 ( .B0(n227), .B1(n24), .A0N(\regArr[5][0] ), .A1N(n24), .Y(
        n89) );
  OAI2BB2X1M U134 ( .B0(n226), .B1(n24), .A0N(\regArr[5][1] ), .A1N(n24), .Y(
        n90) );
  OAI2BB2X1M U135 ( .B0(n225), .B1(n24), .A0N(\regArr[5][2] ), .A1N(n24), .Y(
        n91) );
  OAI2BB2X1M U136 ( .B0(n224), .B1(n24), .A0N(\regArr[5][3] ), .A1N(n24), .Y(
        n92) );
  OAI2BB2X1M U137 ( .B0(n223), .B1(n24), .A0N(\regArr[5][4] ), .A1N(n24), .Y(
        n93) );
  OAI2BB2X1M U138 ( .B0(n222), .B1(n24), .A0N(\regArr[5][5] ), .A1N(n24), .Y(
        n94) );
  OAI2BB2X1M U139 ( .B0(n221), .B1(n24), .A0N(\regArr[5][6] ), .A1N(n24), .Y(
        n95) );
  OAI2BB2X1M U140 ( .B0(n220), .B1(n24), .A0N(\regArr[5][7] ), .A1N(n24), .Y(
        n96) );
  OAI2BB2X1M U141 ( .B0(n227), .B1(n25), .A0N(\regArr[6][0] ), .A1N(n25), .Y(
        n97) );
  OAI2BB2X1M U142 ( .B0(n226), .B1(n25), .A0N(\regArr[6][1] ), .A1N(n25), .Y(
        n98) );
  OAI2BB2X1M U143 ( .B0(n225), .B1(n25), .A0N(\regArr[6][2] ), .A1N(n25), .Y(
        n99) );
  OAI2BB2X1M U144 ( .B0(n224), .B1(n25), .A0N(\regArr[6][3] ), .A1N(n25), .Y(
        n100) );
  OAI2BB2X1M U145 ( .B0(n223), .B1(n25), .A0N(\regArr[6][4] ), .A1N(n25), .Y(
        n101) );
  OAI2BB2X1M U146 ( .B0(n222), .B1(n25), .A0N(\regArr[6][5] ), .A1N(n25), .Y(
        n102) );
  OAI2BB2X1M U147 ( .B0(n221), .B1(n25), .A0N(\regArr[6][6] ), .A1N(n25), .Y(
        n103) );
  OAI2BB2X1M U148 ( .B0(n220), .B1(n25), .A0N(\regArr[6][7] ), .A1N(n25), .Y(
        n104) );
  OAI2BB2X1M U149 ( .B0(n227), .B1(n28), .A0N(\regArr[7][0] ), .A1N(n28), .Y(
        n105) );
  OAI2BB2X1M U150 ( .B0(n226), .B1(n28), .A0N(\regArr[7][1] ), .A1N(n28), .Y(
        n106) );
  OAI2BB2X1M U151 ( .B0(n225), .B1(n28), .A0N(\regArr[7][2] ), .A1N(n28), .Y(
        n107) );
  OAI2BB2X1M U152 ( .B0(n224), .B1(n28), .A0N(\regArr[7][3] ), .A1N(n28), .Y(
        n108) );
  OAI2BB2X1M U153 ( .B0(n223), .B1(n28), .A0N(\regArr[7][4] ), .A1N(n28), .Y(
        n109) );
  OAI2BB2X1M U154 ( .B0(n222), .B1(n28), .A0N(\regArr[7][5] ), .A1N(n28), .Y(
        n110) );
  OAI2BB2X1M U155 ( .B0(n221), .B1(n28), .A0N(\regArr[7][6] ), .A1N(n28), .Y(
        n111) );
  OAI2BB2X1M U156 ( .B0(n220), .B1(n28), .A0N(\regArr[7][7] ), .A1N(n28), .Y(
        n112) );
  OAI2BB2X1M U157 ( .B0(n227), .B1(n29), .A0N(\regArr[8][0] ), .A1N(n29), .Y(
        n113) );
  OAI2BB2X1M U158 ( .B0(n226), .B1(n29), .A0N(\regArr[8][1] ), .A1N(n29), .Y(
        n114) );
  OAI2BB2X1M U159 ( .B0(n225), .B1(n29), .A0N(\regArr[8][2] ), .A1N(n29), .Y(
        n115) );
  OAI2BB2X1M U160 ( .B0(n224), .B1(n29), .A0N(\regArr[8][3] ), .A1N(n29), .Y(
        n116) );
  OAI2BB2X1M U161 ( .B0(n223), .B1(n29), .A0N(\regArr[8][4] ), .A1N(n29), .Y(
        n117) );
  OAI2BB2X1M U162 ( .B0(n222), .B1(n29), .A0N(\regArr[8][5] ), .A1N(n29), .Y(
        n118) );
  OAI2BB2X1M U163 ( .B0(n221), .B1(n29), .A0N(\regArr[8][6] ), .A1N(n29), .Y(
        n119) );
  OAI2BB2X1M U164 ( .B0(n220), .B1(n29), .A0N(\regArr[8][7] ), .A1N(n29), .Y(
        n120) );
  OAI2BB2X1M U165 ( .B0(n227), .B1(n31), .A0N(\regArr[9][0] ), .A1N(n31), .Y(
        n121) );
  OAI2BB2X1M U166 ( .B0(n226), .B1(n31), .A0N(\regArr[9][1] ), .A1N(n31), .Y(
        n122) );
  OAI2BB2X1M U167 ( .B0(n225), .B1(n31), .A0N(\regArr[9][2] ), .A1N(n31), .Y(
        n123) );
  OAI2BB2X1M U168 ( .B0(n224), .B1(n31), .A0N(\regArr[9][3] ), .A1N(n31), .Y(
        n124) );
  OAI2BB2X1M U169 ( .B0(n223), .B1(n31), .A0N(\regArr[9][4] ), .A1N(n31), .Y(
        n125) );
  OAI2BB2X1M U170 ( .B0(n222), .B1(n31), .A0N(\regArr[9][5] ), .A1N(n31), .Y(
        n126) );
  OAI2BB2X1M U171 ( .B0(n221), .B1(n31), .A0N(\regArr[9][6] ), .A1N(n31), .Y(
        n127) );
  OAI2BB2X1M U172 ( .B0(n220), .B1(n31), .A0N(\regArr[9][7] ), .A1N(n31), .Y(
        n128) );
  OAI2BB2X1M U173 ( .B0(n227), .B1(n33), .A0N(\regArr[10][0] ), .A1N(n33), .Y(
        n129) );
  OAI2BB2X1M U174 ( .B0(n226), .B1(n33), .A0N(\regArr[10][1] ), .A1N(n33), .Y(
        n130) );
  OAI2BB2X1M U175 ( .B0(n225), .B1(n33), .A0N(\regArr[10][2] ), .A1N(n33), .Y(
        n131) );
  OAI2BB2X1M U176 ( .B0(n224), .B1(n33), .A0N(\regArr[10][3] ), .A1N(n33), .Y(
        n132) );
  OAI2BB2X1M U177 ( .B0(n223), .B1(n33), .A0N(\regArr[10][4] ), .A1N(n33), .Y(
        n133) );
  OAI2BB2X1M U178 ( .B0(n222), .B1(n33), .A0N(\regArr[10][5] ), .A1N(n33), .Y(
        n134) );
  OAI2BB2X1M U179 ( .B0(n221), .B1(n33), .A0N(\regArr[10][6] ), .A1N(n33), .Y(
        n135) );
  OAI2BB2X1M U180 ( .B0(n220), .B1(n33), .A0N(\regArr[10][7] ), .A1N(n33), .Y(
        n136) );
  OAI2BB2X1M U181 ( .B0(n227), .B1(n34), .A0N(\regArr[11][0] ), .A1N(n34), .Y(
        n137) );
  OAI2BB2X1M U182 ( .B0(n226), .B1(n34), .A0N(\regArr[11][1] ), .A1N(n34), .Y(
        n138) );
  OAI2BB2X1M U183 ( .B0(n225), .B1(n34), .A0N(\regArr[11][2] ), .A1N(n34), .Y(
        n139) );
  OAI2BB2X1M U184 ( .B0(n224), .B1(n34), .A0N(\regArr[11][3] ), .A1N(n34), .Y(
        n140) );
  OAI2BB2X1M U185 ( .B0(n223), .B1(n34), .A0N(\regArr[11][4] ), .A1N(n34), .Y(
        n141) );
  OAI2BB2X1M U186 ( .B0(n222), .B1(n34), .A0N(\regArr[11][5] ), .A1N(n34), .Y(
        n142) );
  OAI2BB2X1M U187 ( .B0(n221), .B1(n34), .A0N(\regArr[11][6] ), .A1N(n34), .Y(
        n143) );
  OAI2BB2X1M U188 ( .B0(n220), .B1(n34), .A0N(\regArr[11][7] ), .A1N(n34), .Y(
        n144) );
  OAI2BB2X1M U189 ( .B0(n227), .B1(n35), .A0N(\regArr[12][0] ), .A1N(n35), .Y(
        n145) );
  OAI2BB2X1M U190 ( .B0(n226), .B1(n35), .A0N(\regArr[12][1] ), .A1N(n35), .Y(
        n146) );
  OAI2BB2X1M U191 ( .B0(n225), .B1(n35), .A0N(\regArr[12][2] ), .A1N(n35), .Y(
        n147) );
  OAI2BB2X1M U192 ( .B0(n224), .B1(n35), .A0N(\regArr[12][3] ), .A1N(n35), .Y(
        n148) );
  OAI2BB2X1M U193 ( .B0(n223), .B1(n35), .A0N(\regArr[12][4] ), .A1N(n35), .Y(
        n149) );
  OAI2BB2X1M U194 ( .B0(n222), .B1(n35), .A0N(\regArr[12][5] ), .A1N(n35), .Y(
        n150) );
  OAI2BB2X1M U195 ( .B0(n221), .B1(n35), .A0N(\regArr[12][6] ), .A1N(n35), .Y(
        n151) );
  OAI2BB2X1M U196 ( .B0(n220), .B1(n35), .A0N(\regArr[12][7] ), .A1N(n35), .Y(
        n152) );
  OAI2BB2X1M U197 ( .B0(n227), .B1(n36), .A0N(\regArr[13][0] ), .A1N(n36), .Y(
        n153) );
  OAI2BB2X1M U198 ( .B0(n226), .B1(n36), .A0N(\regArr[13][1] ), .A1N(n36), .Y(
        n154) );
  OAI2BB2X1M U199 ( .B0(n225), .B1(n36), .A0N(\regArr[13][2] ), .A1N(n36), .Y(
        n155) );
  OAI2BB2X1M U200 ( .B0(n224), .B1(n36), .A0N(\regArr[13][3] ), .A1N(n36), .Y(
        n156) );
  OAI2BB2X1M U201 ( .B0(n223), .B1(n36), .A0N(\regArr[13][4] ), .A1N(n36), .Y(
        n157) );
  OAI2BB2X1M U202 ( .B0(n222), .B1(n36), .A0N(\regArr[13][5] ), .A1N(n36), .Y(
        n158) );
  OAI2BB2X1M U203 ( .B0(n221), .B1(n36), .A0N(\regArr[13][6] ), .A1N(n36), .Y(
        n159) );
  OAI2BB2X1M U204 ( .B0(n220), .B1(n36), .A0N(\regArr[13][7] ), .A1N(n36), .Y(
        n160) );
  OAI2BB2X1M U205 ( .B0(n227), .B1(n37), .A0N(\regArr[14][0] ), .A1N(n37), .Y(
        n161) );
  OAI2BB2X1M U206 ( .B0(n226), .B1(n37), .A0N(\regArr[14][1] ), .A1N(n37), .Y(
        n162) );
  OAI2BB2X1M U207 ( .B0(n225), .B1(n37), .A0N(\regArr[14][2] ), .A1N(n37), .Y(
        n163) );
  OAI2BB2X1M U208 ( .B0(n224), .B1(n37), .A0N(\regArr[14][3] ), .A1N(n37), .Y(
        n164) );
  OAI2BB2X1M U209 ( .B0(n223), .B1(n37), .A0N(\regArr[14][4] ), .A1N(n37), .Y(
        n165) );
  OAI2BB2X1M U210 ( .B0(n222), .B1(n37), .A0N(\regArr[14][5] ), .A1N(n37), .Y(
        n166) );
  OAI2BB2X1M U211 ( .B0(n221), .B1(n37), .A0N(\regArr[14][6] ), .A1N(n37), .Y(
        n167) );
  OAI2BB2X1M U212 ( .B0(n220), .B1(n37), .A0N(\regArr[14][7] ), .A1N(n37), .Y(
        n168) );
  OAI2BB2X1M U213 ( .B0(n227), .B1(n39), .A0N(\regArr[15][0] ), .A1N(n39), .Y(
        n169) );
  OAI2BB2X1M U214 ( .B0(n226), .B1(n39), .A0N(\regArr[15][1] ), .A1N(n39), .Y(
        n170) );
  OAI2BB2X1M U215 ( .B0(n225), .B1(n39), .A0N(\regArr[15][2] ), .A1N(n39), .Y(
        n171) );
  OAI2BB2X1M U216 ( .B0(n224), .B1(n39), .A0N(\regArr[15][3] ), .A1N(n39), .Y(
        n172) );
  OAI2BB2X1M U217 ( .B0(n223), .B1(n39), .A0N(\regArr[15][4] ), .A1N(n39), .Y(
        n173) );
  OAI2BB2X1M U218 ( .B0(n222), .B1(n39), .A0N(\regArr[15][5] ), .A1N(n39), .Y(
        n174) );
  OAI2BB2X1M U219 ( .B0(n221), .B1(n39), .A0N(\regArr[15][6] ), .A1N(n39), .Y(
        n175) );
  OAI2BB2X1M U220 ( .B0(n220), .B1(n39), .A0N(\regArr[15][7] ), .A1N(n39), .Y(
        n176) );
  OAI2BB2X1M U221 ( .B0(n226), .B1(n19), .A0N(REG2[1]), .A1N(n19), .Y(n66) );
  OAI2BB2X1M U222 ( .B0(n225), .B1(n19), .A0N(REG2[2]), .A1N(n19), .Y(n67) );
  OAI2BB2X1M U223 ( .B0(n224), .B1(n19), .A0N(REG2[3]), .A1N(n19), .Y(n68) );
  OAI2BB2X1M U224 ( .B0(n223), .B1(n19), .A0N(REG2[4]), .A1N(n19), .Y(n69) );
  OAI2BB2X1M U225 ( .B0(n222), .B1(n19), .A0N(REG2[5]), .A1N(n19), .Y(n70) );
  OAI2BB2X1M U226 ( .B0(n221), .B1(n19), .A0N(REG2[6]), .A1N(n19), .Y(n71) );
  OAI2BB2X1M U227 ( .B0(n227), .B1(n21), .A0N(REG3[0]), .A1N(n21), .Y(n73) );
  OAI2BB2X1M U228 ( .B0(n226), .B1(n21), .A0N(REG3[1]), .A1N(n21), .Y(n74) );
  OAI2BB2X1M U229 ( .B0(n225), .B1(n21), .A0N(REG3[2]), .A1N(n21), .Y(n75) );
  OAI2BB2X1M U230 ( .B0(n224), .B1(n21), .A0N(REG3[3]), .A1N(n21), .Y(n76) );
  OAI2BB2X1M U231 ( .B0(n223), .B1(n21), .A0N(REG3[4]), .A1N(n21), .Y(n77) );
  OAI2BB2X1M U232 ( .B0(n221), .B1(n21), .A0N(REG3[6]), .A1N(n21), .Y(n79) );
  OAI2BB2X1M U233 ( .B0(n220), .B1(n21), .A0N(REG3[7]), .A1N(n21), .Y(n80) );
  OAI2BB2X1M U234 ( .B0(n227), .B1(n19), .A0N(REG2[0]), .A1N(n19), .Y(n65) );
  OAI2BB2X1M U235 ( .B0(n220), .B1(n19), .A0N(REG2[7]), .A1N(n19), .Y(n72) );
  OAI2BB2X1M U236 ( .B0(n222), .B1(n21), .A0N(REG3[5]), .A1N(n21), .Y(n78) );
  INVX2M U237 ( .A(N12), .Y(n204) );
  OAI2BB1X2M U238 ( .A0N(RdData_VLD), .A1N(n13), .B0(n12), .Y(n48) );
endmodule


module FIFO_wptr_n_full_ADDR_WIDTH4 ( wclk, wrst_n, winc, wq2_rptr, wfull, 
        waddr, Gwptr );
  input [4:0] wq2_rptr;
  output [3:0] waddr;
  output [4:0] Gwptr;
  input wclk, wrst_n, winc;
  output wfull;
  wire   N7, N8, N9, N10, N11, n1, n3, n4, n5, n6, n7, \eq_19/A[2] ,
         \eq_19/A[3] , \add_30/carry[4] , \add_30/carry[3] , \add_30/carry[2] ,
         n2, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;
  wire   [4:0] comb_Gwptr;

  DFFRQX2M \wptr_reg[4]  ( .D(n6), .CK(wclk), .RN(wrst_n), .Q(comb_Gwptr[4])
         );
  DFFRQX2M \wptr_reg[0]  ( .D(n7), .CK(wclk), .RN(wrst_n), .Q(waddr[0]) );
  DFFRQX2M \wptr_reg[3]  ( .D(n3), .CK(wclk), .RN(wrst_n), .Q(waddr[3]) );
  DFFRQX2M \wptr_reg[1]  ( .D(n5), .CK(wclk), .RN(wrst_n), .Q(waddr[1]) );
  DFFRQX2M \wptr_reg[2]  ( .D(n4), .CK(wclk), .RN(wrst_n), .Q(waddr[2]) );
  DFFRQX2M \Gwptr_reg[1]  ( .D(comb_Gwptr[1]), .CK(wclk), .RN(wrst_n), .Q(
        Gwptr[1]) );
  DFFRQX2M \Gwptr_reg[0]  ( .D(comb_Gwptr[0]), .CK(wclk), .RN(wrst_n), .Q(
        Gwptr[0]) );
  DFFRQX2M \Gwptr_reg[4]  ( .D(comb_Gwptr[4]), .CK(wclk), .RN(wrst_n), .Q(
        Gwptr[4]) );
  DFFRQX2M \Gwptr_reg[3]  ( .D(n15), .CK(wclk), .RN(wrst_n), .Q(Gwptr[3]) );
  DFFRQX2M \Gwptr_reg[2]  ( .D(n17), .CK(wclk), .RN(wrst_n), .Q(Gwptr[2]) );
  NOR2BX2M U3 ( .AN(winc), .B(wfull), .Y(n1) );
  OAI2BB2X1M U4 ( .B0(n1), .B1(n18), .A0N(N9), .A1N(n1), .Y(n4) );
  INVX2M U5 ( .A(\eq_19/A[2] ), .Y(n17) );
  INVX2M U6 ( .A(\eq_19/A[3] ), .Y(n15) );
  OAI2BB2X1M U7 ( .B0(n16), .B1(n1), .A0N(N11), .A1N(n1), .Y(n6) );
  INVX2M U8 ( .A(waddr[2]), .Y(n18) );
  CLKXOR2X2M U9 ( .A(n18), .B(waddr[3]), .Y(\eq_19/A[2] ) );
  CLKXOR2X2M U10 ( .A(n16), .B(waddr[3]), .Y(\eq_19/A[3] ) );
  INVX2M U11 ( .A(comb_Gwptr[4]), .Y(n16) );
  AO2B2X2M U12 ( .B0(N10), .B1(n1), .A0(waddr[3]), .A1N(n1), .Y(n3) );
  AO2B2X2M U13 ( .B0(N8), .B1(n1), .A0(waddr[1]), .A1N(n1), .Y(n5) );
  AO2B2X2M U14 ( .B0(N7), .B1(n1), .A0(waddr[0]), .A1N(n1), .Y(n7) );
  CLKXOR2X2M U15 ( .A(waddr[2]), .B(waddr[1]), .Y(comb_Gwptr[1]) );
  CLKXOR2X2M U16 ( .A(waddr[1]), .B(waddr[0]), .Y(comb_Gwptr[0]) );
  ADDHX1M U17 ( .A(waddr[2]), .B(\add_30/carry[2] ), .CO(\add_30/carry[3] ), 
        .S(N9) );
  ADDHX1M U18 ( .A(waddr[1]), .B(waddr[0]), .CO(\add_30/carry[2] ), .S(N8) );
  ADDHX1M U19 ( .A(waddr[3]), .B(\add_30/carry[3] ), .CO(\add_30/carry[4] ), 
        .S(N10) );
  CLKINVX1M U20 ( .A(waddr[0]), .Y(N7) );
  CLKXOR2X2M U21 ( .A(\add_30/carry[4] ), .B(comb_Gwptr[4]), .Y(N11) );
  CLKXOR2X2M U22 ( .A(wq2_rptr[2]), .B(\eq_19/A[2] ), .Y(n14) );
  NOR2BX1M U23 ( .AN(wq2_rptr[0]), .B(comb_Gwptr[0]), .Y(n2) );
  OAI2B2X1M U24 ( .A1N(comb_Gwptr[1]), .A0(n2), .B0(wq2_rptr[1]), .B1(n2), .Y(
        n10) );
  NOR2BX1M U25 ( .AN(comb_Gwptr[0]), .B(wq2_rptr[0]), .Y(n8) );
  OAI2B2X1M U26 ( .A1N(wq2_rptr[1]), .A0(n8), .B0(comb_Gwptr[1]), .B1(n8), .Y(
        n9) );
  CLKNAND2X2M U27 ( .A(n10), .B(n9), .Y(n13) );
  CLKXOR2X2M U28 ( .A(wq2_rptr[3]), .B(\eq_19/A[3] ), .Y(n12) );
  CLKXOR2X2M U29 ( .A(wq2_rptr[4]), .B(n16), .Y(n11) );
  NOR4X1M U30 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(wfull) );
endmodule


module FIFO_rptr_n_empty_ADDR_WIDTH4 ( rclk, rrst_n, rinc, rq2_wptr, rempty, 
        raddr, Grptr );
  input [4:0] rq2_wptr;
  output [3:0] raddr;
  output [4:0] Grptr;
  input rclk, rrst_n, rinc;
  output rempty;
  wire   N5, N6, N7, N8, n1, n2, n3, n4, n5, n6, \add_30/carry[4] ,
         \add_30/carry[3] , \add_30/carry[2] , n7, n8, n9, n10, n11, n12, n13,
         n14, n15;
  wire   [4:0] comb_Grptr;

  DFFRQX2M \rptr_reg[4]  ( .D(n5), .CK(rclk), .RN(rrst_n), .Q(comb_Grptr[4])
         );
  DFFRQX2M \rptr_reg[0]  ( .D(n6), .CK(rclk), .RN(rrst_n), .Q(raddr[0]) );
  DFFRQX2M \rptr_reg[1]  ( .D(n4), .CK(rclk), .RN(rrst_n), .Q(raddr[1]) );
  DFFRQX2M \rptr_reg[2]  ( .D(n3), .CK(rclk), .RN(rrst_n), .Q(raddr[2]) );
  DFFRQX2M \Grptr_reg[3]  ( .D(comb_Grptr[3]), .CK(rclk), .RN(rrst_n), .Q(
        Grptr[3]) );
  DFFRQX2M \Grptr_reg[2]  ( .D(comb_Grptr[2]), .CK(rclk), .RN(rrst_n), .Q(
        Grptr[2]) );
  DFFRQX2M \Grptr_reg[1]  ( .D(comb_Grptr[1]), .CK(rclk), .RN(rrst_n), .Q(
        Grptr[1]) );
  DFFRQX2M \Grptr_reg[0]  ( .D(comb_Grptr[0]), .CK(rclk), .RN(rrst_n), .Q(
        Grptr[0]) );
  DFFRQX2M \rptr_reg[3]  ( .D(n2), .CK(rclk), .RN(rrst_n), .Q(raddr[3]) );
  DFFRQX2M \Grptr_reg[4]  ( .D(comb_Grptr[4]), .CK(rclk), .RN(rrst_n), .Q(
        Grptr[4]) );
  NOR2BX2M U3 ( .AN(rinc), .B(rempty), .Y(n1) );
  AO2B2X2M U4 ( .B0(n7), .B1(n1), .A0(raddr[0]), .A1N(n1), .Y(n6) );
  AO2B2X2M U5 ( .B0(N7), .B1(n1), .A0(raddr[3]), .A1N(n1), .Y(n2) );
  AO2B2X2M U6 ( .B0(N6), .B1(n1), .A0(raddr[2]), .A1N(n1), .Y(n3) );
  AO2B2X2M U7 ( .B0(N5), .B1(n1), .A0(raddr[1]), .A1N(n1), .Y(n4) );
  AO2B2X2M U8 ( .B0(N8), .B1(n1), .A0(comb_Grptr[4]), .A1N(n1), .Y(n5) );
  INVX2M U9 ( .A(raddr[0]), .Y(n7) );
  CLKXOR2X2M U10 ( .A(raddr[3]), .B(raddr[2]), .Y(comb_Grptr[2]) );
  CLKXOR2X2M U11 ( .A(raddr[3]), .B(comb_Grptr[4]), .Y(comb_Grptr[3]) );
  CLKXOR2X2M U12 ( .A(raddr[2]), .B(raddr[1]), .Y(comb_Grptr[1]) );
  CLKXOR2X2M U13 ( .A(raddr[1]), .B(raddr[0]), .Y(comb_Grptr[0]) );
  ADDHX1M U14 ( .A(raddr[2]), .B(\add_30/carry[2] ), .CO(\add_30/carry[3] ), 
        .S(N6) );
  ADDHX1M U15 ( .A(raddr[1]), .B(raddr[0]), .CO(\add_30/carry[2] ), .S(N5) );
  ADDHX1M U16 ( .A(raddr[3]), .B(\add_30/carry[3] ), .CO(\add_30/carry[4] ), 
        .S(N7) );
  CLKXOR2X2M U17 ( .A(\add_30/carry[4] ), .B(comb_Grptr[4]), .Y(N8) );
  CLKXOR2X2M U18 ( .A(rq2_wptr[2]), .B(comb_Grptr[2]), .Y(n15) );
  NOR2BX1M U19 ( .AN(rq2_wptr[0]), .B(comb_Grptr[0]), .Y(n8) );
  OAI2B2X1M U20 ( .A1N(comb_Grptr[1]), .A0(n8), .B0(rq2_wptr[1]), .B1(n8), .Y(
        n11) );
  NOR2BX1M U21 ( .AN(comb_Grptr[0]), .B(rq2_wptr[0]), .Y(n9) );
  OAI2B2X1M U22 ( .A1N(rq2_wptr[1]), .A0(n9), .B0(comb_Grptr[1]), .B1(n9), .Y(
        n10) );
  CLKNAND2X2M U23 ( .A(n11), .B(n10), .Y(n14) );
  CLKXOR2X2M U24 ( .A(rq2_wptr[3]), .B(comb_Grptr[3]), .Y(n13) );
  CLKXOR2X2M U25 ( .A(rq2_wptr[4]), .B(comb_Grptr[4]), .Y(n12) );
  NOR4X1M U26 ( .A(n15), .B(n14), .C(n13), .D(n12), .Y(rempty) );
endmodule


module FIFO_MEM_DATA_WIDTH8_ADDR_WIDTH4 ( wclk, wrst_n, winc, wfull, waddr, 
        raddr, wdata, rdata );
  input [3:0] waddr;
  input [3:0] raddr;
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, wrst_n, winc, wfull;
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
         \mem[0][4] , \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219;
  assign N9 = raddr[0];
  assign N10 = raddr[1];
  assign N11 = raddr[2];
  assign N12 = raddr[3];

  DFFRQX2M \mem_reg[13][7]  ( .D(n149), .CK(wclk), .RN(n196), .Q(\mem[13][7] )
         );
  DFFRQX2M \mem_reg[13][6]  ( .D(n148), .CK(wclk), .RN(n196), .Q(\mem[13][6] )
         );
  DFFRQX2M \mem_reg[13][5]  ( .D(n147), .CK(wclk), .RN(n196), .Q(\mem[13][5] )
         );
  DFFRQX2M \mem_reg[13][4]  ( .D(n146), .CK(wclk), .RN(n196), .Q(\mem[13][4] )
         );
  DFFRQX2M \mem_reg[13][3]  ( .D(n145), .CK(wclk), .RN(n196), .Q(\mem[13][3] )
         );
  DFFRQX2M \mem_reg[13][2]  ( .D(n144), .CK(wclk), .RN(n196), .Q(\mem[13][2] )
         );
  DFFRQX2M \mem_reg[13][1]  ( .D(n143), .CK(wclk), .RN(n196), .Q(\mem[13][1] )
         );
  DFFRQX2M \mem_reg[13][0]  ( .D(n142), .CK(wclk), .RN(n196), .Q(\mem[13][0] )
         );
  DFFRQX2M \mem_reg[9][7]  ( .D(n117), .CK(wclk), .RN(n198), .Q(\mem[9][7] )
         );
  DFFRQX2M \mem_reg[9][6]  ( .D(n116), .CK(wclk), .RN(n198), .Q(\mem[9][6] )
         );
  DFFRQX2M \mem_reg[9][5]  ( .D(n115), .CK(wclk), .RN(n198), .Q(\mem[9][5] )
         );
  DFFRQX2M \mem_reg[9][4]  ( .D(n114), .CK(wclk), .RN(n198), .Q(\mem[9][4] )
         );
  DFFRQX2M \mem_reg[9][3]  ( .D(n113), .CK(wclk), .RN(n199), .Q(\mem[9][3] )
         );
  DFFRQX2M \mem_reg[9][2]  ( .D(n112), .CK(wclk), .RN(n199), .Q(\mem[9][2] )
         );
  DFFRQX2M \mem_reg[9][1]  ( .D(n111), .CK(wclk), .RN(n199), .Q(\mem[9][1] )
         );
  DFFRQX2M \mem_reg[9][0]  ( .D(n110), .CK(wclk), .RN(n199), .Q(\mem[9][0] )
         );
  DFFRQX2M \mem_reg[5][7]  ( .D(n85), .CK(wclk), .RN(n201), .Q(\mem[5][7] ) );
  DFFRQX2M \mem_reg[5][6]  ( .D(n84), .CK(wclk), .RN(n201), .Q(\mem[5][6] ) );
  DFFRQX2M \mem_reg[5][5]  ( .D(n83), .CK(wclk), .RN(n201), .Q(\mem[5][5] ) );
  DFFRQX2M \mem_reg[5][4]  ( .D(n82), .CK(wclk), .RN(n201), .Q(\mem[5][4] ) );
  DFFRQX2M \mem_reg[5][3]  ( .D(n81), .CK(wclk), .RN(n201), .Q(\mem[5][3] ) );
  DFFRQX2M \mem_reg[5][2]  ( .D(n80), .CK(wclk), .RN(n201), .Q(\mem[5][2] ) );
  DFFRQX2M \mem_reg[5][1]  ( .D(n79), .CK(wclk), .RN(n201), .Q(\mem[5][1] ) );
  DFFRQX2M \mem_reg[5][0]  ( .D(n78), .CK(wclk), .RN(n201), .Q(\mem[5][0] ) );
  DFFRQX2M \mem_reg[1][7]  ( .D(n53), .CK(wclk), .RN(n203), .Q(\mem[1][7] ) );
  DFFRQX2M \mem_reg[1][6]  ( .D(n52), .CK(wclk), .RN(n203), .Q(\mem[1][6] ) );
  DFFRQX2M \mem_reg[1][5]  ( .D(n51), .CK(wclk), .RN(n203), .Q(\mem[1][5] ) );
  DFFRQX2M \mem_reg[1][4]  ( .D(n50), .CK(wclk), .RN(n203), .Q(\mem[1][4] ) );
  DFFRQX2M \mem_reg[1][3]  ( .D(n49), .CK(wclk), .RN(n203), .Q(\mem[1][3] ) );
  DFFRQX2M \mem_reg[1][2]  ( .D(n48), .CK(wclk), .RN(n204), .Q(\mem[1][2] ) );
  DFFRQX2M \mem_reg[1][1]  ( .D(n47), .CK(wclk), .RN(n204), .Q(\mem[1][1] ) );
  DFFRQX2M \mem_reg[1][0]  ( .D(n46), .CK(wclk), .RN(n204), .Q(\mem[1][0] ) );
  DFFRQX2M \mem_reg[15][7]  ( .D(n165), .CK(wclk), .RN(n195), .Q(\mem[15][7] )
         );
  DFFRQX2M \mem_reg[15][6]  ( .D(n164), .CK(wclk), .RN(n195), .Q(\mem[15][6] )
         );
  DFFRQX2M \mem_reg[15][5]  ( .D(n163), .CK(wclk), .RN(n195), .Q(\mem[15][5] )
         );
  DFFRQX2M \mem_reg[15][4]  ( .D(n162), .CK(wclk), .RN(n195), .Q(\mem[15][4] )
         );
  DFFRQX2M \mem_reg[15][3]  ( .D(n161), .CK(wclk), .RN(n195), .Q(\mem[15][3] )
         );
  DFFRQX2M \mem_reg[15][2]  ( .D(n160), .CK(wclk), .RN(n195), .Q(\mem[15][2] )
         );
  DFFRQX2M \mem_reg[15][1]  ( .D(n159), .CK(wclk), .RN(n195), .Q(\mem[15][1] )
         );
  DFFRQX2M \mem_reg[15][0]  ( .D(n158), .CK(wclk), .RN(n195), .Q(\mem[15][0] )
         );
  DFFRQX2M \mem_reg[11][7]  ( .D(n133), .CK(wclk), .RN(n197), .Q(\mem[11][7] )
         );
  DFFRQX2M \mem_reg[11][6]  ( .D(n132), .CK(wclk), .RN(n197), .Q(\mem[11][6] )
         );
  DFFRQX2M \mem_reg[11][5]  ( .D(n131), .CK(wclk), .RN(n197), .Q(\mem[11][5] )
         );
  DFFRQX2M \mem_reg[11][4]  ( .D(n130), .CK(wclk), .RN(n197), .Q(\mem[11][4] )
         );
  DFFRQX2M \mem_reg[11][3]  ( .D(n129), .CK(wclk), .RN(n197), .Q(\mem[11][3] )
         );
  DFFRQX2M \mem_reg[11][2]  ( .D(n128), .CK(wclk), .RN(n197), .Q(\mem[11][2] )
         );
  DFFRQX2M \mem_reg[11][1]  ( .D(n127), .CK(wclk), .RN(n197), .Q(\mem[11][1] )
         );
  DFFRQX2M \mem_reg[11][0]  ( .D(n126), .CK(wclk), .RN(n198), .Q(\mem[11][0] )
         );
  DFFRQX2M \mem_reg[7][7]  ( .D(n101), .CK(wclk), .RN(n199), .Q(\mem[7][7] )
         );
  DFFRQX2M \mem_reg[7][6]  ( .D(n100), .CK(wclk), .RN(n200), .Q(\mem[7][6] )
         );
  DFFRQX2M \mem_reg[7][5]  ( .D(n99), .CK(wclk), .RN(n200), .Q(\mem[7][5] ) );
  DFFRQX2M \mem_reg[7][4]  ( .D(n98), .CK(wclk), .RN(n200), .Q(\mem[7][4] ) );
  DFFRQX2M \mem_reg[7][3]  ( .D(n97), .CK(wclk), .RN(n200), .Q(\mem[7][3] ) );
  DFFRQX2M \mem_reg[7][2]  ( .D(n96), .CK(wclk), .RN(n200), .Q(\mem[7][2] ) );
  DFFRQX2M \mem_reg[7][1]  ( .D(n95), .CK(wclk), .RN(n200), .Q(\mem[7][1] ) );
  DFFRQX2M \mem_reg[7][0]  ( .D(n94), .CK(wclk), .RN(n200), .Q(\mem[7][0] ) );
  DFFRQX2M \mem_reg[3][7]  ( .D(n69), .CK(wclk), .RN(n202), .Q(\mem[3][7] ) );
  DFFRQX2M \mem_reg[3][6]  ( .D(n68), .CK(wclk), .RN(n202), .Q(\mem[3][6] ) );
  DFFRQX2M \mem_reg[3][5]  ( .D(n67), .CK(wclk), .RN(n202), .Q(\mem[3][5] ) );
  DFFRQX2M \mem_reg[3][4]  ( .D(n66), .CK(wclk), .RN(n202), .Q(\mem[3][4] ) );
  DFFRQX2M \mem_reg[3][3]  ( .D(n65), .CK(wclk), .RN(n202), .Q(\mem[3][3] ) );
  DFFRQX2M \mem_reg[3][2]  ( .D(n64), .CK(wclk), .RN(n202), .Q(\mem[3][2] ) );
  DFFRQX2M \mem_reg[3][1]  ( .D(n63), .CK(wclk), .RN(n202), .Q(\mem[3][1] ) );
  DFFRQX2M \mem_reg[3][0]  ( .D(n62), .CK(wclk), .RN(n202), .Q(\mem[3][0] ) );
  DFFRQX2M \mem_reg[14][7]  ( .D(n157), .CK(wclk), .RN(n195), .Q(\mem[14][7] )
         );
  DFFRQX2M \mem_reg[14][6]  ( .D(n156), .CK(wclk), .RN(n195), .Q(\mem[14][6] )
         );
  DFFRQX2M \mem_reg[14][5]  ( .D(n155), .CK(wclk), .RN(n195), .Q(\mem[14][5] )
         );
  DFFRQX2M \mem_reg[14][4]  ( .D(n154), .CK(wclk), .RN(n195), .Q(\mem[14][4] )
         );
  DFFRQX2M \mem_reg[14][3]  ( .D(n153), .CK(wclk), .RN(n195), .Q(\mem[14][3] )
         );
  DFFRQX2M \mem_reg[14][2]  ( .D(n152), .CK(wclk), .RN(n196), .Q(\mem[14][2] )
         );
  DFFRQX2M \mem_reg[14][1]  ( .D(n151), .CK(wclk), .RN(n196), .Q(\mem[14][1] )
         );
  DFFRQX2M \mem_reg[14][0]  ( .D(n150), .CK(wclk), .RN(n196), .Q(\mem[14][0] )
         );
  DFFRQX2M \mem_reg[10][7]  ( .D(n125), .CK(wclk), .RN(n198), .Q(\mem[10][7] )
         );
  DFFRQX2M \mem_reg[10][6]  ( .D(n124), .CK(wclk), .RN(n198), .Q(\mem[10][6] )
         );
  DFFRQX2M \mem_reg[10][5]  ( .D(n123), .CK(wclk), .RN(n198), .Q(\mem[10][5] )
         );
  DFFRQX2M \mem_reg[10][4]  ( .D(n122), .CK(wclk), .RN(n198), .Q(\mem[10][4] )
         );
  DFFRQX2M \mem_reg[10][3]  ( .D(n121), .CK(wclk), .RN(n198), .Q(\mem[10][3] )
         );
  DFFRQX2M \mem_reg[10][2]  ( .D(n120), .CK(wclk), .RN(n198), .Q(\mem[10][2] )
         );
  DFFRQX2M \mem_reg[10][1]  ( .D(n119), .CK(wclk), .RN(n198), .Q(\mem[10][1] )
         );
  DFFRQX2M \mem_reg[10][0]  ( .D(n118), .CK(wclk), .RN(n198), .Q(\mem[10][0] )
         );
  DFFRQX2M \mem_reg[6][7]  ( .D(n93), .CK(wclk), .RN(n200), .Q(\mem[6][7] ) );
  DFFRQX2M \mem_reg[6][6]  ( .D(n92), .CK(wclk), .RN(n200), .Q(\mem[6][6] ) );
  DFFRQX2M \mem_reg[6][5]  ( .D(n91), .CK(wclk), .RN(n200), .Q(\mem[6][5] ) );
  DFFRQX2M \mem_reg[6][4]  ( .D(n90), .CK(wclk), .RN(n200), .Q(\mem[6][4] ) );
  DFFRQX2M \mem_reg[6][3]  ( .D(n89), .CK(wclk), .RN(n200), .Q(\mem[6][3] ) );
  DFFRQX2M \mem_reg[6][2]  ( .D(n88), .CK(wclk), .RN(n200), .Q(\mem[6][2] ) );
  DFFRQX2M \mem_reg[6][1]  ( .D(n87), .CK(wclk), .RN(n201), .Q(\mem[6][1] ) );
  DFFRQX2M \mem_reg[6][0]  ( .D(n86), .CK(wclk), .RN(n201), .Q(\mem[6][0] ) );
  DFFRQX2M \mem_reg[2][7]  ( .D(n61), .CK(wclk), .RN(n203), .Q(\mem[2][7] ) );
  DFFRQX2M \mem_reg[2][6]  ( .D(n60), .CK(wclk), .RN(n203), .Q(\mem[2][6] ) );
  DFFRQX2M \mem_reg[2][5]  ( .D(n59), .CK(wclk), .RN(n203), .Q(\mem[2][5] ) );
  DFFRQX2M \mem_reg[2][4]  ( .D(n58), .CK(wclk), .RN(n203), .Q(\mem[2][4] ) );
  DFFRQX2M \mem_reg[2][3]  ( .D(n57), .CK(wclk), .RN(n203), .Q(\mem[2][3] ) );
  DFFRQX2M \mem_reg[2][2]  ( .D(n56), .CK(wclk), .RN(n203), .Q(\mem[2][2] ) );
  DFFRQX2M \mem_reg[2][1]  ( .D(n55), .CK(wclk), .RN(n203), .Q(\mem[2][1] ) );
  DFFRQX2M \mem_reg[2][0]  ( .D(n54), .CK(wclk), .RN(n203), .Q(\mem[2][0] ) );
  DFFRQX2M \mem_reg[12][7]  ( .D(n141), .CK(wclk), .RN(n196), .Q(\mem[12][7] )
         );
  DFFRQX2M \mem_reg[12][6]  ( .D(n140), .CK(wclk), .RN(n196), .Q(\mem[12][6] )
         );
  DFFRQX2M \mem_reg[12][5]  ( .D(n139), .CK(wclk), .RN(n197), .Q(\mem[12][5] )
         );
  DFFRQX2M \mem_reg[12][4]  ( .D(n138), .CK(wclk), .RN(n197), .Q(\mem[12][4] )
         );
  DFFRQX2M \mem_reg[12][3]  ( .D(n137), .CK(wclk), .RN(n197), .Q(\mem[12][3] )
         );
  DFFRQX2M \mem_reg[12][2]  ( .D(n136), .CK(wclk), .RN(n197), .Q(\mem[12][2] )
         );
  DFFRQX2M \mem_reg[12][1]  ( .D(n135), .CK(wclk), .RN(n197), .Q(\mem[12][1] )
         );
  DFFRQX2M \mem_reg[12][0]  ( .D(n134), .CK(wclk), .RN(n197), .Q(\mem[12][0] )
         );
  DFFRQX2M \mem_reg[8][7]  ( .D(n109), .CK(wclk), .RN(n199), .Q(\mem[8][7] )
         );
  DFFRQX2M \mem_reg[8][6]  ( .D(n108), .CK(wclk), .RN(n199), .Q(\mem[8][6] )
         );
  DFFRQX2M \mem_reg[8][5]  ( .D(n107), .CK(wclk), .RN(n199), .Q(\mem[8][5] )
         );
  DFFRQX2M \mem_reg[8][4]  ( .D(n106), .CK(wclk), .RN(n199), .Q(\mem[8][4] )
         );
  DFFRQX2M \mem_reg[8][3]  ( .D(n105), .CK(wclk), .RN(n199), .Q(\mem[8][3] )
         );
  DFFRQX2M \mem_reg[8][2]  ( .D(n104), .CK(wclk), .RN(n199), .Q(\mem[8][2] )
         );
  DFFRQX2M \mem_reg[8][1]  ( .D(n103), .CK(wclk), .RN(n199), .Q(\mem[8][1] )
         );
  DFFRQX2M \mem_reg[8][0]  ( .D(n102), .CK(wclk), .RN(n199), .Q(\mem[8][0] )
         );
  DFFRQX2M \mem_reg[4][7]  ( .D(n77), .CK(wclk), .RN(n201), .Q(\mem[4][7] ) );
  DFFRQX2M \mem_reg[4][6]  ( .D(n76), .CK(wclk), .RN(n201), .Q(\mem[4][6] ) );
  DFFRQX2M \mem_reg[4][5]  ( .D(n75), .CK(wclk), .RN(n201), .Q(\mem[4][5] ) );
  DFFRQX2M \mem_reg[4][4]  ( .D(n74), .CK(wclk), .RN(n202), .Q(\mem[4][4] ) );
  DFFRQX2M \mem_reg[4][3]  ( .D(n73), .CK(wclk), .RN(n202), .Q(\mem[4][3] ) );
  DFFRQX2M \mem_reg[4][2]  ( .D(n72), .CK(wclk), .RN(n202), .Q(\mem[4][2] ) );
  DFFRQX2M \mem_reg[4][1]  ( .D(n71), .CK(wclk), .RN(n202), .Q(\mem[4][1] ) );
  DFFRQX2M \mem_reg[4][0]  ( .D(n70), .CK(wclk), .RN(n202), .Q(\mem[4][0] ) );
  DFFRQX2M \mem_reg[0][7]  ( .D(n45), .CK(wclk), .RN(n204), .Q(\mem[0][7] ) );
  DFFRQX2M \mem_reg[0][6]  ( .D(n44), .CK(wclk), .RN(n204), .Q(\mem[0][6] ) );
  DFFRQX2M \mem_reg[0][5]  ( .D(n43), .CK(wclk), .RN(n204), .Q(\mem[0][5] ) );
  DFFRQX2M \mem_reg[0][4]  ( .D(n42), .CK(wclk), .RN(n204), .Q(\mem[0][4] ) );
  DFFRQX2M \mem_reg[0][3]  ( .D(n41), .CK(wclk), .RN(n204), .Q(\mem[0][3] ) );
  DFFRQX2M \mem_reg[0][2]  ( .D(n40), .CK(wclk), .RN(n204), .Q(\mem[0][2] ) );
  DFFRQX2M \mem_reg[0][1]  ( .D(n39), .CK(wclk), .RN(n204), .Q(\mem[0][1] ) );
  DFFRQX2M \mem_reg[0][0]  ( .D(n38), .CK(wclk), .RN(n204), .Q(\mem[0][0] ) );
  INVX2M U2 ( .A(wdata[0]), .Y(n219) );
  INVX2M U3 ( .A(wdata[1]), .Y(n218) );
  INVX2M U4 ( .A(wdata[2]), .Y(n217) );
  INVX2M U5 ( .A(wdata[3]), .Y(n216) );
  INVX2M U6 ( .A(wdata[4]), .Y(n215) );
  INVX2M U7 ( .A(wdata[5]), .Y(n214) );
  INVX2M U8 ( .A(wdata[6]), .Y(n213) );
  INVX2M U9 ( .A(wdata[7]), .Y(n212) );
  NOR2X2M U10 ( .A(n211), .B(waddr[2]), .Y(n17) );
  NOR2X2M U11 ( .A(waddr[1]), .B(waddr[2]), .Y(n12) );
  INVX2M U12 ( .A(n192), .Y(n193) );
  INVX2M U13 ( .A(n191), .Y(n194) );
  BUFX2M U14 ( .A(n191), .Y(n192) );
  BUFX2M U15 ( .A(n205), .Y(n203) );
  BUFX2M U16 ( .A(n206), .Y(n202) );
  BUFX2M U17 ( .A(n206), .Y(n201) );
  BUFX2M U18 ( .A(n207), .Y(n200) );
  BUFX2M U19 ( .A(n207), .Y(n199) );
  BUFX2M U20 ( .A(n208), .Y(n198) );
  BUFX2M U21 ( .A(n208), .Y(n197) );
  BUFX2M U22 ( .A(n209), .Y(n196) );
  BUFX2M U23 ( .A(n209), .Y(n195) );
  BUFX2M U24 ( .A(n205), .Y(n204) );
  INVX2M U25 ( .A(n189), .Y(n190) );
  INVX2M U26 ( .A(N9), .Y(n191) );
  BUFX2M U27 ( .A(wrst_n), .Y(n205) );
  BUFX2M U28 ( .A(wrst_n), .Y(n206) );
  BUFX2M U29 ( .A(wrst_n), .Y(n207) );
  BUFX2M U30 ( .A(wrst_n), .Y(n208) );
  BUFX2M U31 ( .A(wrst_n), .Y(n209) );
  NAND2X2M U32 ( .A(n15), .B(n12), .Y(n14) );
  NAND2X2M U33 ( .A(n17), .B(n13), .Y(n16) );
  NAND2X2M U34 ( .A(n17), .B(n15), .Y(n18) );
  NAND2X2M U35 ( .A(n20), .B(n13), .Y(n19) );
  NAND2X2M U36 ( .A(n20), .B(n15), .Y(n21) );
  NAND2X2M U37 ( .A(n23), .B(n13), .Y(n22) );
  NAND2X2M U38 ( .A(n23), .B(n15), .Y(n25) );
  NAND2X2M U39 ( .A(n28), .B(n12), .Y(n27) );
  NAND2X2M U40 ( .A(n30), .B(n12), .Y(n29) );
  NAND2X2M U41 ( .A(n28), .B(n17), .Y(n31) );
  NAND2X2M U42 ( .A(n30), .B(n17), .Y(n32) );
  NAND2X2M U43 ( .A(n28), .B(n20), .Y(n33) );
  NAND2X2M U44 ( .A(n30), .B(n20), .Y(n34) );
  NAND2X2M U45 ( .A(n28), .B(n23), .Y(n35) );
  NAND2X2M U46 ( .A(n30), .B(n23), .Y(n37) );
  NAND2X2M U47 ( .A(n12), .B(n13), .Y(n11) );
  NOR2BX2M U48 ( .AN(winc), .B(wfull), .Y(n26) );
  AND2X2M U49 ( .A(n24), .B(n210), .Y(n13) );
  AND2X2M U50 ( .A(n36), .B(n210), .Y(n28) );
  BUFX2M U51 ( .A(n188), .Y(n189) );
  OAI2BB2X1M U52 ( .B0(n11), .B1(n219), .A0N(\mem[0][0] ), .A1N(n11), .Y(n38)
         );
  OAI2BB2X1M U53 ( .B0(n11), .B1(n218), .A0N(\mem[0][1] ), .A1N(n11), .Y(n39)
         );
  OAI2BB2X1M U54 ( .B0(n11), .B1(n217), .A0N(\mem[0][2] ), .A1N(n11), .Y(n40)
         );
  OAI2BB2X1M U55 ( .B0(n11), .B1(n216), .A0N(\mem[0][3] ), .A1N(n11), .Y(n41)
         );
  OAI2BB2X1M U56 ( .B0(n11), .B1(n215), .A0N(\mem[0][4] ), .A1N(n11), .Y(n42)
         );
  OAI2BB2X1M U57 ( .B0(n11), .B1(n214), .A0N(\mem[0][5] ), .A1N(n11), .Y(n43)
         );
  OAI2BB2X1M U58 ( .B0(n11), .B1(n213), .A0N(\mem[0][6] ), .A1N(n11), .Y(n44)
         );
  OAI2BB2X1M U59 ( .B0(n11), .B1(n212), .A0N(\mem[0][7] ), .A1N(n11), .Y(n45)
         );
  OAI2BB2X1M U60 ( .B0(n219), .B1(n16), .A0N(\mem[2][0] ), .A1N(n16), .Y(n54)
         );
  OAI2BB2X1M U61 ( .B0(n218), .B1(n16), .A0N(\mem[2][1] ), .A1N(n16), .Y(n55)
         );
  OAI2BB2X1M U62 ( .B0(n217), .B1(n16), .A0N(\mem[2][2] ), .A1N(n16), .Y(n56)
         );
  OAI2BB2X1M U63 ( .B0(n216), .B1(n16), .A0N(\mem[2][3] ), .A1N(n16), .Y(n57)
         );
  OAI2BB2X1M U64 ( .B0(n215), .B1(n16), .A0N(\mem[2][4] ), .A1N(n16), .Y(n58)
         );
  OAI2BB2X1M U65 ( .B0(n214), .B1(n16), .A0N(\mem[2][5] ), .A1N(n16), .Y(n59)
         );
  OAI2BB2X1M U66 ( .B0(n213), .B1(n16), .A0N(\mem[2][6] ), .A1N(n16), .Y(n60)
         );
  OAI2BB2X1M U67 ( .B0(n212), .B1(n16), .A0N(\mem[2][7] ), .A1N(n16), .Y(n61)
         );
  OAI2BB2X1M U68 ( .B0(n219), .B1(n18), .A0N(\mem[3][0] ), .A1N(n18), .Y(n62)
         );
  OAI2BB2X1M U69 ( .B0(n218), .B1(n18), .A0N(\mem[3][1] ), .A1N(n18), .Y(n63)
         );
  OAI2BB2X1M U70 ( .B0(n217), .B1(n18), .A0N(\mem[3][2] ), .A1N(n18), .Y(n64)
         );
  OAI2BB2X1M U71 ( .B0(n216), .B1(n18), .A0N(\mem[3][3] ), .A1N(n18), .Y(n65)
         );
  OAI2BB2X1M U72 ( .B0(n215), .B1(n18), .A0N(\mem[3][4] ), .A1N(n18), .Y(n66)
         );
  OAI2BB2X1M U73 ( .B0(n214), .B1(n18), .A0N(\mem[3][5] ), .A1N(n18), .Y(n67)
         );
  OAI2BB2X1M U74 ( .B0(n213), .B1(n18), .A0N(\mem[3][6] ), .A1N(n18), .Y(n68)
         );
  OAI2BB2X1M U75 ( .B0(n212), .B1(n18), .A0N(\mem[3][7] ), .A1N(n18), .Y(n69)
         );
  OAI2BB2X1M U76 ( .B0(n219), .B1(n14), .A0N(\mem[1][0] ), .A1N(n14), .Y(n46)
         );
  OAI2BB2X1M U77 ( .B0(n218), .B1(n14), .A0N(\mem[1][1] ), .A1N(n14), .Y(n47)
         );
  OAI2BB2X1M U78 ( .B0(n217), .B1(n14), .A0N(\mem[1][2] ), .A1N(n14), .Y(n48)
         );
  OAI2BB2X1M U79 ( .B0(n216), .B1(n14), .A0N(\mem[1][3] ), .A1N(n14), .Y(n49)
         );
  OAI2BB2X1M U80 ( .B0(n215), .B1(n14), .A0N(\mem[1][4] ), .A1N(n14), .Y(n50)
         );
  OAI2BB2X1M U81 ( .B0(n214), .B1(n14), .A0N(\mem[1][5] ), .A1N(n14), .Y(n51)
         );
  OAI2BB2X1M U82 ( .B0(n213), .B1(n14), .A0N(\mem[1][6] ), .A1N(n14), .Y(n52)
         );
  OAI2BB2X1M U83 ( .B0(n212), .B1(n14), .A0N(\mem[1][7] ), .A1N(n14), .Y(n53)
         );
  OAI2BB2X1M U84 ( .B0(n219), .B1(n27), .A0N(\mem[8][0] ), .A1N(n27), .Y(n102)
         );
  OAI2BB2X1M U85 ( .B0(n218), .B1(n27), .A0N(\mem[8][1] ), .A1N(n27), .Y(n103)
         );
  OAI2BB2X1M U86 ( .B0(n217), .B1(n27), .A0N(\mem[8][2] ), .A1N(n27), .Y(n104)
         );
  OAI2BB2X1M U87 ( .B0(n216), .B1(n27), .A0N(\mem[8][3] ), .A1N(n27), .Y(n105)
         );
  OAI2BB2X1M U88 ( .B0(n215), .B1(n27), .A0N(\mem[8][4] ), .A1N(n27), .Y(n106)
         );
  OAI2BB2X1M U89 ( .B0(n214), .B1(n27), .A0N(\mem[8][5] ), .A1N(n27), .Y(n107)
         );
  OAI2BB2X1M U90 ( .B0(n213), .B1(n27), .A0N(\mem[8][6] ), .A1N(n27), .Y(n108)
         );
  OAI2BB2X1M U91 ( .B0(n212), .B1(n27), .A0N(\mem[8][7] ), .A1N(n27), .Y(n109)
         );
  OAI2BB2X1M U92 ( .B0(n219), .B1(n29), .A0N(\mem[9][0] ), .A1N(n29), .Y(n110)
         );
  OAI2BB2X1M U93 ( .B0(n218), .B1(n29), .A0N(\mem[9][1] ), .A1N(n29), .Y(n111)
         );
  OAI2BB2X1M U94 ( .B0(n217), .B1(n29), .A0N(\mem[9][2] ), .A1N(n29), .Y(n112)
         );
  OAI2BB2X1M U95 ( .B0(n216), .B1(n29), .A0N(\mem[9][3] ), .A1N(n29), .Y(n113)
         );
  OAI2BB2X1M U96 ( .B0(n215), .B1(n29), .A0N(\mem[9][4] ), .A1N(n29), .Y(n114)
         );
  OAI2BB2X1M U97 ( .B0(n214), .B1(n29), .A0N(\mem[9][5] ), .A1N(n29), .Y(n115)
         );
  OAI2BB2X1M U98 ( .B0(n213), .B1(n29), .A0N(\mem[9][6] ), .A1N(n29), .Y(n116)
         );
  OAI2BB2X1M U99 ( .B0(n212), .B1(n29), .A0N(\mem[9][7] ), .A1N(n29), .Y(n117)
         );
  OAI2BB2X1M U100 ( .B0(n219), .B1(n31), .A0N(\mem[10][0] ), .A1N(n31), .Y(
        n118) );
  OAI2BB2X1M U101 ( .B0(n218), .B1(n31), .A0N(\mem[10][1] ), .A1N(n31), .Y(
        n119) );
  OAI2BB2X1M U102 ( .B0(n217), .B1(n31), .A0N(\mem[10][2] ), .A1N(n31), .Y(
        n120) );
  OAI2BB2X1M U103 ( .B0(n216), .B1(n31), .A0N(\mem[10][3] ), .A1N(n31), .Y(
        n121) );
  OAI2BB2X1M U104 ( .B0(n215), .B1(n31), .A0N(\mem[10][4] ), .A1N(n31), .Y(
        n122) );
  OAI2BB2X1M U105 ( .B0(n214), .B1(n31), .A0N(\mem[10][5] ), .A1N(n31), .Y(
        n123) );
  OAI2BB2X1M U106 ( .B0(n213), .B1(n31), .A0N(\mem[10][6] ), .A1N(n31), .Y(
        n124) );
  OAI2BB2X1M U107 ( .B0(n212), .B1(n31), .A0N(\mem[10][7] ), .A1N(n31), .Y(
        n125) );
  OAI2BB2X1M U108 ( .B0(n219), .B1(n32), .A0N(\mem[11][0] ), .A1N(n32), .Y(
        n126) );
  OAI2BB2X1M U109 ( .B0(n218), .B1(n32), .A0N(\mem[11][1] ), .A1N(n32), .Y(
        n127) );
  OAI2BB2X1M U110 ( .B0(n217), .B1(n32), .A0N(\mem[11][2] ), .A1N(n32), .Y(
        n128) );
  OAI2BB2X1M U111 ( .B0(n216), .B1(n32), .A0N(\mem[11][3] ), .A1N(n32), .Y(
        n129) );
  OAI2BB2X1M U112 ( .B0(n215), .B1(n32), .A0N(\mem[11][4] ), .A1N(n32), .Y(
        n130) );
  OAI2BB2X1M U113 ( .B0(n214), .B1(n32), .A0N(\mem[11][5] ), .A1N(n32), .Y(
        n131) );
  OAI2BB2X1M U114 ( .B0(n213), .B1(n32), .A0N(\mem[11][6] ), .A1N(n32), .Y(
        n132) );
  OAI2BB2X1M U115 ( .B0(n212), .B1(n32), .A0N(\mem[11][7] ), .A1N(n32), .Y(
        n133) );
  OAI2BB2X1M U116 ( .B0(n219), .B1(n19), .A0N(\mem[4][0] ), .A1N(n19), .Y(n70)
         );
  OAI2BB2X1M U117 ( .B0(n218), .B1(n19), .A0N(\mem[4][1] ), .A1N(n19), .Y(n71)
         );
  OAI2BB2X1M U118 ( .B0(n217), .B1(n19), .A0N(\mem[4][2] ), .A1N(n19), .Y(n72)
         );
  OAI2BB2X1M U119 ( .B0(n216), .B1(n19), .A0N(\mem[4][3] ), .A1N(n19), .Y(n73)
         );
  OAI2BB2X1M U120 ( .B0(n215), .B1(n19), .A0N(\mem[4][4] ), .A1N(n19), .Y(n74)
         );
  OAI2BB2X1M U121 ( .B0(n214), .B1(n19), .A0N(\mem[4][5] ), .A1N(n19), .Y(n75)
         );
  OAI2BB2X1M U122 ( .B0(n213), .B1(n19), .A0N(\mem[4][6] ), .A1N(n19), .Y(n76)
         );
  OAI2BB2X1M U123 ( .B0(n212), .B1(n19), .A0N(\mem[4][7] ), .A1N(n19), .Y(n77)
         );
  OAI2BB2X1M U124 ( .B0(n219), .B1(n21), .A0N(\mem[5][0] ), .A1N(n21), .Y(n78)
         );
  OAI2BB2X1M U125 ( .B0(n218), .B1(n21), .A0N(\mem[5][1] ), .A1N(n21), .Y(n79)
         );
  OAI2BB2X1M U126 ( .B0(n217), .B1(n21), .A0N(\mem[5][2] ), .A1N(n21), .Y(n80)
         );
  OAI2BB2X1M U127 ( .B0(n216), .B1(n21), .A0N(\mem[5][3] ), .A1N(n21), .Y(n81)
         );
  OAI2BB2X1M U128 ( .B0(n215), .B1(n21), .A0N(\mem[5][4] ), .A1N(n21), .Y(n82)
         );
  OAI2BB2X1M U129 ( .B0(n214), .B1(n21), .A0N(\mem[5][5] ), .A1N(n21), .Y(n83)
         );
  OAI2BB2X1M U130 ( .B0(n213), .B1(n21), .A0N(\mem[5][6] ), .A1N(n21), .Y(n84)
         );
  OAI2BB2X1M U131 ( .B0(n212), .B1(n21), .A0N(\mem[5][7] ), .A1N(n21), .Y(n85)
         );
  OAI2BB2X1M U132 ( .B0(n219), .B1(n22), .A0N(\mem[6][0] ), .A1N(n22), .Y(n86)
         );
  OAI2BB2X1M U133 ( .B0(n218), .B1(n22), .A0N(\mem[6][1] ), .A1N(n22), .Y(n87)
         );
  OAI2BB2X1M U134 ( .B0(n217), .B1(n22), .A0N(\mem[6][2] ), .A1N(n22), .Y(n88)
         );
  OAI2BB2X1M U135 ( .B0(n216), .B1(n22), .A0N(\mem[6][3] ), .A1N(n22), .Y(n89)
         );
  OAI2BB2X1M U136 ( .B0(n215), .B1(n22), .A0N(\mem[6][4] ), .A1N(n22), .Y(n90)
         );
  OAI2BB2X1M U137 ( .B0(n214), .B1(n22), .A0N(\mem[6][5] ), .A1N(n22), .Y(n91)
         );
  OAI2BB2X1M U138 ( .B0(n213), .B1(n22), .A0N(\mem[6][6] ), .A1N(n22), .Y(n92)
         );
  OAI2BB2X1M U139 ( .B0(n212), .B1(n22), .A0N(\mem[6][7] ), .A1N(n22), .Y(n93)
         );
  OAI2BB2X1M U140 ( .B0(n219), .B1(n25), .A0N(\mem[7][0] ), .A1N(n25), .Y(n94)
         );
  OAI2BB2X1M U141 ( .B0(n218), .B1(n25), .A0N(\mem[7][1] ), .A1N(n25), .Y(n95)
         );
  OAI2BB2X1M U142 ( .B0(n217), .B1(n25), .A0N(\mem[7][2] ), .A1N(n25), .Y(n96)
         );
  OAI2BB2X1M U143 ( .B0(n216), .B1(n25), .A0N(\mem[7][3] ), .A1N(n25), .Y(n97)
         );
  OAI2BB2X1M U144 ( .B0(n215), .B1(n25), .A0N(\mem[7][4] ), .A1N(n25), .Y(n98)
         );
  OAI2BB2X1M U145 ( .B0(n214), .B1(n25), .A0N(\mem[7][5] ), .A1N(n25), .Y(n99)
         );
  OAI2BB2X1M U146 ( .B0(n213), .B1(n25), .A0N(\mem[7][6] ), .A1N(n25), .Y(n100) );
  OAI2BB2X1M U147 ( .B0(n212), .B1(n25), .A0N(\mem[7][7] ), .A1N(n25), .Y(n101) );
  OAI2BB2X1M U148 ( .B0(n219), .B1(n33), .A0N(\mem[12][0] ), .A1N(n33), .Y(
        n134) );
  OAI2BB2X1M U149 ( .B0(n218), .B1(n33), .A0N(\mem[12][1] ), .A1N(n33), .Y(
        n135) );
  OAI2BB2X1M U150 ( .B0(n217), .B1(n33), .A0N(\mem[12][2] ), .A1N(n33), .Y(
        n136) );
  OAI2BB2X1M U151 ( .B0(n216), .B1(n33), .A0N(\mem[12][3] ), .A1N(n33), .Y(
        n137) );
  OAI2BB2X1M U152 ( .B0(n215), .B1(n33), .A0N(\mem[12][4] ), .A1N(n33), .Y(
        n138) );
  OAI2BB2X1M U153 ( .B0(n214), .B1(n33), .A0N(\mem[12][5] ), .A1N(n33), .Y(
        n139) );
  OAI2BB2X1M U154 ( .B0(n213), .B1(n33), .A0N(\mem[12][6] ), .A1N(n33), .Y(
        n140) );
  OAI2BB2X1M U155 ( .B0(n212), .B1(n33), .A0N(\mem[12][7] ), .A1N(n33), .Y(
        n141) );
  OAI2BB2X1M U156 ( .B0(n219), .B1(n34), .A0N(\mem[13][0] ), .A1N(n34), .Y(
        n142) );
  OAI2BB2X1M U157 ( .B0(n218), .B1(n34), .A0N(\mem[13][1] ), .A1N(n34), .Y(
        n143) );
  OAI2BB2X1M U158 ( .B0(n217), .B1(n34), .A0N(\mem[13][2] ), .A1N(n34), .Y(
        n144) );
  OAI2BB2X1M U159 ( .B0(n216), .B1(n34), .A0N(\mem[13][3] ), .A1N(n34), .Y(
        n145) );
  OAI2BB2X1M U160 ( .B0(n215), .B1(n34), .A0N(\mem[13][4] ), .A1N(n34), .Y(
        n146) );
  OAI2BB2X1M U161 ( .B0(n214), .B1(n34), .A0N(\mem[13][5] ), .A1N(n34), .Y(
        n147) );
  OAI2BB2X1M U162 ( .B0(n213), .B1(n34), .A0N(\mem[13][6] ), .A1N(n34), .Y(
        n148) );
  OAI2BB2X1M U163 ( .B0(n212), .B1(n34), .A0N(\mem[13][7] ), .A1N(n34), .Y(
        n149) );
  OAI2BB2X1M U164 ( .B0(n219), .B1(n35), .A0N(\mem[14][0] ), .A1N(n35), .Y(
        n150) );
  OAI2BB2X1M U165 ( .B0(n218), .B1(n35), .A0N(\mem[14][1] ), .A1N(n35), .Y(
        n151) );
  OAI2BB2X1M U166 ( .B0(n217), .B1(n35), .A0N(\mem[14][2] ), .A1N(n35), .Y(
        n152) );
  OAI2BB2X1M U167 ( .B0(n216), .B1(n35), .A0N(\mem[14][3] ), .A1N(n35), .Y(
        n153) );
  OAI2BB2X1M U168 ( .B0(n215), .B1(n35), .A0N(\mem[14][4] ), .A1N(n35), .Y(
        n154) );
  OAI2BB2X1M U169 ( .B0(n214), .B1(n35), .A0N(\mem[14][5] ), .A1N(n35), .Y(
        n155) );
  OAI2BB2X1M U170 ( .B0(n213), .B1(n35), .A0N(\mem[14][6] ), .A1N(n35), .Y(
        n156) );
  OAI2BB2X1M U171 ( .B0(n212), .B1(n35), .A0N(\mem[14][7] ), .A1N(n35), .Y(
        n157) );
  OAI2BB2X1M U172 ( .B0(n219), .B1(n37), .A0N(\mem[15][0] ), .A1N(n37), .Y(
        n158) );
  OAI2BB2X1M U173 ( .B0(n218), .B1(n37), .A0N(\mem[15][1] ), .A1N(n37), .Y(
        n159) );
  OAI2BB2X1M U174 ( .B0(n217), .B1(n37), .A0N(\mem[15][2] ), .A1N(n37), .Y(
        n160) );
  OAI2BB2X1M U175 ( .B0(n216), .B1(n37), .A0N(\mem[15][3] ), .A1N(n37), .Y(
        n161) );
  OAI2BB2X1M U176 ( .B0(n215), .B1(n37), .A0N(\mem[15][4] ), .A1N(n37), .Y(
        n162) );
  OAI2BB2X1M U177 ( .B0(n214), .B1(n37), .A0N(\mem[15][5] ), .A1N(n37), .Y(
        n163) );
  OAI2BB2X1M U178 ( .B0(n213), .B1(n37), .A0N(\mem[15][6] ), .A1N(n37), .Y(
        n164) );
  OAI2BB2X1M U179 ( .B0(n212), .B1(n37), .A0N(\mem[15][7] ), .A1N(n37), .Y(
        n165) );
  NOR2BX2M U180 ( .AN(n26), .B(waddr[3]), .Y(n24) );
  AND2X2M U181 ( .A(n24), .B(waddr[0]), .Y(n15) );
  AND2X2M U182 ( .A(n36), .B(waddr[0]), .Y(n30) );
  AND2X2M U183 ( .A(waddr[3]), .B(n26), .Y(n36) );
  AND2X2M U184 ( .A(waddr[2]), .B(n211), .Y(n20) );
  AND2X2M U185 ( .A(waddr[2]), .B(waddr[1]), .Y(n23) );
  INVX2M U186 ( .A(waddr[1]), .Y(n211) );
  INVX2M U187 ( .A(waddr[0]), .Y(n210) );
  MX4X1M U188 ( .A(n4), .B(n2), .C(n3), .D(n1), .S0(N12), .S1(N11), .Y(
        rdata[0]) );
  MX4X1M U189 ( .A(\mem[8][0] ), .B(\mem[9][0] ), .C(\mem[10][0] ), .D(
        \mem[11][0] ), .S0(N9), .S1(N10), .Y(n2) );
  MX4X1M U190 ( .A(\mem[12][0] ), .B(\mem[13][0] ), .C(\mem[14][0] ), .D(
        \mem[15][0] ), .S0(N9), .S1(N10), .Y(n1) );
  MX4X1M U191 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .C(\mem[6][0] ), .D(
        \mem[7][0] ), .S0(N9), .S1(N10), .Y(n3) );
  MX4X1M U192 ( .A(n8), .B(n6), .C(n7), .D(n5), .S0(N12), .S1(N11), .Y(
        rdata[1]) );
  MX4X1M U193 ( .A(\mem[8][1] ), .B(\mem[9][1] ), .C(\mem[10][1] ), .D(
        \mem[11][1] ), .S0(N9), .S1(N10), .Y(n6) );
  MX4X1M U194 ( .A(\mem[12][1] ), .B(\mem[13][1] ), .C(\mem[14][1] ), .D(
        \mem[15][1] ), .S0(N9), .S1(N10), .Y(n5) );
  MX4X1M U195 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .C(\mem[6][1] ), .D(
        \mem[7][1] ), .S0(n193), .S1(N10), .Y(n7) );
  MX4X1M U196 ( .A(n167), .B(n10), .C(n166), .D(n9), .S0(N12), .S1(N11), .Y(
        rdata[2]) );
  MX4X1M U197 ( .A(\mem[8][2] ), .B(\mem[9][2] ), .C(\mem[10][2] ), .D(
        \mem[11][2] ), .S0(n193), .S1(n190), .Y(n10) );
  MX4X1M U198 ( .A(\mem[12][2] ), .B(\mem[13][2] ), .C(\mem[14][2] ), .D(
        \mem[15][2] ), .S0(n193), .S1(n190), .Y(n9) );
  MX4X1M U199 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .C(\mem[6][2] ), .D(
        \mem[7][2] ), .S0(n193), .S1(n190), .Y(n166) );
  MX4X1M U200 ( .A(n171), .B(n169), .C(n170), .D(n168), .S0(N12), .S1(N11), 
        .Y(rdata[3]) );
  MX4X1M U201 ( .A(\mem[8][3] ), .B(\mem[9][3] ), .C(\mem[10][3] ), .D(
        \mem[11][3] ), .S0(n193), .S1(n190), .Y(n169) );
  MX4X1M U202 ( .A(\mem[12][3] ), .B(\mem[13][3] ), .C(\mem[14][3] ), .D(
        \mem[15][3] ), .S0(n193), .S1(n190), .Y(n168) );
  MX4X1M U203 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .C(\mem[6][3] ), .D(
        \mem[7][3] ), .S0(n193), .S1(n190), .Y(n170) );
  MX4X1M U204 ( .A(n175), .B(n173), .C(n174), .D(n172), .S0(N12), .S1(N11), 
        .Y(rdata[4]) );
  MX4X1M U205 ( .A(\mem[8][4] ), .B(\mem[9][4] ), .C(\mem[10][4] ), .D(
        \mem[11][4] ), .S0(n193), .S1(n190), .Y(n173) );
  MX4X1M U206 ( .A(\mem[12][4] ), .B(\mem[13][4] ), .C(\mem[14][4] ), .D(
        \mem[15][4] ), .S0(n193), .S1(n190), .Y(n172) );
  MX4X1M U207 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .C(\mem[6][4] ), .D(
        \mem[7][4] ), .S0(n193), .S1(n190), .Y(n174) );
  MX4X1M U208 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .C(\mem[2][0] ), .D(
        \mem[3][0] ), .S0(N9), .S1(N10), .Y(n4) );
  MX4X1M U209 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .C(\mem[2][1] ), .D(
        \mem[3][1] ), .S0(n193), .S1(N10), .Y(n8) );
  MX4X1M U210 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .C(\mem[2][2] ), .D(
        \mem[3][2] ), .S0(n193), .S1(n190), .Y(n167) );
  MX4X1M U211 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .C(\mem[2][3] ), .D(
        \mem[3][3] ), .S0(n193), .S1(n190), .Y(n171) );
  MX4X1M U212 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .C(\mem[2][4] ), .D(
        \mem[3][4] ), .S0(n194), .S1(n190), .Y(n175) );
  MX4X1M U213 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .C(\mem[2][5] ), .D(
        \mem[3][5] ), .S0(n194), .S1(N10), .Y(n179) );
  MX4X1M U214 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .C(\mem[2][6] ), .D(
        \mem[3][6] ), .S0(n194), .S1(N10), .Y(n183) );
  MX4X1M U215 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .C(\mem[2][7] ), .D(
        \mem[3][7] ), .S0(n194), .S1(N10), .Y(n187) );
  MX4X1M U216 ( .A(n179), .B(n177), .C(n178), .D(n176), .S0(N12), .S1(N11), 
        .Y(rdata[5]) );
  MX4X1M U217 ( .A(\mem[8][5] ), .B(\mem[9][5] ), .C(\mem[10][5] ), .D(
        \mem[11][5] ), .S0(n194), .S1(N10), .Y(n177) );
  MX4X1M U218 ( .A(\mem[12][5] ), .B(\mem[13][5] ), .C(\mem[14][5] ), .D(
        \mem[15][5] ), .S0(n194), .S1(N10), .Y(n176) );
  MX4X1M U219 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .C(\mem[6][5] ), .D(
        \mem[7][5] ), .S0(n194), .S1(n190), .Y(n178) );
  MX4X1M U220 ( .A(n183), .B(n181), .C(n182), .D(n180), .S0(N12), .S1(N11), 
        .Y(rdata[6]) );
  MX4X1M U221 ( .A(\mem[8][6] ), .B(\mem[9][6] ), .C(\mem[10][6] ), .D(
        \mem[11][6] ), .S0(n194), .S1(n190), .Y(n181) );
  MX4X1M U222 ( .A(\mem[12][6] ), .B(\mem[13][6] ), .C(\mem[14][6] ), .D(
        \mem[15][6] ), .S0(n194), .S1(n190), .Y(n180) );
  MX4X1M U223 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .C(\mem[6][6] ), .D(
        \mem[7][6] ), .S0(n194), .S1(N10), .Y(n182) );
  MX4X1M U224 ( .A(n187), .B(n185), .C(n186), .D(n184), .S0(N12), .S1(N11), 
        .Y(rdata[7]) );
  MX4X1M U225 ( .A(\mem[8][7] ), .B(\mem[9][7] ), .C(\mem[10][7] ), .D(
        \mem[11][7] ), .S0(n194), .S1(N10), .Y(n185) );
  MX4X1M U226 ( .A(\mem[12][7] ), .B(\mem[13][7] ), .C(\mem[14][7] ), .D(
        \mem[15][7] ), .S0(n194), .S1(N10), .Y(n184) );
  MX4X1M U227 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .C(\mem[6][7] ), .D(
        \mem[7][7] ), .S0(n194), .S1(n190), .Y(n186) );
  INVX2M U228 ( .A(N10), .Y(n188) );
endmodule


module synchronizer_ADDR_WIDTH4_0 ( clk, rst_n, sync_in, sync_reg );
  input [4:0] sync_in;
  output [4:0] sync_reg;
  input clk, rst_n;

  wire   [4:0] dest_reg;

  DFFRQX2M \sync_reg_reg[1]  ( .D(dest_reg[1]), .CK(clk), .RN(rst_n), .Q(
        sync_reg[1]) );
  DFFRQX2M \sync_reg_reg[4]  ( .D(dest_reg[4]), .CK(clk), .RN(rst_n), .Q(
        sync_reg[4]) );
  DFFRQX2M \sync_reg_reg[3]  ( .D(dest_reg[3]), .CK(clk), .RN(rst_n), .Q(
        sync_reg[3]) );
  DFFRQX2M \sync_reg_reg[2]  ( .D(dest_reg[2]), .CK(clk), .RN(rst_n), .Q(
        sync_reg[2]) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(dest_reg[0]), .CK(clk), .RN(rst_n), .Q(
        sync_reg[0]) );
  DFFRQX2M \dest_reg_reg[4]  ( .D(sync_in[4]), .CK(clk), .RN(rst_n), .Q(
        dest_reg[4]) );
  DFFRQX2M \dest_reg_reg[3]  ( .D(sync_in[3]), .CK(clk), .RN(rst_n), .Q(
        dest_reg[3]) );
  DFFRQX2M \dest_reg_reg[2]  ( .D(sync_in[2]), .CK(clk), .RN(rst_n), .Q(
        dest_reg[2]) );
  DFFRQX2M \dest_reg_reg[1]  ( .D(sync_in[1]), .CK(clk), .RN(rst_n), .Q(
        dest_reg[1]) );
  DFFRQX2M \dest_reg_reg[0]  ( .D(sync_in[0]), .CK(clk), .RN(rst_n), .Q(
        dest_reg[0]) );
endmodule


module synchronizer_ADDR_WIDTH4_1 ( clk, rst_n, sync_in, sync_reg );
  input [4:0] sync_in;
  output [4:0] sync_reg;
  input clk, rst_n;

  wire   [4:0] dest_reg;

  DFFRQX2M \sync_reg_reg[0]  ( .D(dest_reg[0]), .CK(clk), .RN(rst_n), .Q(
        sync_reg[0]) );
  DFFRQX2M \sync_reg_reg[1]  ( .D(dest_reg[1]), .CK(clk), .RN(rst_n), .Q(
        sync_reg[1]) );
  DFFRQX2M \sync_reg_reg[4]  ( .D(dest_reg[4]), .CK(clk), .RN(rst_n), .Q(
        sync_reg[4]) );
  DFFRQX2M \sync_reg_reg[3]  ( .D(dest_reg[3]), .CK(clk), .RN(rst_n), .Q(
        sync_reg[3]) );
  DFFRQX2M \sync_reg_reg[2]  ( .D(dest_reg[2]), .CK(clk), .RN(rst_n), .Q(
        sync_reg[2]) );
  DFFRQX2M \dest_reg_reg[4]  ( .D(sync_in[4]), .CK(clk), .RN(rst_n), .Q(
        dest_reg[4]) );
  DFFRQX2M \dest_reg_reg[3]  ( .D(sync_in[3]), .CK(clk), .RN(rst_n), .Q(
        dest_reg[3]) );
  DFFRQX2M \dest_reg_reg[2]  ( .D(sync_in[2]), .CK(clk), .RN(rst_n), .Q(
        dest_reg[2]) );
  DFFRQX2M \dest_reg_reg[1]  ( .D(sync_in[1]), .CK(clk), .RN(rst_n), .Q(
        dest_reg[1]) );
  DFFRQX2M \dest_reg_reg[0]  ( .D(sync_in[0]), .CK(clk), .RN(rst_n), .Q(
        dest_reg[0]) );
endmodule


module ASYC_FIFO ( W_CLK, R_CLK, WRST_N, RRST_N, WINC, RINC, WR_DATA, RD_DATA, 
        FULL, EMPTY );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, R_CLK, WRST_N, RRST_N, WINC, RINC;
  output FULL, EMPTY;
  wire   n1, n2, n3, n4;
  wire   [4:0] wq2_rptr;
  wire   [3:0] waddr;
  wire   [4:0] Gwptr;
  wire   [4:0] rq2_wptr;
  wire   [3:0] raddr;
  wire   [4:0] Grptr;

  FIFO_wptr_n_full_ADDR_WIDTH4 U1 ( .wclk(W_CLK), .wrst_n(n3), .winc(WINC), 
        .wq2_rptr(wq2_rptr), .wfull(FULL), .waddr(waddr), .Gwptr(Gwptr) );
  FIFO_rptr_n_empty_ADDR_WIDTH4 U2 ( .rclk(R_CLK), .rrst_n(n1), .rinc(RINC), 
        .rq2_wptr(rq2_wptr), .rempty(EMPTY), .raddr(raddr), .Grptr(Grptr) );
  FIFO_MEM_DATA_WIDTH8_ADDR_WIDTH4 U3 ( .wclk(W_CLK), .wrst_n(n3), .winc(WINC), 
        .wfull(FULL), .waddr(waddr), .raddr(raddr), .wdata(WR_DATA), .rdata(
        RD_DATA) );
  synchronizer_ADDR_WIDTH4_0 U4 ( .clk(W_CLK), .rst_n(n3), .sync_in(Grptr), 
        .sync_reg(wq2_rptr) );
  synchronizer_ADDR_WIDTH4_1 U5 ( .clk(R_CLK), .rst_n(n1), .sync_in(Gwptr), 
        .sync_reg(rq2_wptr) );
  INVX2M U6 ( .A(n4), .Y(n3) );
  INVX2M U7 ( .A(WRST_N), .Y(n4) );
  INVX2M U8 ( .A(n2), .Y(n1) );
  INVX2M U9 ( .A(RRST_N), .Y(n2) );
endmodule


module ClkDiv_0_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N4, div_clk, tog_flag, N14, N18, N19, N20, N21, N22, n10, n11, n12,
         n13, n15, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         \add_49/carry[4] , \add_49/carry[3] , \add_49/carry[2] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n14, n16, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40;
  wire   [7:0] half_tog;
  wire   [7:0] half_tog_p1;
  wire   [4:0] cnt;

  ClkDiv_0_DW01_inc_1 add_18 ( .A(half_tog), .SUM(half_tog_p1) );
  DFFSQX2M div_clk_reg ( .D(n25), .CK(i_ref_clk), .SN(i_rst_n), .Q(div_clk) );
  DFFRQX2M tog_flag_reg ( .D(n24), .CK(i_ref_clk), .RN(i_rst_n), .Q(tog_flag)
         );
  DFFRQX2M \cnt_reg[4]  ( .D(n22), .CK(i_ref_clk), .RN(i_rst_n), .Q(cnt[4]) );
  DFFRQX2M \cnt_reg[0]  ( .D(n23), .CK(i_ref_clk), .RN(i_rst_n), .Q(cnt[0]) );
  DFFRQX2M \cnt_reg[3]  ( .D(n21), .CK(i_ref_clk), .RN(i_rst_n), .Q(cnt[3]) );
  DFFRQX2M \cnt_reg[2]  ( .D(n20), .CK(i_ref_clk), .RN(i_rst_n), .Q(cnt[2]) );
  DFFRQX2M \cnt_reg[1]  ( .D(n19), .CK(i_ref_clk), .RN(i_rst_n), .Q(cnt[1]) );
  AO22X1M U21 ( .A0(n40), .A1(div_clk), .B0(i_ref_clk), .B1(n10), .Y(o_div_clk) );
  AOI2BB2XLM U3 ( .B0(n1), .B1(n18), .A0N(N14), .A1N(n18), .Y(n12) );
  NOR2X2M U4 ( .A(n10), .B(n12), .Y(n11) );
  OR4X1M U5 ( .A(n30), .B(n29), .C(half_tog[7]), .D(half_tog[6]), .Y(n1) );
  OR2X2M U6 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  INVX2M U7 ( .A(n10), .Y(n40) );
  OAI2BB2X1M U8 ( .B0(o_div_clk), .B1(n17), .A0N(n17), .A1N(div_clk), .Y(n25)
         );
  NAND2X2M U9 ( .A(n12), .B(n40), .Y(n17) );
  NAND2BX2M U10 ( .AN(tog_flag), .B(i_div_ratio[0]), .Y(n18) );
  XNOR2X2M U11 ( .A(tog_flag), .B(n13), .Y(n24) );
  NAND3X2M U12 ( .A(i_div_ratio[0]), .B(n40), .C(n15), .Y(n13) );
  AOI2BB2XLM U13 ( .B0(tog_flag), .B1(n1), .A0N(N14), .A1N(tog_flag), .Y(n15)
         );
  AO22X1M U14 ( .A0(cnt[1]), .A1(n10), .B0(N19), .B1(n11), .Y(n19) );
  AO22X1M U15 ( .A0(cnt[2]), .A1(n10), .B0(N20), .B1(n11), .Y(n20) );
  AO22X1M U16 ( .A0(cnt[3]), .A1(n10), .B0(N21), .B1(n11), .Y(n21) );
  AO22X1M U17 ( .A0(cnt[4]), .A1(n10), .B0(N22), .B1(n11), .Y(n22) );
  AO22X1M U18 ( .A0(cnt[0]), .A1(n10), .B0(N18), .B1(n11), .Y(n23) );
  ADDHX1M U19 ( .A(cnt[1]), .B(cnt[0]), .CO(\add_49/carry[2] ), .S(N19) );
  ADDHX1M U20 ( .A(cnt[2]), .B(\add_49/carry[2] ), .CO(\add_49/carry[3] ), .S(
        N20) );
  ADDHX1M U22 ( .A(cnt[3]), .B(\add_49/carry[3] ), .CO(\add_49/carry[4] ), .S(
        N21) );
  NAND2X2M U23 ( .A(i_clk_en), .B(N4), .Y(n10) );
  CLKINVX1M U24 ( .A(i_div_ratio[1]), .Y(half_tog[0]) );
  OAI2BB1X1M U25 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n2), .Y(
        half_tog[1]) );
  OR2X1M U26 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U27 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(half_tog[2]) );
  OR2X1M U28 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  OAI2BB1X1M U29 ( .A0N(n3), .A1N(i_div_ratio[4]), .B0(n4), .Y(half_tog[3]) );
  OR2X1M U30 ( .A(n4), .B(i_div_ratio[5]), .Y(n5) );
  OAI2BB1X1M U31 ( .A0N(n4), .A1N(i_div_ratio[5]), .B0(n5), .Y(half_tog[4]) );
  XNOR2X1M U32 ( .A(i_div_ratio[6]), .B(n5), .Y(half_tog[5]) );
  NOR3X1M U33 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n5), .Y(half_tog[7]) );
  OAI21X1M U34 ( .A0(i_div_ratio[6]), .A1(n5), .B0(i_div_ratio[7]), .Y(n6) );
  NAND2BX1M U35 ( .AN(half_tog[7]), .B(n6), .Y(half_tog[6]) );
  CLKINVX1M U36 ( .A(cnt[0]), .Y(N18) );
  CLKXOR2X2M U37 ( .A(\add_49/carry[4] ), .B(cnt[4]), .Y(N22) );
  OR4X1M U38 ( .A(i_div_ratio[5]), .B(i_div_ratio[4]), .C(i_div_ratio[7]), .D(
        i_div_ratio[6]), .Y(n7) );
  OR4X1M U39 ( .A(i_div_ratio[3]), .B(i_div_ratio[2]), .C(i_div_ratio[1]), .D(
        n7), .Y(N4) );
  XNOR2X1M U40 ( .A(half_tog[4]), .B(cnt[4]), .Y(n26) );
  XNOR2X1M U41 ( .A(half_tog[3]), .B(cnt[3]), .Y(n16) );
  XNOR2X1M U42 ( .A(half_tog[2]), .B(cnt[2]), .Y(n14) );
  NOR2BX1M U43 ( .AN(cnt[0]), .B(half_tog[0]), .Y(n8) );
  OAI2B2X1M U44 ( .A1N(half_tog[1]), .A0(n8), .B0(cnt[1]), .B1(n8), .Y(n9) );
  NAND4X1M U45 ( .A(n26), .B(n16), .C(n14), .D(n9), .Y(n30) );
  NOR2BX1M U46 ( .AN(half_tog[0]), .B(cnt[0]), .Y(n27) );
  OAI2B2X1M U47 ( .A1N(cnt[1]), .A0(n27), .B0(half_tog[1]), .B1(n27), .Y(n28)
         );
  NAND2BX1M U48 ( .AN(half_tog[5]), .B(n28), .Y(n29) );
  XNOR2X1M U49 ( .A(half_tog_p1[4]), .B(cnt[4]), .Y(n35) );
  XNOR2X1M U50 ( .A(half_tog_p1[3]), .B(cnt[3]), .Y(n34) );
  XNOR2X1M U51 ( .A(half_tog_p1[2]), .B(cnt[2]), .Y(n33) );
  NOR2BX1M U52 ( .AN(cnt[0]), .B(half_tog_p1[0]), .Y(n31) );
  OAI2B2X1M U53 ( .A1N(half_tog_p1[1]), .A0(n31), .B0(cnt[1]), .B1(n31), .Y(
        n32) );
  NAND4X1M U54 ( .A(n35), .B(n34), .C(n33), .D(n32), .Y(n39) );
  NOR2BX1M U55 ( .AN(half_tog_p1[0]), .B(cnt[0]), .Y(n36) );
  OAI2B2X1M U56 ( .A1N(cnt[1]), .A0(n36), .B0(half_tog_p1[1]), .B1(n36), .Y(
        n37) );
  NAND2BX1M U57 ( .AN(half_tog_p1[5]), .B(n37), .Y(n38) );
  NOR4X1M U58 ( .A(n39), .B(n38), .C(half_tog_p1[7]), .D(half_tog_p1[6]), .Y(
        N14) );
endmodule


module ClkDiv_1_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N4, div_clk, tog_flag, N14, N18, N19, N20, N21, N22,
         \add_49/carry[4] , \add_49/carry[3] , \add_49/carry[2] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n14, n16, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54;
  wire   [7:0] half_tog;
  wire   [7:0] half_tog_p1;
  wire   [4:0] cnt;

  ClkDiv_1_DW01_inc_1 add_18 ( .A(half_tog), .SUM(half_tog_p1) );
  DFFSQX2M div_clk_reg ( .D(n41), .CK(i_ref_clk), .SN(i_rst_n), .Q(div_clk) );
  DFFRQX2M tog_flag_reg ( .D(n42), .CK(i_ref_clk), .RN(i_rst_n), .Q(tog_flag)
         );
  DFFRQX2M \cnt_reg[4]  ( .D(n44), .CK(i_ref_clk), .RN(i_rst_n), .Q(cnt[4]) );
  DFFRQX2M \cnt_reg[0]  ( .D(n43), .CK(i_ref_clk), .RN(i_rst_n), .Q(cnt[0]) );
  DFFRQX2M \cnt_reg[3]  ( .D(n45), .CK(i_ref_clk), .RN(i_rst_n), .Q(cnt[3]) );
  DFFRQX2M \cnt_reg[2]  ( .D(n46), .CK(i_ref_clk), .RN(i_rst_n), .Q(cnt[2]) );
  DFFRQX2M \cnt_reg[1]  ( .D(n47), .CK(i_ref_clk), .RN(i_rst_n), .Q(cnt[1]) );
  AO22X1M U21 ( .A0(n40), .A1(div_clk), .B0(i_ref_clk), .B1(n54), .Y(o_div_clk) );
  AOI2BB2XLM U3 ( .B0(n1), .B1(n48), .A0N(N14), .A1N(n48), .Y(n52) );
  NOR2X2M U4 ( .A(n54), .B(n52), .Y(n53) );
  OR4X1M U5 ( .A(n30), .B(n29), .C(half_tog[7]), .D(half_tog[6]), .Y(n1) );
  INVX2M U6 ( .A(n54), .Y(n40) );
  OAI2BB2X1M U7 ( .B0(o_div_clk), .B1(n49), .A0N(n49), .A1N(div_clk), .Y(n41)
         );
  NAND2X2M U8 ( .A(n52), .B(n40), .Y(n49) );
  NAND2BX2M U9 ( .AN(tog_flag), .B(i_div_ratio[0]), .Y(n48) );
  XNOR2X2M U10 ( .A(tog_flag), .B(n51), .Y(n42) );
  NAND3X2M U11 ( .A(i_div_ratio[0]), .B(n40), .C(n50), .Y(n51) );
  AOI2BB2XLM U12 ( .B0(tog_flag), .B1(n1), .A0N(N14), .A1N(tog_flag), .Y(n50)
         );
  AO22X1M U13 ( .A0(cnt[1]), .A1(n54), .B0(N19), .B1(n53), .Y(n47) );
  AO22X1M U14 ( .A0(cnt[2]), .A1(n54), .B0(N20), .B1(n53), .Y(n46) );
  AO22X1M U15 ( .A0(cnt[3]), .A1(n54), .B0(N21), .B1(n53), .Y(n45) );
  AO22X1M U16 ( .A0(cnt[4]), .A1(n54), .B0(N22), .B1(n53), .Y(n44) );
  AO22X1M U17 ( .A0(cnt[0]), .A1(n54), .B0(N18), .B1(n53), .Y(n43) );
  ADDHX1M U18 ( .A(cnt[1]), .B(cnt[0]), .CO(\add_49/carry[2] ), .S(N19) );
  ADDHX1M U19 ( .A(cnt[2]), .B(\add_49/carry[2] ), .CO(\add_49/carry[3] ), .S(
        N20) );
  ADDHX1M U20 ( .A(cnt[3]), .B(\add_49/carry[3] ), .CO(\add_49/carry[4] ), .S(
        N21) );
  NAND2X2M U22 ( .A(i_clk_en), .B(N4), .Y(n54) );
  OR2X2M U23 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  CLKINVX1M U24 ( .A(i_div_ratio[1]), .Y(half_tog[0]) );
  OAI2BB1X1M U25 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n2), .Y(
        half_tog[1]) );
  OR2X1M U26 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U27 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(half_tog[2]) );
  OR2X1M U28 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  OAI2BB1X1M U29 ( .A0N(n3), .A1N(i_div_ratio[4]), .B0(n4), .Y(half_tog[3]) );
  OR2X1M U30 ( .A(n4), .B(i_div_ratio[5]), .Y(n5) );
  OAI2BB1X1M U31 ( .A0N(n4), .A1N(i_div_ratio[5]), .B0(n5), .Y(half_tog[4]) );
  XNOR2X1M U32 ( .A(i_div_ratio[6]), .B(n5), .Y(half_tog[5]) );
  NOR3X1M U33 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n5), .Y(half_tog[7]) );
  OAI21X1M U34 ( .A0(i_div_ratio[6]), .A1(n5), .B0(i_div_ratio[7]), .Y(n6) );
  NAND2BX1M U35 ( .AN(half_tog[7]), .B(n6), .Y(half_tog[6]) );
  CLKINVX1M U36 ( .A(cnt[0]), .Y(N18) );
  CLKXOR2X2M U37 ( .A(\add_49/carry[4] ), .B(cnt[4]), .Y(N22) );
  OR4X1M U38 ( .A(i_div_ratio[5]), .B(i_div_ratio[4]), .C(i_div_ratio[7]), .D(
        i_div_ratio[6]), .Y(n7) );
  OR4X1M U39 ( .A(i_div_ratio[3]), .B(i_div_ratio[2]), .C(i_div_ratio[1]), .D(
        n7), .Y(N4) );
  XNOR2X1M U40 ( .A(half_tog[4]), .B(cnt[4]), .Y(n26) );
  XNOR2X1M U41 ( .A(half_tog[3]), .B(cnt[3]), .Y(n16) );
  XNOR2X1M U42 ( .A(half_tog[2]), .B(cnt[2]), .Y(n14) );
  NOR2BX1M U43 ( .AN(cnt[0]), .B(half_tog[0]), .Y(n8) );
  OAI2B2X1M U44 ( .A1N(half_tog[1]), .A0(n8), .B0(cnt[1]), .B1(n8), .Y(n9) );
  NAND4X1M U45 ( .A(n26), .B(n16), .C(n14), .D(n9), .Y(n30) );
  NOR2BX1M U46 ( .AN(half_tog[0]), .B(cnt[0]), .Y(n27) );
  OAI2B2X1M U47 ( .A1N(cnt[1]), .A0(n27), .B0(half_tog[1]), .B1(n27), .Y(n28)
         );
  NAND2BX1M U48 ( .AN(half_tog[5]), .B(n28), .Y(n29) );
  XNOR2X1M U49 ( .A(half_tog_p1[4]), .B(cnt[4]), .Y(n35) );
  XNOR2X1M U50 ( .A(half_tog_p1[3]), .B(cnt[3]), .Y(n34) );
  XNOR2X1M U51 ( .A(half_tog_p1[2]), .B(cnt[2]), .Y(n33) );
  NOR2BX1M U52 ( .AN(cnt[0]), .B(half_tog_p1[0]), .Y(n31) );
  OAI2B2X1M U53 ( .A1N(half_tog_p1[1]), .A0(n31), .B0(cnt[1]), .B1(n31), .Y(
        n32) );
  NAND4X1M U54 ( .A(n35), .B(n34), .C(n33), .D(n32), .Y(n39) );
  NOR2BX1M U55 ( .AN(half_tog_p1[0]), .B(cnt[0]), .Y(n36) );
  OAI2B2X1M U56 ( .A1N(cnt[1]), .A0(n36), .B0(half_tog_p1[1]), .B1(n36), .Y(
        n37) );
  NAND2BX1M U57 ( .AN(half_tog_p1[5]), .B(n37), .Y(n38) );
  NOR4X1M U58 ( .A(n39), .B(n38), .C(half_tog_p1[7]), .D(half_tog_p1[6]), .Y(
        N14) );
endmodule


module CLKDIV_MUX ( prescale, OUT );
  input [5:0] prescale;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  INVX2M U3 ( .A(1'b1), .Y(OUT[4]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[7]) );
  NAND4BX1M U11 ( .AN(prescale[4]), .B(prescale[3]), .C(n15), .D(n14), .Y(n6)
         );
  NAND4BX1M U12 ( .AN(prescale[3]), .B(prescale[4]), .C(n15), .D(n14), .Y(n7)
         );
  OAI211X2M U13 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(OUT[0]) );
  NAND2X2M U14 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U15 ( .A(prescale[5]), .B(prescale[4]), .C(prescale[3]), .D(n15), 
        .Y(n8) );
  NOR3X2M U16 ( .A(n7), .B(prescale[1]), .C(prescale[0]), .Y(OUT[1]) );
  NOR3X2M U17 ( .A(n6), .B(prescale[1]), .C(prescale[0]), .Y(OUT[2]) );
  NOR4X1M U18 ( .A(n5), .B(prescale[3]), .C(prescale[5]), .D(prescale[4]), .Y(
        OUT[3]) );
  NAND3X2M U19 ( .A(n17), .B(n16), .C(prescale[2]), .Y(n5) );
  INVX2M U20 ( .A(prescale[0]), .Y(n17) );
  INVX2M U21 ( .A(prescale[1]), .Y(n16) );
  INVX2M U22 ( .A(prescale[2]), .Y(n15) );
  INVX2M U23 ( .A(prescale[5]), .Y(n14) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module DATA_SYNC ( clk, rst_n, bus_enable, unsync_bus, sync_bus, enable_pulse
 );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input clk, rst_n, bus_enable;
  output enable_pulse;
  wire   pulse_reg, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] sync_reg;

  DFFRQX2M pulse_reg_reg ( .D(sync_reg[0]), .CK(clk), .RN(rst_n), .Q(pulse_reg) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(sync_reg[1]), .CK(clk), .RN(rst_n), .Q(
        sync_reg[0]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(clk), .RN(rst_n), .Q(sync_bus[7])
         );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(clk), .RN(rst_n), .Q(sync_bus[3])
         );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(clk), .RN(rst_n), .Q(sync_bus[4])
         );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(clk), .RN(rst_n), .Q(sync_bus[0])
         );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(clk), .RN(rst_n), .Q(sync_bus[6])
         );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(clk), .RN(rst_n), .Q(sync_bus[5])
         );
  DFFRQX2M enable_pulse_reg ( .D(n10), .CK(clk), .RN(rst_n), .Q(enable_pulse)
         );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(clk), .RN(rst_n), .Q(sync_bus[2])
         );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(clk), .RN(rst_n), .Q(sync_bus[1])
         );
  DFFRQX2M \sync_reg_reg[1]  ( .D(bus_enable), .CK(clk), .RN(rst_n), .Q(
        sync_reg[1]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(pulse_reg), .B(sync_reg[0]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
endmodule


module RST_SYNC_0 ( clk, rst_n_in, rst_n_out );
  input clk, rst_n_in;
  output rst_n_out;
  wire   \sync_reg[1] ;

  DFFRQX2M \sync_reg_reg[0]  ( .D(\sync_reg[1] ), .CK(clk), .RN(rst_n_in), .Q(
        rst_n_out) );
  DFFRQX2M \sync_reg_reg[1]  ( .D(1'b1), .CK(clk), .RN(rst_n_in), .Q(
        \sync_reg[1] ) );
endmodule


module RST_SYNC_1 ( clk, rst_n_in, rst_n_out );
  input clk, rst_n_in;
  output rst_n_out;
  wire   \sync_reg[1] ;

  DFFRQX2M \sync_reg_reg[0]  ( .D(\sync_reg[1] ), .CK(clk), .RN(rst_n_in), .Q(
        rst_n_out) );
  DFFRQX2M \sync_reg_reg[1]  ( .D(1'b1), .CK(clk), .RN(rst_n_in), .Q(
        \sync_reg[1] ) );
endmodule


module FSMT ( clk, n_RST, PAR_EN, Data_Valid, ser_done, ser_en, busy, mux_sel, 
        idle_flag );
  output [1:0] mux_sel;
  input clk, n_RST, PAR_EN, Data_Valid, ser_done;
  output ser_en, busy, idle_flag;
  wire   n6, n7, n8, n9, n10, n11, n12, n1, n2, n3, n4, n5;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n_RST), 
        .Q(current_state[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n_RST), 
        .Q(current_state[2]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n_RST), 
        .Q(current_state[0]) );
  NAND3X2M U3 ( .A(n4), .B(n3), .C(n2), .Y(n11) );
  NAND3X2M U4 ( .A(n6), .B(n11), .C(n7), .Y(mux_sel[1]) );
  NAND2X2M U5 ( .A(n7), .B(n12), .Y(mux_sel[0]) );
  NAND2X2M U6 ( .A(n12), .B(n11), .Y(idle_flag) );
  INVX2M U7 ( .A(ser_done), .Y(n1) );
  NAND3BX2M U8 ( .AN(mux_sel[0]), .B(n9), .C(n6), .Y(busy) );
  NOR3X2M U9 ( .A(n4), .B(current_state[2]), .C(current_state[0]), .Y(ser_en)
         );
  NAND3X2M U10 ( .A(n2), .B(n3), .C(current_state[1]), .Y(n6) );
  NAND3X2M U11 ( .A(current_state[1]), .B(n3), .C(current_state[0]), .Y(n7) );
  NAND3X2M U12 ( .A(n2), .B(n4), .C(current_state[2]), .Y(n12) );
  INVX2M U13 ( .A(current_state[1]), .Y(n4) );
  INVX2M U14 ( .A(current_state[2]), .Y(n3) );
  INVX2M U15 ( .A(current_state[0]), .Y(n2) );
  OAI31X1M U16 ( .A0(n5), .A1(n6), .A2(n1), .B0(n10), .Y(next_state[0]) );
  INVX2M U17 ( .A(PAR_EN), .Y(n5) );
  NAND2X2M U18 ( .A(Data_Valid), .B(idle_flag), .Y(n10) );
  OAI31X1M U19 ( .A0(n1), .A1(PAR_EN), .A2(n6), .B0(n7), .Y(next_state[2]) );
  OAI21X2M U20 ( .A0(n8), .A1(n6), .B0(n9), .Y(next_state[1]) );
  NOR2X2M U21 ( .A(PAR_EN), .B(n1), .Y(n8) );
  NAND3X2M U22 ( .A(n4), .B(n3), .C(current_state[0]), .Y(n9) );
endmodule


module UMUX ( mux_sel, ser_data, par_bit, TX_OUT );
  input [1:0] mux_sel;
  input ser_data, par_bit;
  output TX_OUT;
  wire   n2, n3, n1;

  OAI21X2M U3 ( .A0(n2), .A1(n1), .B0(n3), .Y(TX_OUT) );
  NAND3X2M U4 ( .A(mux_sel[1]), .B(n1), .C(ser_data), .Y(n3) );
  NOR2BX2M U5 ( .AN(mux_sel[1]), .B(par_bit), .Y(n2) );
  INVX2M U6 ( .A(mux_sel[0]), .Y(n1) );
endmodule


module serializer ( clk, n_RST, P_DATA, ser_en, idle_flag, Data_Valid, 
        ser_done, ser_data, rdy_pulse );
  input [7:0] P_DATA;
  input clk, n_RST, ser_en, idle_flag, Data_Valid;
  output ser_done, ser_data, rdy_pulse;
  wire   N2, N3, N4, N6, n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18;
  wire   [7:0] DATA;

  DFFRQX2M \counter_reg[2]  ( .D(n13), .CK(clk), .RN(n_RST), .Q(N4) );
  DFFRQX2M \DATA_reg[5]  ( .D(n10), .CK(clk), .RN(n_RST), .Q(DATA[5]) );
  DFFRQX2M \DATA_reg[1]  ( .D(n6), .CK(clk), .RN(n_RST), .Q(DATA[1]) );
  DFFRQX2M \DATA_reg[7]  ( .D(n12), .CK(clk), .RN(n_RST), .Q(DATA[7]) );
  DFFRQX2M \DATA_reg[3]  ( .D(n8), .CK(clk), .RN(n_RST), .Q(DATA[3]) );
  DFFRQX2M \DATA_reg[6]  ( .D(n11), .CK(clk), .RN(n_RST), .Q(DATA[6]) );
  DFFRQX2M \DATA_reg[2]  ( .D(n7), .CK(clk), .RN(n_RST), .Q(DATA[2]) );
  DFFRQX2M \DATA_reg[4]  ( .D(n9), .CK(clk), .RN(n_RST), .Q(DATA[4]) );
  DFFRQX2M \DATA_reg[0]  ( .D(n5), .CK(clk), .RN(n_RST), .Q(DATA[0]) );
  DFFRQX2M \counter_reg[1]  ( .D(n14), .CK(clk), .RN(n_RST), .Q(N3) );
  DFFRQX2M \counter_reg[0]  ( .D(n15), .CK(clk), .RN(n_RST), .Q(N2) );
  INVX2M U3 ( .A(n1), .Y(n18) );
  NAND2X2M U4 ( .A(idle_flag), .B(Data_Valid), .Y(n1) );
  NAND2BX2M U5 ( .AN(N6), .B(ser_en), .Y(ser_data) );
  MX2X2M U6 ( .A(n17), .B(n16), .S0(N4), .Y(N6) );
  MX4X1M U7 ( .A(DATA[4]), .B(DATA[5]), .C(DATA[6]), .D(DATA[7]), .S0(N2), 
        .S1(N3), .Y(n16) );
  MX4X1M U8 ( .A(DATA[0]), .B(DATA[1]), .C(DATA[2]), .D(DATA[3]), .S0(N2), 
        .S1(N3), .Y(n17) );
  AO22X1M U9 ( .A0(DATA[0]), .A1(n1), .B0(P_DATA[0]), .B1(n18), .Y(n5) );
  AO22X1M U10 ( .A0(DATA[1]), .A1(n1), .B0(P_DATA[1]), .B1(n18), .Y(n6) );
  AO22X1M U11 ( .A0(DATA[2]), .A1(n1), .B0(P_DATA[2]), .B1(n18), .Y(n7) );
  AO22X1M U12 ( .A0(DATA[3]), .A1(n1), .B0(P_DATA[3]), .B1(n18), .Y(n8) );
  AO22X1M U13 ( .A0(DATA[4]), .A1(n1), .B0(P_DATA[4]), .B1(n18), .Y(n9) );
  AO22X1M U14 ( .A0(DATA[5]), .A1(n1), .B0(P_DATA[5]), .B1(n18), .Y(n10) );
  AO22X1M U15 ( .A0(DATA[6]), .A1(n1), .B0(P_DATA[6]), .B1(n18), .Y(n11) );
  AO22X1M U16 ( .A0(DATA[7]), .A1(n1), .B0(P_DATA[7]), .B1(n18), .Y(n12) );
  NAND2X2M U17 ( .A(ser_en), .B(N2), .Y(n4) );
  CLKXOR2X2M U18 ( .A(N4), .B(n3), .Y(n13) );
  NOR2BX2M U19 ( .AN(N3), .B(n4), .Y(n3) );
  XNOR2X2M U20 ( .A(N3), .B(n4), .Y(n14) );
  CLKXOR2X2M U21 ( .A(ser_en), .B(N2), .Y(n15) );
  BUFX2M U22 ( .A(rdy_pulse), .Y(ser_done) );
  AND3X2M U23 ( .A(N4), .B(N2), .C(N3), .Y(rdy_pulse) );
endmodule


module parityCalc ( n_RST, clk, P_DATA, Data_Valid, idle_flag, PAR_TYP, 
        par_bit );
  input [7:0] P_DATA;
  input n_RST, clk, Data_Valid, idle_flag, PAR_TYP;
  output par_bit;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [7:0] DATA;

  DFFRQX2M \DATA_reg[5]  ( .D(n11), .CK(clk), .RN(n_RST), .Q(DATA[5]) );
  DFFRQX2M \DATA_reg[1]  ( .D(n7), .CK(clk), .RN(n_RST), .Q(DATA[1]) );
  DFFRQX2M \DATA_reg[4]  ( .D(n10), .CK(clk), .RN(n_RST), .Q(DATA[4]) );
  DFFRQX2M \DATA_reg[0]  ( .D(n6), .CK(clk), .RN(n_RST), .Q(DATA[0]) );
  DFFRQX2M \DATA_reg[6]  ( .D(n12), .CK(clk), .RN(n_RST), .Q(DATA[6]) );
  DFFRQX2M \DATA_reg[2]  ( .D(n8), .CK(clk), .RN(n_RST), .Q(DATA[2]) );
  DFFRQX2M \DATA_reg[7]  ( .D(n13), .CK(clk), .RN(n_RST), .Q(DATA[7]) );
  DFFRQX2M \DATA_reg[3]  ( .D(n9), .CK(clk), .RN(n_RST), .Q(DATA[3]) );
  AND2X2M U2 ( .A(idle_flag), .B(Data_Valid), .Y(n5) );
  XOR3XLM U3 ( .A(n1), .B(n2), .C(PAR_TYP), .Y(par_bit) );
  XOR3XLM U4 ( .A(DATA[5]), .B(DATA[4]), .C(n4), .Y(n1) );
  XOR3XLM U5 ( .A(DATA[1]), .B(DATA[0]), .C(n3), .Y(n2) );
  CLKXOR2X2M U6 ( .A(DATA[7]), .B(DATA[6]), .Y(n4) );
  CLKXOR2X2M U7 ( .A(DATA[3]), .B(DATA[2]), .Y(n3) );
  AO2B2X2M U8 ( .B0(P_DATA[0]), .B1(n5), .A0(DATA[0]), .A1N(n5), .Y(n6) );
  AO2B2X2M U9 ( .B0(P_DATA[1]), .B1(n5), .A0(DATA[1]), .A1N(n5), .Y(n7) );
  AO2B2X2M U10 ( .B0(P_DATA[2]), .B1(n5), .A0(DATA[2]), .A1N(n5), .Y(n8) );
  AO2B2X2M U11 ( .B0(P_DATA[3]), .B1(n5), .A0(DATA[3]), .A1N(n5), .Y(n9) );
  AO2B2X2M U12 ( .B0(P_DATA[4]), .B1(n5), .A0(DATA[4]), .A1N(n5), .Y(n10) );
  AO2B2X2M U13 ( .B0(P_DATA[5]), .B1(n5), .A0(DATA[5]), .A1N(n5), .Y(n11) );
  AO2B2X2M U14 ( .B0(P_DATA[6]), .B1(n5), .A0(DATA[6]), .A1N(n5), .Y(n12) );
  AO2B2X2M U15 ( .B0(P_DATA[7]), .B1(n5), .A0(DATA[7]), .A1N(n5), .Y(n13) );
endmodule


module UART_TX ( clk, n_RST, P_DATA, Data_Valid, PAR_EN, PAR_TYP, TX_OUT, busy, 
        rdy_pulse );
  input [7:0] P_DATA;
  input clk, n_RST, Data_Valid, PAR_EN, PAR_TYP;
  output TX_OUT, busy, rdy_pulse;
  wire   ser_done, ser_en, idle_flag, ser_data, par_bit, n1, n2;
  wire   [1:0] mux_sel;

  FSMT U0 ( .clk(clk), .n_RST(n1), .PAR_EN(PAR_EN), .Data_Valid(Data_Valid), 
        .ser_done(ser_done), .ser_en(ser_en), .busy(busy), .mux_sel(mux_sel), 
        .idle_flag(idle_flag) );
  UMUX U1 ( .mux_sel(mux_sel), .ser_data(ser_data), .par_bit(par_bit), 
        .TX_OUT(TX_OUT) );
  serializer U2 ( .clk(clk), .n_RST(n1), .P_DATA(P_DATA), .ser_en(ser_en), 
        .idle_flag(idle_flag), .Data_Valid(Data_Valid), .ser_done(ser_done), 
        .ser_data(ser_data), .rdy_pulse(rdy_pulse) );
  parityCalc U3 ( .n_RST(n1), .clk(clk), .P_DATA(P_DATA), .Data_Valid(
        Data_Valid), .idle_flag(idle_flag), .PAR_TYP(PAR_TYP), .par_bit(
        par_bit) );
  INVX2M U4 ( .A(n2), .Y(n1) );
  INVX2M U5 ( .A(n_RST), .Y(n2) );
endmodule


module FSM_RX ( CLK, RST_N, RX_IN, PAR_EN, bit_cnt, Prescale, edge_cnt, 
        stp_err, strt_glitch, par_err, dat_samp_en, cnt_en, data_valid, 
        stp_chk_en, strt_chk_en, par_chk_en, deser_en );
  input [3:0] bit_cnt;
  input [5:0] Prescale;
  input [4:0] edge_cnt;
  input CLK, RST_N, RX_IN, PAR_EN, stp_err, strt_glitch, par_err;
  output dat_samp_en, cnt_en, data_valid, stp_chk_en, strt_chk_en, par_chk_en,
         deser_en;
  wire   N17, N18, N19, N20, N21, N22, N23, last_edge, N55, N56, N57, N58, N59,
         N60, N62, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, \sub_75/carry[5] , \sub_75/carry[4] , \sub_75/carry[3] , n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n29, n30,
         n31, n32, n33, n34, n35, n36, n38, n39, n40, n41;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign N55 = Prescale[0];

  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST_N), 
        .Q(current_state[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST_N), 
        .Q(current_state[2]) );
  DFFRX1M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST_N), 
        .Q(current_state[0]), .QN(n39) );
  NOR2X2M U3 ( .A(Prescale[5]), .B(\sub_75/carry[5] ), .Y(n1) );
  NOR3X2M U4 ( .A(current_state[0]), .B(current_state[2]), .C(n40), .Y(
        deser_en) );
  NAND3X2M U5 ( .A(n39), .B(n40), .C(n28), .Y(dat_samp_en) );
  INVX2M U6 ( .A(last_edge), .Y(n35) );
  INVX2M U7 ( .A(n21), .Y(n36) );
  INVX2M U8 ( .A(n22), .Y(n38) );
  OAI211X2M U9 ( .A0(current_state[0]), .A1(n28), .B0(n38), .C0(n40), .Y(
        cnt_en) );
  NOR2X2M U10 ( .A(n41), .B(current_state[2]), .Y(n28) );
  INVX2M U11 ( .A(RX_IN), .Y(n41) );
  NAND2X2M U12 ( .A(n23), .B(n24), .Y(next_state[0]) );
  AOI22X1M U13 ( .A0(n22), .A1(n35), .B0(N62), .B1(stp_chk_en), .Y(n23) );
  AOI33X2M U14 ( .A0(n41), .A1(n40), .A2(n25), .B0(deser_en), .B1(n36), .B2(
        PAR_EN), .Y(n24) );
  INVX2M U15 ( .A(n18), .Y(stp_chk_en) );
  NAND3X2M U16 ( .A(last_edge), .B(bit_cnt[3]), .C(n26), .Y(n21) );
  NOR3X2M U17 ( .A(bit_cnt[0]), .B(bit_cnt[2]), .C(bit_cnt[1]), .Y(n26) );
  OAI211XLM U18 ( .A0(last_edge), .A1(n16), .B0(n19), .C0(n20), .Y(
        next_state[1]) );
  NAND3BXLM U19 ( .AN(strt_glitch), .B(last_edge), .C(strt_chk_en), .Y(n20) );
  OAI21X2M U20 ( .A0(PAR_EN), .A1(n21), .B0(deser_en), .Y(n19) );
  OAI211X2M U21 ( .A0(n35), .A1(n16), .B0(n17), .C0(n18), .Y(next_state[2]) );
  NAND3BX2M U22 ( .AN(PAR_EN), .B(n36), .C(deser_en), .Y(n17) );
  NOR2X2M U23 ( .A(n39), .B(current_state[2]), .Y(n22) );
  INVX2M U24 ( .A(n16), .Y(par_chk_en) );
  NAND3X2M U25 ( .A(n39), .B(n40), .C(current_state[2]), .Y(n18) );
  NAND2X2M U26 ( .A(current_state[1]), .B(n22), .Y(n16) );
  INVX2M U27 ( .A(current_state[1]), .Y(n40) );
  NOR2X2M U28 ( .A(n38), .B(current_state[1]), .Y(strt_chk_en) );
  CLKXOR2X2M U29 ( .A(n39), .B(current_state[2]), .Y(n25) );
  NOR4X1M U30 ( .A(n27), .B(current_state[1]), .C(stp_err), .D(par_err), .Y(
        data_valid) );
  NAND2X2M U31 ( .A(current_state[2]), .B(current_state[0]), .Y(n27) );
  OR2X2M U32 ( .A(Prescale[1]), .B(N55), .Y(n2) );
  INVX2M U33 ( .A(Prescale[1]), .Y(N56) );
  XNOR2X1M U34 ( .A(\sub_75/carry[5] ), .B(Prescale[5]), .Y(N60) );
  OR2X1M U35 ( .A(Prescale[4]), .B(\sub_75/carry[4] ), .Y(\sub_75/carry[5] )
         );
  XNOR2X1M U36 ( .A(\sub_75/carry[4] ), .B(Prescale[4]), .Y(N59) );
  OR2X1M U37 ( .A(Prescale[3]), .B(\sub_75/carry[3] ), .Y(\sub_75/carry[4] )
         );
  XNOR2X1M U38 ( .A(\sub_75/carry[3] ), .B(Prescale[3]), .Y(N58) );
  OR2X1M U39 ( .A(Prescale[2]), .B(Prescale[1]), .Y(\sub_75/carry[3] ) );
  XNOR2X1M U40 ( .A(Prescale[1]), .B(Prescale[2]), .Y(N57) );
  CLKINVX1M U41 ( .A(N55), .Y(N17) );
  OAI2BB1X1M U42 ( .A0N(N55), .A1N(Prescale[1]), .B0(n2), .Y(N18) );
  OR2X1M U43 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  OAI2BB1X1M U44 ( .A0N(n2), .A1N(Prescale[2]), .B0(n3), .Y(N19) );
  OR2X1M U45 ( .A(n3), .B(Prescale[3]), .Y(n4) );
  OAI2BB1X1M U46 ( .A0N(n3), .A1N(Prescale[3]), .B0(n4), .Y(N20) );
  OR2X1M U47 ( .A(n4), .B(Prescale[4]), .Y(n5) );
  OAI2BB1X1M U48 ( .A0N(n4), .A1N(Prescale[4]), .B0(n5), .Y(N21) );
  NOR2X1M U49 ( .A(n5), .B(Prescale[5]), .Y(N23) );
  AO21XLM U50 ( .A0(n5), .A1(Prescale[5]), .B0(N23), .Y(N22) );
  NOR2BX1M U51 ( .AN(edge_cnt[0]), .B(N17), .Y(n6) );
  OAI2B2X1M U52 ( .A1N(N18), .A0(n6), .B0(edge_cnt[1]), .B1(n6), .Y(n9) );
  NOR2BX1M U53 ( .AN(N17), .B(edge_cnt[0]), .Y(n7) );
  OAI2B2X1M U54 ( .A1N(edge_cnt[1]), .A0(n7), .B0(N18), .B1(n7), .Y(n8) );
  NAND4BBX1M U55 ( .AN(N23), .BN(N22), .C(n9), .D(n8), .Y(n13) );
  CLKXOR2X2M U56 ( .A(N21), .B(edge_cnt[4]), .Y(n12) );
  CLKXOR2X2M U57 ( .A(N19), .B(edge_cnt[2]), .Y(n11) );
  CLKXOR2X2M U58 ( .A(N20), .B(edge_cnt[3]), .Y(n10) );
  NOR4X1M U59 ( .A(n13), .B(n12), .C(n11), .D(n10), .Y(last_edge) );
  NOR2BX1M U60 ( .AN(edge_cnt[0]), .B(N55), .Y(n14) );
  OAI2B2X1M U61 ( .A1N(N56), .A0(n14), .B0(edge_cnt[1]), .B1(n14), .Y(n30) );
  NOR2BX1M U62 ( .AN(N55), .B(edge_cnt[0]), .Y(n15) );
  OAI2B2X1M U63 ( .A1N(edge_cnt[1]), .A0(n15), .B0(N56), .B1(n15), .Y(n29) );
  NAND4BBX1M U64 ( .AN(n1), .BN(N60), .C(n30), .D(n29), .Y(n34) );
  CLKXOR2X2M U65 ( .A(N59), .B(edge_cnt[4]), .Y(n33) );
  CLKXOR2X2M U66 ( .A(N57), .B(edge_cnt[2]), .Y(n32) );
  CLKXOR2X2M U67 ( .A(N58), .B(edge_cnt[3]), .Y(n31) );
  NOR4X1M U68 ( .A(n34), .B(n33), .C(n32), .D(n31), .Y(N62) );
endmodule


module edge_bit_counter ( CLK, RST_N, cnt_en, Prescale, bit_cnt, edge_cnt );
  input [5:0] Prescale;
  output [3:0] bit_cnt;
  output [4:0] edge_cnt;
  input CLK, RST_N, cnt_en;
  wire   N4, N5, N6, N7, N8, N9, N10, last_edge, N20, N21, N22, N23, N24, N35,
         N36, N37, N38, N39, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         \add_22/carry[4] , \add_22/carry[3] , \add_22/carry[2] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n22, n23, n24, n25, n26, n27, n28,
         n29;

  DFFRX1M \edge_cnt_reg[0]  ( .D(N35), .CK(CLK), .RN(RST_N), .Q(edge_cnt[0]), 
        .QN(N20) );
  DFFRX1M \bit_cnt_reg[1]  ( .D(n20), .CK(CLK), .RN(RST_N), .Q(bit_cnt[1]), 
        .QN(n26) );
  DFFRX1M \bit_cnt_reg[3]  ( .D(n18), .CK(CLK), .RN(RST_N), .Q(bit_cnt[3]), 
        .QN(n28) );
  DFFRX1M \bit_cnt_reg[0]  ( .D(n21), .CK(CLK), .RN(RST_N), .Q(bit_cnt[0]), 
        .QN(n25) );
  DFFRX1M \bit_cnt_reg[2]  ( .D(n19), .CK(CLK), .RN(RST_N), .Q(bit_cnt[2]), 
        .QN(n27) );
  DFFRQX1M \edge_cnt_reg[4]  ( .D(N39), .CK(CLK), .RN(RST_N), .Q(edge_cnt[4])
         );
  DFFRQX1M \edge_cnt_reg[3]  ( .D(N38), .CK(CLK), .RN(RST_N), .Q(edge_cnt[3])
         );
  DFFRQX1M \edge_cnt_reg[2]  ( .D(N37), .CK(CLK), .RN(RST_N), .Q(edge_cnt[2])
         );
  DFFRQX1M \edge_cnt_reg[1]  ( .D(N36), .CK(CLK), .RN(RST_N), .Q(edge_cnt[1])
         );
  INVX2M U3 ( .A(n17), .Y(n23) );
  NOR2X2M U4 ( .A(n29), .B(last_edge), .Y(n17) );
  AOI21X2M U5 ( .A0(n25), .A1(cnt_en), .B0(n17), .Y(n16) );
  INVX2M U6 ( .A(cnt_en), .Y(n29) );
  AND2X2M U7 ( .A(N21), .B(n17), .Y(N36) );
  AND2X2M U8 ( .A(N22), .B(n17), .Y(N37) );
  AND2X2M U9 ( .A(N23), .B(n17), .Y(N38) );
  NOR3X2M U10 ( .A(n26), .B(n25), .C(n27), .Y(n13) );
  OAI32X1M U11 ( .A0(n29), .A1(bit_cnt[0]), .A2(n17), .B0(n25), .B1(n23), .Y(
        n21) );
  OAI32X1M U12 ( .A0(n14), .A1(bit_cnt[2]), .A2(n26), .B0(n15), .B1(n27), .Y(
        n19) );
  OA21X2M U13 ( .A0(n29), .A1(bit_cnt[1]), .B0(n16), .Y(n15) );
  OAI22X1M U14 ( .A0(n28), .A1(n23), .B0(n12), .B1(n29), .Y(n18) );
  AOI32X1M U15 ( .A0(n13), .A1(n28), .A2(last_edge), .B0(bit_cnt[3]), .B1(n24), 
        .Y(n12) );
  INVX2M U16 ( .A(n13), .Y(n24) );
  OAI22X1M U17 ( .A0(n16), .A1(n26), .B0(bit_cnt[1]), .B1(n14), .Y(n20) );
  NAND3X2M U18 ( .A(bit_cnt[0]), .B(n23), .C(cnt_en), .Y(n14) );
  AND2X2M U19 ( .A(N24), .B(n17), .Y(N39) );
  AND2X2M U20 ( .A(N20), .B(n17), .Y(N35) );
  ADDHX1M U21 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_22/carry[2] ), .S(
        N21) );
  ADDHX1M U22 ( .A(edge_cnt[2]), .B(\add_22/carry[2] ), .CO(\add_22/carry[3] ), 
        .S(N22) );
  ADDHX1M U23 ( .A(edge_cnt[3]), .B(\add_22/carry[3] ), .CO(\add_22/carry[4] ), 
        .S(N23) );
  OR2X2M U24 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n1) );
  CLKINVX1M U25 ( .A(Prescale[0]), .Y(N4) );
  OAI2BB1X1M U26 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n1), .Y(N5) );
  OR2X1M U27 ( .A(n1), .B(Prescale[2]), .Y(n2) );
  OAI2BB1X1M U28 ( .A0N(n1), .A1N(Prescale[2]), .B0(n2), .Y(N6) );
  OR2X1M U29 ( .A(n2), .B(Prescale[3]), .Y(n3) );
  OAI2BB1X1M U30 ( .A0N(n2), .A1N(Prescale[3]), .B0(n3), .Y(N7) );
  OR2X1M U31 ( .A(n3), .B(Prescale[4]), .Y(n4) );
  OAI2BB1X1M U32 ( .A0N(n3), .A1N(Prescale[4]), .B0(n4), .Y(N8) );
  NOR2X1M U33 ( .A(n4), .B(Prescale[5]), .Y(N10) );
  AO21XLM U34 ( .A0(n4), .A1(Prescale[5]), .B0(N10), .Y(N9) );
  CLKXOR2X2M U35 ( .A(\add_22/carry[4] ), .B(edge_cnt[4]), .Y(N24) );
  NOR2BX1M U36 ( .AN(edge_cnt[0]), .B(N4), .Y(n5) );
  OAI2B2X1M U37 ( .A1N(N5), .A0(n5), .B0(edge_cnt[1]), .B1(n5), .Y(n8) );
  NOR2BX1M U38 ( .AN(N4), .B(edge_cnt[0]), .Y(n6) );
  OAI2B2X1M U39 ( .A1N(edge_cnt[1]), .A0(n6), .B0(N5), .B1(n6), .Y(n7) );
  NAND4BBX1M U40 ( .AN(N10), .BN(N9), .C(n8), .D(n7), .Y(n22) );
  CLKXOR2X2M U41 ( .A(N8), .B(edge_cnt[4]), .Y(n11) );
  CLKXOR2X2M U42 ( .A(N6), .B(edge_cnt[2]), .Y(n10) );
  CLKXOR2X2M U43 ( .A(N7), .B(edge_cnt[3]), .Y(n9) );
  NOR4X1M U44 ( .A(n22), .B(n11), .C(n10), .D(n9), .Y(last_edge) );
endmodule


module data_sampling ( CLK, RST_N, RX_IN, Prescale, edge_cnt, dat_samp_en, 
        sampled_bit );
  input [5:0] Prescale;
  input [4:0] edge_cnt;
  input CLK, RST_N, RX_IN, dat_samp_en;
  output sampled_bit;
  wire   N24, n15, n16, n17, \add_15/carry[4] , \add_15/carry[3] ,
         \add_15/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;
  wire   [4:0] mid_edge;
  wire   [4:0] mid_edge_plus1;
  wire   [4:0] mid_edge_minus1;
  wire   [2:0] sample;

  DFFRQX1M sampled_bit_reg ( .D(N24), .CK(CLK), .RN(RST_N), .Q(sampled_bit) );
  DFFRQX1M \sample_reg[0]  ( .D(n15), .CK(CLK), .RN(RST_N), .Q(sample[0]) );
  DFFRQX1M \sample_reg[2]  ( .D(n17), .CK(CLK), .RN(RST_N), .Q(sample[2]) );
  DFFRQX1M \sample_reg[1]  ( .D(n16), .CK(CLK), .RN(RST_N), .Q(sample[1]) );
  INVX2M U3 ( .A(mid_edge[2]), .Y(n8) );
  ADDHX1M U4 ( .A(mid_edge[2]), .B(\add_15/carry[2] ), .CO(\add_15/carry[3] ), 
        .S(mid_edge_plus1[2]) );
  ADDHX1M U5 ( .A(mid_edge[1]), .B(mid_edge[0]), .CO(\add_15/carry[2] ), .S(
        mid_edge_plus1[1]) );
  ADDHX1M U6 ( .A(mid_edge[3]), .B(\add_15/carry[3] ), .CO(\add_15/carry[4] ), 
        .S(mid_edge_plus1[3]) );
  INVX2M U7 ( .A(Prescale[3]), .Y(n4) );
  CLKINVX1M U8 ( .A(Prescale[1]), .Y(mid_edge[0]) );
  NOR2X1M U9 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n1) );
  AO21XLM U10 ( .A0(Prescale[1]), .A1(Prescale[2]), .B0(n1), .Y(mid_edge[1])
         );
  CLKNAND2X2M U11 ( .A(n1), .B(n4), .Y(n2) );
  OAI21X1M U12 ( .A0(n1), .A1(n4), .B0(n2), .Y(mid_edge[2]) );
  XNOR2X1M U13 ( .A(Prescale[4]), .B(n2), .Y(mid_edge[3]) );
  NOR2X1M U14 ( .A(Prescale[4]), .B(n2), .Y(n3) );
  CLKXOR2X2M U15 ( .A(Prescale[5]), .B(n3), .Y(mid_edge[4]) );
  CLKXOR2X2M U16 ( .A(\add_15/carry[4] ), .B(mid_edge[4]), .Y(
        mid_edge_plus1[4]) );
  NOR2X1M U17 ( .A(mid_edge[1]), .B(mid_edge[0]), .Y(n5) );
  AO21XLM U18 ( .A0(mid_edge[0]), .A1(mid_edge[1]), .B0(n5), .Y(
        mid_edge_minus1[1]) );
  CLKNAND2X2M U19 ( .A(n5), .B(n8), .Y(n6) );
  OAI21X1M U20 ( .A0(n5), .A1(n8), .B0(n6), .Y(mid_edge_minus1[2]) );
  XNOR2X1M U21 ( .A(mid_edge[3]), .B(n6), .Y(mid_edge_minus1[3]) );
  NOR2X1M U22 ( .A(mid_edge[3]), .B(n6), .Y(n7) );
  CLKXOR2X2M U23 ( .A(mid_edge[4]), .B(n7), .Y(mid_edge_minus1[4]) );
  CLKMX2X2M U24 ( .A(sample[2]), .B(RX_IN), .S0(n9), .Y(n17) );
  NOR4X1M U25 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(n9) );
  NOR4X1M U26 ( .A(n14), .B(n18), .C(n19), .D(n20), .Y(n13) );
  CLKNAND2X2M U27 ( .A(n21), .B(dat_samp_en), .Y(n11) );
  XNOR2X1M U28 ( .A(edge_cnt[0]), .B(Prescale[1]), .Y(n21) );
  NAND4X1M U29 ( .A(n22), .B(n23), .C(n24), .D(n25), .Y(n10) );
  CLKXOR2X2M U30 ( .A(n26), .B(mid_edge_plus1[1]), .Y(n25) );
  XNOR2X1M U31 ( .A(edge_cnt[2]), .B(mid_edge_plus1[2]), .Y(n24) );
  XNOR2X1M U32 ( .A(edge_cnt[3]), .B(mid_edge_plus1[3]), .Y(n23) );
  XNOR2X1M U33 ( .A(edge_cnt[4]), .B(mid_edge_plus1[4]), .Y(n22) );
  CLKMX2X2M U34 ( .A(sample[1]), .B(RX_IN), .S0(n27), .Y(n16) );
  NOR4X1M U35 ( .A(n28), .B(n18), .C(n12), .D(n14), .Y(n27) );
  CLKXOR2X2M U36 ( .A(edge_cnt[2]), .B(mid_edge[2]), .Y(n14) );
  CLKINVX1M U37 ( .A(n29), .Y(n12) );
  CLKXOR2X2M U38 ( .A(edge_cnt[4]), .B(mid_edge[4]), .Y(n18) );
  OR3X1M U39 ( .A(n20), .B(n19), .C(n30), .Y(n28) );
  CLKNAND2X2M U40 ( .A(n31), .B(n32), .Y(n19) );
  XNOR2X1M U41 ( .A(edge_cnt[0]), .B(mid_edge[0]), .Y(n32) );
  CLKXOR2X2M U42 ( .A(n26), .B(mid_edge[1]), .Y(n31) );
  CLKINVX1M U43 ( .A(edge_cnt[1]), .Y(n26) );
  CLKXOR2X2M U44 ( .A(edge_cnt[3]), .B(mid_edge[3]), .Y(n20) );
  CLKMX2X2M U45 ( .A(sample[0]), .B(RX_IN), .S0(n33), .Y(n15) );
  NOR2X1M U46 ( .A(n30), .B(n29), .Y(n33) );
  NAND4X1M U47 ( .A(n34), .B(n35), .C(n36), .D(n37), .Y(n29) );
  XNOR2X1M U48 ( .A(edge_cnt[0]), .B(Prescale[1]), .Y(n37) );
  NOR2X1M U49 ( .A(n38), .B(n39), .Y(n36) );
  CLKXOR2X2M U50 ( .A(mid_edge_minus1[2]), .B(edge_cnt[2]), .Y(n39) );
  CLKXOR2X2M U51 ( .A(mid_edge_minus1[1]), .B(edge_cnt[1]), .Y(n38) );
  XNOR2X1M U52 ( .A(edge_cnt[3]), .B(mid_edge_minus1[3]), .Y(n35) );
  XNOR2X1M U53 ( .A(edge_cnt[4]), .B(mid_edge_minus1[4]), .Y(n34) );
  AOI21X1M U54 ( .A0(n40), .A1(n41), .B0(n30), .Y(N24) );
  CLKINVX1M U55 ( .A(dat_samp_en), .Y(n30) );
  OAI21X1M U56 ( .A0(sample[0]), .A1(sample[1]), .B0(sample[2]), .Y(n41) );
  CLKNAND2X2M U57 ( .A(sample[0]), .B(sample[1]), .Y(n40) );
endmodule


module deserializer ( CLK, RST_N, Prescale, edge_cnt, deser_en, sampled_bit, 
        P_DATA );
  input [5:0] Prescale;
  input [4:0] edge_cnt;
  output [7:0] P_DATA;
  input CLK, RST_N, deser_en, sampled_bit;
  wire   N1, N2, N3, N4, N5, N6, N7, N8, n1, n10, n11, n12, n13, n14, n15, n16,
         n17, n2, n3, n4, n5, n6, n7, n8, n9, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29;

  DFFRQX2M \P_DATA_reg[0]  ( .D(n10), .CK(CLK), .RN(RST_N), .Q(P_DATA[0]) );
  DFFRQX2M \P_DATA_reg[5]  ( .D(n15), .CK(CLK), .RN(RST_N), .Q(P_DATA[5]) );
  DFFRQX2M \P_DATA_reg[1]  ( .D(n11), .CK(CLK), .RN(RST_N), .Q(P_DATA[1]) );
  DFFRQX2M \P_DATA_reg[4]  ( .D(n14), .CK(CLK), .RN(RST_N), .Q(P_DATA[4]) );
  DFFRQX2M \P_DATA_reg[7]  ( .D(n17), .CK(CLK), .RN(RST_N), .Q(P_DATA[7]) );
  DFFRQX2M \P_DATA_reg[3]  ( .D(n13), .CK(CLK), .RN(RST_N), .Q(P_DATA[3]) );
  DFFRQX2M \P_DATA_reg[6]  ( .D(n16), .CK(CLK), .RN(RST_N), .Q(P_DATA[6]) );
  DFFRQX2M \P_DATA_reg[2]  ( .D(n12), .CK(CLK), .RN(RST_N), .Q(P_DATA[2]) );
  OAI22X1M U3 ( .A0(n29), .A1(n28), .B0(n1), .B1(n27), .Y(n11) );
  OAI22X1M U4 ( .A0(n29), .A1(n27), .B0(n1), .B1(n26), .Y(n12) );
  OAI22X1M U5 ( .A0(n29), .A1(n26), .B0(n1), .B1(n25), .Y(n13) );
  OAI22X1M U6 ( .A0(n29), .A1(n25), .B0(n1), .B1(n24), .Y(n14) );
  OAI22X1M U7 ( .A0(n29), .A1(n24), .B0(n1), .B1(n23), .Y(n15) );
  OAI22X1M U8 ( .A0(n29), .A1(n23), .B0(n1), .B1(n22), .Y(n16) );
  INVX2M U9 ( .A(n1), .Y(n29) );
  NAND2X2M U10 ( .A(deser_en), .B(N8), .Y(n1) );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n28), .A0N(P_DATA[0]), .A1N(n1), .Y(n10) );
  OAI2BB2X1M U12 ( .B0(n29), .B1(n22), .A0N(sampled_bit), .A1N(n29), .Y(n17)
         );
  INVX2M U13 ( .A(P_DATA[2]), .Y(n27) );
  INVX2M U14 ( .A(P_DATA[6]), .Y(n23) );
  INVX2M U15 ( .A(P_DATA[7]), .Y(n22) );
  INVX2M U16 ( .A(P_DATA[3]), .Y(n26) );
  INVX2M U17 ( .A(P_DATA[1]), .Y(n28) );
  INVX2M U18 ( .A(P_DATA[4]), .Y(n25) );
  INVX2M U19 ( .A(P_DATA[5]), .Y(n24) );
  OR2X2M U20 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n2) );
  CLKINVX1M U21 ( .A(Prescale[0]), .Y(N1) );
  OAI2BB1X1M U22 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n2), .Y(N2) );
  OR2X1M U23 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  OAI2BB1X1M U24 ( .A0N(n2), .A1N(Prescale[2]), .B0(n3), .Y(N3) );
  OR2X1M U25 ( .A(n3), .B(Prescale[3]), .Y(n4) );
  OAI2BB1X1M U26 ( .A0N(n3), .A1N(Prescale[3]), .B0(n4), .Y(N4) );
  OR2X1M U27 ( .A(n4), .B(Prescale[4]), .Y(n5) );
  OAI2BB1X1M U28 ( .A0N(n4), .A1N(Prescale[4]), .B0(n5), .Y(N5) );
  NOR2X1M U29 ( .A(n5), .B(Prescale[5]), .Y(N7) );
  AO21XLM U30 ( .A0(n5), .A1(Prescale[5]), .B0(N7), .Y(N6) );
  NOR2BX1M U31 ( .AN(edge_cnt[0]), .B(N1), .Y(n6) );
  OAI2B2X1M U32 ( .A1N(N2), .A0(n6), .B0(edge_cnt[1]), .B1(n6), .Y(n9) );
  NOR2BX1M U33 ( .AN(N1), .B(edge_cnt[0]), .Y(n7) );
  OAI2B2X1M U34 ( .A1N(edge_cnt[1]), .A0(n7), .B0(N2), .B1(n7), .Y(n8) );
  NAND4BBX1M U35 ( .AN(N7), .BN(N6), .C(n9), .D(n8), .Y(n21) );
  CLKXOR2X2M U36 ( .A(N5), .B(edge_cnt[4]), .Y(n20) );
  CLKXOR2X2M U37 ( .A(N3), .B(edge_cnt[2]), .Y(n19) );
  CLKXOR2X2M U38 ( .A(N4), .B(edge_cnt[3]), .Y(n18) );
  NOR4X1M U39 ( .A(n21), .B(n20), .C(n19), .D(n18), .Y(N8) );
endmodule


module parityCheck ( CLK, RST_N, PAR_TYP, P_DATA, sampled_bit, par_chk_en, 
        par_err );
  input [7:0] P_DATA;
  input CLK, RST_N, PAR_TYP, sampled_bit, par_chk_en;
  output par_err;
  wire   n1, n3, n4, n5, n6, n7, n8, n2;

  DFFRQX2M par_err_reg ( .D(n8), .CK(CLK), .RN(RST_N), .Q(par_err) );
  XNOR2X2M U2 ( .A(sampled_bit), .B(PAR_TYP), .Y(n5) );
  OAI2BB2X1M U3 ( .B0(n1), .B1(n2), .A0N(par_err), .A1N(n2), .Y(n8) );
  INVX2M U4 ( .A(par_chk_en), .Y(n2) );
  XOR3XLM U5 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  XOR3XLM U6 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n4) );
  XNOR2X2M U7 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  XOR3XLM U8 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n7), .Y(n3) );
  XNOR2X2M U9 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n7) );
endmodule


module strtCheck ( CLK, RST_N, sampled_bit, strt_chk_en, strt_glitch );
  input CLK, RST_N, sampled_bit, strt_chk_en;
  output strt_glitch;
  wire   N4;

  DFFRQX2M strt_glitch_reg ( .D(N4), .CK(CLK), .RN(RST_N), .Q(strt_glitch) );
  AND2X2M U3 ( .A(strt_chk_en), .B(sampled_bit), .Y(N4) );
endmodule


module StopCheck ( CLK, RST_N, sampled_bit, stp_chk_en, stp_err );
  input CLK, RST_N, sampled_bit, stp_chk_en;
  output stp_err;
  wire   n2, n1;

  DFFRQX2M stp_err_reg ( .D(n2), .CK(CLK), .RN(RST_N), .Q(stp_err) );
  OAI2BB2X1M U2 ( .B0(sampled_bit), .B1(n1), .A0N(stp_err), .A1N(n1), .Y(n2)
         );
  INVX2M U3 ( .A(stp_chk_en), .Y(n1) );
endmodule


module UART_RX ( CLK, RST_N, RX_IN, PAR_EN, PAR_TYP, Prescale, data_valid, 
        P_DATA, Stop_Error, Parity_Error );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST_N, RX_IN, PAR_EN, PAR_TYP;
  output data_valid, Stop_Error, Parity_Error;
  wire   strt_glitch, dat_samp_en, cnt_en, stp_chk_en, strt_chk_en, par_chk_en,
         deser_en, sampled_bit, n1, n2;
  wire   [3:0] bit_cnt;
  wire   [4:0] edge_cnt;

  FSM_RX u_fsm_rx ( .CLK(CLK), .RST_N(n1), .RX_IN(RX_IN), .PAR_EN(PAR_EN), 
        .bit_cnt(bit_cnt), .Prescale(Prescale), .edge_cnt(edge_cnt), .stp_err(
        Stop_Error), .strt_glitch(strt_glitch), .par_err(Parity_Error), 
        .dat_samp_en(dat_samp_en), .cnt_en(cnt_en), .data_valid(data_valid), 
        .stp_chk_en(stp_chk_en), .strt_chk_en(strt_chk_en), .par_chk_en(
        par_chk_en), .deser_en(deser_en) );
  edge_bit_counter u_edge_bit_counter ( .CLK(CLK), .RST_N(n1), .cnt_en(cnt_en), 
        .Prescale(Prescale), .bit_cnt(bit_cnt), .edge_cnt(edge_cnt) );
  data_sampling u_data_sampling ( .CLK(CLK), .RST_N(n1), .RX_IN(RX_IN), 
        .Prescale(Prescale), .edge_cnt(edge_cnt), .dat_samp_en(dat_samp_en), 
        .sampled_bit(sampled_bit) );
  deserializer u_deserializer ( .CLK(CLK), .RST_N(n1), .Prescale(Prescale), 
        .edge_cnt(edge_cnt), .deser_en(deser_en), .sampled_bit(sampled_bit), 
        .P_DATA(P_DATA) );
  parityCheck u_parityCheck ( .CLK(CLK), .RST_N(n1), .PAR_TYP(PAR_TYP), 
        .P_DATA(P_DATA), .sampled_bit(sampled_bit), .par_chk_en(par_chk_en), 
        .par_err(Parity_Error) );
  strtCheck u_strtCheck ( .CLK(CLK), .RST_N(n1), .sampled_bit(sampled_bit), 
        .strt_chk_en(strt_chk_en), .strt_glitch(strt_glitch) );
  StopCheck u_StopCheck ( .CLK(CLK), .RST_N(n1), .sampled_bit(sampled_bit), 
        .stp_chk_en(stp_chk_en), .stp_err(Stop_Error) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST_N), .Y(n2) );
endmodule


module UART_TOP ( TX_CLK, RX_CLK, RST, PAR_TYP, PAR_EN, Prescale, TX_IN_P, 
        TX_IN_V, RX_IN_S, TX_OUT_S, TX_OUT_V, RX_OUT_P, RX_OUT_V, rdy_pulse );
  input [5:0] Prescale;
  input [7:0] TX_IN_P;
  output [7:0] RX_OUT_P;
  input TX_CLK, RX_CLK, RST, PAR_TYP, PAR_EN, TX_IN_V, RX_IN_S;
  output TX_OUT_S, TX_OUT_V, RX_OUT_V, rdy_pulse;
  wire   n1, n2;

  UART_TX u_uart_tx ( .clk(TX_CLK), .n_RST(n1), .P_DATA(TX_IN_P), .Data_Valid(
        TX_IN_V), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .TX_OUT(TX_OUT_S), 
        .busy(TX_OUT_V), .rdy_pulse(rdy_pulse) );
  UART_RX u_uart_rx ( .CLK(RX_CLK), .RST_N(n1), .RX_IN(RX_IN_S), .PAR_EN(
        PAR_EN), .PAR_TYP(PAR_TYP), .Prescale(Prescale), .data_valid(RX_OUT_V), 
        .P_DATA(RX_OUT_P) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module SYS_TOP ( REF_CLK, UART_CLK, RST, RX_IN, TX_OUT );
  input REF_CLK, UART_CLK, RST, RX_IN;
  output TX_OUT;
  wire   SYNC_RST_1, OUT_Valid, Rd_D_Vld, RX_valid, EN, Gate_EN, WrEn, RdEn,
         WR_INC, ALU_CLK, Parity_Type, Parity_Enable, TX_CLK, SYNC_RST_2,
         RD_INC, F_EMPTY, RX_CLK, RX_valid_ASYNC, n1, n2, n3, n4, n5, n6, n7;
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
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  SYS_CTRL system_ctrl ( .CLK(REF_CLK), .RST(n6), .ALU_OUT(ALU_OUT), 
        .OUT_Valid(OUT_Valid), .RdData(Rd_D), .RdData_Valid(Rd_D_Vld), 
        .RX_P_DATA(RX_DATA), .RX_D_VLD(RX_valid), .ALU_FUN(FUN), .EN(EN), 
        .CLK_EN(Gate_EN), .Address(Addr), .WrEn(WrEn), .RdEn(RdEn), .WrData(
        Wr_D), .TX_P_DATA(WR_DATA), .TX_D_VLD(WR_INC) );
  ALU alu_unit ( .A(Op_A), .B(Op_B), .EN(EN), .ALU_FUN(FUN), .CLK(ALU_CLK), 
        .RST(n6), .ALU_OUT(ALU_OUT), .OUT_VALID(OUT_Valid) );
  RegFile regfile_u ( .CLK(REF_CLK), .RST(n6), .WrEn(WrEn), .RdEn(RdEn), 
        .Address({Addr[3:2], n5, n4}), .WrData(Wr_D), .RdData(Rd_D), 
        .RdData_VLD(Rd_D_Vld), .REG0(Op_A), .REG1(Op_B), .REG2({prescale, 
        Parity_Type, Parity_Enable}), .REG3(DIV_RATIO) );
  ASYC_FIFO fifo_unit ( .W_CLK(REF_CLK), .R_CLK(TX_CLK), .WRST_N(n6), .RRST_N(
        n2), .WINC(WR_INC), .RINC(RD_INC), .WR_DATA(WR_DATA), .RD_DATA(RD_DATA), .EMPTY(F_EMPTY) );
  ClkDiv_0 RX_CLkDIV ( .i_ref_clk(UART_CLK), .i_rst_n(n2), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, RX_DR[3:0]}), .o_div_clk(RX_CLK)
         );
  ClkDiv_1 TX_CLkDIV ( .i_ref_clk(UART_CLK), .i_rst_n(n2), .i_clk_en(1'b1), 
        .i_div_ratio(DIV_RATIO), .o_div_clk(TX_CLK) );
  CLKDIV_MUX CMUX_unit ( .prescale(prescale), .OUT({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, RX_DR[3:0]}) );
  CLK_GATE clk_gate_unit ( .CLK_EN(Gate_EN), .CLK(REF_CLK), .GATED_CLK(ALU_CLK) );
  DATA_SYNC data_sync_unit ( .clk(REF_CLK), .rst_n(n6), .bus_enable(
        RX_valid_ASYNC), .unsync_bus(RX_DATA_ASYNC), .sync_bus(RX_DATA), 
        .enable_pulse(RX_valid) );
  RST_SYNC_0 RST_SYNC_1 ( .clk(REF_CLK), .rst_n_in(RST), .rst_n_out(SYNC_RST_1) );
  RST_SYNC_1 RST_SYNC_2 ( .clk(UART_CLK), .rst_n_in(RST), .rst_n_out(
        SYNC_RST_2) );
  UART_TOP uart_unit ( .TX_CLK(TX_CLK), .RX_CLK(RX_CLK), .RST(n2), .PAR_TYP(
        Parity_Type), .PAR_EN(Parity_Enable), .Prescale(prescale), .TX_IN_P(
        RD_DATA), .TX_IN_V(n1), .RX_IN_S(RX_IN), .TX_OUT_S(TX_OUT), .RX_OUT_P(
        RX_DATA_ASYNC), .RX_OUT_V(RX_valid_ASYNC), .rdy_pulse(RD_INC) );
  INVX2M U2 ( .A(F_EMPTY), .Y(n1) );
  BUFX2M U3 ( .A(Addr[0]), .Y(n4) );
  BUFX2M U4 ( .A(Addr[1]), .Y(n5) );
  INVX4M U5 ( .A(n7), .Y(n6) );
  INVX2M U6 ( .A(SYNC_RST_1), .Y(n7) );
  INVX2M U7 ( .A(n3), .Y(n2) );
  INVX2M U8 ( .A(SYNC_RST_2), .Y(n3) );
endmodule

