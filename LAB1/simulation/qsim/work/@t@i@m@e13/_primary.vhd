library verilog;
use verilog.vl_types.all;
entity TIME13 is
    port(
        \OUT\           : out    vl_logic_vector(6 downto 0);
        \IN\            : in     vl_logic_vector(2 downto 0)
    );
end TIME13;
