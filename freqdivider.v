module freqdivider(p,clk,reset);
input clk,reset;
output wire p;
reg [25:0]q=0;
always@(posedge clk)
begin
if(reset==1)
q<=0;
else
q<=q+1;
end
assign p=q[25];
endmodule
