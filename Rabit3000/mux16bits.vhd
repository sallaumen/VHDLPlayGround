library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  

entity mux16bits is
	port
	(	
		in_a : in unsigned(15 downto 0);
		in_b : in unsigned(15 downto 0);
		enable : in std_logic;
		sel : in std_logic;
		saida : out unsigned(15 downto 0)
	);
end entity;

architecture a_mux16bits of mux16bits is
begin
	saida <=	in_a	when sel='0' 	and enable='1'	else
				in_b 	when sel='1'	and enable='1'	else
				"0000000000000000";
end architecture;