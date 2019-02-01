module xorop(Y, A, B);
   output [31:0] Y;  // Result.
   input [31:0]  A;  // Operand
   input [31:0]  B;  // Operand.

   xor(Y[0], A[0], B[0]);
   xor(Y[1], A[1], B[1]);
   xor(Y[2], A[2], B[2]);
   xor(Y[3], A[3], B[3]);
   xor(Y[4], A[4], B[4]);
   xor(Y[5], A[5], B[5]);
   xor(Y[6], A[6], B[6]);
   xor(Y[7], A[7], B[7]);
   xor(Y[8], A[8], B[8]);
   xor(Y[9], A[9], B[9]);
   xor(Y[10], A[10], B[10]);
   xor(Y[11], A[11], B[11]);
   xor(Y[12], A[12], B[12]);
   xor(Y[13], A[13], B[13]);
   xor(Y[14], A[14], B[14]);
	xor(Y[15], A[15], B[15]);
	xor(Y[16], A[16], B[16]);
	xor(Y[17], A[17], B[17]);
	xor(Y[18], A[18], B[18]);
	xor(Y[19], A[19], B[19]);
	xor(Y[20], A[20], B[20]);
	xor(Y[21], A[21], B[21]);
	xor(Y[22], A[22], B[22]);
	xor(Y[23], A[23], B[23]);
	xor(Y[24], A[24], B[24]);
	xor(Y[25], A[25], B[25]);
	xor(Y[26], A[26], B[26]);
	xor(Y[27], A[27], B[27]);
	xor(Y[28], A[28], B[28]);
	xor(Y[29], A[29], B[29]);
	xor(Y[30], A[30], B[30]);
	xor(Y[31], A[31], B[31]);
endmodule // xorop
