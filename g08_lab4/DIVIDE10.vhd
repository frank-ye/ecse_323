-- this circuit implements the computer player FSM
--- entity name: g08_DIVIDE10
--- Copyright (C) 2017 Tiffany WANG, Frank YE
-- Version 1.0 
-- Author: Tiffany WANG, Frank YE; tiffany.wang@mail.mcgill.ca, frank.ye@mail.mcgill.ca
-- Date: 26 Nov 2017

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity DIVIDE10 is
port (INPUT: in std_logic_vector(5 downto 0);
		VALUE: out std_logic_vector(5 downto 0));
end g08_stack_decoder ;

architecture value_decoder of g08_stack_decoder is
	SIGNAL VALUE_IN: unsigned(5 downto 0);
	begin
		VALUE_IN <= unsigned(ENCODED_CARD) mod 13 + 1;
		VALUE <= "001010" when(VALUE_IN > to_unsigned(10, 6)) else
			std_logic_vector(VALUE_IN);
end value_decoder;