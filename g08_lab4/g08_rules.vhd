-- this circuit implements the rules of the card game 21
--- entity name: g08_rules
--- Copyright (C) 2017 Tiffany WANG, Frank YE
-- Version 1.0 
-- Author: Tiffany WANG, Frank YE; tiffany.wang@mail.mcgill.ca, frank.ye@mail.mcgill.ca
-- Date: 14 Nov 2017

library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity g08_rules is
port (play_pile_top_card : in std_logic_vector(5 downto 0);
		card_to_play : in std_logic_vector(5 downto 0);
		legal_play : out std_logic);
end g08_rules;


architecture rules of g08_rules is
-- keep total amount of running games one, use as constraint for enable.
-- need a flag for between games because need to shuffle deck	

	
	begin
		check : process(card_to_play, play_pile_top_card)
			variable sum : unsigned(5 downto 0);
			variable ctp : unsigned(5 downto 0);
			variable top : unsigned(5 downto 0);
			
			
			begin
			
			top := unsigned(play_pile_top_card);
			ctp := unsigned(card_to_play) mod 13 + 1;
			sum := top + ctp;
			if(sum < 22) then
				legal_play <= '1';
			else
				legal_play <= '0';
			end if;
		end process check;

end rules;
