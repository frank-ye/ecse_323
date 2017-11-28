library verilog;
use verilog.vl_types.all;
entity test_bed_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        enable          : in     vl_logic;
        MODE            : in     vl_logic_vector(1 downto 0);
        NUMMODE         : in     vl_logic;
        request_deal    : in     vl_logic;
        reset           : in     vl_logic;
        reset_stack     : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end test_bed_vlg_sample_tst;
