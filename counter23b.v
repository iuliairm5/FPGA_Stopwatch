module counter23b(input clk,input reset,input stop,output reg out);
reg[22:0] var1=0;
reg var5=0;// cand var5=1 ceasul e oprit

always@(posedge clk)begin
if(reset==0)
	var1<=0;

else begin
 if(var1==5000000)begin
	var1<=0;
	out<=1;
	end
	
if(var5==0 && stop) //stop==1 adica este apasat
var5<=1;
else if(var5==1 && stop)
var5<=0;	
	
	
	
if(var5==0) 
begin
var1<=var1+1;
out<=0;
end
end
end

endmodule


