library verilog;
use verilog.vl_types.all;
entity g08_adder is
    port(
        Cout            : out    vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        SUM             : out    vl_logic_vector(7 downto 0)
    );
end g08_adder;
