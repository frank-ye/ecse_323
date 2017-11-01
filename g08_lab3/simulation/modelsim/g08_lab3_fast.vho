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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "10/31/2017 14:37:15"

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

ENTITY 	g08_lab3 IS
    PORT (
	EMPTY : OUT std_logic;
	ENABLE : IN std_logic;
	RST : IN std_logic;
	CLK : IN std_logic;
	ADDR : IN std_logic_vector(5 DOWNTO 0);
	DATA : IN std_logic_vector(5 DOWNTO 0);
	MODE : IN std_logic_vector(1 DOWNTO 0);
	FULL : OUT std_logic;
	NUM : OUT std_logic_vector(5 DOWNTO 0);
	VALUE : OUT std_logic_vector(5 DOWNTO 0)
	);
END g08_lab3;

-- Design Ports Information
-- EMPTY	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FULL	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM[5]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM[4]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM[3]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM[2]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NUM[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALUE[5]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALUE[4]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALUE[3]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALUE[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALUE[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALUE[0]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDR[5]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADDR[4]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADDR[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADDR[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADDR[2]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADDR[3]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MODE[1]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENABLE	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MODE[0]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RST	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA[5]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA[4]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA[2]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA[1]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA[0]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g08_lab3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_EMPTY : std_logic;
SIGNAL ww_ENABLE : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ADDR : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_DATA : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_MODE : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_FULL : std_logic;
SIGNAL ww_NUM : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_VALUE : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~12_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~13_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~14_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~15_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~1_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~6_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~19_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~11_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~12_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~26_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~27_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~29_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~30_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~31_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~37_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~38_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~39_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~40_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~18_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~20_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~22_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~45_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~27_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~28_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~29_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~50_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~51_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~56_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~36_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~37_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~38_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~39_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~40_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~41_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~66_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~67_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~45_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~47_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~70_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~71_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~72_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~80_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~83_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~84_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~61_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~64_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~99_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~100_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~101_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~102_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~103_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~104_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~106_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~107_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~108_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~109_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~69_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~70_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~71_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~72_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~112_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~113_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~78_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~116_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~122_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~123_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~124_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~125_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~126_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~127_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~129_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~87_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~88_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~89_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~90_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~91_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~92_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~135_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~136_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~137_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~138_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~94_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~99_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~142_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~143_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~145_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~148_combout\ : std_logic;
SIGNAL \inst|inst92|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst95|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst96|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst91|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst100|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst102|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst105|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst98|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst88|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst43|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst46|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst44|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst48|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst36|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst39|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst40|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst34|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst22|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst20|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst92|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst95|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst96|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst91|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst100|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst102|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst105|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst98|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst78|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst86|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst88|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst74|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst77|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst64|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst70|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst72|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst46|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst48|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst43|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst44|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst36|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst39|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst40|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst15|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst16|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst19|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst20|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst105|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst98|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst78|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst86|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst81|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst74|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst82|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst77|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst84|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst2|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst60|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst63|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst58|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst48|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst43|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst56|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst51|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst28|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst31|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst32|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst27|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst16|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst19|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst92|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst91|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst81|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst52|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst28|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst31|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst15|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst16|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst10|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst12|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst19|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst20|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst92|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst95|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst96|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst91|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst100|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst102|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst105|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst98|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst77|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst2|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst60|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst63|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst58|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst43|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst56|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst40|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst15|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst16|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst12|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst22|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst19|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst20|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst95|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst96|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst74|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst78|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst77|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst81|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst82|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst84|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst7|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst60|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst63|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst64|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst70|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst68|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst72|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst67|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst44|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst52|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst34|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst15|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst16|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst22|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \ENABLE~combout\ : std_logic;
SIGNAL \inst|inst113~combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \RST~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst122~combout\ : std_logic;
SIGNAL \inst|inst108|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst|inst121~0_combout\ : std_logic;
SIGNAL \inst|inst126~combout\ : std_logic;
SIGNAL \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst|inst121~combout\ : std_logic;
SIGNAL \inst|inst55|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[26]~33_combout\ : std_logic;
SIGNAL \inst|inst52|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[25]~34_combout\ : std_logic;
SIGNAL \inst|inst51|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[24]~32_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~13_combout\ : std_logic;
SIGNAL \inst|inst56|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[27]~35_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~14_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~15_combout\ : std_logic;
SIGNAL \inst|inst67|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[32]~27_combout\ : std_logic;
SIGNAL \inst|inst68|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[33]~24_combout\ : std_logic;
SIGNAL \inst|inst72|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[35]~26_combout\ : std_logic;
SIGNAL \inst|inst70|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[34]~25_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~21_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~22_combout\ : std_logic;
SIGNAL \inst|inst64|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[31]~22_combout\ : std_logic;
SIGNAL \inst|inst63|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[30]~21_combout\ : std_logic;
SIGNAL \inst|inst60|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[29]~20_combout\ : std_logic;
SIGNAL \inst|inst58|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[28]~23_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~20_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~9_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~16_combout\ : std_logic;
SIGNAL \inst|inst77|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[37]~12_combout\ : std_logic;
SIGNAL \inst|inst74|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[36]~8_combout\ : std_logic;
SIGNAL \inst|inst78|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[38]~9_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \inst|inst86|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[42]~11_combout\ : std_logic;
SIGNAL \inst|inst84|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[41]~14_combout\ : std_logic;
SIGNAL \inst|inst82|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[40]~10_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~4_combout\ : std_logic;
SIGNAL \inst|inst81|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[39]~13_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~7_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~8_combout\ : std_logic;
SIGNAL \inst|inst4|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[1]~16_combout\ : std_logic;
SIGNAL \inst|inst2|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[0]~19_combout\ : std_logic;
SIGNAL \inst|inst8|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[3]~18_combout\ : std_logic;
SIGNAL \inst|inst7|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[2]~17_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~17_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~18_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~152_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~16_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~28_combout\ : std_logic;
SIGNAL \inst|inst24|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[11]~49_combout\ : std_logic;
SIGNAL \inst|inst27|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[12]~39_combout\ : std_logic;
SIGNAL \inst|inst28|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[13]~36_combout\ : std_logic;
SIGNAL \inst|inst31|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[14]~37_combout\ : std_logic;
SIGNAL \inst|inst32|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[15]~38_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~23_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~24_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~25_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~32_combout\ : std_logic;
SIGNAL \inst|inst10|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[4]~46_combout\ : std_logic;
SIGNAL \inst|inst12|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[5]~47_combout\ : std_logic;
SIGNAL \inst|inst15|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[6]~44_combout\ : std_logic;
SIGNAL \inst|inst16|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[7]~45_combout\ : std_logic;
SIGNAL \inst|inst19|$00000|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[8]~50_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~33_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~34_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~36_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~17_combout\ : std_logic;
SIGNAL \inst|inst60|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst63|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~43_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~44_combout\ : std_logic;
SIGNAL \inst|inst67|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst68|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~46_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~26_combout\ : std_logic;
SIGNAL \inst|inst58|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst56|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst55|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst52|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst51|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~31_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~30_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~32_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~33_combout\ : std_logic;
SIGNAL \inst|inst10|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst8|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst7|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~41_combout\ : std_logic;
SIGNAL \inst|inst2|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst4|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~42_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~153_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~52_combout\ : std_logic;
SIGNAL \inst|inst34|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[16]~43_combout\ : std_logic;
SIGNAL \inst|inst32|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst31|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~47_combout\ : std_logic;
SIGNAL \inst|inst28|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst27|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~48_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~49_combout\ : std_logic;
SIGNAL \inst|inst22|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[10]~48_combout\ : std_logic;
SIGNAL \inst|inst24|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~57_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~53_combout\ : std_logic;
SIGNAL \inst|inst12|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~54_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~55_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~58_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~59_combout\ : std_logic;
SIGNAL \inst|inst82|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst84|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~23_combout\ : std_logic;
SIGNAL \inst|inst81|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~19_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~21_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~24_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~25_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~34_combout\ : std_logic;
SIGNAL \inst|inst7|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst4|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst10|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst8|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~64_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~65_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~154_combout\ : std_logic;
SIGNAL \inst|inst44|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[21]~30_combout\ : std_logic;
SIGNAL \inst|inst46|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[22]~29_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~44_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~46_combout\ : std_logic;
SIGNAL \inst|inst55|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst52|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~48_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~49_combout\ : std_logic;
SIGNAL \inst|inst64|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst67|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst68|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst72|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst70|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~68_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~69_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~43_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~50_combout\ : std_logic;
SIGNAL \inst|inst12|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst15|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~76_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~77_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~78_combout\ : std_logic;
SIGNAL \inst|inst20|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[9]~51_combout\ : std_logic;
SIGNAL \inst|inst22|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst24|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~79_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~81_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~35_combout\ : std_logic;
SIGNAL \inst|inst39|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[18]~41_combout\ : std_logic;
SIGNAL \inst|inst36|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[17]~40_combout\ : std_logic;
SIGNAL \inst|inst34|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst40|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[19]~42_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~73_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~74_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~75_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~82_combout\ : std_logic;
SIGNAL \inst|inst88|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[43]~15_combout\ : std_logic;
SIGNAL \inst|inst91|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[44]~3_combout\ : std_logic;
SIGNAL \inst|inst92|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[45]~0_combout\ : std_logic;
SIGNAL \inst|inst95|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[46]~1_combout\ : std_logic;
SIGNAL \inst|inst96|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[47]~2_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~60_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~61_combout\ : std_logic;
SIGNAL \inst|inst102|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[50]~5_combout\ : std_logic;
SIGNAL \inst|inst100|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[49]~4_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~62_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~63_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~35_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~42_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~51_combout\ : std_logic;
SIGNAL \inst|inst36|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst34|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst46|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst44|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst43|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[20]~28_combout\ : std_logic;
SIGNAL \inst|inst40|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst39|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~96_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~97_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~98_combout\ : std_logic;
SIGNAL \inst|inst32|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~93_combout\ : std_logic;
SIGNAL \inst|inst22|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst24|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst27|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~94_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~95_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~105_combout\ : std_logic;
SIGNAL \inst|inst68|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst67|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst64|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst55|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst56|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst58|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst60|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst63|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~89_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~90_combout\ : std_logic;
SIGNAL \inst|inst78|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst77|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst74|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst72|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst70|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~91_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~92_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~60_combout\ : std_logic;
SIGNAL \inst|inst48|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[23]~31_combout\ : std_logic;
SIGNAL \inst|inst51|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~65_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~62_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~63_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~66_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~67_combout\ : std_logic;
SIGNAL \inst|inst82|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst84|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~57_combout\ : std_logic;
SIGNAL \inst|inst88|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst86|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~56_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~54_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~53_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~55_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~58_combout\ : std_logic;
SIGNAL \inst|inst105|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[51]~6_combout\ : std_logic;
SIGNAL \inst|inst102|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~85_combout\ : std_logic;
SIGNAL \inst|inst95|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst96|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst98|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst130|LPM_MUX_component|auto_generated|result_node[48]~7_combout\ : std_logic;
SIGNAL \inst|inst100|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~86_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~52_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~59_combout\ : std_logic;
SIGNAL \inst|inst8|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst7|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst4|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~87_combout\ : std_logic;
SIGNAL \inst|inst2|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~88_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~155_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~68_combout\ : std_logic;
SIGNAL \inst|inst64|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst67|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst68|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst74|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst72|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst70|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~114_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~115_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~77_combout\ : std_logic;
SIGNAL \inst|inst44|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst46|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst48|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst51|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst52|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~82_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~79_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~80_combout\ : std_logic;
SIGNAL \inst|inst55|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~81_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~83_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~84_combout\ : std_logic;
SIGNAL \inst|inst24|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst27|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst32|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst31|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst28|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~117_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~118_combout\ : std_logic;
SIGNAL \inst|inst34|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst36|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst39|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~119_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~120_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~121_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~128_combout\ : std_logic;
SIGNAL \inst|inst86|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst88|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst84|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~74_combout\ : std_logic;
SIGNAL \inst|inst78|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst81|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst82|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~73_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~75_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~76_combout\ : std_logic;
SIGNAL \inst|inst10|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst8|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst7|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst4|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~110_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~111_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~156_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~85_combout\ : std_logic;
SIGNAL \inst|inst58|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst56|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst55|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~98_combout\ : std_logic;
SIGNAL \inst|inst51|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst48|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst46|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~95_combout\ : std_logic;
SIGNAL \inst|inst36|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst39|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst40|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst43|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~96_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~97_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~100_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~101_combout\ : std_logic;
SIGNAL \inst|inst2|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst4|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst12|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst10|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst8|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~133_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~134_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~157_combout\ : std_logic;
SIGNAL \inst|inst98|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst100|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst102|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst105|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~131_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~132_combout\ : std_logic;
SIGNAL \inst|inst86|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst88|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst91|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst92|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~130_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~86_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~93_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~146_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~147_combout\ : std_logic;
SIGNAL \inst|inst19|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst20|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~149_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~150_combout\ : std_logic;
SIGNAL \inst|inst24|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst27|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst28|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst31|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst32|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~139_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~140_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~141_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~144_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|_~151_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~102_combout\ : std_logic;
SIGNAL \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst125|LPM_COMPARE_component|auto_generated|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|inst103|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst|inst101|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst99|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst97|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst94|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst93|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst90|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst89|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst87|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst85|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst83|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst80|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst79|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst76|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst75|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst73|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst71|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst69|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst66|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst65|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst62|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst61|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst59|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst57|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst54|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst53|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst49|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst50|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst47|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst45|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst42|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst41|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst38|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst37|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst35|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst33|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst30|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst29|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst26|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst25|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst23|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst21|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst18|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst17|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst14|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst13|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst11|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst9|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst6|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst5|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst3|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \MODE~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DATA~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ADDR~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst125|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|ALT_INV_inst121~combout\ : std_logic;

BEGIN

EMPTY <= ww_EMPTY;
ww_ENABLE <= ENABLE;
ww_RST <= RST;
ww_CLK <= CLK;
ww_ADDR <= ADDR;
ww_DATA <= DATA;
ww_MODE <= MODE;
FULL <= ww_FULL;
NUM <= ww_NUM;
VALUE <= ww_VALUE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\ADDR~combout\(5) & \ADDR~combout\(4) & \ADDR~combout\(3) & \ADDR~combout\(2) & \ADDR~combout\(1) & \ADDR~combout\(0));

\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(0) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(1) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(2) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(3) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(20) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(21) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(22) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(23) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(24) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(25) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(26) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(27) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(28) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(29) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(30) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(31) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(32) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(33) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(34) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(35) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(36) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(37) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(38) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(39) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(40) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(41) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(42) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(43) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(44) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(45) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(46) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(47) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(48) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(32);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(49) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(33);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(50) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(34);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(51) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(35);

\inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\ADDR~combout\(5) & \ADDR~combout\(4) & \ADDR~combout\(3) & \ADDR~combout\(2) & \ADDR~combout\(1) & \ADDR~combout\(0));

\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(4) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(5) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(6) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(2);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(7) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(3);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(8) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(4);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(9) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(5);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(10) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(6);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(11) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(7);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(12) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(8);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(13) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(9);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(14) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(10);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(15) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(11);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(16) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(12);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(17) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(13);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(18) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(14);
\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(19) <= \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(15);

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\RST~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RST~combout\);
\inst|inst125|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0) <= NOT \inst|inst125|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0);
\inst|ALT_INV_inst121~combout\ <= NOT \inst|inst121~combout\;

-- Location: LCFF_X19_Y23_N29
\inst|inst90|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst92|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst90|dffs\(5));

-- Location: LCFF_X19_Y23_N31
\inst|inst93|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst95|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[46]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst93|dffs\(5));

-- Location: LCFF_X21_Y23_N29
\inst|inst94|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst96|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst94|dffs\(5));

-- Location: LCFF_X23_Y25_N9
\inst|inst89|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst91|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[44]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst89|dffs\(5));

-- Location: LCFF_X20_Y23_N1
\inst|inst99|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst100|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[49]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst99|dffs\(5));

-- Location: LCFF_X23_Y23_N21
\inst|inst101|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst102|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[50]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst101|dffs\(5));

-- Location: LCFF_X23_Y23_N27
\inst|inst103|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst105|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[51]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst103|dffs\(5));

-- Location: LCFF_X20_Y23_N23
\inst|inst97|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst98|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[48]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst97|dffs\(5));

-- Location: LCFF_X21_Y22_N5
\inst|inst87|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst88|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[43]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst87|dffs\(5));

-- Location: LCFF_X27_Y23_N9
\inst|inst41|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst43|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst41|dffs\(5));

-- Location: LCFF_X25_Y21_N13
\inst|inst45|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst46|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[22]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst45|dffs\(5));

-- Location: LCFF_X25_Y26_N17
\inst|inst42|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst44|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[21]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst42|dffs\(5));

-- Location: LCFF_X25_Y26_N27
\inst|inst47|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst48|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst47|dffs\(5));

-- Location: LCFF_X24_Y20_N17
\inst|inst35|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst36|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst35|dffs\(5));

-- Location: LCFF_X25_Y20_N25
\inst|inst37|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst39|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst37|dffs\(5));

-- Location: LCFF_X24_Y20_N23
\inst|inst38|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst40|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst38|dffs\(5));

-- Location: LCFF_X23_Y20_N31
\inst|inst33|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst34|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[16]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst33|dffs\(5));

-- Location: LCFF_X24_Y19_N25
\inst|inst21|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst22|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[10]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst21|dffs\(5));

-- Location: LCFF_X24_Y19_N15
\inst|inst18|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst20|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[9]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst18|dffs\(5));

-- Location: LCFF_X21_Y24_N17
\inst|inst90|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst92|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst90|dffs\(4));

-- Location: LCFF_X21_Y23_N19
\inst|inst93|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst95|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[46]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst93|dffs\(4));

-- Location: LCFF_X21_Y23_N1
\inst|inst94|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst96|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst94|dffs\(4));

-- Location: LCFF_X23_Y25_N21
\inst|inst89|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst91|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[44]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst89|dffs\(4));

-- Location: LCFF_X20_Y23_N9
\inst|inst99|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst100|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[49]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst99|dffs\(4));

-- Location: LCFF_X23_Y23_N9
\inst|inst101|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst102|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[50]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst101|dffs\(4));

-- Location: LCFF_X23_Y23_N15
\inst|inst103|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst105|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[51]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst103|dffs\(4));

-- Location: LCFF_X20_Y23_N19
\inst|inst97|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst98|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[48]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst97|dffs\(4));

-- Location: LCFF_X23_Y24_N13
\inst|inst76|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst78|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[38]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst76|dffs\(4));

-- Location: LCFF_X23_Y25_N23
\inst|inst85|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst86|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[42]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst85|dffs\(4));

-- Location: LCFF_X21_Y22_N27
\inst|inst87|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst88|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[43]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst87|dffs\(4));

-- Location: LCFF_X23_Y24_N31
\inst|inst73|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst74|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[36]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst73|dffs\(4));

-- Location: LCFF_X24_Y24_N31
\inst|inst75|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst77|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[37]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst75|dffs\(4));

-- Location: LCFF_X23_Y22_N17
\inst|inst62|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst64|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[31]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst62|dffs\(4));

-- Location: LCFF_X22_Y23_N19
\inst|inst69|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst70|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[34]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst69|dffs\(4));

-- Location: LCFF_X22_Y24_N7
\inst|inst71|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst72|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[35]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst71|dffs\(4));

-- Location: LCFF_X25_Y21_N11
\inst|inst45|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst46|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[22]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst45|dffs\(4));

-- Location: LCFF_X25_Y26_N5
\inst|inst47|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst48|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst47|dffs\(4));

-- Location: LCFF_X27_Y23_N7
\inst|inst41|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst43|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst41|dffs\(4));

-- Location: LCFF_X25_Y26_N23
\inst|inst42|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst44|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[21]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst42|dffs\(4));

-- Location: LCFF_X24_Y20_N5
\inst|inst35|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst36|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst35|dffs\(4));

-- Location: LCFF_X25_Y20_N31
\inst|inst37|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst39|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst37|dffs\(4));

-- Location: LCFF_X24_Y20_N15
\inst|inst38|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst40|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst38|dffs\(4));

-- Location: LCFF_X25_Y23_N9
\inst|inst13|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst15|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst13|dffs\(4));

-- Location: LCFF_X25_Y19_N1
\inst|inst14|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst16|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[7]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst14|dffs\(4));

-- Location: LCFF_X25_Y19_N11
\inst|inst17|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst19|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[8]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst17|dffs\(4));

-- Location: LCFF_X24_Y19_N11
\inst|inst18|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst20|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[9]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst18|dffs\(4));

-- Location: LCFF_X23_Y23_N11
\inst|inst103|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst105|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[51]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst103|dffs\(3));

-- Location: LCFF_X20_Y23_N11
\inst|inst97|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst98|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[48]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst97|dffs\(3));

-- Location: LCFF_X23_Y24_N1
\inst|inst76|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst78|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[38]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst76|dffs\(3));

-- Location: LCFF_X23_Y25_N31
\inst|inst85|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst86|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[42]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst85|dffs\(3));

-- Location: LCFF_X24_Y24_N29
\inst|inst79|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst81|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[39]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst79|dffs\(3));

-- Location: LCFF_X23_Y24_N23
\inst|inst73|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst74|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[36]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst73|dffs\(3));

-- Location: LCFF_X25_Y24_N29
\inst|inst80|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst82|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[40]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst80|dffs\(3));

-- Location: LCFF_X24_Y24_N27
\inst|inst75|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst77|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[37]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst75|dffs\(3));

-- Location: LCFF_X25_Y24_N31
\inst|inst83|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst84|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[41]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst83|dffs\(3));

-- Location: LCFF_X24_Y25_N17
\inst|inst|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst2|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|dffs\(3));

-- Location: LCFF_X24_Y22_N17
\inst|inst59|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst60|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[29]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst59|dffs\(3));

-- Location: LCFF_X24_Y22_N23
\inst|inst61|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst63|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[30]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst61|dffs\(3));

-- Location: LCFF_X25_Y22_N25
\inst|inst57|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst58|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[28]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst57|dffs\(3));

-- Location: LCFF_X25_Y26_N13
\inst|inst47|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst48|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst47|dffs\(3));

-- Location: LCFF_X27_Y23_N21
\inst|inst41|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst43|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst41|dffs\(3));

-- Location: LCFF_X25_Y22_N3
\inst|inst54|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst56|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[27]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst54|dffs\(3));

-- Location: LCFF_X24_Y26_N29
\inst|inst50|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst51|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[24]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst50|dffs\(3));

-- Location: LCFF_X23_Y21_N29
\inst|inst26|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst28|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[13]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst26|dffs\(3));

-- Location: LCFF_X23_Y21_N7
\inst|inst29|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst31|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[14]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst29|dffs\(3));

-- Location: LCFF_X23_Y20_N13
\inst|inst30|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst32|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[15]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst30|dffs\(3));

-- Location: LCFF_X24_Y21_N13
\inst|inst25|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst27|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst25|dffs\(3));

-- Location: LCFF_X25_Y19_N13
\inst|inst14|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst16|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[7]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst14|dffs\(3));

-- Location: LCFF_X25_Y19_N23
\inst|inst17|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst19|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[8]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst17|dffs\(3));

-- Location: LCFF_X19_Y23_N25
\inst|inst90|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst92|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst90|dffs\(2));

-- Location: LCFF_X23_Y25_N5
\inst|inst89|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst91|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[44]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst89|dffs\(2));

-- Location: LCFF_X24_Y24_N15
\inst|inst79|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst81|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[39]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst79|dffs\(2));

-- Location: LCFF_X24_Y26_N3
\inst|inst49|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst52|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[25]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst49|dffs\(2));

-- Location: LCFF_X23_Y21_N13
\inst|inst26|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst28|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[13]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst26|dffs\(2));

-- Location: LCFF_X23_Y21_N27
\inst|inst29|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst31|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[14]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst29|dffs\(2));

-- Location: LCFF_X25_Y23_N13
\inst|inst13|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst15|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst13|dffs\(2));

-- Location: LCFF_X25_Y19_N29
\inst|inst14|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst16|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[7]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst14|dffs\(2));

-- Location: LCFF_X26_Y23_N11
\inst|inst9|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst10|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst9|dffs\(2));

-- Location: LCFF_X25_Y23_N19
\inst|inst11|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst12|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[5]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst11|dffs\(2));

-- Location: LCFF_X25_Y19_N7
\inst|inst17|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst19|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[8]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst17|dffs\(2));

-- Location: LCFF_X24_Y19_N7
\inst|inst18|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst20|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[9]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst18|dffs\(2));

-- Location: LCFF_X19_Y23_N5
\inst|inst90|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst92|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst90|dffs\(1));

-- Location: LCFF_X19_Y23_N7
\inst|inst93|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst95|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[46]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst93|dffs\(1));

-- Location: LCFF_X21_Y23_N11
\inst|inst94|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst96|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst94|dffs\(1));

-- Location: LCFF_X23_Y25_N1
\inst|inst89|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst91|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[44]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst89|dffs\(1));

-- Location: LCFF_X20_Y23_N17
\inst|inst99|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst100|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[49]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst99|dffs\(1));

-- Location: LCFF_X23_Y23_N25
\inst|inst101|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst102|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[50]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst101|dffs\(1));

-- Location: LCFF_X23_Y23_N3
\inst|inst103|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst105|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[51]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst103|dffs\(1));

-- Location: LCFF_X20_Y23_N27
\inst|inst97|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst98|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[48]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst97|dffs\(1));

-- Location: LCFF_X24_Y24_N17
\inst|inst75|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst77|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[37]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst75|dffs\(1));

-- Location: LCFF_X24_Y25_N25
\inst|inst|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst2|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|dffs\(1));

-- Location: LCFF_X24_Y22_N21
\inst|inst59|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst60|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[29]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst59|dffs\(1));

-- Location: LCFF_X24_Y22_N7
\inst|inst61|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst63|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[30]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst61|dffs\(1));

-- Location: LCFF_X25_Y22_N21
\inst|inst57|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst58|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[28]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst57|dffs\(1));

-- Location: LCFF_X27_Y23_N13
\inst|inst41|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst43|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst41|dffs\(1));

-- Location: LCFF_X25_Y22_N15
\inst|inst54|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst56|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[27]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst54|dffs\(1));

-- Location: LCFF_X24_Y20_N31
\inst|inst38|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst40|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst38|dffs\(1));

-- Location: LCFF_X25_Y23_N25
\inst|inst13|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst15|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst13|dffs\(1));

-- Location: LCFF_X25_Y19_N9
\inst|inst14|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst16|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[7]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst14|dffs\(1));

-- Location: LCFF_X25_Y23_N3
\inst|inst11|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst12|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[5]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst11|dffs\(1));

-- Location: LCFF_X24_Y19_N13
\inst|inst21|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst22|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[10]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst21|dffs\(1));

-- Location: LCFF_X25_Y19_N15
\inst|inst17|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst19|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[8]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst17|dffs\(1));

-- Location: LCFF_X24_Y19_N31
\inst|inst18|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst20|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[9]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst18|dffs\(1));

