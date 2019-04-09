LIBRARY IEEE;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity keys_to_display IS
	port(
		switch_input: IN STD_LOGIC_VECTOR(9 downto 0);
		leds_output: OUT STD_LOGIC_VECTOR(7 downto 0)
	);
END entity;

Architecture arch OF keys_to_display IS
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
 
	leds_output <= "10111111" when switch_sum = 0 else
					"10000110" when switch_sum = 1 else
					"11011011" when switch_sum = 2 else
					"11001111" when switch_sum = 3 else
					"11100110" when switch_sum = 4 else
					"11101101" when switch_sum = 5 else
					"11111101" when switch_sum = 6 else
					"10000111" when switch_sum = 7 else
					"11111111" when switch_sum = 8 else
					"11101111" when switch_sum = 9 else "00000000";	

END Architecture;