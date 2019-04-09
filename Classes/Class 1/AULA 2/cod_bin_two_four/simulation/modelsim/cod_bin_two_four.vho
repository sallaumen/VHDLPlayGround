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

-- DATE "03/20/2019 18:45:56"

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

ENTITY 	cod_bin_two_four IS
    PORT (
	bin_in_0 : IN std_logic;
	bin_in_1 : IN std_logic;
	leds_output_codified : OUT std_logic_vector(3 DOWNTO 0)
	);
END cod_bin_two_four;

-- Design Ports Information
-- leds_output_codified[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output_codified[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output_codified[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_output_codified[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin_in_0	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin_in_1	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cod_bin_two_four IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bin_in_0 : std_logic;
SIGNAL ww_bin_in_1 : std_logic;
SIGNAL ww_leds_output_codified : std_logic_vector(3 DOWNTO 0);
SIGNAL \leds_output_codified[0]~output_o\ : std_logic;
SIGNAL \leds_output_codified[1]~output_o\ : std_logic;
SIGNAL \leds_output_codified[2]~output_o\ : std_logic;
SIGNAL \leds_output_codified[3]~output_o\ : std_logic;
SIGNAL \bin_in_0~input_o\ : std_logic;
SIGNAL \bin_in_1~input_o\ : std_logic;
SIGNAL \leds_output_codified~0_combout\ : std_logic;
SIGNAL \leds_output_codified~1_combout\ : std_logic;
SIGNAL \leds_output_codified~2_combout\ : std_logic;
SIGNAL \leds_output_codified~3_combout\ : std_logic;
SIGNAL \ALT_INV_leds_output_codified~0_combout\ : std_logic;

BEGIN

ww_bin_in_0 <= bin_in_0;
ww_bin_in_1 <= bin_in_1;
leds_output_codified <= ww_leds_output_codified;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_leds_output_codified~0_combout\ <= NOT \leds_output_codified~0_combout\;

-- Location: IOOBUF_X0_Y20_N9
\leds_output_codified[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_leds_output_codified~0_combout\,
	devoe => ww_devoe,
	o => \leds_output_codified[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\leds_output_codified[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output_codified~1_combout\,
	devoe => ww_devoe,
	o => \leds_output_codified[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\leds_output_codified[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output_codified~2_combout\,
	devoe => ww_devoe,
	o => \leds_output_codified[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\leds_output_codified[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_output_codified~3_combout\,
	devoe => ww_devoe,
	o => \leds_output_codified[3]~output_o\);

-- Location: IOIBUF_X0_Y24_N1
\bin_in_0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_in_0,
	o => \bin_in_0~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\bin_in_1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_in_1,
	o => \bin_in_1~input_o\);

-- Location: LCCOMB_X1_Y21_N24
\leds_output_codified~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds_output_codified~0_combout\ = (\bin_in_0~input_o\) # (\bin_in_1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_in_0~input_o\,
	datad => \bin_in_1~input_o\,
	combout => \leds_output_codified~0_combout\);

-- Location: LCCOMB_X1_Y21_N26
\leds_output_codified~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds_output_codified~1_combout\ = (\bin_in_0~input_o\ & !\bin_in_1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_in_0~input_o\,
	datad => \bin_in_1~input_o\,
	combout => \leds_output_codified~1_combout\);

-- Location: LCCOMB_X1_Y21_N20
\leds_output_codified~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds_output_codified~2_combout\ = (!\bin_in_0~input_o\ & \bin_in_1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_in_0~input_o\,
	datad => \bin_in_1~input_o\,
	combout => \leds_output_codified~2_combout\);

-- Location: LCCOMB_X1_Y21_N14
\leds_output_codified~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leds_output_codified~3_combout\ = (\bin_in_0~input_o\ & \bin_in_1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_in_0~input_o\,
	datad => \bin_in_1~input_o\,
	combout => \leds_output_codified~3_combout\);

ww_leds_output_codified(0) <= \leds_output_codified[0]~output_o\;

ww_leds_output_codified(1) <= \leds_output_codified[1]~output_o\;

ww_leds_output_codified(2) <= \leds_output_codified[2]~output_o\;

ww_leds_output_codified(3) <= \leds_output_codified[3]~output_o\;
END structure;


