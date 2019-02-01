module full_sub(a, b, cin, R, borrow);

input a,b,cin;
output R,borrow;
wire d,e,f,s;
not(s,a);

xor(R,a,b,cin);
and(d,s,b);
and(e,b,cin);
and(f,s,cin);
or(borrow,d,e,f);

endmodule