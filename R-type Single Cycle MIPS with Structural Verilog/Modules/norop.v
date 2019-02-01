module norop(Y, A, B);
   output [31:0] Y;  // Result.
   input [31:0]  A;  // Operand
   input [31:0]  B;  // Operand.

   nor(Y[0], A[0], B[0]);
   nor(Y[1], A[1], B[1]);
   nor(Y[2], A[2], B[2]);
   nor(Y[3], A[3], B[3]);
   nor(Y[4], A[4], B[4]);
   nor(Y[5], A[5], B[5]);
   nor(Y[6], A[6], B[6]);
   nor(Y[7], A[7], B[7]);
   nor(Y[8], A[8], B[8]);
   nor(Y[9], A[9], B[9]);
   nor(Y[10], A[10], B[10]);
   nor(Y[11], A[11], B[11]);
   nor(Y[12], A[12], B[12]);
   nor(Y[13], A[13], B[13]);
   nor(Y[14], A[14], B[14]);
	nor(Y[15], A[15], B[15]);
	nor(Y[16], A[16], B[16]);
	nor(Y[17], A[17], B[17]);
	nor(Y[18], A[18], B[18]);
	nor(Y[19], A[19], B[19]);
	nor(Y[20], A[20], B[20]);
	nor(Y[21], A[21], B[21]);
	nor(Y[22], A[22], B[22]);
	nor(Y[23], A[23], B[23]);
	nor(Y[24], A[24], B[24]);
	nor(Y[25], A[25], B[25]);
	nor(Y[26], A[26], B[26]);
	nor(Y[27], A[27], B[27]);
	nor(Y[28], A[28], B[28]);
	nor(Y[29], A[29], B[29]);
	nor(Y[30], A[30], B[30]);
	nor(Y[31], A[31], B[31]);
endmodule // norop
