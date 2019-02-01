module alu32(R, A, B, Op, Zero,Overflow);
   input [31:0]  A;  
   input [31:0]  B;  
   input [2:0] Op;
	output [31:0] R;  // Result.
	output Zero,Overflow;
	
	wire cout, borrow,s1,s2,s3;
   wire [31:0] And, Or, Add, Xor, Sub, ShiftR, ShiftL, Nor; // Operations results
   
	andop aluand(And, A, B);
	orop aluor(Or, A, B);
	addop aluadd(Add, A, B, cout);
   xorop aluxor(Xor, A, B);
	subop alusub(Sub, A, B, borrow);
	shiftR aluShiftR(ShiftR, A, B);
	shiftL aluShiftL(ShiftL, A, B, 1'b0);
	norop  alunor(Nor, A, B);
	
	mux8x1_32 mux8(R, And, Or, Add, Xor, Sub, ShiftR, ShiftL, Nor, Op); // Select the result.
	
	// Enable Overflow bit only execute for Addition and Substraction
	xnor(s1,Op[2],Op[1]); 
	nor(s2,s1,Op[0]);  
	or(s3,cout,borrow); 
	and(Overflow,s2,s3);// Overflow bit
	
	zero_bit z(Zero,R); // Zero bit
endmodule 