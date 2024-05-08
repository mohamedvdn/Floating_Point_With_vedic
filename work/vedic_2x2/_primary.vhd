library verilog;
use verilog.vl_types.all;
entity vedic_2x2 is
    port(
        a               : in     vl_logic_vector(1 downto 0);
        b               : in     vl_logic_vector(1 downto 0);
        c               : out    vl_logic_vector(3 downto 0)
    );
end vedic_2x2;
