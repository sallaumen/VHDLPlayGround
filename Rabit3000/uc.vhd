library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  

entity uc is
	port
	(	
		instrucao : in unsigned(17 downto 0);
		zero_in, carry_in : in std_logic;
		const : out unsigned(15 downto 0);
		reg_le1, reg_le2, reg_escreve : out unsigned(2 downto 0);
		pega_pc, op_ula : out unsigned(1 downto 0);
		jump_en, escreve_reg, zero_wr, carry_wr, pega_const, ram_wr, ctrl_valram, ctrl_valreg : out std_logic
	);
end entity;

architecture a_uc of uc is
	signal opcode : unsigned (3 downto 0);
	signal const_aux : unsigned (7 downto 0);
	signal flag : unsigned (1 downto 0);
	signal jump_en_aux : std_logic;
	
	begin

	opcode <= 			instrucao(17 downto 14);
	
	flag <=				instrucao(13 downto 12);
	
	jump_en_aux <= 		'1' 					when opcode = "1111" else
						'1' 					when opcode = "1110" and flag = "00" and zero_in = '1' else
						'1'						when opcode = "1110" and flag = "10" and zero_in = '0' else
						'1'						when opcode = "1110" and flag = "01" and carry_in = '1' else
						'1'						when opcode = "1110" and flag = "11" and carry_in = '0' else
						'0';
	
	jump_en <= 			jump_en_aux;
	
	reg_le1 <= 			"001" 					when opcode = "0100" else
						"001" 					when opcode = "0101" else
						instrucao(9 downto 7) 	when opcode = "1000" else
						instrucao(12 downto 10) when opcode = "1001" and instrucao(13) = '1' else
						instrucao(9 downto 7) 	when opcode = "1001" and instrucao(13) = '0' else
						"000";
	
	reg_le2 <=			instrucao(12 downto 10)	when opcode = "0100" else
						instrucao(12 downto 10)	when opcode = "0101" else
						instrucao(12 downto 10) when opcode = "1001" and instrucao(13) = '1' else
						instrucao(9 downto 7)   when opcode = "1001" and instrucao(13) = '0' else
						"000";
	
	reg_escreve <=		instrucao(12 downto 10) when opcode = "1000" else
						instrucao(12 downto 10) when opcode = "1001" and instrucao(13) = '0' else
						"001"					when opcode = "0100" else
						"001"					when opcode = "0101" else
						"000";

	pega_const <= 		'1' 					when opcode = "1111" else
						'1' 					when opcode = "1110" else
						instrucao(13)			when opcode = "1000" else
						instrucao(13)			when opcode = "0100" else
						instrucao(13)			when opcode = "0101" else
						instrucao(6)			when opcode = "1001" and instrucao(13) = '1' else
 						'0';
						
	pega_pc <=			"01"					when opcode = "1110" and jump_en_aux = '1' else
						"00";
				
	op_ula <=			"01"					when opcode = "0101" else
						"01"					when opcode = "1110" and instrucao(8) = '1' else
						"00";
						
	escreve_reg <=		'1' 					when opcode = "1000" else
						'1'						when opcode = "0100" else
						'1'						when opcode = "0101" else
						'1'						when opcode = "1001" and instrucao(13) = '0' else
						'0';
						
	zero_wr <= 			'1'						when opcode = "0100" else
						'1'						when opcode = "0101" else 
						'0';
			
	carry_wr <= 		'1'						when opcode = "0100" else
						'1'						when opcode = "0101" else 
						'0';
						
	ram_wr	<=			'1'						when opcode = "1001" and instrucao(13) = '1' else
						'0';
	
	ctrl_valram <= 		'1'						when opcode = "1001" and instrucao(6) = '1' else
						'0';
						
	ctrl_valreg <= 		'1'						when opcode = "1001" and instrucao(13) = '0' else
						'0';
	
	const_aux <= 		"00"&instrucao(5 downto 0) when opcode = "1001" else
						instrucao(7 downto 0);
	const<="00000000" & const_aux;	
end architecture;
