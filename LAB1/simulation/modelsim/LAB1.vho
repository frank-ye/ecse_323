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

-- DATE "09/29/2017 16:42:56"

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

ENTITY 	FLOOR13 IS
    PORT (
	\OUT\ : OUT std_logic_vector(8 DOWNTO 0);
	\IN\ : IN std_logic_vector(5 DOWNTO 0)
	);
END FLOOR13;

-- Design Ports Information
-- OUT[8]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT[7]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT[6]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT[5]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT[4]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT[3]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT[2]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT[1]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUT[0]	=>  Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IN[5]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IN[0]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IN[2]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IN[3]	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IN[1]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IN[4]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF FLOOR13 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_OUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ww_IN\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst10|inst6~0_combout\ : std_logic;
SIGNAL \inst|inst11|inst6~0_combout\ : std_logic;
SIGNAL \inst|inst14|inst6~combout\ : std_logic;
SIGNAL \inst|inst12|inst6~0_combout\ : std_logic;
SIGNAL \inst|inst14|inst2~combout\ : std_logic;
SIGNAL \inst|inst13|inst2~combout\ : std_logic;
SIGNAL \inst|inst11|inst6~1_combout\ : std_logic;
SIGNAL \inst|inst12|inst2~combout\ : std_logic;
SIGNAL \inst|inst11|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst10|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst9|inst~0_combout\ : std_logic;
SIGNAL \IN~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst9|ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \inst|inst13|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst|inst14|ALT_INV_inst2~combout\ : std_logic;

BEGIN

\OUT\ <= \ww_OUT\;
\ww_IN\ <= \IN\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|inst9|ALT_INV_inst~0_combout\ <= NOT \inst|inst9|inst~0_combout\;
\inst|inst13|ALT_INV_inst2~combout\ <= NOT \inst|inst13|inst2~combout\;
\inst|inst14|ALT_INV_inst2~combout\ <= NOT \inst|inst14|inst2~combout\;

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IN[4]~I\ : cycloneii_io
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
	padio => \ww_IN\(4),
	combout => \IN~combout\(4));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IN[2]~I\ : cycloneii_io
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
	padio => \ww_IN\(2),
	combout => \IN~combout\(2));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IN[1]~I\ : cycloneii_io
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
	padio => \ww_IN\(1),
	combout => \IN~combout\(1));

-- Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IN[3]~I\ : cycloneii_io
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
	padio => \ww_IN\(3),
	combout => \IN~combout\(3));

-- Location: LCCOMB_X29_Y4_N0
\inst|inst10|inst6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst10|inst6~0_combout\ = (\IN~combout\(1) & ((\IN~combout\(0)) # ((\IN~combout\(2)) # (\IN~combout\(3))))) # (!\IN~combout\(1) & (\IN~combout\(3) & ((\IN~combout\(0)) # (\IN~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN~combout\(0),
	datab => \IN~combout\(2),
	datac => \IN~combout\(1),
	datad => \IN~combout\(3),
	combout => \inst|inst10|inst6~0_combout\);

-- Location: LCCOMB_X29_Y4_N2
\inst|inst11|inst6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst11|inst6~0_combout\ = (\inst|inst10|inst6~0_combout\ & ((\IN~combout\(4)) # (\IN~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN~combout\(4),
	datab => \IN~combout\(2),
	datad => \inst|inst10|inst6~0_combout\,
	combout => \inst|inst11|inst6~0_combout\);

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IN[5]~I\ : cycloneii_io
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
	padio => \ww_IN\(5),
	combout => \IN~combout\(5));

-- Location: LCCOMB_X29_Y4_N6
\inst|inst14|inst6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst14|inst6~combout\ = (\IN~combout\(4)) # ((\IN~combout\(5)) # ((\inst|inst11|inst6~0_combout\ & \IN~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN~combout\(4),
	datab => \inst|inst11|inst6~0_combout\,
	datac => \IN~combout\(5),
	datad => \IN~combout\(3),
	combout => \inst|inst14|inst6~combout\);

