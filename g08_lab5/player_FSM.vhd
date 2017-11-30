-- this circuit implements the computer player FSM
--- entity name: g08_system
--- Copyright (C) 2017 Tiffany WANG, Frank YE
-- Version 1.0 
-- Author: Tiffany WANG, Frank YE; tiffany.wang@mail.mcgill.ca, frank.ye@mail.mcgill.ca
-- Date: 27 Nov 2017

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity player_FSM is
port ( clk : in std_logic;
		 ACE_TOGGLE: in std_logic_vector(3 downto 0);
		 DONE: in std_logic;
		 NEW_CARD: in std_logic_vector(5 downto 0);
		 HIT_EN: in std_logic;
		 STOP_EN: in std_logic;
		 TURN: out std_logic;
		 LEGAL_PLAY: out std_logic;
		 PLAYER_SUM: out std_logic_vector(5 downto 0);
		 ACE_COUNT_SIGNAL: out std_logic_vector(3 downto 0)
		 );
end player_FSM;

architecture system_fsm of player_FSM is
TYPE state_signal IS ( A, B, C, D, E); -- states from state transition diagram
SIGNAL state: state_signal;
		
begin
state_update : process(clk, ACE_TOGGLE)
	
	-- DECLARE VARIABLES
	VARIABLE DRAWS : std_logic;
	VARIABLE ACE_COUNT: unsigned(2 downto 0);
	VARIABLE ACE_COUNT_SIGNAL_IN: std_logic_vector(3 downto 0);
	VARIABLE DEFAULT: unsigned(5 downto 0);
	VARIABLE SUM_PLAYER_IN: unsigned(5 downto 0);
	VARIABLE COUNTER: std_logic_vector(3 downto 0);
	
	begin
		
	-- INSTANTIATE unsigned variables corresponding to variables above
	if clk'EVENT and clk = '1' then
		COUNTER := ACE_COUNT_SIGNAL_IN AND ACE_TOGGLE;
		case COUNTER is
			when "0001" =>
				SUM_PLAYER_IN := DEFAULT + to_unsigned(10, 6);
			when  "0011" =>
				SUM_PLAYER_IN := DEFAULT + to_unsigned(20, 6);
			when  "0111" => 
				SUM_PLAYER_IN := DEFAULT + to_unsigned(30, 6);
			when  "1111" =>
				SUM_PLAYER_IN := DEFAULT + to_unsigned(40, 6);
			when others =>
				SUM_PLAYER_IN := DEFAULT;
		end case;
		
		case state is 
			when A =>
				DRAWS := '0';
				--SUM_PLAYER_IN := to_unsigned(0);
				ACE_COUNT := to_unsigned(0, 3);
				default := to_unsigned(0, 6);
				LEGAL_PLAY <= '1';
				if DONE = '1' then 
					state <= B;
					TURN <= '1';
				end if;
			
			when B =>
				if DRAWS = '0' then
					--SUM_PLAYER_IN := SUM_PLAYER_IN + unsigned(NEW_CARD);
					DEFAULT := DEFAULT + unsigned(NEW_CARD);
					if NEW_CARD = "000001" then
						ACE_COUNT := ACE_COUNT + 1;
					end if;
					DRAWS := '1';
				
				else 
					--SUM_PLAYER_IN := SUM_PLAYER_IN + unsigned(NEW_CARD);
					DEFAULT := DEFAULT + unsigned(NEW_CARD);
					if NEW_CARD = "000001" then
						ACE_COUNT := ACE_COUNT + 1;
					end if;
					state <= C;
				end if;
			
			when C => --wait for hit
				if HIT_EN = '1' then 
					state <= D;
				end if;
				if STOP_EN = '1' then
					state <= E;
				end if;
			
			when D => -- input new card
				--SUM_PLAYER_IN := SUM_PLAYER_IN + unsigned(NEW_CARD);
				DEFAULT := DEFAULT + unsigned(NEW_CARD);
				if NEW_CARD = "000001" then
						ACE_COUNT := ACE_COUNT + 1;
					end if;
				if DEFAULT > to_unsigned(21, 6) then 
					LEGAL_PLAY <= '0';
					state <= E; --end of game
				else state <= C;
				end if;
			
			when E =>
				TURN <= '0';
				if DONE = '0' then
					state <= A;
				end if;
		end case;
			
		case ACE_COUNT is
			when to_unsigned(1, 3) =>
				ACE_COUNT_SIGNAL_IN := "0001";
			when to_unsigned(2, 3) =>
				ACE_COUNT_SIGNAL_IN := "0011";
			when to_unsigned(3, 3) =>
				ACE_COUNT_SIGNAL_IN := "0111";
			when to_unsigned(4, 3) =>
				ACE_COUNT_SIGNAL_IN := "1111";
			when others =>
				ACE_COUNT_SIGNAL_IN := "0000";
		end case;
			
		PLAYER_SUM <= std_logic_vector(SUM_PLAYER_IN);
		ACE_COUNT_SIGNAL <= ACE_COUNT_SIGNAL_IN;
	end if;
end process state_update;
end system_fsm;
	
