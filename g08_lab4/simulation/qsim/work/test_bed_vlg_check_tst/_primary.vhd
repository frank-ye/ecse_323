library verilog;
use verilog.vl_types.all;
entity test_bed_vlg_check_tst is
    port(
        ADDR            : in     vl_logic_vector(31 downto 26);
        NUM             : in     vl_logic_vector(5 downto 0);
        RANT_LT_NUM     : in     vl_logic;
        SEG_1           : in     vl_logic_vector(6 downto 0);
        stack_en        : in     vl_logic;
        VALUEOUT        : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end test_bed_vlg_check_tst;
