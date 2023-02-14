module fourbit_updowncount(clk,count,reset,mode);
input clk,reset,mode;
output reg [3:0]count;

always@(posedge clk)
begin
if(reset)
count=4'b0000;

else if(mode==1)
count<=count-1;

else if(mode==0)
count<=count+1;

end
endmodule