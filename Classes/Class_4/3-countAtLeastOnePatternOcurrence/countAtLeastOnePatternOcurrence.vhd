LIBRARY IEEE;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity countAtLeastOnePatternOcurrence IS
	generic (
		INPUT_SIZE : integer := 9;
		OUTPUT_SIZE : integer := 9;
		
		PATTERN_M : integer := 4;
		PATTERN_N : integer := 10
	);
	port(		
		binary_input_vector: IN STD_LOGIC_VECTOR(INPUT_SIZE downto 0);
		binary_output_vector: OUT STD_LOGIC_VECTOR(OUTPUT_SIZE downto 0)
	);
	 -- Padrao para procurar '0100'
	constant PATTERN: std_logic_vector (PATTERN_M-1 downto 0) 
            := "0100";
END entity;

Architecture arch OF countAtLeastOnePatternOcurrence IS
	-- Generic signals to atribute the results
	signal checker_vector : std_LOGIC_VECTOR(INPUT_SIZE downto 0);	
BEGIN
	-- Check if the pattern was found at least once
	checker_vector(PATTERN_M-2) <= '0';
	checkPatternOccurrence: for i in PATTERN_M-1 to PATTERN_N-1 generate
		checker_vector(i) <= checker_vector(i-1) when checker_vector(i-1) = '1' else
										'1' when binary_input_vector(i downto (i-(PATTERN_M-1))) = PATTERN else
										'0';
	end generate checkPatternOccurrence;	 
	
	-- Outputs the checker value, so if it found the patter, it will be 1, otherwise 0
	binary_output_vector(0) <= checker_vector(PATTERN_N-1);
	
END Architecture;
