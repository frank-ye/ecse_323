library verilog;
use verilog.vl_types.all;
entity TIME13_vlg_check_tst is
    port(
        \OUT\           : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end TIME13_vlg_check_tst;
