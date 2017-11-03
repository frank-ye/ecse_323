library verilog;
use verilog.vl_types.all;
entity g08_pulseGenerator_vlg_check_tst is
    port(
        counter         : in     vl_logic_vector(20 downto 0);
        PULSE_EN        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end g08_pulseGenerator_vlg_check_tst;