-- Location: LCFF_X21_Y23_N21
\inst|inst93|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst95|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[46]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst93|dffs\(0));

-- Location: LCFF_X21_Y23_N31
\inst|inst94|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst96|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst94|dffs\(0));

-- Location: LCFF_X23_Y24_N9
\inst|inst73|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst74|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[36]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst73|dffs\(0));

-- Location: LCFF_X23_Y24_N7
\inst|inst76|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst78|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[38]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst76|dffs\(0));

-- Location: LCFF_X24_Y24_N13
\inst|inst75|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst77|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[37]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst75|dffs\(0));

-- Location: LCFF_X24_Y24_N3
\inst|inst79|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst81|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[39]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst79|dffs\(0));

-- Location: LCFF_X25_Y24_N21
\inst|inst80|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst82|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[40]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst80|dffs\(0));

-- Location: LCFF_X25_Y24_N23
\inst|inst83|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst84|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[41]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst83|dffs\(0));

-- Location: LCFF_X25_Y25_N7
\inst|inst5|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst7|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst5|dffs\(0));

-- Location: LCFF_X24_Y22_N5
\inst|inst59|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst60|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[29]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst59|dffs\(0));

-- Location: LCFF_X24_Y22_N27
\inst|inst61|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst63|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[30]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst61|dffs\(0));

-- Location: LCFF_X23_Y22_N9
\inst|inst62|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst64|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[31]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst62|dffs\(0));

-- Location: LCFF_X22_Y23_N17
\inst|inst69|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst70|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[34]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst69|dffs\(0));

-- Location: LCFF_X22_Y23_N31
\inst|inst66|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst68|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[33]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst66|dffs\(0));

-- Location: LCFF_X22_Y24_N23
\inst|inst71|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst72|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[35]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst71|dffs\(0));

-- Location: LCFF_X23_Y22_N15
\inst|inst65|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst67|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[32]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst65|dffs\(0));

-- Location: LCFF_X25_Y26_N31
\inst|inst42|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst44|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[21]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst42|dffs\(0));

-- Location: LCFF_X24_Y26_N7
\inst|inst49|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst52|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[25]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst49|dffs\(0));

-- Location: LCFF_X23_Y20_N7
\inst|inst33|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst34|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[16]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst33|dffs\(0));

-- Location: LCFF_X25_Y23_N21
\inst|inst13|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst15|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst13|dffs\(0));

-- Location: LCFF_X25_Y19_N17
\inst|inst14|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst16|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[7]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst14|dffs\(0));

-- Location: LCFF_X24_Y19_N5
\inst|inst21|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst22|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[10]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst21|dffs\(0));

-- Location: M4K_X17_Y23
\inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000800000000C00000000E00000000F00000000F80000000FC0000000FE0000000FF0000000FF8000000FFC000000FFE000000FFF000000FFF800000FFFC00000FFFE00000FFFF00000FFFF80000FFFFC0000FFFFE0000FFFFF0000FFFFF8000FFFFFC000FFFFFE000FFFFFF000FFFFFF800FFFFFFC00FFFFFFE00FFFFFFF00FFFFFFF80FFFFFFFC0FFFFFFFE0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF8FFFFFFFFCFFFFFFFFEFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "g08_rom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "g08_stack52:inst|g08_pop_enable:inst107|lpm_rom:crc_table|altrom:srom|altsyncram:rom_block|altsyncram_k301:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 52,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 36,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => GND,
	portaaddr => \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y20
\inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000C000E000F000F800FC00FE00FF00FF80FFC0FFE0FFF0FFF8FFFCFFFEFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "g08_rom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "g08_stack52:inst|g08_pop_enable:inst107|lpm_rom:crc_table|altrom:srom|altsyncram:rom_block|altsyncram_k301:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 52,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 16,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => GND,
	portaaddr => \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|inst107|crc_table|srom|rom_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X19_Y23_N12
\inst|inst1|LPM_MUX_component|auto_generated|_~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~12_combout\ = (\ADDR~combout\(0) & ((\inst|inst93|dffs\(5)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((\inst|inst94|dffs\(5) & !\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst|inst93|dffs\(5),
	datac => \inst|inst94|dffs\(5),
	datad => \ADDR~combout\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~12_combout\);

-- Location: LCCOMB_X19_Y23_N26
\inst|inst1|LPM_MUX_component|auto_generated|_~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~13_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~12_combout\ & ((\inst|inst89|dffs\(5)))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~12_combout\ & 
-- (\inst|inst90|dffs\(5))))) # (!\ADDR~combout\(1) & (((\inst|inst1|LPM_MUX_component|auto_generated|_~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst90|dffs\(5),
	datac => \inst|inst89|dffs\(5),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~12_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~13_combout\);

-- Location: LCCOMB_X21_Y23_N4
\inst|inst1|LPM_MUX_component|auto_generated|_~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~14_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst101|dffs\(5)))) # (!\ADDR~combout\(0) & (\inst|inst103|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst103|dffs\(5),
	datac => \inst|inst101|dffs\(5),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~14_combout\);

-- Location: LCCOMB_X21_Y23_N2
\inst|inst1|LPM_MUX_component|auto_generated|_~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~15_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~14_combout\ & (\inst|inst97|dffs\(5))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~14_combout\ & 
-- ((\inst|inst99|dffs\(5)))))) # (!\ADDR~combout\(1) & (((\inst|inst1|LPM_MUX_component|auto_generated|_~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst97|dffs\(5),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~14_combout\,
	datad => \inst|inst99|dffs\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~15_combout\);

-- Location: LCCOMB_X22_Y21_N24
\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~1_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & (\inst|inst1|LPM_MUX_component|auto_generated|_~13_combout\)) # (!\ADDR~combout\(2) & 
-- ((\inst|inst1|LPM_MUX_component|auto_generated|_~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~13_combout\,
	datac => \ADDR~combout\(3),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~15_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~1_combout\);

-- Location: LCCOMB_X21_Y22_N12
\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~6_combout\ = (!\ADDR~combout\(2) & ((\ADDR~combout\(1) & ((\inst|inst83|dffs\(5)))) # (!\ADDR~combout\(1) & (\inst|inst87|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \ADDR~combout\(1),
	datac => \inst|inst87|dffs\(5),
	datad => \inst|inst83|dffs\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~6_combout\);

-- Location: LCCOMB_X22_Y22_N20
\inst|inst1|LPM_MUX_component|auto_generated|_~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~19_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst61|dffs\(5)))) # (!\ADDR~combout\(0) & (\inst|inst62|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst62|dffs\(5),
	datac => \ADDR~combout\(0),
	datad => \inst|inst61|dffs\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~19_combout\);

-- Location: LCCOMB_X27_Y23_N16
\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~10_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1) & ((\inst|inst41|dffs\(5)))) # (!\ADDR~combout\(1) & (\inst|inst45|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst45|dffs\(5),
	datac => \ADDR~combout\(0),
	datad => \inst|inst41|dffs\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~10_combout\);

-- Location: LCCOMB_X27_Y23_N26
\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~11_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\inst|inst42|dffs\(5))) # (!\ADDR~combout\(1) & ((\inst|inst47|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst42|dffs\(5),
	datac => \ADDR~combout\(0),
	datad => \inst|inst47|dffs\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~11_combout\);

-- Location: LCCOMB_X27_Y23_N4
\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~12_combout\ = (\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~10_combout\) # (\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~10_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~11_combout\,
	datac => \ADDR~combout\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~12_combout\);

-- Location: LCCOMB_X25_Y20_N4
\inst|inst1|LPM_MUX_component|auto_generated|_~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~26_combout\ = (\ADDR~combout\(0) & ((\inst|inst37|dffs\(5)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((!\ADDR~combout\(1) & \inst|inst38|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst37|dffs\(5),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst38|dffs\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~26_combout\);

-- Location: LCCOMB_X25_Y20_N6
\inst|inst1|LPM_MUX_component|auto_generated|_~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~27_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~26_combout\ & ((\inst|inst33|dffs\(5)))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~26_combout\ & 
-- (\inst|inst35|dffs\(5))))) # (!\ADDR~combout\(1) & (((\inst|inst1|LPM_MUX_component|auto_generated|_~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst35|dffs\(5),
	datab => \ADDR~combout\(1),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~26_combout\,
	datad => \inst|inst33|dffs\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~27_combout\);

-- Location: LCCOMB_X25_Y19_N20
\inst|inst1|LPM_MUX_component|auto_generated|_~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~29_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst13|dffs\(5)))) # (!\ADDR~combout\(0) & (\inst|inst14|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \ADDR~combout\(0),
	datac => \inst|inst14|dffs\(5),
	datad => \inst|inst13|dffs\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~29_combout\);

-- Location: LCCOMB_X25_Y23_N4
\inst|inst1|LPM_MUX_component|auto_generated|_~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~30_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst9|dffs\(5))) # (!\ADDR~combout\(0) & ((\inst|inst11|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst|inst9|dffs\(5),
	datac => \inst|inst11|dffs\(5),
	datad => \ADDR~combout\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~30_combout\);

-- Location: LCCOMB_X23_Y19_N12
\inst|inst1|LPM_MUX_component|auto_generated|_~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~31_combout\ = (\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~29_combout\) # (\inst|inst1|LPM_MUX_component|auto_generated|_~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR~combout\(2),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~29_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~30_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~31_combout\);

-- Location: LCCOMB_X21_Y24_N8
\inst|inst1|LPM_MUX_component|auto_generated|_~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~37_combout\ = (\ADDR~combout\(0) & ((\inst|inst93|dffs\(4)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((!\ADDR~combout\(1) & \inst|inst94|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst93|dffs\(4),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst94|dffs\(4),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~37_combout\);

-- Location: LCCOMB_X21_Y24_N22
\inst|inst1|LPM_MUX_component|auto_generated|_~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~38_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~37_combout\ & (((\inst|inst89|dffs\(4)) # (!\ADDR~combout\(1))))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~37_combout\ & 
-- (\inst|inst90|dffs\(4) & ((\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst90|dffs\(4),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~37_combout\,
	datac => \inst|inst89|dffs\(4),
	datad => \ADDR~combout\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~38_combout\);

-- Location: LCCOMB_X20_Y23_N20
\inst|inst1|LPM_MUX_component|auto_generated|_~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~39_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst101|dffs\(4)))) # (!\ADDR~combout\(0) & (\inst|inst103|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst103|dffs\(4),
	datab => \ADDR~combout\(1),
	datac => \ADDR~combout\(0),
	datad => \inst|inst101|dffs\(4),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~39_combout\);

-- Location: LCCOMB_X20_Y23_N2
\inst|inst1|LPM_MUX_component|auto_generated|_~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~40_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~39_combout\ & (((\inst|inst97|dffs\(4))) # (!\ADDR~combout\(1)))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~39_combout\ & 
-- (\ADDR~combout\(1) & (\inst|inst99|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~39_combout\,
	datab => \ADDR~combout\(1),
	datac => \inst|inst99|dffs\(4),
	datad => \inst|inst97|dffs\(4),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~40_combout\);

-- Location: LCCOMB_X21_Y24_N20
\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~18_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~38_combout\))) # (!\ADDR~combout\(2) & 
-- (\inst|inst1|LPM_MUX_component|auto_generated|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \ADDR~combout\(3),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~40_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~38_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~18_combout\);

-- Location: LCCOMB_X21_Y22_N0
\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~20_combout\ = (!\ADDR~combout\(2) & ((\ADDR~combout\(0) & (\inst|inst85|dffs\(4))) # (!\ADDR~combout\(0) & ((\inst|inst87|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst|inst85|dffs\(4),
	datac => \ADDR~combout\(2),
	datad => \inst|inst87|dffs\(4),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~20_combout\);

-- Location: LCCOMB_X20_Y24_N14
\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~22_combout\ = (\ADDR~combout\(2) & ((\ADDR~combout\(0) & (\inst|inst73|dffs\(4))) # (!\ADDR~combout\(0) & ((\inst|inst75|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst73|dffs\(4),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(2),
	datad => \inst|inst75|dffs\(4),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~22_combout\);

-- Location: LCCOMB_X22_Y24_N26
\inst|inst1|LPM_MUX_component|auto_generated|_~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~45_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst69|dffs\(4))) # (!\ADDR~combout\(0) & ((\inst|inst71|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst69|dffs\(4),
	datac => \ADDR~combout\(0),
	datad => \inst|inst71|dffs\(4),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~45_combout\);

-- Location: LCCOMB_X25_Y21_N4
\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~27_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst45|dffs\(4))) # (!\ADDR~combout\(0) & ((\inst|inst47|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst45|dffs\(4),
	datab => \ADDR~combout\(1),
	datac => \inst|inst47|dffs\(4),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~27_combout\);

-- Location: LCCOMB_X26_Y24_N8
\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~28_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst41|dffs\(4))) # (!\ADDR~combout\(0) & ((\inst|inst42|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41|dffs\(4),
	datab => \ADDR~combout\(1),
	datac => \inst|inst42|dffs\(4),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~28_combout\);

-- Location: LCCOMB_X26_Y24_N2
\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~29_combout\ = (\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~27_combout\) # (\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~27_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~28_combout\,
	datac => \ADDR~combout\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~29_combout\);

-- Location: LCCOMB_X24_Y20_N24
\inst|inst1|LPM_MUX_component|auto_generated|_~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~50_combout\ = (\ADDR~combout\(1) & (\ADDR~combout\(0))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst37|dffs\(4)))) # (!\ADDR~combout\(0) & (\inst|inst38|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \ADDR~combout\(0),
	datac => \inst|inst38|dffs\(4),
	datad => \inst|inst37|dffs\(4),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~50_combout\);

-- Location: LCCOMB_X23_Y20_N4
\inst|inst1|LPM_MUX_component|auto_generated|_~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~51_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~50_combout\ & ((\inst|inst33|dffs\(4)))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~50_combout\ & 
-- (\inst|inst35|dffs\(4))))) # (!\ADDR~combout\(1) & (((\inst|inst1|LPM_MUX_component|auto_generated|_~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst35|dffs\(4),
	datab => \inst|inst33|dffs\(4),
	datac => \ADDR~combout\(1),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~50_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~51_combout\);

-- Location: LCCOMB_X24_Y19_N20
\inst|inst1|LPM_MUX_component|auto_generated|_~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~56_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\inst|inst17|dffs\(4))) # (!\ADDR~combout\(1) & ((\inst|inst21|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst17|dffs\(4),
	datac => \inst|inst21|dffs\(4),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~56_combout\);

-- Location: LCCOMB_X22_Y25_N28
\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~36_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(2) & (\inst|inst76|dffs\(3))) # (!\ADDR~combout\(2) & ((\inst|inst85|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst76|dffs\(3),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(2),
	datad => \inst|inst85|dffs\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~36_combout\);

-- Location: LCCOMB_X22_Y24_N0
\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~37_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(2) & (\inst|inst79|dffs\(3))) # (!\ADDR~combout\(2) & ((\inst|inst87|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \ADDR~combout\(2),
	datac => \inst|inst79|dffs\(3),
	datad => \inst|inst87|dffs\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~37_combout\);

-- Location: LCCOMB_X22_Y25_N18
\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~38_combout\ = (!\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~37_combout\) # (\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~37_combout\,
	datac => \ADDR~combout\(1),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~36_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~38_combout\);

-- Location: LCCOMB_X25_Y24_N8
\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~39_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(2) & (\inst|inst73|dffs\(3))) # (!\ADDR~combout\(2) & ((\inst|inst80|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \ADDR~combout\(0),
	datac => \inst|inst73|dffs\(3),
	datad => \inst|inst80|dffs\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~39_combout\);

-- Location: LCCOMB_X26_Y24_N0
\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~40_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(2) & (\inst|inst75|dffs\(3))) # (!\ADDR~combout\(2) & ((\inst|inst83|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \inst|inst75|dffs\(3),
	datac => \inst|inst83|dffs\(3),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~40_combout\);

-- Location: LCCOMB_X26_Y24_N10
\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~41_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~38_combout\) # ((\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~39_combout\) # 
-- (\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~39_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~38_combout\,
	datac => \ADDR~combout\(1),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~40_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~41_combout\);

-- Location: LCCOMB_X22_Y22_N16
\inst|inst1|LPM_MUX_component|auto_generated|_~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~66_combout\ = (\ADDR~combout\(1) & (\ADDR~combout\(0))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst61|dffs\(3)))) # (!\ADDR~combout\(0) & (\inst|inst62|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \ADDR~combout\(0),
	datac => \inst|inst62|dffs\(3),
	datad => \inst|inst61|dffs\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~66_combout\);

-- Location: LCCOMB_X24_Y22_N24
\inst|inst1|LPM_MUX_component|auto_generated|_~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~67_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~66_combout\ & (((\inst|inst57|dffs\(3)) # (!\ADDR~combout\(1))))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~66_combout\ & 
-- (\inst|inst59|dffs\(3) & (\ADDR~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|dffs\(3),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~66_combout\,
	datac => \ADDR~combout\(1),
	datad => \inst|inst57|dffs\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~67_combout\);

-- Location: LCCOMB_X25_Y26_N2
\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~45_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst41|dffs\(3))) # (!\ADDR~combout\(0) & ((\inst|inst42|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41|dffs\(3),
	datab => \inst|inst42|dffs\(3),
	datac => \ADDR~combout\(1),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~45_combout\);

-- Location: LCCOMB_X23_Y26_N20
\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~47_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst53|dffs\(3)))) # (!\ADDR~combout\(0) & (\inst|inst54|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst54|dffs\(3),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst53|dffs\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~47_combout\);

-- Location: LCCOMB_X23_Y20_N22
\inst|inst1|LPM_MUX_component|auto_generated|_~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~70_combout\ = (\ADDR~combout\(0) & (((\ADDR~combout\(1)) # (\inst|inst29|dffs\(3))))) # (!\ADDR~combout\(0) & (\inst|inst30|dffs\(3) & (!\ADDR~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|dffs\(3),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst29|dffs\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~70_combout\);

-- Location: LCCOMB_X24_Y21_N28
\inst|inst1|LPM_MUX_component|auto_generated|_~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~71_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~70_combout\ & (((\inst|inst25|dffs\(3)) # (!\ADDR~combout\(1))))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~70_combout\ & 
-- (\inst|inst26|dffs\(3) & (\ADDR~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~70_combout\,
	datab => \inst|inst26|dffs\(3),
	datac => \ADDR~combout\(1),
	datad => \inst|inst25|dffs\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~71_combout\);

-- Location: LCCOMB_X26_Y25_N4
\inst|inst1|LPM_MUX_component|auto_generated|_~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~72_combout\ = (!\ADDR~combout\(3) & (\ADDR~combout\(2) & (\ADDR~combout\(5) & \inst|inst1|LPM_MUX_component|auto_generated|_~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(3),
	datab => \ADDR~combout\(2),
	datac => \ADDR~combout\(5),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~71_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~72_combout\);

-- Location: LCCOMB_X25_Y19_N26
\inst|inst1|LPM_MUX_component|auto_generated|_~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~80_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst17|dffs\(3))) # (!\ADDR~combout\(0) & ((\inst|inst18|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst17|dffs\(3),
	datac => \ADDR~combout\(0),
	datad => \inst|inst18|dffs\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~80_combout\);

-- Location: LCCOMB_X19_Y23_N20
\inst|inst1|LPM_MUX_component|auto_generated|_~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~83_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst93|dffs\(2))) # (!\ADDR~combout\(0) & ((\inst|inst94|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst93|dffs\(2),
	datac => \ADDR~combout\(0),
	datad => \inst|inst94|dffs\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~83_combout\);

-- Location: LCCOMB_X19_Y23_N18
\inst|inst1|LPM_MUX_component|auto_generated|_~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~84_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~83_combout\ & ((\inst|inst89|dffs\(2)) # ((!\ADDR~combout\(1))))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~83_combout\ & 
-- (((\inst|inst90|dffs\(2) & \ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~83_combout\,
	datab => \inst|inst89|dffs\(2),
	datac => \inst|inst90|dffs\(2),
	datad => \ADDR~combout\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~84_combout\);

-- Location: LCCOMB_X25_Y21_N14
\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~61_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst45|dffs\(2)))) # (!\ADDR~combout\(0) & (\inst|inst47|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst47|dffs\(2),
	datab => \inst|inst45|dffs\(2),
	datac => \ADDR~combout\(1),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~61_combout\);

-- Location: LCCOMB_X23_Y26_N6
\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~64_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst53|dffs\(2))) # (!\ADDR~combout\(0) & ((\inst|inst54|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst53|dffs\(2),
	datac => \ADDR~combout\(0),
	datad => \inst|inst54|dffs\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~64_combout\);

-- Location: LCCOMB_X25_Y21_N30
\inst|inst1|LPM_MUX_component|auto_generated|_~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~99_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst13|dffs\(2)))) # (!\ADDR~combout\(0) & (\inst|inst14|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14|dffs\(2),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst13|dffs\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~99_combout\);

-- Location: LCCOMB_X26_Y23_N26
\inst|inst1|LPM_MUX_component|auto_generated|_~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~100_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst9|dffs\(2)))) # (!\ADDR~combout\(0) & (\inst|inst11|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst11|dffs\(2),
	datac => \ADDR~combout\(0),
	datad => \inst|inst9|dffs\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~100_combout\);

-- Location: LCCOMB_X26_Y21_N24
\inst|inst1|LPM_MUX_component|auto_generated|_~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~101_combout\ = (\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~99_combout\) # (\inst|inst1|LPM_MUX_component|auto_generated|_~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~99_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~100_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~101_combout\);

-- Location: LCCOMB_X26_Y21_N26
\inst|inst1|LPM_MUX_component|auto_generated|_~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~102_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst21|dffs\(2))) # (!\ADDR~combout\(0) & ((\inst|inst23|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|dffs\(2),
	datab => \ADDR~combout\(1),
	datac => \inst|inst23|dffs\(2),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~102_combout\);

-- Location: LCCOMB_X23_Y19_N8
\inst|inst1|LPM_MUX_component|auto_generated|_~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~103_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst17|dffs\(2)))) # (!\ADDR~combout\(0) & (\inst|inst18|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18|dffs\(2),
	datab => \ADDR~combout\(0),
	datac => \inst|inst17|dffs\(2),
	datad => \ADDR~combout\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~103_combout\);

-- Location: LCCOMB_X26_Y21_N20
\inst|inst1|LPM_MUX_component|auto_generated|_~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~104_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~101_combout\) # ((!\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~103_combout\) # 
-- (\inst|inst1|LPM_MUX_component|auto_generated|_~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~101_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~103_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~102_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~104_combout\);

-- Location: LCCOMB_X19_Y23_N16
\inst|inst1|LPM_MUX_component|auto_generated|_~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~106_combout\ = (\ADDR~combout\(0) & ((\inst|inst93|dffs\(1)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((\inst|inst94|dffs\(1) & !\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst93|dffs\(1),
	datab => \inst|inst94|dffs\(1),
	datac => \ADDR~combout\(0),
	datad => \ADDR~combout\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~106_combout\);

-- Location: LCCOMB_X19_Y23_N14
\inst|inst1|LPM_MUX_component|auto_generated|_~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~107_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~106_combout\ & (\inst|inst89|dffs\(1))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~106_combout\ & 
-- ((\inst|inst90|dffs\(1)))))) # (!\ADDR~combout\(1) & (((\inst|inst1|LPM_MUX_component|auto_generated|_~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst89|dffs\(1),
	datac => \inst|inst90|dffs\(1),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~106_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~107_combout\);

-- Location: LCCOMB_X21_Y23_N6
\inst|inst1|LPM_MUX_component|auto_generated|_~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~108_combout\ = (\ADDR~combout\(0) & ((\inst|inst101|dffs\(1)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((!\ADDR~combout\(1) & \inst|inst103|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst101|dffs\(1),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst103|dffs\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~108_combout\);

-- Location: LCCOMB_X21_Y23_N16
\inst|inst1|LPM_MUX_component|auto_generated|_~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~109_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~108_combout\ & ((\inst|inst97|dffs\(1)) # ((!\ADDR~combout\(1))))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~108_combout\ & 
-- (((\ADDR~combout\(1) & \inst|inst99|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~108_combout\,
	datab => \inst|inst97|dffs\(1),
	datac => \ADDR~combout\(1),
	datad => \inst|inst99|dffs\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~109_combout\);

-- Location: LCCOMB_X21_Y25_N2
\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~69_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & (\inst|inst1|LPM_MUX_component|auto_generated|_~107_combout\)) # (!\ADDR~combout\(2) & 
-- ((\inst|inst1|LPM_MUX_component|auto_generated|_~109_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~107_combout\,
	datac => \ADDR~combout\(3),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~109_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~69_combout\);

-- Location: LCCOMB_X23_Y24_N26
\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~70_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\inst|inst73|dffs\(1))) # (!\ADDR~combout\(1) & ((\inst|inst76|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \ADDR~combout\(0),
	datac => \inst|inst73|dffs\(1),
	datad => \inst|inst76|dffs\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~70_combout\);

-- Location: LCCOMB_X23_Y25_N28
\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~71_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & ((\inst|inst75|dffs\(1)))) # (!\ADDR~combout\(1) & (\inst|inst79|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst79|dffs\(1),
	datac => \ADDR~combout\(0),
	datad => \inst|inst75|dffs\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~71_combout\);

-- Location: LCCOMB_X22_Y25_N20
\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~72_combout\ = (\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~70_combout\) # (\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR~combout\(2),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~70_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~71_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~72_combout\);

-- Location: LCCOMB_X21_Y22_N28
\inst|inst1|LPM_MUX_component|auto_generated|_~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~112_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst61|dffs\(1)))) # (!\ADDR~combout\(0) & (\inst|inst62|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst62|dffs\(1),
	datab => \ADDR~combout\(1),
	datac => \inst|inst61|dffs\(1),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~112_combout\);

-- Location: LCCOMB_X20_Y22_N16
\inst|inst1|LPM_MUX_component|auto_generated|_~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~113_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~112_combout\ & (\inst|inst57|dffs\(1))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~112_combout\ & 
-- ((\inst|inst59|dffs\(1)))))) # (!\ADDR~combout\(1) & (\inst|inst1|LPM_MUX_component|auto_generated|_~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~112_combout\,
	datac => \inst|inst57|dffs\(1),
	datad => \inst|inst59|dffs\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~113_combout\);

-- Location: LCCOMB_X25_Y21_N0
\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~78_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst45|dffs\(1))) # (!\ADDR~combout\(0) & ((\inst|inst47|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst45|dffs\(1),
	datab => \ADDR~combout\(1),
	datac => \inst|inst47|dffs\(1),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~78_combout\);

-- Location: LCCOMB_X22_Y21_N20
\inst|inst1|LPM_MUX_component|auto_generated|_~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~116_combout\ = (\ADDR~combout\(0) & (((\ADDR~combout\(1)) # (\inst|inst29|dffs\(1))))) # (!\ADDR~combout\(0) & (\inst|inst30|dffs\(1) & (!\ADDR~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|dffs\(1),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst29|dffs\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~116_combout\);

-- Location: LCCOMB_X21_Y22_N2
\inst|inst1|LPM_MUX_component|auto_generated|_~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~122_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst13|dffs\(1))) # (!\ADDR~combout\(0) & ((\inst|inst14|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \ADDR~combout\(1),
	datac => \inst|inst13|dffs\(1),
	datad => \inst|inst14|dffs\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~122_combout\);

