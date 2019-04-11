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

-- DATE "04/10/2019 18:58:44"

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

ENTITY 	conversor_gray_bin IS
    PORT (
	g_c : IN std_logic_vector(9 DOWNTO 0);
	gen_output : OUT std_logic_vector(9 DOWNTO 0)
	);
END conversor_gray_bin;

-- Design Ports Information
-- gen_output[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gen_output[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gen_output[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gen_output[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gen_output[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gen_output[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gen_output[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gen_output[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gen_output[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gen_output[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_c[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_c[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_c[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_c[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_c[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_c[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_c[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_c[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_c[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g_c[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF conversor_gray_bin IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_g_c : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_gen_output : std_logic_vector(9 DOWNTO 0);
SIGNAL \gen_output[0]~output_o\ : std_logic;
SIGNAL \gen_output[1]~output_o\ : std_logic;
SIGNAL \gen_output[2]~output_o\ : std_logic;
SIGNAL \gen_output[3]~output_o\ : std_logic;
SIGNAL \gen_output[4]~output_o\ : std_logic;
SIGNAL \gen_output[5]~output_o\ : std_logic;
SIGNAL \gen_output[6]~output_o\ : std_logic;
SIGNAL \gen_output[7]~output_o\ : std_logic;
SIGNAL \gen_output[8]~output_o\ : std_logic;
SIGNAL \gen_output[9]~output_o\ : std_logic;
SIGNAL \g_c[1]~input_o\ : std_logic;
SIGNAL \g_c[0]~input_o\ : std_logic;
SIGNAL \g_c[2]~input_o\ : std_logic;
SIGNAL \g_c[4]~input_o\ : std_logic;
SIGNAL \g_c[5]~input_o\ : std_logic;
SIGNAL \g_c[8]~input_o\ : std_logic;
SIGNAL \g_c[7]~input_o\ : std_logic;
SIGNAL \gen_output~0_combout\ : std_logic;
SIGNAL \gen_output~1_combout\ : std_logic;
SIGNAL \g_c[3]~input_o\ : std_logic;
SIGNAL \gen_output~2_combout\ : std_logic;
SIGNAL \gen_output~3_combout\ : std_logic;
SIGNAL \g_c[9]~input_o\ : std_logic;
SIGNAL \gen_output~4_combout\ : std_logic;
SIGNAL \gen_output~5_combout\ : std_logic;
SIGNAL \gen_output~6_combout\ : std_logic;
SIGNAL \gen_output~7_combout\ : std_logic;
SIGNAL \gen_output~8_combout\ : std_logic;
SIGNAL \g_c[6]~input_o\ : std_logic;
SIGNAL \gen_output~9_combout\ : std_logic;
SIGNAL \gen_output~10_combout\ : std_logic;

BEGIN

ww_g_c <= g_c;
gen_output <= ww_gen_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y20_N9
\gen_output[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_output~3_combout\,
	devoe => ww_devoe,
	o => \gen_output[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\gen_output[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_output~4_combout\,
	devoe => ww_devoe,
	o => \gen_output[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\gen_output[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_output~5_combout\,
	devoe => ww_devoe,
	o => \gen_output[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\gen_output[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_output~7_combout\,
	devoe => ww_devoe,
	o => \gen_output[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\gen_output[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_output~8_combout\,
	devoe => ww_devoe,
	o => \gen_output[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\gen_output[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_output~9_combout\,
	devoe => ww_devoe,
	o => \gen_output[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\gen_output[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_output~10_combout\,
	devoe => ww_devoe,
	o => \gen_output[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\gen_output[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_output~0_combout\,
	devoe => ww_devoe,
	o => \gen_output[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\gen_output[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_c[8]~input_o\,
	devoe => ww_devoe,
	o => \gen_output[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\gen_output[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g_c[9]~input_o\,
	devoe => ww_devoe,
	o => \gen_output[9]~output_o\);

-- Location: IOIBUF_X0_Y27_N1
\g_c[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_c(1),
	o => \g_c[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\g_c[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_c(0),
	o => \g_c[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\g_c[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_c(2),
	o => \g_c[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\g_c[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_c(4),
	o => \g_c[4]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\g_c[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_c(5),
	o => \g_c[5]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\g_c[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_c(8),
	o => \g_c[8]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\g_c[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_c(7),
	o => \g_c[7]~input_o\);

-- Location: LCCOMB_X1_Y24_N0
\gen_output~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_output~0_combout\ = \g_c[8]~input_o\ $ (\g_c[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g_c[8]~input_o\,
	datad => \g_c[7]~input_o\,
	combout => \gen_output~0_combout\);

-- Location: LCCOMB_X1_Y24_N26
\gen_output~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_output~1_combout\ = \g_c[6]~input_o\ $ (\g_c[4]~input_o\ $ (\g_c[5]~input_o\ $ (\gen_output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_c[6]~input_o\,
	datab => \g_c[4]~input_o\,
	datac => \g_c[5]~input_o\,
	datad => \gen_output~0_combout\,
	combout => \gen_output~1_combout\);

-- Location: IOIBUF_X0_Y23_N8
\g_c[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_c(3),
	o => \g_c[3]~input_o\);

-- Location: LCCOMB_X1_Y24_N12
\gen_output~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_output~2_combout\ = (\g_c[9]~input_o\ & (\g_c[2]~input_o\ $ (\gen_output~1_combout\ $ (\g_c[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_c[9]~input_o\,
	datab => \g_c[2]~input_o\,
	datac => \gen_output~1_combout\,
	datad => \g_c[3]~input_o\,
	combout => \gen_output~2_combout\);

-- Location: LCCOMB_X1_Y24_N22
\gen_output~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_output~3_combout\ = \g_c[1]~input_o\ $ (\g_c[0]~input_o\ $ (\gen_output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_c[1]~input_o\,
	datac => \g_c[0]~input_o\,
	datad => \gen_output~2_combout\,
	combout => \gen_output~3_combout\);

-- Location: IOIBUF_X0_Y25_N1
\g_c[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_c(9),
	o => \g_c[9]~input_o\);

-- Location: LCCOMB_X1_Y24_N8
\gen_output~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_output~4_combout\ = \g_c[1]~input_o\ $ (((\gen_output~2_combout\) # ((\g_c[2]~input_o\ & !\g_c[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_c[1]~input_o\,
	datab => \g_c[2]~input_o\,
	datac => \g_c[9]~input_o\,
	datad => \gen_output~2_combout\,
	combout => \gen_output~4_combout\);

-- Location: LCCOMB_X1_Y24_N2
\gen_output~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_output~5_combout\ = \g_c[2]~input_o\ $ (\g_c[3]~input_o\ $ (((\g_c[9]~input_o\ & \gen_output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_c[9]~input_o\,
	datab => \g_c[2]~input_o\,
	datac => \gen_output~1_combout\,
	datad => \g_c[3]~input_o\,
	combout => \gen_output~5_combout\);

-- Location: LCCOMB_X1_Y24_N28
\gen_output~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_output~6_combout\ = \g_c[6]~input_o\ $ (\g_c[5]~input_o\ $ (\g_c[8]~input_o\ $ (\g_c[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_c[6]~input_o\,
	datab => \g_c[5]~input_o\,
	datac => \g_c[8]~input_o\,
	datad => \g_c[7]~input_o\,
	combout => \gen_output~6_combout\);

-- Location: LCCOMB_X1_Y24_N30
\gen_output~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_output~7_combout\ = \g_c[3]~input_o\ $ (\g_c[4]~input_o\ $ (((\g_c[9]~input_o\ & \gen_output~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_c[3]~input_o\,
	datab => \g_c[4]~input_o\,
	datac => \g_c[9]~input_o\,
	datad => \gen_output~6_combout\,
	combout => \gen_output~7_combout\);

-- Location: LCCOMB_X1_Y24_N16
\gen_output~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_output~8_combout\ = \g_c[4]~input_o\ $ (((\g_c[9]~input_o\ & ((\gen_output~6_combout\))) # (!\g_c[9]~input_o\ & (\g_c[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_c[9]~input_o\,
	datab => \g_c[4]~input_o\,
	datac => \g_c[5]~input_o\,
	datad => \gen_output~6_combout\,
	combout => \gen_output~8_combout\);

-- Location: IOIBUF_X0_Y25_N15
\g_c[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g_c(6),
	o => \g_c[6]~input_o\);

-- Location: LCCOMB_X1_Y24_N18
\gen_output~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_output~9_combout\ = \g_c[5]~input_o\ $ (\g_c[6]~input_o\ $ (((\g_c[9]~input_o\ & \gen_output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_c[9]~input_o\,
	datab => \g_c[5]~input_o\,
	datac => \g_c[6]~input_o\,
	datad => \gen_output~0_combout\,
	combout => \gen_output~9_combout\);

-- Location: LCCOMB_X1_Y24_N4
\gen_output~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_output~10_combout\ = \g_c[6]~input_o\ $ (\g_c[7]~input_o\ $ (((\g_c[9]~input_o\ & \g_c[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g_c[9]~input_o\,
	datab => \g_c[8]~input_o\,
	datac => \g_c[6]~input_o\,
	datad => \g_c[7]~input_o\,
	combout => \gen_output~10_combout\);

ww_gen_output(0) <= \gen_output[0]~output_o\;

ww_gen_output(1) <= \gen_output[1]~output_o\;

ww_gen_output(2) <= \gen_output[2]~output_o\;

ww_gen_output(3) <= \gen_output[3]~output_o\;

ww_gen_output(4) <= \gen_output[4]~output_o\;

ww_gen_output(5) <= \gen_output[5]~output_o\;

ww_gen_output(6) <= \gen_output[6]~output_o\;

ww_gen_output(7) <= \gen_output[7]~output_o\;

ww_gen_output(8) <= \gen_output[8]~output_o\;

ww_gen_output(9) <= \gen_output[9]~output_o\;
END structure;


