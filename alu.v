module alu(a,b,s,y);
input[3:0]a,b;
input[1:0]s;
output reg[7:0]y;
always @(*)
begin
case(s)
2'b00:y=a+b;
2'b01:y=a-b;
2'b10:y=a*b;
2'b11:y=a/b;
endcase
end
endmodule

module alutb();
reg[3:0]a,b;
reg[1:0]s;
wire[7:0]y;
alu a1(a,b,s,y);
initial
begin
#2 a=4'b0001;b=4'b0011;s=2'b00;
#2 a=4'b0011;b=4'b0001;s=2'b01;
#2 a=4'b0100;b=4'b0010;s=2'b10;
#2 a=4'b0010;b=4'b0001;s=2'b11;
#50 $stop;
end
endmodule

