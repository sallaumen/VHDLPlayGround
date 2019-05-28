LIBRARY IEEE;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.math_real.all;

Entity debouncer IS
	generic (
		TIME_MS : integer := 100;
		CLOCK_ADJUSTER_TO_10MHZ : integer := 5000
	);
	port(		
		clk_debounce, rst_debounce, generic_input_debounce: in std_logic;
		output_debounce: out std_logic
	);
END entity;

Architecture arch OF debouncer IS
BEGIN
	process(clk_debounce, rst_debounce, generic_input_debounce)
		variable new_data: std_logic := generic_input_debounce;
		variable last_data: std_logic := generic_input_debounce;
		variable debounce_clk_counter: integer := 0;
		variable debounce_clk_expected: integer := TIME_MS*CLOCK_ADJUSTER_TO_10MHZ;

		begin
			if rst_debounce = '0' then
				new_data := generic_input_debounce;
				last_data := generic_input_debounce;		
			elsif rising_edge(clk_debounce) then
				if last_data /= generic_input_debounce then
					debounce_clk_counter := debounce_clk_counter+1;
					if debounce_clk_counter = debounce_clk_expected then
						debounce_clk_counter := 0;
						last_data := new_data;
						new_data := generic_input_debounce;
					end if;
				else
					debounce_clk_counter := 0;
				end if;
			end if;
			output_debounce <= new_data;
	end process; 
		
END Architecture;
