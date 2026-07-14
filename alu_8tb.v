module alu_8tb;
  reg [7:0] a,b;
  reg [2:0] s;
  wire [7:0] y;
  wire carry;
  wire zero;

  alu_8 DUT (.a(a),.b(b),.s(s),.y(y),.carry(carry),.zero(zero));
  initial begin
    $monitor("a=%b,b=%b,s=%b,y=%b,carry=%b,zero=%b",a,b,s,y,carry,zero);

    a=8'd1;  b=8'd0;  s=3'b000;   #10;
    a=8'd12; b=8'd6;  s=3'b001;   #10;
    a=8'd10; b=8'd5;  s=3'b010;   #10;
    a=8'd9;  b=8'd6;  s=3'b011;   #10;
    a=8'd8;  b=8'd5;  s=3'b100;   #10;
    a=8'd14; b=8'd7;  s=3'b101;   #10;
    a=8'd3;  b=8'd1;  s=3'b110;   #10;
    a=8'd4;  b=8'd3;  s=3'b111;   #10;

    $finish;
  end
endmodule
