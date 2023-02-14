module fa(s,co,a,b,ci);
input a,b,ci;
output s,co;
assign s=a^b^ci;
assign c=((a^b)&ci)|(a&b);
endmodule