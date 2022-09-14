module counter2(input clk,input reset,output reg out,output reg[3:0]var3);

always@(posedge clk)begin
	if(reset==0) 
	var3<=0;
	
else begin
if(var3==6)
	begin
		var3<=0;
		out<=1;
		end
	else begin
		var3<=var3+1;
		out<=0;
		end
end
end
endmodule
