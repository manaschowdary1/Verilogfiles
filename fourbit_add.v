module fourbit_add(s,c,y,a,b,m);
input [4:1]a,b;
input m;
output [4:1]s;
output [4:0]c;
output y;
wire [4:1]w;

assign w[1]=m^(b[1]);
assign w[2]=m^b[2];
assign w[3]=b[3]^m;

assign w[4]=b[4]^m;
assign c[0]=m;

fa2 d1(s[1],c[1],a[1],w[1],c[0]);


fa2 d2(s[2],c[2],a[2],w[2],c[1]);


fa2 d3(s[3],c[3],a[3],w[3],c[2]);

fa2 d4(s[4],c[4],a[4],w[4],c[3]);

assign y=c[4]^c[3];
endmodule