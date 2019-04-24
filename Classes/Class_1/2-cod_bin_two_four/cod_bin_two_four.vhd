LIBRARY IEEE;
USE ieee.std_logic_1164.all;

Entity cod_bin_two_four IS
	port(
		bin_in_0: IN STD_LOGIC;
		bin_in_1: IN STD_LOGIC;
		leds_output_codified: OUT STD_LOGIC_VECTOR(3 downto 0)
	);
END entity;

Architecture arch OF cod_bin_two_four IS
BEGIN
	leds_output_codified <= "0010" when bin_in_0='1' and bin_in_1='0' else
									"0100" when bin_in_0='0' and bin_in_1='1' else
									"1000" when bin_in_0='1' and bin_in_1='1' else
									"0001";
END Architecture;