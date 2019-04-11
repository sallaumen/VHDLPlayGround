LIBRARY IEEE;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity machine_control IS
	port(
		switch_input_A: IN STD_LOGIC;
		switch_input_B: IN STD_LOGIC;
		switch_input_C: IN STD_LOGIC; 
		switch_input_D: IN STD_LOGIC; 
		leds_output: OUT STD_LOGIC_VECTOR(3 downto 0)
		--0 Bomba de Lubrificacao
		--1 Transportador
		--2 Serra Fita
		--3 Serra Circular
		--A e B Simultaneos
		--C e D on -> B e T e SF e SC OFF
		--B e D on -> B e T e SF e SC OFF
	);
END entity;

Architecture arch OF machine_control IS
BEGIN 
	leds_output(0) <= (switch_input_A and
						not(switch_input_B) and
						not(switch_input_C)) or
						(switch_input_A and
						not switch_input_D);

	leds_output(1) <= switch_input_A and
						switch_input_B and
						not switch_input_D;
						
	leds_output(2) <= switch_input_C and
						not switch_input_D;
						
	leds_output(3) <= not switch_input_B and
						not switch_input_C and
						switch_input_D;
					
END Architecture;

