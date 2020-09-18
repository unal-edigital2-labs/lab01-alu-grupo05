`timescale 10ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2020 02:36:19 PM
// Design Name: 
// Module Name: restador
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module restador#(
parameter n=2
)
(
    
    clk,
    A,
    B,
    INIT,
    C
    );
    
    
    input clk;
    input [n:0]A;
    input [n:0]B;
    input INIT;
    
    output reg[n+1:0] C;
    
    reg [n:0] D;
    
always@(*) begin
    
    D=~B;
    if(INIT) ;
    C=A+D+1;
    
    end
    
endmodule

