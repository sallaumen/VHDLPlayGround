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

-- DATE "04/17/2019 16:43:34"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	countInputsAndBrightSequentialLEDs IS
    PORT (
	binary_input_vector : IN std_logic_vector(9 DOWNTO 0);
	binary_output_vector : OUT std_logic_vector(9 DOWNTO 0)
	);
END countInputsAndBrightSequentialLEDs;

-- Design Ports Information
-- binary_output_vector[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_output_vector[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_output_vector[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_output_vector[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_output_vector[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_output_vector[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_output_vector[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_output_vector[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_output_vector[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_output_vector[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF countInputsAndBrightSequentialLEDs IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_binary_input_vector : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_binary_output_vector : std_logic_vector(9 DOWNTO 0);
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \sum_vector[4][2]~0_combout\ : std_logic;
SIGNAL \sum_vector[3][1]~1_combout\ : std_logic;
SIGNAL \sum_vector[3][0]~2_combout\ : std_logic;
SIGNAL \sum_vector[5][2]~3_combout\ : std_logic;
SIGNAL \sum_vector[5][2]~4_combout\ : std_logic;
SIGNAL \sum_vector[5][1]~5_combout\ : std_logic;
SIGNAL \sum_vector[5][0]~6_combout\ : std_logic;
SIGNAL \binary_input_vector[1]~input_o\ : std_logic;
SIGNAL \binary_input_vector[2]~input_o\ : std_logic;
SIGNAL \binary_input_vector[0]~input_o\ : std_logic;
SIGNAL \binary_input_vector[3]~input_o\ : std_logic;
SIGNAL \binary_input_vector[4]~input_o\ : std_logic;
SIGNAL \binary_input_vector[5]~input_o\ : std_logic;
SIGNAL \binary_input_vector[6]~input_o\ : std_logic;
SIGNAL \binary_input_vector[7]~input_o\ : std_logic;
SIGNAL \binary_input_vector[9]~input_o\ : std_logic;
SIGNAL \binary_output_vector[0]~output_o\ : std_logic;
SIGNAL \binary_output_vector[1]~output_o\ : std_logic;
SIGNAL \binary_output_vector[2]~output_o\ : std_logic;
SIGNAL \binary_output_vector[3]~output_o\ : std_logic;
SIGNAL \binary_output_vector[4]~output_o\ : std_logic;
SIGNAL \binary_output_vector[5]~output_o\ : std_logic;
SIGNAL \binary_output_vector[6]~output_o\ : std_logic;
SIGNAL \binary_output_vector[7]~output_o\ : std_logic;
SIGNAL \binary_output_vector[8]~output_o\ : std_logic;
SIGNAL \binary_output_vector[9]~output_o\ : std_logic;
SIGNAL \binary_input_vector[8]~input_o\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add9~19\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \LessThan9~1_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \LessThan9~2_combout\ : std_logic;
SIGNAL \LessThan9~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan9~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan8~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add9~20_combout\ : std_logic;

BEGIN

ww_binary_input_vector <= binary_input_vector;
binary_output_vector <= ww_binary_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_LessThan9~3_combout\ <= NOT \LessThan9~3_combout\;
\ALT_INV_LessThan8~0_combout\ <= NOT \LessThan8~0_combout\;
\ALT_INV_LessThan7~0_combout\ <= NOT \LessThan7~0_combout\;
\ALT_INV_LessThan6~0_combout\ <= NOT \LessThan6~0_combout\;
\ALT_INV_LessThan5~0_combout\ <= NOT \LessThan5~0_combout\;
\ALT_INV_LessThan4~0_combout\ <= NOT \LessThan4~0_combout\;
\ALT_INV_LessThan3~2_combout\ <= NOT \LessThan3~2_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_Add9~20_combout\ <= NOT \Add9~20_combout\;

-- Location: LCCOMB_X1_Y26_N0
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\sum_vector[5][0]~6_combout\ & (\binary_input_vector[6]~input_o\ $ (VCC))) # (!\sum_vector[5][0]~6_combout\ & (\binary_input_vector[6]~input_o\ & VCC))
-- \Add5~1\ = CARRY((\sum_vector[5][0]~6_combout\ & \binary_input_vector[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum_vector[5][0]~6_combout\,
	datab => \binary_input_vector[6]~input_o\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X1_Y26_N2
\Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\sum_vector[5][1]~5_combout\ & (!\Add5~1\)) # (!\sum_vector[5][1]~5_combout\ & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!\sum_vector[5][1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sum_vector[5][1]~5_combout\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X1_Y26_N4
\Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (\sum_vector[5][2]~4_combout\ & (\Add5~3\ $ (GND))) # (!\sum_vector[5][2]~4_combout\ & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((\sum_vector[5][2]~4_combout\ & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum_vector[5][2]~4_combout\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X1_Y26_N6
\Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = \Add5~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add5~5\,
	combout => \Add5~6_combout\);

-- Location: LCCOMB_X1_Y26_N8
\Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (\binary_input_vector[7]~input_o\ & (\Add5~0_combout\ $ (VCC))) # (!\binary_input_vector[7]~input_o\ & (\Add5~0_combout\ & VCC))
-- \Add6~1\ = CARRY((\binary_input_vector[7]~input_o\ & \Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_input_vector[7]~input_o\,
	datab => \Add5~0_combout\,
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X1_Y26_N10
\Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\Add5~2_combout\ & (!\Add6~1\)) # (!\Add5~2_combout\ & ((\Add6~1\) # (GND)))
-- \Add6~3\ = CARRY((!\Add6~1\) # (!\Add5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add5~2_combout\,
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X1_Y26_N12
\Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (\Add5~4_combout\ & (\Add6~3\ $ (GND))) # (!\Add5~4_combout\ & (!\Add6~3\ & VCC))
-- \Add6~5\ = CARRY((\Add5~4_combout\ & !\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add5~4_combout\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X1_Y26_N14
\Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (\Add5~6_combout\ & (!\Add6~5\)) # (!\Add5~6_combout\ & ((\Add6~5\) # (GND)))
-- \Add6~7\ = CARRY((!\Add6~5\) # (!\Add5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add5~6_combout\,
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X1_Y26_N16
\Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = !\Add6~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add6~7\,
	combout => \Add6~8_combout\);

-- Location: LCCOMB_X2_Y26_N6
\Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (\Add6~4_combout\ & (\Add7~3\ $ (GND))) # (!\Add6~4_combout\ & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((\Add6~4_combout\ & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X2_Y26_N8
\Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\Add6~6_combout\ & (!\Add7~5\)) # (!\Add6~6_combout\ & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!\Add6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X2_Y26_N10
\Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (\Add6~8_combout\ & (\Add7~7\ $ (GND))) # (!\Add6~8_combout\ & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((\Add6~8_combout\ & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~8_combout\,
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X2_Y26_N12
\Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = \Add7~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add7~9\,
	combout => \Add7~10_combout\);

-- Location: LCCOMB_X2_Y26_N16
\Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = (\binary_input_vector[9]~input_o\ & (\Add7~0_combout\ $ (VCC))) # (!\binary_input_vector[9]~input_o\ & (\Add7~0_combout\ & VCC))
-- \Add8~1\ = CARRY((\binary_input_vector[9]~input_o\ & \Add7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_input_vector[9]~input_o\,
	datab => \Add7~0_combout\,
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X2_Y26_N18
\Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (\Add7~2_combout\ & (!\Add8~1\)) # (!\Add7~2_combout\ & ((\Add8~1\) # (GND)))
-- \Add8~3\ = CARRY((!\Add8~1\) # (!\Add7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~2_combout\,
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X2_Y25_N20
\Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = (\Add8~12_combout\ & ((GND) # (!\Add9~11\))) # (!\Add8~12_combout\ & (\Add9~11\ $ (GND)))
-- \Add9~13\ = CARRY((\Add8~12_combout\) # (!\Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~12_combout\,
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X1_Y26_N18
\sum_vector[4][2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector[4][2]~0_combout\ = (\binary_input_vector[2]~input_o\ & (\binary_input_vector[0]~input_o\ & (\binary_input_vector[3]~input_o\ & \binary_input_vector[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_input_vector[2]~input_o\,
	datab => \binary_input_vector[0]~input_o\,
	datac => \binary_input_vector[3]~input_o\,
	datad => \binary_input_vector[1]~input_o\,
	combout => \sum_vector[4][2]~0_combout\);

-- Location: LCCOMB_X1_Y26_N28
\sum_vector[3][1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector[3][1]~1_combout\ = (\binary_input_vector[2]~input_o\ & ((\binary_input_vector[0]~input_o\ & ((!\binary_input_vector[1]~input_o\) # (!\binary_input_vector[3]~input_o\))) # (!\binary_input_vector[0]~input_o\ & ((\binary_input_vector[3]~input_o\) 
-- # (\binary_input_vector[1]~input_o\))))) # (!\binary_input_vector[2]~input_o\ & ((\binary_input_vector[0]~input_o\ & ((\binary_input_vector[3]~input_o\) # (\binary_input_vector[1]~input_o\))) # (!\binary_input_vector[0]~input_o\ & 
-- (\binary_input_vector[3]~input_o\ & \binary_input_vector[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_input_vector[2]~input_o\,
	datab => \binary_input_vector[0]~input_o\,
	datac => \binary_input_vector[3]~input_o\,
	datad => \binary_input_vector[1]~input_o\,
	combout => \sum_vector[3][1]~1_combout\);

-- Location: LCCOMB_X1_Y26_N30
\sum_vector[3][0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector[3][0]~2_combout\ = \binary_input_vector[2]~input_o\ $ (\binary_input_vector[0]~input_o\ $ (\binary_input_vector[3]~input_o\ $ (\binary_input_vector[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_input_vector[2]~input_o\,
	datab => \binary_input_vector[0]~input_o\,
	datac => \binary_input_vector[3]~input_o\,
	datad => \binary_input_vector[1]~input_o\,
	combout => \sum_vector[3][0]~2_combout\);

-- Location: LCCOMB_X1_Y26_N24
\sum_vector[5][2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector[5][2]~3_combout\ = (\sum_vector[3][0]~2_combout\ & ((\binary_input_vector[5]~input_o\) # (\binary_input_vector[4]~input_o\))) # (!\sum_vector[3][0]~2_combout\ & (\binary_input_vector[5]~input_o\ & \binary_input_vector[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum_vector[3][0]~2_combout\,
	datab => \binary_input_vector[5]~input_o\,
	datac => \binary_input_vector[4]~input_o\,
	combout => \sum_vector[5][2]~3_combout\);

-- Location: LCCOMB_X1_Y26_N26
\sum_vector[5][2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector[5][2]~4_combout\ = \sum_vector[4][2]~0_combout\ $ (((\sum_vector[5][2]~3_combout\ & \sum_vector[3][1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sum_vector[4][2]~0_combout\,
	datac => \sum_vector[5][2]~3_combout\,
	datad => \sum_vector[3][1]~1_combout\,
	combout => \sum_vector[5][2]~4_combout\);

-- Location: LCCOMB_X1_Y26_N20
\sum_vector[5][1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector[5][1]~5_combout\ = \sum_vector[3][1]~1_combout\ $ (((\sum_vector[3][0]~2_combout\ & ((\binary_input_vector[5]~input_o\) # (\binary_input_vector[4]~input_o\))) # (!\sum_vector[3][0]~2_combout\ & (\binary_input_vector[5]~input_o\ & 
-- \binary_input_vector[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum_vector[3][0]~2_combout\,
	datab => \binary_input_vector[5]~input_o\,
	datac => \binary_input_vector[4]~input_o\,
	datad => \sum_vector[3][1]~1_combout\,
	combout => \sum_vector[5][1]~5_combout\);

-- Location: LCCOMB_X1_Y26_N22
\sum_vector[5][0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector[5][0]~6_combout\ = \sum_vector[3][0]~2_combout\ $ (\binary_input_vector[5]~input_o\ $ (\binary_input_vector[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum_vector[3][0]~2_combout\,
	datab => \binary_input_vector[5]~input_o\,
	datac => \binary_input_vector[4]~input_o\,
	combout => \sum_vector[5][0]~6_combout\);

-- Location: IOIBUF_X0_Y27_N1
\binary_input_vector[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binary_input_vector(1),
	o => \binary_input_vector[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\binary_input_vector[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binary_input_vector(2),
	o => \binary_input_vector[2]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\binary_input_vector[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binary_input_vector(0),
	o => \binary_input_vector[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\binary_input_vector[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binary_input_vector(3),
	o => \binary_input_vector[3]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\binary_input_vector[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binary_input_vector(4),
	o => \binary_input_vector[4]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\binary_input_vector[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binary_input_vector(5),
	o => \binary_input_vector[5]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\binary_input_vector[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binary_input_vector(6),
	o => \binary_input_vector[6]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\binary_input_vector[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binary_input_vector(7),
	o => \binary_input_vector[7]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\binary_input_vector[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binary_input_vector(9),
	o => \binary_input_vector[9]~input_o\);

-- Location: IOOBUF_X0_Y20_N9
\binary_output_vector[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Add9~20_combout\,
	devoe => ww_devoe,
	o => \binary_output_vector[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\binary_output_vector[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan1~1_combout\,
	devoe => ww_devoe,
	o => \binary_output_vector[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\binary_output_vector[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan2~0_combout\,
	devoe => ww_devoe,
	o => \binary_output_vector[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\binary_output_vector[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan3~2_combout\,
	devoe => ww_devoe,
	o => \binary_output_vector[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\binary_output_vector[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan4~0_combout\,
	devoe => ww_devoe,
	o => \binary_output_vector[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\binary_output_vector[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan5~0_combout\,
	devoe => ww_devoe,
	o => \binary_output_vector[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\binary_output_vector[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan6~0_combout\,
	devoe => ww_devoe,
	o => \binary_output_vector[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\binary_output_vector[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan7~0_combout\,
	devoe => ww_devoe,
	o => \binary_output_vector[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\binary_output_vector[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan8~0_combout\,
	devoe => ww_devoe,
	o => \binary_output_vector[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\binary_output_vector[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan9~3_combout\,
	devoe => ww_devoe,
	o => \binary_output_vector[9]~output_o\);

-- Location: IOIBUF_X0_Y26_N1
\binary_input_vector[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binary_input_vector(8),
	o => \binary_input_vector[8]~input_o\);

-- Location: LCCOMB_X2_Y26_N2
\Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (\Add6~0_combout\ & (\binary_input_vector[8]~input_o\ $ (VCC))) # (!\Add6~0_combout\ & (\binary_input_vector[8]~input_o\ & VCC))
-- \Add7~1\ = CARRY((\Add6~0_combout\ & \binary_input_vector[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => \binary_input_vector[8]~input_o\,
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X2_Y26_N4
\Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\Add6~2_combout\ & (!\Add7~1\)) # (!\Add6~2_combout\ & ((\Add7~1\) # (GND)))
-- \Add7~3\ = CARRY((!\Add7~1\) # (!\Add6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X2_Y26_N20
\Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (\Add7~4_combout\ & (\Add8~3\ $ (GND))) # (!\Add7~4_combout\ & (!\Add8~3\ & VCC))
-- \Add8~5\ = CARRY((\Add7~4_combout\ & !\Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X2_Y26_N22
\Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (\Add7~6_combout\ & (!\Add8~5\)) # (!\Add7~6_combout\ & ((\Add8~5\) # (GND)))
-- \Add8~7\ = CARRY((!\Add8~5\) # (!\Add7~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~6_combout\,
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X2_Y26_N24
\Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (\Add7~8_combout\ & (\Add8~7\ $ (GND))) # (!\Add7~8_combout\ & (!\Add8~7\ & VCC))
-- \Add8~9\ = CARRY((\Add7~8_combout\ & !\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X2_Y26_N26
\Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (\Add7~10_combout\ & (!\Add8~9\)) # (!\Add7~10_combout\ & ((\Add8~9\) # (GND)))
-- \Add8~11\ = CARRY((!\Add8~9\) # (!\Add7~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~10_combout\,
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X2_Y26_N28
\Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = !\Add8~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add8~11\,
	combout => \Add8~12_combout\);

-- Location: LCCOMB_X2_Y25_N8
\Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = \Add8~0_combout\ $ (VCC)
-- \Add9~1\ = CARRY(\Add8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X2_Y25_N10
\Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (\Add8~2_combout\ & (\Add9~1\ & VCC)) # (!\Add8~2_combout\ & (!\Add9~1\))
-- \Add9~3\ = CARRY((!\Add8~2_combout\ & !\Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X2_Y25_N12
\Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (\Add8~4_combout\ & ((GND) # (!\Add9~3\))) # (!\Add8~4_combout\ & (\Add9~3\ $ (GND)))
-- \Add9~5\ = CARRY((\Add8~4_combout\) # (!\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~4_combout\,
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X2_Y25_N14
\Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (\Add8~6_combout\ & (\Add9~5\ & VCC)) # (!\Add8~6_combout\ & (!\Add9~5\))
-- \Add9~7\ = CARRY((!\Add8~6_combout\ & !\Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~6_combout\,
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X2_Y25_N16
\Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (\Add8~8_combout\ & ((GND) # (!\Add9~7\))) # (!\Add8~8_combout\ & (\Add9~7\ $ (GND)))
-- \Add9~9\ = CARRY((\Add8~8_combout\) # (!\Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~8_combout\,
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X2_Y25_N18
\Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (\Add8~10_combout\ & (\Add9~9\ & VCC)) # (!\Add8~10_combout\ & (!\Add9~9\))
-- \Add9~11\ = CARRY((!\Add8~10_combout\ & !\Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~10_combout\,
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X2_Y25_N22
\Add9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = !\Add9~13\
-- \Add9~15\ = CARRY(!\Add9~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X2_Y25_N24
\Add9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = \Add9~15\ $ (GND)
-- \Add9~17\ = CARRY(!\Add9~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~16_combout\,
	cout => \Add9~17\);

-- Location: LCCOMB_X2_Y25_N26
\Add9~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = !\Add9~17\
-- \Add9~19\ = CARRY(!\Add9~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add9~17\,
	combout => \Add9~18_combout\,
	cout => \Add9~19\);

-- Location: LCCOMB_X2_Y25_N28
\Add9~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~20_combout\ = \Add9~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add9~19\,
	combout => \Add9~20_combout\);

-- Location: LCCOMB_X2_Y25_N0
\LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (!\Add9~12_combout\ & (!\Add9~10_combout\ & (!\Add9~14_combout\ & !\Add9~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~12_combout\,
	datab => \Add9~10_combout\,
	datac => \Add9~14_combout\,
	datad => \Add9~8_combout\,
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X2_Y25_N2
\LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!\Add9~18_combout\ & (!\Add9~16_combout\ & (!\Add9~6_combout\ & \LessThan9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~18_combout\,
	datab => \Add9~16_combout\,
	datac => \Add9~6_combout\,
	datad => \LessThan9~0_combout\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X1_Y25_N24
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!\Add9~2_combout\ & !\Add9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~2_combout\,
	datac => \Add9~0_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X1_Y25_N10
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\Add9~20_combout\) # ((\LessThan3~0_combout\ & (\LessThan1~0_combout\ & !\Add9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \LessThan1~0_combout\,
	datac => \Add9~4_combout\,
	datad => \Add9~20_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X1_Y25_N4
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\Add9~20_combout\) # ((\LessThan3~0_combout\ & (!\Add9~4_combout\ & !\Add9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \Add9~4_combout\,
	datac => \Add9~2_combout\,
	datad => \Add9~20_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X1_Y25_N6
\LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (!\Add9~0_combout\) # (!\Add9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~2_combout\,
	datac => \Add9~0_combout\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X1_Y25_N8
\LessThan3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (\Add9~20_combout\) # ((\LessThan3~1_combout\ & (!\Add9~4_combout\ & \LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~1_combout\,
	datab => \Add9~20_combout\,
	datac => \Add9~4_combout\,
	datad => \LessThan3~0_combout\,
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X1_Y25_N18
\LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (\Add9~20_combout\) # ((\LessThan3~0_combout\ & !\Add9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datac => \Add9~4_combout\,
	datad => \Add9~20_combout\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X1_Y25_N20
\LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (\Add9~20_combout\) # ((\LessThan3~0_combout\ & ((\LessThan1~0_combout\) # (!\Add9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \LessThan1~0_combout\,
	datac => \Add9~4_combout\,
	datad => \Add9~20_combout\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X1_Y25_N14
\LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\Add9~20_combout\) # ((\LessThan3~0_combout\ & ((!\Add9~2_combout\) # (!\Add9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \Add9~4_combout\,
	datac => \Add9~2_combout\,
	datad => \Add9~20_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X1_Y25_N0
\LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (\Add9~20_combout\) # ((\LessThan3~0_combout\ & ((\LessThan3~1_combout\) # (!\Add9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~1_combout\,
	datab => \Add9~20_combout\,
	datac => \Add9~4_combout\,
	datad => \LessThan3~0_combout\,
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X2_Y25_N4
\LessThan9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~1_combout\ = (!\Add9~18_combout\ & !\Add9~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~18_combout\,
	datad => \Add9~16_combout\,
	combout => \LessThan9~1_combout\);

-- Location: LCCOMB_X2_Y25_N30
\LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (\Add9~20_combout\) # ((!\Add9~6_combout\ & (\LessThan9~0_combout\ & \LessThan9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~6_combout\,
	datab => \LessThan9~0_combout\,
	datac => \LessThan9~1_combout\,
	datad => \Add9~20_combout\,
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X1_Y25_N2
\LessThan9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~2_combout\ = ((!\Add9~4_combout\ & (!\Add9~2_combout\ & !\Add9~0_combout\))) # (!\Add9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~4_combout\,
	datab => \Add9~2_combout\,
	datac => \Add9~0_combout\,
	datad => \Add9~6_combout\,
	combout => \LessThan9~2_combout\);

-- Location: LCCOMB_X2_Y25_N6
\LessThan9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~3_combout\ = (\Add9~20_combout\) # ((\LessThan9~2_combout\ & (\LessThan9~0_combout\ & \LessThan9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~2_combout\,
	datab => \LessThan9~0_combout\,
	datac => \LessThan9~1_combout\,
	datad => \Add9~20_combout\,
	combout => \LessThan9~3_combout\);

ww_binary_output_vector(0) <= \binary_output_vector[0]~output_o\;

ww_binary_output_vector(1) <= \binary_output_vector[1]~output_o\;

ww_binary_output_vector(2) <= \binary_output_vector[2]~output_o\;

ww_binary_output_vector(3) <= \binary_output_vector[3]~output_o\;

ww_binary_output_vector(4) <= \binary_output_vector[4]~output_o\;

ww_binary_output_vector(5) <= \binary_output_vector[5]~output_o\;

ww_binary_output_vector(6) <= \binary_output_vector[6]~output_o\;

ww_binary_output_vector(7) <= \binary_output_vector[7]~output_o\;

ww_binary_output_vector(8) <= \binary_output_vector[8]~output_o\;

ww_binary_output_vector(9) <= \binary_output_vector[9]~output_o\;
END structure;


