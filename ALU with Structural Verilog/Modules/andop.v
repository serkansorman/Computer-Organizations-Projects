module andop(Y, A, B);
   output [31:0] Y;  // Result.
   input [31:0]  A;  // Operand.
   input [31:0]  B;  // Operand.

   and(Y[0], A[0], B[0]);
   and(Y[1], A[1], B[1]);
   and(Y[2], A[2], B[2]);
   and(Y[3], A[3], B[3]);
   and(Y[4], A[4], B[4]);
   and(Y[5], A[5], B[5]);
   and(Y[6], A[6], B[6]);
   and(Y[7], A[7], B[7]);
   and(Y[8], A[8], B[8]);
   and(Y[9], A[9], B[9]);
   and(Y[10], A[10], B[10]);
   and(Y[11], A[11], B[11]);
   and(Y[12], A[12], B[12]);
   and(Y[13], A[13], B[13]);
   and(Y[14], A[14], B[14]);
	and(Y[15], A[15], B[15]);
	and(Y[16], A[16], B[16]);
	and(Y[17], A[17], B[17]);
	and(Y[18], A[18], B[18]);
	and(Y[19], A[19], B[19]);
	and(Y[20], A[20], B[20]);
	and(Y[21], A[21], B[21]);
	and(Y[22], A[22], B[22]);
	and(Y[23], A[23], B[23]);
	and(Y[24], A[24], B[24]);
	and(Y[25], A[25], B[25]);
	and(Y[26], A[26], B[26]);
	and(Y[27], A[27], B[27]);
	and(Y[28], A[28], B[28]);
	and(Y[29], A[29], B[29]);
	and(Y[30], A[30], B[30]);
	and(Y[31], A[31], B[31]);
endmodule // andop
