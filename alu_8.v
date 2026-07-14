module alu_8(a,b,s,y,carry,zero);
  input [7:0] a,b;
  input [2:0] s;
  output reg [7:0] y;
  output reg carry;
  output reg zero;
  reg [8:0] temp;
  
  always@(*)begin
  carry=0; 
    case(s)
      3'b000:y=a&b;
        
      3'b001:begin
        y=a-b;
        carry=0;
      end
      
      3'b010:begin
        temp=a+b;
        y=temp[7:0];
        carry=temp[8];
      end
        
      3'b011:y=a^b;
      3'b100:y=~a;
      3'b101:y=a|b;
      
      3'b110:begin
        if(b!=0)
        y=a/b;
        else 
          y=0;
      end
      3'b111:begin
        if(b!=0)
          y=a%b;
        else
          y=0;
      end
    
      default:begin
        y=8'b0;
        carry=0;
        end
    endcase
           zero= y==8'b00000000;

  end
endmodule