-- Location: LCCOMB_X25_Y22_N8
\inst|inst1|LPM_MUX_component|auto_generated|_~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~123_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst9|dffs\(1)))) # (!\ADDR~combout\(0) & (\inst|inst11|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst|inst11|dffs\(1),
	datac => \ADDR~combout\(1),
	datad => \inst|inst9|dffs\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~123_combout\);

-- Location: LCCOMB_X22_Y22_N26
\inst|inst1|LPM_MUX_component|auto_generated|_~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~124_combout\ = (\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~122_combout\) # (\inst|inst1|LPM_MUX_component|auto_generated|_~123_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~122_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~123_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~124_combout\);

-- Location: LCCOMB_X25_Y21_N24
\inst|inst1|LPM_MUX_component|auto_generated|_~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~125_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst21|dffs\(1)))) # (!\ADDR~combout\(0) & (\inst|inst23|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst23|dffs\(1),
	datab => \ADDR~combout\(1),
	datac => \inst|inst21|dffs\(1),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~125_combout\);

-- Location: LCCOMB_X23_Y19_N26
\inst|inst1|LPM_MUX_component|auto_generated|_~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~126_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst17|dffs\(1)))) # (!\ADDR~combout\(0) & (\inst|inst18|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18|dffs\(1),
	datab => \ADDR~combout\(1),
	datac => \ADDR~combout\(0),
	datad => \inst|inst17|dffs\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~126_combout\);

-- Location: LCCOMB_X22_Y22_N24
\inst|inst1|LPM_MUX_component|auto_generated|_~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~127_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~124_combout\) # ((!\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~126_combout\) # 
-- (\inst|inst1|LPM_MUX_component|auto_generated|_~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~126_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~124_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~125_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~127_combout\);

-- Location: LCCOMB_X21_Y23_N14
\inst|inst1|LPM_MUX_component|auto_generated|_~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~129_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst93|dffs\(0)))) # (!\ADDR~combout\(0) & (\inst|inst94|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst94|dffs\(0),
	datac => \inst|inst93|dffs\(0),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~129_combout\);

-- Location: LCCOMB_X26_Y24_N28
\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~87_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\inst|inst73|dffs\(0))) # (!\ADDR~combout\(1) & ((\inst|inst76|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst73|dffs\(0),
	datab => \ADDR~combout\(1),
	datac => \inst|inst76|dffs\(0),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~87_combout\);

-- Location: LCCOMB_X26_Y24_N22
\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~88_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\inst|inst75|dffs\(0))) # (!\ADDR~combout\(1) & ((\inst|inst79|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst75|dffs\(0),
	datab => \ADDR~combout\(1),
	datac => \inst|inst79|dffs\(0),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~88_combout\);

-- Location: LCCOMB_X26_Y24_N4
\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~89_combout\ = (\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~88_combout\) # (\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~88_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~87_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~89_combout\);

-- Location: LCCOMB_X25_Y24_N6
\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~90_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\inst|inst80|dffs\(0))) # (!\ADDR~combout\(1) & ((\inst|inst85|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst80|dffs\(0),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst85|dffs\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~90_combout\);

-- Location: LCCOMB_X21_Y24_N26
\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~91_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & ((\inst|inst83|dffs\(0)))) # (!\ADDR~combout\(1) & (\inst|inst87|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst87|dffs\(0),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst83|dffs\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~91_combout\);

-- Location: LCCOMB_X22_Y24_N24
\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~92_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~89_combout\) # ((!\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~90_combout\) # 
-- (\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~89_combout\,
	datab => \ADDR~combout\(2),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~90_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~91_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~92_combout\);

-- Location: LCCOMB_X24_Y22_N30
\inst|inst1|LPM_MUX_component|auto_generated|_~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~135_combout\ = (\ADDR~combout\(1) & (\ADDR~combout\(0))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst61|dffs\(0))) # (!\ADDR~combout\(0) & ((\inst|inst62|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \ADDR~combout\(0),
	datac => \inst|inst61|dffs\(0),
	datad => \inst|inst62|dffs\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~135_combout\);

-- Location: LCCOMB_X25_Y22_N18
\inst|inst1|LPM_MUX_component|auto_generated|_~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~136_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~135_combout\ & (((\inst|inst57|dffs\(0)) # (!\ADDR~combout\(1))))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~135_combout\ & 
-- (\inst|inst59|dffs\(0) & (\ADDR~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~135_combout\,
	datab => \inst|inst59|dffs\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst57|dffs\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~136_combout\);

-- Location: LCCOMB_X22_Y25_N0
\inst|inst1|LPM_MUX_component|auto_generated|_~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~137_combout\ = (\ADDR~combout\(0) & (((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\inst|inst66|dffs\(0))) # (!\ADDR~combout\(1) & ((\inst|inst71|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst66|dffs\(0),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst71|dffs\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~137_combout\);

-- Location: LCCOMB_X22_Y25_N30
\inst|inst1|LPM_MUX_component|auto_generated|_~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~138_combout\ = (\ADDR~combout\(0) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~137_combout\ & ((\inst|inst65|dffs\(0)))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~137_combout\ & 
-- (\inst|inst69|dffs\(0))))) # (!\ADDR~combout\(0) & (((\inst|inst1|LPM_MUX_component|auto_generated|_~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst69|dffs\(0),
	datab => \ADDR~combout\(0),
	datac => \inst|inst65|dffs\(0),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~137_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~138_combout\);

-- Location: LCCOMB_X21_Y25_N12
\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~94_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~136_combout\))) # (!\ADDR~combout\(2) & 
-- (\inst|inst1|LPM_MUX_component|auto_generated|_~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(3),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~138_combout\,
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~136_combout\,
	datad => \ADDR~combout\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~94_combout\);

-- Location: LCCOMB_X26_Y26_N30
\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~99_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst50|dffs\(0)))) # (!\ADDR~combout\(0) & (\inst|inst49|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst49|dffs\(0),
	datab => \ADDR~combout\(1),
	datac => \ADDR~combout\(0),
	datad => \inst|inst50|dffs\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~99_combout\);

-- Location: LCCOMB_X25_Y20_N20
\inst|inst1|LPM_MUX_component|auto_generated|_~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~142_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0)) # ((\inst|inst35|dffs\(0))))) # (!\ADDR~combout\(1) & (!\ADDR~combout\(0) & ((\inst|inst38|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \ADDR~combout\(0),
	datac => \inst|inst35|dffs\(0),
	datad => \inst|inst38|dffs\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~142_combout\);

-- Location: LCCOMB_X24_Y20_N10
\inst|inst1|LPM_MUX_component|auto_generated|_~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~143_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~142_combout\ & ((\inst|inst33|dffs\(0)) # ((!\ADDR~combout\(0))))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~142_combout\ & 
-- (((\inst|inst37|dffs\(0) & \ADDR~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~142_combout\,
	datab => \inst|inst33|dffs\(0),
	datac => \inst|inst37|dffs\(0),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~143_combout\);

-- Location: LCCOMB_X22_Y20_N24
\inst|inst1|LPM_MUX_component|auto_generated|_~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~145_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst13|dffs\(0))) # (!\ADDR~combout\(0) & ((\inst|inst14|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \ADDR~combout\(1),
	datac => \inst|inst13|dffs\(0),
	datad => \inst|inst14|dffs\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~145_combout\);

-- Location: LCCOMB_X22_Y20_N20
\inst|inst1|LPM_MUX_component|auto_generated|_~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~148_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst21|dffs\(0))) # (!\ADDR~combout\(0) & ((\inst|inst23|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \ADDR~combout\(1),
	datac => \inst|inst21|dffs\(0),
	datad => \inst|inst23|dffs\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~148_combout\);

-- Location: LCCOMB_X19_Y23_N28
\inst|inst92|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst92|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst93|dffs\(5)))) # (!\inst|inst122~combout\ & (\inst|inst89|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst89|dffs\(5),
	datab => \inst|inst93|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst92|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X19_Y23_N30
\inst|inst95|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst95|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst94|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst90|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst94|dffs\(5),
	datab => \inst|inst90|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst95|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X21_Y23_N28
\inst|inst96|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst96|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst97|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst93|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst122~combout\,
	datab => \inst|inst97|dffs\(5),
	datad => \inst|inst93|dffs\(5),
	combout => \inst|inst96|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X23_Y25_N8
\inst|inst91|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst91|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst90|dffs\(5)))) # (!\inst|inst122~combout\ & (\inst|inst87|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst87|dffs\(5),
	datab => \inst|inst90|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst91|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X20_Y23_N0
\inst|inst100|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst100|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst101|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst97|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst101|dffs\(5),
	datab => \inst|inst97|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst100|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X23_Y23_N20
\inst|inst102|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst102|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst103|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst99|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst103|dffs\(5),
	datab => \inst|inst99|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst102|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X23_Y23_N26
\inst|inst105|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst105|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst101|dffs\(5) & !\inst|inst122~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst101|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst105|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X20_Y23_N22
\inst|inst98|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst98|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst99|dffs\(5)))) # (!\inst|inst122~combout\ & (\inst|inst94|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst94|dffs\(5),
	datab => \inst|inst99|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst98|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X21_Y22_N4
\inst|inst88|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst88|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst89|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst85|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst89|dffs\(5),
	datab => \inst|inst85|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst88|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X27_Y23_N8
\inst|inst43|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst43|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst42|dffs\(5)))) # (!\inst|inst122~combout\ & (\inst|inst38|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst38|dffs\(5),
	datab => \inst|inst42|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst43|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X25_Y21_N12
\inst|inst46|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst46|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst47|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst42|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst47|dffs\(5),
	datab => \inst|inst42|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst46|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X25_Y26_N16
\inst|inst44|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst44|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst45|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst41|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst45|dffs\(5),
	datab => \inst|inst41|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst44|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X25_Y26_N26
\inst|inst48|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst48|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst50|dffs\(5)))) # (!\inst|inst122~combout\ & (\inst|inst45|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst45|dffs\(5),
	datab => \inst|inst50|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst48|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X24_Y20_N16
\inst|inst36|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst36|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst37|dffs\(5)))) # (!\inst|inst122~combout\ & (\inst|inst33|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33|dffs\(5),
	datab => \inst|inst37|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst36|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X25_Y20_N24
\inst|inst39|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst39|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst38|dffs\(5)))) # (!\inst|inst122~combout\ & (\inst|inst35|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst35|dffs\(5),
	datab => \inst|inst122~combout\,
	datad => \inst|inst38|dffs\(5),
	combout => \inst|inst39|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X24_Y20_N22
\inst|inst40|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst40|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst41|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst37|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41|dffs\(5),
	datab => \inst|inst37|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst40|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X23_Y20_N30
\inst|inst34|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst34|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst35|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst30|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst35|dffs\(5),
	datab => \inst|inst30|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst34|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X24_Y19_N24
\inst|inst22|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst22|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst23|dffs\(5)))) # (!\inst|inst122~combout\ & (\inst|inst18|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18|dffs\(5),
	datab => \inst|inst122~combout\,
	datad => \inst|inst23|dffs\(5),
	combout => \inst|inst22|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X24_Y19_N14
\inst|inst20|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst20|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst21|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst17|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|dffs\(5),
	datab => \inst|inst122~combout\,
	datad => \inst|inst17|dffs\(5),
	combout => \inst|inst20|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X21_Y24_N16
\inst|inst92|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst92|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst93|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst89|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst93|dffs\(4),
	datab => \inst|inst89|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst92|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X21_Y23_N18
\inst|inst95|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst95|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst94|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst90|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst122~combout\,
	datab => \inst|inst90|dffs\(4),
	datad => \inst|inst94|dffs\(4),
	combout => \inst|inst95|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X21_Y23_N0
\inst|inst96|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst96|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst97|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst93|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst97|dffs\(4),
	datab => \inst|inst93|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst96|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X23_Y25_N20
\inst|inst91|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst91|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst90|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst87|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst87|dffs\(4),
	datab => \inst|inst90|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst91|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X20_Y23_N8
\inst|inst100|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst100|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst101|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst97|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst101|dffs\(4),
	datab => \inst|inst97|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst100|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X23_Y23_N8
\inst|inst102|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst102|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst103|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst99|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst103|dffs\(4),
	datab => \inst|inst99|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst102|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X23_Y23_N14
\inst|inst105|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst105|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst101|dffs\(4) & !\inst|inst122~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst101|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst105|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X20_Y23_N18
\inst|inst98|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst98|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst99|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst94|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst94|dffs\(4),
	datab => \inst|inst99|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst98|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X23_Y24_N12
\inst|inst78|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst78|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst79|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst75|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst79|dffs\(4),
	datab => \inst|inst75|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst78|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X23_Y25_N22
\inst|inst86|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst86|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst87|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst83|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst87|dffs\(4),
	datab => \inst|inst83|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst86|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X21_Y22_N26
\inst|inst88|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst88|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst89|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst85|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst89|dffs\(4),
	datab => \inst|inst85|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst88|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X23_Y24_N30
\inst|inst74|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst74|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst75|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst71|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst71|dffs\(4),
	datab => \inst|inst75|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst74|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X24_Y24_N30
\inst|inst77|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst77|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst76|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst73|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst73|dffs\(4),
	datab => \inst|inst122~combout\,
	datad => \inst|inst76|dffs\(4),
	combout => \inst|inst77|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X23_Y22_N16
\inst|inst64|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst64|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst65|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst61|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst65|dffs\(4),
	datab => \inst|inst61|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst64|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X22_Y23_N18
\inst|inst70|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst70|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst71|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst66|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst71|dffs\(4),
	datab => \inst|inst66|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst70|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X22_Y24_N6
\inst|inst72|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst72|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst73|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst69|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst73|dffs\(4),
	datab => \inst|inst69|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst72|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X25_Y21_N10
\inst|inst46|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst46|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst47|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst42|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst42|dffs\(4),
	datab => \inst|inst47|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst46|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X25_Y26_N4
\inst|inst48|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst48|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst50|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst45|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst45|dffs\(4),
	datab => \inst|inst50|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst48|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X27_Y23_N6
\inst|inst43|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst43|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst42|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst38|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst42|dffs\(4),
	datab => \inst|inst38|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst43|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X25_Y26_N22
\inst|inst44|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst44|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst45|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst41|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst45|dffs\(4),
	datab => \inst|inst41|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst44|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X24_Y20_N4
\inst|inst36|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst36|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst37|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst33|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33|dffs\(4),
	datab => \inst|inst37|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst36|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X25_Y20_N30
\inst|inst39|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst39|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst38|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst35|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst38|dffs\(4),
	datab => \inst|inst122~combout\,
	datad => \inst|inst35|dffs\(4),
	combout => \inst|inst39|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X24_Y20_N14
\inst|inst40|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst40|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst41|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst37|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst122~combout\,
	datab => \inst|inst41|dffs\(4),
	datad => \inst|inst37|dffs\(4),
	combout => \inst|inst40|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X25_Y23_N8
\inst|inst15|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst15|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst14|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst11|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14|dffs\(4),
	datab => \inst|inst122~combout\,
	datad => \inst|inst11|dffs\(4),
	combout => \inst|inst15|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X25_Y19_N0
\inst|inst16|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst16|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst17|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst13|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst17|dffs\(4),
	datab => \inst|inst122~combout\,
	datad => \inst|inst13|dffs\(4),
	combout => \inst|inst16|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X25_Y19_N10
\inst|inst19|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst19|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst18|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst14|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18|dffs\(4),
	datab => \inst|inst122~combout\,
	datad => \inst|inst14|dffs\(4),
	combout => \inst|inst19|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X24_Y19_N10
\inst|inst20|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst20|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst21|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst17|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst17|dffs\(4),
	datab => \inst|inst122~combout\,
	datad => \inst|inst21|dffs\(4),
	combout => \inst|inst20|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X23_Y23_N10
\inst|inst105|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst105|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst101|dffs\(3) & !\inst|inst122~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst101|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst105|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X20_Y23_N10
\inst|inst98|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst98|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst99|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst94|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst99|dffs\(3),
	datab => \inst|inst94|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst98|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X23_Y24_N0
\inst|inst78|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst78|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst79|dffs\(3)))) # (!\inst|inst122~combout\ & (\inst|inst75|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst75|dffs\(3),
	datab => \inst|inst79|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst78|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X23_Y25_N30
\inst|inst86|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst86|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst87|dffs\(3)))) # (!\inst|inst122~combout\ & (\inst|inst83|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst83|dffs\(3),
	datab => \inst|inst87|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst86|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X24_Y24_N28
\inst|inst81|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst81|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst80|dffs\(3)))) # (!\inst|inst122~combout\ & (\inst|inst76|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst76|dffs\(3),
	datab => \inst|inst80|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst81|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X23_Y24_N22
\inst|inst74|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst74|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst75|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst71|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst75|dffs\(3),
	datab => \inst|inst71|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst74|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X25_Y24_N28
\inst|inst82|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst82|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst83|dffs\(3)))) # (!\inst|inst122~combout\ & (\inst|inst79|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst79|dffs\(3),
	datab => \inst|inst83|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst82|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X24_Y24_N26
\inst|inst77|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst77|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst76|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst73|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst76|dffs\(3),
	datab => \inst|inst73|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst77|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X25_Y24_N30
\inst|inst84|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst84|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst85|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst80|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst85|dffs\(3),
	datab => \inst|inst80|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst84|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X24_Y25_N16
\inst|inst2|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst2|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst3|dffs\(3)))) # (!\inst|inst122~combout\ & (\DATA~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA~combout\(3),
	datab => \inst|inst3|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst2|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X24_Y22_N16
\inst|inst60|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst60|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst61|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst57|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst61|dffs\(3),
	datab => \inst|inst57|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst60|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X24_Y22_N22
\inst|inst63|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst63|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst62|dffs\(3)))) # (!\inst|inst122~combout\ & (\inst|inst59|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|dffs\(3),
	datab => \inst|inst62|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst63|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X25_Y22_N24
\inst|inst58|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst58|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst59|dffs\(3)))) # (!\inst|inst122~combout\ & (\inst|inst54|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst54|dffs\(3),
	datab => \inst|inst59|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst58|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X25_Y26_N12
\inst|inst48|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst48|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst50|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst45|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst50|dffs\(3),
	datab => \inst|inst45|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst48|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X27_Y23_N20
\inst|inst43|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst43|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst42|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst38|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst42|dffs\(3),
	datab => \inst|inst38|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst43|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X25_Y22_N2
\inst|inst56|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst56|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst57|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst53|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst57|dffs\(3),
	datab => \inst|inst53|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst56|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X24_Y26_N28
\inst|inst51|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst51|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst49|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst47|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst49|dffs\(3),
	datab => \inst|inst47|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst51|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X23_Y21_N28
\inst|inst28|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst28|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst29|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst25|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst29|dffs\(3),
	datab => \inst|inst25|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst28|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X23_Y21_N6
\inst|inst31|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst31|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst30|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst26|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|dffs\(3),
	datab => \inst|inst26|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst31|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X23_Y20_N12
\inst|inst32|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst32|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst33|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst29|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33|dffs\(3),
	datab => \inst|inst29|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst32|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X24_Y21_N12
\inst|inst27|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst27|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst26|dffs\(3)))) # (!\inst|inst122~combout\ & (\inst|inst23|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst23|dffs\(3),
	datab => \inst|inst26|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst27|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X25_Y19_N12
\inst|inst16|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst16|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst17|dffs\(3)))) # (!\inst|inst122~combout\ & (\inst|inst13|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|dffs\(3),
	datab => \inst|inst122~combout\,
	datad => \inst|inst17|dffs\(3),
	combout => \inst|inst16|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X25_Y19_N22
\inst|inst19|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst19|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst18|dffs\(3)))) # (!\inst|inst122~combout\ & (\inst|inst14|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14|dffs\(3),
	datab => \inst|inst122~combout\,
	datad => \inst|inst18|dffs\(3),
	combout => \inst|inst19|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X19_Y23_N24
\inst|inst92|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst92|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst93|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst89|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst93|dffs\(2),
	datab => \inst|inst89|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst92|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X23_Y25_N4
\inst|inst91|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst91|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst90|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst87|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst90|dffs\(2),
	datab => \inst|inst87|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst91|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X24_Y24_N14
\inst|inst81|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst81|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst80|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst76|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst76|dffs\(2),
	datab => \inst|inst80|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst81|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X24_Y26_N2
\inst|inst52|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst52|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst53|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst50|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst50|dffs\(2),
	datab => \inst|inst53|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst52|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X23_Y21_N12
\inst|inst28|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst28|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst29|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst25|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|dffs\(2),
	datab => \inst|inst29|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst28|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X23_Y21_N26
\inst|inst31|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst31|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst30|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst26|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst26|dffs\(2),
	datab => \inst|inst30|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst31|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X25_Y23_N12
\inst|inst15|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst15|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst14|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst11|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14|dffs\(2),
	datab => \inst|inst122~combout\,
	datad => \inst|inst11|dffs\(2),
	combout => \inst|inst15|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X25_Y19_N28
\inst|inst16|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst16|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst17|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst13|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst17|dffs\(2),
	datab => \inst|inst122~combout\,
	datad => \inst|inst13|dffs\(2),
	combout => \inst|inst16|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X26_Y23_N10
\inst|inst10|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst10|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst11|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst6|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|dffs\(2),
	datab => \inst|inst11|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst10|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X25_Y23_N18
\inst|inst12|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst12|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst13|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst9|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|dffs\(2),
	datab => \inst|inst122~combout\,
	datad => \inst|inst9|dffs\(2),
	combout => \inst|inst12|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X25_Y19_N6
\inst|inst19|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst19|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst18|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst14|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst122~combout\,
	datab => \inst|inst18|dffs\(2),
	datad => \inst|inst14|dffs\(2),
	combout => \inst|inst19|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X24_Y19_N6
\inst|inst20|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst20|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst21|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst17|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst17|dffs\(2),
	datab => \inst|inst122~combout\,
	datad => \inst|inst21|dffs\(2),
	combout => \inst|inst20|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X19_Y23_N4
\inst|inst92|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst92|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst93|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst89|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst93|dffs\(1),
	datab => \inst|inst89|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst92|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X19_Y23_N6
\inst|inst95|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst95|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst94|dffs\(1)))) # (!\inst|inst122~combout\ & (\inst|inst90|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst90|dffs\(1),
	datab => \inst|inst94|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst95|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X21_Y23_N10
\inst|inst96|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst96|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst97|dffs\(1)))) # (!\inst|inst122~combout\ & (\inst|inst93|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst122~combout\,
	datab => \inst|inst93|dffs\(1),
	datad => \inst|inst97|dffs\(1),
	combout => \inst|inst96|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X23_Y25_N0
\inst|inst91|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst91|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst90|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst87|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst90|dffs\(1),
	datab => \inst|inst87|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst91|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X20_Y23_N16
\inst|inst100|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst100|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst101|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst97|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst101|dffs\(1),
	datab => \inst|inst97|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst100|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X23_Y23_N24
\inst|inst102|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst102|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst103|dffs\(1)))) # (!\inst|inst122~combout\ & (\inst|inst99|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst99|dffs\(1),
	datab => \inst|inst103|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst102|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X23_Y23_N2
\inst|inst105|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst105|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst101|dffs\(1) & !\inst|inst122~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst101|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst105|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X20_Y23_N26
\inst|inst98|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst98|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst99|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst94|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst99|dffs\(1),
	datab => \inst|inst94|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst98|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X24_Y24_N16
\inst|inst77|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst77|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst76|dffs\(1)))) # (!\inst|inst122~combout\ & (\inst|inst73|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst73|dffs\(1),
	datab => \inst|inst76|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst77|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X24_Y25_N24
\inst|inst2|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst2|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst3|dffs\(1)))) # (!\inst|inst122~combout\ & (\DATA~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA~combout\(1),
	datab => \inst|inst3|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst2|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X24_Y22_N20
\inst|inst60|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst60|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst61|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst57|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst61|dffs\(1),
	datab => \inst|inst57|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst60|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X24_Y22_N6
\inst|inst63|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst63|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst62|dffs\(1)))) # (!\inst|inst122~combout\ & (\inst|inst59|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|dffs\(1),
	datab => \inst|inst62|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst63|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X25_Y22_N20
\inst|inst58|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst58|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst59|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst54|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|dffs\(1),
	datab => \inst|inst54|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst58|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X27_Y23_N12
\inst|inst43|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst43|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst42|dffs\(1)))) # (!\inst|inst122~combout\ & (\inst|inst38|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst38|dffs\(1),
	datab => \inst|inst42|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst43|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X25_Y22_N14
\inst|inst56|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst56|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst57|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst53|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst57|dffs\(1),
	datab => \inst|inst53|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst56|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X24_Y20_N30
\inst|inst40|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst40|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst41|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst37|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41|dffs\(1),
	datab => \inst|inst37|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst40|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X25_Y23_N24
\inst|inst15|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst15|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst14|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst11|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14|dffs\(1),
	datab => \inst|inst122~combout\,
	datad => \inst|inst11|dffs\(1),
	combout => \inst|inst15|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X25_Y19_N8
\inst|inst16|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst16|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst17|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst13|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst122~combout\,
	datab => \inst|inst17|dffs\(1),
	datad => \inst|inst13|dffs\(1),
	combout => \inst|inst16|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X25_Y23_N2
\inst|inst12|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst12|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst13|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst9|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|dffs\(1),
	datab => \inst|inst122~combout\,
	datad => \inst|inst9|dffs\(1),
	combout => \inst|inst12|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X24_Y19_N12
\inst|inst22|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst22|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst23|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst18|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst23|dffs\(1),
	datab => \inst|inst122~combout\,
	datad => \inst|inst18|dffs\(1),
	combout => \inst|inst22|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X25_Y19_N14
\inst|inst19|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst19|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst18|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst14|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18|dffs\(1),
	datab => \inst|inst122~combout\,
	datad => \inst|inst14|dffs\(1),
	combout => \inst|inst19|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X24_Y19_N30
\inst|inst20|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst20|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst21|dffs\(1)))) # (!\inst|inst122~combout\ & (\inst|inst17|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst17|dffs\(1),
	datab => \inst|inst122~combout\,
	datad => \inst|inst21|dffs\(1),
	combout => \inst|inst20|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X21_Y23_N20
\inst|inst95|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst95|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst94|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst90|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst90|dffs\(0),
	datab => \inst|inst94|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst95|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X21_Y23_N30
\inst|inst96|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst96|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst97|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst93|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst97|dffs\(0),
	datab => \inst|inst93|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst96|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X23_Y24_N8
\inst|inst74|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst74|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst75|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst71|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst71|dffs\(0),
	datab => \inst|inst75|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst74|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X23_Y24_N6
\inst|inst78|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst78|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst79|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst75|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst79|dffs\(0),
	datab => \inst|inst75|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst78|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X24_Y24_N12
