LIBRARY IEEE;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.math_real.all;

Entity christimasLedSpinner IS
	generic (
		OUTPUT_SIZE : integer := 9;
		TIME_MS : integer := 1000
	);
	port(		
		clk, rst : IN std_logic;
		binary_output_vector: out STD_LOGIC_VECTOR(OUTPUT_SIZE downto 0)
	);
END entity;

Architecture arch OF christimasLedSpinner IS
BEGIN

	process(clk, rst)
		variable output: std_LOGIC_VECTOR(OUTPUT_SIZE downto 0);
		variable clk_counter: integer := 0;
		variable clk_adjusted: integer := TIME_MS*50*1000;

		begin
			if rst = '0' then
				output(0) := '1';
				output(OUTPUT_SIZE downto 1) := (others => '0');
		
		
			elsif rising_edge(clk) then
				clk_counter := clk_counter+1;
				if clk_counter = clk_adjusted then
					if output(OUTPUT_SIZE) = '1' then
						output := output(OUTPUT_SIZE-1 downto 0) & '1';
					else
						output := output(OUTPUT_SIZE-1 downto 0) & '0';
					end if;
					clk_counter := 0;
				end if;
			end if;
			
			binary_output_vector <= output;
	end process; 
		
END Architecture;
