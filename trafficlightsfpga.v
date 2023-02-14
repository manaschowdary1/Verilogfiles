module trafficlightsfpga(clk,reset,R,G,Y);
input clk,reset;
output reg R=0,Y=0,G=0;
wire clkout;

clockdivider dut1(clkout,clk);
trafficlights dut2(clkout,reset,R,G,Y);  
endmodule