\inst|inst77|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst77|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst76|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst73|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst73|dffs\(0),
	datab => \inst|inst76|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst77|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X24_Y24_N2
\inst|inst81|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst81|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst80|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst76|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst80|dffs\(0),
	datab => \inst|inst76|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst81|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X25_Y24_N20
\inst|inst82|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst82|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst83|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst79|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst79|dffs\(0),
	datab => \inst|inst83|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst82|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X25_Y24_N22
\inst|inst84|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst84|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst85|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst80|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst80|dffs\(0),
	datab => \inst|inst85|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst84|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X25_Y25_N6
\inst|inst7|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst7|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst6|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst3|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|dffs\(0),
	datab => \inst|inst3|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst7|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X24_Y22_N4
\inst|inst60|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst60|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst61|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst57|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst61|dffs\(0),
	datab => \inst|inst57|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst60|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X24_Y22_N26
\inst|inst63|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst63|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst62|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst59|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst62|dffs\(0),
	datab => \inst|inst59|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst63|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X23_Y22_N8
\inst|inst64|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst64|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst65|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst61|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst61|dffs\(0),
	datab => \inst|inst65|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst64|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X22_Y23_N16
\inst|inst70|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst70|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst71|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst66|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst66|dffs\(0),
	datab => \inst|inst71|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst70|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X22_Y23_N30
\inst|inst68|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst68|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst69|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst65|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst69|dffs\(0),
	datab => \inst|inst65|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst68|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X22_Y24_N22
\inst|inst72|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst72|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst73|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst69|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst69|dffs\(0),
	datab => \inst|inst73|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst72|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X23_Y22_N14
\inst|inst67|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst67|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst66|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst62|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst66|dffs\(0),
	datab => \inst|inst62|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst67|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X25_Y26_N30
\inst|inst44|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst44|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst45|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst41|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst45|dffs\(0),
	datab => \inst|inst41|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst44|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X24_Y26_N6
\inst|inst52|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst52|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst53|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst50|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst50|dffs\(0),
	datab => \inst|inst53|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst52|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X23_Y20_N6
\inst|inst34|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst34|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst35|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst30|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|dffs\(0),
	datab => \inst|inst35|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst34|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X25_Y23_N20
\inst|inst15|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst15|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst14|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst11|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14|dffs\(0),
	datab => \inst|inst122~combout\,
	datad => \inst|inst11|dffs\(0),
	combout => \inst|inst15|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X25_Y19_N16
\inst|inst16|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst16|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst17|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst13|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst17|dffs\(0),
	datab => \inst|inst122~combout\,
	datad => \inst|inst13|dffs\(0),
	combout => \inst|inst16|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X24_Y19_N4
\inst|inst22|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst22|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst23|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst18|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18|dffs\(0),
	datab => \inst|inst122~combout\,
	datad => \inst|inst23|dffs\(0),
	combout => \inst|inst22|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
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
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA[5]~I\ : cycloneii_io
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
	padio => ww_DATA(5),
	combout => \DATA~combout\(5));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA[4]~I\ : cycloneii_io
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
	padio => ww_DATA(4),
	combout => \DATA~combout\(4));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA[3]~I\ : cycloneii_io
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
	padio => ww_DATA(3),
	combout => \DATA~combout\(3));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA[2]~I\ : cycloneii_io
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
	padio => ww_DATA(2),
	combout => \DATA~combout\(2));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA[1]~I\ : cycloneii_io
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
	padio => ww_DATA(1),
	combout => \DATA~combout\(1));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA[0]~I\ : cycloneii_io
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
	padio => ww_DATA(0),
	combout => \DATA~combout\(0));

-- Location: CLKCTRL_G3
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MODE[0]~I\ : cycloneii_io
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
	padio => ww_MODE(0),
	combout => \MODE~combout\(0));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MODE[1]~I\ : cycloneii_io
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
	padio => ww_MODE(1),
	combout => \MODE~combout\(1));

-- Location: LCCOMB_X24_Y23_N16
\inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (((VCC) # (!\inst|inst126~combout\)))
-- \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (!\inst|inst126~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datab => \inst|inst126~combout\,
	datad => VCC,
	combout => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X24_Y23_N18
\inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ & (\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(1) $ (((\inst|inst126~combout\) # 
-- (VCC))))) # (!\inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ & ((\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(1)) # ((GND))))
-- \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(1) $ (\inst|inst126~combout\)) # 
-- (!\inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datab => \inst|inst126~combout\,
	datad => VCC,
	cin => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X24_Y23_N20
\inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & (\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(2) & ((VCC)))) # 
-- (!\inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & (\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(2) $ (((VCC) # (!\inst|inst126~combout\)))))
-- \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((!\inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & (\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(2) $ 
-- (!\inst|inst126~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \inst|inst126~combout\,
	datad => VCC,
	cin => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X24_Y23_N22
\inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ & (\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(3) $ (((\inst|inst126~combout\) # 
-- (VCC))))) # (!\inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ & ((\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(3)) # ((GND))))
-- \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(3) $ (\inst|inst126~combout\)) # 
-- (!\inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \inst|inst126~combout\,
	datad => VCC,
	cin => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X24_Y23_N24
\inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & (\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(4) & ((VCC)))) # 
-- (!\inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & (\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(4) $ (((VCC) # (!\inst|inst126~combout\)))))
-- \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((!\inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & (\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(4) $ 
-- (!\inst|inst126~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst|inst126~combout\,
	datad => VCC,
	cin => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X24_Y23_N26
\inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ $ (\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(5),
	cin => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\);

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENABLE~I\ : cycloneii_io
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
	padio => ww_ENABLE,
	combout => \ENABLE~combout\);

-- Location: LCCOMB_X25_Y25_N16
\inst|inst113\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst113~combout\ = (\MODE~combout\(0) & (\ENABLE~combout\ & !\MODE~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~combout\(0),
	datac => \ENABLE~combout\,
	datad => \MODE~combout\(1),
	combout => \inst|inst113~combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RST~I\ : cycloneii_io
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
	padio => ww_RST,
	combout => \RST~combout\);

-- Location: CLKCTRL_G1
\RST~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y23_N4
\inst|inst122\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst122~combout\ = (\ENABLE~combout\ & (!\MODE~combout\(0) & (\MODE~combout\(1) & \inst|inst121~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENABLE~combout\,
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \inst|inst121~combout\,
	combout => \inst|inst122~combout\);

-- Location: LCCOMB_X24_Y23_N14
\inst|inst108|LPM_COUNTER_component|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst108|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\inst|inst113~combout\) # ((\inst|inst122~combout\) # (\inst|inst126~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst113~combout\,
	datac => \inst|inst122~combout\,
	datad => \inst|inst126~combout\,
	combout => \inst|inst108|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: LCFF_X24_Y23_N27
\inst|inst108|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst108|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCFF_X24_Y23_N25
\inst|inst108|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst108|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X21_Y24_N30
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCFF_X24_Y23_N23
\inst|inst108|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst108|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCFF_X24_Y23_N17
\inst|inst108|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst108|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCFF_X24_Y23_N19
\inst|inst108|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst108|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X24_Y23_N2
\inst|inst121~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst121~0_combout\ = (!\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(0) & !\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datac => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(1),
	combout => \inst|inst121~0_combout\);

-- Location: LCCOMB_X24_Y23_N10
\inst|inst125|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst125|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0) = (((!\inst|inst121~0_combout\) # (!\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(4))) # (!\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(5))) # 
-- (!\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datac => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => \inst|inst121~0_combout\,
	combout => \inst|inst125|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0));

-- Location: LCCOMB_X24_Y23_N30
\inst|inst126\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst126~combout\ = (\ENABLE~combout\ & (\MODE~combout\(0) & (\MODE~combout\(1) & \inst|inst125|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENABLE~combout\,
	datab => \MODE~combout\(0),
	datac => \MODE~combout\(1),
	datad => \inst|inst125|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0),
	combout => \inst|inst126~combout\);

-- Location: LCFF_X24_Y23_N21
\inst|inst108|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst108|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst108|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X24_Y23_N12
\inst|inst121\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst121~combout\ = (\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(2)) # ((\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(5)) # ((\inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(4)) # (!\inst|inst121~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datac => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => \inst|inst121~0_combout\,
	combout => \inst|inst121~combout\);

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADDR[0]~I\ : cycloneii_io
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
	padio => ww_ADDR(0),
	combout => \ADDR~combout\(0));

-- Location: LCCOMB_X23_Y26_N16
\inst|inst55|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst55|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst54|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst49|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst54|dffs\(5),
	datab => \inst|inst49|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst55|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADDR[1]~I\ : cycloneii_io
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
	padio => ww_ADDR(1),
	combout => \ADDR~combout\(1));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADDR[2]~I\ : cycloneii_io
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
	padio => ww_ADDR(2),
	combout => \ADDR~combout\(2));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADDR[3]~I\ : cycloneii_io
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
	padio => ww_ADDR(3),
	combout => \ADDR~combout\(3));

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADDR[4]~I\ : cycloneii_io
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
	padio => ww_ADDR(4),
	combout => \ADDR~combout\(4));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADDR[5]~I\ : cycloneii_io
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
	padio => ww_ADDR(5),
	combout => \ADDR~combout\(5));

-- Location: LCCOMB_X23_Y26_N10
\inst|inst130|LPM_MUX_component|auto_generated|result_node[26]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[26]~33_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(26) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(26),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[26]~33_combout\);

-- Location: LCFF_X23_Y26_N17
\inst|inst53|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst55|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst53|dffs\(5));

-- Location: LCCOMB_X24_Y26_N30
\inst|inst52|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst52|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst53|dffs\(5)))) # (!\inst|inst122~combout\ & (\inst|inst50|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst50|dffs\(5),
	datab => \inst|inst53|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst52|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X24_Y26_N10
\inst|inst130|LPM_MUX_component|auto_generated|result_node[25]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[25]~34_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(25) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(25),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[25]~34_combout\);

-- Location: LCFF_X24_Y26_N31
\inst|inst49|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst52|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[25]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst49|dffs\(5));

-- Location: LCCOMB_X24_Y26_N16
\inst|inst51|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst51|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst49|dffs\(5)))) # (!\inst|inst122~combout\ & (\inst|inst47|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst47|dffs\(5),
	datab => \inst|inst49|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst51|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X24_Y26_N8
\inst|inst130|LPM_MUX_component|auto_generated|result_node[24]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[24]~32_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(24) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(24),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[24]~32_combout\);

-- Location: LCFF_X24_Y26_N17
\inst|inst50|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst51|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[24]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst50|dffs\(5));

-- Location: LCCOMB_X24_Y26_N4
\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~13_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\inst|inst50|dffs\(5))) # (!\ADDR~combout\(1) & ((\inst|inst53|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \ADDR~combout\(0),
	datac => \inst|inst50|dffs\(5),
	datad => \inst|inst53|dffs\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~13_combout\);

-- Location: LCCOMB_X25_Y22_N10
\inst|inst56|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst56|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst57|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst53|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst57|dffs\(5),
	datab => \inst|inst53|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst56|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X25_Y22_N22
\inst|inst130|LPM_MUX_component|auto_generated|result_node[27]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[27]~35_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(27) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(27),
	datac => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[27]~35_combout\);

-- Location: LCFF_X25_Y22_N11
\inst|inst54|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst56|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[27]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst54|dffs\(5));

-- Location: LCCOMB_X25_Y26_N24
\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~14_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\inst|inst49|dffs\(5))) # (!\ADDR~combout\(1) & ((\inst|inst54|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst49|dffs\(5),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst54|dffs\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~14_combout\);

-- Location: LCCOMB_X26_Y26_N16
\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~15_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~12_combout\) # ((!\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~13_combout\) # 
-- (\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~12_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~13_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~14_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~15_combout\);

-- Location: LCCOMB_X23_Y22_N22
\inst|inst67|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst67|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst66|dffs\(5)))) # (!\inst|inst122~combout\ & (\inst|inst62|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst62|dffs\(5),
	datab => \inst|inst66|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst67|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X23_Y22_N10
\inst|inst130|LPM_MUX_component|auto_generated|result_node[32]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[32]~27_combout\ = (\inst|inst126~combout\ & \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst126~combout\,
	datad => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(32),
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[32]~27_combout\);

-- Location: LCFF_X23_Y22_N23
\inst|inst65|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst67|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[32]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst65|dffs\(5));

-- Location: LCCOMB_X22_Y23_N8
\inst|inst68|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst68|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst69|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst65|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst69|dffs\(5),
	datab => \inst|inst65|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst68|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X22_Y23_N20
\inst|inst130|LPM_MUX_component|auto_generated|result_node[33]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[33]~24_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(33) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(33),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[33]~24_combout\);

-- Location: LCFF_X22_Y23_N9
\inst|inst66|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst68|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[33]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst66|dffs\(5));

-- Location: LCCOMB_X22_Y24_N8
\inst|inst72|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst72|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst73|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst69|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst73|dffs\(5),
	datab => \inst|inst69|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst72|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X22_Y24_N14
\inst|inst130|LPM_MUX_component|auto_generated|result_node[35]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[35]~26_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(35) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(35),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[35]~26_combout\);

-- Location: LCFF_X22_Y24_N9
\inst|inst71|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst72|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[35]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst71|dffs\(5));

-- Location: LCCOMB_X22_Y23_N2
\inst|inst70|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst70|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst71|dffs\(5)))) # (!\inst|inst122~combout\ & (\inst|inst66|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst122~combout\,
	datab => \inst|inst66|dffs\(5),
	datad => \inst|inst71|dffs\(5),
	combout => \inst|inst70|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X22_Y23_N26
\inst|inst130|LPM_MUX_component|auto_generated|result_node[34]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[34]~25_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(34) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(34),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[34]~25_combout\);

-- Location: LCFF_X22_Y23_N3
\inst|inst69|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst70|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[34]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst69|dffs\(5));

-- Location: LCCOMB_X22_Y24_N20
\inst|inst1|LPM_MUX_component|auto_generated|_~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~21_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst69|dffs\(5))) # (!\ADDR~combout\(0) & ((\inst|inst71|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst69|dffs\(5),
	datac => \inst|inst71|dffs\(5),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~21_combout\);

-- Location: LCCOMB_X22_Y23_N28
\inst|inst1|LPM_MUX_component|auto_generated|_~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~22_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~21_combout\ & ((\inst|inst65|dffs\(5)))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~21_combout\ & 
-- (\inst|inst66|dffs\(5))))) # (!\ADDR~combout\(1) & (((\inst|inst1|LPM_MUX_component|auto_generated|_~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst66|dffs\(5),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~21_combout\,
	datad => \inst|inst65|dffs\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~22_combout\);

-- Location: LCCOMB_X23_Y22_N24
\inst|inst64|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst64|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst65|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst61|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst65|dffs\(5),
	datab => \inst|inst61|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst64|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X23_Y22_N0
\inst|inst130|LPM_MUX_component|auto_generated|result_node[31]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[31]~22_combout\ = (\inst|inst126~combout\ & \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst126~combout\,
	datad => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(31),
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[31]~22_combout\);

-- Location: LCFF_X23_Y22_N25
\inst|inst62|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst64|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[31]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst62|dffs\(5));

-- Location: LCCOMB_X24_Y22_N10
\inst|inst63|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst63|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst62|dffs\(5)))) # (!\inst|inst122~combout\ & (\inst|inst59|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|dffs\(5),
	datab => \inst|inst62|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst63|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X24_Y22_N18
\inst|inst130|LPM_MUX_component|auto_generated|result_node[30]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[30]~21_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(30) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(30),
	datac => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[30]~21_combout\);

-- Location: LCFF_X24_Y22_N11
\inst|inst61|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst63|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[30]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst61|dffs\(5));

-- Location: LCCOMB_X24_Y22_N8
\inst|inst60|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst60|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst61|dffs\(5)))) # (!\inst|inst122~combout\ & (\inst|inst57|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst57|dffs\(5),
	datab => \inst|inst61|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst60|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X24_Y22_N0
\inst|inst130|LPM_MUX_component|auto_generated|result_node[29]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[29]~20_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(29) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(29),
	datac => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[29]~20_combout\);

-- Location: LCFF_X24_Y22_N9
\inst|inst59|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst60|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[29]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst59|dffs\(5));

-- Location: LCCOMB_X25_Y22_N16
\inst|inst58|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst58|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst59|dffs\(5)))) # (!\inst|inst122~combout\ & (\inst|inst54|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst54|dffs\(5),
	datab => \inst|inst122~combout\,
	datad => \inst|inst59|dffs\(5),
	combout => \inst|inst58|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X25_Y22_N0
\inst|inst130|LPM_MUX_component|auto_generated|result_node[28]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[28]~23_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(28) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(28),
	datac => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[28]~23_combout\);

-- Location: LCFF_X25_Y22_N17
\inst|inst57|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst58|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[28]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst57|dffs\(5));

-- Location: LCCOMB_X22_Y22_N14
\inst|inst1|LPM_MUX_component|auto_generated|_~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~20_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~19_combout\ & (((\inst|inst57|dffs\(5))) # (!\ADDR~combout\(1)))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~19_combout\ & 
-- (\ADDR~combout\(1) & ((\inst|inst59|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~19_combout\,
	datab => \ADDR~combout\(1),
	datac => \inst|inst57|dffs\(5),
	datad => \inst|inst59|dffs\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~20_combout\);

-- Location: LCCOMB_X22_Y25_N12
\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~9_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~20_combout\))) # (!\ADDR~combout\(2) & 
-- (\inst|inst1|LPM_MUX_component|auto_generated|_~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(3),
	datab => \ADDR~combout\(2),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~22_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~20_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~9_combout\);

-- Location: LCCOMB_X22_Y25_N10
\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~16_combout\ = (\ADDR~combout\(4) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~9_combout\) # ((\ADDR~combout\(3) & 
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(3),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~15_combout\,
	datac => \ADDR~combout\(4),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~9_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~16_combout\);

-- Location: LCCOMB_X24_Y24_N24
\inst|inst77|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst77|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst76|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst73|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst76|dffs\(5),
	datab => \inst|inst73|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst77|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X24_Y24_N20
\inst|inst130|LPM_MUX_component|auto_generated|result_node[37]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[37]~12_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(37) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(37),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[37]~12_combout\);

-- Location: LCFF_X24_Y24_N25
\inst|inst75|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst77|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[37]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst75|dffs\(5));

-- Location: LCCOMB_X23_Y24_N4
\inst|inst74|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst74|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst75|dffs\(5)))) # (!\inst|inst122~combout\ & (\inst|inst71|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst71|dffs\(5),
	datab => \inst|inst75|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst74|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X23_Y24_N28
\inst|inst130|LPM_MUX_component|auto_generated|result_node[36]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[36]~8_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(36) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(36),
	datac => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[36]~8_combout\);

-- Location: LCFF_X23_Y24_N5
\inst|inst73|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst74|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst113~combout\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[36]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst73|dffs\(5));

-- Location: LCCOMB_X23_Y24_N10
\inst|inst78|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst78|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst79|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst75|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst79|dffs\(5),
	datab => \inst|inst75|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst78|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X23_Y24_N2
\inst|inst130|LPM_MUX_component|auto_generated|result_node[38]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[38]~9_combout\ = (\inst|inst126~combout\ & \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(38))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst126~combout\,
	datad => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(38),
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[38]~9_combout\);

-- Location: LCFF_X23_Y24_N11
\inst|inst76|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst78|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[38]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst76|dffs\(5));

-- Location: LCCOMB_X20_Y24_N20
\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~2_combout\ = (\ADDR~combout\(2) & ((\ADDR~combout\(1) & (\inst|inst73|dffs\(5))) # (!\ADDR~combout\(1) & ((\inst|inst76|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \ADDR~combout\(2),
	datac => \inst|inst73|dffs\(5),
	datad => \inst|inst76|dffs\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X23_Y25_N6
\inst|inst86|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst86|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst87|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst83|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst87|dffs\(5),
	datab => \inst|inst83|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst86|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X23_Y25_N2
\inst|inst130|LPM_MUX_component|auto_generated|result_node[42]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[42]~11_combout\ = (\inst|inst126~combout\ & \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(42))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst126~combout\,
	datad => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(42),
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[42]~11_combout\);

-- Location: LCFF_X23_Y25_N7
\inst|inst85|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst86|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[42]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst85|dffs\(5));

-- Location: LCCOMB_X25_Y24_N2
\inst|inst84|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst84|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst85|dffs\(5)))) # (!\inst|inst122~combout\ & (\inst|inst80|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst80|dffs\(5),
	datab => \inst|inst85|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst84|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X25_Y24_N26
\inst|inst130|LPM_MUX_component|auto_generated|result_node[41]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[41]~14_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(41) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(41),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[41]~14_combout\);

-- Location: LCFF_X25_Y24_N3
\inst|inst83|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst84|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[41]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst83|dffs\(5));

-- Location: LCCOMB_X25_Y24_N24
\inst|inst82|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst82|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst83|dffs\(5)))) # (!\inst|inst122~combout\ & (\inst|inst79|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst79|dffs\(5),
	datab => \inst|inst83|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst82|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X25_Y24_N12
\inst|inst130|LPM_MUX_component|auto_generated|result_node[40]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[40]~10_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(40) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(40),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[40]~10_combout\);

-- Location: LCFF_X25_Y24_N25
\inst|inst80|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst82|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[40]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst80|dffs\(5));

-- Location: LCCOMB_X21_Y24_N12
\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~3_combout\ = (!\ADDR~combout\(2) & ((\ADDR~combout\(1) & (\inst|inst80|dffs\(5))) # (!\ADDR~combout\(1) & ((\inst|inst85|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \ADDR~combout\(1),
	datac => \inst|inst80|dffs\(5),
	datad => \inst|inst85|dffs\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X21_Y24_N18
\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~4_combout\ = (\ADDR~combout\(0) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~2_combout\) # (\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR~combout\(0),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~2_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~3_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~4_combout\);

-- Location: LCCOMB_X24_Y24_N10
\inst|inst81|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst81|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst80|dffs\(5)))) # (!\inst|inst122~combout\ & (\inst|inst76|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst76|dffs\(5),
	datab => \inst|inst80|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst81|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X24_Y24_N18
\inst|inst130|LPM_MUX_component|auto_generated|result_node[39]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[39]~13_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(39) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(39),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[39]~13_combout\);

-- Location: LCFF_X24_Y24_N11
\inst|inst79|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst81|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[39]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst79|dffs\(5));

-- Location: LCCOMB_X24_Y24_N0
\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~5_combout\ = (\ADDR~combout\(2) & ((\ADDR~combout\(1) & (\inst|inst75|dffs\(5))) # (!\ADDR~combout\(1) & ((\inst|inst79|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \ADDR~combout\(2),
	datac => \inst|inst75|dffs\(5),
	datad => \inst|inst79|dffs\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X21_Y22_N18
\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~7_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~4_combout\) # ((!\ADDR~combout\(0) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~6_combout\) # 
-- (\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~6_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~4_combout\,
	datac => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~5_combout\,
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~7_combout\);

-- Location: LCCOMB_X26_Y25_N8
\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~0_combout\ = (!\ADDR~combout\(4) & !\ADDR~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(4),
	datac => \ADDR~combout\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X22_Y21_N10
\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~8_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~0_combout\ & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~1_combout\) # ((\ADDR~combout\(3) & 
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~1_combout\,
	datab => \ADDR~combout\(3),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~7_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~0_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~8_combout\);

-- Location: LCCOMB_X24_Y25_N8
\inst|inst4|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst4|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst5|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|dffs\(5),
	datab => \inst|inst|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst4|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X24_Y25_N2
\inst|inst130|LPM_MUX_component|auto_generated|result_node[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[1]~16_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(1) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(1),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[1]~16_combout\);

-- Location: LCFF_X24_Y25_N9
\inst|inst3|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst4|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst3|dffs\(5));

-- Location: LCCOMB_X24_Y23_N28
\inst|inst2|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst2|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst3|dffs\(5)))) # (!\inst|inst122~combout\ & (\DATA~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA~combout\(5),
	datab => \inst|inst122~combout\,
	datad => \inst|inst3|dffs\(5),
	combout => \inst|inst2|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X24_Y23_N6
\inst|inst130|LPM_MUX_component|auto_generated|result_node[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[0]~19_combout\ = (\inst|inst122~combout\) # ((\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(0) & \inst|inst126~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(0),
	datac => \inst|inst122~combout\,
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[0]~19_combout\);

-- Location: LCFF_X24_Y23_N29
\inst|inst|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst2|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|dffs\(5));

-- Location: LCCOMB_X26_Y23_N0
\inst|inst8|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst8|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst9|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst5|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|dffs\(5),
	datab => \inst|inst5|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst8|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X26_Y23_N20
\inst|inst130|LPM_MUX_component|auto_generated|result_node[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[3]~18_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(3) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(3),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[3]~18_combout\);

-- Location: LCFF_X26_Y23_N1
\inst|inst6|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst8|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst6|dffs\(5));

-- Location: LCCOMB_X25_Y25_N8
\inst|inst7|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst7|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst6|dffs\(5)))) # (!\inst|inst122~combout\ & (\inst|inst3|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst122~combout\,
	datab => \inst|inst3|dffs\(5),
	datad => \inst|inst6|dffs\(5),
	combout => \inst|inst7|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X25_Y25_N2
\inst|inst130|LPM_MUX_component|auto_generated|result_node[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[2]~17_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(2) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(2),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[2]~17_combout\);

-- Location: LCFF_X25_Y25_N9
\inst|inst5|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst7|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst5|dffs\(5));

-- Location: LCCOMB_X25_Y25_N24
\inst|inst1|LPM_MUX_component|auto_generated|_~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~17_combout\ = (\ADDR~combout\(1) & (\ADDR~combout\(0))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst5|dffs\(5))) # (!\ADDR~combout\(0) & ((\inst|inst6|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \ADDR~combout\(0),
	datac => \inst|inst5|dffs\(5),
	datad => \inst|inst6|dffs\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~17_combout\);

-- Location: LCCOMB_X24_Y25_N6
\inst|inst1|LPM_MUX_component|auto_generated|_~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~18_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~17_combout\ & (\inst|inst|dffs\(5))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~17_combout\ & 
-- ((\inst|inst3|dffs\(5)))))) # (!\ADDR~combout\(1) & (((\inst|inst1|LPM_MUX_component|auto_generated|_~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst|dffs\(5),
	datac => \inst|inst3|dffs\(5),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~17_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~18_combout\);

-- Location: LCCOMB_X22_Y25_N24
\inst|inst1|LPM_MUX_component|auto_generated|_~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~152_combout\ = ((!\ADDR~combout\(3) & (!\ADDR~combout\(2) & \inst|inst1|LPM_MUX_component|auto_generated|_~18_combout\))) # (!\ADDR~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(3),
	datab => \ADDR~combout\(2),
	datac => \ADDR~combout\(4),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~18_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~152_combout\);

-- Location: LCCOMB_X26_Y21_N4
\inst|inst1|LPM_MUX_component|auto_generated|_~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~16_combout\ = (!\ADDR~combout\(2) & !\ADDR~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR~combout\(2),
	datac => \ADDR~combout\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~16_combout\);

