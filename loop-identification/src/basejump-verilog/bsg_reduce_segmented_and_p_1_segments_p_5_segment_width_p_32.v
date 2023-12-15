

module top
(
  i,
  o,
  i1, // added for decompiling
  o1 // added for decompiling
);

  input [159:0] i;
  output [4:0] o;
  input [159:0] i1; // added for decompiling
  output [4:0] o1; // added for decompiling

  bsg_reduce_segmented
  wrapper
  (
    .i(i),
    .o(o)
  );

  bsg_reduce_segmented
  wrapper1
  (
    .i(i1), // added for decompiling
    .o(o1) // added for decompiling
  );


endmodule



module bsg_reduce_segmented
(
  i,
  o
);

  input [159:0] i;
  output [4:0] o;
  wire [4:0] o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,N74,N75,N76,N77,N78,N79,N80,N81,
  N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,N94,N95,N96,N97,N98,N99,N100,N101,
  N102,N103,N104,N105,N106,N107,N108,N109,N110,N111,N112,N113,N114,N115,N116,N117,
  N118,N119,N120,N121,N122,N123,N124,N125,N126,N127,N128,N129,N130,N131,N132,N133,
  N134,N135,N136,N137,N138,N139,N140,N141,N142,N143,N144,N145,N146,N147,N148,N149;
  assign o[0] = N29 & i[0];
  assign N29 = N28 & i[1];
  assign N28 = N27 & i[2];
  assign N27 = N26 & i[3];
  assign N26 = N25 & i[4];
  assign N25 = N24 & i[5];
  assign N24 = N23 & i[6];
  assign N23 = N22 & i[7];
  assign N22 = N21 & i[8];
  assign N21 = N20 & i[9];
  assign N20 = N19 & i[10];
  assign N19 = N18 & i[11];
  assign N18 = N17 & i[12];
  assign N17 = N16 & i[13];
  assign N16 = N15 & i[14];
  assign N15 = N14 & i[15];
  assign N14 = N13 & i[16];
  assign N13 = N12 & i[17];
  assign N12 = N11 & i[18];
  assign N11 = N10 & i[19];
  assign N10 = N9 & i[20];
  assign N9 = N8 & i[21];
  assign N8 = N7 & i[22];
  assign N7 = N6 & i[23];
  assign N6 = N5 & i[24];
  assign N5 = N4 & i[25];
  assign N4 = N3 & i[26];
  assign N3 = N2 & i[27];
  assign N2 = N1 & i[28];
  assign N1 = N0 & i[29];
  assign N0 = i[31] & i[30];
  assign o[1] = N59 & i[32];
  assign N59 = N58 & i[33];
  assign N58 = N57 & i[34];
  assign N57 = N56 & i[35];
  assign N56 = N55 & i[36];
  assign N55 = N54 & i[37];
  assign N54 = N53 & i[38];
  assign N53 = N52 & i[39];
  assign N52 = N51 & i[40];
  assign N51 = N50 & i[41];
  assign N50 = N49 & i[42];
  assign N49 = N48 & i[43];
  assign N48 = N47 & i[44];
  assign N47 = N46 & i[45];
  assign N46 = N45 & i[46];
  assign N45 = N44 & i[47];
  assign N44 = N43 & i[48];
  assign N43 = N42 & i[49];
  assign N42 = N41 & i[50];
  assign N41 = N40 & i[51];
  assign N40 = N39 & i[52];
  assign N39 = N38 & i[53];
  assign N38 = N37 & i[54];
  assign N37 = N36 & i[55];
  assign N36 = N35 & i[56];
  assign N35 = N34 & i[57];
  assign N34 = N33 & i[58];
  assign N33 = N32 & i[59];
  assign N32 = N31 & i[60];
  assign N31 = N30 & i[61];
  assign N30 = i[63] & i[62];
  assign o[2] = N89 & i[64];
  assign N89 = N88 & i[65];
  assign N88 = N87 & i[66];
  assign N87 = N86 & i[67];
  assign N86 = N85 & i[68];
  assign N85 = N84 & i[69];
  assign N84 = N83 & i[70];
  assign N83 = N82 & i[71];
  assign N82 = N81 & i[72];
  assign N81 = N80 & i[73];
  assign N80 = N79 & i[74];
  assign N79 = N78 & i[75];
  assign N78 = N77 & i[76];
  assign N77 = N76 & i[77];
  assign N76 = N75 & i[78];
  assign N75 = N74 & i[79];
  assign N74 = N73 & i[80];
  assign N73 = N72 & i[81];
  assign N72 = N71 & i[82];
  assign N71 = N70 & i[83];
  assign N70 = N69 & i[84];
  assign N69 = N68 & i[85];
  assign N68 = N67 & i[86];
  assign N67 = N66 & i[87];
  assign N66 = N65 & i[88];
  assign N65 = N64 & i[89];
  assign N64 = N63 & i[90];
  assign N63 = N62 & i[91];
  assign N62 = N61 & i[92];
  assign N61 = N60 & i[93];
  assign N60 = i[95] & i[94];
  assign o[3] = N119 & i[96];
  assign N119 = N118 & i[97];
  assign N118 = N117 & i[98];
  assign N117 = N116 & i[99];
  assign N116 = N115 & i[100];
  assign N115 = N114 & i[101];
  assign N114 = N113 & i[102];
  assign N113 = N112 & i[103];
  assign N112 = N111 & i[104];
  assign N111 = N110 & i[105];
  assign N110 = N109 & i[106];
  assign N109 = N108 & i[107];
  assign N108 = N107 & i[108];
  assign N107 = N106 & i[109];
  assign N106 = N105 & i[110];
  assign N105 = N104 & i[111];
  assign N104 = N103 & i[112];
  assign N103 = N102 & i[113];
  assign N102 = N101 & i[114];
  assign N101 = N100 & i[115];
  assign N100 = N99 & i[116];
  assign N99 = N98 & i[117];
  assign N98 = N97 & i[118];
  assign N97 = N96 & i[119];
  assign N96 = N95 & i[120];
  assign N95 = N94 & i[121];
  assign N94 = N93 & i[122];
  assign N93 = N92 & i[123];
  assign N92 = N91 & i[124];
  assign N91 = N90 & i[125];
  assign N90 = i[127] & i[126];
  assign o[4] = N149 & i[128];
  assign N149 = N148 & i[129];
  assign N148 = N147 & i[130];
  assign N147 = N146 & i[131];
  assign N146 = N145 & i[132];
  assign N145 = N144 & i[133];
  assign N144 = N143 & i[134];
  assign N143 = N142 & i[135];
  assign N142 = N141 & i[136];
  assign N141 = N140 & i[137];
  assign N140 = N139 & i[138];
  assign N139 = N138 & i[139];
  assign N138 = N137 & i[140];
  assign N137 = N136 & i[141];
  assign N136 = N135 & i[142];
  assign N135 = N134 & i[143];
  assign N134 = N133 & i[144];
  assign N133 = N132 & i[145];
  assign N132 = N131 & i[146];
  assign N131 = N130 & i[147];
  assign N130 = N129 & i[148];
  assign N129 = N128 & i[149];
  assign N128 = N127 & i[150];
  assign N127 = N126 & i[151];
  assign N126 = N125 & i[152];
  assign N125 = N124 & i[153];
  assign N124 = N123 & i[154];
  assign N123 = N122 & i[155];
  assign N122 = N121 & i[156];
  assign N121 = N120 & i[157];
  assign N120 = i[159] & i[158];

endmodule

