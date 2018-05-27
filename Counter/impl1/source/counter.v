// counter.v

/////////// LED Counter using 12 MHz on-board oscillator or external clock via SMA port /////////////////////////
//***************************************************************************************************************
// FileName: counter.v
// FPGA: MachXO3 9400LF
// IDE: Diamond 3.10.2 
// Board: MachXO3LF-9400 Development Board
// Board Part Number: LCMXO3LF-9400C-ASC-B-EVN
//
// Engineer: Frank Columbus
// 
// Version 1.1 05/26/2018 
// Notes: 	This is my first Lattice Semiconductor FPGA design.
// 			This is intended as a basic reference as it has a SW2 and clock inputs, LED output, and instantiates  
// 			IP from the Lattice Diamond Library.
//			DIP switch 4 up selects clock source.
// 			Press SW2 for a faster count on the LEDs.

module counter
	(
	output reg [7:0] LED,
	input clk_12,						// External On-Board 12MHz is on Pin B10  
	input clk_sma, 						// External SMA J10 input is Pin D22
	input SW2,							// Push button is on Pin D3
	input DIP_SW1_4						// DIP switch 4 up selects the 12 MHz on board clock. DIP_SW1_4 -> Pin J3 on the FPGA
	);									// DIP_SW1_4 -> Pin J3 on the FPGA
	
wire [31:0] led;
reg clk;

//// 32 bit counter 
count32 count32_inst					// Instantiate IP from the Lattice Diamond Library.
		(
		.Clock(clk),
		.Clk_En(1'b1), 					// 1=Enabled, 0=Disabled
		.Aclr(1'b0),					// 1=cleared, 0=Not cleared
		.Q(led)
		);
		
always @ (clk_12 or clk_sma)			// This block selects between the the 12 MHz on board clock.
	if (DIP_SW1_4 == 1)					// or the external SMA clock. 
		begin
			clk <= clk_12;				// DIP switch 4 up selects the 12 MHz on board clock.
		end
	else
		begin
			clk <= clk_sma;				// DIP switch 4 down selects the external SMA clock.
		end		

always  @ (posedge clk)					// This block maps 8 output bits of the 32 bit counter to 8 LEDs.
	if (SW2 == 1) 
		begin
				LED[7] <= ~led[29];		// Low Speed Count - SW2 NOT Pressed
				LED[6] <= ~led[28];		// SW2 is Pulled UP - 1 when NOT Pressed
				LED[5] <= ~led[27];		// All the LEDs are pulled up to 3.3 V so they are operated				
				LED[4] <= ~led[26];		// as a current sink, i.e. 0 at the output lights the LED,
				LED[3] <= ~led[25];		// hence the inversions.
				LED[2] <= ~led[24];	
				LED[1] <= ~led[23];		
				LED[0] <= ~led[22];
		end
	else
		begin
				LED[7] <= ~led[27];		// High Speed Count - SW2 Pressed
				LED[6] <= ~led[26];
				LED[5] <= ~led[25];						
				LED[4] <= ~led[24];
				LED[3] <= ~led[23];	
				LED[2] <= ~led[22];	
				LED[1] <= ~led[21];		
				LED[0] <= ~led[20];
		end
endmodule	
