module Tflipflop(t,clk,rst,q);
input t,clk,rst;
output q;
reg q;
always@(posedge clk)
begin
 if(rst)
 q<=0;
 else if(t)
 q<=~q;
 else
 q<=q;
end
endmodule
 
