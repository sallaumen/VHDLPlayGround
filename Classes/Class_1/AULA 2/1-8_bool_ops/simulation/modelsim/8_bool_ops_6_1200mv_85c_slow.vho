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

-- DATE "03/20/2019 18:50:21"

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

ENTITY 	all_bool_ops IS
    PORT (
	bool_in_0 : IN std_logic;
	bool_in_1 : IN std_logic;
	bool_in_2 : IN std_logic;
	led_0 : OUT std_logic_vector(7 DOWNTO 0)
	);
END all_bool_ops;

-- Design Ports Information
-- led_0[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_0[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_0[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_0[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_0[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_0[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_0[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_0[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bool_in_0	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bool_in_1	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bool_in_2	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF all_bool_ops IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bool_in_0 : std_logic;
SIGNAL ww_bool_in_1 : std_logic;
SIGNAL ww_bool_in_2 : std_logic;
SIGNAL ww_led_0 : std_logic_vector(7 DOWNTO 0);
SIGNAL \led_0[0]~output_o\ : std_logic;
SIGNAL \led_0[1]~output_o\ : std_logic;
SIGNAL \led_0[2]~output_o\ : std_logic;
SIGNAL \led_0[3]~output_o\ : std_logic;
SIGNAL \led_0[4]~output_o\ : std_logic;
SIGNAL \led_0[5]~output_o\ : std_logic;
SIGNAL \led_0[6]~output_o\ : std_logic;
SIGNAL \led_0[7]~output_o\ : std_logic;
SIGNAL \bool_in_0~input_o\ : std_logic;
SIGNAL \bool_in_2~input_o\ : std_logic;
SIGNAL \bool_in_1~input_o\ : std_logic;
SIGNAL \led_0~0_combout\ : std_logic;
SIGNAL \led_0~1_combout\ : std_logic;
SIGNAL \led_0~2_combout\ : std_logic;
SIGNAL \ALT_INV_bool_in_0~input_o\ : std_logic;
SIGNAL \ALT_INV_led_0~2_combout\ : std_logic;
SIGNAL \ALT_INV_led_0~1_combout\ : std_logic;
SIGNAL \ALT_INV_led_0~0_combout\ : std_logic;

BEGIN

ww_bool_in_0 <= bool_in_0;
ww_bool_in_1 <= bool_in_1;
ww_bool_in_2 <= bool_in_2;
led_0 <= ww_led_0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_bool_in_0~input_o\ <= NOT \bool_in_0~input_o\;
\ALT_INV_led_0~2_combout\ <= NOT \led_0~2_combout\;
\ALT_INV_led_0~1_combout\ <= NOT \led_0~1_combout\;
\ALT_INV_led_0~0_combout\ <= NOT \led_0~0_combout\;

-- Location: IOOBUF_X0_Y20_N9
\led_0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bool_in_0~input_o\,
	devoe => ww_devoe,
	o => \led_0[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\led_0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_bool_in_0~input_o\,
	devoe => ww_devoe,
	o => \led_0[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\led_0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_0~0_combout\,
	devoe => ww_devoe,
	o => \led_0[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\led_0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led_0~0_combout\,
	devoe => ww_devoe,
	o => \led_0[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\led_0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_0~1_combout\,
	devoe => ww_devoe,
	o => \led_0[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\led_0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led_0~1_combout\,
	devoe => ww_devoe,
	o => \led_0[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\led_0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_0~2_combout\,
	devoe => ww_devoe,
	o => \led_0[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\led_0[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led_0~2_combout\,
	devoe => ww_devoe,
	o => \led_0[7]~output_o\);

-- Location: IOIBUF_X0_Y24_N1
\bool_in_0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bool_in_0,
	o => \bool_in_0~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\bool_in_2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bool_in_2,
	o => \bool_in_2~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\bool_in_1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bool_in_1,
	o => \bool_in_1~input_o\);

-- Location: LCCOMB_X1_Y24_N8
\led_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_0~0_combout\ = (\bool_in_0~input_o\ & (\bool_in_2~input_o\ & \bool_in_1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bool_in_0~input_o\,
	datac => \bool_in_2~input_o\,
	datad => \bool_in_1~input_o\,
	combout => \led_0~0_combout\);

-- Location: LCCOMB_X1_Y24_N18
\led_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_0~1_combout\ = (\bool_in_0~input_o\) # ((\bool_in_2~input_o\) # (\bool_in_1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bool_in_0~input_o\,
	datac => \bool_in_2~input_o\,
	datad => \bool_in_1~input_o\,
	combout => \led_0~1_combout\);

-- Location: LCCOMB_X1_Y24_N4
\led_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_0~2_combout\ = \bool_in_0~input_o\ $ (\bool_in_2~input_o\ $ (\bool_in_1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bool_in_0~input_o\,
	datac => \bool_in_2~input_o\,
	datad => \bool_in_1~input_o\,
	combout => \led_0~2_combout\);

ww_led_0(0) <= \led_0[0]~output_o\;

ww_led_0(1) <= \led_0[1]~output_o\;

ww_led_0(2) <= \led_0[2]~output_o\;

ww_led_0(3) <= \led_0[3]~output_o\;

ww_led_0(4) <= \led_0[4]~output_o\;

ww_led_0(5) <= \led_0[5]~output_o\;

ww_led_0(6) <= \led_0[6]~output_o\;

ww_led_0(7) <= \led_0[7]~output_o\;
END structure;


