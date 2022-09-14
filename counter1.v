module counter1(input clk,input reset,output reg out,output reg[3:0]var2);

always@(posedge clk)begin
	if(reset==0) 
	var2<=0;
	
else begin
if(var2==10)
	begin
		var2<=0;
		out<=1;
		end
	else begin
		var2<=var2+1;
		out<=0;
		end
end
end
endmodule
