module led_test (
	input clk,
	input reset,

	output [3:0] led,
	
	input write,
	input [7:0] writedata
);

reg [3:0] led_setting = writedata[3:0];
assign led = led_setting;

endmodule
