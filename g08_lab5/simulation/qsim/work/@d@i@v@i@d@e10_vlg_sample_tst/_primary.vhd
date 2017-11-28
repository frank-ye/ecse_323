library verilog;
use verilog.vl_types.all;
entity DIVIDE10_vlg_sample_tst is
    port(
        INPUT           : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end DIVIDE10_vlg_sample_tst;
