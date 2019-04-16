LIBRARY IEEE;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity odd_or_even IS
	generic (
		DATA_SIZE : integer := 9
	);
	port(
		input_selector: IN STD_LOGIC;
		switch_input: IN STD_LOGIC_VECTOR(DATA_SIZE-1 downto 0);
		leds_output: OUT STD_LOGIC_VECTOR(DATA_SIZE downto 0)
	);
END entity;

Architecture arch OF odd_or_even	 IS
	signal vector_iterator: std_LOGIC_VECTOR (DATA_SIZE-1 downto 0);
BEGIN
	vector_iterator(0) <= switch_input(0);
	G1: for i in 1 to DATA_SIZE-1 generate
		vector_iterator(i) <= vector_iterator(i-1) xor switch_input(i);
	end generate G1;

	leds_output <= switch_input & '0' when 
							((vector_iterator(DATA_SIZE-1) = '0') and input_selector = '0') or
							((vector_iterator(DATA_SIZE-1) = '1') and input_selector = '1') else
						switch_input & '1' when 
							((vector_iterator(DATA_SIZE-1) = '0') and input_selector = '1') or
							((vector_iterator(DATA_SIZE-1) = '1') and input_selector = '0') else
						(OTHERS => '0');

END Architecture;