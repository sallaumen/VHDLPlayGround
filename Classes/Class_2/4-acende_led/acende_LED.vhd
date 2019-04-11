LIBRARY ieee;
USE ieee.numeric_std.all;
USE ieee.std_logic_1164.all;

ENTITY acende_LED IS
	PORT(
		switches: IN STD_LOGIC_VECTOR(3 downto 0);
		led: OUT STD_LOGIC);
END ENTITY;


ARCHITECTURE arch OF acende_LED IS
	signal qtd_leds: INTEGER;
BEGIN
	qtd_leds <= to_integer("000" & switches(3)) + to_integer("000" & switches(2)) + to_integer("000" & switches(1)) + to_integer("000" & switches(0)); 
	led <= '1' when qtd_leds = 2 or qtd_leds = 3 else
			 '0';

END ARCHITECTURE;