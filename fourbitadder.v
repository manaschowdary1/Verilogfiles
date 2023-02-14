module fourbitadder(a,b,cin,s,cout);
input [3:0]a,[3:0]b;
input cin;
output [3:0]s;
output cout;
wire c[1],c[2],c[3];

fa stage0(a[0],b[0],cin,s[0],c[1]);
fa stage1(a[1],b[1],c[1],s[1],c[2]);
fa stage0(a[2],b[2],c[2],s[2],c[3]);
fa stage0(a[3],b[3],c[3],s[3],cout);
endmodule

