module alu32(R, A, B, Op);
   input [31:0]  A;  
   input [31:0]  B;  
   input [2:0] Op;
	output [31:0] R;  // Result.
	wire shiftSelect;
	
	wire cout, borrow,s1,s2,s3;
   wire [31:0] And, Or, Add, Xor, Sub, ShiftR, ShiftL, Nor; // Operations results
   
	andop aluand(And, A, B);
	orop aluor(Or, A, B);
	addop aluadd(Add, A, B, cout);
   xorop aluxor(Xor, A, B);
	subop alusub(Sub, A, B, borrow);
	
	mux2x1 mu(shiftSelect, 1'b0, A[31], 1'b0);
	shiftR aluShiftR(ShiftR, A, B, shiftSelect);
	
	shiftL aluShiftL(ShiftL, A, B, 1'b0);
	norop  alunor(Nor, A, B);
	
	mux8x1_32 mux8(R, And, Or, Add, Xor, Sub, ShiftR, ShiftL, Nor, Op); // Select the result.
	
endmodule 