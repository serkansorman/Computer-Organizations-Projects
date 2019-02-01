module zero_bit(Z, A);
   output Z;        // Result. 
   input [31:0]  A; // Operand.
   wire [31:0] 	 Y; // Temp result.
   
   xnor(Y[0], A[0], 1'b0);
   xnor(Y[1], A[1], 1'b0);
   xnor(Y[2], A[2], 1'b0);
   xnor(Y[3], A[3], 1'b0);
   xnor(Y[4], A[4], 1'b0);
   xnor(Y[5], A[5], 1'b0);
   xnor(Y[6], A[6], 1'b0);
   xnor(Y[7], A[7], 1'b0);
   xnor(Y[8], A[8], 1'b0);
   xnor(Y[9], A[9], 1'b0);
   xnor(Y[10], A[10], 1'b0);
   xnor(Y[11], A[11], 1'b0);
   xnor(Y[12], A[12], 1'b0);
   xnor(Y[13], A[13], 1'b0);
   xnor(Y[14], A[14], 1'b0);
   xnor(Y[15], A[15], 1'b0);
	xnor(Y[16], A[16], 1'b0);
	xnor(Y[17], A[17], 1'b0);
	xnor(Y[18], A[18], 1'b0);
	xnor(Y[19], A[19], 1'b0);
	xnor(Y[20], A[20], 1'b0);
	xnor(Y[21], A[21], 1'b0);
	xnor(Y[22], A[22], 1'b0);
	xnor(Y[23], A[23], 1'b0);
	xnor(Y[24], A[24], 1'b0);
	xnor(Y[25], A[25], 1'b0);
	xnor(Y[26], A[26], 1'b0);
	xnor(Y[27], A[27], 1'b0);
	xnor(Y[28], A[28], 1'b0);
	xnor(Y[29], A[29], 1'b0);
	xnor(Y[30], A[30], 1'b0);
	xnor(Y[31], A[31], 1'b0);

	
   and(Z, Y[0], Y[1], Y[2], Y[3], Y[4],
       Y[5], Y[6], Y[7], Y[8],
       Y[9], Y[10], Y[11], Y[12],
       Y[13], Y[14], Y[15], Y[16], Y[17], Y[18], Y[19],
		 Y[20],Y[21],Y[22],Y[23],Y[24],Y[25],Y[26],Y[27],
		 Y[28],Y[29],Y[30],Y[31]);
		 
endmodule