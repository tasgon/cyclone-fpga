//`define ENABLE_DDR3
`define ENABLE_HPS
`define ENABLE_HSMC

module Baseline_CV_SoCKit(

`ifdef ENABLE_HPS
      ///////// HPS /////////
      //input              HPS_CONV_USB_n,
      output      [14:0] HPS_DDR3_A,
      output      [2:0]  HPS_DDR3_BA,
      output             HPS_DDR3_CAS_n,
      output             HPS_DDR3_CKE,
      output             HPS_DDR3_CK_n,
      output             HPS_DDR3_CK_p,
      output             HPS_DDR3_CS_n,
      output      [3:0]  HPS_DDR3_DM,
      inout       [31:0] HPS_DDR3_DQ,
      inout       [3:0]  HPS_DDR3_DQS_n,
      inout       [3:0]  HPS_DDR3_DQS_p,
      output             HPS_DDR3_ODT,
      output             HPS_DDR3_RAS_n,
      output             HPS_DDR3_RESET_n,
      input              HPS_DDR3_RZQ,
      output             HPS_DDR3_WE_n,
      /*output             HPS_ENET_GTX_CLK,
      inout              HPS_ENET_INT_n,
      output             HPS_ENET_MDC,
      inout              HPS_ENET_MDIO,
      input              HPS_ENET_RX_CLK,
      input       [3:0]  HPS_ENET_RX_DATA,
      input              HPS_ENET_RX_DV,
      output      [3:0]  HPS_ENET_TX_DATA,
      output             HPS_ENET_TX_EN,
      inout       [3:0]  HPS_FLASH_DATA,
      output             HPS_FLASH_DCLK,
      output             HPS_FLASH_NCSO,
      inout              HPS_GSENSOR_INT,
      inout              HPS_I2C_CLK,
      inout              HPS_I2C_SDA,
      inout       [3:0]  HPS_KEY,
      inout              HPS_LCM_BK,
      output             HPS_LCM_D_C,
      output             HPS_LCM_RST_N,
      input              HPS_LCM_SPIM_CLK,
      output             HPS_LCM_SPIM_MOSI,
      output             HPS_LCM_SPIM_SS,
      output      [3:0]  HPS_LED,
      inout              HPS_LTC_GPIO,
      output             HPS_SD_CLK,
      inout              HPS_SD_CMD,
      inout       [3:0]  HPS_SD_DATA,
      output             HPS_SPIM_CLK,
      input              HPS_SPIM_MISO,
      output             HPS_SPIM_MOSI,
      output             HPS_SPIM_SS,	
      input       [3:0]  HPS_SW,
      input              HPS_UART_RX,
      output             HPS_UART_TX,
      input              HPS_USB_CLKOUT,
      inout       [7:0]  HPS_USB_DATA,
      input              HPS_USB_DIR,
      input              HPS_USB_NXT,
      output             HPS_USB_STP,*/
`endif /*ENABLE_HPS*/

`ifdef ENABLE_HSMC
      ///////// HSMC /////////
      /*input       [2:1]  HSMC_CLKIN_n,
      input       [2:1]  HSMC_CLKIN_p,
      output      [2:1]  HSMC_CLKOUT_n,
      output      [2:1]  HSMC_CLKOUT_p,
      output             HSMC_CLK_IN0,
      output             HSMC_CLK_OUT0,
      inout       [3:0]  HSMC_D,
      input       [7:0]  HSMC_GXB_RX_p,
      output      [7:0]  HSMC_GXB_TX_p,
      input              HSMC_REF_CLK_p,
      inout       [16:0] HSMC_RX_n,
      inout       [16:0] HSMC_RX_p,
      output             HSMC_SCL,
      inout              HSMC_SDA,*/
      inout       [16:0] HSMC_TX_n,
      inout       [16:0] HSMC_TX_p,
`endif /*ENABLE_HSMC*/

      ///////// OSC /////////
      input              OSC_50_B8A,

      ///////// RESET /////////
      input              RESET_n
);


//=======================================================
//  REG/WIRE declarations
//=======================================================





//=======================================================
//  Structural coding
//=======================================================





endmodule
