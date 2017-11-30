-- megafunction wizard: %LPM_MUX%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_MUX 

-- ============================================================
-- File Name: lpm_mux0.vhd
-- Megafunction Name(s):
-- 			LPM_MUX
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.0.1 Build 232 06/12/2013 SP 1 SJ Full Version
-- ************************************************************


--Copyright (C) 1991-2013 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.lpm_components.all;

ENTITY lpm_mux0 IS
	PORT
	(
		data0x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data10x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data11x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data12x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data13x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data14x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data15x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data16x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data17x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data18x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data19x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data1x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data20x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data21x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data22x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data23x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data24x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data25x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data26x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data27x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data28x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data29x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data2x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data30x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data31x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data32x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data33x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data34x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data35x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data36x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data37x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data38x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data39x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data3x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data40x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data41x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data42x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data43x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data44x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data45x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data46x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data47x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data48x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data49x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data4x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data50x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data51x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data5x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data6x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data7x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data8x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		data9x		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		sel		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
	);
END lpm_mux0;


ARCHITECTURE SYN OF lpm_mux0 IS

--	type STD_LOGIC_2D is array (NATURAL RANGE <>, NATURAL RANGE <>) of STD_LOGIC;

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire2	: STD_LOGIC_2D (51 DOWNTO 0, 5 DOWNTO 0);
	SIGNAL sub_wire3	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire4	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire5	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire6	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire7	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire8	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire9	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire10	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire11	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire12	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire13	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire14	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire15	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire16	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire17	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire18	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire19	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire20	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire21	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire22	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire23	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire24	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire25	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire26	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire27	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire28	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire29	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire30	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire31	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire32	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire33	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire34	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire35	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire36	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire37	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire38	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire39	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire40	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire41	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire42	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire43	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire44	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire45	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire46	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire47	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire48	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire49	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire50	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire51	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire52	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	SIGNAL sub_wire53	: STD_LOGIC_VECTOR (5 DOWNTO 0);

