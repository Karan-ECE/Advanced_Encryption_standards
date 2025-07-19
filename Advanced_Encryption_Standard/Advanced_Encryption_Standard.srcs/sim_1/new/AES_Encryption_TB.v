module AES_Encryption_TB;

	// Inputs
	reg CLK;
	reg [0:127] DATA;
	reg [0:127] CIPHER_KEY;

	// Outputs
	wire [0:127] ENCRYPTED_DATA;

	// Instantiate the Unit Under Test (UUT)
	AES_Encryption uut (
	CLK,
    DATA,
    CIPHER_KEY,
    ENCRYPTED_DATA
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		DATA= 0;
		CIPHER_KEY = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always #10 CLK = ~CLK;
	
	initial begin
	
	@(negedge CLK) DATA = 128'hff0b844a0853bf7c6934ab4364148fb9;
		       CIPHER_KEY = 128'h0f1571c947d9e8590cb7add6af7f6798;
	
	end
      
endmodule