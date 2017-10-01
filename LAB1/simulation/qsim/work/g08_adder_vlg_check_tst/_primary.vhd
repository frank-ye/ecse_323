library verilog;
use verilog.vl_types.all;
entity g08_adder_vlg_check_tst is
    port(
        Cout            : in     vl_logic;
        SUM             : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end g08_adder_vlg_check_tst;
