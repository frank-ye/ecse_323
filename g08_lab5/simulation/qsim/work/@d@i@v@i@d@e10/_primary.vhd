library verilog;
use verilog.vl_types.all;
entity DIVIDE10 is
    port(
        INPUT           : in     vl_logic_vector(5 downto 0);
        MSB             : out    vl_logic_vector(3 downto 0);
        LSB             : out    vl_logic_vector(3 downto 0)
    );
end DIVIDE10;
