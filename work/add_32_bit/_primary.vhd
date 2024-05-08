library verilog;
use verilog.vl_types.all;
entity add_32_bit is
    generic(
        N               : integer := 32
    );
    port(
        input1          : in     vl_logic_vector;
        input2          : in     vl_logic_vector;
        answer          : out    vl_logic_vector
    );
end add_32_bit;
