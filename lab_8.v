`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2025 05:44:15 PM
// Design Name: 
// Module Name: lab_8
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

// Part A
module lab_8a(
    input i_CLK,
    input i_button,
    input clear_count,
    output reg [15:0] push_count
);

    reg button_d;       

    always @(posedge i_CLK) begin
        button_d <= i_button;     
        if (clear_count) begin
            push_count <= 16'h0000;
        end 
        else if (i_button && !button_d) begin
            push_count <= push_count + 1;
        end
    end

endmodule

// Part B
module lab8_50Hz(
    input  i_CLK_100MHZ,
    output reg o_CLK_50HZ );
    
    reg [20:0] ctr = 0;
    
  always @(posedge i_CLK_100MHZ) begin
        
        if (ctr == 999_999) begin
            o_CLK_50HZ <= 1'b0;
            ctr <= ctr + 1;
        end

        else if (ctr == 1_999_999) begin
            o_CLK_50HZ <= 1'b1;
            ctr <= 0;
        end

        else begin
            ctr <= ctr + 1;
        end
    end
endmodule   
 
module cbp(
    input  i_CLK,       
    input   i_button,
    input  clear_count,
    output reg [15:0] push_count
);

    reg button_d;              

    always @(posedge i_CLK) begin
        button_d <= i_button; 

        if (clear_count) begin
            push_count <= 16'h0000;
        end
        else if (i_button && !button_d) begin

            push_count <= push_count + 1'b1;
        end
    end

endmodule
        
  