BEGIN
	sub_wire53    <= data0x(5 DOWNTO 0);
	sub_wire52    <= data1x(5 DOWNTO 0);
	sub_wire51    <= data2x(5 DOWNTO 0);
	sub_wire50    <= data3x(5 DOWNTO 0);
	sub_wire49    <= data4x(5 DOWNTO 0);
	sub_wire48    <= data5x(5 DOWNTO 0);
	sub_wire47    <= data6x(5 DOWNTO 0);
	sub_wire46    <= data7x(5 DOWNTO 0);
	sub_wire45    <= data8x(5 DOWNTO 0);
	sub_wire44    <= data9x(5 DOWNTO 0);
	sub_wire43    <= data10x(5 DOWNTO 0);
	sub_wire42    <= data11x(5 DOWNTO 0);
	sub_wire41    <= data12x(5 DOWNTO 0);
	sub_wire40    <= data13x(5 DOWNTO 0);
	sub_wire39    <= data14x(5 DOWNTO 0);
	sub_wire38    <= data15x(5 DOWNTO 0);
	sub_wire37    <= data16x(5 DOWNTO 0);
	sub_wire36    <= data17x(5 DOWNTO 0);
	sub_wire35    <= data18x(5 DOWNTO 0);
	sub_wire34    <= data19x(5 DOWNTO 0);
	sub_wire33    <= data20x(5 DOWNTO 0);
	sub_wire32    <= data21x(5 DOWNTO 0);
	sub_wire31    <= data22x(5 DOWNTO 0);
	sub_wire30    <= data23x(5 DOWNTO 0);
	sub_wire29    <= data24x(5 DOWNTO 0);
	sub_wire28    <= data25x(5 DOWNTO 0);
	sub_wire27    <= data26x(5 DOWNTO 0);
	sub_wire26    <= data27x(5 DOWNTO 0);
	sub_wire25    <= data28x(5 DOWNTO 0);
	sub_wire24    <= data29x(5 DOWNTO 0);
	sub_wire23    <= data30x(5 DOWNTO 0);
	sub_wire22    <= data31x(5 DOWNTO 0);
	sub_wire21    <= data32x(5 DOWNTO 0);
	sub_wire20    <= data33x(5 DOWNTO 0);
	sub_wire19    <= data34x(5 DOWNTO 0);
	sub_wire18    <= data35x(5 DOWNTO 0);
	sub_wire17    <= data36x(5 DOWNTO 0);
	sub_wire16    <= data37x(5 DOWNTO 0);
	sub_wire15    <= data38x(5 DOWNTO 0);
	sub_wire14    <= data39x(5 DOWNTO 0);
	sub_wire13    <= data40x(5 DOWNTO 0);
	sub_wire12    <= data41x(5 DOWNTO 0);
	sub_wire11    <= data42x(5 DOWNTO 0);
	sub_wire10    <= data43x(5 DOWNTO 0);
	sub_wire9    <= data44x(5 DOWNTO 0);
	sub_wire8    <= data45x(5 DOWNTO 0);
	sub_wire7    <= data46x(5 DOWNTO 0);
	sub_wire6    <= data47x(5 DOWNTO 0);
	sub_wire5    <= data48x(5 DOWNTO 0);
	sub_wire4    <= data49x(5 DOWNTO 0);
	sub_wire3    <= data50x(5 DOWNTO 0);
	result    <= sub_wire0(5 DOWNTO 0);
	sub_wire1    <= data51x(5 DOWNTO 0);
	sub_wire2(51, 0)    <= sub_wire1(0);
	sub_wire2(51, 1)    <= sub_wire1(1);
	sub_wire2(51, 2)    <= sub_wire1(2);
	sub_wire2(51, 3)    <= sub_wire1(3);
	sub_wire2(51, 4)    <= sub_wire1(4);
	sub_wire2(51, 5)    <= sub_wire1(5);
	sub_wire2(50, 0)    <= sub_wire3(0);
	sub_wire2(50, 1)    <= sub_wire3(1);
	sub_wire2(50, 2)    <= sub_wire3(2);
	sub_wire2(50, 3)    <= sub_wire3(3);
	sub_wire2(50, 4)    <= sub_wire3(4);
	sub_wire2(50, 5)    <= sub_wire3(5);
	sub_wire2(49, 0)    <= sub_wire4(0);
	sub_wire2(49, 1)    <= sub_wire4(1);
	sub_wire2(49, 2)    <= sub_wire4(2);
	sub_wire2(49, 3)    <= sub_wire4(3);
	sub_wire2(49, 4)    <= sub_wire4(4);
	sub_wire2(49, 5)    <= sub_wire4(5);
	sub_wire2(48, 0)    <= sub_wire5(0);
	sub_wire2(48, 1)    <= sub_wire5(1);
	sub_wire2(48, 2)    <= sub_wire5(2);
	sub_wire2(48, 3)    <= sub_wire5(3);
	sub_wire2(48, 4)    <= sub_wire5(4);
	sub_wire2(48, 5)    <= sub_wire5(5);
	sub_wire2(47, 0)    <= sub_wire6(0);
	sub_wire2(47, 1)    <= sub_wire6(1);
	sub_wire2(47, 2)    <= sub_wire6(2);
	sub_wire2(47, 3)    <= sub_wire6(3);
	sub_wire2(47, 4)    <= sub_wire6(4);
	sub_wire2(47, 5)    <= sub_wire6(5);
	sub_wire2(46, 0)    <= sub_wire7(0);
	sub_wire2(46, 1)    <= sub_wire7(1);
	sub_wire2(46, 2)    <= sub_wire7(2);
	sub_wire2(46, 3)    <= sub_wire7(3);
	sub_wire2(46, 4)    <= sub_wire7(4);
	sub_wire2(46, 5)    <= sub_wire7(5);
	sub_wire2(45, 0)    <= sub_wire8(0);
	sub_wire2(45, 1)    <= sub_wire8(1);
	sub_wire2(45, 2)    <= sub_wire8(2);
	sub_wire2(45, 3)    <= sub_wire8(3);
	sub_wire2(45, 4)    <= sub_wire8(4);
	sub_wire2(45, 5)    <= sub_wire8(5);
	sub_wire2(44, 0)    <= sub_wire9(0);
	sub_wire2(44, 1)    <= sub_wire9(1);
	sub_wire2(44, 2)    <= sub_wire9(2);
	sub_wire2(44, 3)    <= sub_wire9(3);
	sub_wire2(44, 4)    <= sub_wire9(4);
	sub_wire2(44, 5)    <= sub_wire9(5);
	sub_wire2(43, 0)    <= sub_wire10(0);
	sub_wire2(43, 1)    <= sub_wire10(1);
	sub_wire2(43, 2)    <= sub_wire10(2);
	sub_wire2(43, 3)    <= sub_wire10(3);
	sub_wire2(43, 4)    <= sub_wire10(4);
	sub_wire2(43, 5)    <= sub_wire10(5);
	sub_wire2(42, 0)    <= sub_wire11(0);
	sub_wire2(42, 1)    <= sub_wire11(1);
	sub_wire2(42, 2)    <= sub_wire11(2);
	sub_wire2(42, 3)    <= sub_wire11(3);
	sub_wire2(42, 4)    <= sub_wire11(4);
	sub_wire2(42, 5)    <= sub_wire11(5);
	sub_wire2(41, 0)    <= sub_wire12(0);
	sub_wire2(41, 1)    <= sub_wire12(1);
	sub_wire2(41, 2)    <= sub_wire12(2);
	sub_wire2(41, 3)    <= sub_wire12(3);
	sub_wire2(41, 4)    <= sub_wire12(4);
	sub_wire2(41, 5)    <= sub_wire12(5);
	sub_wire2(40, 0)    <= sub_wire13(0);
	sub_wire2(40, 1)    <= sub_wire13(1);
	sub_wire2(40, 2)    <= sub_wire13(2);
	sub_wire2(40, 3)    <= sub_wire13(3);
	sub_wire2(40, 4)    <= sub_wire13(4);
	sub_wire2(40, 5)    <= sub_wire13(5);
	sub_wire2(39, 0)    <= sub_wire14(0);
	sub_wire2(39, 1)    <= sub_wire14(1);
	sub_wire2(39, 2)    <= sub_wire14(2);
	sub_wire2(39, 3)    <= sub_wire14(3);
	sub_wire2(39, 4)    <= sub_wire14(4);
	sub_wire2(39, 5)    <= sub_wire14(5);
	sub_wire2(38, 0)    <= sub_wire15(0);
	sub_wire2(38, 1)    <= sub_wire15(1);
	sub_wire2(38, 2)    <= sub_wire15(2);
	sub_wire2(38, 3)    <= sub_wire15(3);
	sub_wire2(38, 4)    <= sub_wire15(4);
	sub_wire2(38, 5)    <= sub_wire15(5);
	sub_wire2(37, 0)    <= sub_wire16(0);
	sub_wire2(37, 1)    <= sub_wire16(1);
	sub_wire2(37, 2)    <= sub_wire16(2);
	sub_wire2(37, 3)    <= sub_wire16(3);
	sub_wire2(37, 4)    <= sub_wire16(4);
	sub_wire2(37, 5)    <= sub_wire16(5);
	sub_wire2(36, 0)    <= sub_wire17(0);
	sub_wire2(36, 1)    <= sub_wire17(1);
	sub_wire2(36, 2)    <= sub_wire17(2);
	sub_wire2(36, 3)    <= sub_wire17(3);
	sub_wire2(36, 4)    <= sub_wire17(4);
	sub_wire2(36, 5)    <= sub_wire17(5);
	sub_wire2(35, 0)    <= sub_wire18(0);
	sub_wire2(35, 1)    <= sub_wire18(1);
	sub_wire2(35, 2)    <= sub_wire18(2);
	sub_wire2(35, 3)    <= sub_wire18(3);
	sub_wire2(35, 4)    <= sub_wire18(4);
	sub_wire2(35, 5)    <= sub_wire18(5);
	sub_wire2(34, 0)    <= sub_wire19(0);
	sub_wire2(34, 1)    <= sub_wire19(1);
	sub_wire2(34, 2)    <= sub_wire19(2);
	sub_wire2(34, 3)    <= sub_wire19(3);
	sub_wire2(34, 4)    <= sub_wire19(4);
	sub_wire2(34, 5)    <= sub_wire19(5);
	sub_wire2(33, 0)    <= sub_wire20(0);
	sub_wire2(33, 1)    <= sub_wire20(1);
	sub_wire2(33, 2)    <= sub_wire20(2);
	sub_wire2(33, 3)    <= sub_wire20(3);
	sub_wire2(33, 4)    <= sub_wire20(4);
	sub_wire2(33, 5)    <= sub_wire20(5);
	sub_wire2(32, 0)    <= sub_wire21(0);
	sub_wire2(32, 1)    <= sub_wire21(1);
	sub_wire2(32, 2)    <= sub_wire21(2);
	sub_wire2(32, 3)    <= sub_wire21(3);
	sub_wire2(32, 4)    <= sub_wire21(4);
	sub_wire2(32, 5)    <= sub_wire21(5);
	sub_wire2(31, 0)    <= sub_wire22(0);
	sub_wire2(31, 1)    <= sub_wire22(1);
	sub_wire2(31, 2)    <= sub_wire22(2);
	sub_wire2(31, 3)    <= sub_wire22(3);
	sub_wire2(31, 4)    <= sub_wire22(4);
	sub_wire2(31, 5)    <= sub_wire22(5);
	sub_wire2(30, 0)    <= sub_wire23(0);
	sub_wire2(30, 1)    <= sub_wire23(1);
	sub_wire2(30, 2)    <= sub_wire23(2);
	sub_wire2(30, 3)    <= sub_wire23(3);
	sub_wire2(30, 4)    <= sub_wire23(4);
	sub_wire2(30, 5)    <= sub_wire23(5);
	sub_wire2(29, 0)    <= sub_wire24(0);
	sub_wire2(29, 1)    <= sub_wire24(1);
	sub_wire2(29, 2)    <= sub_wire24(2);
	sub_wire2(29, 3)    <= sub_wire24(3);
	sub_wire2(29, 4)    <= sub_wire24(4);
	sub_wire2(29, 5)    <= sub_wire24(5);
	sub_wire2(28, 0)    <= sub_wire25(0);
	sub_wire2(28, 1)    <= sub_wire25(1);
	sub_wire2(28, 2)    <= sub_wire25(2);
	sub_wire2(28, 3)    <= sub_wire25(3);
	sub_wire2(28, 4)    <= sub_wire25(4);
	sub_wire2(28, 5)    <= sub_wire25(5);
	sub_wire2(27, 0)    <= sub_wire26(0);
	sub_wire2(27, 1)    <= sub_wire26(1);
	sub_wire2(27, 2)    <= sub_wire26(2);
	sub_wire2(27, 3)    <= sub_wire26(3);
	sub_wire2(27, 4)    <= sub_wire26(4);
	sub_wire2(27, 5)    <= sub_wire26(5);
	sub_wire2(26, 0)    <= sub_wire27(0);
	sub_wire2(26, 1)    <= sub_wire27(1);
	sub_wire2(26, 2)    <= sub_wire27(2);
	sub_wire2(26, 3)    <= sub_wire27(3);
	sub_wire2(26, 4)    <= sub_wire27(4);
	sub_wire2(26, 5)    <= sub_wire27(5);
	sub_wire2(25, 0)    <= sub_wire28(0);
	sub_wire2(25, 1)    <= sub_wire28(1);
	sub_wire2(25, 2)    <= sub_wire28(2);
	sub_wire2(25, 3)    <= sub_wire28(3);
	sub_wire2(25, 4)    <= sub_wire28(4);
	sub_wire2(25, 5)    <= sub_wire28(5);
	sub_wire2(24, 0)    <= sub_wire29(0);
	sub_wire2(24, 1)    <= sub_wire29(1);
	sub_wire2(24, 2)    <= sub_wire29(2);
	sub_wire2(24, 3)    <= sub_wire29(3);
	sub_wire2(24, 4)    <= sub_wire29(4);
	sub_wire2(24, 5)    <= sub_wire29(5);
	sub_wire2(23, 0)    <= sub_wire30(0);
	sub_wire2(23, 1)    <= sub_wire30(1);
	sub_wire2(23, 2)    <= sub_wire30(2);
	sub_wire2(23, 3)    <= sub_wire30(3);
	sub_wire2(23, 4)    <= sub_wire30(4);
	sub_wire2(23, 5)    <= sub_wire30(5);
	sub_wire2(22, 0)    <= sub_wire31(0);
	sub_wire2(22, 1)    <= sub_wire31(1);
	sub_wire2(22, 2)    <= sub_wire31(2);
	sub_wire2(22, 3)    <= sub_wire31(3);
	sub_wire2(22, 4)    <= sub_wire31(4);
	sub_wire2(22, 5)    <= sub_wire31(5);
	sub_wire2(21, 0)    <= sub_wire32(0);
	sub_wire2(21, 1)    <= sub_wire32(1);
	sub_wire2(21, 2)    <= sub_wire32(2);
	sub_wire2(21, 3)    <= sub_wire32(3);
	sub_wire2(21, 4)    <= sub_wire32(4);
	sub_wire2(21, 5)    <= sub_wire32(5);
	sub_wire2(20, 0)    <= sub_wire33(0);
	sub_wire2(20, 1)    <= sub_wire33(1);
	sub_wire2(20, 2)    <= sub_wire33(2);
	sub_wire2(20, 3)    <= sub_wire33(3);
	sub_wire2(20, 4)    <= sub_wire33(4);
	sub_wire2(20, 5)    <= sub_wire33(5);
	sub_wire2(19, 0)    <= sub_wire34(0);
	sub_wire2(19, 1)    <= sub_wire34(1);
	sub_wire2(19, 2)    <= sub_wire34(2);
	sub_wire2(19, 3)    <= sub_wire34(3);
	sub_wire2(19, 4)    <= sub_wire34(4);
	sub_wire2(19, 5)    <= sub_wire34(5);
	sub_wire2(18, 0)    <= sub_wire35(0);
	sub_wire2(18, 1)    <= sub_wire35(1);
	sub_wire2(18, 2)    <= sub_wire35(2);
	sub_wire2(18, 3)    <= sub_wire35(3);
	sub_wire2(18, 4)    <= sub_wire35(4);
	sub_wire2(18, 5)    <= sub_wire35(5);
	sub_wire2(17, 0)    <= sub_wire36(0);
	sub_wire2(17, 1)    <= sub_wire36(1);
	sub_wire2(17, 2)    <= sub_wire36(2);
	sub_wire2(17, 3)    <= sub_wire36(3);
	sub_wire2(17, 4)    <= sub_wire36(4);
	sub_wire2(17, 5)    <= sub_wire36(5);
	sub_wire2(16, 0)    <= sub_wire37(0);
	sub_wire2(16, 1)    <= sub_wire37(1);
	sub_wire2(16, 2)    <= sub_wire37(2);
	sub_wire2(16, 3)    <= sub_wire37(3);
	sub_wire2(16, 4)    <= sub_wire37(4);
	sub_wire2(16, 5)    <= sub_wire37(5);
	sub_wire2(15, 0)    <= sub_wire38(0);
	sub_wire2(15, 1)    <= sub_wire38(1);
	sub_wire2(15, 2)    <= sub_wire38(2);
	sub_wire2(15, 3)    <= sub_wire38(3);
	sub_wire2(15, 4)    <= sub_wire38(4);
	sub_wire2(15, 5)    <= sub_wire38(5);
	sub_wire2(14, 0)    <= sub_wire39(0);
	sub_wire2(14, 1)    <= sub_wire39(1);
	sub_wire2(14, 2)    <= sub_wire39(2);
	sub_wire2(14, 3)    <= sub_wire39(3);
	sub_wire2(14, 4)    <= sub_wire39(4);
	sub_wire2(14, 5)    <= sub_wire39(5);
	sub_wire2(13, 0)    <= sub_wire40(0);
	sub_wire2(13, 1)    <= sub_wire40(1);
	sub_wire2(13, 2)    <= sub_wire40(2);
	sub_wire2(13, 3)    <= sub_wire40(3);
	sub_wire2(13, 4)    <= sub_wire40(4);
	sub_wire2(13, 5)    <= sub_wire40(5);
	sub_wire2(12, 0)    <= sub_wire41(0);
	sub_wire2(12, 1)    <= sub_wire41(1);
	sub_wire2(12, 2)    <= sub_wire41(2);
	sub_wire2(12, 3)    <= sub_wire41(3);
	sub_wire2(12, 4)    <= sub_wire41(4);
	sub_wire2(12, 5)    <= sub_wire41(5);
	sub_wire2(11, 0)    <= sub_wire42(0);
	sub_wire2(11, 1)    <= sub_wire42(1);
	sub_wire2(11, 2)    <= sub_wire42(2);
	sub_wire2(11, 3)    <= sub_wire42(3);
	sub_wire2(11, 4)    <= sub_wire42(4);
	sub_wire2(11, 5)    <= sub_wire42(5);
	sub_wire2(10, 0)    <= sub_wire43(0);
	sub_wire2(10, 1)    <= sub_wire43(1);
	sub_wire2(10, 2)    <= sub_wire43(2);
	sub_wire2(10, 3)    <= sub_wire43(3);
	sub_wire2(10, 4)    <= sub_wire43(4);
	sub_wire2(10, 5)    <= sub_wire43(5);
	sub_wire2(9, 0)    <= sub_wire44(0);
	sub_wire2(9, 1)    <= sub_wire44(1);
	sub_wire2(9, 2)    <= sub_wire44(2);
	sub_wire2(9, 3)    <= sub_wire44(3);
	sub_wire2(9, 4)    <= sub_wire44(4);
	sub_wire2(9, 5)    <= sub_wire44(5);
	sub_wire2(8, 0)    <= sub_wire45(0);
	sub_wire2(8, 1)    <= sub_wire45(1);
	sub_wire2(8, 2)    <= sub_wire45(2);
	sub_wire2(8, 3)    <= sub_wire45(3);
	sub_wire2(8, 4)    <= sub_wire45(4);
	sub_wire2(8, 5)    <= sub_wire45(5);
	sub_wire2(7, 0)    <= sub_wire46(0);
	sub_wire2(7, 1)    <= sub_wire46(1);
	sub_wire2(7, 2)    <= sub_wire46(2);
	sub_wire2(7, 3)    <= sub_wire46(3);
	sub_wire2(7, 4)    <= sub_wire46(4);
	sub_wire2(7, 5)    <= sub_wire46(5);
	sub_wire2(6, 0)    <= sub_wire47(0);
	sub_wire2(6, 1)    <= sub_wire47(1);
	sub_wire2(6, 2)    <= sub_wire47(2);
	sub_wire2(6, 3)    <= sub_wire47(3);
	sub_wire2(6, 4)    <= sub_wire47(4);
	sub_wire2(6, 5)    <= sub_wire47(5);
	sub_wire2(5, 0)    <= sub_wire48(0);
	sub_wire2(5, 1)    <= sub_wire48(1);
	sub_wire2(5, 2)    <= sub_wire48(2);
	sub_wire2(5, 3)    <= sub_wire48(3);
	sub_wire2(5, 4)    <= sub_wire48(4);
	sub_wire2(5, 5)    <= sub_wire48(5);
	sub_wire2(4, 0)    <= sub_wire49(0);
	sub_wire2(4, 1)    <= sub_wire49(1);
	sub_wire2(4, 2)    <= sub_wire49(2);
	sub_wire2(4, 3)    <= sub_wire49(3);
	sub_wire2(4, 4)    <= sub_wire49(4);
	sub_wire2(4, 5)    <= sub_wire49(5);
	sub_wire2(3, 0)    <= sub_wire50(0);
	sub_wire2(3, 1)    <= sub_wire50(1);
	sub_wire2(3, 2)    <= sub_wire50(2);
	sub_wire2(3, 3)    <= sub_wire50(3);
	sub_wire2(3, 4)    <= sub_wire50(4);
	sub_wire2(3, 5)    <= sub_wire50(5);
	sub_wire2(2, 0)    <= sub_wire51(0);
	sub_wire2(2, 1)    <= sub_wire51(1);
	sub_wire2(2, 2)    <= sub_wire51(2);
	sub_wire2(2, 3)    <= sub_wire51(3);
	sub_wire2(2, 4)    <= sub_wire51(4);
	sub_wire2(2, 5)    <= sub_wire51(5);
	sub_wire2(1, 0)    <= sub_wire52(0);
	sub_wire2(1, 1)    <= sub_wire52(1);
	sub_wire2(1, 2)    <= sub_wire52(2);
	sub_wire2(1, 3)    <= sub_wire52(3);
	sub_wire2(1, 4)    <= sub_wire52(4);
	sub_wire2(1, 5)    <= sub_wire52(5);
	sub_wire2(0, 0)    <= sub_wire53(0);
	sub_wire2(0, 1)    <= sub_wire53(1);
	sub_wire2(0, 2)    <= sub_wire53(2);
	sub_wire2(0, 3)    <= sub_wire53(3);
	sub_wire2(0, 4)    <= sub_wire53(4);
	sub_wire2(0, 5)    <= sub_wire53(5);

	LPM_MUX_component : LPM_MUX
	GENERIC MAP (
		lpm_size => 52,
		lpm_type => "LPM_MUX",
		lpm_width => 6,
		lpm_widths => 6
	)
	PORT MAP (
		data => sub_wire2,
		sel => sel,
		result => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_SIZE NUMERIC "52"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MUX"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "6"
-- Retrieval info: CONSTANT: LPM_WIDTHS NUMERIC "6"
-- Retrieval info: USED_PORT: data0x 0 0 6 0 INPUT NODEFVAL "data0x[5..0]"
-- Retrieval info: USED_PORT: data10x 0 0 6 0 INPUT NODEFVAL "data10x[5..0]"
-- Retrieval info: USED_PORT: data11x 0 0 6 0 INPUT NODEFVAL "data11x[5..0]"
-- Retrieval info: USED_PORT: data12x 0 0 6 0 INPUT NODEFVAL "data12x[5..0]"
-- Retrieval info: USED_PORT: data13x 0 0 6 0 INPUT NODEFVAL "data13x[5..0]"
-- Retrieval info: USED_PORT: data14x 0 0 6 0 INPUT NODEFVAL "data14x[5..0]"
-- Retrieval info: USED_PORT: data15x 0 0 6 0 INPUT NODEFVAL "data15x[5..0]"
-- Retrieval info: USED_PORT: data16x 0 0 6 0 INPUT NODEFVAL "data16x[5..0]"
-- Retrieval info: USED_PORT: data17x 0 0 6 0 INPUT NODEFVAL "data17x[5..0]"
-- Retrieval info: USED_PORT: data18x 0 0 6 0 INPUT NODEFVAL "data18x[5..0]"
-- Retrieval info: USED_PORT: data19x 0 0 6 0 INPUT NODEFVAL "data19x[5..0]"
-- Retrieval info: USED_PORT: data1x 0 0 6 0 INPUT NODEFVAL "data1x[5..0]"
-- Retrieval info: USED_PORT: data20x 0 0 6 0 INPUT NODEFVAL "data20x[5..0]"
-- Retrieval info: USED_PORT: data21x 0 0 6 0 INPUT NODEFVAL "data21x[5..0]"
-- Retrieval info: USED_PORT: data22x 0 0 6 0 INPUT NODEFVAL "data22x[5..0]"
-- Retrieval info: USED_PORT: data23x 0 0 6 0 INPUT NODEFVAL "data23x[5..0]"
-- Retrieval info: USED_PORT: data24x 0 0 6 0 INPUT NODEFVAL "data24x[5..0]"
-- Retrieval info: USED_PORT: data25x 0 0 6 0 INPUT NODEFVAL "data25x[5..0]"
-- Retrieval info: USED_PORT: data26x 0 0 6 0 INPUT NODEFVAL "data26x[5..0]"
-- Retrieval info: USED_PORT: data27x 0 0 6 0 INPUT NODEFVAL "data27x[5..0]"
-- Retrieval info: USED_PORT: data28x 0 0 6 0 INPUT NODEFVAL "data28x[5..0]"
-- Retrieval info: USED_PORT: data29x 0 0 6 0 INPUT NODEFVAL "data29x[5..0]"
-- Retrieval info: USED_PORT: data2x 0 0 6 0 INPUT NODEFVAL "data2x[5..0]"
-- Retrieval info: USED_PORT: data30x 0 0 6 0 INPUT NODEFVAL "data30x[5..0]"
-- Retrieval info: USED_PORT: data31x 0 0 6 0 INPUT NODEFVAL "data31x[5..0]"
-- Retrieval info: USED_PORT: data32x 0 0 6 0 INPUT NODEFVAL "data32x[5..0]"
-- Retrieval info: USED_PORT: data33x 0 0 6 0 INPUT NODEFVAL "data33x[5..0]"
-- Retrieval info: USED_PORT: data34x 0 0 6 0 INPUT NODEFVAL "data34x[5..0]"
-- Retrieval info: USED_PORT: data35x 0 0 6 0 INPUT NODEFVAL "data35x[5..0]"
-- Retrieval info: USED_PORT: data36x 0 0 6 0 INPUT NODEFVAL "data36x[5..0]"
-- Retrieval info: USED_PORT: data37x 0 0 6 0 INPUT NODEFVAL "data37x[5..0]"
-- Retrieval info: USED_PORT: data38x 0 0 6 0 INPUT NODEFVAL "data38x[5..0]"
-- Retrieval info: USED_PORT: data39x 0 0 6 0 INPUT NODEFVAL "data39x[5..0]"
-- Retrieval info: USED_PORT: data3x 0 0 6 0 INPUT NODEFVAL "data3x[5..0]"
-- Retrieval info: USED_PORT: data40x 0 0 6 0 INPUT NODEFVAL "data40x[5..0]"
-- Retrieval info: USED_PORT: data41x 0 0 6 0 INPUT NODEFVAL "data41x[5..0]"
-- Retrieval info: USED_PORT: data42x 0 0 6 0 INPUT NODEFVAL "data42x[5..0]"
-- Retrieval info: USED_PORT: data43x 0 0 6 0 INPUT NODEFVAL "data43x[5..0]"
-- Retrieval info: USED_PORT: data44x 0 0 6 0 INPUT NODEFVAL "data44x[5..0]"
-- Retrieval info: USED_PORT: data45x 0 0 6 0 INPUT NODEFVAL "data45x[5..0]"
-- Retrieval info: USED_PORT: data46x 0 0 6 0 INPUT NODEFVAL "data46x[5..0]"
-- Retrieval info: USED_PORT: data47x 0 0 6 0 INPUT NODEFVAL "data47x[5..0]"
-- Retrieval info: USED_PORT: data48x 0 0 6 0 INPUT NODEFVAL "data48x[5..0]"
-- Retrieval info: USED_PORT: data49x 0 0 6 0 INPUT NODEFVAL "data49x[5..0]"
-- Retrieval info: USED_PORT: data4x 0 0 6 0 INPUT NODEFVAL "data4x[5..0]"
-- Retrieval info: USED_PORT: data50x 0 0 6 0 INPUT NODEFVAL "data50x[5..0]"
-- Retrieval info: USED_PORT: data51x 0 0 6 0 INPUT NODEFVAL "data51x[5..0]"
-- Retrieval info: USED_PORT: data5x 0 0 6 0 INPUT NODEFVAL "data5x[5..0]"
-- Retrieval info: USED_PORT: data6x 0 0 6 0 INPUT NODEFVAL "data6x[5..0]"
-- Retrieval info: USED_PORT: data7x 0 0 6 0 INPUT NODEFVAL "data7x[5..0]"
-- Retrieval info: USED_PORT: data8x 0 0 6 0 INPUT NODEFVAL "data8x[5..0]"
-- Retrieval info: USED_PORT: data9x 0 0 6 0 INPUT NODEFVAL "data9x[5..0]"
-- Retrieval info: USED_PORT: result 0 0 6 0 OUTPUT NODEFVAL "result[5..0]"
-- Retrieval info: USED_PORT: sel 0 0 6 0 INPUT NODEFVAL "sel[5..0]"
-- Retrieval info: CONNECT: @data 1 0 6 0 data0x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 10 6 0 data10x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 11 6 0 data11x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 12 6 0 data12x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 13 6 0 data13x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 14 6 0 data14x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 15 6 0 data15x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 16 6 0 data16x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 17 6 0 data17x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 18 6 0 data18x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 19 6 0 data19x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 1 6 0 data1x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 20 6 0 data20x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 21 6 0 data21x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 22 6 0 data22x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 23 6 0 data23x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 24 6 0 data24x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 25 6 0 data25x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 26 6 0 data26x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 27 6 0 data27x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 28 6 0 data28x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 29 6 0 data29x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 2 6 0 data2x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 30 6 0 data30x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 31 6 0 data31x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 32 6 0 data32x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 33 6 0 data33x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 34 6 0 data34x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 35 6 0 data35x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 36 6 0 data36x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 37 6 0 data37x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 38 6 0 data38x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 39 6 0 data39x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 3 6 0 data3x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 40 6 0 data40x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 41 6 0 data41x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 42 6 0 data42x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 43 6 0 data43x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 44 6 0 data44x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 45 6 0 data45x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 46 6 0 data46x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 47 6 0 data47x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 48 6 0 data48x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 49 6 0 data49x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 4 6 0 data4x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 50 6 0 data50x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 51 6 0 data51x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 5 6 0 data5x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 6 6 0 data6x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 7 6 0 data7x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 8 6 0 data8x 0 0 6 0
-- Retrieval info: CONNECT: @data 1 9 6 0 data9x 0 0 6 0
-- Retrieval info: CONNECT: @sel 0 0 6 0 sel 0 0 6 0
-- Retrieval info: CONNECT: result 0 0 6 0 @result 0 0 6 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux0.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux0.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux0.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux0.bsf TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux0_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm
