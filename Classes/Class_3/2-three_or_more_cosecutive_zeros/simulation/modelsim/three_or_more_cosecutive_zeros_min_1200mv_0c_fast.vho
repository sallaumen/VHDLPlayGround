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

-- DATE "04/10/2019 18:50:49"

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

ENTITY 	three_or_more_cosecutive_zeros IS
    PORT (
	switch_input : IN std_logic_vector(9 DOWNTO 0);
	leds_output : OUT std_logic
	);
END three_or_more_cosecutive_zeros;

-- Design Ports Information
-- leds_output	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF three_or_more_cosecutive_zeros IS
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
SIGNAL ww_leds_output : std_logic;
SIGNAL \switch_input[2]~input_o\ : std_logic;
SIGNAL \switch_input[6]~input_o\ : std_logic;
SIGNAL \leds_output~output_o\ : std_logic;
SIGNAL \switch_input[8]~input_o\ : std_logic;
SIGNAL \switch_input[7]~input_o\ : std_logic;
SIGNAL \switch_input[9]~input_o\ : std_logic;
SIGNAL \vector_iterator~3_combout\ : std_logic;
SIGNAL \switch_input[0]~input_o\ : std_logic;
SIGNAL \switch_input[3]~input_o\ : std_logic;
SIGNAL \switch_input[1]~input_o\ : std_logic;
SIGNAL \vector_iterator~0_combout\ : std_logic;
SIGNAL \switch_input[5]~input_o\ : std_logic;
SIGNAL \switch_input[4]~input_o\ : std_logic;
SIGNAL \vector_iterator~2_combout\ : std_logic;
SIGNAL \vector_iterator~1_combout\ : std_logic;
SIGNAL \vector_iterator~4_combout\ : std_logic;

BEGIN

ww_switch_input <= switch_input;
leds_output <= ww_leds_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X0_Y25_N22
\switch_input[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(2),
	o => \switch_input[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\switch_input[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(6),
	o => \switch_input[6]~input_o\);

-- Location: IOOBUF_X0_Y24_N23
\leds_output~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vector_iterator~4_combout\,
	devoe => ww_devoe,
	o => \leds_output~output_o\);

-- Location: IOIBUF_X0_Y26_N1
\switch_input[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(8),
	o => \switch_input[8]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\switch_input[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(7),
	o => \switch_input[7]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\switch_input[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(9),
	o => \switch_input[9]~input_o\);

-- Location: LCCOMB_X1_Y25_N6
\vector_iterator~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vector_iterator~3_combout\ = (!\switch_input[8]~input_o\ & (!\switch_input[7]~input_o\ & ((!\switch_input[9]~input_o\) # (!\switch_input[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_input[6]~input_o\,
	datab => \switch_input[8]~input_o\,
	datac => \switch_input[7]~input_o\,
	datad => \switch_input[9]~input_o\,
	combout => \vector_iterator~3_combout\);

-- Location: IOIBUF_X0_Y24_N1
\switch_input[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(0),
	o => \switch_input[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\switch_input[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(3),
	o => \switch_input[3]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\switch_input[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(1),
	o => \switch_input[1]~input_o\);

-- Location: LCCOMB_X1_Y25_N0
\vector_iterator~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vector_iterator~0_combout\ = (!\switch_input[2]~input_o\ & (!\switch_input[1]~input_o\ & ((!\switch_input[3]~input_o\) # (!\switch_input[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_input[2]~input_o\,
	datab => \switch_input[0]~input_o\,
	datac => \switch_input[3]~input_o\,
	datad => \switch_input[1]~input_o\,
	combout => \vector_iterator~0_combout\);

-- Location: IOIBUF_X0_Y22_N15
\switch_input[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(5),
	o => \switch_input[5]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\switch_input[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(4),
	o => \switch_input[4]~input_o\);

-- Location: LCCOMB_X1_Y25_N12
\vector_iterator~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vector_iterator~2_combout\ = (!\switch_input[6]~input_o\ & (!\switch_input[5]~input_o\ & ((!\switch_input[4]~input_o\) # (!\switch_input[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_input[6]~input_o\,
	datab => \switch_input[5]~input_o\,
	datac => \switch_input[7]~input_o\,
	datad => \switch_input[4]~input_o\,
	combout => \vector_iterator~2_combout\);

-- Location: LCCOMB_X1_Y25_N2
\vector_iterator~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vector_iterator~1_combout\ = (!\switch_input[3]~input_o\ & (!\switch_input[4]~input_o\ & ((!\switch_input[5]~input_o\) # (!\switch_input[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_input[2]~input_o\,
	datab => \switch_input[5]~input_o\,
	datac => \switch_input[3]~input_o\,
	datad => \switch_input[4]~input_o\,
	combout => \vector_iterator~1_combout\);

-- Location: LCCOMB_X1_Y25_N8
\vector_iterator~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vector_iterator~4_combout\ = (\vector_iterator~3_combout\) # ((\vector_iterator~0_combout\) # ((\vector_iterator~2_combout\) # (\vector_iterator~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vector_iterator~3_combout\,
	datab => \vector_iterator~0_combout\,
	datac => \vector_iterator~2_combout\,
	datad => \vector_iterator~1_combout\,
	combout => \vector_iterator~4_combout\);

ww_leds_output <= \leds_output~output_o\;
END structure;


