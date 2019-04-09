library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  

entity mux8bits is
	port
	(	
		in_a : in unsigned(7 downto 0);
		in_b : in unsigned(7 downto 0);
		enable : in std_logic;
		sel : in std_logic;
		saida : out unsigned(7 downto 0)
	);
end entity;

architecture a_mux8bits of mux8bits is
begin
	saida <=	in_a	when sel='0' 	and enable='1'	else
				in_b 	when sel='1'	and enable='1'	else
				"00000000";
end architecture;
