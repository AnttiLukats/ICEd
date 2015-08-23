//
// ICEd UART to ESP8266
// What it does: connects FTDI channel B pins to ESP8266 UART
//

module top(
	// RGB LED
	output LED_R,
	output LED_G,
	output LED_B,
	// Small SMD LED (green)
	output LED_small,

	// 
	output ESP_TXD,
	input ESP_RXD,
	output ESP_RESET,

	input ESP_GPIO0,
	output ESP_GPIO2,

	// FTDI FT2232H Channel B
	input BDBUS0, 
	output BDBUS1 
           );

	assign LED_R = BDBUS0;
	assign LED_G = ESP_RXD;
	assign LED_B = 1'b1;
   

	assign ESP_GPIO2 = 1'b1;
	assign LED_small = ESP_GPIO0;


	assign ESP_TXD = BDBUS0;
	assign BDBUS1 = ESP_RXD;


endmodule // top