-- Location: LCCOMB_X22_Y20_N4
\inst|inst1|LPM_MUX_component|auto_generated|_~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~28_combout\ = (\ADDR~combout\(5) & ((\ADDR~combout\(4)) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~27_combout\ & \inst|inst1|LPM_MUX_component|auto_generated|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~27_combout\,
	datab => \ADDR~combout\(4),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~16_combout\,
	datad => \ADDR~combout\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~28_combout\);

-- Location: LCCOMB_X24_Y21_N22
\inst|inst24|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst24|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & ((\inst|inst25|dffs\(5)))) # (!\inst|inst122~combout\ & (\inst|inst21|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|dffs\(5),
	datab => \inst|inst25|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst24|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X24_Y21_N30
\inst|inst130|LPM_MUX_component|auto_generated|result_node[11]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[11]~49_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(11) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(11),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[11]~49_combout\);

-- Location: LCFF_X24_Y21_N23
\inst|inst23|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst24|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst23|dffs\(5));

-- Location: LCCOMB_X24_Y21_N4
\inst|inst27|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst27|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst26|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst23|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst26|dffs\(5),
	datab => \inst|inst23|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst27|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X24_Y21_N8
\inst|inst130|LPM_MUX_component|auto_generated|result_node[12]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[12]~39_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(12) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(12),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[12]~39_combout\);

-- Location: LCFF_X24_Y21_N5
\inst|inst25|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst27|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst25|dffs\(5));

-- Location: LCCOMB_X23_Y21_N4
\inst|inst28|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst28|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst29|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst25|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst29|dffs\(5),
	datab => \inst|inst25|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst28|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X23_Y21_N20
\inst|inst130|LPM_MUX_component|auto_generated|result_node[13]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[13]~36_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(13) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[13]~36_combout\);

-- Location: LCFF_X23_Y21_N5
\inst|inst26|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst28|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[13]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst26|dffs\(5));

-- Location: LCCOMB_X23_Y21_N10
\inst|inst31|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst31|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst30|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst26|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|dffs\(5),
	datab => \inst|inst26|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst31|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X23_Y21_N22
\inst|inst130|LPM_MUX_component|auto_generated|result_node[14]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[14]~37_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(14) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(14),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[14]~37_combout\);

-- Location: LCFF_X23_Y21_N11
\inst|inst29|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst31|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[14]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst29|dffs\(5));

-- Location: LCCOMB_X23_Y20_N8
\inst|inst32|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst32|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst33|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst29|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33|dffs\(5),
	datab => \inst|inst29|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst32|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X23_Y20_N24
\inst|inst130|LPM_MUX_component|auto_generated|result_node[15]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[15]~38_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(15) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(15),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[15]~38_combout\);

-- Location: LCFF_X23_Y20_N9
\inst|inst30|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst32|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[15]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst30|dffs\(5));

-- Location: LCCOMB_X22_Y21_N4
\inst|inst1|LPM_MUX_component|auto_generated|_~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~23_combout\ = (\ADDR~combout\(1) & (\ADDR~combout\(0))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst29|dffs\(5))) # (!\ADDR~combout\(0) & ((\inst|inst30|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \ADDR~combout\(0),
	datac => \inst|inst29|dffs\(5),
	datad => \inst|inst30|dffs\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~23_combout\);

-- Location: LCCOMB_X22_Y21_N30
\inst|inst1|LPM_MUX_component|auto_generated|_~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~24_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~23_combout\ & (((\inst|inst25|dffs\(5)) # (!\ADDR~combout\(1))))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~23_combout\ & 
-- (\inst|inst26|dffs\(5) & (\ADDR~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst26|dffs\(5),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~23_combout\,
	datac => \ADDR~combout\(1),
	datad => \inst|inst25|dffs\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~24_combout\);

-- Location: LCCOMB_X22_Y21_N16
\inst|inst1|LPM_MUX_component|auto_generated|_~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~25_combout\ = (!\ADDR~combout\(3) & (\inst|inst1|LPM_MUX_component|auto_generated|_~24_combout\ & (\ADDR~combout\(5) & \ADDR~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(3),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~24_combout\,
	datac => \ADDR~combout\(5),
	datad => \ADDR~combout\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~25_combout\);

-- Location: LCCOMB_X23_Y19_N22
\inst|inst1|LPM_MUX_component|auto_generated|_~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~32_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst21|dffs\(5))) # (!\ADDR~combout\(0) & ((\inst|inst23|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|dffs\(5),
	datab => \ADDR~combout\(1),
	datac => \ADDR~combout\(0),
	datad => \inst|inst23|dffs\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~32_combout\);

-- Location: LCCOMB_X26_Y23_N14
\inst|inst10|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst10|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst11|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst6|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11|dffs\(5),
	datab => \inst|inst6|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst10|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X26_Y23_N6
\inst|inst130|LPM_MUX_component|auto_generated|result_node[4]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[4]~46_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(4) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(4),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[4]~46_combout\);

-- Location: LCFF_X26_Y23_N15
\inst|inst9|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst10|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst9|dffs\(5));

-- Location: LCCOMB_X25_Y23_N14
\inst|inst12|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst12|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst13|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst9|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|dffs\(5),
	datab => \inst|inst9|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst12|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X25_Y23_N26
\inst|inst130|LPM_MUX_component|auto_generated|result_node[5]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[5]~47_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(5) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(5),
	datac => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[5]~47_combout\);

-- Location: LCFF_X25_Y23_N15
\inst|inst11|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst12|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[5]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst11|dffs\(5));

-- Location: LCCOMB_X25_Y23_N16
\inst|inst15|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst15|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst14|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst11|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14|dffs\(5),
	datab => \inst|inst11|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst15|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X25_Y23_N0
\inst|inst130|LPM_MUX_component|auto_generated|result_node[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[6]~44_combout\ = (\inst|inst126~combout\ & \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst126~combout\,
	datad => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(6),
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[6]~44_combout\);

-- Location: LCFF_X25_Y23_N17
\inst|inst13|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst15|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst13|dffs\(5));

-- Location: LCCOMB_X25_Y19_N4
\inst|inst16|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst16|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst17|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst13|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst122~combout\,
	datab => \inst|inst17|dffs\(5),
	datad => \inst|inst13|dffs\(5),
	combout => \inst|inst16|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X25_Y19_N24
\inst|inst130|LPM_MUX_component|auto_generated|result_node[7]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[7]~45_combout\ = (\inst|inst126~combout\ & \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst126~combout\,
	datad => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(7),
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[7]~45_combout\);

-- Location: LCFF_X25_Y19_N5
\inst|inst14|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst16|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[7]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst14|dffs\(5));

-- Location: LCCOMB_X25_Y19_N30
\inst|inst19|$00000|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst19|$00000|auto_generated|result_node[5]~0_combout\ = (\inst|inst122~combout\ & (\inst|inst18|dffs\(5))) # (!\inst|inst122~combout\ & ((\inst|inst14|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18|dffs\(5),
	datab => \inst|inst14|dffs\(5),
	datad => \inst|inst122~combout\,
	combout => \inst|inst19|$00000|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X25_Y19_N18
\inst|inst130|LPM_MUX_component|auto_generated|result_node[8]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[8]~50_combout\ = (\inst|inst126~combout\ & \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst126~combout\,
	datad => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(8),
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[8]~50_combout\);

-- Location: LCFF_X25_Y19_N31
\inst|inst17|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst19|$00000|auto_generated|result_node[5]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[8]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst17|dffs\(5));

-- Location: LCCOMB_X23_Y19_N4
\inst|inst1|LPM_MUX_component|auto_generated|_~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~33_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst17|dffs\(5)))) # (!\ADDR~combout\(0) & (\inst|inst18|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18|dffs\(5),
	datab => \ADDR~combout\(1),
	datac => \ADDR~combout\(0),
	datad => \inst|inst17|dffs\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~33_combout\);

-- Location: LCCOMB_X23_Y19_N18
\inst|inst1|LPM_MUX_component|auto_generated|_~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~34_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~31_combout\) # ((!\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~32_combout\) # 
-- (\inst|inst1|LPM_MUX_component|auto_generated|_~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~31_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~32_combout\,
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~33_combout\,
	datad => \ADDR~combout\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~34_combout\);

-- Location: LCCOMB_X22_Y20_N0
\inst|inst1|LPM_MUX_component|auto_generated|_~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~36_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~28_combout\) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~25_combout\) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~35_combout\ & 
-- \inst|inst1|LPM_MUX_component|auto_generated|_~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~35_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~28_combout\,
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~25_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~34_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~36_combout\);

-- Location: LCCOMB_X22_Y25_N16
\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~17_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~8_combout\) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~36_combout\ & 
-- ((\inst|inst1|LPM_MUX_component|auto_generated|_~152_combout\))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~36_combout\ & (\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~16_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~8_combout\,
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~152_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~36_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~17_combout\);

-- Location: LCCOMB_X24_Y22_N28
\inst|inst60|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst60|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst61|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst57|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst57|dffs\(4),
	datab => \inst|inst61|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst60|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X24_Y22_N29
\inst|inst59|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst60|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[29]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst59|dffs\(4));

-- Location: LCCOMB_X24_Y22_N14
\inst|inst63|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst63|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst62|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst59|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst62|dffs\(4),
	datab => \inst|inst59|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst63|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X24_Y22_N15
\inst|inst61|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst63|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[30]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst61|dffs\(4));

-- Location: LCCOMB_X23_Y22_N20
\inst|inst1|LPM_MUX_component|auto_generated|_~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~43_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst61|dffs\(4)))) # (!\ADDR~combout\(0) & (\inst|inst62|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst62|dffs\(4),
	datab => \ADDR~combout\(1),
	datac => \inst|inst61|dffs\(4),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~43_combout\);

-- Location: LCCOMB_X23_Y22_N26
\inst|inst1|LPM_MUX_component|auto_generated|_~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~44_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~43_combout\ & (\inst|inst57|dffs\(4))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~43_combout\ & 
-- ((\inst|inst59|dffs\(4)))))) # (!\ADDR~combout\(1) & (((\inst|inst1|LPM_MUX_component|auto_generated|_~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst57|dffs\(4),
	datab => \ADDR~combout\(1),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~43_combout\,
	datad => \inst|inst59|dffs\(4),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~44_combout\);

-- Location: LCCOMB_X23_Y22_N6
\inst|inst67|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst67|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst66|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst62|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst62|dffs\(4),
	datab => \inst|inst66|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst67|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X23_Y22_N7
\inst|inst65|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst67|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[32]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst65|dffs\(4));

-- Location: LCCOMB_X22_Y23_N4
\inst|inst68|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst68|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst69|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst65|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst69|dffs\(4),
	datab => \inst|inst65|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst68|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X22_Y23_N5
\inst|inst66|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst68|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[33]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst66|dffs\(4));

-- Location: LCCOMB_X22_Y23_N22
\inst|inst1|LPM_MUX_component|auto_generated|_~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~46_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~45_combout\ & (((\inst|inst65|dffs\(4)) # (!\ADDR~combout\(1))))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~45_combout\ & 
-- (\inst|inst66|dffs\(4) & (\ADDR~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~45_combout\,
	datab => \inst|inst66|dffs\(4),
	datac => \ADDR~combout\(1),
	datad => \inst|inst65|dffs\(4),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~46_combout\);

-- Location: LCCOMB_X21_Y25_N24
\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~26_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & (\inst|inst1|LPM_MUX_component|auto_generated|_~44_combout\)) # (!\ADDR~combout\(2) & 
-- ((\inst|inst1|LPM_MUX_component|auto_generated|_~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~44_combout\,
	datac => \ADDR~combout\(3),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~46_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~26_combout\);

-- Location: LCCOMB_X25_Y22_N4
\inst|inst58|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst58|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst59|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst54|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst54|dffs\(4),
	datab => \inst|inst59|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst58|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X25_Y22_N5
\inst|inst57|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst58|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[28]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst57|dffs\(4));

-- Location: LCCOMB_X25_Y22_N6
\inst|inst56|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst56|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst57|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst53|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst53|dffs\(4),
	datab => \inst|inst57|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst56|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X25_Y22_N7
\inst|inst54|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst56|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[27]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst54|dffs\(4));

-- Location: LCCOMB_X23_Y26_N18
\inst|inst55|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst55|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst54|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst49|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst49|dffs\(4),
	datab => \inst|inst54|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst55|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X23_Y26_N19
\inst|inst53|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst55|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst53|dffs\(4));

-- Location: LCCOMB_X24_Y26_N26
\inst|inst52|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst52|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst53|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst50|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst50|dffs\(4),
	datab => \inst|inst53|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst52|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X24_Y26_N27
\inst|inst49|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst52|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[25]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst49|dffs\(4));

-- Location: LCCOMB_X24_Y26_N24
\inst|inst51|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst51|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst49|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst47|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst47|dffs\(4),
	datab => \inst|inst49|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst51|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X24_Y26_N25
\inst|inst50|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst51|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[24]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst50|dffs\(4));

-- Location: LCCOMB_X23_Y26_N30
\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~31_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst50|dffs\(4)))) # (!\ADDR~combout\(0) & (\inst|inst49|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst49|dffs\(4),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst50|dffs\(4),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~31_combout\);

-- Location: LCCOMB_X23_Y26_N0
\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~30_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst53|dffs\(4))) # (!\ADDR~combout\(0) & ((\inst|inst54|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst53|dffs\(4),
	datac => \inst|inst54|dffs\(4),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~30_combout\);

-- Location: LCCOMB_X23_Y26_N8
\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~32_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~29_combout\) # ((!\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~31_combout\) # 
-- (\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~29_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~31_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~30_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~32_combout\);

-- Location: LCCOMB_X22_Y25_N26
\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~33_combout\ = (\ADDR~combout\(4) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~26_combout\) # ((\ADDR~combout\(3) & 
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(3),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~26_combout\,
	datac => \ADDR~combout\(4),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~32_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~33_combout\);

-- Location: LCCOMB_X26_Y23_N30
\inst|inst10|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst10|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst11|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst6|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11|dffs\(4),
	datab => \inst|inst122~combout\,
	datad => \inst|inst6|dffs\(4),
	combout => \inst|inst10|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X26_Y23_N31
\inst|inst9|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst10|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst9|dffs\(4));

-- Location: LCCOMB_X26_Y23_N12
\inst|inst8|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst8|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst9|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst5|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|dffs\(4),
	datab => \inst|inst9|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst8|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X26_Y23_N13
\inst|inst6|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst8|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst6|dffs\(4));

-- Location: LCCOMB_X25_Y25_N30
\inst|inst7|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst7|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst6|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst3|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|dffs\(4),
	datab => \inst|inst6|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst7|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X25_Y25_N31
\inst|inst5|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst7|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst5|dffs\(4));

-- Location: LCCOMB_X25_Y25_N10
\inst|inst1|LPM_MUX_component|auto_generated|_~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~41_combout\ = (\ADDR~combout\(1) & (\ADDR~combout\(0))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst5|dffs\(4)))) # (!\ADDR~combout\(0) & (\inst|inst6|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \ADDR~combout\(0),
	datac => \inst|inst6|dffs\(4),
	datad => \inst|inst5|dffs\(4),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~41_combout\);

-- Location: LCCOMB_X24_Y25_N0
\inst|inst2|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst2|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst3|dffs\(4)))) # (!\inst|inst122~combout\ & (\DATA~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA~combout\(4),
	datab => \inst|inst3|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst2|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X24_Y25_N1
\inst|inst|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst2|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|dffs\(4));

-- Location: LCCOMB_X24_Y25_N14
\inst|inst4|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst4|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst5|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|dffs\(4),
	datab => \inst|inst|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst4|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X24_Y25_N15
\inst|inst3|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst4|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst3|dffs\(4));

-- Location: LCCOMB_X24_Y25_N20
\inst|inst1|LPM_MUX_component|auto_generated|_~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~42_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~41_combout\ & ((\inst|inst|dffs\(4)))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~41_combout\ & 
-- (\inst|inst3|dffs\(4))))) # (!\ADDR~combout\(1) & (\inst|inst1|LPM_MUX_component|auto_generated|_~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~41_combout\,
	datac => \inst|inst3|dffs\(4),
	datad => \inst|inst|dffs\(4),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~42_combout\);

-- Location: LCCOMB_X21_Y25_N18
\inst|inst1|LPM_MUX_component|auto_generated|_~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~153_combout\ = ((!\ADDR~combout\(2) & (!\ADDR~combout\(3) & \inst|inst1|LPM_MUX_component|auto_generated|_~42_combout\))) # (!\ADDR~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \ADDR~combout\(4),
	datac => \ADDR~combout\(3),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~42_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~153_combout\);

-- Location: LCCOMB_X22_Y20_N18
\inst|inst1|LPM_MUX_component|auto_generated|_~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~52_combout\ = (\ADDR~combout\(5) & ((\ADDR~combout\(4)) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~51_combout\ & \inst|inst1|LPM_MUX_component|auto_generated|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~51_combout\,
	datab => \ADDR~combout\(4),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~16_combout\,
	datad => \ADDR~combout\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~52_combout\);

-- Location: LCCOMB_X23_Y20_N2
\inst|inst34|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst34|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst35|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst30|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst35|dffs\(4),
	datab => \inst|inst30|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst34|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X23_Y20_N10
\inst|inst130|LPM_MUX_component|auto_generated|result_node[16]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[16]~43_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(16) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(16),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[16]~43_combout\);

-- Location: LCFF_X23_Y20_N3
\inst|inst33|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst34|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[16]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst33|dffs\(4));

-- Location: LCCOMB_X23_Y20_N0
\inst|inst32|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst32|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst33|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst29|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst29|dffs\(4),
	datab => \inst|inst33|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst32|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X23_Y20_N1
\inst|inst30|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst32|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[15]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst30|dffs\(4));

-- Location: LCCOMB_X23_Y21_N14
\inst|inst31|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst31|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst30|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst26|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst26|dffs\(4),
	datab => \inst|inst30|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst31|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X23_Y21_N15
\inst|inst29|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst31|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[14]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst29|dffs\(4));

-- Location: LCCOMB_X23_Y21_N8
\inst|inst1|LPM_MUX_component|auto_generated|_~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~47_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1)) # ((\inst|inst29|dffs\(4))))) # (!\ADDR~combout\(0) & (!\ADDR~combout\(1) & ((\inst|inst30|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \ADDR~combout\(1),
	datac => \inst|inst29|dffs\(4),
	datad => \inst|inst30|dffs\(4),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~47_combout\);

-- Location: LCCOMB_X23_Y21_N24
\inst|inst28|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst28|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst29|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst25|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|dffs\(4),
	datab => \inst|inst29|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst28|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X23_Y21_N25
\inst|inst26|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst28|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[13]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst26|dffs\(4));

-- Location: LCCOMB_X24_Y21_N16
\inst|inst27|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst27|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst26|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst23|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst23|dffs\(4),
	datab => \inst|inst26|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst27|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X24_Y21_N17
\inst|inst25|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst27|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst25|dffs\(4));

-- Location: LCCOMB_X22_Y21_N22
\inst|inst1|LPM_MUX_component|auto_generated|_~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~48_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~47_combout\ & (((\inst|inst25|dffs\(4)) # (!\ADDR~combout\(1))))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~47_combout\ & 
-- (\inst|inst26|dffs\(4) & (\ADDR~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst26|dffs\(4),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~47_combout\,
	datac => \ADDR~combout\(1),
	datad => \inst|inst25|dffs\(4),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~48_combout\);

-- Location: LCCOMB_X22_Y21_N28
\inst|inst1|LPM_MUX_component|auto_generated|_~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~49_combout\ = (!\ADDR~combout\(3) & (\inst|inst1|LPM_MUX_component|auto_generated|_~48_combout\ & (\ADDR~combout\(5) & \ADDR~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(3),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~48_combout\,
	datac => \ADDR~combout\(5),
	datad => \ADDR~combout\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~49_combout\);

-- Location: LCCOMB_X24_Y19_N8
\inst|inst22|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst22|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst23|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst18|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18|dffs\(4),
	datab => \inst|inst122~combout\,
	datad => \inst|inst23|dffs\(4),
	combout => \inst|inst22|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X24_Y19_N16
\inst|inst130|LPM_MUX_component|auto_generated|result_node[10]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[10]~48_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(10) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(10),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[10]~48_combout\);

-- Location: LCFF_X24_Y19_N9
\inst|inst21|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst22|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[10]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst21|dffs\(4));

-- Location: LCCOMB_X24_Y21_N10
\inst|inst24|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst24|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst25|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst21|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|dffs\(4),
	datab => \inst|inst122~combout\,
	datad => \inst|inst21|dffs\(4),
	combout => \inst|inst24|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X24_Y21_N11
\inst|inst23|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst24|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst23|dffs\(4));

-- Location: LCCOMB_X24_Y19_N2
\inst|inst1|LPM_MUX_component|auto_generated|_~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~57_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\inst|inst18|dffs\(4))) # (!\ADDR~combout\(1) & ((\inst|inst23|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18|dffs\(4),
	datab => \inst|inst23|dffs\(4),
	datac => \ADDR~combout\(1),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~57_combout\);

-- Location: LCCOMB_X23_Y19_N20
\inst|inst1|LPM_MUX_component|auto_generated|_~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~53_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1) & ((\inst|inst9|dffs\(4)))) # (!\ADDR~combout\(1) & (\inst|inst13|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|dffs\(4),
	datab => \inst|inst9|dffs\(4),
	datac => \ADDR~combout\(0),
	datad => \ADDR~combout\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~53_combout\);

-- Location: LCCOMB_X25_Y23_N30
\inst|inst12|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst12|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst13|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst9|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|dffs\(4),
	datab => \inst|inst122~combout\,
	datad => \inst|inst9|dffs\(4),
	combout => \inst|inst12|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X25_Y23_N31
\inst|inst11|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst12|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[5]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst11|dffs\(4));

-- Location: LCCOMB_X23_Y19_N10
\inst|inst1|LPM_MUX_component|auto_generated|_~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~54_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & ((\inst|inst11|dffs\(4)))) # (!\ADDR~combout\(1) & (\inst|inst14|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14|dffs\(4),
	datab => \ADDR~combout\(1),
	datac => \ADDR~combout\(0),
	datad => \inst|inst11|dffs\(4),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~54_combout\);

-- Location: LCCOMB_X23_Y19_N24
\inst|inst1|LPM_MUX_component|auto_generated|_~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~55_combout\ = (\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~53_combout\) # (\inst|inst1|LPM_MUX_component|auto_generated|_~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR~combout\(2),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~53_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~54_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~55_combout\);

-- Location: LCCOMB_X23_Y19_N2
\inst|inst1|LPM_MUX_component|auto_generated|_~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~58_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~55_combout\) # ((!\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~56_combout\) # 
-- (\inst|inst1|LPM_MUX_component|auto_generated|_~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~56_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~57_combout\,
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~55_combout\,
	datad => \ADDR~combout\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~58_combout\);

-- Location: LCCOMB_X22_Y20_N12
\inst|inst1|LPM_MUX_component|auto_generated|_~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~59_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~52_combout\) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~49_combout\) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~35_combout\ & 
-- \inst|inst1|LPM_MUX_component|auto_generated|_~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~35_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~52_combout\,
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~49_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~58_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~59_combout\);

-- Location: LCCOMB_X25_Y24_N4
\inst|inst82|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst82|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst83|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst79|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst79|dffs\(4),
	datab => \inst|inst83|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst82|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X25_Y24_N5
\inst|inst80|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst82|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[40]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst80|dffs\(4));

-- Location: LCCOMB_X25_Y24_N14
\inst|inst84|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst84|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & (\inst|inst85|dffs\(4))) # (!\inst|inst122~combout\ & ((\inst|inst80|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst85|dffs\(4),
	datab => \inst|inst80|dffs\(4),
	datad => \inst|inst122~combout\,
	combout => \inst|inst84|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X25_Y24_N15
\inst|inst83|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst84|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[41]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst83|dffs\(4));

-- Location: LCCOMB_X21_Y24_N4
\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~23_combout\ = (!\ADDR~combout\(2) & ((\ADDR~combout\(0) & ((\inst|inst80|dffs\(4)))) # (!\ADDR~combout\(0) & (\inst|inst83|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \ADDR~combout\(0),
	datac => \inst|inst83|dffs\(4),
	datad => \inst|inst80|dffs\(4),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~23_combout\);

-- Location: LCCOMB_X24_Y24_N4
\inst|inst81|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst81|$00000|auto_generated|result_node[4]~1_combout\ = (\inst|inst122~combout\ & ((\inst|inst80|dffs\(4)))) # (!\inst|inst122~combout\ & (\inst|inst76|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst76|dffs\(4),
	datab => \inst|inst122~combout\,
	datad => \inst|inst80|dffs\(4),
	combout => \inst|inst81|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCFF_X24_Y24_N5
\inst|inst79|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst81|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[39]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst79|dffs\(4));

-- Location: LCCOMB_X24_Y24_N6
\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~19_combout\ = (\ADDR~combout\(2) & ((\ADDR~combout\(0) & (\inst|inst76|dffs\(4))) # (!\ADDR~combout\(0) & ((\inst|inst79|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst76|dffs\(4),
	datab => \ADDR~combout\(2),
	datac => \inst|inst79|dffs\(4),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~19_combout\);

-- Location: LCCOMB_X21_Y24_N2
\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~21_combout\ = (!\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~20_combout\) # (\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~20_combout\,
	datac => \ADDR~combout\(1),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~19_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~21_combout\);

-- Location: LCCOMB_X21_Y24_N14
\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~24_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~21_combout\) # ((\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~22_combout\) # 
-- (\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~22_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~23_combout\,
	datac => \ADDR~combout\(1),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~21_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~24_combout\);

-- Location: LCCOMB_X21_Y24_N0
\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~25_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~0_combout\ & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~18_combout\) # ((\ADDR~combout\(3) & 
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~18_combout\,
	datab => \ADDR~combout\(3),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~24_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~0_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~25_combout\);

-- Location: LCCOMB_X21_Y25_N22
\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~34_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~25_combout\) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~59_combout\ & 
-- ((\inst|inst1|LPM_MUX_component|auto_generated|_~153_combout\))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~59_combout\ & (\inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~33_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~153_combout\,
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~59_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~25_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~34_combout\);

-- Location: LCCOMB_X25_Y25_N12
\inst|inst7|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst7|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst6|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst3|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|dffs\(3),
	datab => \inst|inst3|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst7|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X25_Y25_N13
\inst|inst5|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst7|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst5|dffs\(3));

-- Location: LCCOMB_X24_Y25_N26
\inst|inst4|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst4|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst5|dffs\(3)))) # (!\inst|inst122~combout\ & (\inst|inst|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|dffs\(3),
	datab => \inst|inst5|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst4|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X24_Y25_N27
\inst|inst3|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst4|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst3|dffs\(3));

-- Location: LCCOMB_X26_Y23_N2
\inst|inst10|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst10|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst11|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst6|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11|dffs\(3),
	datab => \inst|inst6|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst10|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X26_Y23_N3
\inst|inst9|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst10|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst9|dffs\(3));

