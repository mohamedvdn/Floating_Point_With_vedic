library verilog;
use verilog.vl_types.all;
entity vedic_8x8 is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        c               : out    vl_logic_vector(15 downto 0)
    );
end vedic_8x8;
