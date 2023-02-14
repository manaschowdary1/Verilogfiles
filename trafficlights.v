module trafficlights(clk,reset,R,G,Y);
  input clk,reset;
  output reg R=0,Y=0,G=0;
  
  parameter s0=2'b00,s1=2'b01,s2=2'b10;
 
  reg [0:1] state; // R=3sec Y=2sec G=4sec here input is not x , time is input here i.e clock is input so take counters concept(counters concept depend on time).
  reg [3:0] count;
  
  always@(posedge clk)
    begin
      if(reset)
        count<=4'd0;
      else if(count==4'b1010)
        count<=4'd0;
      else
        count<=count+1;
      
      case(state)
        s0:begin
          if(count==4)
            state<=s1;
        end
        s1:begin
          if(count==6)
            state<=s2;
        end
        s2:begin
          if(count==9)
            state<=s0;
        end
        default:begin
          state<=s0;
        end
      endcase
    end
  
  always@(state)
    begin
      case(state)
        s0: begin
          {G,Y,R}=3'b100;
        end
        s1:begin
          {Y,G,R}=3'b100;
        end
        s2: begin
          {R,Y,G}=3'b100;
        end
        default:begin
          {G,Y,R}=3'b100;
        end
      endcase
    end
endmodule