-- this circuit implements the IBM RANDU version of a linear congruential generator 
--- entity name: g08_RANDU 
--- Copyright (C) 2017 Tiffany WANG, Frank YE
-- Version 1.0 
-- Author: Tiffany WANG, Frank YE; tiffany.wang@mail.mcgill.ca, frank.ye@mail.mcgill.ca
-- Date: 17 Oct 2017


library lpm;
use lpm.lpm_components.all;
library ieee;
use ieee.std_logic_1164.all; 

entity g08_RANDU is 
	port ( seed : in std_logic_vector(31 downto 0); 
			 rand : out std_logic_vector(31 downto 0) ); 
end g08_RANDU;

architecture random of g08_RANDU is

	signal internal_1: std_logic_vector(31 downto 0);	
	signal shift_left_17: std_logic_vector(31 downto 0);
	signal shift_left_1: std_logic_vector(31 downto 0);
	begin
		shift_left_16(31 downto 16) <= seed(15 downto 0);
		shift_left_16(15 downto 0) <= (others => '0');
		shift_left_1(31 downto 1) <= seed(30 downto 0);
		shift_left_1(0) <= '0';
		u1: lpm_add_sub
        GENERIC MAP (LPM_WIDTH => 32)
        PORT MAP ( dataa => shift_left_17, datab => shift_left_1, result => internal_1);
		  
		u2: lpm_add_sub
        GENERIC MAP (LPM_WIDTH => 32)
        PORT MAP ( dataa => internal_1, datab => seed, result => rand);

	end random;