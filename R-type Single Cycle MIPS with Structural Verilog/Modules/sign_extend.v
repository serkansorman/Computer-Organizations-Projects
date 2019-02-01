module sign_extend(shamt, result);

input [4:0]shamt;
output [31:0] result;

buf (result[0],shamt[0]);
buf (result[1],shamt[1]);
buf (result[2],shamt[2]);
buf (result[3],shamt[3]);
buf (result[4],shamt[4]);
buf (result[5],1'b0);
buf (result[6],1'b0);
buf (result[7],1'b0);
buf (result[8],1'b0);
buf (result[9],1'b0);
buf (result[10],1'b0);
buf (result[11],1'b0);
buf (result[12],1'b0);
buf (result[13],1'b0);
buf (result[14],1'b0);
buf (result[15],1'b0);
buf (result[16],1'b0);
buf (result[17],1'b0);
buf (result[18],1'b0);
buf (result[19],1'b0);
buf (result[20],1'b0);
buf (result[21],1'b0);
buf (result[22],1'b0);
buf (result[23],1'b0);
buf (result[24],1'b0);
buf (result[25],1'b0);
buf (result[26],1'b0);
buf (result[27],1'b0);
buf (result[28],1'b0);
buf (result[29],1'b0);
buf (result[30],1'b0);
buf (result[31],1'b0);

endmodule