//`define ENABLE_DDR3
//`define ENABLE_HPS
`define ENABLE_HSMC

module Baseline_CV_SoCKit(

	//HPS
	output [14:0] hps_memory_mem_a,
   output [2:0]  hps_memory_mem_ba,
   output        hps_memory_mem_ck,
   output        hps_memory_mem_ck_n,
   output        hps_memory_mem_cke,
   output        hps_memory_mem_cs_n,
   output        hps_memory_mem_ras_n,
   output        hps_memory_mem_cas_n,
   output        hps_memory_mem_we_n,
   output        hps_memory_mem_reset_n,
   inout  [39:0] hps_memory_mem_dq,
   inout  [4:0]  hps_memory_mem_dqs,
   inout  [4:0]  hps_memory_mem_dqs_n,
   output        hps_memory_mem_odt,
   output [4:0]  hps_memory_mem_dm,
   input         hps_memory_oct_rzqin,
	
   inout       [16:0] HSMC_TX_n,
   inout       [16:0] HSMC_TX_p,

   //clock
   input              OSC_50_B8A,

   //reset
   input              RESET_n,
	
	//LED
	output reg [3:0] LED
);

cyclone_fpga bridge (
	.clk_clk(OSC_50_B8A),
	.led_test_led(LED),
	
	.memory_mem_a        (hps_memory_mem_a),
   .memory_mem_ba       (hps_memory_mem_ba),
   .memory_mem_ck       (hps_memory_mem_ck),
   .memory_mem_ck_n     (hps_memory_mem_ck_n),
   .memory_mem_cke      (hps_memory_mem_cke),
   .memory_mem_cs_n     (hps_memory_mem_cs_n),
   .memory_mem_ras_n    (hps_memory_mem_ras_n),
   .memory_mem_cas_n    (hps_memory_mem_cas_n),
   .memory_mem_we_n     (hps_memory_mem_we_n),
   .memory_mem_reset_n  (hps_memory_mem_reset_n),
   .memory_mem_dq       (hps_memory_mem_dq),
   .memory_mem_dqs      (hps_memory_mem_dqs),
   .memory_mem_dqs_n    (hps_memory_mem_dqs_n),
   .memory_mem_odt      (hps_memory_mem_odt),
   .memory_mem_dm       (hps_memory_mem_dm),
   .memory_oct_rzqin    (hps_memory_oct_rzqin),
	 
	.reset_reset_n(RESET_n)
);

endmodule
