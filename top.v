module top(input clk,
			  input new_run,
			  input stop_start,
			  output[6:0] out1,
			  output[6:0] out2,
			  output[6:0] out3,
			  output[6:0] out4);

wire w1,w2,w3,w4,w5;
wire[3:0] t1,t2,t3,t4;

	debounce DB(.clk(clk),.in(stop_start),.out(w5));//debounce for stop_start


counter23b c23b(.clk(clk),.reset(new_run),.stop(w5),.out(w1));


counter1 csutimi(.clk(w1),.reset(new_run),.out(w2),.var2(t1));


counter1 csec1(.clk(w2),.reset(new_run),.out(w3),.var2(t2));


counter2 csec2(.clk(w3),.reset(new_run),.out(w4),.var3(t3));


counter1 cmin(.clk(w4),.reset(new_run),.out(),.var2(t4));


transcodor trans1(.in(t1),.out(out1));
transcodor trans2(.in(t2),.out(out2));
transcodor trans3(.in(t3),.out(out3));
transcodor trans4(.in(t4),.out(out4));

endmodule
