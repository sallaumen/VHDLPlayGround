LIBRARY IEEE;
USE ieee.std_logic_1164.all;

Entity all_bool_ops IS
	port(
		bool_in_0: IN STD_LOGIC;
		bool_in_1: IN STD_LOGIC;
		bool_in_2: IN STD_LOGIC;
		led_0: OUT STD_LOGIC_VECTOR(7 downto 0)
	);
END entity;

Architecture arch OF all_bool_ops IS
BEGIN
	led_0(0) <= bool_in_0;	-- Buffer
	
	led_0(1) <= not(bool_in_0);	-- Not
	
	led_0(2) <= bool_in_0 and 
					bool_in_1 and 
					bool_in_2;	-- AND
					
	led_0(3) <= not(
					bool_in_0 and 
					bool_in_1 and 
					bool_in_2
					);	-- NAND
					
	led_0(4) <= bool_in_0 or 
					bool_in_1 or 
					bool_in_2;	-- OR
					
	led_0(5) <= not(
					bool_in_0 or 
					bool_in_1 or 
					bool_in_2
					);	-- NOR
					
	led_0(6) <= bool_in_0 xor
					bool_in_1 xor
					bool_in_2;	-- XOR
	
	led_0(7) <= not(
					bool_in_0 xor 
					bool_in_1 xor 
					bool_in_2
					);	-- XNOR

END Architecture;