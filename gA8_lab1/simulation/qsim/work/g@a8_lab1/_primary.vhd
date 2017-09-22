library verilog;
use verilog.vl_types.all;
entity gA8_lab1 is
    port(
        AeqB            : out    vl_logic;
        A               : in     vl_logic_vector(6 downto 0);
        B               : in     vl_logic_vector(6 downto 0)
    );
end gA8_lab1;
