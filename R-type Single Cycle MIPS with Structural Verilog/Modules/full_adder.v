module full_adder(x,y,cin,A,cout);

input x;
input y;
input cin;
output A;
output cout;

wire w1,w2,w3;
xor(w1,x,y);
xor(A,w1,cin);
and(w2,w1,cin);
and(w3,x,y);
or(cout,w2,w3);
endmodule