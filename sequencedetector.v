module sequencedetector(out,clk,reset,in);
	input clk,in,reset;
	output out;
	
	parameter idle=3'b000,got1=3'b001,got11=3'b010,got110=3'b011,got1101=3'b100;
	reg [2:0] ns,ps;
	
	always@(posedge clk)
	begin
		if(reset)
			ps<=idle;
		else
			ps<=ns;
	end
	
	always@(ps,in)
	begin
		case(ps)
		idle: begin
				if(in==1)
				ns=got1;
				else
				ns=idle;
				end
		got1: begin
				if(in==1)
				ns=got11;
				else
				ns=idle;
				end
		got11: begin
				if(in==0)
				ns=got110;
				else
				ns=got11;
				end
		got110: begin
				if(in==1)
				ns=got1101;
				else
				ns=idle;
				end
		got1101: begin
				if(in==1)
				ns=idle;
				else
				ns=idle;
				end
			endcase
			end
		
	assign out=(ps==got110);
	endmodule


