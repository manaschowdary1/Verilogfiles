module twobitcompare(a,b,greater,equal,lesser);
input [1:0]a,b;
output reg greater,equal,lesser;
 always@(*)
 begin
 if(a>b)
 begin
	greater=1'b1;equal=1'b0;lesser=1'b0;
	end
else if(a==b)
	begin
	greater =1'b0;equal=1'b1;lesser=1'b0;
	end
else
	begin
	greater=1'b0;equal=1'b0;lesser=1'b1;
	end
	end
	endmodule