LIBRARY IEEE;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity multiply_and_output IS
	generic (
		ACTIONS_SIZE : integer := 2;
		INPUT_SIZE : integer := 9;
		OUTPUT_SIZE : integer := 9;
		NUMBER_OF_HEXA_SSD : integer := 1
	);
	port(		
		binary_input_vector: IN STD_LOGIC_VECTOR(INPUT_SIZE downto 0);
		binary_output_vector: OUT STD_LOGIC_VECTOR(OUTPUT_SIZE downto 0);
		hexa_output_vector: OUT STD_LOGIC_VECTOR(NUMBER_OF_HEXA_SSD*8-1 downto 0);
		action_vector: IN STD_LOGIC_VECTOR(ACTIONS_SIZE downto 0)
	);
END entity;

Architecture arch OF multiply_and_output IS
	-- New created type
	type int_array is array(0 to INPUT_SIZE) of integer;  
	-- Generic signals to atribute the results
	signal sum_vector : int_array;
	signal multiply_vector : int_array;
	
	-- Generic signals to atribute the results
	signal result_after_multiplying : integer;
	signal hexa_result_vector: OUT STD_LOGIC_VECTOR(NUMBER_OF_HEXA_SSD*8-1 downto 0);

BEGIN
	-- Conta numero de chaves ligadas - O unico dado importante é sum_vector(INPUT_SIZE)
	sum_vector(0) <= 1 when binary_input_vector(0) = '1'
								else 0;
								
	G1: for i in 1 to INPUT_SIZE generate
		sum_vector(i) <= sum_vector(i-1) + 1 when binary_input_vector(i) = '1' else
								sum_vector(i-1);
	end generate G1;
	
	-- Conta numero de chaves ligadas - O unico dado importante é multiply_vector(ACTIONS_SIZE)
	multiply_vector(0) <= 1;
								
	G2: for i in 1 to ACTIONS_SIZE+1 generate
		multiply_vector(i) <= sum_vector(i-1)*2 when action_vector(i-1) = '1' else
								sum_vector(i-1)*1;
	end generate G2;
	-- Output multiplicada
	result_after_multiplying <= sum_vector(INPUT_SIZE)*multiply_vector(ACTIONS_SIZE);
	
	-- Gera output em binário
	binary_output_vector <= std_logic_vector(TO_UNSIGNED(result_after_multiplying, OUTPUT_SIZE+1));
	
	--Gera output em hexa
	hexa_result_vector <= std_logic_vector(TO_UNSIGNED(result_after_multiplying, NUMBER_OF_HEXA_SSD*8));
	
	G3: for i in 0 to NUMBER_OF_HEXA_SSD generate
		hexa_output_vector(((i+1)*8)-1 downto i*8) <=
			"11000000" when hexa_result_vector(((i+1)*8)-1 downto i*8) = 0 else
			"11111001" when hexa_result_vector(((i+1)*8)-1 downto i*8) = 1 else
			"10100100" when hexa_result_vector(((i+1)*8)-1 downto i*8) = 2 else
			"10110000" when hexa_result_vector(((i+1)*8)-1 downto i*8) = 3 else
			"10011001" when hexa_result_vector(((i+1)*8)-1 downto i*8) = 4 else
			"10010010" when hexa_result_vector(((i+1)*8)-1 downto i*8) = 5 else
			"10000010" when hexa_result_vector(((i+1)*8)-1 downto i*8) = 6 else
			"11111000" when hexa_result_vector(((i+1)*8)-1 downto i*8) = 7 else
			"10000000" when hexa_result_vector(((i+1)*8)-1 downto i*8) = 8 else
			"10010000" when hexa_result_vector(((i+1)*8)-1 downto i*8) = 9 else	
			"10001000" when hexa_result_vector(((i+1)*8)-1 downto i*8) = 10 else
			"10000111" when hexa_result_vector(((i+1)*8)-1 downto i*8) = 11 else
			"11000110" when hexa_result_vector(((i+1)*8)-1 downto i*8) = 12 else
			"10100001" when hexa_result_vector(((i+1)*8)-1 downto i*8) = 13 else
			"10000110" when hexa_result_vector(((i+1)*8)-1 downto i*8) = 14 else
			"10001110" when hexa_result_vector(((i+1)*8)-1 downto i*8) = 15 else
			else "00000000";	
	end generate G3;
	

		
END Architecture;