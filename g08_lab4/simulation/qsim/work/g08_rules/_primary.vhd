library verilog;
use verilog.vl_types.all;
entity g08_rules is
    port(
        play_pile_top_card: in     vl_logic_vector(5 downto 0);
        card_to_play    : in     vl_logic_vector(5 downto 0);
        legal_play      : out    vl_logic
    );
end g08_rules;
