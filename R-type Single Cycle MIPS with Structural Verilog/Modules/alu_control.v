module alu_control(func_field, alu_op);

input [5:0] func_field;
output [2:0] alu_op;

wire w1,w2,w3,w4,w5,w6,w7;

not (w1,func_field[5]);
or (alu_op[2],w1,func_field[1]);

not(w2,func_field[1]);
not(w3,func_field[2]);
and(w4,w2,w3);
and (w5,func_field[1],func_field[2]);
or(alu_op[1],w4,w5);

and(w6,w1,func_field[1]);
and(w7,func_field[0],func_field[2]);
or(alu_op[0],w6,w7);

endmodule

