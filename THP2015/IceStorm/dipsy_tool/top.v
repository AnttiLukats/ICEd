//
// ICEd as DIPSY programmer
// What it does: connects FTDI channel B pins to DIPSY socket
// so that Lattice and or other tools can see DIPSY UL1K SPI
// Interface on FTDI channel B MPPSE pins
//

module top(
	// RGB LED
	output LED_R,
	output LED_G,
	output LED_B,
	// Small SMD LED (green)
	output LED_small,
	// DIPSY Socket
	output DIPSY_MOSI,
	input DIPSY_MISO,
	output DIPSY_SCK,
	output DIPSY_SS,
	output DIPSY_RESET,
	input DIPSY_DONE,

	// FTDI FT2232H Channel B
	input BDBUS0, 
	input BDBUS1, 
	output BDBUS2, 
	//BDBUS3, 

	input BDBUS4, 
	//BDBUS5, 
	output BDBUS6, 
	input BDBUS7 
           );

	assign LED_R = 1'b0;
	assign LED_G = 1'b1;
	assign LED_B = 1'b1;
   
	assign LED_small = 1'b1;


	assign DIPSY_SCK = BDBUS0;
	assign DIPSY_MOSI = BDBUS1;
	assign BDBUS2 = DIPSY_MISO;

	assign DIPSY_SS = BDBUS4;
	assign DIPSY_RESET = BDBUS7;

	// optional
	assign BDBUS6 = DIPSY_DONE;

endmodule // top
