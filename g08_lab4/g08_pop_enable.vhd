-- this circuit implements the IBM RANDU version of a linear congruential generator 
--- entity name: g08_pop_enable
--- Copyright (C) 2017 Tiffany WANG, Frank YE
-- Version 1.0 
-- Author: Tiffany WANG, Frank YE; tiffany.wang@mail.mcgill.ca, frank.ye@mail.mcgill.ca
-- Date: 17 Oct 2017


library lpm;
use lpm.lpm_components.all;
library ieee;
use ieee.std_logic_1164.all;

entity g08_pop_enable is

	port ( N: in std_logic_vector(5 downto 0);
		  clk: in std_logic;
		 P_EN: out std_logic_vector(51 downto 0));
		 
		 
end g08_pop_enable;

architecture pop_enable of g08_pop_enable is
	begin
	crc_table: lpm_rom
		GENERIC MAP(
		lpm_widthad => 6,
		lpm_outdata => "UNREGISTERED",
		lpm_address_control => "REGISTERED",
		lpm_width => 52,
		lpm_file => "g08_rom.mif")
		PORT MAP(inclock => clk, address => N, q => P_EN);
	end pop_enable;