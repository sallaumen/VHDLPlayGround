LIBRARY IEEE;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity keys_to_bin IS
	port(
		switch_input: IN STD_LOGIC_VECTOR(9 downto 0);
		leds_output: OUT STD_LOGIC_VECTOR(9 downto 0)
	);
END entity;

Architecture arch OF keys_to_bin	 IS
	signal switch_sum: integer := 0;
BEGIN
	switch_sum <= to_integer("000" & switch_input(0))
						 + to_integer("000" & switch_input(1))
						 + to_integer("000" & switch_input(2))
						 + to_integer("000" & switch_input(3))
						 + to_integer("000" & switch_input(4))
						 + to_integer("000" & switch_input(5))
						 + to_integer("000" & switch_input(6))
						 + to_integer("000" & switch_input(7))
						 + to_integer("000" & switch_input(8))
						 + to_integer("000" & switch_input(9));
 
	leds_output <= std_logic_vector(to_unsigned(switch_sum, leds_output'length));

END Architecture;