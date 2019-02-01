module mux4x1(out,i0,i1,i2,i3,s1,s0);
input i0,i1,i2,i3,s1,s0;
output out;
wire w1,w2;
mux2x1 mux_1(w1,i0,i1,s0);
mux2x1 mux_2(w2,i2,i3,s0);
mux2x1 mux_3(out,w1,w2,s1);
endmodule