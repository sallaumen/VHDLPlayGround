LIBRARY IEEE;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.math_real.all;

Entity debouncer_pulse IS
	generic (
		TIME_MS : integer := 2;
		CLOCK_ADJUSTER_TO_50MHZ : integer := 50000;
		LOGIC_OFF: std_logic := '1';
		LOGIC_ON: std_logic := '0'
	);
	port(		
		clk_debounce, rst_debounce, generic_input_debounce: in std_logic;
		output_debounce: out std_logic
	);
END entity;

Architecture arch OF debouncer_pulse IS
BEGIN
	process(clk_debounce, rst_debounce, generic_input_debounce)
		variable new_data: std_logic := generic_input_debounce;
		variable last_data: std_logic := generic_input_debounce;
		variable debounce_clk_counter: integer := 0;
		variable debounce_clk_expected: integer := TIME_MS*CLOCK_ADJUSTER_TO_50MHZ;
		variable pulse_previous_state : std_logic := LOGIC_OFF;
		variable pulse_actual_state : std_logic := LOGIC_OFF;
		begin
			if rst_debounce = '0' then
				new_data := generic_input_debounce;
				last_data := generic_input_debounce;
				pulse_previous_state := LOGIC_OFF;
				pulse_actual_state := LOGIC_OFF;				
			elsif rising_edge(clk_debounce) then
				if pulse_actual_state = LOGIC_ON and pulse_previous_state = LOGIC_OFF then
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
				elsif pulse_actual_state = LOGIC_OFF then
					pulse_previous_state := LOGIC_OFF;
				end if;
			end if;
			output_debounce <= new_data;
	end process; 
		
END Architecture;
