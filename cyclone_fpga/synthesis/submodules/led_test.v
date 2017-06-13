module led_test (
	input clk,
	input reset,

	output [3:0] led,
	
	input write,
	input [7:0] writedata
);

reg [3:0] data = 4'b0000;

assign led = data;

always @(posedge clk) begin
	data <= writedata[3:0];
end

endmodule