-- Location: LCCOMB_X29_Y4_N24
\inst|inst12|inst6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst12|inst6~0_combout\ = (\IN~combout\(5) & ((\inst|inst11|inst6~1_combout\) # ((\inst|inst11|inst6~0_combout\) # (\IN~combout\(3))))) # (!\IN~combout\(5) & (\IN~combout\(3) & ((\inst|inst11|inst6~1_combout\) # (\inst|inst11|inst6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11|inst6~1_combout\,
	datab => \inst|inst11|inst6~0_combout\,
	datac => \IN~combout\(5),
	datad => \IN~combout\(3),
	combout => \inst|inst12|inst6~0_combout\);

-- Location: LCCOMB_X29_Y4_N18
\inst|inst14|inst2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst14|inst2~combout\ = \IN~combout\(5) $ (((\inst|inst12|inst6~0_combout\) # (\IN~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12|inst6~0_combout\,
	datac => \IN~combout\(5),
	datad => \IN~combout\(4),
	combout => \inst|inst14|inst2~combout\);

-- Location: LCCOMB_X29_Y4_N28
\inst|inst13|inst2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst13|inst2~combout\ = \inst|inst12|inst6~0_combout\ $ (\IN~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12|inst6~0_combout\,
	datad => \IN~combout\(4),
	combout => \inst|inst13|inst2~combout\);

-- Location: LCCOMB_X29_Y4_N12
\inst|inst11|inst6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst11|inst6~1_combout\ = (\IN~combout\(4) & \IN~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN~combout\(4),
	datad => \IN~combout\(2),
	combout => \inst|inst11|inst6~1_combout\);

-- Location: LCCOMB_X29_Y4_N22
\inst|inst12|inst2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst12|inst2~combout\ = \IN~combout\(5) $ (\IN~combout\(3) $ (((\inst|inst11|inst6~1_combout\) # (\inst|inst11|inst6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11|inst6~1_combout\,
	datab => \inst|inst11|inst6~0_combout\,
	datac => \IN~combout\(5),
	datad => \IN~combout\(3),
	combout => \inst|inst12|inst2~combout\);

-- Location: LCCOMB_X29_Y4_N8
\inst|inst11|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst11|inst2~0_combout\ = \IN~combout\(4) $ (\IN~combout\(2) $ (\inst|inst10|inst6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN~combout\(4),
	datab => \IN~combout\(2),
	datad => \inst|inst10|inst6~0_combout\,
	combout => \inst|inst11|inst2~0_combout\);

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IN[0]~I\ : cycloneii_io
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
	padio => \ww_IN\(0),
	combout => \IN~combout\(0));

-- Location: LCCOMB_X29_Y4_N10
\inst|inst10|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst10|inst2~0_combout\ = \IN~combout\(1) $ (\IN~combout\(3) $ (((\IN~combout\(0)) # (\IN~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN~combout\(0),
	datab => \IN~combout\(2),
	datac => \IN~combout\(1),
	datad => \IN~combout\(3),
	combout => \inst|inst10|inst2~0_combout\);

-- Location: LCCOMB_X29_Y4_N20
\inst|inst9|inst~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst9|inst~0_combout\ = \IN~combout\(0) $ (\IN~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN~combout\(0),
	datad => \IN~combout\(2),
	combout => \inst|inst9|inst~0_combout\);

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT[8]~I\ : cycloneii_io
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
	datain => \inst|inst14|inst6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_OUT\(8));

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT[7]~I\ : cycloneii_io
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
	datain => \inst|inst14|ALT_INV_inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_OUT\(7));

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT[6]~I\ : cycloneii_io
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
	datain => \inst|inst13|ALT_INV_inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_OUT\(6));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT[5]~I\ : cycloneii_io
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
	datain => \inst|inst12|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_OUT\(5));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT[4]~I\ : cycloneii_io
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
	datain => \inst|inst11|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_OUT\(4));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT[3]~I\ : cycloneii_io
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
	datain => \inst|inst10|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_OUT\(3));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT[2]~I\ : cycloneii_io
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
	datain => \inst|inst9|ALT_INV_inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_OUT\(2));

-- Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT[1]~I\ : cycloneii_io
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
	datain => \IN~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_OUT\(1));

-- Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUT[0]~I\ : cycloneii_io
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
	datain => \IN~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_OUT\(0));
END structure;


