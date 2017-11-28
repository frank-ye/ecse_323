library verilog;
use verilog.vl_types.all;
entity DIVIDE10_vlg_check_tst is
    port(
        LSB             : in     vl_logic_vector(3 downto 0);
        MSB             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end DIVIDE10_vlg_check_tst;
