library verilog;
use verilog.vl_types.all;
entity TIME13_vlg_sample_tst is
    port(
        \IN\            : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end TIME13_vlg_sample_tst;
