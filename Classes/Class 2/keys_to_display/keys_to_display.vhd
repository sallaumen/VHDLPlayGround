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
 
	leds_output <= "01000000" when switch_sum = 0 else
					"01111001" when switch_sum = 1 else
					"00100100" when switch_sum = 2 else
					"00110000" when switch_sum = 3 else
					"00011001" when switch_sum = 4 else
					"00010010" when switch_sum = 5 else
					"00000010" when switch_sum = 6 else
					"01111000" when switch_sum = 7 else
					"00000000" when switch_sum = 8 else
					"00010000" when switch_sum = 9 else "11111111";	
					
END Architecture;