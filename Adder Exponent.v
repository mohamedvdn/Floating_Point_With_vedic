module Adder_Exponent_Bias (E_a,E_b,E_r);
  input [7:0]E_a,E_b;
  output [7:0]E_r; 
  wire [7:0]E_r1;

  M_kogge_stone M0 (
     .a(E_a),
     .b(E_b),
     .s(E_r1)
     ); 

  M_kogge_stone M1 (
     .a(E_r1),
     .b(8'b10000001),
     .s(E_r)
     ); 
     
endmodule