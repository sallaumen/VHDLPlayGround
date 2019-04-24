LIBRARY IEEE;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.math_real.all;

Entity multiply_and_output IS
	generic (
		ACTIONS_SIZE : integer := 2;
		INPUT_SIZE : integer := 9;
		OUTPUT_SIZE : integer := 9	
	);
	-- Conta para encontrar o numero de displays necessario para representar o pior caso
	--     com base em INPUT_SIZE e ACTIONS_SIZE
	--	 Fonte: https://stackoverflow.com/questions/21783280/number-of-bits-to-represent-an-integer-in-vhdl
	-- (integer(ceil((ceil(log2(real((INPUT_SIZE+1)*2**ACTIONS_SIZE))))/real(4))))
	
	port(		
		binary_input_vector: IN STD_LOGIC_VECTOR(INPUT_SIZE downto 0);
		binary_output_vector: OUT STD_LOGIC_VECTOR(OUTPUT_SIZE downto 0);
		hexa_output_vector: OUT STD_LOGIC_VECTOR((integer(ceil((ceil(log2(real((INPUT_SIZE+1)*2**ACTIONS_SIZE))))/real(4))))*8 downto 0);
		action_vector: IN STD_LOGIC_VECTOR(ACTIONS_SIZE downto 0)
	);
END entity;

Architecture arch OF multiply_and_output IS
	-- New created type
	type int_array is array(0 to INPUT_SIZE) of integer;  
	-- Generic signals to atribute the results
	signal sum_vector : int_array;
	signal multiply_vector : int_array;
	signal number_of_ssds_to_use_aux_vector : int_array;
	
	-- Generic signals to atribute the results
	signal result_after_multiplying : integer;
	signal hexa_result_vector: STD_LOGIC_VECTOR(((integer(ceil((ceil(log2(real((INPUT_SIZE+1)*2**ACTIONS_SIZE))))/real(4))))*4)-1 downto 0);
	signal number_of_ssds_to_use: integer;
	
BEGIN
	-- Count number of high inputs at binary input - the only important data is sum_vector(INPUT_SIZE)
	sum_vector(0) <= 1 when binary_input_vector(0) = '1'
								else 0;
								
	countHighBinaryInputs: for i in 1 to INPUT_SIZE generate
		sum_vector(i) <= sum_vector(i-1) + 1 when binary_input_vector(i) = '1' else
								sum_vector(i-1);
	end generate countHighBinaryInputs;
	
	-- Count number of high inputs at action input - the only important data is multiply_vector(ACTIONS_SIZE)
	multiply_vector(0) <= 1;
								
	countTrueActions: for i in 1 to ACTIONS_SIZE+1 generate
		multiply_vector(i) <= multiply_vector(i-1)*2 when action_vector(i-1) = '0' else
								multiply_vector(i-1)*1;
	end generate countTrueActions;
	
	-- Multiplied Result
	result_after_multiplying <= sum_vector(INPUT_SIZE)*multiply_vector(ACTIONS_SIZE+1);
	
	-- Outputs multiplied result in binary
	binary_output_vector <= std_logic_vector(TO_UNSIGNED(result_after_multiplying, OUTPUT_SIZE+1));
	
	-- Outputs multiplied result in hexa, on ssd

	
	hexa_result_vector <= std_logic_vector(TO_UNSIGNED(result_after_multiplying, (integer(ceil((ceil(log2(real((INPUT_SIZE+1)*2**ACTIONS_SIZE))))/real(4))))*4));
	
	showMultipliedValueInHexaSSD: for i in 0 to (integer(ceil((ceil(log2(real((INPUT_SIZE+1)*2**ACTIONS_SIZE))))/real(4))))-1 generate
		hexa_output_vector(((i+1)*8)-1 downto i*8) <=
			"11000000" when to_integer(unsigned(hexa_result_vector(((i+1)*4)-1 downto i*4))) = 0 else
			"11111001" when to_integer(unsigned(hexa_result_vector(((i+1)*4)-1 downto i*4))) = 1 else
			"10100100" when to_integer(unsigned(hexa_result_vector(((i+1)*4)-1 downto i*4))) = 2 else
			"10110000" when to_integer(unsigned(hexa_result_vector(((i+1)*4)-1 downto i*4))) = 3 else
			"10011001" when to_integer(unsigned(hexa_result_vector(((i+1)*4)-1 downto i*4))) = 4 else
			"10010010" when to_integer(unsigned(hexa_result_vector(((i+1)*4)-1 downto i*4))) = 5 else
			"10000010" when to_integer(unsigned(hexa_result_vector(((i+1)*4)-1 downto i*4))) = 6 else
			"11111000" when to_integer(unsigned(hexa_result_vector(((i+1)*4)-1 downto i*4))) = 7 else
			"10000000" when to_integer(unsigned(hexa_result_vector(((i+1)*4)-1 downto i*4))) = 8 else
			"10010000" when to_integer(unsigned(hexa_result_vector(((i+1)*4)-1 downto i*4))) = 9 else	
			"10001000" when to_integer(unsigned(hexa_result_vector(((i+1)*4)-1 downto i*4))) = 10 else
			"10000111" when to_integer(unsigned(hexa_result_vector(((i+1)*4)-1 downto i*4))) = 11 else
			"11000110" when to_integer(unsigned(hexa_result_vector(((i+1)*4)-1 downto i*4))) = 12 else
			"10100001" when to_integer(unsigned(hexa_result_vector(((i+1)*4)-1 downto i*4))) = 13 else
			"10000110" when to_integer(unsigned(hexa_result_vector(((i+1)*4)-1 downto i*4))) = 14 else
			"10001110" when to_integer(unsigned(hexa_result_vector(((i+1)*4)-1 downto i*4))) = 15 else
			"00000000";	
	end generate showMultipliedValueInHexaSSD;
	

		
END Architecture;