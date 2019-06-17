LIBRARY IEEE;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.numeric_bit.all;
use ieee.math_real.all;

Entity calc_rpn IS
	generic (
		NUM_VALUE_POSITIONS : integer := 4;
		INPUT_SIZE : integer := 3;
		-- Debounce timer
		MIN_VALUE : integer := 0;
		MAX_VALUE : integer := 1000;
		BT_OFF: std_logic := '1';
		BT_ON: std_logic := '0'
	);
	port(		
		-- Clock and reset
		clk, rst: IN std_logic;
		enter_button, input_button_inc, input_button_dec: IN std_logic;
		
		input_operation_SUM: IN std_logic;
	   input_operation_SUB: IN std_logic;
	   input_operation_MULT: IN std_logic;
	   input_operation_DIV: IN std_logic;
		
		-- Quantidade de bits necessários para representar a saída no numero de displays.
		output_value_displayed : OUT std_logic_vector((integer(floor(log10(real((MAX_VALUE))))+real(1))*8)-1 downto 0)
	);
END entity;

Architecture arch OF calc_rpn IS
	
	COMPONENT debouncer_pulse
		PORT(clk_debounce, rst_debounce, generic_input_debounce: in std_logic; output_debounce: out std_logic);
	END COMPONENT;
	
	signal output_button_dec: std_logic;
	signal output_button_inc: std_logic;
	signal output_button_enter: std_logic;
	
	signal output_key_SUM: std_logic;
	signal output_key_SUB: std_logic;
	signal output_key_MULT: std_logic;
	signal output_key_DIV: std_logic;

	
BEGIN
	
	button_dec: debouncer_pulse port map (clk_debounce => clk, rst_debounce => rst, generic_input_debounce => input_button_dec, output_debounce => output_button_dec);
	button_inc: debouncer_pulse port map (clk_debounce => clk, rst_debounce => rst, generic_input_debounce => input_button_inc, output_debounce => output_button_inc);
	button_enter: debouncer_pulse port map (clk_debounce => clk, rst_debounce => rst, generic_input_debounce => enter_button, output_debounce => output_button_enter);
	
	key_sum: debouncer_pulse port map (clk_debounce => clk, rst_debounce => rst, generic_input_debounce => input_operation_SUM, output_debounce => output_key_SUM);
	key_sub: debouncer_pulse port map (clk_debounce => clk, rst_debounce => rst, generic_input_debounce => input_operation_SUB, output_debounce => output_key_SUB);
	key_mult: debouncer_pulse port map (clk_debounce => clk, rst_debounce => rst, generic_input_debounce => input_operation_MULT, output_debounce => output_key_MULT);
	key_div: debouncer_pulse port map (clk_debounce => clk, rst_debounce => rst, generic_input_debounce => input_operation_DIV, output_debounce => output_key_DIV);
	
	process(clk, rst)
		variable num_disp: integer := (integer(floor(log10(real((MAX_VALUE))))+real(1)));
		variable displays_output: std_logic_vector((integer(floor(log10(real((MAX_VALUE))))+real(1))*8)-1 downto 0);
		variable output_value: integer := 0;
		type INT_ARRAY is array (integer range <>) of integer range Min_VALUE to 2*max_VALUE;
		variable stack: INT_ARRAY(0 to NUM_VALUE_POSITIONS-1);
		variable stack_actual_size: integer := 0;
		-------------------------------------
		begin
			if rst = '0' then
				for i in 0 to NUM_VALUE_POSITIONS-1 loop
					stack(i) := 0;
				end loop;
				output_value := 0;
				stack_actual_size := 0;
				
			elsif rising_edge(clk) then
				------ component: incrementa /decrementa output_value
				if output_button_dec = BT_ON and output_value > MIN_VALUE then
					output_value := output_value-1;
				
				elsif output_button_inc = BT_ON and output_value < MAX_VALUE then
					output_value := output_value+1;
				-----------------------------------------	
				
				------ component: stack push
				elsif output_button_enter = BT_ON then
					stack := output_value & stack(1 to NUM_VALUE_POSITIONS-1) ;
					output_value := 0;
					if stack_actual_size < 4 then
						stack_actual_size := stack_actual_size+1;
					end if;
				----------------------------------------------
				
				------ component: operacoes
				-- soma
				elsif stack_actual_size > 1 then
					if output_key_SUM = BT_ON then
						-- action
						if stack(1)+stack(0) < MAX_VALUE then
							output_value := stack(1)+stack(0);
							stack_actual_size := stack_actual_size-2;
							stack := stack(2 to NUM_VALUE_POSITIONS-1) & 0 & 0;
						end if;
					-- subtracao
					elsif output_key_SUB = BT_ON then
						-- action
						if stack(1)-stack(0) > MIN_VALUE then
							output_value := stack(1)-stack(0);
							stack_actual_size := stack_actual_size-2;
							stack := stack(2 to NUM_VALUE_POSITIONS-1) & 0 & 0;
						end if;
					-- multiplicacao
					elsif output_key_MULT = BT_ON then
						-- action
						if stack(1)*stack(0) < MAX_VALUE then
							output_value := stack(1)*stack(0);
							stack_actual_size := stack_actual_size-2;
							stack := stack(2 to NUM_VALUE_POSITIONS-1) & 0 & 0;
						end if;
					-- divisao
					elsif output_key_DIV = BT_ON then
						-- action
						if stack(0) /= 0 then
							output_value := stack(1)/stack(0);
							stack_actual_size := stack_actual_size-2;
							stack := stack(2 to NUM_VALUE_POSITIONS-1) & 0 & 0;
						end if;
					end if;
				end if;
				----------------------------------------------
				------ SHOW DISPLAY
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
				----------------------------------------------
			end if;
		output_value_displayed <= displays_output;
	end process; 
END Architecture;