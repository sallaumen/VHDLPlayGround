LIBRARY IEEE;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.numeric_bit.all;
use ieee.math_real.all;

Entity Inc_Dec IS
	generic (
		INPUT_SIZE : integer := 9;
		-- Debounce timer
		MIN_VALUE : integer := 0;
		MAX_VALUE : integer := 1000;
		BT_OFF: std_logic := '1';
		BT_ON: std_logic := '0'
	);
	port(		
		-- Clock and reset
		clk, rst: IN std_logic;
		input_button_inc, input_button_dec: IN std_logic;
		-- Quantidade de bits necessários para representar a saída no numero de displays.
		output_value_displayed : OUT std_logic_vector((integer(floor(log10(real((MAX_VALUE))))+real(1))*8)-1 downto 0)
	);
END entity;

Architecture arch OF Inc_Dec IS
	
	COMPONENT debouncer
		PORT(clk_debounce, rst_debounce, generic_input_debounce: in std_logic; output_debounce: out std_logic);
	END COMPONENT;
	
	signal output_button_dec: std_logic;
	signal output_button_inc: std_logic;
	
BEGIN
	
	button1: debouncer port map (clk_debounce => clk, rst_debounce => rst, generic_input_debounce => input_button_dec, output_debounce => output_button_dec);
	button2: debouncer port map (clk_debounce => clk, rst_debounce => rst, generic_input_debounce => input_button_inc, output_debounce => output_button_inc);
	
	process(clk, rst)
		variable num_disp: integer := (integer(floor(log10(real((MAX_VALUE))))+real(1)));
		variable displays_output: std_logic_vector((integer(floor(log10(real((MAX_VALUE))))+real(1))*8)-1 downto 0);
		variable output_value: integer := 0;
		variable previous_bt1_state: std_logic := BT_OFF;
		variable previous_bt2_state: std_logic := BT_OFF;
		-------------------------------------
		begin
			if rst = '0' then
				output_value := 0;
				previous_bt2_state := BT_OFF;
				previous_bt1_state := BT_OFF;

			
			elsif rising_edge(clk) then
				if output_button_dec = BT_ON and previous_bt1_state = BT_OFF and output_value > MIN_VALUE then
					output_value := output_value-1;
					previous_bt1_state := BT_ON;
				elsif output_button_dec = BT_OFF then
					previous_bt1_state := BT_OFF;
				end if;
				
				if output_button_inc = BT_ON and previous_bt2_state = BT_OFF and output_value < MAX_VALUE then
					output_value := output_value+1;
					previous_bt2_state := BT_ON;
				elsif output_button_inc = BT_OFF then
					previous_bt2_state := BT_OFF;
				end if;
							
				for i in 0 to (num_disp-1) loop
					if ((output_value/10**i) rem 10) = 0 then
						displays_output(((i+1)*8)-1 downto i*8) := "11000000";
					elsif ((output_value/10**i) rem 10) = 1 then
						displays_output(((i+1)*8)-1 downto i*8) := "11111001";
					elsif ((output_value/10**i) rem 10) = 2 then
						displays_output(((i+1)*8)-1 downto i*8) := "10100100";
					elsif ((output_value/10**i) rem 10) = 3 then
						displays_output(((i+1)*8)-1 downto i*8) := "10110000";
					elsif ((output_value/10**i) rem 10) = 4 then
						displays_output(((i+1)*8)-1 downto i*8) := "10011001";
					elsif ((output_value/10**i) rem 10) = 5 then
						displays_output(((i+1)*8)-1 downto i*8) := "10010010";
					elsif ((output_value/10**i) rem 10) = 6 then
						displays_output(((i+1)*8)-1 downto i*8) := "10000010";
					elsif ((output_value/10**i) rem 10) = 7 then
						displays_output(((i+1)*8)-1 downto i*8) := "11111000";
					elsif ((output_value/10**i) rem 10) = 8 then
						displays_output(((i+1)*8)-1 downto i*8) := "10000000";
					elsif ((output_value/10**i) rem 10) = 9 then
						displays_output(((i+1)*8)-1 downto i*8) := "10010000";
					end if;
				end loop;
			end if;
		output_value_displayed <= displays_output;

	end process; 
END Architecture;
