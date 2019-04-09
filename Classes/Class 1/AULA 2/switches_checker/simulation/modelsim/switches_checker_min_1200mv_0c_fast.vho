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

-- DATE "03/20/2019 18:09:50"

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

ENTITY 	switches_checker IS
    PORT (
	sw_0 : IN std_logic;
	sw_1 : IN std_logic;
	sw_2 : IN std_logic;
	sw_3 : IN std_logic;
	sw_4 : IN std_logic;
	sw_5 : IN std_logic;
	sw_6 : IN std_logic;
	sw_7 : IN std_logic;
	sw_8 : IN std_logic;
	sw_9 : IN std_logic;
	led_0 : OUT std_logic;
	led_1 : OUT std_logic;
	led_2 : OUT std_logic;
	led_3 : OUT std_logic;
	led_4 : OUT std_logic;
	led_5 : OUT std_logic;
	led_6 : OUT std_logic;
	led_7 : OUT std_logic;
	led_8 : OUT std_logic;
	led_9 : OUT std_logic
	);
END switches_checker;

-- Design Ports Information
-- led_0	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_1	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_2	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_3	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_4	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_5	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_6	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_7	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_8	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_9	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_0	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_1	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_2	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_3	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_4	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_5	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_6	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_7	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_8	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_9	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF switches_checker IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw_0 : std_logic;
SIGNAL ww_sw_1 : std_logic;
SIGNAL ww_sw_2 : std_logic;
SIGNAL ww_sw_3 : std_logic;
SIGNAL ww_sw_4 : std_logic;
SIGNAL ww_sw_5 : std_logic;
SIGNAL ww_sw_6 : std_logic;
SIGNAL ww_sw_7 : std_logic;
SIGNAL ww_sw_8 : std_logic;
SIGNAL ww_sw_9 : std_logic;
SIGNAL ww_led_0 : std_logic;
SIGNAL ww_led_1 : std_logic;
SIGNAL ww_led_2 : std_logic;
SIGNAL ww_led_3 : std_logic;
SIGNAL ww_led_4 : std_logic;
SIGNAL ww_led_5 : std_logic;
SIGNAL ww_led_6 : std_logic;
SIGNAL ww_led_7 : std_logic;
SIGNAL ww_led_8 : std_logic;
SIGNAL ww_led_9 : std_logic;
SIGNAL \led_0~output_o\ : std_logic;
SIGNAL \led_1~output_o\ : std_logic;
SIGNAL \led_2~output_o\ : std_logic;
SIGNAL \led_3~output_o\ : std_logic;
SIGNAL \led_4~output_o\ : std_logic;
SIGNAL \led_5~output_o\ : std_logic;
SIGNAL \led_6~output_o\ : std_logic;
SIGNAL \led_7~output_o\ : std_logic;
SIGNAL \led_8~output_o\ : std_logic;
SIGNAL \led_9~output_o\ : std_logic;
SIGNAL \sw_0~input_o\ : std_logic;
SIGNAL \sw_1~input_o\ : std_logic;
SIGNAL \sw_2~input_o\ : std_logic;
SIGNAL \sw_3~input_o\ : std_logic;
SIGNAL \sw_4~input_o\ : std_logic;
SIGNAL \sw_5~input_o\ : std_logic;
SIGNAL \sw_6~input_o\ : std_logic;
SIGNAL \sw_7~input_o\ : std_logic;
SIGNAL \sw_8~input_o\ : std_logic;
SIGNAL \sw_9~input_o\ : std_logic;

BEGIN

ww_sw_0 <= sw_0;
ww_sw_1 <= sw_1;
ww_sw_2 <= sw_2;
ww_sw_3 <= sw_3;
ww_sw_4 <= sw_4;
ww_sw_5 <= sw_5;
ww_sw_6 <= sw_6;
ww_sw_7 <= sw_7;
ww_sw_8 <= sw_8;
ww_sw_9 <= sw_9;
led_0 <= ww_led_0;
led_1 <= ww_led_1;
led_2 <= ww_led_2;
led_3 <= ww_led_3;
led_4 <= ww_led_4;
led_5 <= ww_led_5;
led_6 <= ww_led_6;
led_7 <= ww_led_7;
led_8 <= ww_led_8;
led_9 <= ww_led_9;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y20_N9
\led_0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw_0~input_o\,
	devoe => ww_devoe,
	o => \led_0~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\led_1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw_1~input_o\,
	devoe => ww_devoe,
	o => \led_1~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\led_2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw_2~input_o\,
	devoe => ww_devoe,
	o => \led_2~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\led_3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw_3~input_o\,
	devoe => ww_devoe,
	o => \led_3~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\led_4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw_4~input_o\,
	devoe => ww_devoe,
	o => \led_4~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\led_5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw_5~input_o\,
	devoe => ww_devoe,
	o => \led_5~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\led_6~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw_6~input_o\,
	devoe => ww_devoe,
	o => \led_6~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\led_7~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw_7~input_o\,
	devoe => ww_devoe,
	o => \led_7~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\led_8~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw_8~input_o\,
	devoe => ww_devoe,
	o => \led_8~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\led_9~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw_9~input_o\,
	devoe => ww_devoe,
	o => \led_9~output_o\);

-- Location: IOIBUF_X0_Y24_N1
\sw_0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_0,
	o => \sw_0~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\sw_1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_1,
	o => \sw_1~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\sw_2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_2,
	o => \sw_2~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\sw_3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_3,
	o => \sw_3~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\sw_4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_4,
	o => \sw_4~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\sw_5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_5,
	o => \sw_5~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\sw_6~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_6,
	o => \sw_6~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\sw_7~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_7,
	o => \sw_7~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\sw_8~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_8,
	o => \sw_8~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\sw_9~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_9,
	o => \sw_9~input_o\);

ww_led_0 <= \led_0~output_o\;

ww_led_1 <= \led_1~output_o\;

ww_led_2 <= \led_2~output_o\;

ww_led_3 <= \led_3~output_o\;

ww_led_4 <= \led_4~output_o\;

ww_led_5 <= \led_5~output_o\;

ww_led_6 <= \led_6~output_o\;

ww_led_7 <= \led_7~output_o\;

ww_led_8 <= \led_8~output_o\;

ww_led_9 <= \led_9~output_o\;
END structure;


