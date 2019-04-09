library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  

entity mux16bits_4sect is
	port
	(	
		in_a : in unsigned(15 downto 0);
		in_b : in unsigned(15 downto 0);
		in_ram : in unsigned(15 downto 0);
		enable : in std_logic;
		sel : in unsigned(1 downto 0);
		saida : out unsigned(15 downto 0)
	);
end entity;

architecture a_mux16bits_4sect of mux16bits_4sect is
begin
	saida <=	in_a	when sel="00" 	and enable='1'	else
				in_b 	when sel="01"	and enable='1'	else
				in_ram  when sel="10"	and enable='1'	else		
				"0000000000000000";
end architecture;
