`define DELAY 10
module mips_testbench();

wire [31:0] R;
reg [31:0] instruction;

mips_core u1(instruction,R);

initial begin

instruction = 32'b00000000001000110100100000100000; // ADD R1 + R3 = 4 to R9
#`DELAY;
instruction = 32'b00000000010001000101000000100001; // ADDU R2 + R4 = 6 to R10
#`DELAY;
instruction = 32'b00000000111000100101100000100010; // SUB R7 - R2 = 5 to R11
#`DELAY;
instruction = 32'b00000000110000110110000000100011; // SUBU R6 - R3 = 3 to R12
#`DELAY;
instruction = 32'b00000000101001100110100000100100; // AND R5 R6 to R13
#`DELAY;
instruction = 32'b00000000101001100111000000100101; // OR R5 R6 to R14
#`DELAY;
instruction = 32'b00000000101001100111100000100111; // NOR R5 R6 to R15
#`DELAY;
instruction = 32'b00000000101001001000000010000010; // R4 >> 2 to R16
#`DELAY;
instruction = 32'b00000000101001111000100011000000; // R7 << 3 to R17
#`DELAY;
instruction = 32'b00000000010001101001000000101011; // SLTU R2 < R6 to R18

end

initial
begin
$monitor("time = %2d, Instruction = %32b, Result = %32b", $time, instruction, R);
end

endmodule