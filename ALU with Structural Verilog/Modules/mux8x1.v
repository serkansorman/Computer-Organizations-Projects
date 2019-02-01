module mux8x1(out, a, b, c, d, e, f, g, h, s);
output out;
input a, b, c, d, e, f, g, h;
input [2:0] s;
wire w1, w2;

mux4x1 mu1(w1, a, b, c, d, s[1], s[0]);
mux4x1 mu2(w2, e, f, g, h, s[1], s[0]);
mux2x1 mu3(out, w1, w2, s[2]);
endmodule