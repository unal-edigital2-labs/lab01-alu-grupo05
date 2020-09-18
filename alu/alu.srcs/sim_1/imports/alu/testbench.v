`timescale 10ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:10:33 09/15/2019
// Design Name:   alu
// Module Name:   C:/Users/UECCI/Desktop/ejer01/ALU/alu/testbench.v
// Project Name:  alu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg [2:0] portA;
	reg [2:0] portB;
	reg [1:0] opcode;
	reg clk;
	reg rst;

	// Outputs
	wire [0:6] sseg;
	wire an;
	
	// senales de prueba
	
	wire [3:0] int_bcd;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.portA(portA), 
		.portB(portB), 
		.opcode(opcode), 
		.sseg(sseg), 
		.an(an), 
		.clk(clk), 
		.rst(rst),
    // senales de prueba
        .int_bcd(int_bcd)		
		
	);
    
    
    
    

	initial begin
		// Initialize Inputs
		opcode = 0;
		clk = 0;
		rst = 1;
		portA=0;
		portB=0;
	
	
    
		
		// Wait 100 ns for global reset to finish
		#10;
        
		rst = 0;
		// Add stimulus here
		
		for(portB=0;portB<8;portB=portB+1) begin
		
		  if(portB==7) portA=portA+1; 
		
            #50 opcode =opcode+ 1;
            #50 opcode =opcode+ 1;
            #50 opcode =opcode+ 1;
            #50 opcode=opcode+ 1;
         end
        
         
		
		
	end
   
	always #1 clk = ~clk;
      
endmodule

