-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "11/26/2017 17:17:21"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	g08_comp_player IS
    PORT (
	clk : IN std_logic;
	TURN : IN std_logic;
	NEW_GAME : IN std_logic;
	SUM_HUMAN : IN std_logic_vector(5 DOWNTO 0);
	HUMAN_LEGAL_PLAY : IN std_logic;
	NEW_CARD : IN std_logic_vector(5 DOWNTO 0);
	DONE : OUT std_logic;
	HUMAN_WINS : OUT std_logic_vector(1 DOWNTO 0);
	COMPUTER_WINS : OUT std_logic_vector(1 DOWNTO 0);
	GAME_OVER : OUT std_logic;
	WINNER : OUT std_logic
	);
END g08_comp_player;

-- Design Ports Information
-- DONE	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HUMAN_WINS[0]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HUMAN_WINS[1]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- COMPUTER_WINS[0]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- COMPUTER_WINS[1]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GAME_OVER	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WINNER	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NEW_GAME	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SUM_HUMAN[5]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SUM_HUMAN[4]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SUM_HUMAN[3]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SUM_HUMAN[2]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SUM_HUMAN[1]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SUM_HUMAN[0]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HUMAN_LEGAL_PLAY	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NEW_CARD[5]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NEW_CARD[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NEW_CARD[3]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NEW_CARD[2]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NEW_CARD[1]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NEW_CARD[0]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TURN	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g08_comp_player IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_TURN : std_logic;
SIGNAL ww_NEW_GAME : std_logic;
SIGNAL ww_SUM_HUMAN : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_HUMAN_LEGAL_PLAY : std_logic;
SIGNAL ww_NEW_CARD : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_DONE : std_logic;
SIGNAL ww_HUMAN_WINS : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_COMPUTER_WINS : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_GAME_OVER : std_logic;
SIGNAL ww_WINNER : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \state_update:HUMAN_WINS_IN[0]~1_combout\ : std_logic;
SIGNAL \state_update:SUM_COMPUTER_IN[5]~0_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \TURN~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \NEW_GAME~combout\ : std_logic;
SIGNAL \state_update:HUMAN_WINS_IN[0]~_wirecell_combout\ : std_logic;
SIGNAL \COMPUTER_WINS_IN~0_combout\ : std_logic;
SIGNAL \state_update:COMPUTER_WINS_IN[0]~_wirecell_combout\ : std_logic;
SIGNAL \HUMAN_LEGAL_PLAY~combout\ : std_logic;
SIGNAL \state_update:SUM_COMPUTER_IN[4]~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.A~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \state.A~1_combout\ : std_logic;
SIGNAL \state.A~regout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \state.B~regout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \state.C~regout\ : std_logic;
SIGNAL \state_update:SUM_COMPUTER_IN[4]~1_combout\ : std_logic;
SIGNAL \state_update:SUM_COMPUTER_IN[3]~regout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \state_update:SUM_COMPUTER_IN[4]~regout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \state_update:SUM_COMPUTER_IN[2]~regout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \state_update:SUM_COMPUTER_IN[0]~regout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \state_update:SUM_COMPUTER_IN[5]~1_combout\ : std_logic;
SIGNAL \state_update:SUM_COMPUTER_IN[5]~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.D~regout\ : std_logic;
SIGNAL \state_update:HUMAN_WINS_IN[0]~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \state_update:SUM_COMPUTER_IN[1]~regout\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~10_combout\ : std_logic;
SIGNAL \state_update:HUMAN_WINS_IN[0]~2_combout\ : std_logic;
SIGNAL \state_update:COMPUTER_WINS_IN[0]~0_combout\ : std_logic;
SIGNAL \state_update:COMPUTER_WINS_IN[0]~regout\ : std_logic;
SIGNAL \COMPUTER_WINS_IN~1_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \state_update:COMPUTER_WINS_IN[1]~regout\ : std_logic;
SIGNAL \state_update~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state.E~regout\ : std_logic;
SIGNAL \state_update:HUMAN_WINS_IN[0]~3_combout\ : std_logic;
SIGNAL \state_update:HUMAN_WINS_IN[0]~regout\ : std_logic;
SIGNAL \HUMAN_WINS_IN~0_combout\ : std_logic;
SIGNAL \HUMAN_WINS[0]~reg0feeder_combout\ : std_logic;
SIGNAL \HUMAN_WINS[0]~reg0_regout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \state_update:HUMAN_WINS_IN[1]~regout\ : std_logic;
SIGNAL \HUMAN_WINS_IN~1_combout\ : std_logic;
SIGNAL \HUMAN_WINS[1]~reg0_regout\ : std_logic;
SIGNAL \COMPUTER_WINS[0]~reg0feeder_combout\ : std_logic;
SIGNAL \COMPUTER_WINS[0]~reg0_regout\ : std_logic;
SIGNAL \COMPUTER_WINS[1]~reg0_regout\ : std_logic;
SIGNAL \GAME_OVER~0_combout\ : std_logic;
SIGNAL \GAME_OVER~reg0_regout\ : std_logic;
SIGNAL \WINNER~0_combout\ : std_logic;
SIGNAL \WINNER~1_combout\ : std_logic;
SIGNAL \WINNER~reg0_regout\ : std_logic;
SIGNAL \SUM_HUMAN~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \NEW_CARD~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_state.E~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_TURN <= TURN;
ww_NEW_GAME <= NEW_GAME;
ww_SUM_HUMAN <= SUM_HUMAN;
ww_HUMAN_LEGAL_PLAY <= HUMAN_LEGAL_PLAY;
ww_NEW_CARD <= NEW_CARD;
DONE <= ww_DONE;
HUMAN_WINS <= ww_HUMAN_WINS;
COMPUTER_WINS <= ww_COMPUTER_WINS;
GAME_OVER <= ww_GAME_OVER;
WINNER <= ww_WINNER;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_state.E~regout\ <= NOT \state.E~regout\;

-- Location: LCCOMB_X37_Y26_N10
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\NEW_CARD~combout\(4) $ (\state_update:SUM_COMPUTER_IN[4]~regout\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\NEW_CARD~combout\(4) & ((\state_update:SUM_COMPUTER_IN[4]~regout\) # (!\Add0~7\))) # (!\NEW_CARD~combout\(4) & (\state_update:SUM_COMPUTER_IN[4]~regout\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \NEW_CARD~combout\(4),
	datab => \state_update:SUM_COMPUTER_IN[4]~regout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X37_Y26_N12
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \state_update:SUM_COMPUTER_IN[5]~regout\ $ (\Add0~9\ $ (\NEW_CARD~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \state_update:SUM_COMPUTER_IN[5]~regout\,
	datad => \NEW_CARD~combout\(5),
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X37_Y26_N14
\state_update:HUMAN_WINS_IN[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_update:HUMAN_WINS_IN[0]~1_combout\ = (\state_update:SUM_COMPUTER_IN[0]~regout\ & (\state_update:SUM_COMPUTER_IN[2]~regout\ & \state_update:SUM_COMPUTER_IN[4]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_update:SUM_COMPUTER_IN[0]~regout\,
	datac => \state_update:SUM_COMPUTER_IN[2]~regout\,
	datad => \state_update:SUM_COMPUTER_IN[4]~regout\,
	combout => \state_update:HUMAN_WINS_IN[0]~1_combout\);

-- Location: LCCOMB_X37_Y26_N20
\state_update:SUM_COMPUTER_IN[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_update:SUM_COMPUTER_IN[5]~0_combout\ = (\state.C~regout\ & (!\state.E~regout\ & \Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.C~regout\,
	datac => \state.E~regout\,
	datad => \Add0~10_combout\,
	combout => \state_update:SUM_COMPUTER_IN[5]~0_combout\);

-- Location: LCCOMB_X39_Y26_N24
\Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\state.E~regout\ & (((!\NEW_GAME~combout\)))) # (!\state.E~regout\ & ((\TURN~combout\) # ((\state.A~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURN~combout\,
	datab => \state.E~regout\,
	datac => \NEW_GAME~combout\,
	datad => \state.A~regout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X39_Y26_N6
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\TURN~combout\) # ((\state.B~regout\) # (\state.D~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURN~combout\,
	datab => \state.B~regout\,
	datad => \state.D~regout\,
	combout => \Selector1~0_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SUM_HUMAN[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SUM_HUMAN(4),
	combout => \SUM_HUMAN~combout\(4));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SUM_HUMAN[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SUM_HUMAN(3),
	combout => \SUM_HUMAN~combout\(3));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SUM_HUMAN[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SUM_HUMAN(2),
	combout => \SUM_HUMAN~combout\(2));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SUM_HUMAN[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SUM_HUMAN(1),
	combout => \SUM_HUMAN~combout\(1));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NEW_CARD[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_NEW_CARD(5),
	combout => \NEW_CARD~combout\(5));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NEW_CARD[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_NEW_CARD(4),
	combout => \NEW_CARD~combout\(4));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NEW_CARD[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_NEW_CARD(3),
	combout => \NEW_CARD~combout\(3));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TURN~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TURN,
	combout => \TURN~combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NEW_GAME~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_NEW_GAME,
	combout => \NEW_GAME~combout\);

-- Location: LCCOMB_X39_Y26_N14
\state_update:HUMAN_WINS_IN[0]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_update:HUMAN_WINS_IN[0]~_wirecell_combout\ = !\state_update:HUMAN_WINS_IN[0]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_update:HUMAN_WINS_IN[0]~regout\,
	combout => \state_update:HUMAN_WINS_IN[0]~_wirecell_combout\);

-- Location: LCCOMB_X38_Y26_N14
\COMPUTER_WINS_IN~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMPUTER_WINS_IN~0_combout\ = (\state_update:COMPUTER_WINS_IN[0]~regout\ & ((\state_update~0_combout\) # (!\NEW_GAME~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEW_GAME~combout\,
	datac => \state_update:COMPUTER_WINS_IN[0]~regout\,
	datad => \state_update~0_combout\,
	combout => \COMPUTER_WINS_IN~0_combout\);

-- Location: LCCOMB_X35_Y26_N12
\state_update:COMPUTER_WINS_IN[0]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_update:COMPUTER_WINS_IN[0]~_wirecell_combout\ = !\state_update:COMPUTER_WINS_IN[0]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_update:COMPUTER_WINS_IN[0]~regout\,
	combout => \state_update:COMPUTER_WINS_IN[0]~_wirecell_combout\);

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\HUMAN_LEGAL_PLAY~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_HUMAN_LEGAL_PLAY,
	combout => \HUMAN_LEGAL_PLAY~combout\);

-- Location: LCCOMB_X38_Y26_N30
\state_update:SUM_COMPUTER_IN[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_update:SUM_COMPUTER_IN[4]~0_combout\ = ((\state_update~0_combout\) # (!\state.E~regout\)) # (!\NEW_GAME~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEW_GAME~combout\,
	datac => \state.E~regout\,
	datad => \state_update~0_combout\,
	combout => \state_update:SUM_COMPUTER_IN[4]~0_combout\);

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NEW_CARD[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_NEW_CARD(2),
	combout => \NEW_CARD~combout\(2));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NEW_CARD[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_NEW_CARD(1),
	combout => \NEW_CARD~combout\(1));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NEW_CARD[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_NEW_CARD(0),
	combout => \NEW_CARD~combout\(0));

-- Location: LCCOMB_X37_Y26_N2
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\state_update:SUM_COMPUTER_IN[0]~regout\ & (\NEW_CARD~combout\(0) $ (VCC))) # (!\state_update:SUM_COMPUTER_IN[0]~regout\ & (\NEW_CARD~combout\(0) & VCC))
-- \Add0~1\ = CARRY((\state_update:SUM_COMPUTER_IN[0]~regout\ & \NEW_CARD~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_update:SUM_COMPUTER_IN[0]~regout\,
	datab => \NEW_CARD~combout\(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X37_Y26_N4
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\state_update:SUM_COMPUTER_IN[1]~regout\ & ((\NEW_CARD~combout\(1) & (\Add0~1\ & VCC)) # (!\NEW_CARD~combout\(1) & (!\Add0~1\)))) # (!\state_update:SUM_COMPUTER_IN[1]~regout\ & ((\NEW_CARD~combout\(1) & (!\Add0~1\)) # 
-- (!\NEW_CARD~combout\(1) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\state_update:SUM_COMPUTER_IN[1]~regout\ & (!\NEW_CARD~combout\(1) & !\Add0~1\)) # (!\state_update:SUM_COMPUTER_IN[1]~regout\ & ((!\Add0~1\) # (!\NEW_CARD~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \state_update:SUM_COMPUTER_IN[1]~regout\,
	datab => \NEW_CARD~combout\(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X37_Y26_N6
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\state_update:SUM_COMPUTER_IN[2]~regout\ $ (\NEW_CARD~combout\(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\state_update:SUM_COMPUTER_IN[2]~regout\ & ((\NEW_CARD~combout\(2)) # (!\Add0~3\))) # (!\state_update:SUM_COMPUTER_IN[2]~regout\ & (\NEW_CARD~combout\(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \state_update:SUM_COMPUTER_IN[2]~regout\,
	datab => \NEW_CARD~combout\(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X37_Y26_N8
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\NEW_CARD~combout\(3) & ((\state_update:SUM_COMPUTER_IN[3]~regout\ & (\Add0~5\ & VCC)) # (!\state_update:SUM_COMPUTER_IN[3]~regout\ & (!\Add0~5\)))) # (!\NEW_CARD~combout\(3) & ((\state_update:SUM_COMPUTER_IN[3]~regout\ & (!\Add0~5\)) 
-- # (!\state_update:SUM_COMPUTER_IN[3]~regout\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\NEW_CARD~combout\(3) & (!\state_update:SUM_COMPUTER_IN[3]~regout\ & !\Add0~5\)) # (!\NEW_CARD~combout\(3) & ((!\Add0~5\) # (!\state_update:SUM_COMPUTER_IN[3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \NEW_CARD~combout\(3),
	datab => \state_update:SUM_COMPUTER_IN[3]~regout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X37_Y26_N28
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\state.E~regout\ & \Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.E~regout\,
	datac => \Add0~6_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X39_Y26_N2
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\state.D~regout\ & ((!\state_update~0_combout\) # (!\state.E~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.D~regout\,
	datab => \state.E~regout\,
	datad => \state_update~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X39_Y26_N28
\state.A~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.A~0_combout\ = ((\state.B~regout\) # (\state.D~regout\)) # (!\TURN~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURN~combout\,
	datab => \state.B~regout\,
	datad => \state.D~regout\,
	combout => \state.A~0_combout\);

-- Location: LCCOMB_X39_Y26_N0
\Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\state.E~regout\ & ((\state_update~0_combout\) # (\NEW_GAME~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_update~0_combout\,
	datac => \NEW_GAME~combout\,
	datad => \state.E~regout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X39_Y26_N18
\state.A~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.A~1_combout\ = (!\Selector0~1_combout\ & ((\Selector0~0_combout\) # ((\state.A~0_combout\) # (\state.A~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \state.A~0_combout\,
	datac => \state.A~regout\,
	datad => \Selector0~1_combout\,
	combout => \state.A~1_combout\);

-- Location: LCFF_X39_Y26_N19
\state.A\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state.A~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.A~regout\);

-- Location: LCCOMB_X39_Y26_N22
\Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\Selector1~0_combout\ & (!\state.A~regout\ & (!\Selector0~0_combout\ & !\Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \state.A~regout\,
	datac => \Selector0~0_combout\,
	datad => \Selector0~1_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCFF_X39_Y26_N23
\state.B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.B~regout\);

-- Location: LCCOMB_X39_Y26_N16
\Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\state.B~regout\ & ((\HUMAN_LEGAL_PLAY~combout\))) # (!\state.B~regout\ & (\state.C~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.B~regout\,
	datac => \state.C~regout\,
	datad => \HUMAN_LEGAL_PLAY~combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X39_Y26_N10
\Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\Selector2~2_combout\) # ((\state.B~regout\) # ((\state.A~regout\ & \state_update~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~2_combout\,
	datab => \state.A~regout\,
	datac => \state_update~0_combout\,
	datad => \state.B~regout\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X39_Y26_N20
\Selector2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (!\Selector0~0_combout\ & (\Selector2~0_combout\ & (\Selector2~1_combout\ & \Selector2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector2~0_combout\,
	datac => \Selector2~1_combout\,
	datad => \Selector2~3_combout\,
	combout => \Selector2~4_combout\);

-- Location: LCFF_X39_Y26_N21
\state.C\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.C~regout\);

-- Location: LCCOMB_X37_Y26_N18
\state_update:SUM_COMPUTER_IN[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_update:SUM_COMPUTER_IN[4]~1_combout\ = ((!\state_update:SUM_COMPUTER_IN[5]~regout\ & (!\LessThan0~1_combout\ & \state.C~regout\))) # (!\state_update:SUM_COMPUTER_IN[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_update:SUM_COMPUTER_IN[5]~regout\,
	datab => \LessThan0~1_combout\,
	datac => \state.C~regout\,
	datad => \state_update:SUM_COMPUTER_IN[4]~0_combout\,
	combout => \state_update:SUM_COMPUTER_IN[4]~1_combout\);

-- Location: LCFF_X37_Y26_N29
\state_update:SUM_COMPUTER_IN[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector7~0_combout\,
	ena => \state_update:SUM_COMPUTER_IN[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_update:SUM_COMPUTER_IN[3]~regout\);

-- Location: LCCOMB_X37_Y26_N26
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\state.E~regout\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.E~regout\,
	datad => \Add0~8_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCFF_X37_Y26_N27
\state_update:SUM_COMPUTER_IN[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector6~0_combout\,
	ena => \state_update:SUM_COMPUTER_IN[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_update:SUM_COMPUTER_IN[4]~regout\);

-- Location: LCCOMB_X36_Y26_N0
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (!\state.E~regout\ & \Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.E~regout\,
	datad => \Add0~4_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCFF_X37_Y26_N23
\state_update:SUM_COMPUTER_IN[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector8~0_combout\,
	sload => VCC,
	ena => \state_update:SUM_COMPUTER_IN[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_update:SUM_COMPUTER_IN[2]~regout\);

-- Location: LCCOMB_X36_Y26_N30
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\state.E~regout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.E~regout\,
	datad => \Add0~0_combout\,
	combout => \Selector10~0_combout\);

-- Location: LCFF_X37_Y26_N31
\state_update:SUM_COMPUTER_IN[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Selector10~0_combout\,
	sload => VCC,
	ena => \state_update:SUM_COMPUTER_IN[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_update:SUM_COMPUTER_IN[0]~regout\);

-- Location: LCCOMB_X37_Y26_N22
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\state_update:SUM_COMPUTER_IN[1]~regout\) # ((\state_update:SUM_COMPUTER_IN[3]~regout\) # ((\state_update:SUM_COMPUTER_IN[2]~regout\) # (\state_update:SUM_COMPUTER_IN[0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_update:SUM_COMPUTER_IN[1]~regout\,
	datab => \state_update:SUM_COMPUTER_IN[3]~regout\,
	datac => \state_update:SUM_COMPUTER_IN[2]~regout\,
	datad => \state_update:SUM_COMPUTER_IN[0]~regout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y26_N30
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\state_update:SUM_COMPUTER_IN[4]~regout\ & \LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_update:SUM_COMPUTER_IN[4]~regout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X37_Y26_N16
\state_update:SUM_COMPUTER_IN[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_update:SUM_COMPUTER_IN[5]~1_combout\ = (\state_update:SUM_COMPUTER_IN[5]~0_combout\ & (((\state_update:SUM_COMPUTER_IN[4]~0_combout\ & \state_update:SUM_COMPUTER_IN[5]~regout\)) # (!\LessThan0~1_combout\))) # 
-- (!\state_update:SUM_COMPUTER_IN[5]~0_combout\ & (\state_update:SUM_COMPUTER_IN[4]~0_combout\ & (\state_update:SUM_COMPUTER_IN[5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_update:SUM_COMPUTER_IN[5]~0_combout\,
	datab => \state_update:SUM_COMPUTER_IN[4]~0_combout\,
	datac => \state_update:SUM_COMPUTER_IN[5]~regout\,
	datad => \LessThan0~1_combout\,
	combout => \state_update:SUM_COMPUTER_IN[5]~1_combout\);

-- Location: LCFF_X37_Y26_N17
\state_update:SUM_COMPUTER_IN[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state_update:SUM_COMPUTER_IN[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_update:SUM_COMPUTER_IN[5]~regout\);

-- Location: LCCOMB_X38_Y26_N20
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.C~regout\ & ((\state_update:SUM_COMPUTER_IN[5]~regout\) # ((\LessThan0~0_combout\ & \state_update:SUM_COMPUTER_IN[4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.C~regout\,
	datab => \state_update:SUM_COMPUTER_IN[5]~regout\,
	datac => \LessThan0~0_combout\,
	datad => \state_update:SUM_COMPUTER_IN[4]~regout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X39_Y26_N12
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Selector2~0_combout\ & ((\Selector0~0_combout\) # ((\state.B~regout\ & !\HUMAN_LEGAL_PLAY~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.B~regout\,
	datab => \HUMAN_LEGAL_PLAY~combout\,
	datac => \Selector0~0_combout\,
	datad => \Selector2~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X39_Y26_N13
\state.D\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.D~regout\);

-- Location: LCCOMB_X37_Y26_N0
\state_update:HUMAN_WINS_IN[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_update:HUMAN_WINS_IN[0]~0_combout\ = ((!\state_update:SUM_COMPUTER_IN[3]~regout\ & ((!\state_update:SUM_COMPUTER_IN[2]~regout\) # (!\state_update:SUM_COMPUTER_IN[1]~regout\)))) # (!\state_update:SUM_COMPUTER_IN[4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_update:SUM_COMPUTER_IN[1]~regout\,
	datab => \state_update:SUM_COMPUTER_IN[3]~regout\,
	datac => \state_update:SUM_COMPUTER_IN[2]~regout\,
	datad => \state_update:SUM_COMPUTER_IN[4]~regout\,
	combout => \state_update:HUMAN_WINS_IN[0]~0_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SUM_HUMAN[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SUM_HUMAN(5),
	combout => \SUM_HUMAN~combout\(5));

-- Location: LCCOMB_X37_Y26_N24
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!\state.E~regout\ & \Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.E~regout\,
	datac => \Add0~2_combout\,
	combout => \Selector9~0_combout\);

-- Location: LCFF_X37_Y26_N25
\state_update:SUM_COMPUTER_IN[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector9~0_combout\,
	ena => \state_update:SUM_COMPUTER_IN[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_update:SUM_COMPUTER_IN[1]~regout\);

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SUM_HUMAN[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SUM_HUMAN(0),
	combout => \SUM_HUMAN~combout\(0));

-- Location: LCCOMB_X38_Y26_N0
\LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY((!\state_update:SUM_COMPUTER_IN[0]~regout\ & \SUM_HUMAN~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \state_update:SUM_COMPUTER_IN[0]~regout\,
	datab => \SUM_HUMAN~combout\(0),
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X38_Y26_N2
\LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((\SUM_HUMAN~combout\(1) & (\state_update:SUM_COMPUTER_IN[1]~regout\ & !\LessThan2~1_cout\)) # (!\SUM_HUMAN~combout\(1) & ((\state_update:SUM_COMPUTER_IN[1]~regout\) # (!\LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SUM_HUMAN~combout\(1),
	datab => \state_update:SUM_COMPUTER_IN[1]~regout\,
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X38_Y26_N4
\LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((\SUM_HUMAN~combout\(2) & ((!\LessThan2~3_cout\) # (!\state_update:SUM_COMPUTER_IN[2]~regout\))) # (!\SUM_HUMAN~combout\(2) & (!\state_update:SUM_COMPUTER_IN[2]~regout\ & !\LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SUM_HUMAN~combout\(2),
	datab => \state_update:SUM_COMPUTER_IN[2]~regout\,
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X38_Y26_N6
\LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((\SUM_HUMAN~combout\(3) & (\state_update:SUM_COMPUTER_IN[3]~regout\ & !\LessThan2~5_cout\)) # (!\SUM_HUMAN~combout\(3) & ((\state_update:SUM_COMPUTER_IN[3]~regout\) # (!\LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SUM_HUMAN~combout\(3),
	datab => \state_update:SUM_COMPUTER_IN[3]~regout\,
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X38_Y26_N8
\LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((\SUM_HUMAN~combout\(4) & ((!\LessThan2~7_cout\) # (!\state_update:SUM_COMPUTER_IN[4]~regout\))) # (!\SUM_HUMAN~combout\(4) & (!\state_update:SUM_COMPUTER_IN[4]~regout\ & !\LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SUM_HUMAN~combout\(4),
	datab => \state_update:SUM_COMPUTER_IN[4]~regout\,
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X38_Y26_N10
\LessThan2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~10_combout\ = (\SUM_HUMAN~combout\(5) & ((\LessThan2~9_cout\) # (!\state_update:SUM_COMPUTER_IN[5]~regout\))) # (!\SUM_HUMAN~combout\(5) & (\LessThan2~9_cout\ & !\state_update:SUM_COMPUTER_IN[5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SUM_HUMAN~combout\(5),
	datad => \state_update:SUM_COMPUTER_IN[5]~regout\,
	cin => \LessThan2~9_cout\,
	combout => \LessThan2~10_combout\);

-- Location: LCCOMB_X38_Y26_N18
\state_update:HUMAN_WINS_IN[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_update:HUMAN_WINS_IN[0]~2_combout\ = (!\state_update:SUM_COMPUTER_IN[5]~regout\ & (\state_update:HUMAN_WINS_IN[0]~0_combout\ & ((\state_update:HUMAN_WINS_IN[0]~1_combout\) # (!\LessThan2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_update:HUMAN_WINS_IN[0]~1_combout\,
	datab => \state_update:SUM_COMPUTER_IN[5]~regout\,
	datac => \state_update:HUMAN_WINS_IN[0]~0_combout\,
	datad => \LessThan2~10_combout\,
	combout => \state_update:HUMAN_WINS_IN[0]~2_combout\);

-- Location: LCCOMB_X38_Y26_N26
\state_update:COMPUTER_WINS_IN[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_update:COMPUTER_WINS_IN[0]~0_combout\ = (\state.D~regout\ & (((\state_update:HUMAN_WINS_IN[0]~2_combout\)) # (!\HUMAN_LEGAL_PLAY~combout\))) # (!\state.D~regout\ & (((\state.E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HUMAN_LEGAL_PLAY~combout\,
	datab => \state.D~regout\,
	datac => \state.E~regout\,
	datad => \state_update:HUMAN_WINS_IN[0]~2_combout\,
	combout => \state_update:COMPUTER_WINS_IN[0]~0_combout\);

-- Location: LCFF_X38_Y26_N15
\state_update:COMPUTER_WINS_IN[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \COMPUTER_WINS_IN~0_combout\,
	sdata => \state_update:COMPUTER_WINS_IN[0]~_wirecell_combout\,
	sload => \ALT_INV_state.E~regout\,
	ena => \state_update:COMPUTER_WINS_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_update:COMPUTER_WINS_IN[0]~regout\);

-- Location: LCCOMB_X39_Y26_N30
\COMPUTER_WINS_IN~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMPUTER_WINS_IN~1_combout\ = (\state_update:COMPUTER_WINS_IN[1]~regout\ & ((\state_update~0_combout\) # (!\NEW_GAME~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_update:COMPUTER_WINS_IN[1]~regout\,
	datac => \NEW_GAME~combout\,
	datad => \state_update~0_combout\,
	combout => \COMPUTER_WINS_IN~1_combout\);

-- Location: LCCOMB_X38_Y26_N22
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\state.E~regout\ & (((\COMPUTER_WINS_IN~1_combout\)))) # (!\state.E~regout\ & (\state_update:COMPUTER_WINS_IN[0]~regout\ $ ((\state_update:COMPUTER_WINS_IN[1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.E~regout\,
	datab => \state_update:COMPUTER_WINS_IN[0]~regout\,
	datac => \state_update:COMPUTER_WINS_IN[1]~regout\,
	datad => \COMPUTER_WINS_IN~1_combout\,
	combout => \Selector11~0_combout\);

-- Location: LCFF_X38_Y26_N23
\state_update:COMPUTER_WINS_IN[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector11~0_combout\,
	ena => \state_update:COMPUTER_WINS_IN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_update:COMPUTER_WINS_IN[1]~regout\);

-- Location: LCCOMB_X38_Y26_N28
\state_update~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_update~0_combout\ = (\state_update:HUMAN_WINS_IN[1]~regout\ & (!\state_update:HUMAN_WINS_IN[0]~regout\ & ((!\state_update:COMPUTER_WINS_IN[0]~regout\) # (!\state_update:COMPUTER_WINS_IN[1]~regout\)))) # (!\state_update:HUMAN_WINS_IN[1]~regout\ & 
-- (((!\state_update:COMPUTER_WINS_IN[0]~regout\)) # (!\state_update:COMPUTER_WINS_IN[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_update:HUMAN_WINS_IN[1]~regout\,
	datab => \state_update:COMPUTER_WINS_IN[1]~regout\,
	datac => \state_update:COMPUTER_WINS_IN[0]~regout\,
	datad => \state_update:HUMAN_WINS_IN[0]~regout\,
	combout => \state_update~0_combout\);

-- Location: LCCOMB_X39_Y26_N26
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.D~regout\) # ((!\NEW_GAME~combout\ & (!\state_update~0_combout\ & \state.E~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEW_GAME~combout\,
	datab => \state_update~0_combout\,
	datac => \state.E~regout\,
	datad => \state.D~regout\,
	combout => \Selector4~0_combout\);

-- Location: LCFF_X39_Y26_N27
\state.E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.E~regout\);

-- Location: LCCOMB_X38_Y26_N24
\state_update:HUMAN_WINS_IN[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_update:HUMAN_WINS_IN[0]~3_combout\ = (\state.D~regout\ & (\HUMAN_LEGAL_PLAY~combout\ & ((!\state_update:HUMAN_WINS_IN[0]~2_combout\)))) # (!\state.D~regout\ & (((\state.E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HUMAN_LEGAL_PLAY~combout\,
	datab => \state.D~regout\,
	datac => \state.E~regout\,
	datad => \state_update:HUMAN_WINS_IN[0]~2_combout\,
	combout => \state_update:HUMAN_WINS_IN[0]~3_combout\);

-- Location: LCFF_X38_Y26_N13
\state_update:HUMAN_WINS_IN[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \HUMAN_WINS_IN~0_combout\,
	sdata => \state_update:HUMAN_WINS_IN[0]~_wirecell_combout\,
	sload => \ALT_INV_state.E~regout\,
	ena => \state_update:HUMAN_WINS_IN[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_update:HUMAN_WINS_IN[0]~regout\);

-- Location: LCCOMB_X38_Y26_N12
\HUMAN_WINS_IN~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \HUMAN_WINS_IN~0_combout\ = (\state_update:HUMAN_WINS_IN[0]~regout\ & ((\state_update~0_combout\) # (!\NEW_GAME~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NEW_GAME~combout\,
	datac => \state_update:HUMAN_WINS_IN[0]~regout\,
	datad => \state_update~0_combout\,
	combout => \HUMAN_WINS_IN~0_combout\);

-- Location: LCCOMB_X35_Y26_N0
\HUMAN_WINS[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \HUMAN_WINS[0]~reg0feeder_combout\ = \HUMAN_WINS_IN~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HUMAN_WINS_IN~0_combout\,
	combout => \HUMAN_WINS[0]~reg0feeder_combout\);

-- Location: LCFF_X35_Y26_N1
\HUMAN_WINS[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \HUMAN_WINS[0]~reg0feeder_combout\,
	ena => \state.E~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HUMAN_WINS[0]~reg0_regout\);

-- Location: LCCOMB_X38_Y26_N16
\Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state.E~regout\ & (\HUMAN_WINS_IN~1_combout\)) # (!\state.E~regout\ & ((\state_update:HUMAN_WINS_IN[1]~regout\ $ (\state_update:HUMAN_WINS_IN[0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.E~regout\,
	datab => \HUMAN_WINS_IN~1_combout\,
	datac => \state_update:HUMAN_WINS_IN[1]~regout\,
	datad => \state_update:HUMAN_WINS_IN[0]~regout\,
	combout => \Selector13~0_combout\);

-- Location: LCFF_X38_Y26_N17
\state_update:HUMAN_WINS_IN[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector13~0_combout\,
	ena => \state_update:HUMAN_WINS_IN[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_update:HUMAN_WINS_IN[1]~regout\);

-- Location: LCCOMB_X39_Y26_N8
\HUMAN_WINS_IN~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \HUMAN_WINS_IN~1_combout\ = (\state_update:HUMAN_WINS_IN[1]~regout\ & ((\state_update~0_combout\) # (!\NEW_GAME~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_update:HUMAN_WINS_IN[1]~regout\,
	datac => \NEW_GAME~combout\,
	datad => \state_update~0_combout\,
	combout => \HUMAN_WINS_IN~1_combout\);

-- Location: LCFF_X39_Y26_N9
\HUMAN_WINS[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \HUMAN_WINS_IN~1_combout\,
	ena => \state.E~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HUMAN_WINS[1]~reg0_regout\);

-- Location: LCCOMB_X35_Y26_N22
\COMPUTER_WINS[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMPUTER_WINS[0]~reg0feeder_combout\ = \COMPUTER_WINS_IN~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COMPUTER_WINS_IN~0_combout\,
	combout => \COMPUTER_WINS[0]~reg0feeder_combout\);

-- Location: LCFF_X35_Y26_N23
\COMPUTER_WINS[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \COMPUTER_WINS[0]~reg0feeder_combout\,
	ena => \state.E~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \COMPUTER_WINS[0]~reg0_regout\);

-- Location: LCFF_X39_Y26_N31
\COMPUTER_WINS[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \COMPUTER_WINS_IN~1_combout\,
	ena => \state.E~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \COMPUTER_WINS[1]~reg0_regout\);

-- Location: LCCOMB_X39_Y26_N4
\GAME_OVER~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \GAME_OVER~0_combout\ = (\state_update~0_combout\ & (((\GAME_OVER~reg0_regout\)))) # (!\state_update~0_combout\ & ((\state.E~regout\ & (!\NEW_GAME~combout\)) # (!\state.E~regout\ & ((\GAME_OVER~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEW_GAME~combout\,
	datab => \state_update~0_combout\,
	datac => \GAME_OVER~reg0_regout\,
	datad => \state.E~regout\,
	combout => \GAME_OVER~0_combout\);

-- Location: LCFF_X39_Y26_N5
\GAME_OVER~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GAME_OVER~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GAME_OVER~reg0_regout\);

-- Location: LCCOMB_X35_Y26_N2
\WINNER~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WINNER~0_combout\ = (\WINNER~reg0_regout\ & ((!\state_update:COMPUTER_WINS_IN[1]~regout\) # (!\state_update:COMPUTER_WINS_IN[0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_update:COMPUTER_WINS_IN[0]~regout\,
	datac => \WINNER~reg0_regout\,
	datad => \state_update:COMPUTER_WINS_IN[1]~regout\,
	combout => \WINNER~0_combout\);

-- Location: LCCOMB_X35_Y26_N20
\WINNER~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WINNER~1_combout\ = (\WINNER~0_combout\) # ((\state_update:HUMAN_WINS_IN[0]~regout\ & \state_update:HUMAN_WINS_IN[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WINNER~0_combout\,
	datac => \state_update:HUMAN_WINS_IN[0]~regout\,
	datad => \state_update:HUMAN_WINS_IN[1]~regout\,
	combout => \WINNER~1_combout\);

-- Location: LCFF_X35_Y26_N21
\WINNER~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WINNER~1_combout\,
	ena => \state.E~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \WINNER~reg0_regout\);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DONE~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DONE);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HUMAN_WINS[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \HUMAN_WINS[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HUMAN_WINS(0));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HUMAN_WINS[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \HUMAN_WINS[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HUMAN_WINS(1));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\COMPUTER_WINS[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \COMPUTER_WINS[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_COMPUTER_WINS(0));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\COMPUTER_WINS[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \COMPUTER_WINS[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_COMPUTER_WINS(1));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GAME_OVER~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GAME_OVER~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GAME_OVER);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\WINNER~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WINNER~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WINNER);
END structure;


