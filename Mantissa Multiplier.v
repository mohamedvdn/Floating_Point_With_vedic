module Mantissa_Multiplier (A_m,B_m,Out_m);
  input [23:0]A_m,B_m;
  output [47:0]Out_m; 
  wire [31:0]A_m1,B_m1;
  wire [63:0]Out_m1;

  assign A_m1={8'd0,A_m};
  assign B_m1={8'd0,B_m};
  assign Out_m=Out_m1[47:0];
  
	Vedic_32x32 M0 (
	.a(A_m1),
	.b(B_m1),
	.c(Out_m1)
	);     
  
endmodule