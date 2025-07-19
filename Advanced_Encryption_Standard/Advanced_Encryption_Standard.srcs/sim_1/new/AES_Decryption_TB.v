module AES_Decryption_TB;

	// Inputs
	reg CLK;
	reg [0:127] ENCRYPTED_DATA;
	reg [0:127] CIPHER_KEY;

	// Outputs
	wire [0:127] ORIGINAL_DECRYPTED_DATA;

	// Instantiate the Unit Under Test (UUT)
	AES_Decryption uut (
	CLK,
    ENCRYPTED_DATA,
    CIPHER_KEY,
    ORIGINAL_DECRYPTED_DATA
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		ENCRYPTED_DATA= 0;
		CIPHER_KEY = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always #10 CLK = ~CLK;
	
	initial begin
	
	@(negedge CLK) ENCRYPTED_DATA = 128'hf644514a6ae4d2862708089009488e5c;
		       CIPHER_KEY = 128'h0f1571c947d9e8590cb7add6af7f6798;
	
	end
      
endmodule