-- this circuit implements the computer player FSM
--- entity name: g08_computer
--- Copyright (C) 2017 Tiffany WANG, Frank YE
-- Version 1.0 
-- Author: Tiffany WANG, Frank YE; tiffany.wang@mail.mcgill.ca, frank.ye@mail.mcgill.ca
-- Date: 26 Nov 2017

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity g08_comp_player is
port ( clk : in std_logic;
		 TURN: in std_logic;  -- TURN = 1 : Human Player turn TURN = 0 : Computer turn
		 NEW_GAME: in std_logic;
		 SUM_HUMAN: in std_logic_vector(5 downto 0);
		 HUMAN_LEGAL_PLAY: in std_logic;
		 NEW_CARD: in std_logic_vector(5 downto 0);
		 DONE: out std_logic; --  DONE = 0 when TURN = 1
		 HUMAN_WINS: out std_logic_vector(1 downto 0);
		 COMPUTER_WINS: out std_logic_vector(1 downto 0);
		 GAME_OVER: out std_logic;
		 WINNER: out std_logic;
		 REQUEST_NEW_CARD: out std_logic;
		 SUM_COMPUTER: out std_logic_vector(5 downto 0)); -- WINNER = 1: Human Player wins, WINNER = 0: Computer wins
end g08_comp_player;

architecture computer of g08_comp_player is
TYPE state_signal IS (newRound, A, B, C, D, E); -- 5 states from state transition diagram
SIGNAL state: state_signal;
		
begin
state_update : process(clk)
	VARIABLE SUM_HUMAN_IN: unsigned(5 downto 0);
	VARIABLE SUM_COMPUTER_IN: unsigned(5 downto 0);
	VARIABLE CARD_TO_PLAY: unsigned(5 downto 0);
	VARIABLE COMPUTER_WINS_IN: unsigned(1 downto 0);
	VARIABLE HUMAN_WINS_IN: unsigned(1 downto 0);
	VARIABLE TOP_CARD: unsigned(5 downto 0);
	VARIABLE DRAWS: std_logic;

	begin
		SUM_HUMAN_IN := unsigned(SUM_HUMAN);
		CARD_TO_PLAY := unsigned(NEW_CARD);
	
		if clk'EVENT and clk = '1' then
			if NEW_GAME = '1' then
				COMPUTER_WINS_IN := to_unsigned(0, 2);
				HUMAN_WINS_IN := to_unsigned(0, 2);
				SUM_COMPUTER_IN := to_unsigned(0, 6);
				GAME_OVER <= '0';
				state <= A;
			end if;
			case state is
				when newRound =>
					if DRAWS = '0' then 
						DRAWS := '1';
						SUM_COMPUTER_IN := CARD_TO_PLAY;
					else 
						SUM_COMPUTER_IN := SUM_COMPUTER_IN + CARD_TO_PLAY;
						TOP_CARD := CARD_TO_PLAY;
						if SUM_COMPUTER_IN = 21 then
							state <= D;
						else 
							state <= A;
							DONE <= '1'; -- gives control to player FSM 
						end if;
					end if;
				when A =>
					if TURN = '0' then state <= B; -- computer's turn
					end if;
				when B =>
					if HUMAN_LEGAL_PLAY = '0' then state <= D ;
					else state <= C;
					end if;	
				when C => 
					if SUM_COMPUTER_IN > 16 then 
						state <= D;
						REQUEST_NEW_CARD <= '0';
					else 
						SUM_COMPUTER_IN := (SUM_COMPUTER_IN + CARD_TO_PLAY);
						REQUEST_NEW_CARD <= '1';
					end if;
						--round is over go back to waiting human to finish next round
				when D => 
					if SUM_COMPUTER_IN = 21 then COMPUTER_WINS_IN := COMPUTER_WINS_IN + 1;
					elsif (SUM_COMPUTER_IN > 21) then HUMAN_WINS_IN := HUMAN_WINS_IN + 1;
					elsif  HUMAN_LEGAL_PLAY = '0' then COMPUTER_WINS_IN := COMPUTER_WINS_IN + 1;
					elsif (SUM_COMPUTER_IN >= SUM_HUMAN_IN) then COMPUTER_WINS_IN := COMPUTER_WINS_IN + 1;
					else HUMAN_WINS_IN := HUMAN_WINS_IN + 1;
					end if;
					state <= E;
				when E =>
					if (HUMAN_WINS_IN = 3 OR COMPUTER_WINS_IN = 3) then
						GAME_OVER <= '1';
						if HUMAN_WINS_IN = 3 then 
							WINNER <= '1';
						else WINNER <= '0';
						end if;
					else 
						state <= newRound;
						DRAWS := '0';
					end if;
					
					HUMAN_WINS <= std_logic_vector(HUMAN_WINS_IN);
					COMPUTER_WINS <= std_logic_vector(COMPUTER_WINS_IN);
			
			end case;
			
			SUM_COMPUTER <= std_logic_vector(SUM_COMPUTER_IN);
		end if;
 	end process state_update;
end computer;