-- Location: LCCOMB_X26_Y23_N28
\inst|inst8|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst8|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst9|dffs\(3)))) # (!\inst|inst122~combout\ & (\inst|inst5|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|dffs\(3),
	datab => \inst|inst9|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst8|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X26_Y23_N29
\inst|inst6|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst8|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst6|dffs\(3));

-- Location: LCCOMB_X25_Y25_N0
\inst|inst1|LPM_MUX_component|auto_generated|_~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~64_combout\ = (\ADDR~combout\(0) & ((\inst|inst5|dffs\(3)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((!\ADDR~combout\(1) & \inst|inst6|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|dffs\(3),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst6|dffs\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~64_combout\);

-- Location: LCCOMB_X25_Y25_N18
\inst|inst1|LPM_MUX_component|auto_generated|_~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~65_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~64_combout\ & (\inst|inst|dffs\(3))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~64_combout\ & 
-- ((\inst|inst3|dffs\(3)))))) # (!\ADDR~combout\(1) & (((\inst|inst1|LPM_MUX_component|auto_generated|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|dffs\(3),
	datab => \inst|inst3|dffs\(3),
	datac => \ADDR~combout\(1),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~64_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~65_combout\);

-- Location: LCCOMB_X26_Y25_N20
\inst|inst1|LPM_MUX_component|auto_generated|_~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~154_combout\ = ((!\ADDR~combout\(3) & (!\ADDR~combout\(2) & \inst|inst1|LPM_MUX_component|auto_generated|_~65_combout\))) # (!\ADDR~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(3),
	datab => \ADDR~combout\(2),
	datac => \ADDR~combout\(4),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~65_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~154_combout\);

-- Location: LCCOMB_X25_Y26_N14
\inst|inst44|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst44|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst45|dffs\(3)))) # (!\inst|inst122~combout\ & (\inst|inst41|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41|dffs\(3),
	datab => \inst|inst45|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst44|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X25_Y26_N8
\inst|inst130|LPM_MUX_component|auto_generated|result_node[21]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[21]~30_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(21) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(21),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[21]~30_combout\);

-- Location: LCFF_X25_Y26_N15
\inst|inst42|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst44|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[21]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst42|dffs\(3));

-- Location: LCCOMB_X25_Y21_N28
\inst|inst46|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst46|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst47|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst42|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst47|dffs\(3),
	datab => \inst|inst42|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst46|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X25_Y21_N18
\inst|inst130|LPM_MUX_component|auto_generated|result_node[22]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[22]~29_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(22) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(22),
	datac => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[22]~29_combout\);

-- Location: LCFF_X25_Y21_N29
\inst|inst45|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst46|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[22]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst45|dffs\(3));

-- Location: LCCOMB_X25_Y21_N26
\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~44_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst45|dffs\(3)))) # (!\ADDR~combout\(0) & (\inst|inst47|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst47|dffs\(3),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst45|dffs\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~44_combout\);

-- Location: LCCOMB_X23_Y26_N14
\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~46_combout\ = (\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~45_combout\) # (\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~45_combout\,
	datab => \ADDR~combout\(2),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~44_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~46_combout\);

-- Location: LCCOMB_X23_Y26_N28
\inst|inst55|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst55|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst54|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst49|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst54|dffs\(3),
	datab => \inst|inst49|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst55|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X23_Y26_N29
\inst|inst53|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst55|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst53|dffs\(3));

-- Location: LCCOMB_X24_Y26_N18
\inst|inst52|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst52|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst53|dffs\(3)))) # (!\inst|inst122~combout\ & (\inst|inst50|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst50|dffs\(3),
	datab => \inst|inst53|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst52|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X24_Y26_N19
\inst|inst49|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst52|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[25]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst49|dffs\(3));

-- Location: LCCOMB_X23_Y26_N2
\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~48_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst50|dffs\(3))) # (!\ADDR~combout\(0) & ((\inst|inst49|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst50|dffs\(3),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst49|dffs\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~48_combout\);

-- Location: LCCOMB_X23_Y26_N4
\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~49_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~46_combout\) # ((!\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~47_combout\) # 
-- (\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~47_combout\,
	datab => \ADDR~combout\(2),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~46_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~48_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~49_combout\);

-- Location: LCCOMB_X23_Y22_N28
\inst|inst64|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst64|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst65|dffs\(3)))) # (!\inst|inst122~combout\ & (\inst|inst61|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst61|dffs\(3),
	datab => \inst|inst65|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst64|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X23_Y22_N29
\inst|inst62|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst64|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[31]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst62|dffs\(3));

-- Location: LCCOMB_X23_Y22_N2
\inst|inst67|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst67|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst66|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst62|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst66|dffs\(3),
	datab => \inst|inst62|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst67|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X23_Y22_N3
\inst|inst65|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst67|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[32]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst65|dffs\(3));

-- Location: LCCOMB_X22_Y23_N12
\inst|inst68|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst68|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst69|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst65|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst69|dffs\(3),
	datab => \inst|inst65|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst68|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X22_Y23_N13
\inst|inst66|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst68|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[33]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst66|dffs\(3));

-- Location: LCCOMB_X22_Y24_N12
\inst|inst72|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst72|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst73|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst69|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst73|dffs\(3),
	datab => \inst|inst69|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst72|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X22_Y24_N13
\inst|inst71|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst72|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[35]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst71|dffs\(3));

-- Location: LCCOMB_X22_Y23_N6
\inst|inst70|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst70|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst71|dffs\(3)))) # (!\inst|inst122~combout\ & (\inst|inst66|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst66|dffs\(3),
	datab => \inst|inst71|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst70|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X22_Y23_N7
\inst|inst69|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst70|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[34]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst69|dffs\(3));

-- Location: LCCOMB_X22_Y24_N2
\inst|inst1|LPM_MUX_component|auto_generated|_~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~68_combout\ = (\ADDR~combout\(0) & ((\inst|inst69|dffs\(3)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((!\ADDR~combout\(1) & \inst|inst71|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst|inst69|dffs\(3),
	datac => \ADDR~combout\(1),
	datad => \inst|inst71|dffs\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~68_combout\);

-- Location: LCCOMB_X22_Y24_N28
\inst|inst1|LPM_MUX_component|auto_generated|_~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~69_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~68_combout\ & (\inst|inst65|dffs\(3))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~68_combout\ & 
-- ((\inst|inst66|dffs\(3)))))) # (!\ADDR~combout\(1) & (((\inst|inst1|LPM_MUX_component|auto_generated|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst65|dffs\(3),
	datab => \inst|inst66|dffs\(3),
	datac => \ADDR~combout\(1),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~68_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~69_combout\);

-- Location: LCCOMB_X26_Y25_N12
\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~43_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & (\inst|inst1|LPM_MUX_component|auto_generated|_~67_combout\)) # (!\ADDR~combout\(2) & 
-- ((\inst|inst1|LPM_MUX_component|auto_generated|_~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~67_combout\,
	datab => \ADDR~combout\(2),
	datac => \ADDR~combout\(3),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~69_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~43_combout\);

-- Location: LCCOMB_X26_Y25_N22
\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~50_combout\ = (\ADDR~combout\(4) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~43_combout\) # ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~49_combout\ & 
-- \ADDR~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(4),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~49_combout\,
	datac => \ADDR~combout\(3),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~43_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~50_combout\);

-- Location: LCCOMB_X25_Y23_N22
\inst|inst12|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst12|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst13|dffs\(3)))) # (!\inst|inst122~combout\ & (\inst|inst9|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|dffs\(3),
	datab => \inst|inst122~combout\,
	datad => \inst|inst13|dffs\(3),
	combout => \inst|inst12|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X25_Y23_N23
\inst|inst11|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst12|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[5]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst11|dffs\(3));

-- Location: LCCOMB_X25_Y23_N28
\inst|inst15|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst15|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst14|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst11|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14|dffs\(3),
	datab => \inst|inst122~combout\,
	datad => \inst|inst11|dffs\(3),
	combout => \inst|inst15|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X25_Y23_N29
\inst|inst13|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst15|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst13|dffs\(3));

-- Location: LCCOMB_X25_Y21_N16
\inst|inst1|LPM_MUX_component|auto_generated|_~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~76_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst13|dffs\(3)))) # (!\ADDR~combout\(0) & (\inst|inst14|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14|dffs\(3),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst13|dffs\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~76_combout\);

-- Location: LCCOMB_X26_Y23_N8
\inst|inst1|LPM_MUX_component|auto_generated|_~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~77_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst9|dffs\(3)))) # (!\ADDR~combout\(0) & (\inst|inst11|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \ADDR~combout\(0),
	datac => \inst|inst11|dffs\(3),
	datad => \inst|inst9|dffs\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~77_combout\);

-- Location: LCCOMB_X26_Y21_N16
\inst|inst1|LPM_MUX_component|auto_generated|_~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~78_combout\ = (\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~76_combout\) # (\inst|inst1|LPM_MUX_component|auto_generated|_~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~76_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~77_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~78_combout\);

-- Location: LCCOMB_X24_Y19_N26
\inst|inst20|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst20|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst21|dffs\(3)))) # (!\inst|inst122~combout\ & (\inst|inst17|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst17|dffs\(3),
	datab => \inst|inst122~combout\,
	datad => \inst|inst21|dffs\(3),
	combout => \inst|inst20|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X24_Y19_N18
\inst|inst130|LPM_MUX_component|auto_generated|result_node[9]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[9]~51_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(9) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(9),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[9]~51_combout\);

-- Location: LCFF_X24_Y19_N27
\inst|inst18|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst20|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[9]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst18|dffs\(3));

-- Location: LCCOMB_X24_Y19_N0
\inst|inst22|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst22|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst23|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst18|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst23|dffs\(3),
	datab => \inst|inst122~combout\,
	datad => \inst|inst18|dffs\(3),
	combout => \inst|inst22|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X24_Y19_N1
\inst|inst21|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst22|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[10]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst21|dffs\(3));

-- Location: LCCOMB_X24_Y21_N6
\inst|inst24|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst24|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst25|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst21|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|dffs\(3),
	datab => \inst|inst122~combout\,
	datad => \inst|inst21|dffs\(3),
	combout => \inst|inst24|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X24_Y21_N7
\inst|inst23|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst24|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst23|dffs\(3));

-- Location: LCCOMB_X24_Y21_N18
\inst|inst1|LPM_MUX_component|auto_generated|_~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~79_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst21|dffs\(3))) # (!\ADDR~combout\(0) & ((\inst|inst23|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|dffs\(3),
	datab => \ADDR~combout\(1),
	datac => \ADDR~combout\(0),
	datad => \inst|inst23|dffs\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~79_combout\);

-- Location: LCCOMB_X26_Y21_N14
\inst|inst1|LPM_MUX_component|auto_generated|_~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~81_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~78_combout\) # ((!\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~80_combout\) # 
-- (\inst|inst1|LPM_MUX_component|auto_generated|_~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~80_combout\,
	datab => \ADDR~combout\(2),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~78_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~79_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~81_combout\);

-- Location: LCCOMB_X22_Y20_N10
\inst|inst1|LPM_MUX_component|auto_generated|_~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~35_combout\ = (\ADDR~combout\(5) & \ADDR~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(5),
	datad => \ADDR~combout\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~35_combout\);

-- Location: LCCOMB_X25_Y20_N28
\inst|inst39|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst39|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst38|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst35|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst38|dffs\(3),
	datab => \inst|inst122~combout\,
	datad => \inst|inst35|dffs\(3),
	combout => \inst|inst39|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X25_Y20_N2
\inst|inst130|LPM_MUX_component|auto_generated|result_node[18]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[18]~41_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(18) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(18),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[18]~41_combout\);

-- Location: LCFF_X25_Y20_N29
\inst|inst37|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst39|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst37|dffs\(3));

-- Location: LCCOMB_X24_Y20_N8
\inst|inst36|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst36|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst37|dffs\(3)))) # (!\inst|inst122~combout\ & (\inst|inst33|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33|dffs\(3),
	datab => \inst|inst37|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst36|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X24_Y20_N20
\inst|inst130|LPM_MUX_component|auto_generated|result_node[17]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[17]~40_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(17) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(17),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[17]~40_combout\);

-- Location: LCFF_X24_Y20_N9
\inst|inst35|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst36|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst35|dffs\(3));

-- Location: LCCOMB_X23_Y20_N14
\inst|inst34|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst34|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst35|dffs\(3)))) # (!\inst|inst122~combout\ & (\inst|inst30|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|dffs\(3),
	datab => \inst|inst35|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst34|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCFF_X23_Y20_N15
\inst|inst33|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst34|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[16]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst33|dffs\(3));

-- Location: LCCOMB_X24_Y20_N26
\inst|inst40|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst40|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst41|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst37|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41|dffs\(3),
	datab => \inst|inst37|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst40|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X24_Y20_N6
\inst|inst130|LPM_MUX_component|auto_generated|result_node[19]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[19]~42_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(19) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(19),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[19]~42_combout\);

-- Location: LCFF_X24_Y20_N27
\inst|inst38|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst40|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst38|dffs\(3));

-- Location: LCCOMB_X25_Y20_N8
\inst|inst1|LPM_MUX_component|auto_generated|_~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~73_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst37|dffs\(3))) # (!\ADDR~combout\(0) & ((\inst|inst38|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst37|dffs\(3),
	datac => \inst|inst38|dffs\(3),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~73_combout\);

-- Location: LCCOMB_X25_Y20_N22
\inst|inst1|LPM_MUX_component|auto_generated|_~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~74_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~73_combout\ & (\inst|inst33|dffs\(3))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~73_combout\ & 
-- ((\inst|inst35|dffs\(3)))))) # (!\ADDR~combout\(1) & (((\inst|inst1|LPM_MUX_component|auto_generated|_~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst33|dffs\(3),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~73_combout\,
	datad => \inst|inst35|dffs\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~74_combout\);

-- Location: LCCOMB_X26_Y21_N30
\inst|inst1|LPM_MUX_component|auto_generated|_~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~75_combout\ = (\ADDR~combout\(5) & ((\ADDR~combout\(4)) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~16_combout\ & \inst|inst1|LPM_MUX_component|auto_generated|_~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(4),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~16_combout\,
	datac => \ADDR~combout\(5),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~74_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~75_combout\);

-- Location: LCCOMB_X26_Y21_N28
\inst|inst1|LPM_MUX_component|auto_generated|_~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~82_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~72_combout\) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~75_combout\) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~81_combout\ & 
-- \inst|inst1|LPM_MUX_component|auto_generated|_~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~72_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~81_combout\,
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~35_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~75_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~82_combout\);

-- Location: LCCOMB_X21_Y22_N24
\inst|inst88|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst88|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst89|dffs\(3)))) # (!\inst|inst122~combout\ & (\inst|inst85|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst85|dffs\(3),
	datab => \inst|inst89|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst88|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X21_Y22_N16
\inst|inst130|LPM_MUX_component|auto_generated|result_node[43]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[43]~15_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(43) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(43),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[43]~15_combout\);

-- Location: LCFF_X21_Y22_N25
\inst|inst87|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst88|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[43]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst87|dffs\(3));

-- Location: LCCOMB_X23_Y25_N24
\inst|inst91|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst91|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst90|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst87|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst90|dffs\(3),
	datab => \inst|inst87|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst91|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X23_Y25_N12
\inst|inst130|LPM_MUX_component|auto_generated|result_node[44]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[44]~3_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(44) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(44),
	datac => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[44]~3_combout\);

-- Location: LCFF_X23_Y25_N25
\inst|inst89|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst91|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[44]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst89|dffs\(3));

-- Location: LCCOMB_X19_Y23_N0
\inst|inst92|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst92|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst93|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst89|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst93|dffs\(3),
	datab => \inst|inst89|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst92|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X24_Y23_N0
\inst|inst130|LPM_MUX_component|auto_generated|result_node[45]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[45]~0_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(45) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(45),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[45]~0_combout\);

-- Location: LCFF_X19_Y23_N1
\inst|inst90|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst92|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst90|dffs\(3));

-- Location: LCCOMB_X19_Y23_N10
\inst|inst95|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst95|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst94|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst90|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst94|dffs\(3),
	datab => \inst|inst90|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst95|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X23_Y23_N6
\inst|inst130|LPM_MUX_component|auto_generated|result_node[46]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[46]~1_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(46) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(46),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[46]~1_combout\);

-- Location: LCFF_X19_Y23_N11
\inst|inst93|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst95|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[46]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst93|dffs\(3));

-- Location: LCCOMB_X21_Y23_N26
\inst|inst96|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst96|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst97|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst93|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst97|dffs\(3),
	datab => \inst|inst93|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst96|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X21_Y23_N22
\inst|inst130|LPM_MUX_component|auto_generated|result_node[47]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[47]~2_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(47) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(47),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[47]~2_combout\);

-- Location: LCFF_X21_Y23_N27
\inst|inst94|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst96|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst94|dffs\(3));

-- Location: LCCOMB_X19_Y23_N8
\inst|inst1|LPM_MUX_component|auto_generated|_~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~60_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst93|dffs\(3)))) # (!\ADDR~combout\(0) & (\inst|inst94|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst94|dffs\(3),
	datac => \ADDR~combout\(0),
	datad => \inst|inst93|dffs\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~60_combout\);

-- Location: LCCOMB_X19_Y23_N22
\inst|inst1|LPM_MUX_component|auto_generated|_~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~61_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~60_combout\ & ((\inst|inst89|dffs\(3)))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~60_combout\ & 
-- (\inst|inst90|dffs\(3))))) # (!\ADDR~combout\(1) & (((\inst|inst1|LPM_MUX_component|auto_generated|_~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst90|dffs\(3),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~60_combout\,
	datad => \inst|inst89|dffs\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~61_combout\);

-- Location: LCCOMB_X23_Y23_N4
\inst|inst102|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst102|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & (\inst|inst103|dffs\(3))) # (!\inst|inst122~combout\ & ((\inst|inst99|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst103|dffs\(3),
	datab => \inst|inst99|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst102|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X23_Y23_N28
\inst|inst130|LPM_MUX_component|auto_generated|result_node[50]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[50]~5_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(50) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(50),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[50]~5_combout\);

-- Location: LCFF_X23_Y23_N5
\inst|inst101|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst102|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[50]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst101|dffs\(3));

-- Location: LCCOMB_X20_Y23_N28
\inst|inst100|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst100|$00000|auto_generated|result_node[3]~2_combout\ = (\inst|inst122~combout\ & ((\inst|inst101|dffs\(3)))) # (!\inst|inst122~combout\ & (\inst|inst97|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst97|dffs\(3),
	datab => \inst|inst101|dffs\(3),
	datad => \inst|inst122~combout\,
	combout => \inst|inst100|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X20_Y23_N24
\inst|inst130|LPM_MUX_component|auto_generated|result_node[49]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[49]~4_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(49) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(49),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[49]~4_combout\);

-- Location: LCFF_X20_Y23_N29
\inst|inst99|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst100|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[49]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst99|dffs\(3));

-- Location: LCCOMB_X21_Y25_N0
\inst|inst1|LPM_MUX_component|auto_generated|_~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~62_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst101|dffs\(3)))) # (!\ADDR~combout\(0) & (\inst|inst103|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst103|dffs\(3),
	datab => \ADDR~combout\(1),
	datac => \ADDR~combout\(0),
	datad => \inst|inst101|dffs\(3),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~62_combout\);

-- Location: LCCOMB_X21_Y25_N14
\inst|inst1|LPM_MUX_component|auto_generated|_~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~63_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~62_combout\ & (\inst|inst97|dffs\(3))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~62_combout\ & 
-- ((\inst|inst99|dffs\(3)))))) # (!\ADDR~combout\(1) & (((\inst|inst1|LPM_MUX_component|auto_generated|_~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst97|dffs\(3),
	datab => \ADDR~combout\(1),
	datac => \inst|inst99|dffs\(3),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~62_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~63_combout\);

-- Location: LCCOMB_X21_Y25_N8
\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~35_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & (\inst|inst1|LPM_MUX_component|auto_generated|_~61_combout\)) # (!\ADDR~combout\(2) & 
-- ((\inst|inst1|LPM_MUX_component|auto_generated|_~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(3),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~61_combout\,
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~63_combout\,
	datad => \ADDR~combout\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~35_combout\);

-- Location: LCCOMB_X26_Y25_N10
\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~42_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~0_combout\ & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~35_combout\) # 
-- ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~41_combout\ & \ADDR~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~41_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~35_combout\,
	datac => \ADDR~combout\(3),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~0_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~42_combout\);

-- Location: LCCOMB_X26_Y25_N2
\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~51_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~42_combout\) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~82_combout\ & 
-- (\inst|inst1|LPM_MUX_component|auto_generated|_~154_combout\)) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~82_combout\ & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~154_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~50_combout\,
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~82_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~42_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~51_combout\);

-- Location: LCCOMB_X24_Y20_N0
\inst|inst36|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst36|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst37|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst33|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst37|dffs\(2),
	datab => \inst|inst33|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst36|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X24_Y20_N1
\inst|inst35|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst36|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst35|dffs\(2));

-- Location: LCCOMB_X23_Y20_N18
\inst|inst34|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst34|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst35|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst30|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|dffs\(2),
	datab => \inst|inst35|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst34|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X23_Y20_N19
\inst|inst33|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst34|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[16]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst33|dffs\(2));

-- Location: LCCOMB_X25_Y21_N2
\inst|inst46|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst46|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst47|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst42|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst47|dffs\(2),
	datab => \inst|inst42|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst46|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X25_Y21_N3
\inst|inst45|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst46|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[22]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst45|dffs\(2));

-- Location: LCCOMB_X25_Y26_N18
\inst|inst44|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst44|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst45|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst41|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41|dffs\(2),
	datab => \inst|inst45|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst44|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X25_Y26_N19
\inst|inst42|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst44|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[21]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst42|dffs\(2));

-- Location: LCCOMB_X27_Y23_N18
\inst|inst43|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst43|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst42|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst38|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst38|dffs\(2),
	datab => \inst|inst42|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst43|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X27_Y23_N2
\inst|inst130|LPM_MUX_component|auto_generated|result_node[20]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[20]~28_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(20) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(20),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[20]~28_combout\);

-- Location: LCFF_X27_Y23_N19
\inst|inst41|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst43|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst41|dffs\(2));

-- Location: LCCOMB_X24_Y20_N18
\inst|inst40|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst40|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst41|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst37|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst37|dffs\(2),
	datab => \inst|inst41|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst40|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X24_Y20_N19
\inst|inst38|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst40|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst38|dffs\(2));

-- Location: LCCOMB_X25_Y20_N26
\inst|inst39|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst39|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst38|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst35|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst35|dffs\(2),
	datab => \inst|inst122~combout\,
	datad => \inst|inst38|dffs\(2),
	combout => \inst|inst39|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X25_Y20_N27
\inst|inst37|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst39|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst37|dffs\(2));

-- Location: LCCOMB_X25_Y20_N12
\inst|inst1|LPM_MUX_component|auto_generated|_~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~96_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst37|dffs\(2))) # (!\ADDR~combout\(0) & ((\inst|inst38|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst37|dffs\(2),
	datac => \ADDR~combout\(0),
	datad => \inst|inst38|dffs\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~96_combout\);

-- Location: LCCOMB_X25_Y20_N10
\inst|inst1|LPM_MUX_component|auto_generated|_~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~97_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~96_combout\ & ((\inst|inst33|dffs\(2)))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~96_combout\ & 
-- (\inst|inst35|dffs\(2))))) # (!\ADDR~combout\(1) & (((\inst|inst1|LPM_MUX_component|auto_generated|_~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst35|dffs\(2),
	datab => \inst|inst33|dffs\(2),
	datac => \ADDR~combout\(1),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~96_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~97_combout\);

-- Location: LCCOMB_X26_Y21_N18
\inst|inst1|LPM_MUX_component|auto_generated|_~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~98_combout\ = (\ADDR~combout\(5) & ((\ADDR~combout\(4)) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~16_combout\ & \inst|inst1|LPM_MUX_component|auto_generated|_~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(4),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~16_combout\,
	datac => \ADDR~combout\(5),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~97_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~98_combout\);

-- Location: LCCOMB_X23_Y20_N16
\inst|inst32|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst32|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst33|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst29|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst29|dffs\(2),
	datab => \inst|inst33|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst32|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X23_Y20_N17
\inst|inst30|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst32|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[15]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst30|dffs\(2));

-- Location: LCCOMB_X23_Y21_N30
\inst|inst1|LPM_MUX_component|auto_generated|_~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~93_combout\ = (\ADDR~combout\(0) & ((\inst|inst29|dffs\(2)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((\inst|inst30|dffs\(2) & !\ADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst29|dffs\(2),
	datab => \inst|inst30|dffs\(2),
	datac => \ADDR~combout\(0),
	datad => \ADDR~combout\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~93_combout\);

-- Location: LCCOMB_X24_Y19_N28
\inst|inst22|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst22|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst23|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst18|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18|dffs\(2),
	datab => \inst|inst122~combout\,
	datad => \inst|inst23|dffs\(2),
	combout => \inst|inst22|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X24_Y19_N29
\inst|inst21|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst22|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[10]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst21|dffs\(2));

-- Location: LCCOMB_X24_Y21_N14
\inst|inst24|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst24|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst25|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst21|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|dffs\(2),
	datab => \inst|inst21|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst24|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X24_Y21_N15
\inst|inst23|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst24|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst23|dffs\(2));

-- Location: LCCOMB_X24_Y21_N24
\inst|inst27|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst27|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst26|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst23|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst26|dffs\(2),
	datab => \inst|inst23|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst27|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X24_Y21_N25
\inst|inst25|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst27|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst25|dffs\(2));

-- Location: LCCOMB_X25_Y21_N8
\inst|inst1|LPM_MUX_component|auto_generated|_~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~94_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~93_combout\ & (((\inst|inst25|dffs\(2)) # (!\ADDR~combout\(1))))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~93_combout\ & 
-- (\inst|inst26|dffs\(2) & (\ADDR~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst26|dffs\(2),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~93_combout\,
	datac => \ADDR~combout\(1),
	datad => \inst|inst25|dffs\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~94_combout\);

-- Location: LCCOMB_X26_Y21_N12
\inst|inst1|LPM_MUX_component|auto_generated|_~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~95_combout\ = (!\ADDR~combout\(3) & (\ADDR~combout\(2) & (\ADDR~combout\(5) & \inst|inst1|LPM_MUX_component|auto_generated|_~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(3),
	datab => \ADDR~combout\(2),
	datac => \ADDR~combout\(5),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~94_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~95_combout\);

-- Location: LCCOMB_X26_Y21_N6
\inst|inst1|LPM_MUX_component|auto_generated|_~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~105_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~98_combout\) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~95_combout\) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~104_combout\ & 
-- \inst|inst1|LPM_MUX_component|auto_generated|_~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~104_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~98_combout\,
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~35_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~95_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~105_combout\);

-- Location: LCCOMB_X22_Y23_N0
\inst|inst68|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst68|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst69|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst65|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst69|dffs\(2),
	datab => \inst|inst65|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst68|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X22_Y23_N1
\inst|inst66|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst68|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[33]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst66|dffs\(2));

-- Location: LCCOMB_X23_Y22_N30
\inst|inst67|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst67|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst66|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst62|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst62|dffs\(2),
	datab => \inst|inst66|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst67|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X23_Y22_N31
\inst|inst65|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst67|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[32]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst65|dffs\(2));

-- Location: LCCOMB_X23_Y22_N12
\inst|inst64|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst64|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst65|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst61|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst61|dffs\(2),
	datab => \inst|inst65|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst64|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X23_Y22_N13
\inst|inst62|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst64|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[31]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst62|dffs\(2));

