library verilog;
use verilog.vl_types.all;
entity FLOOR13 is
    port(
        \OUT\           : out    vl_logic_vector(8 downto 0);
        \IN\            : in     vl_logic_vector(5 downto 0)
    );
end FLOOR13;
