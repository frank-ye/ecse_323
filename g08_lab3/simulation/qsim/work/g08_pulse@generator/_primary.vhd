library verilog;
use verilog.vl_types.all;
entity g08_pulseGenerator is
    port(
        PULSE_EN        : out    vl_logic;
        counter         : out    vl_logic_vector(20 downto 0);
        CLK             : in     vl_logic;
        BUTTON          : in     vl_logic
    );
end g08_pulseGenerator;