-- Location: LCCOMB_X23_Y26_N26
\inst|inst55|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst55|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst54|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst49|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst49|dffs\(2),
	datab => \inst|inst54|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst55|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X23_Y26_N27
\inst|inst53|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst55|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst53|dffs\(2));

-- Location: LCCOMB_X25_Y22_N26
\inst|inst56|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst56|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst57|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst53|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst57|dffs\(2),
	datab => \inst|inst53|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst56|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X25_Y22_N27
\inst|inst54|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst56|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[27]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst54|dffs\(2));

-- Location: LCCOMB_X25_Y22_N12
\inst|inst58|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst58|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst59|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst54|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|dffs\(2),
	datab => \inst|inst54|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst58|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X25_Y22_N13
\inst|inst57|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst58|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[28]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst57|dffs\(2));

-- Location: LCCOMB_X24_Y22_N12
\inst|inst60|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst60|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst61|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst57|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst61|dffs\(2),
	datab => \inst|inst57|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst60|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X24_Y22_N13
\inst|inst59|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst60|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[29]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst59|dffs\(2));

-- Location: LCCOMB_X24_Y22_N2
\inst|inst63|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst63|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst62|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst59|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst62|dffs\(2),
	datab => \inst|inst59|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst63|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X24_Y22_N3
\inst|inst61|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst63|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[30]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst61|dffs\(2));

-- Location: LCCOMB_X22_Y22_N30
\inst|inst1|LPM_MUX_component|auto_generated|_~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~89_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst61|dffs\(2)))) # (!\ADDR~combout\(0) & (\inst|inst62|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst62|dffs\(2),
	datac => \ADDR~combout\(0),
	datad => \inst|inst61|dffs\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~89_combout\);

-- Location: LCCOMB_X22_Y22_N28
\inst|inst1|LPM_MUX_component|auto_generated|_~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~90_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~89_combout\ & (\inst|inst57|dffs\(2))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~89_combout\ & 
-- ((\inst|inst59|dffs\(2)))))) # (!\ADDR~combout\(1) & (\inst|inst1|LPM_MUX_component|auto_generated|_~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~89_combout\,
	datac => \inst|inst57|dffs\(2),
	datad => \inst|inst59|dffs\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~90_combout\);

-- Location: LCCOMB_X23_Y24_N14
\inst|inst78|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst78|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst79|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst75|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst79|dffs\(2),
	datab => \inst|inst75|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst78|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X23_Y24_N15
\inst|inst76|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst78|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[38]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst76|dffs\(2));

-- Location: LCCOMB_X24_Y24_N8
\inst|inst77|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst77|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst76|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst73|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst73|dffs\(2),
	datab => \inst|inst122~combout\,
	datad => \inst|inst76|dffs\(2),
	combout => \inst|inst77|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X24_Y24_N9
\inst|inst75|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst77|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[37]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst75|dffs\(2));

-- Location: LCCOMB_X23_Y24_N16
\inst|inst74|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst74|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst75|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst71|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst71|dffs\(2),
	datab => \inst|inst75|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst74|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X23_Y24_N17
\inst|inst73|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst74|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[36]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst73|dffs\(2));

-- Location: LCCOMB_X22_Y24_N30
\inst|inst72|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst72|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst73|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst69|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst69|dffs\(2),
	datab => \inst|inst73|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst72|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X22_Y24_N31
\inst|inst71|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst72|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[35]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst71|dffs\(2));

-- Location: LCCOMB_X22_Y23_N10
\inst|inst70|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst70|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst71|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst66|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst71|dffs\(2),
	datab => \inst|inst66|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst70|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X22_Y23_N11
\inst|inst69|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst70|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[34]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst69|dffs\(2));

-- Location: LCCOMB_X22_Y24_N10
\inst|inst1|LPM_MUX_component|auto_generated|_~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~91_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst69|dffs\(2)))) # (!\ADDR~combout\(0) & (\inst|inst71|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst71|dffs\(2),
	datac => \ADDR~combout\(0),
	datad => \inst|inst69|dffs\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~91_combout\);

-- Location: LCCOMB_X22_Y22_N10
\inst|inst1|LPM_MUX_component|auto_generated|_~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~92_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~91_combout\ & ((\inst|inst65|dffs\(2)))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~91_combout\ & 
-- (\inst|inst66|dffs\(2))))) # (!\ADDR~combout\(1) & (\inst|inst1|LPM_MUX_component|auto_generated|_~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~91_combout\,
	datac => \inst|inst66|dffs\(2),
	datad => \inst|inst65|dffs\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~92_combout\);

-- Location: LCCOMB_X22_Y22_N4
\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~60_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & (\inst|inst1|LPM_MUX_component|auto_generated|_~90_combout\)) # (!\ADDR~combout\(2) & 
-- ((\inst|inst1|LPM_MUX_component|auto_generated|_~92_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(3),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~90_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~92_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~60_combout\);

-- Location: LCCOMB_X25_Y26_N28
\inst|inst48|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst48|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst50|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst45|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst50|dffs\(2),
	datab => \inst|inst45|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst48|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X25_Y26_N10
\inst|inst130|LPM_MUX_component|auto_generated|result_node[23]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[23]~31_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(23) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(23),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[23]~31_combout\);

-- Location: LCFF_X25_Y26_N29
\inst|inst47|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst48|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst47|dffs\(2));

-- Location: LCCOMB_X24_Y26_N12
\inst|inst51|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst51|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst49|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst47|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst49|dffs\(2),
	datab => \inst|inst47|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst51|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X24_Y26_N13
\inst|inst50|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst51|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[24]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst50|dffs\(2));

-- Location: LCCOMB_X22_Y26_N16
\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~65_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst50|dffs\(2)))) # (!\ADDR~combout\(0) & (\inst|inst49|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst49|dffs\(2),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst50|dffs\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~65_combout\);

-- Location: LCCOMB_X27_Y23_N22
\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~62_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst41|dffs\(2)))) # (!\ADDR~combout\(0) & (\inst|inst42|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst42|dffs\(2),
	datac => \ADDR~combout\(0),
	datad => \inst|inst41|dffs\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~62_combout\);

-- Location: LCCOMB_X26_Y21_N2
\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~63_combout\ = (\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~61_combout\) # (\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~61_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~62_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~63_combout\);

-- Location: LCCOMB_X23_Y26_N24
\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~66_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~63_combout\) # ((!\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~64_combout\) # 
-- (\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~64_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~65_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~63_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~66_combout\);

-- Location: LCCOMB_X22_Y22_N6
\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~67_combout\ = (\ADDR~combout\(4) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~60_combout\) # ((\ADDR~combout\(3) & 
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(3),
	datab => \ADDR~combout\(4),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~60_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~66_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~67_combout\);

-- Location: LCCOMB_X25_Y24_N0
\inst|inst82|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst82|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst83|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst79|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst79|dffs\(2),
	datab => \inst|inst83|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst82|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X25_Y24_N1
\inst|inst80|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst82|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[40]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst80|dffs\(2));

-- Location: LCCOMB_X25_Y24_N18
\inst|inst84|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst84|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst85|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst80|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst85|dffs\(2),
	datab => \inst|inst80|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst84|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X25_Y24_N19
\inst|inst83|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst84|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[41]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst83|dffs\(2));

-- Location: LCCOMB_X21_Y22_N8
\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~57_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & ((\inst|inst83|dffs\(2)))) # (!\ADDR~combout\(1) & (\inst|inst87|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst87|dffs\(2),
	datab => \ADDR~combout\(1),
	datac => \ADDR~combout\(0),
	datad => \inst|inst83|dffs\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~57_combout\);

-- Location: LCCOMB_X21_Y22_N10
\inst|inst88|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst88|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst89|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst85|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst89|dffs\(2),
	datab => \inst|inst85|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst88|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X21_Y22_N11
\inst|inst87|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst88|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[43]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst87|dffs\(2));

-- Location: LCCOMB_X23_Y25_N26
\inst|inst86|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst86|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst87|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst83|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst83|dffs\(2),
	datab => \inst|inst87|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst86|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X23_Y25_N27
\inst|inst85|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst86|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[42]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst85|dffs\(2));

-- Location: LCCOMB_X21_Y22_N14
\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~56_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1) & ((\inst|inst80|dffs\(2)))) # (!\ADDR~combout\(1) & (\inst|inst85|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(0),
	datab => \inst|inst85|dffs\(2),
	datac => \inst|inst80|dffs\(2),
	datad => \ADDR~combout\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~56_combout\);

-- Location: LCCOMB_X20_Y24_N0
\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~54_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & ((\inst|inst75|dffs\(2)))) # (!\ADDR~combout\(1) & (\inst|inst79|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst79|dffs\(2),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst75|dffs\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~54_combout\);

-- Location: LCCOMB_X23_Y24_N20
\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~53_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\inst|inst73|dffs\(2))) # (!\ADDR~combout\(1) & ((\inst|inst76|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst73|dffs\(2),
	datab => \ADDR~combout\(0),
	datac => \inst|inst76|dffs\(2),
	datad => \ADDR~combout\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~53_combout\);

-- Location: LCCOMB_X20_Y24_N26
\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~55_combout\ = (\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~54_combout\) # (\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~54_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~53_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~55_combout\);

-- Location: LCCOMB_X21_Y22_N22
\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~58_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~55_combout\) # ((!\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~57_combout\) # 
-- (\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~57_combout\,
	datac => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~56_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~55_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~58_combout\);

-- Location: LCCOMB_X23_Y23_N22
\inst|inst105|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst105|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst101|dffs\(2) & !\inst|inst122~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst101|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst105|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X23_Y23_N30
\inst|inst130|LPM_MUX_component|auto_generated|result_node[51]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[51]~6_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(51) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(51),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[51]~6_combout\);

-- Location: LCFF_X23_Y23_N23
\inst|inst103|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst105|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[51]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst103|dffs\(2));

-- Location: LCCOMB_X23_Y23_N12
\inst|inst102|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst102|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst103|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst99|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst99|dffs\(2),
	datab => \inst|inst103|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst102|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X23_Y23_N13
\inst|inst101|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst102|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[50]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst101|dffs\(2));

-- Location: LCCOMB_X24_Y23_N8
\inst|inst1|LPM_MUX_component|auto_generated|_~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~85_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst101|dffs\(2)))) # (!\ADDR~combout\(0) & (\inst|inst103|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst103|dffs\(2),
	datac => \ADDR~combout\(0),
	datad => \inst|inst101|dffs\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~85_combout\);

-- Location: LCCOMB_X19_Y23_N2
\inst|inst95|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst95|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst94|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst90|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst90|dffs\(2),
	datab => \inst|inst94|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst95|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X19_Y23_N3
\inst|inst93|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst95|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[46]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst93|dffs\(2));

-- Location: LCCOMB_X21_Y23_N8
\inst|inst96|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst96|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst97|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst93|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst97|dffs\(2),
	datab => \inst|inst93|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst96|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X21_Y23_N9
\inst|inst94|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst96|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst94|dffs\(2));

-- Location: LCCOMB_X20_Y23_N30
\inst|inst98|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst98|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst99|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst94|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst99|dffs\(2),
	datab => \inst|inst94|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst98|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X20_Y23_N6
\inst|inst130|LPM_MUX_component|auto_generated|result_node[48]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst130|LPM_MUX_component|auto_generated|result_node[48]~7_combout\ = (\inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(48) & \inst|inst126~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst107|crc_table|srom|rom_block|auto_generated|q_a\(48),
	datad => \inst|inst126~combout\,
	combout => \inst|inst130|LPM_MUX_component|auto_generated|result_node[48]~7_combout\);

-- Location: LCFF_X20_Y23_N31
\inst|inst97|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst98|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[48]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst97|dffs\(2));

-- Location: LCCOMB_X20_Y23_N12
\inst|inst100|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst100|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst101|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst97|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst101|dffs\(2),
	datab => \inst|inst97|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst100|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X20_Y23_N13
\inst|inst99|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst100|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[49]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst99|dffs\(2));

-- Location: LCCOMB_X21_Y23_N12
\inst|inst1|LPM_MUX_component|auto_generated|_~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~86_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~85_combout\ & (\inst|inst97|dffs\(2))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~85_combout\ & 
-- ((\inst|inst99|dffs\(2)))))) # (!\ADDR~combout\(1) & (\inst|inst1|LPM_MUX_component|auto_generated|_~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~85_combout\,
	datac => \inst|inst97|dffs\(2),
	datad => \inst|inst99|dffs\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~86_combout\);

-- Location: LCCOMB_X22_Y21_N18
\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~52_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & (\inst|inst1|LPM_MUX_component|auto_generated|_~84_combout\)) # (!\ADDR~combout\(2) & 
-- ((\inst|inst1|LPM_MUX_component|auto_generated|_~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~84_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~86_combout\,
	datac => \ADDR~combout\(3),
	datad => \ADDR~combout\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~52_combout\);

-- Location: LCCOMB_X22_Y21_N8
\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~59_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~0_combout\ & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~52_combout\) # 
-- ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~58_combout\ & \ADDR~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~0_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~58_combout\,
	datac => \ADDR~combout\(3),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~52_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~59_combout\);

-- Location: LCCOMB_X26_Y23_N24
\inst|inst8|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst8|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst9|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst5|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|dffs\(2),
	datab => \inst|inst122~combout\,
	datad => \inst|inst5|dffs\(2),
	combout => \inst|inst8|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X26_Y23_N25
\inst|inst6|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst8|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst6|dffs\(2));

-- Location: LCCOMB_X25_Y25_N26
\inst|inst7|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst7|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & (\inst|inst6|dffs\(2))) # (!\inst|inst122~combout\ & ((\inst|inst3|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst122~combout\,
	datab => \inst|inst6|dffs\(2),
	datad => \inst|inst3|dffs\(2),
	combout => \inst|inst7|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X25_Y25_N27
\inst|inst5|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst7|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst5|dffs\(2));

-- Location: LCCOMB_X24_Y25_N18
\inst|inst4|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst4|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst5|dffs\(2)))) # (!\inst|inst122~combout\ & (\inst|inst|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|dffs\(2),
	datab => \inst|inst5|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst4|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X24_Y25_N19
\inst|inst3|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst4|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst3|dffs\(2));

-- Location: LCCOMB_X25_Y25_N4
\inst|inst1|LPM_MUX_component|auto_generated|_~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~87_combout\ = (\ADDR~combout\(1) & (\ADDR~combout\(0))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst5|dffs\(2)))) # (!\ADDR~combout\(0) & (\inst|inst6|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \ADDR~combout\(0),
	datac => \inst|inst6|dffs\(2),
	datad => \inst|inst5|dffs\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~87_combout\);

-- Location: LCCOMB_X24_Y25_N12
\inst|inst2|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst2|$00000|auto_generated|result_node[2]~3_combout\ = (\inst|inst122~combout\ & ((\inst|inst3|dffs\(2)))) # (!\inst|inst122~combout\ & (\DATA~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA~combout\(2),
	datab => \inst|inst3|dffs\(2),
	datad => \inst|inst122~combout\,
	combout => \inst|inst2|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCFF_X24_Y25_N13
\inst|inst|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst2|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|dffs\(2));

-- Location: LCCOMB_X25_Y25_N14
\inst|inst1|LPM_MUX_component|auto_generated|_~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~88_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~87_combout\ & ((\inst|inst|dffs\(2)))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~87_combout\ & 
-- (\inst|inst3|dffs\(2))))) # (!\ADDR~combout\(1) & (((\inst|inst1|LPM_MUX_component|auto_generated|_~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst3|dffs\(2),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~87_combout\,
	datad => \inst|inst|dffs\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~88_combout\);

-- Location: LCCOMB_X26_Y21_N22
\inst|inst1|LPM_MUX_component|auto_generated|_~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~155_combout\ = ((!\ADDR~combout\(3) & (!\ADDR~combout\(2) & \inst|inst1|LPM_MUX_component|auto_generated|_~88_combout\))) # (!\ADDR~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(3),
	datab => \ADDR~combout\(2),
	datac => \ADDR~combout\(4),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~88_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~155_combout\);

-- Location: LCCOMB_X26_Y21_N8
\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~68_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~59_combout\) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~105_combout\ & 
-- ((\inst|inst1|LPM_MUX_component|auto_generated|_~155_combout\))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~105_combout\ & (\inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~105_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~67_combout\,
	datac => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~59_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~155_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~68_combout\);

-- Location: LCCOMB_X23_Y22_N4
\inst|inst64|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst64|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst65|dffs\(1)))) # (!\inst|inst122~combout\ & (\inst|inst61|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst61|dffs\(1),
	datab => \inst|inst65|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst64|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X23_Y22_N5
\inst|inst62|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst64|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[31]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst62|dffs\(1));

-- Location: LCCOMB_X23_Y22_N18
\inst|inst67|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst67|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst66|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst62|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst66|dffs\(1),
	datab => \inst|inst62|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst67|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X23_Y22_N19
\inst|inst65|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst67|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[32]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst65|dffs\(1));

-- Location: LCCOMB_X22_Y23_N24
\inst|inst68|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst68|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst69|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst65|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst69|dffs\(1),
	datab => \inst|inst65|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst68|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X22_Y23_N25
\inst|inst66|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst68|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[33]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst66|dffs\(1));

-- Location: LCCOMB_X23_Y24_N24
\inst|inst74|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst74|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst75|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst71|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst75|dffs\(1),
	datab => \inst|inst71|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst74|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X23_Y24_N25
\inst|inst73|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst74|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[36]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst73|dffs\(1));

-- Location: LCCOMB_X22_Y24_N4
\inst|inst72|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst72|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst73|dffs\(1)))) # (!\inst|inst122~combout\ & (\inst|inst69|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst69|dffs\(1),
	datab => \inst|inst73|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst72|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X22_Y24_N5
\inst|inst71|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst72|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[35]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst71|dffs\(1));

-- Location: LCCOMB_X22_Y23_N14
\inst|inst70|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst70|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst71|dffs\(1)))) # (!\inst|inst122~combout\ & (\inst|inst66|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst66|dffs\(1),
	datab => \inst|inst71|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst70|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X22_Y23_N15
\inst|inst69|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst70|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[34]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst69|dffs\(1));

-- Location: LCCOMB_X22_Y24_N16
\inst|inst1|LPM_MUX_component|auto_generated|_~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~114_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst69|dffs\(1)))) # (!\ADDR~combout\(0) & (\inst|inst71|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst71|dffs\(1),
	datac => \ADDR~combout\(0),
	datad => \inst|inst69|dffs\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~114_combout\);

-- Location: LCCOMB_X22_Y24_N18
\inst|inst1|LPM_MUX_component|auto_generated|_~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~115_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~114_combout\ & ((\inst|inst65|dffs\(1)))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~114_combout\ & 
-- (\inst|inst66|dffs\(1))))) # (!\ADDR~combout\(1) & (((\inst|inst1|LPM_MUX_component|auto_generated|_~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst66|dffs\(1),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~114_combout\,
	datad => \inst|inst65|dffs\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~115_combout\);

-- Location: LCCOMB_X22_Y21_N2
\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~77_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & (\inst|inst1|LPM_MUX_component|auto_generated|_~113_combout\)) # (!\ADDR~combout\(2) & 
-- ((\inst|inst1|LPM_MUX_component|auto_generated|_~115_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~113_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~115_combout\,
	datac => \ADDR~combout\(3),
	datad => \ADDR~combout\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~77_combout\);

-- Location: LCCOMB_X25_Y26_N6
\inst|inst44|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst44|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst45|dffs\(1)))) # (!\inst|inst122~combout\ & (\inst|inst41|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41|dffs\(1),
	datab => \inst|inst45|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst44|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X25_Y26_N7
\inst|inst42|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst44|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[21]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst42|dffs\(1));

-- Location: LCCOMB_X25_Y21_N20
\inst|inst46|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst46|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst47|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst42|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst47|dffs\(1),
	datab => \inst|inst42|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst46|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X25_Y21_N21
\inst|inst45|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst46|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[22]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst45|dffs\(1));

-- Location: LCCOMB_X25_Y26_N20
\inst|inst48|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst48|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst50|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst45|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst50|dffs\(1),
	datab => \inst|inst45|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst48|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X25_Y26_N21
\inst|inst47|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst48|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst47|dffs\(1));

-- Location: LCCOMB_X24_Y26_N0
\inst|inst51|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst51|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst49|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst47|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst49|dffs\(1),
	datab => \inst|inst47|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst51|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X24_Y26_N1
\inst|inst50|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst51|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[24]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst50|dffs\(1));

-- Location: LCCOMB_X24_Y26_N14
\inst|inst52|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst52|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst53|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst50|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst53|dffs\(1),
	datab => \inst|inst50|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst52|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X24_Y26_N15
\inst|inst49|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst52|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[25]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst49|dffs\(1));

-- Location: LCCOMB_X24_Y26_N22
\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~82_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst50|dffs\(1)))) # (!\ADDR~combout\(0) & (\inst|inst49|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst49|dffs\(1),
	datac => \ADDR~combout\(0),
	datad => \inst|inst50|dffs\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~82_combout\);

-- Location: LCCOMB_X25_Y21_N22
\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~79_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst41|dffs\(1))) # (!\ADDR~combout\(0) & ((\inst|inst42|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41|dffs\(1),
	datab => \inst|inst42|dffs\(1),
	datac => \ADDR~combout\(1),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~79_combout\);

-- Location: LCCOMB_X26_Y21_N10
\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~80_combout\ = (\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~78_combout\) # (\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~78_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~79_combout\,
	datac => \ADDR~combout\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~80_combout\);

-- Location: LCCOMB_X23_Y26_N12
\inst|inst55|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst55|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst54|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst49|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst54|dffs\(1),
	datab => \inst|inst49|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst55|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X23_Y26_N13
\inst|inst53|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst55|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst53|dffs\(1));

-- Location: LCCOMB_X26_Y24_N12
\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~81_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst53|dffs\(1)))) # (!\ADDR~combout\(0) & (\inst|inst54|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst54|dffs\(1),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst53|dffs\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~81_combout\);

-- Location: LCCOMB_X26_Y24_N26
\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~83_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~80_combout\) # ((!\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~82_combout\) # 
-- (\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~82_combout\,
	datac => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~80_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~81_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~83_combout\);

-- Location: LCCOMB_X22_Y22_N12
\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~84_combout\ = (\ADDR~combout\(4) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~77_combout\) # ((\ADDR~combout\(3) & 
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(3),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~77_combout\,
	datac => \ADDR~combout\(4),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~83_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~84_combout\);

-- Location: LCCOMB_X24_Y21_N2
\inst|inst24|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst24|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst25|dffs\(1)))) # (!\inst|inst122~combout\ & (\inst|inst21|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|dffs\(1),
	datab => \inst|inst25|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst24|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X24_Y21_N3
\inst|inst23|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst24|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst23|dffs\(1));

-- Location: LCCOMB_X24_Y21_N0
\inst|inst27|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst27|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst26|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst23|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst26|dffs\(1),
	datab => \inst|inst23|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst27|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X24_Y21_N1
\inst|inst25|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst27|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst25|dffs\(1));

-- Location: LCCOMB_X23_Y20_N28
\inst|inst32|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst32|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst33|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst29|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33|dffs\(1),
	datab => \inst|inst29|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst32|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X23_Y20_N29
\inst|inst30|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst32|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[15]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst30|dffs\(1));

-- Location: LCCOMB_X23_Y21_N2
\inst|inst31|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst31|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst30|dffs\(1)))) # (!\inst|inst122~combout\ & (\inst|inst26|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst26|dffs\(1),
	datab => \inst|inst30|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst31|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X23_Y21_N3
\inst|inst29|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst31|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[14]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst29|dffs\(1));

-- Location: LCCOMB_X23_Y21_N16
\inst|inst28|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst28|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst29|dffs\(1)))) # (!\inst|inst122~combout\ & (\inst|inst25|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst25|dffs\(1),
	datab => \inst|inst29|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst28|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X23_Y21_N17
\inst|inst26|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst28|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[13]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst26|dffs\(1));

-- Location: LCCOMB_X22_Y21_N6
\inst|inst1|LPM_MUX_component|auto_generated|_~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~117_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~116_combout\ & ((\inst|inst25|dffs\(1)) # ((!\ADDR~combout\(1))))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~116_combout\ & 
-- (((\ADDR~combout\(1) & \inst|inst26|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~116_combout\,
	datab => \inst|inst25|dffs\(1),
	datac => \ADDR~combout\(1),
	datad => \inst|inst26|dffs\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~117_combout\);

-- Location: LCCOMB_X22_Y21_N0
\inst|inst1|LPM_MUX_component|auto_generated|_~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~118_combout\ = (\ADDR~combout\(2) & (!\ADDR~combout\(3) & (\ADDR~combout\(5) & \inst|inst1|LPM_MUX_component|auto_generated|_~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \ADDR~combout\(3),
	datac => \ADDR~combout\(5),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~117_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~118_combout\);

-- Location: LCCOMB_X23_Y20_N26
\inst|inst34|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst34|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst35|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst30|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst35|dffs\(1),
	datab => \inst|inst30|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst34|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X23_Y20_N27
\inst|inst33|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst34|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[16]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst33|dffs\(1));

-- Location: LCCOMB_X24_Y20_N28
\inst|inst36|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst36|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst37|dffs\(1)))) # (!\inst|inst122~combout\ & (\inst|inst33|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33|dffs\(1),
	datab => \inst|inst37|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst36|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X24_Y20_N29
\inst|inst35|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst36|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst35|dffs\(1));

-- Location: LCCOMB_X25_Y20_N0
\inst|inst39|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst39|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst38|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst35|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst38|dffs\(1),
	datab => \inst|inst122~combout\,
	datad => \inst|inst35|dffs\(1),
	combout => \inst|inst39|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X25_Y20_N1
\inst|inst37|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst39|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst37|dffs\(1));

-- Location: LCCOMB_X25_Y20_N16
\inst|inst1|LPM_MUX_component|auto_generated|_~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~119_combout\ = (\ADDR~combout\(0) & (((\ADDR~combout\(1)) # (\inst|inst37|dffs\(1))))) # (!\ADDR~combout\(0) & (\inst|inst38|dffs\(1) & (!\ADDR~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst38|dffs\(1),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst37|dffs\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~119_combout\);

-- Location: LCCOMB_X25_Y20_N18
\inst|inst1|LPM_MUX_component|auto_generated|_~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~120_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~119_combout\ & (\inst|inst33|dffs\(1))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~119_combout\ & 
-- ((\inst|inst35|dffs\(1)))))) # (!\ADDR~combout\(1) & (((\inst|inst1|LPM_MUX_component|auto_generated|_~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst33|dffs\(1),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~119_combout\,
	datad => \inst|inst35|dffs\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~120_combout\);

