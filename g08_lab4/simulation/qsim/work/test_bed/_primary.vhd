library verilog;
use verilog.vl_types.all;
entity test_bed is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        RANT_LT_NUM     : out    vl_logic;
        stack_en        : out    vl_logic;
        clk             : in     vl_logic;
        request_deal    : in     vl_logic;
        ADDR            : out    vl_logic_vector(31 downto 26);
        enable          : in     vl_logic;
        NUM             : out    vl_logic_vector(5 downto 0);
        reset_stack     : in     vl_logic;
        MODE            : in     vl_logic_vector(1 downto 0);
        reset           : in     vl_logic;
        SEG_1           : out    vl_logic_vector(6 downto 0);
        NUMMODE         : in     vl_logic;
        VALUEOUT        : out    vl_logic_vector(5 downto 0)
    );
end test_bed;
