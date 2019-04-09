library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    

entity ULA is
	port 	(
			a : in unsigned(15 downto 0);
			b: in unsigned (15 downto 0);
			sel : in unsigned (1 downto 0);
			saida : out unsigned(15 downto 0);
			zero : out std_logic;
			maior : out std_logic;
			carry : out std_logic
			);
end entity;

architecture a_ULA of ULA is
	signal calcula, a_17b, b_17b : unsigned(16 downto 0);
	begin	
		a_17b <= '0' & a;
		b_17b <= '0' & b;
	
		calcula <=	a_17b+b_17b when sel="00" else
					a_17b-b_17b when sel="01" else 
					"00000000000000000";						
		zero <=		'1' when calcula="00000000000000000" else 
					'0';
		maior <=	'1' when a>b else
					'0' when a<=b else
					'0';
		saida <= calcula(15 downto 0);
		
		carry <= calcula(16);

		
end architecture;