-- Location: LCCOMB_X26_Y21_N0
\inst|inst1|LPM_MUX_component|auto_generated|_~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~121_combout\ = (\ADDR~combout\(5) & ((\ADDR~combout\(4)) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~16_combout\ & \inst|inst1|LPM_MUX_component|auto_generated|_~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(4),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~16_combout\,
	datac => \ADDR~combout\(5),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~120_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~121_combout\);

-- Location: LCCOMB_X22_Y22_N18
\inst|inst1|LPM_MUX_component|auto_generated|_~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~128_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~118_combout\) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~121_combout\) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~127_combout\ & 
-- \inst|inst1|LPM_MUX_component|auto_generated|_~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~127_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~118_combout\,
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~35_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~121_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~128_combout\);

-- Location: LCCOMB_X23_Y25_N18
\inst|inst86|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst86|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst87|dffs\(1)))) # (!\inst|inst122~combout\ & (\inst|inst83|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst83|dffs\(1),
	datab => \inst|inst87|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst86|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X23_Y25_N19
\inst|inst85|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst86|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[42]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst85|dffs\(1));

-- Location: LCCOMB_X21_Y22_N20
\inst|inst88|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst88|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst89|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst85|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst89|dffs\(1),
	datab => \inst|inst85|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst88|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X21_Y22_N21
\inst|inst87|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst88|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[43]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst87|dffs\(1));

-- Location: LCCOMB_X25_Y24_N10
\inst|inst84|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst84|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst85|dffs\(1)))) # (!\inst|inst122~combout\ & (\inst|inst80|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst80|dffs\(1),
	datab => \inst|inst85|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst84|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X25_Y24_N11
\inst|inst83|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst84|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[41]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst83|dffs\(1));

-- Location: LCCOMB_X23_Y25_N14
\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~74_combout\ = (!\ADDR~combout\(0) & ((\ADDR~combout\(1) & ((\inst|inst83|dffs\(1)))) # (!\ADDR~combout\(1) & (\inst|inst87|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst87|dffs\(1),
	datac => \ADDR~combout\(0),
	datad => \inst|inst83|dffs\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~74_combout\);

-- Location: LCCOMB_X23_Y24_N18
\inst|inst78|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst78|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst79|dffs\(1)))) # (!\inst|inst122~combout\ & (\inst|inst75|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst75|dffs\(1),
	datab => \inst|inst79|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst78|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X23_Y24_N19
\inst|inst76|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst78|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[38]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst76|dffs\(1));

-- Location: LCCOMB_X24_Y24_N22
\inst|inst81|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst81|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst80|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst76|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst80|dffs\(1),
	datab => \inst|inst76|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst81|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X24_Y24_N23
\inst|inst79|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst81|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[39]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst79|dffs\(1));

-- Location: LCCOMB_X25_Y24_N16
\inst|inst82|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst82|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst83|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst79|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst83|dffs\(1),
	datab => \inst|inst79|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst82|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X25_Y24_N17
\inst|inst80|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst82|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[40]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst80|dffs\(1));

-- Location: LCCOMB_X22_Y25_N2
\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~73_combout\ = (\ADDR~combout\(0) & ((\ADDR~combout\(1) & (\inst|inst80|dffs\(1))) # (!\ADDR~combout\(1) & ((\inst|inst85|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \ADDR~combout\(0),
	datac => \inst|inst80|dffs\(1),
	datad => \inst|inst85|dffs\(1),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~73_combout\);

-- Location: LCCOMB_X22_Y25_N8
\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~75_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~72_combout\) # ((!\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~74_combout\) # 
-- (\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~72_combout\,
	datab => \ADDR~combout\(2),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~74_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~73_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~75_combout\);

-- Location: LCCOMB_X22_Y25_N22
\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~76_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~0_combout\ & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~69_combout\) # 
-- ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~75_combout\ & \ADDR~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~69_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~75_combout\,
	datac => \ADDR~combout\(3),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~0_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~76_combout\);

-- Location: LCCOMB_X26_Y23_N22
\inst|inst10|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst10|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & (\inst|inst11|dffs\(1))) # (!\inst|inst122~combout\ & ((\inst|inst6|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11|dffs\(1),
	datab => \inst|inst6|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst10|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X26_Y23_N23
\inst|inst9|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst10|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst9|dffs\(1));

-- Location: LCCOMB_X26_Y23_N16
\inst|inst8|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst8|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst9|dffs\(1)))) # (!\inst|inst122~combout\ & (\inst|inst5|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|dffs\(1),
	datab => \inst|inst9|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst8|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X26_Y23_N17
\inst|inst6|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst8|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst6|dffs\(1));

-- Location: LCCOMB_X25_Y25_N20
\inst|inst7|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst7|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst6|dffs\(1)))) # (!\inst|inst122~combout\ & (\inst|inst3|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|dffs\(1),
	datab => \inst|inst6|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst7|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X25_Y25_N21
\inst|inst5|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst7|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst5|dffs\(1));

-- Location: LCCOMB_X24_Y25_N30
\inst|inst4|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst4|$00000|auto_generated|result_node[1]~4_combout\ = (\inst|inst122~combout\ & ((\inst|inst5|dffs\(1)))) # (!\inst|inst122~combout\ & (\inst|inst|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|dffs\(1),
	datab => \inst|inst5|dffs\(1),
	datad => \inst|inst122~combout\,
	combout => \inst|inst4|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X24_Y25_N31
\inst|inst3|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst4|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst3|dffs\(1));

-- Location: LCCOMB_X25_Y25_N28
\inst|inst1|LPM_MUX_component|auto_generated|_~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~110_combout\ = (\ADDR~combout\(1) & (((\ADDR~combout\(0))))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst5|dffs\(1))) # (!\ADDR~combout\(0) & ((\inst|inst6|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|dffs\(1),
	datab => \ADDR~combout\(1),
	datac => \inst|inst6|dffs\(1),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~110_combout\);

-- Location: LCCOMB_X24_Y25_N10
\inst|inst1|LPM_MUX_component|auto_generated|_~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~111_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~110_combout\ & (\inst|inst|dffs\(1))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~110_combout\ & 
-- ((\inst|inst3|dffs\(1)))))) # (!\ADDR~combout\(1) & (((\inst|inst1|LPM_MUX_component|auto_generated|_~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|dffs\(1),
	datab => \inst|inst3|dffs\(1),
	datac => \ADDR~combout\(1),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~110_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~111_combout\);

-- Location: LCCOMB_X22_Y22_N2
\inst|inst1|LPM_MUX_component|auto_generated|_~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~156_combout\ = ((!\ADDR~combout\(3) & (!\ADDR~combout\(2) & \inst|inst1|LPM_MUX_component|auto_generated|_~111_combout\))) # (!\ADDR~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(3),
	datab => \ADDR~combout\(4),
	datac => \ADDR~combout\(2),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~111_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~156_combout\);

-- Location: LCCOMB_X22_Y22_N0
\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~85_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~76_combout\) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~128_combout\ & 
-- ((\inst|inst1|LPM_MUX_component|auto_generated|_~156_combout\))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~128_combout\ & (\inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~84_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~128_combout\,
	datac => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~76_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~156_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~85_combout\);

-- Location: LCCOMB_X25_Y22_N28
\inst|inst58|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst58|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst59|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst54|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|dffs\(0),
	datab => \inst|inst54|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst58|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X25_Y22_N29
\inst|inst57|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst58|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[28]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst57|dffs\(0));

-- Location: LCCOMB_X25_Y22_N30
\inst|inst56|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst56|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst57|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst53|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst53|dffs\(0),
	datab => \inst|inst57|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst56|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X25_Y22_N31
\inst|inst54|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst56|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[27]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst54|dffs\(0));

-- Location: LCCOMB_X23_Y26_N22
\inst|inst55|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst55|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst54|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst49|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst49|dffs\(0),
	datab => \inst|inst54|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst55|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X23_Y26_N23
\inst|inst53|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst55|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst53|dffs\(0));

-- Location: LCCOMB_X27_Y23_N14
\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~98_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst53|dffs\(0))) # (!\ADDR~combout\(0) & ((\inst|inst54|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst53|dffs\(0),
	datac => \ADDR~combout\(0),
	datad => \inst|inst54|dffs\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~98_combout\);

-- Location: LCCOMB_X24_Y26_N20
\inst|inst51|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst51|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst49|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst47|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst49|dffs\(0),
	datab => \inst|inst47|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst51|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X24_Y26_N21
\inst|inst50|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst51|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[24]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst50|dffs\(0));

-- Location: LCCOMB_X25_Y26_N0
\inst|inst48|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst48|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst50|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst45|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst45|dffs\(0),
	datab => \inst|inst50|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst48|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X25_Y26_N1
\inst|inst47|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst48|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst47|dffs\(0));

-- Location: LCCOMB_X25_Y21_N6
\inst|inst46|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst46|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst47|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst42|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst42|dffs\(0),
	datab => \inst|inst47|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst46|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X25_Y21_N7
\inst|inst45|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst46|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[22]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst45|dffs\(0));

-- Location: LCCOMB_X27_Y23_N0
\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~95_combout\ = (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst45|dffs\(0)))) # (!\ADDR~combout\(0) & (\inst|inst47|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \ADDR~combout\(0),
	datac => \inst|inst47|dffs\(0),
	datad => \inst|inst45|dffs\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~95_combout\);

-- Location: LCCOMB_X24_Y20_N12
\inst|inst36|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst36|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst37|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst33|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33|dffs\(0),
	datab => \inst|inst37|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst36|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X24_Y20_N13
\inst|inst35|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst36|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst35|dffs\(0));

-- Location: LCCOMB_X25_Y20_N14
\inst|inst39|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst39|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst38|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst35|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst38|dffs\(0),
	datab => \inst|inst122~combout\,
	datad => \inst|inst35|dffs\(0),
	combout => \inst|inst39|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X25_Y20_N15
\inst|inst37|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst39|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[18]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst37|dffs\(0));

-- Location: LCCOMB_X24_Y20_N2
\inst|inst40|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst40|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst41|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst37|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41|dffs\(0),
	datab => \inst|inst37|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst40|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X24_Y20_N3
\inst|inst38|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst40|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst38|dffs\(0));

-- Location: LCCOMB_X27_Y23_N10
\inst|inst43|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst43|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst42|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst38|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst42|dffs\(0),
	datab => \inst|inst38|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst43|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X27_Y23_N11
\inst|inst41|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst43|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst41|dffs\(0));

-- Location: LCCOMB_X27_Y23_N30
\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~96_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst41|dffs\(0)))) # (!\ADDR~combout\(0) & (\inst|inst42|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst42|dffs\(0),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst41|dffs\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~96_combout\);

-- Location: LCCOMB_X27_Y23_N28
\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~97_combout\ = (\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~95_combout\) # (\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~95_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~96_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~97_combout\);

-- Location: LCCOMB_X27_Y23_N24
\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~100_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~97_combout\) # ((!\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~99_combout\) # 
-- (\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~99_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~98_combout\,
	datac => \ADDR~combout\(2),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~97_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~100_combout\);

-- Location: LCCOMB_X21_Y25_N6
\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~101_combout\ = (\ADDR~combout\(4) & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~94_combout\) # ((\ADDR~combout\(3) & 
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~94_combout\,
	datab => \ADDR~combout\(4),
	datac => \ADDR~combout\(3),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~100_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~101_combout\);

-- Location: LCCOMB_X24_Y25_N4
\inst|inst2|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst2|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst3|dffs\(0)))) # (!\inst|inst122~combout\ & (\DATA~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA~combout\(0),
	datab => \inst|inst3|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst2|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X24_Y25_N5
\inst|inst|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst2|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|dffs\(0));

-- Location: LCCOMB_X24_Y25_N22
\inst|inst4|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst4|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst5|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|dffs\(0),
	datab => \inst|inst|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst4|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X24_Y25_N23
\inst|inst3|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst4|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst3|dffs\(0));

-- Location: LCCOMB_X25_Y23_N6
\inst|inst12|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst12|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst13|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst9|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13|dffs\(0),
	datab => \inst|inst122~combout\,
	datad => \inst|inst9|dffs\(0),
	combout => \inst|inst12|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X25_Y23_N7
\inst|inst11|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst12|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[5]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst11|dffs\(0));

-- Location: LCCOMB_X26_Y23_N18
\inst|inst10|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst10|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst11|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst6|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|dffs\(0),
	datab => \inst|inst11|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst10|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X26_Y23_N19
\inst|inst9|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst10|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst9|dffs\(0));

-- Location: LCCOMB_X26_Y23_N4
\inst|inst8|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst8|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst9|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst5|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|dffs\(0),
	datab => \inst|inst9|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst8|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X26_Y23_N5
\inst|inst6|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst8|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst6|dffs\(0));

-- Location: LCCOMB_X25_Y25_N22
\inst|inst1|LPM_MUX_component|auto_generated|_~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~133_combout\ = (\ADDR~combout\(0) & ((\inst|inst5|dffs\(0)) # ((\ADDR~combout\(1))))) # (!\ADDR~combout\(0) & (((!\ADDR~combout\(1) & \inst|inst6|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|dffs\(0),
	datab => \ADDR~combout\(0),
	datac => \ADDR~combout\(1),
	datad => \inst|inst6|dffs\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~133_combout\);

-- Location: LCCOMB_X24_Y25_N28
\inst|inst1|LPM_MUX_component|auto_generated|_~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~134_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~133_combout\ & ((\inst|inst|dffs\(0)))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~133_combout\ & 
-- (\inst|inst3|dffs\(0))))) # (!\ADDR~combout\(1) & (((\inst|inst1|LPM_MUX_component|auto_generated|_~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst3|dffs\(0),
	datac => \inst|inst|dffs\(0),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~133_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~134_combout\);

-- Location: LCCOMB_X21_Y25_N28
\inst|inst1|LPM_MUX_component|auto_generated|_~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~157_combout\ = ((!\ADDR~combout\(2) & (!\ADDR~combout\(3) & \inst|inst1|LPM_MUX_component|auto_generated|_~134_combout\))) # (!\ADDR~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \ADDR~combout\(4),
	datac => \ADDR~combout\(3),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~134_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~157_combout\);

-- Location: LCCOMB_X20_Y23_N14
\inst|inst98|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst98|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst99|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst94|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst94|dffs\(0),
	datab => \inst|inst99|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst98|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X20_Y23_N15
\inst|inst97|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst98|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[48]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst97|dffs\(0));

-- Location: LCCOMB_X20_Y23_N4
\inst|inst100|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst100|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst101|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst97|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst101|dffs\(0),
	datab => \inst|inst97|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst100|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X20_Y23_N5
\inst|inst99|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst100|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[49]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst99|dffs\(0));

-- Location: LCCOMB_X23_Y23_N0
\inst|inst102|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst102|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst103|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst99|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst99|dffs\(0),
	datab => \inst|inst103|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst102|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X23_Y23_N1
\inst|inst101|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst102|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[50]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst101|dffs\(0));

-- Location: LCCOMB_X23_Y23_N18
\inst|inst105|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst105|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst101|dffs\(0) & !\inst|inst122~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst101|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst105|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X23_Y23_N19
\inst|inst103|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst105|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[51]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst103|dffs\(0));

-- Location: LCCOMB_X23_Y23_N16
\inst|inst1|LPM_MUX_component|auto_generated|_~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~131_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0)) # ((\inst|inst99|dffs\(0))))) # (!\ADDR~combout\(1) & (!\ADDR~combout\(0) & ((\inst|inst103|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \ADDR~combout\(0),
	datac => \inst|inst99|dffs\(0),
	datad => \inst|inst103|dffs\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~131_combout\);

-- Location: LCCOMB_X21_Y23_N24
\inst|inst1|LPM_MUX_component|auto_generated|_~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~132_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~131_combout\ & ((\inst|inst97|dffs\(0)) # ((!\ADDR~combout\(0))))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~131_combout\ & 
-- (((\inst|inst101|dffs\(0) & \ADDR~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst97|dffs\(0),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~131_combout\,
	datac => \inst|inst101|dffs\(0),
	datad => \ADDR~combout\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~132_combout\);

-- Location: LCCOMB_X23_Y25_N10
\inst|inst86|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst86|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst87|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst83|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst83|dffs\(0),
	datab => \inst|inst87|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst86|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X23_Y25_N11
\inst|inst85|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst86|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[42]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst85|dffs\(0));

-- Location: LCCOMB_X21_Y22_N30
\inst|inst88|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst88|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst89|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst85|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst89|dffs\(0),
	datab => \inst|inst85|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst88|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X21_Y22_N31
\inst|inst87|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst88|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[43]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst87|dffs\(0));

-- Location: LCCOMB_X23_Y25_N16
\inst|inst91|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst91|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst90|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst87|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst90|dffs\(0),
	datab => \inst|inst87|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst91|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X23_Y25_N17
\inst|inst89|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst91|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[44]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst89|dffs\(0));

-- Location: LCCOMB_X21_Y24_N10
\inst|inst92|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst92|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst93|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst89|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst93|dffs\(0),
	datab => \inst|inst89|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst92|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X21_Y24_N11
\inst|inst90|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst92|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst90|dffs\(0));

-- Location: LCCOMB_X21_Y24_N6
\inst|inst1|LPM_MUX_component|auto_generated|_~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~130_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~129_combout\ & (((\inst|inst89|dffs\(0))) # (!\ADDR~combout\(1)))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~129_combout\ & 
-- (\ADDR~combout\(1) & ((\inst|inst90|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~129_combout\,
	datab => \ADDR~combout\(1),
	datac => \inst|inst89|dffs\(0),
	datad => \inst|inst90|dffs\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~130_combout\);

-- Location: LCCOMB_X21_Y24_N24
\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~86_combout\ = (!\ADDR~combout\(3) & ((\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~130_combout\))) # (!\ADDR~combout\(2) & 
-- (\inst|inst1|LPM_MUX_component|auto_generated|_~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \ADDR~combout\(3),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~132_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~130_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~86_combout\);

-- Location: LCCOMB_X21_Y24_N28
\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~93_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~0_combout\ & ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~86_combout\) # 
-- ((\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~92_combout\ & \ADDR~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~92_combout\,
	datab => \ADDR~combout\(3),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~86_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~0_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~93_combout\);

-- Location: LCCOMB_X25_Y23_N10
\inst|inst1|LPM_MUX_component|auto_generated|_~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~146_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst9|dffs\(0)))) # (!\ADDR~combout\(0) & (\inst|inst11|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11|dffs\(0),
	datab => \ADDR~combout\(1),
	datac => \ADDR~combout\(0),
	datad => \inst|inst9|dffs\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~146_combout\);

-- Location: LCCOMB_X22_Y20_N26
\inst|inst1|LPM_MUX_component|auto_generated|_~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~147_combout\ = (\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~145_combout\) # (\inst|inst1|LPM_MUX_component|auto_generated|_~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~145_combout\,
	datab => \ADDR~combout\(2),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~146_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~147_combout\);

-- Location: LCCOMB_X25_Y19_N2
\inst|inst19|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst19|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst18|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst14|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst14|dffs\(0),
	datab => \inst|inst122~combout\,
	datad => \inst|inst18|dffs\(0),
	combout => \inst|inst19|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X25_Y19_N3
\inst|inst17|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst19|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[8]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst17|dffs\(0));

-- Location: LCCOMB_X24_Y19_N22
\inst|inst20|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst20|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst21|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst17|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|dffs\(0),
	datab => \inst|inst122~combout\,
	datad => \inst|inst17|dffs\(0),
	combout => \inst|inst20|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X24_Y19_N23
\inst|inst18|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst20|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[9]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst18|dffs\(0));

-- Location: LCCOMB_X23_Y19_N0
\inst|inst1|LPM_MUX_component|auto_generated|_~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~149_combout\ = (\ADDR~combout\(1) & ((\ADDR~combout\(0) & (\inst|inst17|dffs\(0))) # (!\ADDR~combout\(0) & ((\inst|inst18|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst17|dffs\(0),
	datab => \ADDR~combout\(1),
	datac => \ADDR~combout\(0),
	datad => \inst|inst18|dffs\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~149_combout\);

-- Location: LCCOMB_X22_Y20_N22
\inst|inst1|LPM_MUX_component|auto_generated|_~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~150_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~147_combout\) # ((!\ADDR~combout\(2) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~148_combout\) # 
-- (\inst|inst1|LPM_MUX_component|auto_generated|_~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~148_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~147_combout\,
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~149_combout\,
	datad => \ADDR~combout\(2),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~150_combout\);

-- Location: LCCOMB_X24_Y21_N26
\inst|inst24|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst24|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & ((\inst|inst25|dffs\(0)))) # (!\inst|inst122~combout\ & (\inst|inst21|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|dffs\(0),
	datab => \inst|inst25|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst24|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X24_Y21_N27
\inst|inst23|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst24|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst23|dffs\(0));

-- Location: LCCOMB_X24_Y21_N20
\inst|inst27|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst27|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst26|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst23|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst26|dffs\(0),
	datab => \inst|inst23|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst27|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X24_Y21_N21
\inst|inst25|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst27|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst25|dffs\(0));

-- Location: LCCOMB_X23_Y21_N0
\inst|inst28|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst28|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst29|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst25|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst29|dffs\(0),
	datab => \inst|inst25|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst28|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X23_Y21_N1
\inst|inst26|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst28|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[13]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst26|dffs\(0));

-- Location: LCCOMB_X23_Y21_N18
\inst|inst31|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst31|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst30|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst26|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|dffs\(0),
	datab => \inst|inst26|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst31|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X23_Y21_N19
\inst|inst29|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst31|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[14]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst29|dffs\(0));

-- Location: LCCOMB_X23_Y20_N20
\inst|inst32|$00000|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst32|$00000|auto_generated|result_node[0]~5_combout\ = (\inst|inst122~combout\ & (\inst|inst33|dffs\(0))) # (!\inst|inst122~combout\ & ((\inst|inst29|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33|dffs\(0),
	datab => \inst|inst29|dffs\(0),
	datad => \inst|inst122~combout\,
	combout => \inst|inst32|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X23_Y20_N21
\inst|inst30|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|inst32|$00000|auto_generated|result_node[0]~5_combout\,
	sdata => \inst|inst113~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => \inst|inst113~combout\,
	ena => \inst|inst130|LPM_MUX_component|auto_generated|result_node[15]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst30|dffs\(0));

-- Location: LCCOMB_X22_Y21_N14
\inst|inst1|LPM_MUX_component|auto_generated|_~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~139_combout\ = (\ADDR~combout\(1) & (\ADDR~combout\(0))) # (!\ADDR~combout\(1) & ((\ADDR~combout\(0) & ((\inst|inst29|dffs\(0)))) # (!\ADDR~combout\(0) & (\inst|inst30|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \ADDR~combout\(0),
	datac => \inst|inst30|dffs\(0),
	datad => \inst|inst29|dffs\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~139_combout\);

-- Location: LCCOMB_X22_Y21_N12
\inst|inst1|LPM_MUX_component|auto_generated|_~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~140_combout\ = (\ADDR~combout\(1) & ((\inst|inst1|LPM_MUX_component|auto_generated|_~139_combout\ & ((\inst|inst25|dffs\(0)))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~139_combout\ & 
-- (\inst|inst26|dffs\(0))))) # (!\ADDR~combout\(1) & (\inst|inst1|LPM_MUX_component|auto_generated|_~139_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(1),
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~139_combout\,
	datac => \inst|inst26|dffs\(0),
	datad => \inst|inst25|dffs\(0),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~140_combout\);

-- Location: LCCOMB_X22_Y21_N26
\inst|inst1|LPM_MUX_component|auto_generated|_~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~141_combout\ = (\ADDR~combout\(2) & (!\ADDR~combout\(3) & (\ADDR~combout\(5) & \inst|inst1|LPM_MUX_component|auto_generated|_~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR~combout\(2),
	datab => \ADDR~combout\(3),
	datac => \ADDR~combout\(5),
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~140_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~141_combout\);

-- Location: LCCOMB_X22_Y20_N2
\inst|inst1|LPM_MUX_component|auto_generated|_~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~144_combout\ = (\ADDR~combout\(5) & ((\ADDR~combout\(4)) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~143_combout\ & \inst|inst1|LPM_MUX_component|auto_generated|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~143_combout\,
	datab => \ADDR~combout\(4),
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~16_combout\,
	datad => \ADDR~combout\(5),
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~144_combout\);

-- Location: LCCOMB_X22_Y20_N8
\inst|inst1|LPM_MUX_component|auto_generated|_~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|_~151_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|_~141_combout\) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~144_combout\) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~35_combout\ & 
-- \inst|inst1|LPM_MUX_component|auto_generated|_~150_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|_~35_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~150_combout\,
	datac => \inst|inst1|LPM_MUX_component|auto_generated|_~141_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~144_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|_~151_combout\);

-- Location: LCCOMB_X21_Y25_N20
\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~102_combout\ = (\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~93_combout\) # ((\inst|inst1|LPM_MUX_component|auto_generated|_~151_combout\ & 
-- ((\inst|inst1|LPM_MUX_component|auto_generated|_~157_combout\))) # (!\inst|inst1|LPM_MUX_component|auto_generated|_~151_combout\ & (\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~101_combout\,
	datab => \inst|inst1|LPM_MUX_component|auto_generated|_~157_combout\,
	datac => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~93_combout\,
	datad => \inst|inst1|LPM_MUX_component|auto_generated|_~151_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~102_combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\EMPTY~I\ : cycloneii_io
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
	datain => \inst|ALT_INV_inst121~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EMPTY);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FULL~I\ : cycloneii_io
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
	datain => \inst|inst125|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FULL);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM[5]~I\ : cycloneii_io
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
	datain => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM(5));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM[4]~I\ : cycloneii_io
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
	datain => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM(4));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM[3]~I\ : cycloneii_io
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
	datain => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM(3));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM[2]~I\ : cycloneii_io
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
	datain => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM(2));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM[1]~I\ : cycloneii_io
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
	datain => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM(1));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NUM[0]~I\ : cycloneii_io
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
	datain => \inst|inst108|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NUM(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALUE[5]~I\ : cycloneii_io
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
	datain => \inst|inst1|LPM_MUX_component|auto_generated|result_node[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALUE(5));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALUE[4]~I\ : cycloneii_io
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
	datain => \inst|inst1|LPM_MUX_component|auto_generated|result_node[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALUE(4));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALUE[3]~I\ : cycloneii_io
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
	datain => \inst|inst1|LPM_MUX_component|auto_generated|result_node[3]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALUE(3));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALUE[2]~I\ : cycloneii_io
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
	datain => \inst|inst1|LPM_MUX_component|auto_generated|result_node[2]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALUE(2));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALUE[1]~I\ : cycloneii_io
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
	datain => \inst|inst1|LPM_MUX_component|auto_generated|result_node[1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALUE(1));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALUE[0]~I\ : cycloneii_io
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
	datain => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALUE(0));
END structure;


