module mips_core(instruction, result);

input [31:0] instruction;
wire [31:0] rs_content, rt_content, content1, content2, tempcontent1, tempcontent2;

wire [4:0] rs, rt, rd, shamt;
wire [5:0] op_code, func_field;
wire [31:0] extended_shamt, R, sltu_result;

output [31:0] result;
wire [2:0] Op;

//Opcode
buf (op_code[0], instruction[26]);
buf (op_code[1], instruction[27]);
buf (op_code[2], instruction[28]);
buf (op_code[3], instruction[29]);
buf (op_code[4], instruction[30]);
buf (op_code[5], instruction[31]);
//rs
buf (rs[0], instruction[21]);
buf (rs[1], instruction[22]);
buf (rs[2], instruction[23]);
buf (rs[3], instruction[24]);
buf (rs[4], instruction[25]);
//rt
buf (rt[0], instruction[16]);
buf (rt[1], instruction[17]);
buf (rt[2], instruction[18]);
buf (rt[3], instruction[19]);
buf (rt[4], instruction[20]);
//rd
buf (rd[0], instruction[11]);
buf (rd[1], instruction[12]);
buf (rd[2], instruction[13]);
buf (rd[3], instruction[14]);
buf (rd[4], instruction[15]);
//shamt
buf (shamt[0], instruction[6]);
buf (shamt[1], instruction[7]);
buf (shamt[2], instruction[8]);
buf (shamt[3], instruction[9]);
buf (shamt[4], instruction[10]);
//function code
buf (func_field[0], instruction[0]);
buf (func_field[1], instruction[1]);
buf (func_field[2], instruction[2]);
buf (func_field[3], instruction[3]);
buf (func_field[4], instruction[4]);
buf (func_field[5], instruction[5]);

//Get rs and rt contents
register_block rb(rs,rt,rd,R,rs_content,rt_content,1'b0,1'b0);
sign_extend se(shamt,extended_shamt);

//Set contents for shift operations
mux2x1_32 mu1(content1, rt_content, rs_content, func_field[5] );
mux2x1_32 mu2(content2, extended_shamt, rt_content, func_field[5]);

// Get 3 bit aluop and compute result in alu according to aluop
alu_control u1(func_field, Op);
alu32 u2(R, content1, content2, Op);

// Select result for sltu instruction
mux2x1_32 mu3(sltu_result,32'b0,32'b1,R[31]);
mux2x1_32 mux_sltu(result,R,sltu_result,func_field[3]);

//Write result to rd
register_block rb2(rs,rt,rd,result,tempcontent1,tempcontent2,1'b1,1'b1);


endmodule