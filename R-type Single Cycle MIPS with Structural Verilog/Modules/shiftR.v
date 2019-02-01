module shiftR(R, A, B,S);

input [31:0]  A;  
input [31:0]  B; 
input S; 
output [31:0] R;

wire [31:0] reverseA,leftShiftedA;

reverse r1(reverseA,A);
shiftL sL(leftShiftedA,reverseA,B,S);
reverse r2(R,leftShiftedA);

endmodule