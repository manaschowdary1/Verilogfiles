module fpga_display(f,p,g,a,en);
input en;
output reg [6:0]f,p,g,a;

always@(en)

if (en==1)
begin
f=7'b0001100;
p=7'b0001100;
g=7'b0000010;
a=7'b0001000;
end
else
begin
f=1;p=1;g=1;a=1;
end
endmodule
