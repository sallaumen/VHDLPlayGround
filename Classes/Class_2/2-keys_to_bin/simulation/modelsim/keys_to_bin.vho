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

-- DATE "04/03/2019 19:17:26"

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

ENTITY 	keys_to_bin IS
    PORT (
	switch_input : IN std_logic_vector(9 DOWNTO 0);
	leds_output : OUT std_logic_vector(9 DOWNTO 0)
	);
END keys_to_bin;

-- Design Ports Information
-- leds_output[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[6]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[8]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[9]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[6]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[3]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[4]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[5]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[7]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[8]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[9]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF keys_to_bin IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_switch_input : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_leds_output : std_logic_vector(9 DOWNTO 0);
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \switch_input[3]~input_o\ : std_logic;
SIGNAL \switch_input[0]~input_o\ : std_logic;
SIGNAL \switch_input[7]~input_o\ : std_logic;
SIGNAL \leds_output[0]~output_o\ : std_logic;
SIGNAL \leds_output[1]~output_o\ : std_logic;
SIGNAL \leds_output[2]~output_o\ : std_logic;
SIGNAL \leds_output[3]~output_o\ : std_logic;
SIGNAL \leds_output[4]~output_o\ : std_logic;
SIGNAL \leds_output[5]~output_o\ : std_logic;
SIGNAL \leds_output[6]~output_o\ : std_logic;
SIGNAL \leds_output[7]~output_o\ : std_logic;
SIGNAL \leds_output[8]~output_o\ : std_logic;
SIGNAL \leds_output[9]~output_o\ : std_logic;
SIGNAL \switch_input[6]~input_o\ : std_logic;
SIGNAL \switch_input[1]~input_o\ : std_logic;
SIGNAL \switch_input[2]~input_o\ : std_logic;
SIGNAL \switch_input[4]~input_o\ : std_logic;
SIGNAL \switch_input[5]~input_o\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \switch_input[9]~input_o\ : std_logic;
SIGNAL \switch_input[8]~input_o\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add6~1_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add5~3_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;

BEGIN

ww_switch_input <= switch_input;
leds_output <= ww_leds_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X1_Y25_N10
\Add4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = (\Add2~0_combout\ & (\switch_input[0]~input_o\ $ (\switch_input[1]~input_o\ $ (\switch_input[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_input[0]~input_o\,
	datab => \switch_input[1]~input_o\,
	datac => \switch_input[2]~input_o\,
	datad => \Add2~0_combout\,
	combout => \Add4~1_combout\);

-- Location: IOIBUF_X0_Y25_N15
\switch_input[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(3),
	o => \switch_input[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\switch_input[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(0),
	o => \switch_input[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\switch_input[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(7),
	o => \switch_input[7]~input_o\);

-- Location: IOOBUF_X0_Y20_N9
\leds_output[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add8~0_combout\,
	devoe => ww_devoe,
	o => \leds_output[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\leds_output[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add8~2_combout\,
	devoe => ww_devoe,
	o => \leds_output[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\leds_output[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add8~4_combout\,
	devoe => ww_devoe,
	o => \leds_output[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\leds_output[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add8~6_combout\,
	devoe => ww_devoe,
	o => \leds_output[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\leds_output[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds_output[4]~output_o\);

-- Location: IOOBUF_X9_Y29_N2
\leds_output[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds_output[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\leds_output[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds_output[6]~output_o\);

-- Location: IOOBUF_X5_Y29_N2
\leds_output[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds_output[7]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\leds_output[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds_output[8]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\leds_output[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds_output[9]~output_o\);

-- Location: IOIBUF_X0_Y23_N8
\switch_input[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(6),
	o => \switch_input[6]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\switch_input[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(1),
	o => \switch_input[1]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\switch_input[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(2),
	o => \switch_input[2]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\switch_input[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(4),
	o => \switch_input[4]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\switch_input[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(5),
	o => \switch_input[5]~input_o\);

-- Location: LCCOMB_X1_Y25_N24
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \switch_input[3]~input_o\ $ (\switch_input[4]~input_o\ $ (\switch_input[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_input[3]~input_o\,
	datab => \switch_input[4]~input_o\,
	datac => \switch_input[5]~input_o\,
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X1_Y25_N18
\Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = \switch_input[0]~input_o\ $ (\switch_input[1]~input_o\ $ (\switch_input[2]~input_o\ $ (\Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_input[0]~input_o\,
	datab => \switch_input[1]~input_o\,
	datac => \switch_input[2]~input_o\,
	datad => \Add2~0_combout\,
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X1_Y25_N12
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = \switch_input[6]~input_o\ $ (\Add4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch_input[6]~input_o\,
	datad => \Add4~0_combout\,
	combout => \Add5~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\switch_input[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(9),
	o => \switch_input[9]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\switch_input[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(8),
	o => \switch_input[8]~input_o\);

-- Location: LCCOMB_X1_Y25_N22
\Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = \switch_input[7]~input_o\ $ (\switch_input[9]~input_o\ $ (\switch_input[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_input[7]~input_o\,
	datab => \switch_input[9]~input_o\,
	datad => \switch_input[8]~input_o\,
	combout => \Add6~0_combout\);

-- Location: LCCOMB_X1_Y25_N0
\Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = (\Add5~0_combout\ & (\Add6~0_combout\ $ (VCC))) # (!\Add5~0_combout\ & (\Add6~0_combout\ & VCC))
-- \Add8~1\ = CARRY((\Add5~0_combout\ & \Add6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => \Add6~0_combout\,
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X1_Y25_N26
\Add6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~1_combout\ = (\switch_input[7]~input_o\ & ((\switch_input[9]~input_o\) # (\switch_input[8]~input_o\))) # (!\switch_input[7]~input_o\ & (\switch_input[9]~input_o\ & \switch_input[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_input[7]~input_o\,
	datab => \switch_input[9]~input_o\,
	datad => \switch_input[8]~input_o\,
	combout => \Add6~1_combout\);

-- Location: LCCOMB_X1_Y25_N20
\Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = (\switch_input[3]~input_o\ & ((\switch_input[4]~input_o\) # (\switch_input[5]~input_o\))) # (!\switch_input[3]~input_o\ & (\switch_input[4]~input_o\ & \switch_input[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_input[3]~input_o\,
	datab => \switch_input[4]~input_o\,
	datac => \switch_input[5]~input_o\,
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X1_Y25_N14
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\switch_input[0]~input_o\ & ((\switch_input[2]~input_o\) # (\switch_input[1]~input_o\))) # (!\switch_input[0]~input_o\ & (\switch_input[2]~input_o\ & \switch_input[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_input[0]~input_o\,
	datac => \switch_input[2]~input_o\,
	datad => \switch_input[1]~input_o\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X1_Y25_N16
\Add5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~1_combout\ = (\switch_input[6]~input_o\ & \Add4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch_input[6]~input_o\,
	datad => \Add4~0_combout\,
	combout => \Add5~1_combout\);

-- Location: LCCOMB_X1_Y25_N8
\Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = \Add4~1_combout\ $ (\Add2~1_combout\ $ (\Add1~0_combout\ $ (\Add5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~1_combout\,
	datab => \Add2~1_combout\,
	datac => \Add1~0_combout\,
	datad => \Add5~1_combout\,
	combout => \Add5~2_combout\);

-- Location: LCCOMB_X1_Y25_N2
\Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (\Add6~1_combout\ & ((\Add5~2_combout\ & (\Add8~1\ & VCC)) # (!\Add5~2_combout\ & (!\Add8~1\)))) # (!\Add6~1_combout\ & ((\Add5~2_combout\ & (!\Add8~1\)) # (!\Add5~2_combout\ & ((\Add8~1\) # (GND)))))
-- \Add8~3\ = CARRY((\Add6~1_combout\ & (!\Add5~2_combout\ & !\Add8~1\)) # (!\Add6~1_combout\ & ((!\Add8~1\) # (!\Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~1_combout\,
	datab => \Add5~2_combout\,
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X1_Y25_N30
\Add5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~3_combout\ = (\Add5~1_combout\ & (\Add4~1_combout\ $ (\Add2~1_combout\ $ (\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~1_combout\,
	datab => \Add2~1_combout\,
	datac => \Add1~0_combout\,
	datad => \Add5~1_combout\,
	combout => \Add5~3_combout\);

-- Location: LCCOMB_X1_Y25_N28
\Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\Add4~1_combout\ & ((\Add2~1_combout\) # (\Add1~0_combout\))) # (!\Add4~1_combout\ & (\Add2~1_combout\ & \Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~1_combout\,
	datab => \Add2~1_combout\,
	datac => \Add1~0_combout\,
	combout => \Add4~2_combout\);

-- Location: LCCOMB_X1_Y25_N4
\Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (\Add8~3\ & ((\Add5~3_combout\ $ (\Add4~2_combout\)))) # (!\Add8~3\ & (\Add5~3_combout\ $ (\Add4~2_combout\ $ (VCC))))
-- \Add8~5\ = CARRY((!\Add8~3\ & (\Add5~3_combout\ $ (\Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~3_combout\,
	datab => \Add4~2_combout\,
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X1_Y25_N6
\Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = \Add8~5\ $ (((\Add5~3_combout\ & \Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~3_combout\,
	datad => \Add4~2_combout\,
	cin => \Add8~5\,
	combout => \Add8~6_combout\);

ww_leds_output(0) <= \leds_output[0]~output_o\;

ww_leds_output(1) <= \leds_output[1]~output_o\;

ww_leds_output(2) <= \leds_output[2]~output_o\;

ww_leds_output(3) <= \leds_output[3]~output_o\;

ww_leds_output(4) <= \leds_output[4]~output_o\;

ww_leds_output(5) <= \leds_output[5]~output_o\;

ww_leds_output(6) <= \leds_output[6]~output_o\;

ww_leds_output(7) <= \leds_output[7]~output_o\;

ww_leds_output(8) <= \leds_output[8]~output_o\;

ww_leds_output(9) <= \leds_output[9]~output_o\;
END structure;


