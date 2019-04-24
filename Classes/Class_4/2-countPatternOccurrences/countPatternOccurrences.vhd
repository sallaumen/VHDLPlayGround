LIBRARY IEEE;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
 -- Padrao para procurar '0101'
Entity countPatternOccurrences IS
	generic (
		INPUT_SIZE : integer := 9;
		OUTPUT_SIZE : integer := 9;
		PATTERN_SIZE : integer := 4;
		PATTERN : STD_LOGIC_VECTOR := "0101"
	);
	port(		
		binary_input_vector: IN STD_LOGIC_VECTOR(INPUT_SIZE downto 0);
		binary_output_vector: OUT STD_LOGIC_VECTOR(OUTPUT_SIZE downto 0)
	);
END entity;

Architecture arch OF countPatternOccurrences IS
	-- New created type
	type int_array is array(0 to INPUT_SIZE) of integer;  
	-- Generic signals to atribute the results
	signal sum_vector : int_array;	

BEGIN
	-- Generate sequencial output vector
	sum_vector(2) <= 0;
	countPatternOccurrence: for i in 3 to INPUT_SIZE generate
		sum_vector(i) <= sum_vector(i-1)+1 when binary_input_vector(i downto i-3) = PATTERN
								else sum_vector(i-1);
	end generate countPatternOccurrence;	 
	
	binary_output_vector <= std_LOGIC_VECTOR(to_unsigned(sum_vector(OUTPUT_SIZE), OUTPUT_SIZE+1));
	
END Architecture;
