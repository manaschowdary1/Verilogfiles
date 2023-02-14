module fourtoonemux(y,s,a);
input [3:0]a;
input [1:0]s;
output y;
wire [2:1]f;

twotoone(f[1],a[0],a[1],s[0]);
twotoone(f[2],a[2],a[3],s[0]);
twotoone(y,f[2],f[1],s[1]);
endmodule