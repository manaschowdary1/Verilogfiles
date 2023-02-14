module fourbit_up_down_counter(msb,clk);      // frequency divider code
input clk;
reg [25:0]q=0;
output msb;

always@(posedge clk)
begin
q<=q+1;
end

assign msb=q[25];
endmodule