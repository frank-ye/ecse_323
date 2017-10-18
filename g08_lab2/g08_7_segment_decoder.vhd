-- this circuit implements the IBM RANDU version of a linear congruential generator 
--- entity name: g08_7_segment_decoder
--- Copyright (C) 2017 Tiffany WANG, Frank YE
-- Version 1.0 
-- Author: Tiffany WANG, Frank YE; tiffany.wang@mail.mcgill.ca, frank.ye@mail.mcgill.ca
-- Date: 18 Oct 2017
library lpm;
use lpm.lpm_components.all;
library ieee;
use ieee.std_logic_1164.all;


entity g08_7_segment_decoder is

	port ( code: in std_logic_vector(3 downto 0);
		    mode: in std_logic;
		    segments_out: out std_logic_vector(6 downto 0));		 
		 
end g08_7_segment_decoder;

architecture g08_7_segment of g08_7_segment_decoder is
	SIGNAL xcode : std_logic_vector(4 downto 0);
   begin
   xcode(4 downto 1) <= code; xcode(0) <= mode;
   WITH xcode SELECT
   segments_out <=	
     -- 0 
	  "1000000" WHEN ("00000"),
	  "1000000" WHEN ("10011"),
	  -- 1
	  "1111001" WHEN ("00010"),
	  --2
	  "0100100" WHEN ("00100"), 
	  "0100100" WHEN ("00011"),
	  --3
	  "0110000" WHEN ("00110"),
	  "0110000" WHEN ("00101"),
	  --4
	  "0011001" WHEN ("01000"), 
	  "0011001" WHEN ("00111"),
	  --5
	  "0010010" WHEN ("01010"),
	  "0010010" WHEN ("01001"),
	  --6
	  "0000010" WHEN ("01100"),
	  "0000010" WHEN ("01011"),
	  --7
	  "1111000" WHEN ("01110"),
	  "1111000" WHEN ("01101"),
	  --8
	  "0000000" WHEN ("10000"),
	  "0000000" WHEN ("01111"),
	  --9
	  "0010000" WHEN ("10010"), 
	  "0010000" WHEN ("10001"),
	  --A
	  "0001000" WHEN ("10100"),
	  "0001000" WHEN ("00001"),
	  --B
	  "0000011" WHEN ("10110"),
	  --C
	  "1000110" WHEN ("11000"),
	  --D
	  "0100001" WHEN ("11010"),
	  --E
	  "0000110" WHEN ("11100"),
	  --F
	  "0001110" WHEN ("11110"),
	  --J
	  "1100001" WHEN ("10101"),
	  --Q
	  "0100011" WHEN ("10111"),
	  --K
	  "0001001" WHEN ("11001"),
	  -- -
	  "0111111" WHEN others;
	
end g08_7_segment;