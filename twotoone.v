module twotoone(y,s,a,b);
input a,b;
input s;
output y;
assign y=((a&!s)|(b&s));
endmodule