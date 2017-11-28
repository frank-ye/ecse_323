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
		MSB: out std_logic_vector(3 downto 0);
		LSB: out std_logic_vector(3 downto 0));
end DIVIDE10 ;

architecture TWODIGITS of DIVIDE10 is
	SIGNAL LSB_IN : unsigned(5 downto 0);
	SIGNAL MSB_IN : unsigned(5 downto 0);
	begin
		
		MSB_IN <= unsigned(INPUT) / 10;
		LSB_IN <= unsigned(INPUT) mod 10;
		
		MSB <= std_logic_vector(MSB_IN(3 downto 0));
		LSB <= std_logic_vector(LSB_IN(3 downto 0));
		
end TWODIGITS;