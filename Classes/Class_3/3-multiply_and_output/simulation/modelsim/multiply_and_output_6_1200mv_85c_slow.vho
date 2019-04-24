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

-- DATE "04/17/2019 19:18:12"

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

ENTITY 	multiply_and_output IS
    PORT (
	binary_input_vector : IN std_logic_vector(9 DOWNTO 0);
	binary_output_vector : OUT std_logic_vector(9 DOWNTO 0);
	hexa_output_vector : OUT std_logic_vector(16 DOWNTO 0);
	action_vector : IN std_logic_vector(2 DOWNTO 0)
	);
END multiply_and_output;

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
-- hexa_output_vector[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexa_output_vector[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexa_output_vector[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexa_output_vector[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexa_output_vector[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexa_output_vector[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexa_output_vector[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexa_output_vector[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexa_output_vector[8]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexa_output_vector[9]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexa_output_vector[10]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexa_output_vector[11]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexa_output_vector[12]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexa_output_vector[13]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexa_output_vector[14]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexa_output_vector[15]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hexa_output_vector[16]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- action_vector[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- action_vector[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- action_vector[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multiply_and_output IS
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
SIGNAL ww_hexa_output_vector : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_action_vector : std_logic_vector(2 DOWNTO 0);
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \sum_vector[5][0]~1_combout\ : std_logic;
SIGNAL \sum_vector[3][1]~2_combout\ : std_logic;
SIGNAL \sum_vector[4][2]~4_combout\ : std_logic;
SIGNAL \sum_vector[5][2]~5_combout\ : std_logic;
SIGNAL \sum_vector[5][2]~6_combout\ : std_logic;
SIGNAL \action_vector[1]~input_o\ : std_logic;
SIGNAL \binary_input_vector[2]~input_o\ : std_logic;
SIGNAL \binary_input_vector[8]~input_o\ : std_logic;
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
SIGNAL \hexa_output_vector[0]~output_o\ : std_logic;
SIGNAL \hexa_output_vector[1]~output_o\ : std_logic;
SIGNAL \hexa_output_vector[2]~output_o\ : std_logic;
SIGNAL \hexa_output_vector[3]~output_o\ : std_logic;
SIGNAL \hexa_output_vector[4]~output_o\ : std_logic;
SIGNAL \hexa_output_vector[5]~output_o\ : std_logic;
SIGNAL \hexa_output_vector[6]~output_o\ : std_logic;
SIGNAL \hexa_output_vector[7]~output_o\ : std_logic;
SIGNAL \hexa_output_vector[8]~output_o\ : std_logic;
SIGNAL \hexa_output_vector[9]~output_o\ : std_logic;
SIGNAL \hexa_output_vector[10]~output_o\ : std_logic;
SIGNAL \hexa_output_vector[11]~output_o\ : std_logic;
SIGNAL \hexa_output_vector[12]~output_o\ : std_logic;
SIGNAL \hexa_output_vector[13]~output_o\ : std_logic;
SIGNAL \hexa_output_vector[14]~output_o\ : std_logic;
SIGNAL \hexa_output_vector[15]~output_o\ : std_logic;
SIGNAL \hexa_output_vector[16]~output_o\ : std_logic;
SIGNAL \action_vector[0]~input_o\ : std_logic;
SIGNAL \action_vector[2]~input_o\ : std_logic;
SIGNAL \multiply_vector[3][0]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \binary_input_vector[9]~input_o\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \multiply_vector[3][3]~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \binary_input_vector[5]~input_o\ : std_logic;
SIGNAL \binary_input_vector[4]~input_o\ : std_logic;
SIGNAL \binary_input_vector[0]~input_o\ : std_logic;
SIGNAL \binary_input_vector[3]~input_o\ : std_logic;
SIGNAL \binary_input_vector[1]~input_o\ : std_logic;
SIGNAL \sum_vector[3][0]~0_combout\ : std_logic;
SIGNAL \sum_vector[5][1]~3_combout\ : std_logic;
SIGNAL \binary_input_vector[6]~input_o\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \binary_input_vector[7]~input_o\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~15\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~17\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~18_combout\ : std_logic;
SIGNAL \hexa_output_vector~12_combout\ : std_logic;
SIGNAL \hexa_output_vector~22_combout\ : std_logic;
SIGNAL \hexa_output_vector~23_combout\ : std_logic;
SIGNAL \hexa_output_vector~13_combout\ : std_logic;
SIGNAL \hexa_output_vector~14_combout\ : std_logic;
SIGNAL \hexa_output_vector~15_combout\ : std_logic;
SIGNAL \hexa_output_vector~16_combout\ : std_logic;
SIGNAL \hexa_output_vector~17_combout\ : std_logic;
SIGNAL \hexa_output_vector~24_combout\ : std_logic;
SIGNAL \hexa_output_vector~25_combout\ : std_logic;
SIGNAL \hexa_output_vector~18_combout\ : std_logic;
SIGNAL \hexa_output_vector~19_combout\ : std_logic;
SIGNAL \hexa_output_vector~20_combout\ : std_logic;
SIGNAL \hexa_output_vector~21_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|le5a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le4a\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le3a\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_hexa_output_vector~21_combout\ : std_logic;
SIGNAL \ALT_INV_hexa_output_vector~16_combout\ : std_logic;

BEGIN

ww_binary_input_vector <= binary_input_vector;
binary_output_vector <= ww_binary_output_vector;
hexa_output_vector <= ww_hexa_output_vector;
ww_action_vector <= action_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_hexa_output_vector~21_combout\ <= NOT \hexa_output_vector~21_combout\;
\ALT_INV_hexa_output_vector~16_combout\ <= NOT \hexa_output_vector~16_combout\;

-- Location: LCCOMB_X1_Y26_N22
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\sum_vector[5][0]~1_combout\ & (\binary_input_vector[6]~input_o\ $ (VCC))) # (!\sum_vector[5][0]~1_combout\ & (\binary_input_vector[6]~input_o\ & VCC))
-- \Add5~1\ = CARRY((\sum_vector[5][0]~1_combout\ & \binary_input_vector[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum_vector[5][0]~1_combout\,
	datab => \binary_input_vector[6]~input_o\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X1_Y26_N10
\Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (\binary_input_vector[8]~input_o\ & (\Add6~0_combout\ $ (VCC))) # (!\binary_input_vector[8]~input_o\ & (\Add6~0_combout\ & VCC))
-- \Add7~1\ = CARRY((\binary_input_vector[8]~input_o\ & \Add6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_input_vector[8]~input_o\,
	datab => \Add6~0_combout\,
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X1_Y26_N12
\Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\Add6~2_combout\ & (!\Add7~1\)) # (!\Add6~2_combout\ & ((\Add7~1\) # (GND)))
-- \Add7~3\ = CARRY((!\Add7~1\) # (!\Add6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X1_Y26_N26
\Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (\sum_vector[5][2]~6_combout\ & (\Add5~3\ $ (GND))) # (!\sum_vector[5][2]~6_combout\ & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((\sum_vector[5][2]~6_combout\ & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sum_vector[5][2]~6_combout\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X1_Y26_N14
\Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (\Add6~4_combout\ & (\Add7~3\ $ (GND))) # (!\Add6~4_combout\ & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((\Add6~4_combout\ & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~4_combout\,
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X1_Y26_N6
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

-- Location: LCCOMB_X2_Y26_N22
\Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (\Add7~10_combout\ & (!\Add8~9\)) # (!\Add7~10_combout\ & ((\Add8~9\) # (GND)))
-- \Add8~11\ = CARRY((!\Add8~9\) # (!\Add7~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~10_combout\,
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X2_Y26_N24
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

-- Location: LCCOMB_X1_Y25_N2
\sum_vector[5][0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector[5][0]~1_combout\ = \binary_input_vector[5]~input_o\ $ (\binary_input_vector[4]~input_o\ $ (\sum_vector[3][0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \binary_input_vector[5]~input_o\,
	datac => \binary_input_vector[4]~input_o\,
	datad => \sum_vector[3][0]~0_combout\,
	combout => \sum_vector[5][0]~1_combout\);

-- Location: LCCOMB_X1_Y25_N12
\sum_vector[3][1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector[3][1]~2_combout\ = (\binary_input_vector[2]~input_o\ & ((\binary_input_vector[0]~input_o\ & ((!\binary_input_vector[1]~input_o\) # (!\binary_input_vector[3]~input_o\))) # (!\binary_input_vector[0]~input_o\ & ((\binary_input_vector[3]~input_o\) 
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
	combout => \sum_vector[3][1]~2_combout\);

-- Location: LCCOMB_X1_Y25_N0
\sum_vector[4][2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector[4][2]~4_combout\ = (\binary_input_vector[2]~input_o\ & (\binary_input_vector[0]~input_o\ & (\binary_input_vector[3]~input_o\ & \binary_input_vector[1]~input_o\)))

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
	combout => \sum_vector[4][2]~4_combout\);

-- Location: LCCOMB_X1_Y25_N26
\sum_vector[5][2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector[5][2]~5_combout\ = (\binary_input_vector[5]~input_o\ & ((\binary_input_vector[4]~input_o\) # (\sum_vector[3][0]~0_combout\))) # (!\binary_input_vector[5]~input_o\ & (\binary_input_vector[4]~input_o\ & \sum_vector[3][0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \binary_input_vector[5]~input_o\,
	datac => \binary_input_vector[4]~input_o\,
	datad => \sum_vector[3][0]~0_combout\,
	combout => \sum_vector[5][2]~5_combout\);

-- Location: LCCOMB_X1_Y25_N4
\sum_vector[5][2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector[5][2]~6_combout\ = \sum_vector[4][2]~4_combout\ $ (((\sum_vector[3][1]~2_combout\ & \sum_vector[5][2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum_vector[3][1]~2_combout\,
	datac => \sum_vector[5][2]~5_combout\,
	datad => \sum_vector[4][2]~4_combout\,
	combout => \sum_vector[5][2]~6_combout\);

-- Location: LCCOMB_X2_Y26_N4
\Mult0|auto_generated|le4a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(2) = LCELL((\Mult0|auto_generated|cs2a[1]~0_combout\ & (\Add8~4_combout\ $ (((!\multiply_vector[3][3]~1_combout\))))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (((!\Add8~2_combout\ & !\multiply_vector[3][3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \Add8~4_combout\,
	datac => \Add8~2_combout\,
	datad => \multiply_vector[3][3]~1_combout\,
	combout => \Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X2_Y26_N30
\Mult0|auto_generated|le4a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(3) = LCELL((\Mult0|auto_generated|cs2a[1]~0_combout\ & ((\Add8~6_combout\ $ (!\multiply_vector[3][3]~1_combout\)))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (!\Add8~4_combout\ & ((!\multiply_vector[3][3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \Add8~4_combout\,
	datac => \Add8~6_combout\,
	datad => \multiply_vector[3][3]~1_combout\,
	combout => \Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X5_Y26_N22
\Mult0|auto_generated|le3a[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(6) = LCELL((\multiply_vector[3][0]~2_combout\ & (\Add8~12_combout\ $ (((\Mult0|auto_generated|le3a\(8)))))) # (!\multiply_vector[3][0]~2_combout\ & (((!\Add8~10_combout\ & \Mult0|auto_generated|le3a\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_vector[3][0]~2_combout\,
	datab => \Add8~12_combout\,
	datac => \Add8~10_combout\,
	datad => \Mult0|auto_generated|le3a\(8),
	combout => \Mult0|auto_generated|le3a\(6));

-- Location: LCCOMB_X5_Y26_N26
\Mult0|auto_generated|le3a[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(7) = LCELL((\Mult0|auto_generated|le3a\(8) & ((\multiply_vector[3][0]~2_combout\) # (!\Add8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_vector[3][0]~2_combout\,
	datab => \Mult0|auto_generated|le3a\(8),
	datad => \Add8~12_combout\,
	combout => \Mult0|auto_generated|le3a\(7));

-- Location: LCCOMB_X5_Y26_N30
\Mult0|auto_generated|le4a[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(6) = LCELL((\Mult0|auto_generated|cs2a[1]~0_combout\ & (\multiply_vector[3][3]~1_combout\ $ (((!\Add8~12_combout\))))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (!\multiply_vector[3][3]~1_combout\ & (!\Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_vector[3][3]~1_combout\,
	datab => \Add8~10_combout\,
	datac => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \Add8~12_combout\,
	combout => \Mult0|auto_generated|le4a\(6));

-- Location: LCCOMB_X2_Y26_N8
\Mult0|auto_generated|le4a[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(7) = LCELL((!\multiply_vector[3][3]~1_combout\ & ((\Mult0|auto_generated|cs2a[1]~0_combout\) # (!\Add8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~12_combout\,
	datac => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \multiply_vector[3][3]~1_combout\,
	combout => \Mult0|auto_generated|le4a\(7));

-- Location: IOIBUF_X0_Y23_N15
\action_vector[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_action_vector(1),
	o => \action_vector[1]~input_o\);

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

-- Location: IOOBUF_X0_Y20_N9
\binary_output_vector[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|auto_generated|op_3~0_combout\,
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
	i => \Mult0|auto_generated|op_3~2_combout\,
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
	i => \Mult0|auto_generated|op_3~4_combout\,
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
	i => \Mult0|auto_generated|op_3~6_combout\,
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
	i => \Mult0|auto_generated|op_3~8_combout\,
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
	i => \Mult0|auto_generated|op_3~10_combout\,
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
	i => \Mult0|auto_generated|op_3~12_combout\,
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
	i => \Mult0|auto_generated|op_3~14_combout\,
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
	i => \Mult0|auto_generated|op_3~16_combout\,
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
	i => \Mult0|auto_generated|op_3~18_combout\,
	devoe => ww_devoe,
	o => \binary_output_vector[9]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\hexa_output_vector[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa_output_vector~12_combout\,
	devoe => ww_devoe,
	o => \hexa_output_vector[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\hexa_output_vector[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa_output_vector~22_combout\,
	devoe => ww_devoe,
	o => \hexa_output_vector[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\hexa_output_vector[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa_output_vector~23_combout\,
	devoe => ww_devoe,
	o => \hexa_output_vector[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\hexa_output_vector[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa_output_vector~13_combout\,
	devoe => ww_devoe,
	o => \hexa_output_vector[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\hexa_output_vector[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa_output_vector~14_combout\,
	devoe => ww_devoe,
	o => \hexa_output_vector[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\hexa_output_vector[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa_output_vector~15_combout\,
	devoe => ww_devoe,
	o => \hexa_output_vector[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\hexa_output_vector[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_hexa_output_vector~16_combout\,
	devoe => ww_devoe,
	o => \hexa_output_vector[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\hexa_output_vector[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hexa_output_vector[7]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\hexa_output_vector[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa_output_vector~17_combout\,
	devoe => ww_devoe,
	o => \hexa_output_vector[8]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\hexa_output_vector[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa_output_vector~24_combout\,
	devoe => ww_devoe,
	o => \hexa_output_vector[9]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\hexa_output_vector[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa_output_vector~25_combout\,
	devoe => ww_devoe,
	o => \hexa_output_vector[10]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\hexa_output_vector[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa_output_vector~18_combout\,
	devoe => ww_devoe,
	o => \hexa_output_vector[11]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\hexa_output_vector[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa_output_vector~19_combout\,
	devoe => ww_devoe,
	o => \hexa_output_vector[12]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\hexa_output_vector[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexa_output_vector~20_combout\,
	devoe => ww_devoe,
	o => \hexa_output_vector[13]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\hexa_output_vector[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_hexa_output_vector~21_combout\,
	devoe => ww_devoe,
	o => \hexa_output_vector[14]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\hexa_output_vector[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hexa_output_vector[15]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\hexa_output_vector[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hexa_output_vector[16]~output_o\);

-- Location: IOIBUF_X0_Y21_N8
\action_vector[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_action_vector(0),
	o => \action_vector[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\action_vector[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_action_vector(2),
	o => \action_vector[2]~input_o\);

-- Location: LCCOMB_X3_Y26_N24
\Mult0|auto_generated|le3a[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(8) = LCELL((\action_vector[1]~input_o\ & (\action_vector[0]~input_o\ $ (\action_vector[2]~input_o\))) # (!\action_vector[1]~input_o\ & (\action_vector[0]~input_o\ & \action_vector[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \action_vector[1]~input_o\,
	datab => \action_vector[0]~input_o\,
	datac => \action_vector[2]~input_o\,
	combout => \Mult0|auto_generated|le3a\(8));

-- Location: LCCOMB_X3_Y26_N28
\multiply_vector[3][0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_vector[3][0]~2_combout\ = (\action_vector[1]~input_o\ & (\action_vector[0]~input_o\ & \action_vector[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \action_vector[1]~input_o\,
	datab => \action_vector[0]~input_o\,
	datac => \action_vector[2]~input_o\,
	combout => \multiply_vector[3][0]~2_combout\);

-- Location: LCCOMB_X3_Y26_N30
\Mult0|auto_generated|le3a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(0) = LCELL(\Mult0|auto_generated|le3a\(8) $ (((\Add8~0_combout\ & \multiply_vector[3][0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datab => \Mult0|auto_generated|le3a\(8),
	datad => \multiply_vector[3][0]~2_combout\,
	combout => \Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X4_Y26_N0
\Mult0|auto_generated|op_3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~0_combout\ = (\Mult0|auto_generated|le3a\(8) & (\Mult0|auto_generated|le3a\(0) $ (VCC))) # (!\Mult0|auto_generated|le3a\(8) & (\Mult0|auto_generated|le3a\(0) & VCC))
-- \Mult0|auto_generated|op_3~1\ = CARRY((\Mult0|auto_generated|le3a\(8) & \Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(8),
	datab => \Mult0|auto_generated|le3a\(0),
	datad => VCC,
	combout => \Mult0|auto_generated|op_3~0_combout\,
	cout => \Mult0|auto_generated|op_3~1\);

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

-- Location: LCCOMB_X2_Y26_N12
\Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = (\Add7~0_combout\ & (\binary_input_vector[9]~input_o\ $ (VCC))) # (!\Add7~0_combout\ & (\binary_input_vector[9]~input_o\ & VCC))
-- \Add8~1\ = CARRY((\Add7~0_combout\ & \binary_input_vector[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \binary_input_vector[9]~input_o\,
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X3_Y26_N16
\Mult0|auto_generated|le3a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(1) = LCELL((\multiply_vector[3][0]~2_combout\ & (\Add8~2_combout\ $ ((\Mult0|auto_generated|le3a\(8))))) # (!\multiply_vector[3][0]~2_combout\ & (((\Mult0|auto_generated|le3a\(8) & !\Add8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datab => \Mult0|auto_generated|le3a\(8),
	datac => \Add8~0_combout\,
	datad => \multiply_vector[3][0]~2_combout\,
	combout => \Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X4_Y26_N2
\Mult0|auto_generated|op_3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~2_combout\ = (\Mult0|auto_generated|le3a\(1) & (!\Mult0|auto_generated|op_3~1\)) # (!\Mult0|auto_generated|le3a\(1) & ((\Mult0|auto_generated|op_3~1\) # (GND)))
-- \Mult0|auto_generated|op_3~3\ = CARRY((!\Mult0|auto_generated|op_3~1\) # (!\Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~1\,
	combout => \Mult0|auto_generated|op_3~2_combout\,
	cout => \Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X2_Y26_N14
\Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (\Add7~2_combout\ & (!\Add8~1\)) # (!\Add7~2_combout\ & ((\Add8~1\) # (GND)))
-- \Add8~3\ = CARRY((!\Add8~1\) # (!\Add7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X2_Y26_N16
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

-- Location: LCCOMB_X3_Y26_N10
\Mult0|auto_generated|le3a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(2) = LCELL((\multiply_vector[3][0]~2_combout\ & ((\Mult0|auto_generated|le3a\(8) $ (\Add8~4_combout\)))) # (!\multiply_vector[3][0]~2_combout\ & (!\Add8~2_combout\ & (\Mult0|auto_generated|le3a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datab => \Mult0|auto_generated|le3a\(8),
	datac => \Add8~4_combout\,
	datad => \multiply_vector[3][0]~2_combout\,
	combout => \Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X5_Y26_N4
\Mult0|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~0_combout\ = (\multiply_vector[3][3]~1_combout\ & (\Mult0|auto_generated|le3a\(2) & VCC)) # (!\multiply_vector[3][3]~1_combout\ & (\Mult0|auto_generated|le3a\(2) $ (VCC)))
-- \Mult0|auto_generated|op_1~1\ = CARRY((!\multiply_vector[3][3]~1_combout\ & \Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_vector[3][3]~1_combout\,
	datab => \Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \Mult0|auto_generated|op_1~0_combout\,
	cout => \Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X3_Y26_N20
\Mult0|auto_generated|cs2a[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|cs2a[1]~0_combout\ = (\action_vector[1]~input_o\ & ((!\action_vector[2]~input_o\) # (!\action_vector[0]~input_o\))) # (!\action_vector[1]~input_o\ & ((\action_vector[0]~input_o\) # (\action_vector[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \action_vector[1]~input_o\,
	datab => \action_vector[0]~input_o\,
	datac => \action_vector[2]~input_o\,
	combout => \Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X3_Y26_N26
\multiply_vector[3][3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \multiply_vector[3][3]~1_combout\ = (\action_vector[1]~input_o\) # ((\action_vector[0]~input_o\) # (\action_vector[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \action_vector[1]~input_o\,
	datab => \action_vector[0]~input_o\,
	datac => \action_vector[2]~input_o\,
	combout => \multiply_vector[3][3]~1_combout\);

-- Location: LCCOMB_X2_Y26_N0
\Mult0|auto_generated|le4a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(0) = LCELL(\multiply_vector[3][3]~1_combout\ $ (((!\Mult0|auto_generated|cs2a[1]~0_combout\) # (!\Add8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datac => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \multiply_vector[3][3]~1_combout\,
	combout => \Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X4_Y26_N4
\Mult0|auto_generated|op_3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~4_combout\ = ((\Mult0|auto_generated|op_1~0_combout\ $ (\Mult0|auto_generated|le4a\(0) $ (!\Mult0|auto_generated|op_3~3\)))) # (GND)
-- \Mult0|auto_generated|op_3~5\ = CARRY((\Mult0|auto_generated|op_1~0_combout\ & ((\Mult0|auto_generated|le4a\(0)) # (!\Mult0|auto_generated|op_3~3\))) # (!\Mult0|auto_generated|op_1~0_combout\ & (\Mult0|auto_generated|le4a\(0) & 
-- !\Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~0_combout\,
	datab => \Mult0|auto_generated|le4a\(0),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~3\,
	combout => \Mult0|auto_generated|op_3~4_combout\,
	cout => \Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X2_Y26_N18
\Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (\Add7~6_combout\ & (!\Add8~5\)) # (!\Add7~6_combout\ & ((\Add8~5\) # (GND)))
-- \Add8~7\ = CARRY((!\Add8~5\) # (!\Add7~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X5_Y26_N0
\Mult0|auto_generated|le3a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(3) = LCELL((\multiply_vector[3][0]~2_combout\ & ((\Add8~6_combout\ $ (\Mult0|auto_generated|le3a\(8))))) # (!\multiply_vector[3][0]~2_combout\ & (!\Add8~4_combout\ & ((\Mult0|auto_generated|le3a\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiply_vector[3][0]~2_combout\,
	datab => \Add8~4_combout\,
	datac => \Add8~6_combout\,
	datad => \Mult0|auto_generated|le3a\(8),
	combout => \Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X5_Y26_N6
\Mult0|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~2_combout\ = (\Mult0|auto_generated|le3a\(3) & (!\Mult0|auto_generated|op_1~1\)) # (!\Mult0|auto_generated|le3a\(3) & ((\Mult0|auto_generated|op_1~1\) # (GND)))
-- \Mult0|auto_generated|op_1~3\ = CARRY((!\Mult0|auto_generated|op_1~1\) # (!\Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~1\,
	combout => \Mult0|auto_generated|op_1~2_combout\,
	cout => \Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X2_Y26_N26
\Mult0|auto_generated|le4a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(1) = LCELL((\Mult0|auto_generated|cs2a[1]~0_combout\ & ((\Add8~2_combout\ $ (!\multiply_vector[3][3]~1_combout\)))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (!\Add8~0_combout\ & ((!\multiply_vector[3][3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datab => \Add8~2_combout\,
	datac => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \multiply_vector[3][3]~1_combout\,
	combout => \Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X4_Y26_N6
\Mult0|auto_generated|op_3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~6_combout\ = (\Mult0|auto_generated|op_1~2_combout\ & ((\Mult0|auto_generated|le4a\(1) & (\Mult0|auto_generated|op_3~5\ & VCC)) # (!\Mult0|auto_generated|le4a\(1) & (!\Mult0|auto_generated|op_3~5\)))) # 
-- (!\Mult0|auto_generated|op_1~2_combout\ & ((\Mult0|auto_generated|le4a\(1) & (!\Mult0|auto_generated|op_3~5\)) # (!\Mult0|auto_generated|le4a\(1) & ((\Mult0|auto_generated|op_3~5\) # (GND)))))
-- \Mult0|auto_generated|op_3~7\ = CARRY((\Mult0|auto_generated|op_1~2_combout\ & (!\Mult0|auto_generated|le4a\(1) & !\Mult0|auto_generated|op_3~5\)) # (!\Mult0|auto_generated|op_1~2_combout\ & ((!\Mult0|auto_generated|op_3~5\) # 
-- (!\Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~2_combout\,
	datab => \Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~5\,
	combout => \Mult0|auto_generated|op_3~6_combout\,
	cout => \Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X3_Y26_N6
\Mult0|auto_generated|le5a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(0) = LCELL((!\action_vector[1]~input_o\ & (!\action_vector[0]~input_o\ & (!\action_vector[2]~input_o\ & \Add8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \action_vector[1]~input_o\,
	datab => \action_vector[0]~input_o\,
	datac => \action_vector[2]~input_o\,
	datad => \Add8~0_combout\,
	combout => \Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X5_Y26_N2
\Mult0|auto_generated|le3a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(4) = LCELL((\multiply_vector[3][0]~2_combout\ & (\Add8~8_combout\ $ ((\Mult0|auto_generated|le3a\(8))))) # (!\multiply_vector[3][0]~2_combout\ & (((\Mult0|auto_generated|le3a\(8) & !\Add8~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~8_combout\,
	datab => \Mult0|auto_generated|le3a\(8),
	datac => \multiply_vector[3][0]~2_combout\,
	datad => \Add8~6_combout\,
	combout => \Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X5_Y26_N8
\Mult0|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~4_combout\ = ((\Mult0|auto_generated|le4a\(2) $ (\Mult0|auto_generated|le3a\(4) $ (!\Mult0|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|auto_generated|op_1~5\ = CARRY((\Mult0|auto_generated|le4a\(2) & ((\Mult0|auto_generated|le3a\(4)) # (!\Mult0|auto_generated|op_1~3\))) # (!\Mult0|auto_generated|le4a\(2) & (\Mult0|auto_generated|le3a\(4) & !\Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(2),
	datab => \Mult0|auto_generated|le3a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~3\,
	combout => \Mult0|auto_generated|op_1~4_combout\,
	cout => \Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X4_Y26_N8
\Mult0|auto_generated|op_3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~8_combout\ = ((\Mult0|auto_generated|le5a\(0) $ (\Mult0|auto_generated|op_1~4_combout\ $ (!\Mult0|auto_generated|op_3~7\)))) # (GND)
-- \Mult0|auto_generated|op_3~9\ = CARRY((\Mult0|auto_generated|le5a\(0) & ((\Mult0|auto_generated|op_1~4_combout\) # (!\Mult0|auto_generated|op_3~7\))) # (!\Mult0|auto_generated|le5a\(0) & (\Mult0|auto_generated|op_1~4_combout\ & 
-- !\Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(0),
	datab => \Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~7\,
	combout => \Mult0|auto_generated|op_3~8_combout\,
	cout => \Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X3_Y26_N0
\Mult0|auto_generated|le5a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(1) = LCELL((!\action_vector[1]~input_o\ & (!\action_vector[0]~input_o\ & (!\action_vector[2]~input_o\ & \Add8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \action_vector[1]~input_o\,
	datab => \action_vector[0]~input_o\,
	datac => \action_vector[2]~input_o\,
	datad => \Add8~2_combout\,
	combout => \Mult0|auto_generated|le5a\(1));

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

-- Location: LCCOMB_X1_Y25_N24
\sum_vector[3][0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector[3][0]~0_combout\ = \binary_input_vector[2]~input_o\ $ (\binary_input_vector[0]~input_o\ $ (\binary_input_vector[3]~input_o\ $ (\binary_input_vector[1]~input_o\)))

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
	combout => \sum_vector[3][0]~0_combout\);

-- Location: LCCOMB_X1_Y25_N14
\sum_vector[5][1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector[5][1]~3_combout\ = \sum_vector[3][1]~2_combout\ $ (((\binary_input_vector[5]~input_o\ & ((\binary_input_vector[4]~input_o\) # (\sum_vector[3][0]~0_combout\))) # (!\binary_input_vector[5]~input_o\ & (\binary_input_vector[4]~input_o\ & 
-- \sum_vector[3][0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum_vector[3][1]~2_combout\,
	datab => \binary_input_vector[5]~input_o\,
	datac => \binary_input_vector[4]~input_o\,
	datad => \sum_vector[3][0]~0_combout\,
	combout => \sum_vector[5][1]~3_combout\);

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

-- Location: LCCOMB_X1_Y26_N24
\Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\sum_vector[5][1]~3_combout\ & (!\Add5~1\)) # (!\sum_vector[5][1]~3_combout\ & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!\sum_vector[5][1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sum_vector[5][1]~3_combout\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X1_Y26_N28
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

-- Location: LCCOMB_X1_Y26_N0
\Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (\Add5~0_combout\ & (\binary_input_vector[7]~input_o\ $ (VCC))) # (!\Add5~0_combout\ & (\binary_input_vector[7]~input_o\ & VCC))
-- \Add6~1\ = CARRY((\Add5~0_combout\ & \binary_input_vector[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => \binary_input_vector[7]~input_o\,
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X1_Y26_N2
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

-- Location: LCCOMB_X1_Y26_N4
\Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (\Add5~4_combout\ & (\Add6~3\ $ (GND))) # (!\Add5~4_combout\ & (!\Add6~3\ & VCC))
-- \Add6~5\ = CARRY((\Add5~4_combout\ & !\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~4_combout\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X1_Y26_N8
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

-- Location: LCCOMB_X1_Y26_N18
\Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (\Add6~8_combout\ & (\Add7~7\ $ (GND))) # (!\Add6~8_combout\ & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((\Add6~8_combout\ & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~8_combout\,
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X1_Y26_N20
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

-- Location: LCCOMB_X2_Y26_N20
\Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (\Add7~8_combout\ & (\Add8~7\ $ (GND))) # (!\Add7~8_combout\ & (!\Add8~7\ & VCC))
-- \Add8~9\ = CARRY((\Add7~8_combout\ & !\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~8_combout\,
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X5_Y26_N20
\Mult0|auto_generated|le3a[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(5) = LCELL((\multiply_vector[3][0]~2_combout\ & ((\Add8~10_combout\ $ (\Mult0|auto_generated|le3a\(8))))) # (!\multiply_vector[3][0]~2_combout\ & (!\Add8~8_combout\ & ((\Mult0|auto_generated|le3a\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~8_combout\,
	datab => \Add8~10_combout\,
	datac => \multiply_vector[3][0]~2_combout\,
	datad => \Mult0|auto_generated|le3a\(8),
	combout => \Mult0|auto_generated|le3a\(5));

-- Location: LCCOMB_X5_Y26_N10
\Mult0|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~6_combout\ = (\Mult0|auto_generated|le4a\(3) & ((\Mult0|auto_generated|le3a\(5) & (\Mult0|auto_generated|op_1~5\ & VCC)) # (!\Mult0|auto_generated|le3a\(5) & (!\Mult0|auto_generated|op_1~5\)))) # (!\Mult0|auto_generated|le4a\(3) 
-- & ((\Mult0|auto_generated|le3a\(5) & (!\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|le3a\(5) & ((\Mult0|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|auto_generated|op_1~7\ = CARRY((\Mult0|auto_generated|le4a\(3) & (!\Mult0|auto_generated|le3a\(5) & !\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|le4a\(3) & ((!\Mult0|auto_generated|op_1~5\) # (!\Mult0|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(3),
	datab => \Mult0|auto_generated|le3a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~5\,
	combout => \Mult0|auto_generated|op_1~6_combout\,
	cout => \Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X4_Y26_N10
\Mult0|auto_generated|op_3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~10_combout\ = (\Mult0|auto_generated|le5a\(1) & ((\Mult0|auto_generated|op_1~6_combout\ & (\Mult0|auto_generated|op_3~9\ & VCC)) # (!\Mult0|auto_generated|op_1~6_combout\ & (!\Mult0|auto_generated|op_3~9\)))) # 
-- (!\Mult0|auto_generated|le5a\(1) & ((\Mult0|auto_generated|op_1~6_combout\ & (!\Mult0|auto_generated|op_3~9\)) # (!\Mult0|auto_generated|op_1~6_combout\ & ((\Mult0|auto_generated|op_3~9\) # (GND)))))
-- \Mult0|auto_generated|op_3~11\ = CARRY((\Mult0|auto_generated|le5a\(1) & (!\Mult0|auto_generated|op_1~6_combout\ & !\Mult0|auto_generated|op_3~9\)) # (!\Mult0|auto_generated|le5a\(1) & ((!\Mult0|auto_generated|op_3~9\) # 
-- (!\Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(1),
	datab => \Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~9\,
	combout => \Mult0|auto_generated|op_3~10_combout\,
	cout => \Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X3_Y26_N2
\Mult0|auto_generated|le5a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(2) = LCELL((!\action_vector[1]~input_o\ & (!\action_vector[2]~input_o\ & (\Add8~4_combout\ & !\action_vector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \action_vector[1]~input_o\,
	datab => \action_vector[2]~input_o\,
	datac => \Add8~4_combout\,
	datad => \action_vector[0]~input_o\,
	combout => \Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X5_Y26_N24
\Mult0|auto_generated|le4a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(4) = LCELL((\Mult0|auto_generated|cs2a[1]~0_combout\ & (\Add8~8_combout\ $ ((!\multiply_vector[3][3]~1_combout\)))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (((!\multiply_vector[3][3]~1_combout\ & !\Add8~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~8_combout\,
	datab => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \multiply_vector[3][3]~1_combout\,
	datad => \Add8~6_combout\,
	combout => \Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X5_Y26_N12
\Mult0|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~8_combout\ = ((\Mult0|auto_generated|le3a\(6) $ (\Mult0|auto_generated|le4a\(4) $ (!\Mult0|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|auto_generated|op_1~9\ = CARRY((\Mult0|auto_generated|le3a\(6) & ((\Mult0|auto_generated|le4a\(4)) # (!\Mult0|auto_generated|op_1~7\))) # (!\Mult0|auto_generated|le3a\(6) & (\Mult0|auto_generated|le4a\(4) & !\Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(6),
	datab => \Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~7\,
	combout => \Mult0|auto_generated|op_1~8_combout\,
	cout => \Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X4_Y26_N12
\Mult0|auto_generated|op_3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~12_combout\ = ((\Mult0|auto_generated|le5a\(2) $ (\Mult0|auto_generated|op_1~8_combout\ $ (!\Mult0|auto_generated|op_3~11\)))) # (GND)
-- \Mult0|auto_generated|op_3~13\ = CARRY((\Mult0|auto_generated|le5a\(2) & ((\Mult0|auto_generated|op_1~8_combout\) # (!\Mult0|auto_generated|op_3~11\))) # (!\Mult0|auto_generated|le5a\(2) & (\Mult0|auto_generated|op_1~8_combout\ & 
-- !\Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(2),
	datab => \Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~11\,
	combout => \Mult0|auto_generated|op_3~12_combout\,
	cout => \Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X3_Y26_N12
\Mult0|auto_generated|le5a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(3) = LCELL((!\action_vector[1]~input_o\ & (!\action_vector[0]~input_o\ & (!\action_vector[2]~input_o\ & \Add8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \action_vector[1]~input_o\,
	datab => \action_vector[0]~input_o\,
	datac => \action_vector[2]~input_o\,
	datad => \Add8~6_combout\,
	combout => \Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X5_Y26_N28
\Mult0|auto_generated|le4a[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(5) = LCELL((\Mult0|auto_generated|cs2a[1]~0_combout\ & ((\Add8~10_combout\ $ (!\multiply_vector[3][3]~1_combout\)))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (!\Add8~8_combout\ & ((!\multiply_vector[3][3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~8_combout\,
	datab => \Add8~10_combout\,
	datac => \multiply_vector[3][3]~1_combout\,
	datad => \Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X5_Y26_N14
\Mult0|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~10_combout\ = (\Mult0|auto_generated|le3a\(7) & ((\Mult0|auto_generated|le4a\(5) & (\Mult0|auto_generated|op_1~9\ & VCC)) # (!\Mult0|auto_generated|le4a\(5) & (!\Mult0|auto_generated|op_1~9\)))) # 
-- (!\Mult0|auto_generated|le3a\(7) & ((\Mult0|auto_generated|le4a\(5) & (!\Mult0|auto_generated|op_1~9\)) # (!\Mult0|auto_generated|le4a\(5) & ((\Mult0|auto_generated|op_1~9\) # (GND)))))
-- \Mult0|auto_generated|op_1~11\ = CARRY((\Mult0|auto_generated|le3a\(7) & (!\Mult0|auto_generated|le4a\(5) & !\Mult0|auto_generated|op_1~9\)) # (!\Mult0|auto_generated|le3a\(7) & ((!\Mult0|auto_generated|op_1~9\) # (!\Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(7),
	datab => \Mult0|auto_generated|le4a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~9\,
	combout => \Mult0|auto_generated|op_1~10_combout\,
	cout => \Mult0|auto_generated|op_1~11\);

-- Location: LCCOMB_X4_Y26_N14
\Mult0|auto_generated|op_3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~14_combout\ = (\Mult0|auto_generated|le5a\(3) & ((\Mult0|auto_generated|op_1~10_combout\ & (\Mult0|auto_generated|op_3~13\ & VCC)) # (!\Mult0|auto_generated|op_1~10_combout\ & (!\Mult0|auto_generated|op_3~13\)))) # 
-- (!\Mult0|auto_generated|le5a\(3) & ((\Mult0|auto_generated|op_1~10_combout\ & (!\Mult0|auto_generated|op_3~13\)) # (!\Mult0|auto_generated|op_1~10_combout\ & ((\Mult0|auto_generated|op_3~13\) # (GND)))))
-- \Mult0|auto_generated|op_3~15\ = CARRY((\Mult0|auto_generated|le5a\(3) & (!\Mult0|auto_generated|op_1~10_combout\ & !\Mult0|auto_generated|op_3~13\)) # (!\Mult0|auto_generated|le5a\(3) & ((!\Mult0|auto_generated|op_3~13\) # 
-- (!\Mult0|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(3),
	datab => \Mult0|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~13\,
	combout => \Mult0|auto_generated|op_3~14_combout\,
	cout => \Mult0|auto_generated|op_3~15\);

-- Location: LCCOMB_X3_Y26_N14
\Mult0|auto_generated|le5a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(4) = LCELL((!\action_vector[1]~input_o\ & (!\action_vector[0]~input_o\ & (!\action_vector[2]~input_o\ & \Add8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \action_vector[1]~input_o\,
	datab => \action_vector[0]~input_o\,
	datac => \action_vector[2]~input_o\,
	datad => \Add8~8_combout\,
	combout => \Mult0|auto_generated|le5a\(4));

-- Location: LCCOMB_X5_Y26_N16
\Mult0|auto_generated|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~12_combout\ = ((\Mult0|auto_generated|le4a\(6) $ (\Mult0|auto_generated|le3a\(8) $ (!\Mult0|auto_generated|op_1~11\)))) # (GND)
-- \Mult0|auto_generated|op_1~13\ = CARRY((\Mult0|auto_generated|le4a\(6) & ((\Mult0|auto_generated|le3a\(8)) # (!\Mult0|auto_generated|op_1~11\))) # (!\Mult0|auto_generated|le4a\(6) & (\Mult0|auto_generated|le3a\(8) & !\Mult0|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(6),
	datab => \Mult0|auto_generated|le3a\(8),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~11\,
	combout => \Mult0|auto_generated|op_1~12_combout\,
	cout => \Mult0|auto_generated|op_1~13\);

-- Location: LCCOMB_X4_Y26_N16
\Mult0|auto_generated|op_3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~16_combout\ = ((\Mult0|auto_generated|le5a\(4) $ (\Mult0|auto_generated|op_1~12_combout\ $ (!\Mult0|auto_generated|op_3~15\)))) # (GND)
-- \Mult0|auto_generated|op_3~17\ = CARRY((\Mult0|auto_generated|le5a\(4) & ((\Mult0|auto_generated|op_1~12_combout\) # (!\Mult0|auto_generated|op_3~15\))) # (!\Mult0|auto_generated|le5a\(4) & (\Mult0|auto_generated|op_1~12_combout\ & 
-- !\Mult0|auto_generated|op_3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(4),
	datab => \Mult0|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~15\,
	combout => \Mult0|auto_generated|op_3~16_combout\,
	cout => \Mult0|auto_generated|op_3~17\);

-- Location: LCCOMB_X3_Y26_N8
\Mult0|auto_generated|le5a[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(5) = LCELL((!\action_vector[1]~input_o\ & (!\action_vector[2]~input_o\ & (\Add8~10_combout\ & !\action_vector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \action_vector[1]~input_o\,
	datab => \action_vector[2]~input_o\,
	datac => \Add8~10_combout\,
	datad => \action_vector[0]~input_o\,
	combout => \Mult0|auto_generated|le5a\(5));

-- Location: LCCOMB_X3_Y26_N18
\Mult0|auto_generated|le3a[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(9) = LCELL((\action_vector[1]~input_o\ & (\action_vector[0]~input_o\ $ (\action_vector[2]~input_o\))) # (!\action_vector[1]~input_o\ & (\action_vector[0]~input_o\ & \action_vector[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \action_vector[1]~input_o\,
	datab => \action_vector[0]~input_o\,
	datac => \action_vector[2]~input_o\,
	combout => \Mult0|auto_generated|le3a\(9));

-- Location: LCCOMB_X5_Y26_N18
\Mult0|auto_generated|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~14_combout\ = \Mult0|auto_generated|le4a\(7) $ (\Mult0|auto_generated|op_1~13\ $ (\Mult0|auto_generated|le3a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(7),
	datad => \Mult0|auto_generated|le3a\(9),
	cin => \Mult0|auto_generated|op_1~13\,
	combout => \Mult0|auto_generated|op_1~14_combout\);

-- Location: LCCOMB_X4_Y26_N18
\Mult0|auto_generated|op_3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~18_combout\ = \Mult0|auto_generated|le5a\(5) $ (\Mult0|auto_generated|op_3~17\ $ (\Mult0|auto_generated|op_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(5),
	datad => \Mult0|auto_generated|op_1~14_combout\,
	cin => \Mult0|auto_generated|op_3~17\,
	combout => \Mult0|auto_generated|op_3~18_combout\);

-- Location: LCCOMB_X4_Y26_N20
\hexa_output_vector~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hexa_output_vector~12_combout\ = (\Mult0|auto_generated|op_3~6_combout\ & (\Mult0|auto_generated|op_3~0_combout\ & (\Mult0|auto_generated|op_3~2_combout\ $ (\Mult0|auto_generated|op_3~4_combout\)))) # (!\Mult0|auto_generated|op_3~6_combout\ & 
-- (!\Mult0|auto_generated|op_3~2_combout\ & (\Mult0|auto_generated|op_3~4_combout\ $ (\Mult0|auto_generated|op_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~6_combout\,
	datab => \Mult0|auto_generated|op_3~2_combout\,
	datac => \Mult0|auto_generated|op_3~4_combout\,
	datad => \Mult0|auto_generated|op_3~0_combout\,
	combout => \hexa_output_vector~12_combout\);

-- Location: LCCOMB_X4_Y26_N28
\hexa_output_vector~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hexa_output_vector~22_combout\ = (\Mult0|auto_generated|op_3~6_combout\ & ((\Mult0|auto_generated|op_3~0_combout\ & (\Mult0|auto_generated|op_3~2_combout\)) # (!\Mult0|auto_generated|op_3~0_combout\ & ((\Mult0|auto_generated|op_3~4_combout\))))) # 
-- (!\Mult0|auto_generated|op_3~6_combout\ & (\Mult0|auto_generated|op_3~4_combout\ & (\Mult0|auto_generated|op_3~2_combout\ $ (\Mult0|auto_generated|op_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~6_combout\,
	datab => \Mult0|auto_generated|op_3~2_combout\,
	datac => \Mult0|auto_generated|op_3~4_combout\,
	datad => \Mult0|auto_generated|op_3~0_combout\,
	combout => \hexa_output_vector~22_combout\);

-- Location: LCCOMB_X4_Y26_N22
\hexa_output_vector~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hexa_output_vector~23_combout\ = (\Mult0|auto_generated|op_3~6_combout\ & ((\Mult0|auto_generated|op_3~0_combout\ & (\Mult0|auto_generated|op_3~2_combout\)) # (!\Mult0|auto_generated|op_3~0_combout\ & ((\Mult0|auto_generated|op_3~4_combout\))))) # 
-- (!\Mult0|auto_generated|op_3~6_combout\ & (\Mult0|auto_generated|op_3~2_combout\ & (!\Mult0|auto_generated|op_3~4_combout\ & !\Mult0|auto_generated|op_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~6_combout\,
	datab => \Mult0|auto_generated|op_3~2_combout\,
	datac => \Mult0|auto_generated|op_3~4_combout\,
	datad => \Mult0|auto_generated|op_3~0_combout\,
	combout => \hexa_output_vector~23_combout\);

-- Location: LCCOMB_X4_Y26_N30
\hexa_output_vector~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hexa_output_vector~13_combout\ = (\Mult0|auto_generated|op_3~2_combout\ & ((\Mult0|auto_generated|op_3~4_combout\ & ((\Mult0|auto_generated|op_3~0_combout\))) # (!\Mult0|auto_generated|op_3~4_combout\ & (\Mult0|auto_generated|op_3~6_combout\ & 
-- !\Mult0|auto_generated|op_3~0_combout\)))) # (!\Mult0|auto_generated|op_3~2_combout\ & (!\Mult0|auto_generated|op_3~6_combout\ & (\Mult0|auto_generated|op_3~4_combout\ $ (\Mult0|auto_generated|op_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~6_combout\,
	datab => \Mult0|auto_generated|op_3~2_combout\,
	datac => \Mult0|auto_generated|op_3~4_combout\,
	datad => \Mult0|auto_generated|op_3~0_combout\,
	combout => \hexa_output_vector~13_combout\);

-- Location: LCCOMB_X4_Y23_N24
\hexa_output_vector~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hexa_output_vector~14_combout\ = (\Mult0|auto_generated|op_3~2_combout\ & (!\Mult0|auto_generated|op_3~6_combout\ & ((\Mult0|auto_generated|op_3~0_combout\)))) # (!\Mult0|auto_generated|op_3~2_combout\ & ((\Mult0|auto_generated|op_3~4_combout\ & 
-- (!\Mult0|auto_generated|op_3~6_combout\)) # (!\Mult0|auto_generated|op_3~4_combout\ & ((\Mult0|auto_generated|op_3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~6_combout\,
	datab => \Mult0|auto_generated|op_3~4_combout\,
	datac => \Mult0|auto_generated|op_3~2_combout\,
	datad => \Mult0|auto_generated|op_3~0_combout\,
	combout => \hexa_output_vector~14_combout\);

-- Location: LCCOMB_X4_Y26_N24
\hexa_output_vector~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hexa_output_vector~15_combout\ = (\Mult0|auto_generated|op_3~2_combout\ & (!\Mult0|auto_generated|op_3~6_combout\ & ((\Mult0|auto_generated|op_3~0_combout\) # (!\Mult0|auto_generated|op_3~4_combout\)))) # (!\Mult0|auto_generated|op_3~2_combout\ & 
-- (\Mult0|auto_generated|op_3~0_combout\ & (\Mult0|auto_generated|op_3~6_combout\ $ (!\Mult0|auto_generated|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~6_combout\,
	datab => \Mult0|auto_generated|op_3~2_combout\,
	datac => \Mult0|auto_generated|op_3~4_combout\,
	datad => \Mult0|auto_generated|op_3~0_combout\,
	combout => \hexa_output_vector~15_combout\);

-- Location: LCCOMB_X4_Y26_N26
\hexa_output_vector~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hexa_output_vector~16_combout\ = (\Mult0|auto_generated|op_3~0_combout\ & ((\Mult0|auto_generated|op_3~6_combout\) # (\Mult0|auto_generated|op_3~2_combout\ $ (\Mult0|auto_generated|op_3~4_combout\)))) # (!\Mult0|auto_generated|op_3~0_combout\ & 
-- ((\Mult0|auto_generated|op_3~2_combout\) # (\Mult0|auto_generated|op_3~6_combout\ $ (\Mult0|auto_generated|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~6_combout\,
	datab => \Mult0|auto_generated|op_3~2_combout\,
	datac => \Mult0|auto_generated|op_3~4_combout\,
	datad => \Mult0|auto_generated|op_3~0_combout\,
	combout => \hexa_output_vector~16_combout\);

-- Location: LCCOMB_X23_Y26_N0
\hexa_output_vector~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hexa_output_vector~17_combout\ = (\Mult0|auto_generated|op_3~14_combout\ & (\Mult0|auto_generated|op_3~8_combout\ & (\Mult0|auto_generated|op_3~12_combout\ $ (\Mult0|auto_generated|op_3~10_combout\)))) # (!\Mult0|auto_generated|op_3~14_combout\ & 
-- (!\Mult0|auto_generated|op_3~10_combout\ & (\Mult0|auto_generated|op_3~12_combout\ $ (\Mult0|auto_generated|op_3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~14_combout\,
	datab => \Mult0|auto_generated|op_3~12_combout\,
	datac => \Mult0|auto_generated|op_3~8_combout\,
	datad => \Mult0|auto_generated|op_3~10_combout\,
	combout => \hexa_output_vector~17_combout\);

-- Location: LCCOMB_X23_Y26_N26
\hexa_output_vector~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hexa_output_vector~24_combout\ = (\Mult0|auto_generated|op_3~14_combout\ & ((\Mult0|auto_generated|op_3~8_combout\ & ((\Mult0|auto_generated|op_3~10_combout\))) # (!\Mult0|auto_generated|op_3~8_combout\ & (\Mult0|auto_generated|op_3~12_combout\)))) # 
-- (!\Mult0|auto_generated|op_3~14_combout\ & (\Mult0|auto_generated|op_3~12_combout\ & (\Mult0|auto_generated|op_3~8_combout\ $ (\Mult0|auto_generated|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~14_combout\,
	datab => \Mult0|auto_generated|op_3~12_combout\,
	datac => \Mult0|auto_generated|op_3~8_combout\,
	datad => \Mult0|auto_generated|op_3~10_combout\,
	combout => \hexa_output_vector~24_combout\);

-- Location: LCCOMB_X23_Y26_N12
\hexa_output_vector~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hexa_output_vector~25_combout\ = (\Mult0|auto_generated|op_3~14_combout\ & ((\Mult0|auto_generated|op_3~8_combout\ & ((\Mult0|auto_generated|op_3~10_combout\))) # (!\Mult0|auto_generated|op_3~8_combout\ & (\Mult0|auto_generated|op_3~12_combout\)))) # 
-- (!\Mult0|auto_generated|op_3~14_combout\ & (!\Mult0|auto_generated|op_3~12_combout\ & (!\Mult0|auto_generated|op_3~8_combout\ & \Mult0|auto_generated|op_3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~14_combout\,
	datab => \Mult0|auto_generated|op_3~12_combout\,
	datac => \Mult0|auto_generated|op_3~8_combout\,
	datad => \Mult0|auto_generated|op_3~10_combout\,
	combout => \hexa_output_vector~25_combout\);

-- Location: LCCOMB_X23_Y26_N2
\hexa_output_vector~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hexa_output_vector~18_combout\ = (\Mult0|auto_generated|op_3~10_combout\ & ((\Mult0|auto_generated|op_3~12_combout\ & ((\Mult0|auto_generated|op_3~8_combout\))) # (!\Mult0|auto_generated|op_3~12_combout\ & (\Mult0|auto_generated|op_3~14_combout\ & 
-- !\Mult0|auto_generated|op_3~8_combout\)))) # (!\Mult0|auto_generated|op_3~10_combout\ & (!\Mult0|auto_generated|op_3~14_combout\ & (\Mult0|auto_generated|op_3~12_combout\ $ (\Mult0|auto_generated|op_3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~14_combout\,
	datab => \Mult0|auto_generated|op_3~12_combout\,
	datac => \Mult0|auto_generated|op_3~8_combout\,
	datad => \Mult0|auto_generated|op_3~10_combout\,
	combout => \hexa_output_vector~18_combout\);

-- Location: LCCOMB_X23_Y26_N4
\hexa_output_vector~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hexa_output_vector~19_combout\ = (\Mult0|auto_generated|op_3~10_combout\ & (!\Mult0|auto_generated|op_3~14_combout\ & ((\Mult0|auto_generated|op_3~8_combout\)))) # (!\Mult0|auto_generated|op_3~10_combout\ & ((\Mult0|auto_generated|op_3~12_combout\ & 
-- (!\Mult0|auto_generated|op_3~14_combout\)) # (!\Mult0|auto_generated|op_3~12_combout\ & ((\Mult0|auto_generated|op_3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~14_combout\,
	datab => \Mult0|auto_generated|op_3~12_combout\,
	datac => \Mult0|auto_generated|op_3~8_combout\,
	datad => \Mult0|auto_generated|op_3~10_combout\,
	combout => \hexa_output_vector~19_combout\);

-- Location: LCCOMB_X23_Y26_N14
\hexa_output_vector~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hexa_output_vector~20_combout\ = (\Mult0|auto_generated|op_3~12_combout\ & (\Mult0|auto_generated|op_3~8_combout\ & (\Mult0|auto_generated|op_3~14_combout\ $ (\Mult0|auto_generated|op_3~10_combout\)))) # (!\Mult0|auto_generated|op_3~12_combout\ & 
-- (!\Mult0|auto_generated|op_3~14_combout\ & ((\Mult0|auto_generated|op_3~8_combout\) # (\Mult0|auto_generated|op_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~14_combout\,
	datab => \Mult0|auto_generated|op_3~12_combout\,
	datac => \Mult0|auto_generated|op_3~8_combout\,
	datad => \Mult0|auto_generated|op_3~10_combout\,
	combout => \hexa_output_vector~20_combout\);

-- Location: LCCOMB_X23_Y26_N16
\hexa_output_vector~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hexa_output_vector~21_combout\ = (\Mult0|auto_generated|op_3~8_combout\ & ((\Mult0|auto_generated|op_3~14_combout\) # (\Mult0|auto_generated|op_3~12_combout\ $ (\Mult0|auto_generated|op_3~10_combout\)))) # (!\Mult0|auto_generated|op_3~8_combout\ & 
-- ((\Mult0|auto_generated|op_3~10_combout\) # (\Mult0|auto_generated|op_3~14_combout\ $ (\Mult0|auto_generated|op_3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~14_combout\,
	datab => \Mult0|auto_generated|op_3~12_combout\,
	datac => \Mult0|auto_generated|op_3~8_combout\,
	datad => \Mult0|auto_generated|op_3~10_combout\,
	combout => \hexa_output_vector~21_combout\);

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

ww_hexa_output_vector(0) <= \hexa_output_vector[0]~output_o\;

ww_hexa_output_vector(1) <= \hexa_output_vector[1]~output_o\;

ww_hexa_output_vector(2) <= \hexa_output_vector[2]~output_o\;

ww_hexa_output_vector(3) <= \hexa_output_vector[3]~output_o\;

ww_hexa_output_vector(4) <= \hexa_output_vector[4]~output_o\;

ww_hexa_output_vector(5) <= \hexa_output_vector[5]~output_o\;

ww_hexa_output_vector(6) <= \hexa_output_vector[6]~output_o\;

ww_hexa_output_vector(7) <= \hexa_output_vector[7]~output_o\;

ww_hexa_output_vector(8) <= \hexa_output_vector[8]~output_o\;

ww_hexa_output_vector(9) <= \hexa_output_vector[9]~output_o\;

ww_hexa_output_vector(10) <= \hexa_output_vector[10]~output_o\;

ww_hexa_output_vector(11) <= \hexa_output_vector[11]~output_o\;

ww_hexa_output_vector(12) <= \hexa_output_vector[12]~output_o\;

ww_hexa_output_vector(13) <= \hexa_output_vector[13]~output_o\;

ww_hexa_output_vector(14) <= \hexa_output_vector[14]~output_o\;

ww_hexa_output_vector(15) <= \hexa_output_vector[15]~output_o\;

ww_hexa_output_vector(16) <= \hexa_output_vector[16]~output_o\;
END structure;


