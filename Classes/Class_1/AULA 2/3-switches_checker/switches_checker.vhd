LIBRARY IEEE;
USE ieee.std_logic_1164.all;

Entity switches_checker IS
	port(
		sw_0: IN STD_LOGIC;
		sw_1: IN STD_LOGIC;
		sw_2: IN STD_LOGIC;
		sw_3: IN STD_LOGIC;
		sw_4: IN STD_LOGIC;
		sw_5: IN STD_LOGIC;
		sw_6: IN STD_LOGIC;
		sw_7: IN STD_LOGIC;
		sw_8: IN STD_LOGIC;
		sw_9: IN STD_LOGIC;
		led_0: OUT STD_LOGIC;
		led_1: OUT STD_LOGIC;
		led_2: OUT STD_LOGIC;
		led_3: OUT STD_LOGIC;
		led_4: OUT STD_LOGIC;
		led_5: OUT STD_LOGIC;
		led_6: OUT STD_LOGIC;
		led_7: OUT STD_LOGIC;
		led_8: OUT STD_LOGIC;
		led_9: OUT STD_LOGIC
	);
END entity;

Architecture arch OF switches_checker IS
BEGIN
	led_0 <= sw_0;
	led_1 <= sw_1;
	led_2 <= sw_2;
	led_3 <= sw_3;
	led_4 <= sw_4;
	led_5 <= sw_5;
	led_6 <= sw_6;
	led_7 <= sw_7;
	led_8 <= sw_8;
	led_9 <= sw_9;
END Architecture;