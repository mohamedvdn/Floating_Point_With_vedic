module Floating_Point_Multiplier_Single_Precision_Vedic (A,B,Mul_Out);
  input [31:0]A,B;
  output [31:0]Mul_Out; 
  
  wire Sign_A,Sign_B,Sign;
  wire [22:0]Mantissa_A,Mantissa_B;
  wire [7:0]Exponent_A,Exponent_B;
  
  wire [23:0]A_m,B_m;
  wire [47:0]Out_m;
  wire [7:0]E_r;
  wire [30:0]Normalized_Out;  
  
  
  Floating_Seperation SD_Initialisation_Unit (
    .A(A), 
    .B(B), 
    .Sign_A(Sign_A), 
    .Sign_B(Sign_B), 
    .Mantissa_A(Mantissa_A), 
    .Mantissa_B(Mantissa_B), 
    .Exponent_A(Exponent_A), 
    .Exponent_B(Exponent_B)
    ); 
  
  Adder_Exponent_Bias SD_Adder_Exponent_Unit (
    .E_a(Exponent_A), 
    .E_b(Exponent_B), 
    .E_r(E_r)
    );

Mantissa_Normalisation SD_Mantissa_Normalisation_Unit (
    .A_In(Mantissa_A), 
    .B_In(Mantissa_B), 
    .A_Out(A_m), 
    .B_Out(B_m)
    );

Mantissa_Multiplier SD_Matissa_Mul_Mtiplier_Unit (
    .A_m(A_m), 
    .B_m(B_m), 
    .Out_m(Out_m)
    );

Normalizer Normalizer_Unit (
    .Out_m(Out_m), 
    .E_r(E_r), 
    .Normalized_Out(Normalized_Out)
    );


Sign_Unit Sign_Unit (
    .A_s(Sign_A), 
    .B_s(Sign_B), 
    .Sign(Sign)
    );           

assign Mul_Out={Sign,Normalized_Out};

endmodule