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
		 RESET : in std_logic;
		 SUM_HUMAN: in std_logic_vector(5 downto 0);
		 HUMAN_LEGAL_PLAY: in std_logic;
		 NEW_CARD: in std_logic_vector(5 downto 0);
		 DONE: out std_logic; --  DONE = 0 when TURN = 1
		 HUMAN_WINS: out std_logic_vector(1 downto 0);
		 COMPUTER_WINS: out std_logic_vector(1 downto 0);
		 STATE_OUT : out  std_logic_vector(3 downto 0);
		 GAME_OVER: out std_logic;
		 WINNER: out std_logic;
		 REQUEST_NEW_CARD: out std_logic;
		 SUM_COMPUTER: out std_logic_vector(5 downto 0)); -- WINNER = 1: Human Player wins, WINNER = 0: Computer wins
end g08_comp_player;

architecture computer of g08_comp_player is
TYPE state_signal IS (goLowFirst, newGame, newGameDebounce,newRound, player, A, B, C, D, E); -- 5 states from state transition diagram
SIGNAL state: state_signal;
		
begin
state_update : process(clk, RESET)
	VARIABLE SUM_HUMAN_IN: unsigned(5 downto 0);
	VARIABLE SUM_COMPUTER_IN: unsigned(5 downto 0);
	VARIABLE CARD_TO_PLAY: unsigned(5 downto 0);
	VARIABLE COMPUTER_WINS_IN: unsigned(1 downto 0);
	VARIABLE HUMAN_WINS_IN: unsigned(1 downto 0);
	VARIABLE TOP_CARD: unsigned(5 downto 0);
	VARIABLE DRAWS: std_logic;

	begin
		if RESET = '1' then
			STATE_OUT <= "1001";
			state <= goLowFirst;
		elsif clk'EVENT and clk = '1' then
			SUM_HUMAN_IN := unsigned(SUM_HUMAN);
			CARD_TO_PLAY := unsigned(NEW_CARD);
				case state is
					when goLowFirst => 
						STATE_OUT <= "1111";
						COMPUTER_WINS_IN := to_unsigned(0, 2);
						HUMAN_WINS_IN := to_unsigned(0, 2);
						SUM_COMPUTER_IN := to_unsigned(0, 6);	
						GAME_OVER <= '0';
						DONE <= '0';
						if NEW_GAME = '0' then
							state <= newGame;
						end if;
					when newGame => 
						STATE_OUT <= "0000";
						if NEW_GAME = '1' then
							state <= newGameDebounce;
						end if;
					when newGameDebounce =>
						STATE_OUT <= "0001";
						REQUEST_NEW_CARD <= '1';
						state <= newRound;
					
					when newRound =>
						STATE_OUT <= "0010";
						SUM_COMPUTER_IN := to_unsigned(0, 6);
						if DRAWS = '0' then 
							DRAWS := '1';
							SUM_COMPUTER_IN := CARD_TO_PLAY;
						else 
							SUM_COMPUTER_IN := SUM_COMPUTER_IN + CARD_TO_PLAY;
							TOP_CARD := CARD_TO_PLAY;
							if SUM_COMPUTER_IN = 21 then
								state <= D;
							else
								state <= player;
								DONE <= '1';
							end if;
						end if;
					when player =>
					STATE_OUT <= "0011";
						if TURN ='1' then
							REQUEST_NEW_CARD <= '0';
							state <= A;
						end if;
					when A =>
					STATE_OUT <= "0100";
						if TURN = '0' then 
							REQUEST_NEW_CARD <= '1';
							state <= B; -- computer's turn
						end if;
					when B =>
					STATE_OUT <= "0101";
						if HUMAN_LEGAL_PLAY = '0' then state <= D ;
						else state <= C;
						end if;	
					when C => 
					STATE_OUT <= "0110";
						if SUM_COMPUTER_IN > 16 then 
							state <= D;
							REQUEST_NEW_CARD <= '0';
						else 
							SUM_COMPUTER_IN := (SUM_COMPUTER_IN + CARD_TO_PLAY);
						end if;
							--round is over go back to waiting human to finish next round
					when D => 
						STATE_OUT <= "0111";
						if SUM_COMPUTER_IN = 21 then COMPUTER_WINS_IN := COMPUTER_WINS_IN + 1;
						elsif (SUM_COMPUTER_IN > 21) then HUMAN_WINS_IN := HUMAN_WINS_IN + 1;
						elsif  HUMAN_LEGAL_PLAY = '0' then COMPUTER_WINS_IN := COMPUTER_WINS_IN + 1;
						elsif (SUM_COMPUTER_IN >= SUM_HUMAN_IN) then COMPUTER_WINS_IN := COMPUTER_WINS_IN + 1;
						else HUMAN_WINS_IN := HUMAN_WINS_IN + 1;
						end if;
						state <= E;
					when E =>
					STATE_OUT <= "1000";
						if (HUMAN_WINS_IN = 3 OR COMPUTER_WINS_IN = 3) then
							GAME_OVER <= '1';
							if HUMAN_WINS_IN = 3 then 
								WINNER <= '1';
							else WINNER <= '0';
							end if;
						else 
							state <= newGameDebounce;
							DRAWS := '0';
							DONE <= '0';
						end if;
				end case;
		end if;
		COMPUTER_WINS <= std_logic_vector(COMPUTER_WINS_IN);
		HUMAN_WINS <= std_logic_vector(HUMAN_WINS_IN);
		SUM_COMPUTER <= std_logic_vector(SUM_COMPUTER_IN);
 	end process state_update;
end computer;
