library verilog;
use verilog.vl_types.all;
entity vedic_16x16 is
    port(
        a               : in     vl_logic_vector(15 downto 0);
        b               : in     vl_logic_vector(15 downto 0);
        c               : out    vl_logic_vector(31 downto 0)
    );
end vedic_16x16;
