LIBRARY IEEE;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity three_or_more_cosecutive_zeros IS
	generic (
		DATA_SIZE : integer := 10
	);
	port(
		switch_input: IN STD_LOGIC_VECTOR(DATA_SIZE-1 downto 0);
		leds_output: OUT STD_LOGIC
	);
END entity;

Architecture arch OF three_or_more_cosecutive_zeros IS
	signal vector_iterator: std_LOGIC_VECTOR (DATA_SIZE-1 downto 0);
BEGIN

		vector_iterator(0) <= '0';
	G1: for i in 1 to DATA_SIZE-2 generate
		vector_iterator(i) <= not(switch_input(i-1) or
										switch_input(i) or
										switch_input(i+1)) or
										vector_iterator(i-1);
	end generate G1;

	leds_output <= vector_iterator(DATA_SIZE-2);

END Architecture;