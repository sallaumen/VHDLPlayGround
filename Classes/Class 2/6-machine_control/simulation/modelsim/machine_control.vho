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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "04/09/2019 22:48:56"

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

ENTITY 	machine_control IS
    PORT (
	switch_input_A : IN std_logic;
	switch_input_B : IN std_logic;
	switch_input_C : IN std_logic;
	switch_input_D : IN std_logic;
	leds_output : OUT std_logic_vector(3 DOWNTO 0)
	);
END machine_control;

-- Design Ports Information
-- leds_output[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output[3]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input_A	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input_B	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input_C	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_input_D	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF machine_control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_switch_input_A : std_logic;
SIGNAL ww_switch_input_B : std_logic;
SIGNAL ww_switch_input_C : std_logic;
SIGNAL ww_switch_input_D : std_logic;
SIGNAL ww_leds_output : std_logic_vector(3 DOWNTO 0);
SIGNAL \leds_output[0]~output_o\ : std_logic;
SIGNAL \leds_output[1]~output_o\ : std_logic;
SIGNAL \leds_output[2]~output_o\ : std_logic;
SIGNAL \leds_output[3]~output_o\ : std_logic;
SIGNAL \switch_input_D~input_o\ : std_logic;
SIGNAL \switch_input_A~input_o\ : std_logic;
SIGNAL \switch_input_C~input_o\ : std_logic;
SIGNAL \switch_input_B~input_o\ : std_logic;
SIGNAL \leds_output~0_combout\ : std_logic;
SIGNAL \leds_output~1_combout\ : std_logic;
SIGNAL \leds_output~2_combout\ : std_logic;
SIGNAL \leds_output~3_combout\ : std_logic;

BEGIN

ww_switch_input_A <= switch_input_A;
ww_switch_input_B <= switch_input_B;
ww_switch_input_C <= switch_input_C;
ww_switch_input_D <= switch_input_D;
leds_output <= ww_leds_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y10_N9
\leds_output[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output~0_combout\,
	devoe => ww_devoe,
	o => \leds_output[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\leds_output[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output~1_combout\,
	devoe => ww_devoe,
	o => \leds_output[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\leds_output[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output~2_combout\,
	devoe => ww_devoe,
	o => \leds_output[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\leds_output[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output~3_combout\,
	devoe => ww_devoe,
	o => \leds_output[3]~output_o\);

-- Location: IOIBUF_X0_Y9_N15
\switch_input_D~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input_D,
	o => \switch_input_D~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\switch_input_A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input_A,
	o => \switch_input_A~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\switch_input_C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input_C,
	o => \switch_input_C~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\switch_input_B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_input_B,
	o => \switch_input_B~input_o\);

-- Location: LCCOMB_X1_Y10_N16
\leds_output~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds_output~0_combout\ = (\switch_input_A~input_o\ & (((!\switch_input_C~input_o\ & !\switch_input_B~input_o\)) # (!\switch_input_D~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_input_D~input_o\,
	datab => \switch_input_A~input_o\,
	datac => \switch_input_C~input_o\,
	datad => \switch_input_B~input_o\,
	combout => \leds_output~0_combout\);

-- Location: LCCOMB_X1_Y10_N10
\leds_output~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds_output~1_combout\ = (!\switch_input_D~input_o\ & (\switch_input_A~input_o\ & \switch_input_B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_input_D~input_o\,
	datab => \switch_input_A~input_o\,
	datad => \switch_input_B~input_o\,
	combout => \leds_output~1_combout\);

-- Location: LCCOMB_X1_Y10_N12
\leds_output~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds_output~2_combout\ = (!\switch_input_D~input_o\ & \switch_input_C~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_input_D~input_o\,
	datad => \switch_input_C~input_o\,
	combout => \leds_output~2_combout\);

-- Location: LCCOMB_X1_Y10_N14
\leds_output~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds_output~3_combout\ = (\switch_input_D~input_o\ & (!\switch_input_C~input_o\ & !\switch_input_B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_input_D~input_o\,
	datab => \switch_input_C~input_o\,
	datad => \switch_input_B~input_o\,
	combout => \leds_output~3_combout\);

ww_leds_output(0) <= \leds_output[0]~output_o\;

ww_leds_output(1) <= \leds_output[1]~output_o\;

ww_leds_output(2) <= \leds_output[2]~output_o\;

ww_leds_output(3) <= \leds_output[3]~output_o\;
END structure;


