library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uc_tb is end;

architecture a_uc_tb of uc_tb is
	component uc port	(
							instrucao : in unsigned(17 downto 0);
							const : out unsigned(15 downto 0);
							reg_le1, reg_le2, reg_escreve : out unsigned(2 downto 0);
							op_ula : out unsigned(1 downto 0);
							jump_en, escreve_reg, pega_const : out std_logic
						);
	end component;
	
	signal jump_en, escreve_reg, pega_const : std_logic;
	signal op_ula : unsigned(1 downto 0);
	signal reg_le1, reg_le2, reg_escreve : unsigned(2 downto 0);
	signal const : unsigned(15 downto 0);
	signal instrucao : unsigned(17 downto 0);	
	
	begin
		
	uut : uc port map(	jump_en=>jump_en, escreve_reg=>escreve_reg, pega_const=>pega_const, op_ula=>op_ula,
						reg_le1=>reg_le1, reg_le2=>reg_le2, reg_escreve=>reg_escreve, const=>const, instrucao=>instrucao);
	
	process
	begin
		instrucao <= "000000000000000000"; -- faz nada
		wait for 25 ns;
		
		instrucao <= "111100000000000011"; -- pula para o end 3
		wait for 50 ns;
		
		instrucao <= "010001101010010101"; -- r1 <- r1 + r6
		wait for 50 ns;
		
		instrucao <= "010010000000000111"; -- r1 <- r1 + 7
		wait for 50 ns;
		
		instrucao <= "010110000000000100"; -- r1 <- r1 - 4
		wait for 50 ns;
		
		instrucao <= "100000111010011000"; -- r3 <- r5
		wait for 50 ns;
		
		instrucao <= "100011110000000111"; -- r7 <- 7
		wait for 50 ns;
		
		instrucao <= "000000000000000000";
		wait for 50 ns;
		wait;
	end process;
end architecture;