module reverse(R, A);

input [31:0]  A; 
output [31:0]  R;

and(R[0],A[31],1'b1);
and(R[1],A[30],1'b1);
and(R[2],A[29],1'b1);
and(R[3],A[28],1'b1);
and(R[4],A[27],1'b1);
and(R[5],A[26],1'b1);
and(R[6],A[25],1'b1);
and(R[7],A[24],1'b1);
and(R[8],A[23],1'b1);
and(R[9],A[22],1'b1);
and(R[10],A[21],1'b1);
and(R[11],A[20],1'b1);
and(R[12],A[19],1'b1);
and(R[13],A[18],1'b1);
and(R[14],A[17],1'b1);
and(R[15],A[16],1'b1);
and(R[16],A[15],1'b1);
and(R[17],A[14],1'b1);
and(R[18],A[13],1'b1);
and(R[19],A[12],1'b1);
and(R[20],A[11],1'b1);
and(R[21],A[10],1'b1);
and(R[22],A[9],1'b1);
and(R[23],A[8],1'b1);
and(R[24],A[7],1'b1);
and(R[25],A[6],1'b1);
and(R[26],A[5],1'b1);
and(R[27],A[4],1'b1);
and(R[28],A[3],1'b1);
and(R[29],A[2],1'b1);
and(R[30],A[1],1'b1);
and(R[31],A[0],1'b1);

endmodule