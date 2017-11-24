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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"
-- CREATED		"Mon Nov 20 13:44:59 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY MOD13 IS 
	PORT
	(
		A :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		FLOOR :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		OUTPUT :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END MOD13;

ARCHITECTURE bdf_type OF MOD13 IS 

COMPONENT floor13
	PORT(INPUT : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 OUTPUT : OUT STD_LOGIC_VECTOR(8 DOWNTO 6)
	);
END COMPONENT;

COMPONENT time13
	PORT(INPUT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 OUTPUT : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT \2c7bits\
	PORT(INPUT : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 OUTPUT : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT g08_adder
	PORT(A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 Cout : OUT STD_LOGIC;
		 SUM : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	gdfx_temp0 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	gdfx_temp1 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	GND :  STD_LOGIC;
SIGNAL	INT :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	OUTPUT_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SUB :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(6 DOWNTO 0);

SIGNAL	GDFX_TEMP_SIGNAL_0 :  STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN 

OUTPUT_ALTERA_SYNTHESIZED(3) <= GDFX_TEMP_SIGNAL_0(7);
OUTPUT_ALTERA_SYNTHESIZED(2) <= GDFX_TEMP_SIGNAL_0(6);
OUTPUT_ALTERA_SYNTHESIZED(1) <= GDFX_TEMP_SIGNAL_0(5);
OUTPUT_ALTERA_SYNTHESIZED(0) <= GDFX_TEMP_SIGNAL_0(4);



b2v_inst : floor13
PORT MAP(INPUT => A,
		 OUTPUT => INT);



b2v_inst3 : time13
PORT MAP(INPUT => INT,
		 OUTPUT => SYNTHESIZED_WIRE_0);


b2v_inst5 : \2c7bits\
PORT MAP(INPUT => SYNTHESIZED_WIRE_0,
		 OUTPUT => SUB);


b2v_inst7 : g08_adder
PORT MAP(A => gdfx_temp0,
		 B => gdfx_temp1,
		 SUM => GDFX_TEMP_SIGNAL_0);



FLOOR(3) <= GND;
FLOOR(2 DOWNTO 0) <= INT;
OUTPUT <= OUTPUT_ALTERA_SYNTHESIZED;

gdfx_temp0(0) <= A(0);
gdfx_temp0(1) <= A(1);
gdfx_temp0(2) <= A(2);
gdfx_temp0(3) <= A(3);
gdfx_temp0(4) <= A(4);
gdfx_temp0(5) <= A(5);
gdfx_temp0(6) <= '0';
gdfx_temp0(7) <= '0';
gdfx_temp1(6) <= '0';
gdfx_temp1(7) <= '0';
GND <= '0';
END bdf_type;