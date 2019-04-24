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

-- DATE "04/17/2019 17:08:45"

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

ENTITY 	countPatternOccurrences IS
    PORT (
	binary_input_vector : IN std_logic_vector(9 DOWNTO 0);
	binary_output_vector : OUT std_logic_vector(9 DOWNTO 0)
	);
END countPatternOccurrences;

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
-- binary_input_vector[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary_input_vector[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF countPatternOccurrences IS
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
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \sum_vector[6][1]~2_combout\ : std_logic;
SIGNAL \sum_vector[6][1]~3_combout\ : std_logic;
SIGNAL \binary_input_vector[2]~input_o\ : std_logic;
SIGNAL \binary_input_vector[0]~input_o\ : std_logic;
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
SIGNAL \binary_input_vector[4]~input_o\ : std_logic;
SIGNAL \binary_input_vector[3]~input_o\ : std_logic;
SIGNAL \binary_input_vector[1]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \binary_input_vector[5]~input_o\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \sum_vector[6][0]~0_combout\ : std_logic;
SIGNAL \binary_input_vector[6]~input_o\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \binary_input_vector[8]~input_o\ : std_logic;
SIGNAL \binary_input_vector[7]~input_o\ : std_logic;
SIGNAL \binary_input_vector[9]~input_o\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \sum_vector~1_combout\ : std_logic;
SIGNAL \sum_vector~5_combout\ : std_logic;
SIGNAL \sum_vector[8][1]~4_combout\ : std_logic;
SIGNAL \sum_vector~6_combout\ : std_logic;
SIGNAL \sum_vector~7_combout\ : std_logic;

BEGIN

ww_binary_input_vector <= binary_input_vector;
binary_output_vector <= ww_binary_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X1_Y25_N6
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\binary_input_vector[2]~input_o\ & (\binary_input_vector[0]~input_o\ & (!\binary_input_vector[3]~input_o\ & !\binary_input_vector[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_input_vector[2]~input_o\,
	datab => \binary_input_vector[0]~input_o\,
	datac => \binary_input_vector[3]~input_o\,
	datad => \binary_input_vector[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y25_N26
\sum_vector[6][1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector[6][1]~2_combout\ = (\Equal3~0_combout\ & (\Equal2~0_combout\ $ (((\Equal0~0_combout\) # (\Equal1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \sum_vector[6][1]~2_combout\);

-- Location: LCCOMB_X1_Y25_N12
\sum_vector[6][1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector[6][1]~3_combout\ = (\sum_vector[6][1]~2_combout\) # ((!\binary_input_vector[1]~input_o\ & (\binary_input_vector[0]~input_o\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_input_vector[1]~input_o\,
	datab => \binary_input_vector[0]~input_o\,
	datac => \sum_vector[6][1]~2_combout\,
	datad => \Equal2~0_combout\,
	combout => \sum_vector[6][1]~3_combout\);

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

-- Location: IOOBUF_X0_Y20_N9
\binary_output_vector[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_vector~1_combout\,
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
	i => \sum_vector~6_combout\,
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
	i => \sum_vector~7_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => \binary_output_vector[9]~output_o\);

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
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\binary_input_vector[2]~input_o\ & (!\binary_input_vector[4]~input_o\ & (\binary_input_vector[3]~input_o\ & \binary_input_vector[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_input_vector[2]~input_o\,
	datab => \binary_input_vector[4]~input_o\,
	datac => \binary_input_vector[3]~input_o\,
	datad => \binary_input_vector[1]~input_o\,
	combout => \Equal1~0_combout\);

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

-- Location: LCCOMB_X1_Y25_N2
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\binary_input_vector[6]~input_o\ & (\binary_input_vector[3]~input_o\ & (!\binary_input_vector[4]~input_o\ & \binary_input_vector[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_input_vector[6]~input_o\,
	datab => \binary_input_vector[3]~input_o\,
	datac => \binary_input_vector[4]~input_o\,
	datad => \binary_input_vector[5]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X1_Y25_N28
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\binary_input_vector[2]~input_o\ & (!\binary_input_vector[3]~input_o\ & (\binary_input_vector[4]~input_o\ & !\binary_input_vector[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_input_vector[2]~input_o\,
	datab => \binary_input_vector[3]~input_o\,
	datac => \binary_input_vector[4]~input_o\,
	datad => \binary_input_vector[5]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X1_Y25_N10
\sum_vector[6][0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector[6][0]~0_combout\ = \Equal3~0_combout\ $ (\Equal2~0_combout\ $ (((\Equal0~0_combout\) # (\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \sum_vector[6][0]~0_combout\);

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

-- Location: LCCOMB_X1_Y25_N16
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\binary_input_vector[7]~input_o\ & (!\binary_input_vector[5]~input_o\ & (\binary_input_vector[4]~input_o\ & \binary_input_vector[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_input_vector[7]~input_o\,
	datab => \binary_input_vector[5]~input_o\,
	datac => \binary_input_vector[4]~input_o\,
	datad => \binary_input_vector[6]~input_o\,
	combout => \Equal4~0_combout\);

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

-- Location: LCCOMB_X1_Y25_N22
\Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (\binary_input_vector[6]~input_o\ & (\binary_input_vector[8]~input_o\ & (!\binary_input_vector[7]~input_o\ & !\binary_input_vector[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_input_vector[6]~input_o\,
	datab => \binary_input_vector[8]~input_o\,
	datac => \binary_input_vector[7]~input_o\,
	datad => \binary_input_vector[9]~input_o\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X1_Y25_N20
\Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\binary_input_vector[6]~input_o\ & (\binary_input_vector[5]~input_o\ & (\binary_input_vector[7]~input_o\ & !\binary_input_vector[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_input_vector[6]~input_o\,
	datab => \binary_input_vector[5]~input_o\,
	datac => \binary_input_vector[7]~input_o\,
	datad => \binary_input_vector[8]~input_o\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X1_Y25_N8
\sum_vector~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector~1_combout\ = \sum_vector[6][0]~0_combout\ $ (\Equal4~0_combout\ $ (\Equal6~0_combout\ $ (\Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum_vector[6][0]~0_combout\,
	datab => \Equal4~0_combout\,
	datac => \Equal6~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \sum_vector~1_combout\);

-- Location: LCCOMB_X1_Y25_N0
\sum_vector~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector~5_combout\ = (\Equal6~0_combout\ & (\sum_vector[6][0]~0_combout\ $ (\Equal4~0_combout\ $ (\Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum_vector[6][0]~0_combout\,
	datab => \Equal4~0_combout\,
	datac => \Equal6~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \sum_vector~5_combout\);

-- Location: LCCOMB_X1_Y25_N14
\sum_vector[8][1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector[8][1]~4_combout\ = \sum_vector[6][1]~3_combout\ $ (((\Equal5~0_combout\ & ((\Equal4~0_combout\) # (\sum_vector[6][0]~0_combout\))) # (!\Equal5~0_combout\ & (\Equal4~0_combout\ & \sum_vector[6][0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum_vector[6][1]~3_combout\,
	datab => \Equal5~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \sum_vector[6][0]~0_combout\,
	combout => \sum_vector[8][1]~4_combout\);

-- Location: LCCOMB_X1_Y25_N18
\sum_vector~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector~6_combout\ = \sum_vector~5_combout\ $ (\sum_vector[8][1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sum_vector~5_combout\,
	datac => \sum_vector[8][1]~4_combout\,
	combout => \sum_vector~6_combout\);

-- Location: LCCOMB_X1_Y25_N4
\sum_vector~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum_vector~7_combout\ = (\sum_vector~5_combout\ & \sum_vector[8][1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sum_vector~5_combout\,
	datac => \sum_vector[8][1]~4_combout\,
	combout => \sum_vector~7_combout\);

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


