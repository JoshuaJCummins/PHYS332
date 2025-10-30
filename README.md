# PHYS332

//part 1
module lab5_code(input [3:0] SW, output [2:0] LED, output LED16_B, output LED16_G, output LED16_R);

assign LED[0] = ~SW[0];
assign LED[1] = SW[1];
assign LED16_R = ~SW[0] & SW[1];

 
endmodule

//part 2
module lab5_code(input [3:0] SW, output [2:0] LED, output LED16_B, output LED16_G, output LED16_R);

// in order A1, A0, B1, B0 = SW[0] -> SW[3]

wire a,b,c,d;

assign a = SW[0] & SW[1] & SW[2] & SW[3]; 
assign b = ~SW[0] & SW[1] & ~SW[2] & SW[3];
assign c = SW[0] & ~SW[1] & SW[2] & ~SW[3];
assign d = ~SW[0] & ~SW[1] & ~SW[2] & ~SW[3];
assign LED[0] = a | b | c | d;

assign LED[1] = (SW[0] & ~SW[2]) | (SW[0] & ~SW[2] & ~SW[3]) | (SW[0] & SW[1] & ~SW[3]);

assign LED[2] = ~LED[1];

endmodule
