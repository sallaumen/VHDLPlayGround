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

-- DATE "04/10/2019 18:21:23"

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

ENTITY 	odd_or_even IS
    PORT (
	input_selector : IN std_logic;
	switch_input : IN std_logic_vector(8 DOWNTO 0);
	leds_output : OUT std_logic_vector(9 DOWNTO 0)
	);
END odd_or_even;

-- Design Ports Information
-- leds_output[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_selector	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[0]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[1]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[2]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[3]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[4]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[5]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[6]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[7]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input[8]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF odd_or_even IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_selector : std_logic;
SIGNAL ww_switch_input : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_leds_output : std_logic_vector(9 DOWNTO 0);
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
SIGNAL \switch_input[7]~input_o\ : std_logic;
SIGNAL \switch_input[4]~input_o\ : std_logic;
SIGNAL \switch_input[5]~input_o\ : std_logic;
SIGNAL \switch_input[3]~input_o\ : std_logic;
SIGNAL \leds_output~1_combout\ : std_logic;
SIGNAL \switch_input[8]~input_o\ : std_logic;
SIGNAL \switch_input[1]~input_o\ : std_logic;
SIGNAL \input_selector~input_o\ : std_logic;
SIGNAL \switch_input[0]~input_o\ : std_logic;
SIGNAL \leds_output~0_combout\ : std_logic;
SIGNAL \leds_output~2_combout\ : std_logic;
SIGNAL \switch_input[2]~input_o\ : std_logic;
SIGNAL \switch_input[6]~input_o\ : std_logic;

BEGIN

ww_input_selector <= input_selector;
ww_switch_input <= switch_input;
leds_output <= ww_leds_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y20_N9
\leds_output[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output~2_combout\,
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
	i => \switch_input[0]~input_o\,
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
	i => \switch_input[1]~input_o\,
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
	i => \switch_input[2]~input_o\,
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
	i => \switch_input[3]~input_o\,
	devoe => ww_devoe,
	o => \leds_output[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\leds_output[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \switch_input[4]~input_o\,
	devoe => ww_devoe,
	o => \leds_output[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\leds_output[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \switch_input[5]~input_o\,
	devoe => ww_devoe,
	o => \leds_output[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\leds_output[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \switch_input[6]~input_o\,
	devoe => ww_devoe,
	o => \leds_output[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\leds_output[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \switch_input[7]~input_o\,
	devoe => ww_devoe,
	o => \leds_output[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\leds_output[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \switch_input[8]~input_o\,
	devoe => ww_devoe,
	o => \leds_output[9]~output_o\);

-- Location: IOIBUF_X0_Y26_N1
\switch_input[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(7),
	o => \switch_input[7]~input_o\);

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

-- Location: IOIBUF_X0_Y25_N15
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
\switch_input[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(3),
	o => \switch_input[3]~input_o\);

-- Location: LCCOMB_X1_Y24_N2
\leds_output~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds_output~1_combout\ = \switch_input[6]~input_o\ $ (\switch_input[4]~input_o\ $ (\switch_input[5]~input_o\ $ (\switch_input[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_input[6]~input_o\,
	datab => \switch_input[4]~input_o\,
	datac => \switch_input[5]~input_o\,
	datad => \switch_input[3]~input_o\,
	combout => \leds_output~1_combout\);

-- Location: IOIBUF_X0_Y25_N1
\switch_input[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(8),
	o => \switch_input[8]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\switch_input[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(1),
	o => \switch_input[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\input_selector~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_selector,
	o => \input_selector~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\switch_input[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(0),
	o => \switch_input[0]~input_o\);

-- Location: LCCOMB_X1_Y24_N0
\leds_output~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds_output~0_combout\ = \switch_input[2]~input_o\ $ (\switch_input[1]~input_o\ $ (\input_selector~input_o\ $ (\switch_input[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_input[2]~input_o\,
	datab => \switch_input[1]~input_o\,
	datac => \input_selector~input_o\,
	datad => \switch_input[0]~input_o\,
	combout => \leds_output~0_combout\);

-- Location: LCCOMB_X1_Y24_N4
\leds_output~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds_output~2_combout\ = \switch_input[7]~input_o\ $ (\leds_output~1_combout\ $ (\switch_input[8]~input_o\ $ (\leds_output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_input[7]~input_o\,
	datab => \leds_output~1_combout\,
	datac => \switch_input[8]~input_o\,
	datad => \leds_output~0_combout\,
	combout => \leds_output~2_combout\);

-- Location: IOIBUF_X0_Y23_N8
\switch_input[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(2),
	o => \switch_input[2]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\switch_input[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input(6),
	o => \switch_input[6]~input_o\);

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


