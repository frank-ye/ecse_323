library verilog;
use verilog.vl_types.all;
entity \1bit_ADD\ is
    port(
        SUM             : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        Cin             : in     vl_logic;
        Cout            : out    vl_logic
    );
end \1bit_ADD\;
