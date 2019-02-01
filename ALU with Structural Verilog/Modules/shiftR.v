module shiftR(R, A, B);

input [31:0]  A;  
input [31:0]  B;  
output [31:0] R;

wire [31:0] reverseA,leftShiftedA;

reverse r1(reverseA,A);
shiftL sL(leftShiftedA,reverseA,B,A[31]);
reverse r2(R,leftShiftedA);

endmodule