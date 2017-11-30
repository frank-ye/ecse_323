-- this circuit implements the rules of the card game 21
--- entity name: g08_rules
--- Copyright (C) 2017 Tiffany WANG, Frank YE
-- Version 1.0 
-- Author: Tiffany WANG, Frank YE; tiffany.wang@mail.mcgill.ca, frank.ye@mail.mcgill.ca
-- Date: 21 Nov 2017

library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity card_dealer is
port (request_deal : in std_logic;
		random_lt_num : in std_logic;
		reset : in std_logic;
		clk : in std_logic;
		stack_enable: out std_logic;
		rand_enable: out std_logic);
		
end card_dealer;

architecture dealer of card_dealer is
TYPE state_signal IS (A, B, C, D);
SIGNAL state: state_signal;
begin

state_update : process(clk, reset)
	begin
		if reset = '1' then
			state <= A;
		elsif clk'EVENT and clk = '1' then
			case state is
				when A =>
					if request_deal = '0' then state <= B; -- wait for HIT_LOW
					else state <= A;
					end if;
				
				when B =>
					if request_deal = '1' then state <= C; -- wait for HIT_HIGH
					else state <= B;
					end if;	
				when C => 
					-- do something that will output
					if random_lt_num = '1' then state <= D; -- wait for rand_num < NUMS - 1 to change state.
					else state <= C;
					end if;
					
				when D =>
					 state <= A; -- wait one clk cycle for card to be added (no "residue")
			end case;
		end if;
 	end process state_update;
	
output_logic : process(state) 
	begin	
	case state is
		when A | B => 
			rand_enable <= '0';
			stack_enable <= '0';
		when C =>
			rand_enable <= '1';
			stack_enable <= '0';
		when D =>
			rand_enable <= '0';
			stack_enable <= '1';
		when others =>
			rand_enable <= '0';
			stack_enable <= '0';
	end case;
end process output_logic;
end dealer;