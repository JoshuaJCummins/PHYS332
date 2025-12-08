`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2025 01:28:38 AM
// Design Name: 
// Module Name: Lab6_C
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


module Lab6_C(
    input [3:0]A,
    input [3:0]B,
    input C_IN,
    output [3:0]S,
    output C_OUT
    );
    
    wire sum;
    wire c;
    
    C i0 ( .A (A[0]), .B (B[0]), .C_IN(1'b0), .S(S[0]), .C_OUT(c1));
    C i1 ( .A (A[1]), .B (B[1]), .C_IN(c1), .S(S[1]), .C_OUT(c2));
    C i2 ( .A (A[2]), .B (B[2]), .C_IN(c2), .S(S[2]), .C_OUT(c3));
    C i3 ( .A (A[3]), .B (B[3]), .C_IN(c3), .S(S[3]), .C_OUT(C_OUT));

    
    
    
    assign sum = A ^ B;
    assign S = sum ^ C_IN;
    assign c = (A & B) | (A & C_IN) | (B & C_IN);
    assign C_OUT = c; 
    
endmodule
