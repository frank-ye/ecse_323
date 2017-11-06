library verilog;
use verilog.vl_types.all;
entity g08_stack52 is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        EMPTY           : out    vl_logic;
        NUM             : out    vl_logic_vector(5 downto 0);
        MODE            : in     vl_logic_vector(1 downto 0);
        ENABLE          : in     vl_logic;
        FULL            : out    vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        EN              : out    vl_logic_vector(51 downto 0);
        ADDR            : in     vl_logic_vector(5 downto 0);
        VALUE           : out    vl_logic_vector(5 downto 0);
        DATA            : in     vl_logic_vector(5 downto 0)
    );
end g08_stack52;
